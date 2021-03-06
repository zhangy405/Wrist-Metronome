//
//  GlanceController.swift
//  Wrist Metronome WatchKit Extension
//
//  Created by YangZ. on 9/29/15.
//  Copyright © 2015 yangz. All rights reserved.
//

import WatchKit
import Foundation


class GlanceController: WKInterfaceController {
    var beatsManager:BeatsManager! = BeatsManager.sharedManager()
    @IBOutlet var figureLabel: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        figureLabel.setText(String(beatsManager.speed))
        beatsManager.start()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
        beatsManager.stop()
    }

}
