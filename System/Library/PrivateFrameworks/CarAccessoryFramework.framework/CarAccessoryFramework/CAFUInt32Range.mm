@interface CAFUInt32Range
- (unsigned)maximumValue;
- (unsigned)minimumValue;
- (unsigned)stepValue;
- (unsigned)valueRoundedToNearestStepValue:(unsigned int)a3;
@end

@implementation CAFUInt32Range

- (unsigned)minimumValue
{
  v2 = [(CAFRange *)self minimum];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (unsigned)maximumValue
{
  v2 = [(CAFRange *)self maximum];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (unsigned)stepValue
{
  v2 = [(CAFRange *)self step];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (unsigned)valueRoundedToNearestStepValue:(unsigned int)a3
{
  if ([(CAFUInt32Range *)self stepValue])
  {
    v5 = a3 - [(CAFUInt32Range *)self minimumValue];
    v6 = v5 / [(CAFUInt32Range *)self stepValue];
    v7 = [(CAFUInt32Range *)self minimumValue];
    return v7 + [(CAFUInt32Range *)self stepValue]* v6;
  }

  return a3;
}

@end