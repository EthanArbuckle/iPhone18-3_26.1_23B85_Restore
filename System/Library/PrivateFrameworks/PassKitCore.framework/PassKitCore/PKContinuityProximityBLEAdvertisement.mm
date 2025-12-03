@interface PKContinuityProximityBLEAdvertisement
- (PKContinuityProximityBLEAdvertisement)initWithDictionary:(id)dictionary;
- (PKContinuityProximityBLEAdvertisement)initWithIdentifier:(id)identifier;
- (id)_dictionaryRepresentation;
@end

@implementation PKContinuityProximityBLEAdvertisement

- (PKContinuityProximityBLEAdvertisement)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = PKContinuityProximityBLEAdvertisement;
  v6 = [(PKContinuityProximityAdvertisement *)&v9 initWithType:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
  }

  return v7;
}

- (PKContinuityProximityBLEAdvertisement)initWithDictionary:(id)dictionary
{
  v4 = [dictionary PKStringForKey:@"identifier"];
  if (v4)
  {
    v9.receiver = self;
    v9.super_class = PKContinuityProximityBLEAdvertisement;
    v5 = [(PKContinuityProximityAdvertisement *)&v9 initWithType:1];
    v6 = v5;
    if (v5)
    {
      objc_storeStrong(&v5->_identifier, v4);
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)_dictionaryRepresentation
{
  v5.receiver = self;
  v5.super_class = PKContinuityProximityBLEAdvertisement;
  _dictionaryRepresentation = [(PKContinuityProximityAdvertisement *)&v5 _dictionaryRepresentation];
  [_dictionaryRepresentation setObject:self->_identifier forKeyedSubscript:@"identifier"];

  return _dictionaryRepresentation;
}

@end