@interface CAFInt8Range
- (char)maximumValue;
- (char)minimumValue;
- (char)stepValue;
- (char)valueRoundedToNearestStepValue:(char)a3;
@end

@implementation CAFInt8Range

- (char)minimumValue
{
  v2 = [(CAFRange *)self minimum];
  v3 = [v2 charValue];

  return v3;
}

- (char)maximumValue
{
  v2 = [(CAFRange *)self maximum];
  v3 = [v2 charValue];

  return v3;
}

- (char)stepValue
{
  v2 = [(CAFRange *)self step];
  v3 = [v2 charValue];

  return v3;
}

- (char)valueRoundedToNearestStepValue:(char)a3
{
  v3 = a3;
  if ([(CAFInt8Range *)self stepValue])
  {
    v3 -= [(CAFInt8Range *)self minimumValue];
    v5 = v3 / [(CAFInt8Range *)self stepValue];
    LOBYTE(v3) = [(CAFInt8Range *)self minimumValue];
    LOBYTE(v3) = v3 + [(CAFInt8Range *)self stepValue]* v5;
  }

  return v3;
}

@end