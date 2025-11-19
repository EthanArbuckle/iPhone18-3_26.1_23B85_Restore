@interface PKContinuityProximityNWAdvertisement
- (PKContinuityProximityNWAdvertisement)initWithDictionary:(id)a3;
- (PKContinuityProximityNWAdvertisement)initWithIdentifier:(id)a3 pin:(id)a4;
- (id)_dictionaryRepresentation;
@end

@implementation PKContinuityProximityNWAdvertisement

- (PKContinuityProximityNWAdvertisement)initWithIdentifier:(id)a3 pin:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKContinuityProximityNWAdvertisement;
  v9 = [(PKContinuityProximityAdvertisement *)&v12 initWithType:2];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v10->_pin, a4);
  }

  return v10;
}

- (PKContinuityProximityNWAdvertisement)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 PKStringForKey:@"identifier"];
  v6 = [v4 PKStringForKey:@"pin"];

  v7 = 0;
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
    v7 = self;
  }

  return v7;
}

- (id)_dictionaryRepresentation
{
  v5.receiver = self;
  v5.super_class = PKContinuityProximityNWAdvertisement;
  v3 = [(PKContinuityProximityAdvertisement *)&v5 _dictionaryRepresentation];
  [v3 setObject:self->_identifier forKeyedSubscript:@"identifier"];
  [v3 setObject:self->_pin forKeyedSubscript:@"pin"];

  return v3;
}

@end