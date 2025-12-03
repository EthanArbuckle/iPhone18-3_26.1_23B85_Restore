@interface HKQuantity(Fitness)
- (BOOL)fi_isNonzero;
- (double)fi_doubleValueByDividingByQuantity:()Fitness;
@end

@implementation HKQuantity(Fitness)

- (BOOL)fi_isNonzero
{
  _unit = [self _unit];
  [self doubleValueForUnit:_unit];
  v4 = v3;

  return fabs(v4) > 2.22044605e-16;
}

- (double)fi_doubleValueByDividingByQuantity:()Fitness
{
  v4 = a3;
  _unit = [self _unit];
  [self doubleValueForUnit:_unit];
  v7 = v6;
  [v4 doubleValueForUnit:_unit];
  v9 = v8;

  if (v9 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v7 / v9;
  }

  return v10;
}

@end