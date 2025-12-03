@interface _HKSleepComparisonDayAxis
- (id)stringForDate:(id)date zoom:(int64_t)zoom labelType:(int64_t)type;
@end

@implementation _HKSleepComparisonDayAxis

- (id)stringForDate:(id)date zoom:(int64_t)zoom labelType:(int64_t)type
{
  if (type == 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = HKLocalizedStringForDateAndTemplate(date, 24);
  }

  return v6;
}

@end