@interface CAFUInt8Range
- (unsigned)maximumValue;
- (unsigned)minimumValue;
- (unsigned)stepValue;
- (unsigned)valueRoundedToNearestStepValue:(unsigned __int8)a3;
@end

@implementation CAFUInt8Range

- (unsigned)minimumValue
{
  v2 = [(CAFRange *)self minimum];
  v3 = [v2 unsignedCharValue];

  return v3;
}

- (unsigned)maximumValue
{
  v2 = [(CAFRange *)self maximum];
  v3 = [v2 unsignedCharValue];

  return v3;
}

- (unsigned)stepValue
{
  v2 = [(CAFRange *)self step];
  v3 = [v2 unsignedCharValue];

  return v3;
}

- (unsigned)valueRoundedToNearestStepValue:(unsigned __int8)a3
{
  v3 = a3;
  if ([(CAFUInt8Range *)self stepValue])
  {
    v3 -= [(CAFUInt8Range *)self minimumValue];
    v5 = v3 / [(CAFUInt8Range *)self stepValue];
    LOBYTE(v3) = [(CAFUInt8Range *)self minimumValue];
    LOBYTE(v3) = v3 + [(CAFUInt8Range *)self stepValue]* v5;
  }

  return v3;
}

@end