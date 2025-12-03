@interface PKContinuityProximityNWAdvertisement
- (PKContinuityProximityNWAdvertisement)initWithDictionary:(id)dictionary;
- (PKContinuityProximityNWAdvertisement)initWithIdentifier:(id)identifier pin:(id)pin;
- (id)_dictionaryRepresentation;
@end

@implementation PKContinuityProximityNWAdvertisement

- (PKContinuityProximityNWAdvertisement)initWithIdentifier:(id)identifier pin:(id)pin
{
  identifierCopy = identifier;
  pinCopy = pin;
  v12.receiver = self;
  v12.super_class = PKContinuityProximityNWAdvertisement;
  v9 = [(PKContinuityProximityAdvertisement *)&v12 initWithType:2];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_pin, pin);
  }

  return v10;
}

- (PKContinuityProximityNWAdvertisement)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy PKStringForKey:@"identifier"];
  v6 = [dictionaryCopy PKStringForKey:@"pin"];

  selfCopy = 0;
  if (v5 && v6)
  {
    v11.receiver = self;
    v11.super_class = PKContinuityProximityNWAdvertisement;
    v8 = [(PKContinuityProximityAdvertisement *)&v11 initWithType:2];
    p_isa = &v8->super.super.isa;
    if (v8)
    {
      objc_storeStrong(&v8->_identifier, v5);
      objc_storeStrong(p_isa + 3, v6);
    }

    self = p_isa;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)_dictionaryRepresentation
{
  v5.receiver = self;
  v5.super_class = PKContinuityProximityNWAdvertisement;
  _dictionaryRepresentation = [(PKContinuityProximityAdvertisement *)&v5 _dictionaryRepresentation];
  [_dictionaryRepresentation setObject:self->_identifier forKeyedSubscript:@"identifier"];
  [_dictionaryRepresentation setObject:self->_pin forKeyedSubscript:@"pin"];

  return _dictionaryRepresentation;
}

@end