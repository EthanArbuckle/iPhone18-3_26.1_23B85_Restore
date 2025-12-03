@interface CAFUInt8Range
- (unsigned)maximumValue;
- (unsigned)minimumValue;
- (unsigned)stepValue;
- (unsigned)valueRoundedToNearestStepValue:(unsigned __int8)value;
@end

@implementation CAFUInt8Range

- (unsigned)minimumValue
{
  minimum = [(CAFRange *)self minimum];
  unsignedCharValue = [minimum unsignedCharValue];

  return unsignedCharValue;
}

- (unsigned)maximumValue
{
  maximum = [(CAFRange *)self maximum];
  unsignedCharValue = [maximum unsignedCharValue];

  return unsignedCharValue;
}

- (unsigned)stepValue
{
  step = [(CAFRange *)self step];
  unsignedCharValue = [step unsignedCharValue];

  return unsignedCharValue;
}

- (unsigned)valueRoundedToNearestStepValue:(unsigned __int8)value
{
  valueCopy = value;
  if ([(CAFUInt8Range *)self stepValue])
  {
    valueCopy -= [(CAFUInt8Range *)self minimumValue];
    v5 = valueCopy / [(CAFUInt8Range *)self stepValue];
    LOBYTE(valueCopy) = [(CAFUInt8Range *)self minimumValue];
    LOBYTE(valueCopy) = valueCopy + [(CAFUInt8Range *)self stepValue]* v5;
  }

  return valueCopy;
}

@end