@interface CAFUInt16Range
- (unsigned)maximumValue;
- (unsigned)minimumValue;
- (unsigned)stepValue;
- (unsigned)valueRoundedToNearestStepValue:(unsigned __int16)value;
@end

@implementation CAFUInt16Range

- (unsigned)minimumValue
{
  minimum = [(CAFRange *)self minimum];
  unsignedShortValue = [minimum unsignedShortValue];

  return unsignedShortValue;
}

- (unsigned)maximumValue
{
  maximum = [(CAFRange *)self maximum];
  unsignedShortValue = [maximum unsignedShortValue];

  return unsignedShortValue;
}

- (unsigned)stepValue
{
  step = [(CAFRange *)self step];
  unsignedShortValue = [step unsignedShortValue];

  return unsignedShortValue;
}

- (unsigned)valueRoundedToNearestStepValue:(unsigned __int16)value
{
  valueCopy = value;
  if ([(CAFUInt16Range *)self stepValue])
  {
    valueCopy -= [(CAFUInt16Range *)self minimumValue];
    v5 = valueCopy / [(CAFUInt16Range *)self stepValue];
    LOWORD(valueCopy) = [(CAFUInt16Range *)self minimumValue];
    LOWORD(valueCopy) = valueCopy + [(CAFUInt16Range *)self stepValue]* v5;
  }

  return valueCopy;
}

@end