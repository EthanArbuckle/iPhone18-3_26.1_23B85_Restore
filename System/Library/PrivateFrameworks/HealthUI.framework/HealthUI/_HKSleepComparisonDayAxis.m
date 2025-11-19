@interface _HKSleepComparisonDayAxis
- (id)stringForDate:(id)a3 zoom:(int64_t)a4 labelType:(int64_t)a5;
@end

@implementation _HKSleepComparisonDayAxis

- (id)stringForDate:(id)a3 zoom:(int64_t)a4 labelType:(int64_t)a5
{
  if (a5 == 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = HKLocalizedStringForDateAndTemplate(a3, 24);
  }

  return v6;
}

@end