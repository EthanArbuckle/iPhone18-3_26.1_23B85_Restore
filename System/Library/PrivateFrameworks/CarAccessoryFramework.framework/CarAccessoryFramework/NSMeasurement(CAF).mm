@interface NSMeasurement(CAF)
- (id)stepWithDoubleValue:()CAF;
- (uint64_t)initWithNumberValue:()CAF unit:;
- (uint64_t)numberValue;
@end

@implementation NSMeasurement(CAF)

- (uint64_t)initWithNumberValue:()CAF unit:
{
  v6 = a4;
  [a3 doubleValue];
  v7 = [self initWithDoubleValue:v6 unit:?];

  return v7;
}

- (id)stepWithDoubleValue:()CAF
{
  v4 = fabs(a2);
  v5 = objc_alloc(MEMORY[0x277CCAB10]);
  unit = [self unit];
  v7 = [v5 initWithDoubleValue:unit unit:v4];

  if (a2 <= 0.0)
  {
    [self measurementBySubtractingMeasurement:v7];
  }

  else
  {
    [self measurementByAddingMeasurement:v7];
  }
  v8 = ;

  return v8;
}

- (uint64_t)numberValue
{
  v1 = MEMORY[0x277CCABB0];
  [self doubleValue];

  return [v1 numberWithDouble:?];
}

@end