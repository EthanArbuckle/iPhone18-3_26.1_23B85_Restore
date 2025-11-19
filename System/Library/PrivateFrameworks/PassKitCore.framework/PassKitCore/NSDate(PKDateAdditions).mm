@interface NSDate(PKDateAdditions)
+ (id)dateWithDaysFromNow:()PKDateAdditions;
- (BOOL)isDateAtLeastNDays:()PKDateAdditions afterDate:;
- (BOOL)isDateEqualToDateIgnoringTime:()PKDateAdditions;
- (BOOL)isDateLessThanNDays:()PKDateAdditions afterDate:;
- (BOOL)isDateNewerThanNDays:()PKDateAdditions beforeDate:;
- (id)dateWithoutTime;
- (uint64_t)isDateWithinNDays:()PKDateAdditions ofDate:;
- (uint64_t)isToday;
- (uint64_t)isTomorrow;
- (uint64_t)isYesterday;
- (uint64_t)numberOfMonthsFromNow;
- (uint64_t)numberOfWeeksFromNow;
- (uint64_t)numberOfYearsFromNow;
@end

@implementation NSDate(PKDateAdditions)

+ (id)dateWithDaysFromNow:()PKDateAdditions
{
  v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v5 setDay:a3];
  v6 = [MEMORY[0x1E695DF00] date];
  v7 = [v4 dateByAddingComponents:v5 toDate:v6 options:0];

  return v7;
}

- (BOOL)isDateEqualToDateIgnoringTime:()PKDateAdditions
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v7 = [v6 components:9980 fromDate:a1];
  v8 = [v6 components:9980 fromDate:v5];

  v9 = [v7 year];
  if (v9 == [v8 year] && (v10 = objc_msgSend(v7, "month"), v10 == objc_msgSend(v8, "month")))
  {
    v11 = [v7 day];
    v12 = v11 == [v8 day];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isDateAtLeastNDays:()PKDateAdditions afterDate:
{
  if (!a4)
  {
    return 0;
  }

  v5 = [a4 dateByAddingTimeInterval:a3 * 86400.0];
  v6 = [v5 compare:a1] != 1;

  return v6;
}

- (BOOL)isDateLessThanNDays:()PKDateAdditions afterDate:
{
  if (!a4)
  {
    return 0;
  }

  v5 = [a4 dateByAddingTimeInterval:a3 * 86400.0];
  v6 = [v5 compare:a1] != -1;

  return v6;
}

- (BOOL)isDateNewerThanNDays:()PKDateAdditions beforeDate:
{
  if (!a4)
  {
    return 0;
  }

  v5 = [a4 dateByAddingTimeInterval:a3 * -86400.0];
  v6 = [v5 compare:a1] != 1;

  return v6;
}

- (uint64_t)isDateWithinNDays:()PKDateAdditions ofDate:
{
  v6 = a4;
  if ([a1 isDateNewerThanNDays:a3 beforeDate:v6])
  {
    v7 = [a1 isDateLessThanNDays:a3 afterDate:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)isToday
{
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = [a1 isDateEqualToDateIgnoringTime:v2];

  return v3;
}

- (uint64_t)isTomorrow
{
  v2 = [MEMORY[0x1E695DF00] dateForTomorrow];
  v3 = [a1 isDateEqualToDateIgnoringTime:v2];

  return v3;
}

- (uint64_t)isYesterday
{
  v2 = [MEMORY[0x1E695DF00] dateForYesterday];
  v3 = [a1 isDateEqualToDateIgnoringTime:v2];

  return v3;
}

- (id)dateWithoutTime
{
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [v2 components:9756 fromDate:a1];
  v4 = [v2 dateFromComponents:v3];

  return v4;
}

- (uint64_t)numberOfWeeksFromNow
{
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [v3 dateWithoutTime];
  v5 = [a1 dateWithoutTime];
  v6 = [v2 components:0x2000 fromDate:v4 toDate:v5 options:0];

  v7 = [v6 weekOfYear];
  return v7;
}

- (uint64_t)numberOfMonthsFromNow
{
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [v3 dateWithoutTime];
  v5 = [a1 dateWithoutTime];
  v6 = [v2 components:8 fromDate:v4 toDate:v5 options:0];

  v7 = [v6 month];
  return v7;
}

- (uint64_t)numberOfYearsFromNow
{
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [v3 dateWithoutTime];
  v5 = [a1 dateWithoutTime];
  v6 = [v2 components:4 fromDate:v4 toDate:v5 options:0];

  v7 = [v6 year];
  return v7;
}

@end