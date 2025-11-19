@interface NSDate(HKUIAdditions)
+ (id)hk_minimumDateForBirthDateWithCalendar:()HKUIAdditions;
- (id)hk_dateFromSourceTimeZone:()HKUIAdditions;
- (id)hkui_dateNormalizedFromDateInterval:()HKUIAdditions toDateInterval:;
- (uint64_t)hk_dateWithTruncatedSecond;
@end

@implementation NSDate(HKUIAdditions)

- (uint64_t)hk_dateWithTruncatedSecond
{
  [a1 timeIntervalSinceReferenceDate];
  v2 = floor(v1 / 60.0) * 60.0;
  v3 = MEMORY[0x1E695DF00];

  return [v3 dateWithTimeIntervalSinceReferenceDate:v2];
}

+ (id)hk_minimumDateForBirthDateWithCalendar:()HKUIAdditions
{
  v3 = MEMORY[0x1E695DF00];
  v4 = a3;
  v5 = [v3 date];
  v6 = [v4 dateByAddingUnit:4 value:-130 toDate:v5 options:0];

  return v6;
}

- (id)hk_dateFromSourceTimeZone:()HKUIAdditions
{
  if (a3)
  {
    v4 = MEMORY[0x1E695DFE8];
    v5 = a3;
    v6 = [v4 localTimeZone];
    v7 = [v5 secondsFromGMTForDate:a1];

    v8 = [a1 dateByAddingTimeInterval:{v7 - objc_msgSend(v6, "secondsFromGMTForDate:", a1)}];
  }

  else
  {
    v8 = a1;
  }

  return v8;
}

- (id)hkui_dateNormalizedFromDateInterval:()HKUIAdditions toDateInterval:
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 startDate];
  [a1 timeIntervalSinceDate:v8];
  v10 = v9;

  [v6 duration];
  v12 = v11;
  [v7 duration];
  v14 = v13;

  v15 = [v6 startDate];

  v16 = [v15 dateByAddingTimeInterval:v10 * (v12 / v14)];

  return v16;
}

@end