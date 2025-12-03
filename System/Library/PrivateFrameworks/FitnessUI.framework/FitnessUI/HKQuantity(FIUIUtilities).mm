@interface HKQuantity(FIUIUtilities)
- (BOOL)fiui_isNonzero;
- (double)fiui_doubleValueByDividingByQuantity:()FIUIUtilities;
@end

@implementation HKQuantity(FIUIUtilities)

- (BOOL)fiui_isNonzero
{
  _unit = [self _unit];
  [self doubleValueForUnit:_unit];
  v4 = v3;

  return fabs(v4) > 2.22044605e-16;
}

- (double)fiui_doubleValueByDividingByQuantity:()FIUIUtilities
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