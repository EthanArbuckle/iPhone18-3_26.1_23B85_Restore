@interface CAFInt16Range
- (signed)maximumValue;
- (signed)minimumValue;
- (signed)stepValue;
- (signed)valueRoundedToNearestStepValue:(signed __int16)a3;
@end

@implementation CAFInt16Range

- (signed)minimumValue
{
  v2 = [(CAFRange *)self minimum];
  v3 = [v2 shortValue];

  return v3;
}

- (signed)maximumValue
{
  v2 = [(CAFRange *)self maximum];
  v3 = [v2 shortValue];

  return v3;
}

- (signed)stepValue
{
  v2 = [(CAFRange *)self step];
  v3 = [v2 shortValue];

  return v3;
}

- (signed)valueRoundedToNearestStepValue:(signed __int16)a3
{
  v3 = a3;
  if ([(CAFInt16Range *)self stepValue])
  {
    v3 -= [(CAFInt16Range *)self minimumValue];
    v5 = v3 / [(CAFInt16Range *)self stepValue];
    LOWORD(v3) = [(CAFInt16Range *)self minimumValue];
    LOWORD(v3) = v3 + [(CAFInt16Range *)self stepValue]* v5;
  }

  return v3;
}

@end