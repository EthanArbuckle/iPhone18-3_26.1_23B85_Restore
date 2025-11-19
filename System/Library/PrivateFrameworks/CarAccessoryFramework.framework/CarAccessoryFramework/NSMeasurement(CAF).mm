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
  v7 = [a1 initWithDoubleValue:v6 unit:?];

  return v7;
}

- (id)stepWithDoubleValue:()CAF
{
  v4 = fabs(a2);
  v5 = objc_alloc(MEMORY[0x277CCAB10]);
  v6 = [a1 unit];
  v7 = [v5 initWithDoubleValue:v6 unit:v4];

  if (a2 <= 0.0)
  {
    [a1 measurementBySubtractingMeasurement:v7];
  }

  else
  {
    [a1 measurementByAddingMeasurement:v7];
  }
  v8 = ;

  return v8;
}

- (uint64_t)numberValue
{
  v1 = MEMORY[0x277CCABB0];
  [a1 doubleValue];

  return [v1 numberWithDouble:?];
}

@end