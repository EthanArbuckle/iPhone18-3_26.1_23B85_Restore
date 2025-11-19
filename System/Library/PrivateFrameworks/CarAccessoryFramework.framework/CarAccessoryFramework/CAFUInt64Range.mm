@interface CAFUInt64Range
- (BOOL)valueIsInRange:(unint64_t)a3;
- (unint64_t)limitedValueForValue:(unint64_t)a3;
- (unint64_t)maximumValue;
- (unint64_t)minimumValue;
- (unint64_t)stepValue;
- (unint64_t)valueRoundedToNearestStepValue:(unint64_t)a3;
@end

@implementation CAFUInt64Range

- (unint64_t)minimumValue
{
  v2 = [(CAFRange *)self minimum];
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

- (unint64_t)maximumValue
{
  v2 = [(CAFRange *)self maximum];
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

- (unint64_t)stepValue
{
  v2 = [(CAFRange *)self step];
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

- (BOOL)valueIsInRange:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  LOBYTE(self) = [(CAFRange *)self isInRange:v4];

  return self;
}

- (unint64_t)valueRoundedToNearestStepValue:(unint64_t)a3
{
  if ([(CAFUInt64Range *)self stepValue])
  {
    v5 = a3 - [(CAFUInt64Range *)self minimumValue];
    v6 = v5 / [(CAFUInt64Range *)self stepValue];
    v7 = [(CAFUInt64Range *)self minimumValue];
    return v7 + [(CAFUInt64Range *)self stepValue]* v6;
  }

  return a3;
}

- (unint64_t)limitedValueForValue:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  v5 = [(CAFRange *)self limitedToRange:v4];
  v6 = [v5 unsignedLongLongValue];

  return v6;
}

@end