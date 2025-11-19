@interface NSDate(Additions)
+ (id)hf_dateByAddingComponents:()Additions toDate:times:;
+ (id)hf_dateByAddingDays:()Additions toDate:;
+ (id)hf_dateByAddingHours:()Additions toDate:;
+ (id)hf_dateByAddingMinutes:()Additions toDate:;
+ (id)hf_dateByAddingMonths:()Additions toDate:;
+ (id)hf_dateByAddingNanoseconds:()Additions toDate:;
+ (id)hf_dateByAddingSeconds:()Additions toDate:;
+ (id)hf_dateByAddingWeeks:()Additions toDate:;
+ (id)hf_dateByAddingYears:()Additions months:weeks:days:hours:minutes:seconds:nanoseconds:toDate:;
+ (id)hf_dateByAddingYears:()Additions toDate:;
+ (id)hf_dateBySubtractingComponents:()Additions fromDate:times:;
+ (id)hf_sharedCalendar;
+ (id)hf_sharedTimeZone;
+ (uint64_t)hf_daysBetweenDates:()Additions endDate:;
+ (uint64_t)hf_minutesBetweenDates:()Additions endDate:;
- (BOOL)_uses24HourTimeForLocale;
- (BOOL)hf_isFirstHourOfDay;
- (BOOL)hf_isMidnight;
- (__CFString)hf_hksvDescription;
- (id)hf_endOfDay;
- (id)hf_endOfWeek;
- (id)hf_startOfDay;
- (id)hf_startOfHour;
- (id)hf_startOfMinute;
- (id)hf_startOfNextDay;
- (id)hf_startOfSecond;
- (id)hf_startOfWeek;
- (uint64_t)hf_isBetweenStartDate:()Additions endDate:;
- (uint64_t)hf_isSingularHour;
@end

@implementation NSDate(Additions)

+ (id)hf_sharedCalendar
{
  if (_MergedGlobals_281 != -1)
  {
    dispatch_once(&_MergedGlobals_281, &__block_literal_global_148);
  }

  v1 = qword_280E03498;

  return v1;
}

+ (id)hf_sharedTimeZone
{
  if (qword_280E034A0 != -1)
  {
    dispatch_once(&qword_280E034A0, &__block_literal_global_2_0);
  }

  v1 = qword_280E034A8;

  return v1;
}

+ (id)hf_dateByAddingComponents:()Additions toDate:times:
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = v8;
  if (a5 >= 1)
  {
    v11 = v8;
    do
    {
      v12 = [objc_opt_class() hf_sharedCalendar];
      v10 = [v12 dateByAddingComponents:v7 toDate:v11 options:0];

      v11 = v10;
      --a5;
    }

    while (a5);
  }

  return v10;
}

+ (id)hf_dateBySubtractingComponents:()Additions fromDate:times:
{
  v7 = a3;
  v8 = MEMORY[0x277CBEAB8];
  v9 = a4;
  v10 = objc_alloc_init(v8);
  if ([v7 year] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v10 setYear:{-objc_msgSend(v7, "year")}];
  }

  if ([v7 month] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v10 setMonth:{-objc_msgSend(v7, "month")}];
  }

  if ([v7 hour] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v10 setHour:{-objc_msgSend(v7, "hour")}];
  }

  if ([v7 weekOfYear] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v10 setWeekOfYear:{-objc_msgSend(v7, "weekOfYear")}];
  }

  if ([v7 weekOfMonth] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v10 setWeekOfMonth:{-objc_msgSend(v7, "weekOfMonth")}];
  }

  if ([v7 minute] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v10 setMinute:{-objc_msgSend(v7, "minute")}];
  }

  if ([v7 second] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v10 setSecond:{-objc_msgSend(v7, "second")}];
  }

  v11 = [objc_opt_class() hf_dateByAddingComponents:v10 toDate:v9 times:a5];

  return v11;
}

+ (id)hf_dateByAddingYears:()Additions toDate:
{
  v5 = a4;
  v6 = [objc_opt_class() hf_dateByAddingYears:a3 months:0 weeks:0 days:0 hours:0 minutes:0 seconds:0 nanoseconds:0 toDate:v5];

  return v6;
}

+ (id)hf_dateByAddingMonths:()Additions toDate:
{
  v5 = a4;
  v6 = [objc_opt_class() hf_dateByAddingYears:0 months:a3 weeks:0 days:0 hours:0 minutes:0 seconds:0 nanoseconds:0 toDate:v5];

  return v6;
}

