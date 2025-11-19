@interface PKContinuityProximityBLEVerification
- (PKContinuityProximityBLEVerification)init;
- (PKContinuityProximityBLEVerification)initWithDictionary:(id)a3;
- (id)_dictionaryRepresentation;
@end

@implementation PKContinuityProximityBLEVerification

- (PKContinuityProximityBLEVerification)init
{
  v3.receiver = self;
  v3.super_class = PKContinuityProximityBLEVerification;
  return [(PKContinuityProximityVerification *)&v3 initWithType:1];
}

- (PKContinuityProximityBLEVerification)initWithDictionary:(id)a3
{
  v4.receiver = self;
  v4.super_class = PKContinuityProximityBLEVerification;
  return [(PKContinuityProximityVerification *)&v4 initWithType:1];
}

- (id)_dictionaryRepresentation
{
  v4.receiver = self;
  v4.super_class = PKContinuityProximityBLEVerification;
  v2 = [(PKContinuityProximityVerification *)&v4 _dictionaryRepresentation];

  return v2;
}

@end