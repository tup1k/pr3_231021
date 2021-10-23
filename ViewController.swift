//
//  ViewController.swift
//  pr3_231021
//
//  Created by Олег on 23.10.2021.
//  Copyright © 2021 Oleg K. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var rndm: UIButton! {
        let rndValue = Int.random(in: 1...1000000)
    }
    
    @IBOutlet weak var WebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        
        
        let url = URL(string: "https://www.wildberries.ru/catalog/" + String(rndValue) + "/detail.aspx")
        let request = URLRequest(url: url!)
        WebView.load(request)
    
    }


}

