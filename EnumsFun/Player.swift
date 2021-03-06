//
//  Player.swift
//  EnumsFun
//
//  Created by Michael Dippery on 8/2/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation

class Player {
    var name: String
    var hand: Hand
    
    init(name: String, hand: Hand) {
        self.name = name
        self.hand = hand
    }
    
    func hasCards() -> Bool {
        if hand.size > 0 {
            return true
        } else {
            return false
        }
    }
    
    func flip() -> Card? {
        if hand.size > 0 {
            return hand.flip()
        } else {
            return nil
        }
    }
    
    func give(card: Card) {
        hand.give(card: card)
    }
    
    func lose(card: Card) {
        hand.lose(card: card)
    }
}

