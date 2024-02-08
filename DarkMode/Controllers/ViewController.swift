//
//  ViewController.swift
//  DarkMode
//
//  Created by yekta on 8.02.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var changeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .light //check the info.plist
    }
    override func viewWillAppear(_ animated: Bool) {
        
    }
    /* traitCollectionDidChange deprecated oldugu icin yeni gelen yapiyi kullanmak daha saglikli olacaktir.*/
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        if userInterfaceStyle == .dark {
            changeButton.tintColor = UIColor.red
        }
        else {
            changeButton.tintColor = UIColor.green
        }
    }

}

