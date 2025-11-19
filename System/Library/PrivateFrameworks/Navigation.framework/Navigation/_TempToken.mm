@interface _TempToken
- (_TempToken)initWithCoder:(id)a3;
- (_TempToken)initWithToken:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _TempToken

- (_TempToken)initWithToken:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = _TempToken;
  v5 = [(_TempToken *)&v30 init];
  if (v5)
  {
    v5->_type = [v4 type];
    v6 = [v4 token];
    token = v5->_token;
    v5->_token = v6;

    v5->_value1 = [v4 value1];
    v5->_value2 = [v4 value2];
    v8 = [v4 value3s];
    value3s = v5->_value3s;
    v5->_value3s = v8;

    v10 = [v4 stringValue];
    stringValue = v5->_stringValue;
    v5->_stringValue = v10;

    [v4 percentageValue];
    v5->_percentageValue = v12;
    v5->_shouldScaleUnits = [v4 shouldScaleUnits];
    v13 = [v4 genericCombinations];
    genericCombinations = v5->_genericCombinations;
    v5->_genericCombinations = v13;

    v5->_waypointIndex = [v4 waypointIndex];
    v15 = [v4 priceValue];
    priceValue = v5->_priceValue;
    v5->_priceValue = v15;

    v17 = [v4 artworkValue];
    artworkValue = v5->_artworkValue;
    v5->_artworkValue = v17;

    v19 = [v4 timeStampValues];
    timeStampValues = v5->_timeStampValues;
    v5->_timeStampValues = v19;

    v21 = [v4 countdownValue];
    countdownValue = v5->_countdownValue;
    v5->_countdownValue = v21;

    v23 = [v4 urlValue];
    urlValue = v5->_urlValue;
    v5->_urlValue = v23;

    v25 = [v4 maneuverValue];
    maneuverValue = v5->_maneuverValue;
    v5->_maneuverValue = v25;

    v27 = [v4 numberData];
    numberData = v5->_numberData;
    v5->_numberData = v27;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v6 = a3;
  [v6 encodeInteger:type forKey:@"type"];
  [v6 encodeObject:self->_token forKey:@"token"];
  [v6 encodeInteger:self->_value1 forKey:@"value1"];
  [v6 encodeInteger:self->_value2 forKey:@"value2"];
  [v6 encodeObject:self->_value3s forKey:@"value3s"];
  [v6 encodeObject:self->_stringValue forKey:@"stringValue"];
  *&v5 = self->_percentageValue;
  [v6 encodeFloat:@"percentageValue" forKey:v5];
  [v6 encodeBool:self->_shouldScaleUnits forKey:@"shouldScaleUnits"];
  [v6 encodeObject:self->_genericCombinations forKey:@"genericCombinations"];
  [v6 encodeInt32:self->_waypointIndex forKey:@"waypointIndex"];
  [v6 encodeObject:self->_priceValue forKey:@"priceValue"];
  [v6 encodeObject:self->_artworkValue forKey:@"artworkValue"];
  [v6 encodeObject:self->_timeStampValues forKey:@"timeStampValues"];
  [v6 encodeObject:self->_countdownValue forKey:@"countdownValue"];
  [v6 encodeObject:self->_urlValue forKey:@"urlValue"];
  [v6 encodeObject:self->_maneuverValue forKey:@"maneuverValue"];
  [v6 encodeObject:self->_numberData forKey:@"numberData"];
}

- (_TempToken)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = _TempToken;
  v5 = [(_TempToken *)&v26 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"token"];
    token = v5->_token;
    v5->_token = v6;

    v5->_value1 = [v4 decodeIntegerForKey:@"value1"];
    v5->_value2 = [v4 decodeIntegerForKey:@"value2"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value3s"];
    v9 = [v8 mutableCopy];
    value3s = v5->_value3s;
    v5->_value3s = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stringValue"];
    stringValue = v5->_stringValue;
    v5->_stringValue = v11;

    [v4 decodeFloatForKey:@"percentageValue"];
    v5->_percentageValue = v13;
    v5->_shouldScaleUnits = [v4 decodeBoolForKey:@"shouldScaleUnits"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"genericCombinations"];
    genericCombinations = v5->_genericCombinations;
    v5->_genericCombinations = v14;

    v5->_waypointIndex = [v4 decodeInt32ForKey:@"waypointIndex"];
    v16 = [v4 decodeObjectForKey:@"priceValue"];
    if ([v16 conformsToProtocol:&unk_1F4F21B38])
    {
      objc_storeStrong(&v5->_priceValue, v16);
    }

    v17 = [v4 decodeObjectForKey:@"artworkValue"];
    if ([v17 conformsToProtocol:&unk_1F4F21DE0])
    {
      objc_storeStrong(&v5->_artworkValue, v17);
    }

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestampValues"];
    v19 = [v18 mutableCopy];
    timeStampValues = v5->_timeStampValues;
    v5->_timeStampValues = v19;

    v21 = [v4 decodeObjectForKey:@"countdownValue"];
    if ([v21 conformsToProtocol:&unk_1F4F21F68])
    {
      objc_storeStrong(&v5->_countdownValue, v21);
    }

    v22 = [v4 decodeObjectForKey:@"urlValue"];
    if ([v22 conformsToProtocol:&unk_1F4F21FC8])
    {
      objc_storeStrong(&v5->_urlValue, v22);
    }

    v23 = [v4 decodeObjectForKey:@"maneuverValue"];
    if ([v23 conformsToProtocol:&unk_1F4F21FC8])
    {
      objc_storeStrong(&v5->_maneuverValue, v23);
    }

    v24 = [v4 decodeObjectForKey:@"numberData"];
    if ([v24 conformsToProtocol:&unk_1F4F22028])
    {
      objc_storeStrong(&v5->_numberData, v24);
    }
  }

  return v5;
}

@end