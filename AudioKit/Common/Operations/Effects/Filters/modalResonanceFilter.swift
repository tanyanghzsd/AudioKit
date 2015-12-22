//
//  modalResonanceFilter.swift
//  AudioKit For iOS
//
//  Autogenerated by scripts by Aurelius Prochazka. Do not edit directly.
//  Copyright © 2015 AudioKit. All rights reserved.
//

import Foundation

extension AKOperation {

    /** A modal resonance filter used for modal synthesis. Plucked and bell sounds can be created using  passing an impulse through a combination of modal filters.

     - returns: AKOperation
     - parameter frequency: Resonant frequency of the filter. (Default: 500, Minimum: 12, Maximum: 20000)
     - parameter qualityFactor: Quality factor of the filter. Roughly equal to Q/frequency. (Default: 50, Minimum: 0, Maximum: 100)
     */
    public mutating func modalResonanceFilter(
        frequency frequency: AKParameter = 500,
        qualityFactor: AKParameter = 50
        ) {
            self = self.modalResonanceFiltered(frequency: frequency, qualityFactor: qualityFactor)

    }

    /** A modal resonance filter used for modal synthesis. Plucked and bell sounds can be created using  passing an impulse through a combination of modal filters.

     - returns: AKOperation
     - parameter frequency: Resonant frequency of the filter. (Default: 500, Minimum: 12, Maximum: 20000)
     - parameter qualityFactor: Quality factor of the filter. Roughly equal to Q/frequency. (Default: 50, Minimum: 0, Maximum: 100)
     */
    public func modalResonanceFiltered(
        frequency frequency: AKParameter = 500,
        qualityFactor: AKParameter = 50
        ) -> AKOperation {
            return AKOperation("(\(self) \(frequency) \(qualityFactor) mode)")
    }

}