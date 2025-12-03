@interface _TempToken
- (_TempToken)initWithCoder:(id)coder;
- (_TempToken)initWithToken:(id)token;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _TempToken

- (_TempToken)initWithToken:(id)token
{
  tokenCopy = token;
  v30.receiver = self;
  v30.super_class = _TempToken;
  v5 = [(_TempToken *)&v30 init];
  if (v5)
  {
    v5->_type = [tokenCopy type];
    token = [tokenCopy token];
    token = v5->_token;
    v5->_token = token;

    v5->_value1 = [tokenCopy value1];
    v5->_value2 = [tokenCopy value2];
    value3s = [tokenCopy value3s];
    value3s = v5->_value3s;
    v5->_value3s = value3s;

    stringValue = [tokenCopy stringValue];
    stringValue = v5->_stringValue;
    v5->_stringValue = stringValue;

    [tokenCopy percentageValue];
    v5->_percentageValue = v12;
    v5->_shouldScaleUnits = [tokenCopy shouldScaleUnits];
    genericCombinations = [tokenCopy genericCombinations];
    genericCombinations = v5->_genericCombinations;
    v5->_genericCombinations = genericCombinations;

    v5->_waypointIndex = [tokenCopy waypointIndex];
    priceValue = [tokenCopy priceValue];
    priceValue = v5->_priceValue;
    v5->_priceValue = priceValue;

    artworkValue = [tokenCopy artworkValue];
    artworkValue = v5->_artworkValue;
    v5->_artworkValue = artworkValue;

    timeStampValues = [tokenCopy timeStampValues];
    timeStampValues = v5->_timeStampValues;
    v5->_timeStampValues = timeStampValues;

    countdownValue = [tokenCopy countdownValue];
    countdownValue = v5->_countdownValue;
    v5->_countdownValue = countdownValue;

    urlValue = [tokenCopy urlValue];
    urlValue = v5->_urlValue;
    v5->_urlValue = urlValue;

    maneuverValue = [tokenCopy maneuverValue];
    maneuverValue = v5->_maneuverValue;
    v5->_maneuverValue = maneuverValue;

    numberData = [tokenCopy numberData];
    numberData = v5->_numberData;
    v5->_numberData = numberData;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"type"];
  [coderCopy encodeObject:self->_token forKey:@"token"];
  [coderCopy encodeInteger:self->_value1 forKey:@"value1"];
  [coderCopy encodeInteger:self->_value2 forKey:@"value2"];
  [coderCopy encodeObject:self->_value3s forKey:@"value3s"];
  [coderCopy encodeObject:self->_stringValue forKey:@"stringValue"];
  *&v5 = self->_percentageValue;
  [coderCopy encodeFloat:@"percentageValue" forKey:v5];
  [coderCopy encodeBool:self->_shouldScaleUnits forKey:@"shouldScaleUnits"];
  [coderCopy encodeObject:self->_genericCombinations forKey:@"genericCombinations"];
  [coderCopy encodeInt32:self->_waypointIndex forKey:@"waypointIndex"];
  [coderCopy encodeObject:self->_priceValue forKey:@"priceValue"];
  [coderCopy encodeObject:self->_artworkValue forKey:@"artworkValue"];
  [coderCopy encodeObject:self->_timeStampValues forKey:@"timeStampValues"];
  [coderCopy encodeObject:self->_countdownValue forKey:@"countdownValue"];
  [coderCopy encodeObject:self->_urlValue forKey:@"urlValue"];
  [coderCopy encodeObject:self->_maneuverValue forKey:@"maneuverValue"];
  [coderCopy encodeObject:self->_numberData forKey:@"numberData"];
}

- (_TempToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = _TempToken;
  v5 = [(_TempToken *)&v26 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"token"];
    token = v5->_token;
    v5->_token = v6;

    v5->_value1 = [coderCopy decodeIntegerForKey:@"value1"];
    v5->_value2 = [coderCopy decodeIntegerForKey:@"value2"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value3s"];
    v9 = [v8 mutableCopy];
    value3s = v5->_value3s;
    v5->_value3s = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stringValue"];
    stringValue = v5->_stringValue;
    v5->_stringValue = v11;

    [coderCopy decodeFloatForKey:@"percentageValue"];
    v5->_percentageValue = v13;
    v5->_shouldScaleUnits = [coderCopy decodeBoolForKey:@"shouldScaleUnits"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"genericCombinations"];
    genericCombinations = v5->_genericCombinations;
    v5->_genericCombinations = v14;

    v5->_waypointIndex = [coderCopy decodeInt32ForKey:@"waypointIndex"];
    v16 = [coderCopy decodeObjectForKey:@"priceValue"];
    if ([v16 conformsToProtocol:&unk_1F4F21B38])
    {
      objc_storeStrong(&v5->_priceValue, v16);
    }

    v17 = [coderCopy decodeObjectForKey:@"artworkValue"];
    if ([v17 conformsToProtocol:&unk_1F4F21DE0])
    {
      objc_storeStrong(&v5->_artworkValue, v17);
    }

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestampValues"];
    v19 = [v18 mutableCopy];
    timeStampValues = v5->_timeStampValues;
    v5->_timeStampValues = v19;

    v21 = [coderCopy decodeObjectForKey:@"countdownValue"];
    if ([v21 conformsToProtocol:&unk_1F4F21F68])
    {
      objc_storeStrong(&v5->_countdownValue, v21);
    }

    v22 = [coderCopy decodeObjectForKey:@"urlValue"];
    if ([v22 conformsToProtocol:&unk_1F4F21FC8])
    {
      objc_storeStrong(&v5->_urlValue, v22);
    }

    v23 = [coderCopy decodeObjectForKey:@"maneuverValue"];
    if ([v23 conformsToProtocol:&unk_1F4F21FC8])
    {
      objc_storeStrong(&v5->_maneuverValue, v23);
    }

    v24 = [coderCopy decodeObjectForKey:@"numberData"];
    if ([v24 conformsToProtocol:&unk_1F4F22028])
    {
      objc_storeStrong(&v5->_numberData, v24);
    }
  }

  return v5;
}

@end