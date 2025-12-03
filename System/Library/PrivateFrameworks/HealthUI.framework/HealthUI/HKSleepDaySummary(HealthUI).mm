@interface HKSleepDaySummary(HealthUI)
- (BOOL)hk_overlapsMidnightBasedDateInterval:()HealthUI gregorianCalendar:;
- (id)_secondsFromSummaryStartDateForDateComponents:()HealthUI;
@end

@implementation HKSleepDaySummary(HealthUI)

- (BOOL)hk_overlapsMidnightBasedDateInterval:()HealthUI gregorianCalendar:
{
  v5 = [a3 hk_dayIndexRangeWithCalendar:a4];
  v7 = v6;
  morningIndex = [self morningIndex];
  return morningIndex >= v5 && morningIndex - v5 < v7;
}

- (id)_secondsFromSummaryStartDateForDateComponents:()HealthUI
{
  v4 = a3;
  dateInterval = [self dateInterval];
  startDate = [dateInterval startDate];

  v7 = 0;
  if (v4 && startDate)
  {
    calendar = [self calendar];
    v9 = [calendar nextDateAfterDate:startDate matchingComponents:v4 options:512];

    [v9 timeIntervalSinceDate:startDate];
    v11 = v10;
    calendar2 = [self calendar];
    timeZone = [calendar2 timeZone];

    [timeZone daylightSavingTimeOffsetForDate:v9];
    v15 = v14;
    [timeZone daylightSavingTimeOffsetForDate:startDate];
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:v11 + v15 - v16];
  }

  return v7;
}

@end