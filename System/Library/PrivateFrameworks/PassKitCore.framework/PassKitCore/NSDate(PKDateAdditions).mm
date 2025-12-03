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
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v5 setDay:a3];
  date = [MEMORY[0x1E695DF00] date];
  v7 = [currentCalendar dateByAddingComponents:v5 toDate:date options:0];

  return v7;
}

- (BOOL)isDateEqualToDateIgnoringTime:()PKDateAdditions
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  currentCalendar = [v4 currentCalendar];
  v7 = [currentCalendar components:9980 fromDate:self];
  v8 = [currentCalendar components:9980 fromDate:v5];

  year = [v7 year];
  if (year == [v8 year] && (v10 = objc_msgSend(v7, "month"), v10 == objc_msgSend(v8, "month")))
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
  v6 = [v5 compare:self] != 1;

  return v6;
}

- (BOOL)isDateLessThanNDays:()PKDateAdditions afterDate:
{
  if (!a4)
  {
    return 0;
  }

  v5 = [a4 dateByAddingTimeInterval:a3 * 86400.0];
  v6 = [v5 compare:self] != -1;

  return v6;
}

- (BOOL)isDateNewerThanNDays:()PKDateAdditions beforeDate:
{
  if (!a4)
  {
    return 0;
  }

  v5 = [a4 dateByAddingTimeInterval:a3 * -86400.0];
  v6 = [v5 compare:self] != 1;

  return v6;
}

- (uint64_t)isDateWithinNDays:()PKDateAdditions ofDate:
{
  v6 = a4;
  if ([self isDateNewerThanNDays:a3 beforeDate:v6])
  {
    v7 = [self isDateLessThanNDays:a3 afterDate:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)isToday
{
  date = [MEMORY[0x1E695DF00] date];
  v3 = [self isDateEqualToDateIgnoringTime:date];

  return v3;
}

- (uint64_t)isTomorrow
{
  dateForTomorrow = [MEMORY[0x1E695DF00] dateForTomorrow];
  v3 = [self isDateEqualToDateIgnoringTime:dateForTomorrow];

  return v3;
}

- (uint64_t)isYesterday
{
  dateForYesterday = [MEMORY[0x1E695DF00] dateForYesterday];
  v3 = [self isDateEqualToDateIgnoringTime:dateForYesterday];

  return v3;
}

- (id)dateWithoutTime
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [currentCalendar components:9756 fromDate:self];
  v4 = [currentCalendar dateFromComponents:v3];

  return v4;
}

- (uint64_t)numberOfWeeksFromNow
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  date = [MEMORY[0x1E695DF00] date];
  dateWithoutTime = [date dateWithoutTime];
  dateWithoutTime2 = [self dateWithoutTime];
  v6 = [currentCalendar components:0x2000 fromDate:dateWithoutTime toDate:dateWithoutTime2 options:0];

  weekOfYear = [v6 weekOfYear];
  return weekOfYear;
}

- (uint64_t)numberOfMonthsFromNow
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  date = [MEMORY[0x1E695DF00] date];
  dateWithoutTime = [date dateWithoutTime];
  dateWithoutTime2 = [self dateWithoutTime];
  v6 = [currentCalendar components:8 fromDate:dateWithoutTime toDate:dateWithoutTime2 options:0];

  month = [v6 month];
  return month;
}

- (uint64_t)numberOfYearsFromNow
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  date = [MEMORY[0x1E695DF00] date];
  dateWithoutTime = [date dateWithoutTime];
  dateWithoutTime2 = [self dateWithoutTime];
  v6 = [currentCalendar components:4 fromDate:dateWithoutTime toDate:dateWithoutTime2 options:0];

  year = [v6 year];
  return year;
}

@end