@interface HKQuantity(Fitness)
- (BOOL)fi_isNonzero;
- (double)fi_doubleValueByDividingByQuantity:()Fitness;
@end

@implementation HKQuantity(Fitness)

- (BOOL)fi_isNonzero
{
  v2 = [a1 _unit];
  [a1 doubleValueForUnit:v2];
  v4 = v3;

  return fabs(v4) > 2.22044605e-16;
}

- (double)fi_doubleValueByDividingByQuantity:()Fitness
{
  v4 = a3;
  v5 = [a1 _unit];
  [a1 doubleValueForUnit:v5];
  v7 = v6;
  [v4 doubleValueForUnit:v5];
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