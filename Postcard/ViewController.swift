//
//  ViewController.swift
//  Postcard
//
//  Created by Karin Uebelbacher on 22.11.14.
//  Copyright (c) 2014 Karin Uebelbacher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var mailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        
        // Comment for gitHub Testing
        messageLabel.text = enterMessageTextField.text
        messageLabel.hidden = false
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        messageLabel.textColor = UIColor.blueColor()
        mailButton.setTitle("Mail sent", forState: UIControlState.Normal)
        
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        nameLabel.textColor = UIColor.brownColor()
    }

}

