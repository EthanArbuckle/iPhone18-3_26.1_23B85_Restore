@interface PKContinuityProximityNWVerification
- (PKContinuityProximityNWVerification)init;
- (PKContinuityProximityNWVerification)initWithDictionary:(id)a3;
- (id)_dictionaryRepresentation;
@end

@implementation PKContinuityProximityNWVerification

- (PKContinuityProximityNWVerification)init
{
  v3.receiver = self;
  v3.super_class = PKContinuityProximityNWVerification;
  return [(PKContinuityProximityVerification *)&v3 initWithType:2];
}

- (PKContinuityProximityNWVerification)initWithDictionary:(id)a3
{
  v4.receiver = self;
  v4.super_class = PKContinuityProximityNWVerification;
  return [(PKContinuityProximityVerification *)&v4 initWithType:2];
}

- (id)_dictionaryRepresentation
{
  v4.receiver = self;
  v4.super_class = PKContinuityProximityNWVerification;
  v2 = [(PKContinuityProximityVerification *)&v4 _dictionaryRepresentation];

  return v2;
}

@end