+ (id)hf_dateByAddingWeeks:()Additions toDate:
{
  v5 = a4;
  v6 = [objc_opt_class() hf_dateByAddingYears:0 months:0 weeks:a3 days:0 hours:0 minutes:0 seconds:0 nanoseconds:0 toDate:v5];

  return v6;
}

+ (id)hf_dateByAddingDays:()Additions toDate:
{
  v5 = a4;
  v6 = [objc_opt_class() hf_dateByAddingYears:0 months:0 weeks:0 days:a3 hours:0 minutes:0 seconds:0 nanoseconds:0 toDate:v5];

  return v6;
}

+ (id)hf_dateByAddingHours:()Additions toDate:
{
  v5 = a4;
  v6 = [objc_opt_class() hf_dateByAddingYears:0 months:0 weeks:0 days:0 hours:a3 minutes:0 seconds:0 nanoseconds:0 toDate:v5];

  return v6;
}

+ (id)hf_dateByAddingMinutes:()Additions toDate:
{
  v5 = a4;
  v6 = [objc_opt_class() hf_dateByAddingYears:0 months:0 weeks:0 days:0 hours:0 minutes:a3 seconds:0 nanoseconds:0 toDate:v5];

  return v6;
}

+ (id)hf_dateByAddingSeconds:()Additions toDate:
{
  v5 = a4;
  v6 = [objc_opt_class() hf_dateByAddingYears:0 months:0 weeks:0 days:0 hours:0 minutes:0 seconds:a3 nanoseconds:0 toDate:v5];

  return v6;
}

+ (id)hf_dateByAddingNanoseconds:()Additions toDate:
{
  v5 = a4;
  v6 = [objc_opt_class() hf_dateByAddingYears:0 months:0 weeks:0 days:0 hours:0 minutes:0 seconds:0 nanoseconds:a3 toDate:v5];

  return v6;
}

- (id)hf_startOfDay
{
  v2 = [objc_opt_class() hf_sharedCalendar];
  v3 = [objc_opt_class() hf_sharedTimeZone];
  v4 = [v2 componentsInTimeZone:v3 fromDate:a1];

  [v4 setHour:0];
  [v4 setMinute:0];
  [v4 setSecond:0];
  [v4 setNanosecond:0];
  v5 = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [v5 dateFromComponents:v4];

  return v6;
}

- (id)hf_startOfNextDay
{
  v2 = [objc_opt_class() hf_sharedCalendar];
  v3 = [v2 nextDateAfterDate:a1 matchingHour:0 minute:0 second:0 options:2];

  return v3;
}

- (id)hf_startOfHour
{
  v2 = [objc_opt_class() hf_sharedCalendar];
  v3 = [objc_opt_class() hf_sharedTimeZone];
  v4 = [v2 componentsInTimeZone:v3 fromDate:a1];

  [v4 setMinute:0];
  [v4 setSecond:0];
  [v4 setNanosecond:0];
  v5 = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [v5 dateFromComponents:v4];

  return v6;
}

- (id)hf_startOfMinute
{
  v2 = [objc_opt_class() hf_sharedCalendar];
  v3 = [objc_opt_class() hf_sharedTimeZone];
  v4 = [v2 componentsInTimeZone:v3 fromDate:a1];

  [v4 setSecond:0];
  [v4 setNanosecond:0];
  v5 = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [v5 dateFromComponents:v4];

  return v6;
}

- (id)hf_startOfSecond
{
  v2 = [objc_opt_class() hf_sharedCalendar];
  v3 = [objc_opt_class() hf_sharedTimeZone];
  v4 = [v2 componentsInTimeZone:v3 fromDate:a1];

  [v4 setNanosecond:0];
  v5 = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [v5 dateFromComponents:v4];

  return v6;
}

- (id)hf_startOfWeek
{
  v1 = a1;
  v2 = [objc_opt_class() hf_sharedCalendar];
  v3 = [v2 component:512 fromDate:v1];
  v4 = [v2 firstWeekday];
  if (v3 - v4 >= 1)
  {
    v5 = [v2 dateByAddingUnit:16 value:v4 - v3 toDate:v1 options:0];

    v1 = v5;
  }

  v6 = [v2 startOfDayForDate:v1];

  return v6;
}

- (id)hf_endOfDay
{
  v2 = [objc_opt_class() hf_sharedCalendar];
  v3 = [objc_opt_class() hf_sharedTimeZone];
  v4 = [v2 componentsInTimeZone:v3 fromDate:a1];

  [v4 setHour:23];
  [v4 setMinute:59];
  [v4 setSecond:59];
  [v4 setNanosecond:0];
  v5 = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [v5 dateFromComponents:v4];

  return v6;
}

