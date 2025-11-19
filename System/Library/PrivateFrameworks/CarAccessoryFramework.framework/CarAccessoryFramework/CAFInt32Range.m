@interface CAFInt32Range
- (int)maximumValue;
- (int)minimumValue;
- (int)stepValue;
- (int)valueRoundedToNearestStepValue:(int)a3;
@end

@implementation CAFInt32Range

- (int)minimumValue
{
  v2 = [(CAFRange *)self minimum];
  v3 = [v2 intValue];

  return v3;
}

- (int)maximumValue
{
  v2 = [(CAFRange *)self maximum];
  v3 = [v2 intValue];

  return v3;
}

- (int)stepValue
{
  v2 = [(CAFRange *)self step];
  v3 = [v2 intValue];

  return v3;
}

- (int)valueRoundedToNearestStepValue:(int)a3
{
  if ([(CAFInt32Range *)self stepValue])
  {
    v5 = a3 - [(CAFInt32Range *)self minimumValue];
    v6 = v5 / [(CAFInt32Range *)self stepValue];
    v7 = [(CAFInt32Range *)self minimumValue];
    return v7 + [(CAFInt32Range *)self stepValue]* v6;
  }

  return a3;
}

@end