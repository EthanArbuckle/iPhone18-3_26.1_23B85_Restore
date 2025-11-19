@interface CAFInt64Range
- (BOOL)valueIsInRange:(int64_t)a3;
- (int64_t)limitedValueForValue:(int64_t)a3;
- (int64_t)maximumValue;
- (int64_t)minimumValue;
- (int64_t)stepValue;
- (int64_t)valueRoundedToNearestStepValue:(int64_t)a3;
@end

@implementation CAFInt64Range

- (int64_t)minimumValue
{
  v2 = [(CAFRange *)self minimum];
  v3 = [v2 longLongValue];

  return v3;
}

- (int64_t)maximumValue
{
  v2 = [(CAFRange *)self maximum];
  v3 = [v2 longLongValue];

  return v3;
}

- (int64_t)stepValue
{
  v2 = [(CAFRange *)self step];
  v3 = [v2 longLongValue];

  return v3;
}

- (BOOL)valueIsInRange:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
  LOBYTE(self) = [(CAFRange *)self isInRange:v4];

  return self;
}

- (int64_t)valueRoundedToNearestStepValue:(int64_t)a3
{
  if ([(CAFInt64Range *)self stepValue])
  {
    v5 = a3 - [(CAFInt64Range *)self minimumValue];
    v6 = v5 / [(CAFInt64Range *)self stepValue];
    v7 = [(CAFInt64Range *)self minimumValue];
    return v7 + [(CAFInt64Range *)self stepValue]* v6;
  }

  return a3;
}

- (int64_t)limitedValueForValue:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
  v5 = [(CAFRange *)self limitedToRange:v4];
  v6 = [v5 longLongValue];

  return v6;
}

@end