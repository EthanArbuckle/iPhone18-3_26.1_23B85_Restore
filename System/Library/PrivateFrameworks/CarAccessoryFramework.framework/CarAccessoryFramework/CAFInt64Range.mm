@interface CAFInt64Range
- (BOOL)valueIsInRange:(int64_t)range;
- (int64_t)limitedValueForValue:(int64_t)value;
- (int64_t)maximumValue;
- (int64_t)minimumValue;
- (int64_t)stepValue;
- (int64_t)valueRoundedToNearestStepValue:(int64_t)value;
@end

@implementation CAFInt64Range

- (int64_t)minimumValue
{
  minimum = [(CAFRange *)self minimum];
  longLongValue = [minimum longLongValue];

  return longLongValue;
}

- (int64_t)maximumValue
{
  maximum = [(CAFRange *)self maximum];
  longLongValue = [maximum longLongValue];

  return longLongValue;
}

- (int64_t)stepValue
{
  step = [(CAFRange *)self step];
  longLongValue = [step longLongValue];

  return longLongValue;
}

- (BOOL)valueIsInRange:(int64_t)range
{
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:range];
  LOBYTE(self) = [(CAFRange *)self isInRange:v4];

  return self;
}

- (int64_t)valueRoundedToNearestStepValue:(int64_t)value
{
  if ([(CAFInt64Range *)self stepValue])
  {
    v5 = value - [(CAFInt64Range *)self minimumValue];
    v6 = v5 / [(CAFInt64Range *)self stepValue];
    minimumValue = [(CAFInt64Range *)self minimumValue];
    return minimumValue + [(CAFInt64Range *)self stepValue]* v6;
  }

  return value;
}

- (int64_t)limitedValueForValue:(int64_t)value
{
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:value];
  v5 = [(CAFRange *)self limitedToRange:v4];
  longLongValue = [v5 longLongValue];

  return longLongValue;
}

@end