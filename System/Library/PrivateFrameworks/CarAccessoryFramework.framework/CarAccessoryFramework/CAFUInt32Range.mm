@interface CAFUInt32Range
- (unsigned)maximumValue;
- (unsigned)minimumValue;
- (unsigned)stepValue;
- (unsigned)valueRoundedToNearestStepValue:(unsigned int)value;
@end

@implementation CAFUInt32Range

- (unsigned)minimumValue
{
  minimum = [(CAFRange *)self minimum];
  unsignedIntValue = [minimum unsignedIntValue];

  return unsignedIntValue;
}

- (unsigned)maximumValue
{
  maximum = [(CAFRange *)self maximum];
  unsignedIntValue = [maximum unsignedIntValue];

  return unsignedIntValue;
}

- (unsigned)stepValue
{
  step = [(CAFRange *)self step];
  unsignedIntValue = [step unsignedIntValue];

  return unsignedIntValue;
}

- (unsigned)valueRoundedToNearestStepValue:(unsigned int)value
{
  if ([(CAFUInt32Range *)self stepValue])
  {
    v5 = value - [(CAFUInt32Range *)self minimumValue];
    v6 = v5 / [(CAFUInt32Range *)self stepValue];
    minimumValue = [(CAFUInt32Range *)self minimumValue];
    return minimumValue + [(CAFUInt32Range *)self stepValue]* v6;
  }

  return value;
}

@end