@interface CAFInt32Range
- (int)maximumValue;
- (int)minimumValue;
- (int)stepValue;
- (int)valueRoundedToNearestStepValue:(int)value;
@end

@implementation CAFInt32Range

- (int)minimumValue
{
  minimum = [(CAFRange *)self minimum];
  intValue = [minimum intValue];

  return intValue;
}

- (int)maximumValue
{
  maximum = [(CAFRange *)self maximum];
  intValue = [maximum intValue];

  return intValue;
}

- (int)stepValue
{
  step = [(CAFRange *)self step];
  intValue = [step intValue];

  return intValue;
}

- (int)valueRoundedToNearestStepValue:(int)value
{
  if ([(CAFInt32Range *)self stepValue])
  {
    v5 = value - [(CAFInt32Range *)self minimumValue];
    v6 = v5 / [(CAFInt32Range *)self stepValue];
    minimumValue = [(CAFInt32Range *)self minimumValue];
    return minimumValue + [(CAFInt32Range *)self stepValue]* v6;
  }

  return value;
}

@end