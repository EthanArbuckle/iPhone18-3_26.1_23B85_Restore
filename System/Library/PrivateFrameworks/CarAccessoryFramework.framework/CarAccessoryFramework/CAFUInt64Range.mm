@interface CAFUInt64Range
- (BOOL)valueIsInRange:(unint64_t)range;
- (unint64_t)limitedValueForValue:(unint64_t)value;
- (unint64_t)maximumValue;
- (unint64_t)minimumValue;
- (unint64_t)stepValue;
- (unint64_t)valueRoundedToNearestStepValue:(unint64_t)value;
@end

@implementation CAFUInt64Range

- (unint64_t)minimumValue
{
  minimum = [(CAFRange *)self minimum];
  unsignedLongLongValue = [minimum unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (unint64_t)maximumValue
{
  maximum = [(CAFRange *)self maximum];
  unsignedLongLongValue = [maximum unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (unint64_t)stepValue
{
  step = [(CAFRange *)self step];
  unsignedLongLongValue = [step unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (BOOL)valueIsInRange:(unint64_t)range
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:range];
  LOBYTE(self) = [(CAFRange *)self isInRange:v4];

  return self;
}

- (unint64_t)valueRoundedToNearestStepValue:(unint64_t)value
{
  if ([(CAFUInt64Range *)self stepValue])
  {
    v5 = value - [(CAFUInt64Range *)self minimumValue];
    v6 = v5 / [(CAFUInt64Range *)self stepValue];
    minimumValue = [(CAFUInt64Range *)self minimumValue];
    return minimumValue + [(CAFUInt64Range *)self stepValue]* v6;
  }

  return value;
}

- (unint64_t)limitedValueForValue:(unint64_t)value
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:value];
  v5 = [(CAFRange *)self limitedToRange:v4];
  unsignedLongLongValue = [v5 unsignedLongLongValue];

  return unsignedLongLongValue;
}

@end