- (id)hf_endOfWeek
{
  v1 = a1;
  v2 = [objc_opt_class() hf_sharedCalendar];
  v3 = [v2 component:512 fromDate:v1];
  if (v3 <= 6)
  {
    v4 = [v2 dateByAddingUnit:16 value:7 - v3 toDate:v1 options:0];

    v1 = v4;
  }

  v5 = [v2 startOfDayForDate:v1];

  return v5;
}

- (BOOL)hf_isFirstHourOfDay
{
  v2 = [objc_opt_class() hf_sharedCalendar];
  v3 = [v2 components:32 fromDate:a1];

  v4 = [v3 hour] == 0;
  return v4;
}

- (BOOL)hf_isMidnight
{
  v2 = [objc_opt_class() hf_sharedCalendar];
  v3 = [v2 components:224 fromDate:a1];

  v4 = ![v3 hour] && !objc_msgSend(v3, "minute") && objc_msgSend(v3, "second") == 0;
  return v4;
}

- (uint64_t)hf_isSingularHour
{
  v2 = [objc_opt_class() hf_sharedCalendar];
  v3 = [v2 components:32 fromDate:a1];

  if ([v3 hour] == 1)
  {
    v4 = 1;
  }

  else if ([v3 hour] == 13)
  {
    v4 = [a1 _uses24HourTimeForLocale] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)hf_isBetweenStartDate:()Additions endDate:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 earlierDate:v7];
  v9 = [v8 isEqualToDate:v7];

  if (v9)
  {
    v10 = [a1 laterDate:v6];
    v11 = [v10 isEqualToDate:v6];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (uint64_t)hf_minutesBetweenDates:()Additions endDate:
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() hf_sharedCalendar];
  v8 = [v7 startOfDayForDate:v6];

  v9 = [v7 startOfDayForDate:v5];

  v10 = [v7 ordinalityOfUnit:64 inUnit:2 forDate:v8];
  v11 = [v7 ordinalityOfUnit:64 inUnit:2 forDate:v9] - v10;

  return v11;
}

+ (uint64_t)hf_daysBetweenDates:()Additions endDate:
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() hf_sharedCalendar];
  v8 = [v7 startOfDayForDate:v6];

  v9 = [v7 startOfDayForDate:v5];

  v10 = [v7 ordinalityOfUnit:16 inUnit:2 forDate:v8];
  v11 = [v7 ordinalityOfUnit:16 inUnit:2 forDate:v9] - v10;

  return v11;
}

+ (id)hf_dateByAddingYears:()Additions months:weeks:days:hours:minutes:seconds:nanoseconds:toDate:
{
  v17 = MEMORY[0x277CBEAB8];
  v18 = a11;
  v19 = objc_alloc_init(v17);
  [v19 setYear:a3];
  [v19 setMonth:a4];
  [v19 setWeekOfMonth:a5];
  [v19 setDay:a6];
  [v19 setHour:a7];
  [v19 setMinute:a8];
  [v19 setSecond:a9];
  [v19 setNanosecond:a10];
  v20 = [objc_opt_class() hf_sharedCalendar];
  v21 = [v20 dateByAddingComponents:v19 toDate:v18 options:0];

  return v21;
}

- (BOOL)_uses24HourTimeForLocale
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v0 setLocalizedDateFormatFromTemplate:@"j"];
  v1 = [MEMORY[0x277CBEAF8] currentLocale];
  [v0 setLocale:v1];

  v2 = [v0 dateFormat];
  v3 = [v2 rangeOfString:@"H"] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v2, "rangeOfString:", @"k") != 0x7FFFFFFFFFFFFFFFLL;

  return v3;
}

- (__CFString)hf_hksvDescription
{
  v2 = [MEMORY[0x277CBEAA8] distantPast];
  v3 = [a1 isEqualToDate:v2];

  if (v3)
  {
    v4 = @"Distant Past";
  }

  else
  {
    v5 = [MEMORY[0x277CBEAA8] distantFuture];
    v6 = [a1 isEqualToDate:v5];

    if (v6)
    {
      v4 = @"Distant Future";
    }

    else
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = [HFCameraUtilities dayStringFromDate:a1];
      v9 = [HFCameraUtilities fullTimeStringFromDate:a1];
      v4 = [v7 stringWithFormat:@"%@ %@", v8, v9];
    }
  }

  return v4;
}

@end