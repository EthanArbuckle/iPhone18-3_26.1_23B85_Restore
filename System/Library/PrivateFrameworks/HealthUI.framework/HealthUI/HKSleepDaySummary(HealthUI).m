@interface HKSleepDaySummary(HealthUI)
- (BOOL)hk_overlapsMidnightBasedDateInterval:()HealthUI gregorianCalendar:;
- (id)_secondsFromSummaryStartDateForDateComponents:()HealthUI;
@end

@implementation HKSleepDaySummary(HealthUI)

- (BOOL)hk_overlapsMidnightBasedDateInterval:()HealthUI gregorianCalendar:
{
  v5 = [a3 hk_dayIndexRangeWithCalendar:a4];
  v7 = v6;
  v8 = [a1 morningIndex];
  return v8 >= v5 && v8 - v5 < v7;
}

- (id)_secondsFromSummaryStartDateForDateComponents:()HealthUI
{
  v4 = a3;
  v5 = [a1 dateInterval];
  v6 = [v5 startDate];

  v7 = 0;
  if (v4 && v6)
  {
    v8 = [a1 calendar];
    v9 = [v8 nextDateAfterDate:v6 matchingComponents:v4 options:512];

    [v9 timeIntervalSinceDate:v6];
    v11 = v10;
    v12 = [a1 calendar];
    v13 = [v12 timeZone];

    [v13 daylightSavingTimeOffsetForDate:v9];
    v15 = v14;
    [v13 daylightSavingTimeOffsetForDate:v6];
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:v11 + v15 - v16];
  }

  return v7;
}

@end