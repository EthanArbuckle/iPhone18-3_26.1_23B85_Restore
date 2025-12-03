@interface CAFInt8Range
- (char)maximumValue;
- (char)minimumValue;
- (char)stepValue;
- (char)valueRoundedToNearestStepValue:(char)value;
@end

@implementation CAFInt8Range

- (char)minimumValue
{
  minimum = [(CAFRange *)self minimum];
  charValue = [minimum charValue];

  return charValue;
}

- (char)maximumValue
{
  maximum = [(CAFRange *)self maximum];
  charValue = [maximum charValue];

  return charValue;
}

- (char)stepValue
{
  step = [(CAFRange *)self step];
  charValue = [step charValue];

  return charValue;
}

- (char)valueRoundedToNearestStepValue:(char)value
{
  valueCopy = value;
  if ([(CAFInt8Range *)self stepValue])
  {
    valueCopy -= [(CAFInt8Range *)self minimumValue];
    v5 = valueCopy / [(CAFInt8Range *)self stepValue];
    LOBYTE(valueCopy) = [(CAFInt8Range *)self minimumValue];
    LOBYTE(valueCopy) = valueCopy + [(CAFInt8Range *)self stepValue]* v5;
  }

  return valueCopy;
}

@end