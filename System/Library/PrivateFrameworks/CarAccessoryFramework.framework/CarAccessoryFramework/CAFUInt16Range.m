@interface CAFUInt16Range
- (unsigned)maximumValue;
- (unsigned)minimumValue;
- (unsigned)stepValue;
- (unsigned)valueRoundedToNearestStepValue:(unsigned __int16)a3;
@end

@implementation CAFUInt16Range

- (unsigned)minimumValue
{
  v2 = [(CAFRange *)self minimum];
  v3 = [v2 unsignedShortValue];

  return v3;
}

- (unsigned)maximumValue
{
  v2 = [(CAFRange *)self maximum];
  v3 = [v2 unsignedShortValue];

  return v3;
}

- (unsigned)stepValue
{
  v2 = [(CAFRange *)self step];
  v3 = [v2 unsignedShortValue];

  return v3;
}

- (unsigned)valueRoundedToNearestStepValue:(unsigned __int16)a3
{
  v3 = a3;
  if ([(CAFUInt16Range *)self stepValue])
  {
    v3 -= [(CAFUInt16Range *)self minimumValue];
    v5 = v3 / [(CAFUInt16Range *)self stepValue];
    LOWORD(v3) = [(CAFUInt16Range *)self minimumValue];
    LOWORD(v3) = v3 + [(CAFUInt16Range *)self stepValue]* v5;
  }

  return v3;
}

@end