@interface NSDate(CalClassAdditions)
+ (id)CalDateForBeginningOfToday;
+ (id)CalDateForBeginningOfTomorrow;
+ (id)CalDateForEndOfToday;
+ (id)CalDateForEndOfTomorrow;
+ (id)CalDateRangeStringWithStart:()CalClassAdditions end:;
+ (id)CalSimulatedDateForNow;
+ (id)_nowComponents;
+ (id)_todayComponents;
+ (id)_tomorrowComponents;
+ (id)calGMT;
+ (id)dateFromISO8601String:()CalClassAdditions;
+ (id)dateFromISO8601String:()CalClassAdditions inTimeZone:;
+ (id)dateWithDatePartFromDate:()CalClassAdditions timePartFromDate:inCalendar:;
+ (id)nextRoundedChunkForDuration:()CalClassAdditions;
+ (id)nextRoundedHour;
- (BOOL)CalIsBetweenStartDate:()CalClassAdditions endDate:;
- (id)CalDateByComponentwiseAddingComponents:()CalClassAdditions inCalendar:;
- (id)CalDateByComponentwiseAddingHours:()CalClassAdditions inCalendar:;
- (id)CalDateByComponentwiseAddingMinutes:()CalClassAdditions inCalendar:;
- (id)CalDateByComponentwiseAddingSeconds:()CalClassAdditions inCalendar:;
- (id)CalDateRoundedDownToNearestMinuteIncrement:()CalClassAdditions inCalendar:;
- (id)_stringWithUseAbbreviatedFormats:()CalClassAdditions lowerCase:;
- (id)allComponentsInCalendar:()CalClassAdditions;
- (id)components:()CalClassAdditions forDayInTimeZone:;
- (id)dateByAddingCalSimulatedOffset;
- (id)dateByAddingDays:()CalClassAdditions inCalendar:;
- (id)dateByAddingHours:()CalClassAdditions inCalendar:;
- (id)dateByAddingMinutes:()CalClassAdditions inCalendar:;
- (id)dateByAddingMonths:()CalClassAdditions inCalendar:;
- (id)dateByAddingWeeks:()CalClassAdditions inCalendar:;
- (id)dateByAddingYears:()CalClassAdditions inCalendar:;
- (id)dateBySubtractingCalSimulatedOffset;
- (id)dateForDayInTimeZone:()CalClassAdditions;
- (id)dateInTimeZone:()CalClassAdditions fromTimeZone:;
- (id)dateOnlyByTranslatingFrom:()CalClassAdditions toCalendar:;
- (id)dateOnlyComponentsInCalendar:()CalClassAdditions;
- (id)dateRemovingComponents:()CalClassAdditions inCalendar:;
- (id)dateRemovingTimeComponentsInCalendar:()CalClassAdditions;
- (id)dateRoundedToHourOnSameDayInCalendar:()CalClassAdditions;
- (id)dateRoundedToNearestFifteenMinutesInCalendar:()CalClassAdditions;
- (id)dateRoundedToStartOfNextDayInCalendar:()CalClassAdditions;
- (id)ek_ios_dateForEndOfDayInTimeZone:()CalClassAdditions;
- (id)localizedAbbrevDate;
- (id)localizedAbbrevMonthWithDay;
- (id)localizedAbbrevMonthWithDayRangeToDate:()CalClassAdditions;
- (id)localizedAbbrevStandaloneMonth;
- (id)localizedAbbrevWeekdayWithDayOfMonthPreferWeekdayFirstForEnglish;
- (id)localizedDateStringWithTemplate:()CalClassAdditions;
- (id)localizedHour;
- (id)localizedHourMinutesWithoutAMPM;
- (id)localizedMonthWithDayWithPreferredShortening;
- (id)localizedShortTime;
- (id)localizedStringForEventTime;
- (id)localizedStringForEventTimeInTimeZone:()CalClassAdditions;
- (id)localizedWeekNumber;
- (id)roundSecondsAndMinutesDownInCalendar:()CalClassAdditions;
- (id)roundSecondsAndMinutesUpInCalendar:()CalClassAdditions;
- (id)roundSecondsDownInCalendar:()CalClassAdditions;
- (id)roundToCurrentMondayInCalendar:()CalClassAdditions;
- (id)roundToCurrentMonthInCalendar:()CalClassAdditions;
- (id)roundToCurrentWeekInCalendar:()CalClassAdditions withFirstWeekdayIndex:;
- (id)roundToCurrentYearInCalendar:()CalClassAdditions;
- (id)roundUpOneSecondIfAt59InCalendar:()CalClassAdditions;
- (id)subtractOneSecondIfAt0InCalendar:()CalClassAdditions;
- (id)timeOnlyComponentsInCalendar:()CalClassAdditions;
- (id)timeStringAlwaysIncludeMinutes:()CalClassAdditions;
- (id)toISO8601String;
- (uint64_t)compareDateIgnoringTimeComponents:()CalClassAdditions inCalendar:;
- (uint64_t)dayInCalendar:()CalClassAdditions;
- (uint64_t)hourInCalendar:()CalClassAdditions;
- (uint64_t)isEqualToDateIgnoringTimeComponents:()CalClassAdditions inCalendar:;
- (uint64_t)isSameMonthAsDate:()CalClassAdditions inCalendar:;
- (uint64_t)isSameWeekAsDate:()CalClassAdditions inCalendar:;
- (uint64_t)isSameYearAsDate:()CalClassAdditions inCalendar:;
- (uint64_t)isTodayInCalendar:()CalClassAdditions;
- (uint64_t)localizedMonthAndDayStringShortened:()CalClassAdditions;
- (uint64_t)localizedMonthAndYearStringShortened:()CalClassAdditions;
- (uint64_t)localizedMonthShortened:()CalClassAdditions;
- (uint64_t)localizedWeekdayMonthDayStringShortened:()CalClassAdditions;
- (uint64_t)localizedWeekdayMonthDayYearStringShortened:()CalClassAdditions;
- (uint64_t)localizedWeekdayMonthYearStringShortened:()CalClassAdditions;
- (uint64_t)localizedYearMonthAndDayStringShortened:()CalClassAdditions;
- (uint64_t)midnightOffsetMinutes:()CalClassAdditions;
- (uint64_t)minuteInCalendar:()CalClassAdditions;
- (uint64_t)monthInCalendar:()CalClassAdditions;
- (uint64_t)rangeOfDayInLocalizedDateString:()CalClassAdditions;
- (uint64_t)secondInCalendar:()CalClassAdditions;
- (uint64_t)weekInCalendar:()CalClassAdditions;
- (uint64_t)weekdayInCalendar:()CalClassAdditions;
- (uint64_t)yearInCalendar:()CalClassAdditions;
- (void)printComparisonToDate:()CalClassAdditions;
@end

@implementation NSDate(CalClassAdditions)

+ (id)CalDateForBeginningOfToday
{
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [a1 _todayComponents];
  v4 = [v2 dateFromComponents:v3];

  return v4;
}

+ (id)_todayComponents
{
  v1 = [a1 _nowComponents];
  [v1 setHour:0];
  [v1 setMinute:0];
  [v1 setSecond:0];

  return v1;
}

+ (id)_nowComponents
{
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [a1 CalDateForNow];
  v4 = [v2 components:33022 fromDate:v3];

  return v4;
}

+ (id)calGMT
{
  if (calGMT_onceToken != -1)
  {
    +[NSDate(CalClassAdditions) calGMT];
  }

  v1 = calGMT_gmt;

  return v1;
}

- (id)dateInTimeZone:()CalClassAdditions fromTimeZone:
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = [MEMORY[0x1E695DF00] calGMT];
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v7 = [MEMORY[0x1E695DF00] calGMT];
LABEL_3:
  v9 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  [v9 setTimeZone:v7];
  v10 = [v9 components:33022 fromDate:a1];
  [v9 setTimeZone:v6];
  [v10 setCalendar:v9];
  v11 = [v10 date];

  objc_autoreleasePoolPop(v8);

  return v11;
}

- (id)components:()CalClassAdditions forDayInTimeZone:
{
  v6 = a4;
  if (!v6)
  {
    v6 = [MEMORY[0x1E695DF00] calGMT];
  }

  v7 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  [v7 setTimeZone:v6];
  v8 = [v7 components:a3 fromDate:a1];
  [v8 setCalendar:v7];

  return v8;
}

- (id)dateForDayInTimeZone:()CalClassAdditions
{
  v3 = [a1 components:30 forDayInTimeZone:a3];
  v4 = [v3 date];

  return v4;
}

- (id)ek_ios_dateForEndOfDayInTimeZone:()CalClassAdditions
{
  v3 = [a1 components:30 forDayInTimeZone:a3];
  [v3 setHour:23];
  [v3 setMinute:59];
  [v3 setSecond:59];
  v4 = [v3 date];

  return v4;
}

- (BOOL)CalIsBetweenStartDate:()CalClassAdditions endDate:
{
  v6 = a3;
  v7 = a4;
  if ([v6 compare:a1] == -1 || !objc_msgSend(a1, "compare:", v6))
  {
    v8 = [a1 compare:v7] == -1 || objc_msgSend(a1, "compare:", v7) == 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)CalSimulatedDateForNow
{
  v0 = +[CalFoundationPreferences shared];
  v1 = [v0 stopTimeDemoModeActive];

  if (v1)
  {
    v2 = [MEMORY[0x1E695DEE8] currentCalendar];
    v3 = +[CalFoundationPreferences shared];
    v4 = [v3 stopTimeDemoModeComponents];
    v5 = [v2 dateFromComponents:v4];
  }

  else
  {
    v2 = objc_opt_new();
    v5 = [v2 dateByAddingCalSimulatedOffset];
  }

  return v5;
}

- (id)dateByAddingCalSimulatedOffset
{
  v2 = +[CalFoundationPreferences shared];
  [v2 simulatedDateForNowOffset];
  v3 = [a1 dateByAddingTimeInterval:?];

  return v3;
}

- (id)dateBySubtractingCalSimulatedOffset
{
  v2 = +[CalFoundationPreferences shared];
  [v2 simulatedDateForNowOffset];
  v4 = [a1 dateByAddingTimeInterval:-v3];

  return v4;
}

+ (id)CalDateForEndOfToday
{
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [a1 _todayComponents];
  [v3 setHour:23];
  [v3 setMinute:59];
  [v3 setSecond:59];
  v4 = [v2 dateFromComponents:v3];

  return v4;
}

+ (id)_tomorrowComponents
{
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v3 setDay:1];
  v4 = [a1 CalDateForBeginningOfToday];
  v5 = [v2 dateByAddingComponents:v3 toDate:v4 options:0];

  v6 = [v2 components:30 fromDate:v5];

  return v6;
}

+ (id)CalDateForBeginningOfTomorrow
{
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [a1 _tomorrowComponents];
  v4 = [v2 dateFromComponents:v3];

  return v4;
}

+ (id)CalDateForEndOfTomorrow
{
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [a1 _tomorrowComponents];
  [v3 setHour:23];
  [v3 setMinute:59];
  [v3 setSecond:59];
  v4 = [v2 dateFromComponents:v3];

  return v4;
}

+ (id)dateFromISO8601String:()CalClassAdditions
{
  v3 = MEMORY[0x1E695DFE8];
  v4 = a3;
  v5 = [v3 timeZoneForSecondsFromGMT:0];
  v6 = [MEMORY[0x1E695DF00] dateFromISO8601String:v4 inTimeZone:v5];

  return v6;
}

+ (id)dateFromISO8601String:()CalClassAdditions inTimeZone:
{
  v5 = MEMORY[0x1E696AB78];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  [v8 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss'Z'"];
  v9 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v8 setLocale:v9];

  [v8 setTimeZone:v6];
  v10 = [v8 dateFromString:v7];

  return v10;
}

- (id)toISO8601String
{
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v2 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"];
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];

  v4 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v2 setTimeZone:v4];

  v5 = [v2 stringFromDate:a1];

  return v5;
}

- (id)allComponentsInCalendar:()CalClassAdditions
{
  if (a3)
  {
    v4 = [a3 components:-1 fromDate:a1];
  }

  else
  {
    v5 = [MEMORY[0x1E695DEE8] currentCalendar];
    v4 = [v5 components:-1 fromDate:a1];
  }

  return v4;
}

- (id)dateOnlyComponentsInCalendar:()CalClassAdditions
{
  if (a3)
  {
    v4 = [a3 components:542 fromDate:a1];
  }

  else
  {
    v5 = [MEMORY[0x1E695DEE8] currentCalendar];
    v4 = [v5 components:542 fromDate:a1];
  }

  return v4;
}

- (id)timeOnlyComponentsInCalendar:()CalClassAdditions
{
  if (a3)
  {
    v4 = [a3 components:32992 fromDate:a1];
  }

  else
  {
    v5 = [MEMORY[0x1E695DEE8] currentCalendar];
    v4 = [v5 components:32992 fromDate:a1];
  }

  return v4;
}

- (id)dateOnlyByTranslatingFrom:()CalClassAdditions toCalendar:
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 calendarIdentifier];
  v9 = [v7 calendarIdentifier];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    v11 = [a1 dateOnlyComponentsInCalendar:v6];
    v12 = [v7 dateFromComponents:v11];
  }

  else
  {
    v12 = [a1 dateRemovingTimeComponentsInCalendar:v7];
  }

  return v12;
}

- (uint64_t)yearInCalendar:()CalClassAdditions
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  }

  v6 = [v5 components:4 fromDate:a1];
  v7 = [v6 year];

  if (!v4)
  {
  }

  return v7;
}

- (uint64_t)monthInCalendar:()CalClassAdditions
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  }

  v6 = [v5 components:8 fromDate:a1];
  v7 = [v6 month];

  if (!v4)
  {
  }

  return v7;
}

- (uint64_t)weekInCalendar:()CalClassAdditions
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  }

  v6 = [v5 components:0x2000 fromDate:a1];
  v7 = [v6 weekOfYear];

  if (!v4)
  {
  }

  return v7;
}

- (uint64_t)dayInCalendar:()CalClassAdditions
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  }

  v6 = [v5 components:16 fromDate:a1];
  v7 = [v6 day];

  if (!v4)
  {
  }

  return v7;
}

- (uint64_t)weekdayInCalendar:()CalClassAdditions
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  }

  v6 = [v5 components:512 fromDate:a1];
  v7 = [v6 weekday];

  if (!v4)
  {
  }

  return v7;
}

- (uint64_t)hourInCalendar:()CalClassAdditions
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  }

  v6 = [v5 components:32 fromDate:a1];
  v7 = [v6 hour];

  if (!v4)
  {
  }

  return v7;
}

- (uint64_t)minuteInCalendar:()CalClassAdditions
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  }

  v6 = [v5 components:64 fromDate:a1];
  v7 = [v6 minute];

  if (!v4)
  {
  }

  return v7;
}

- (uint64_t)secondInCalendar:()CalClassAdditions
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  }

  v6 = [v5 components:128 fromDate:a1];
  v7 = [v6 second];

  if (!v4)
  {
  }

  return v7;
}

- (id)dateRemovingTimeComponentsInCalendar:()CalClassAdditions
{
  v4 = a3;
  if (!v4)
  {
    v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  }

  v5 = [a1 dateOnlyComponentsInCalendar:v4];
  v6 = [v4 dateFromComponents:v5];

  return v6;
}

- (id)dateByAddingMinutes:()CalClassAdditions inCalendar:
{
  v6 = a4;
  v7 = v6;
  if (!a3)
  {
    v8 = a1;
    goto LABEL_5;
  }

  if (v6)
  {
    v8 = [v6 dateByAddingUnit:64 value:a3 toDate:a1 options:0];
LABEL_5:
    v9 = v8;
    goto LABEL_7;
  }

  v10 = [MEMORY[0x1E695DEE8] currentCalendar];
  v9 = [v10 dateByAddingUnit:64 value:a3 toDate:a1 options:0];

LABEL_7:

  return v9;
}

- (id)dateByAddingHours:()CalClassAdditions inCalendar:
{
  v6 = a4;
  v7 = v6;
  if (!a3)
  {
    v8 = a1;
    goto LABEL_5;
  }

  if (v6)
  {
    v8 = [v6 dateByAddingUnit:32 value:a3 toDate:a1 options:0];
LABEL_5:
    v9 = v8;
    goto LABEL_7;
  }

  v10 = [MEMORY[0x1E695DEE8] currentCalendar];
  v9 = [v10 dateByAddingUnit:32 value:a3 toDate:a1 options:0];

LABEL_7:

  return v9;
}

- (id)dateByAddingDays:()CalClassAdditions inCalendar:
{
  v6 = a4;
  v7 = v6;
  if (!a3)
  {
    v8 = a1;
    goto LABEL_5;
  }

  if (v6)
  {
    v8 = [v6 dateByAddingUnit:16 value:a3 toDate:a1 options:0];
LABEL_5:
    v9 = v8;
    goto LABEL_7;
  }

  v10 = [MEMORY[0x1E695DEE8] currentCalendar];
  v9 = [v10 dateByAddingUnit:16 value:a3 toDate:a1 options:0];

LABEL_7:

  return v9;
}

- (id)dateByAddingWeeks:()CalClassAdditions inCalendar:
{
  v6 = a4;
  v7 = v6;
  if (!a3)
  {
    v8 = a1;
    goto LABEL_5;
  }

  if (v6)
  {
    v8 = [v6 dateByAddingUnit:0x2000 value:a3 toDate:a1 options:0];
LABEL_5:
    v9 = v8;
    goto LABEL_7;
  }

  v10 = [MEMORY[0x1E695DEE8] currentCalendar];
  v9 = [v10 dateByAddingUnit:0x2000 value:a3 toDate:a1 options:0];

LABEL_7:

  return v9;
}

- (id)dateByAddingMonths:()CalClassAdditions inCalendar:
{
  v6 = a4;
  v7 = v6;
  if (!a3)
  {
    v8 = a1;
    goto LABEL_5;
  }

  if (v6)
  {
    v8 = [v6 dateByAddingUnit:8 value:a3 toDate:a1 options:0];
LABEL_5:
    v9 = v8;
    goto LABEL_7;
  }

  v10 = [MEMORY[0x1E695DEE8] currentCalendar];
  v9 = [v10 dateByAddingUnit:8 value:a3 toDate:a1 options:0];

LABEL_7:

  return v9;
}

- (id)dateByAddingYears:()CalClassAdditions inCalendar:
{
  v6 = a4;
  v7 = v6;
  if (!a3)
  {
    v8 = a1;
    goto LABEL_5;
  }

  if (v6)
  {
    v8 = [v6 dateByAddingUnit:4 value:a3 toDate:a1 options:0];
LABEL_5:
    v9 = v8;
    goto LABEL_7;
  }

  v10 = [MEMORY[0x1E695DEE8] currentCalendar];
  v9 = [v10 dateByAddingUnit:4 value:a3 toDate:a1 options:0];

LABEL_7:

  return v9;
}

- (id)CalDateByComponentwiseAddingSeconds:()CalClassAdditions inCalendar:
{
  v6 = a4;
  v7 = objc_opt_new();
  [v7 setSecond:a3];
  if (v6)
  {
    v8 = [a1 CalDateByComponentwiseAddingComponents:v7 inCalendar:v6];
  }

  else
  {
    v9 = [MEMORY[0x1E695DEE8] CalGregorianGMTCalendar];
    v8 = [a1 CalDateByComponentwiseAddingComponents:v7 inCalendar:v9];
  }

  return v8;
}

- (id)CalDateByComponentwiseAddingMinutes:()CalClassAdditions inCalendar:
{
  v6 = a4;
  v7 = [MEMORY[0x1E695DF10] CalComponentForMinutes:a3];
  if (v6)
  {
    v8 = [a1 CalDateByComponentwiseAddingComponents:v7 inCalendar:v6];
  }

  else
  {
    v9 = [MEMORY[0x1E695DEE8] CalGregorianGMTCalendar];
    v8 = [a1 CalDateByComponentwiseAddingComponents:v7 inCalendar:v9];
  }

  return v8;
}

- (id)CalDateByComponentwiseAddingHours:()CalClassAdditions inCalendar:
{
  v6 = a4;
  v7 = [MEMORY[0x1E695DF10] CalComponentForHours:a3];
  if (v6)
  {
    v8 = [a1 CalDateByComponentwiseAddingComponents:v7 inCalendar:v6];
  }

  else
  {
    v9 = [MEMORY[0x1E695DEE8] CalGregorianGMTCalendar];
    v8 = [a1 CalDateByComponentwiseAddingComponents:v7 inCalendar:v9];
  }

  return v8;
}

- (id)CalDateByComponentwiseAddingComponents:()CalClassAdditions inCalendar:
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 components:33022 fromDate:a1];
  if ([v6 era] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v8 setEra:{objc_msgSend(v8, "era") + objc_msgSend(v6, "era")}];
  }

  if ([v6 year] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v8 setYear:{objc_msgSend(v8, "year") + objc_msgSend(v6, "year")}];
  }

  if ([v6 month] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v8 setMonth:{objc_msgSend(v8, "month") + objc_msgSend(v6, "month")}];
  }

  if ([v6 day] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v8 setDay:{objc_msgSend(v8, "day") + objc_msgSend(v6, "day")}];
  }

  if ([v6 hour] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v8 setHour:{objc_msgSend(v8, "hour") + objc_msgSend(v6, "hour")}];
  }

  if ([v6 minute] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v8 setMinute:{objc_msgSend(v8, "minute") + objc_msgSend(v6, "minute")}];
  }

  if ([v6 second] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v8 setSecond:{objc_msgSend(v8, "second") + objc_msgSend(v6, "second")}];
  }

  if ([v6 nanosecond] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v8 setNanosecond:{objc_msgSend(v8, "nanosecond") + objc_msgSend(v6, "nanosecond")}];
  }

  if (v7)
  {
    v9 = [v7 dateFromComponents:v8];
  }

  else
  {
    v10 = [MEMORY[0x1E695DEE8] currentCalendar];
    v9 = [v10 dateFromComponents:v8];
  }

  v11 = [v7 dateByAddingComponents:v6 toDate:a1 options:0];
  if ([v11 CalIsBeforeDate:a1])
  {
    v12 = [v7 timeZone];
    v13 = [v12 nextDaylightSavingTimeTransitionAfterDate:v11];

    if (![v13 CalIsBeforeOrSameAsDate:a1] || !objc_msgSend(v13, "CalIsAfterDate:", v11))
    {
      goto LABEL_29;
    }

    v14 = [v7 components:33022 fromDate:v9];
    v15 = [v14 hour];
    v16 = v15 - [v8 hour];
    v17 = [v14 minute];
    v18 = v17 - [v8 minute];
    v19 = [v14 second];
    v20 = ((v16 * 3600.0) + v18 * 60.0 + (v19 - [v8 second]));
    if (v20 >= 1)
    {
      v21 = [v9 dateByAddingTimeInterval:-v20];

      v9 = v21;
    }

    goto LABEL_28;
  }

  if (![v9 CalIsBeforeDate:v11])
  {
    goto LABEL_30;
  }

  v13 = [v7 components:33022 fromDate:v11];
  if ([v13 isEqual:v8])
  {
    v14 = v9;
    v9 = v11;
LABEL_28:
  }

LABEL_29:

LABEL_30:

  return v9;
}

- (id)roundSecondsDownInCalendar:()CalClassAdditions
{
  v4 = a3;
  if (!v4)
  {
    v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  }

  v5 = [a1 allComponentsInCalendar:v4];
  [v5 setSecond:0];
  v6 = [v4 dateFromComponents:v5];

  return v6;
}

- (id)roundSecondsAndMinutesDownInCalendar:()CalClassAdditions
{
  v4 = a3;
  if (!v4)
  {
    v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  }

  v5 = [a1 allComponentsInCalendar:v4];
  [v5 setSecond:0];
  [v5 setMinute:0];
  v6 = [v4 dateFromComponents:v5];

  return v6;
}

- (id)roundSecondsAndMinutesUpInCalendar:()CalClassAdditions
{
  v4 = a3;
  if (!v4)
  {
    v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  }

  v5 = [a1 allComponentsInCalendar:v4];
  if ([v5 minute] >= 1)
  {
    [v5 setHour:{objc_msgSend(v5, "hour") + 1}];
  }

  [v5 setSecond:0];
  [v5 setMinute:0];
  v6 = [v4 dateFromComponents:v5];

  return v6;
}

- (id)roundUpOneSecondIfAt59InCalendar:()CalClassAdditions
{
  v4 = a3;
  if (!v4)
  {
    v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  }

  v5 = [a1 timeOnlyComponentsInCalendar:v4];
  if ([v5 hour] == 23 && objc_msgSend(v5, "minute") == 59 && objc_msgSend(v5, "second") == 59)
  {
    v6 = [v4 dateByAddingUnit:128 value:1 toDate:a1 options:0];
  }

  else
  {
    v6 = a1;
  }

  v7 = v6;

  return v7;
}

- (id)subtractOneSecondIfAt0InCalendar:()CalClassAdditions
{
  v4 = a3;
  if (!v4)
  {
    v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  }

  v5 = [a1 timeOnlyComponentsInCalendar:v4];
  if ([v5 hour] || objc_msgSend(v5, "minute") || objc_msgSend(v5, "second"))
  {
    v6 = a1;
  }

  else
  {
    v6 = [v4 dateByAddingUnit:128 value:-1 toDate:a1 options:0];
  }

  v7 = v6;

  return v7;
}

- (id)roundToCurrentWeekInCalendar:()CalClassAdditions withFirstWeekdayIndex:
{
  v6 = a3;
  v7 = [a1 weekdayInCalendar:v6];
  if (a4 <= v7)
  {
    v8 = a4 - v7;
  }

  else
  {
    v8 = a4 - v7 - 7;
  }

  v9 = [a1 dateByAddingDays:v8 inCalendar:v6];

  return v9;
}

- (id)roundToCurrentMondayInCalendar:()CalClassAdditions
{
  v4 = a3;
  v5 = [v4 ordinalityOfUnit:512 inUnit:0x2000 forDate:a1];
  v6 = 2;
  if (v5 < 2)
  {
    v6 = -5;
  }

  v7 = [a1 dateByAddingDays:v6 - v5 inCalendar:v4];

  return v7;
}

- (id)roundToCurrentMonthInCalendar:()CalClassAdditions
{
  v4 = a3;
  v5 = [a1 dateOnlyComponentsInCalendar:v4];
  [v5 setDay:1];
  v6 = [v4 dateFromComponents:v5];

  return v6;
}

- (id)roundToCurrentYearInCalendar:()CalClassAdditions
{
  v4 = a3;
  v5 = [a1 dateOnlyComponentsInCalendar:v4];
  [v5 setDay:1];
  [v5 setMonth:1];
  v6 = [v4 dateFromComponents:v5];

  return v6;
}

+ (id)dateWithDatePartFromDate:()CalClassAdditions timePartFromDate:inCalendar:
{
  v7 = a5;
  if (v7)
  {
    v8 = v7;
    v9 = a4;
    v10 = a3;
  }

  else
  {
    v11 = MEMORY[0x1E695DEE8];
    v12 = a4;
    v13 = a3;
    v8 = [v11 currentCalendar];
  }

  v14 = [a3 dateOnlyComponentsInCalendar:v8];

  v15 = [a4 timeOnlyComponentsInCalendar:v8];

  [v14 setHour:{objc_msgSend(v15, "hour")}];
  [v14 setMinute:{objc_msgSend(v15, "minute")}];
  [v14 setSecond:{objc_msgSend(v15, "second")}];
  v16 = [v8 dateFromComponents:v14];

  return v16;
}

- (uint64_t)compareDateIgnoringTimeComponents:()CalClassAdditions inCalendar:
{
  v6 = a4;
  if (v6)
  {
    v7 = v6;
    v8 = a3;
  }

  else
  {
    v9 = MEMORY[0x1E695DEE8];
    v10 = a3;
    v7 = [v9 currentCalendar];
  }

  v11 = [a1 dateRemovingTimeComponentsInCalendar:v7];
  v12 = [a3 dateRemovingTimeComponentsInCalendar:v7];

  v13 = [v11 compare:v12];
  return v13;
}

- (uint64_t)isSameMonthAsDate:()CalClassAdditions inCalendar:
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (!v7)
    {
      v8 = [MEMORY[0x1E695DEE8] currentCalendar];
    }

    v9 = [v8 components:14 fromDate:a1];
    v10 = [v8 components:14 fromDate:v6];
    v11 = [v9 CalIsSameMonthAsComponents:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (uint64_t)isSameWeekAsDate:()CalClassAdditions inCalendar:
{
  if (!a3)
  {
    return 0;
  }

  v6 = a4;
  v7 = a3;
  v8 = [a1 roundToCurrentWeekInCalendar:v6 withFirstWeekdayIndex:{objc_msgSend(v6, "firstWeekday")}];
  v9 = [v7 roundToCurrentWeekInCalendar:v6 withFirstWeekdayIndex:{objc_msgSend(v6, "firstWeekday")}];

  v10 = [v8 isEqualToDate:v9];
  return v10;
}

- (uint64_t)isSameYearAsDate:()CalClassAdditions inCalendar:
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (!v7)
    {
      v8 = [MEMORY[0x1E695DEE8] currentCalendar];
    }

    v9 = [v8 components:6 fromDate:a1];
    v10 = [v8 components:6 fromDate:v6];
    v11 = [v9 CalIsSameYearAsComponents:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (uint64_t)isEqualToDateIgnoringTimeComponents:()CalClassAdditions inCalendar:
{
  v6 = a4;
  if (v6)
  {
    v7 = v6;
    v8 = a3;
  }

  else
  {
    v9 = MEMORY[0x1E695DEE8];
    v10 = a3;
    v7 = [v9 currentCalendar];
  }

  v11 = [a1 dateOnlyComponentsInCalendar:v7];
  v12 = [a3 dateOnlyComponentsInCalendar:v7];

  v13 = [v11 CalIsSameDayAsComponents:v12];
  return v13;
}

- (uint64_t)isTodayInCalendar:()CalClassAdditions
{
  v4 = a3;
  if (!v4)
  {
    v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  }

  v5 = [MEMORY[0x1E695DF00] date];
  v6 = [v5 dateRemovingTimeComponentsInCalendar:v4];

  v7 = [a1 dateRemovingTimeComponentsInCalendar:v4];
  v8 = [v7 isEqualToDate:v6];

  return v8;
}

- (id)CalDateRoundedDownToNearestMinuteIncrement:()CalClassAdditions inCalendar:
{
  v6 = a4;
  v7 = v6;
  if (a3 <= 0)
  {
    v10 = [a1 copy];
  }

  else
  {
    if (!v6)
    {
      v7 = [MEMORY[0x1E695DEE8] currentCalendar];
    }

    v8 = [a1 allComponentsInCalendar:v7];
    v9 = v8;
    if (a3 != 1)
    {
      [v8 setMinute:{objc_msgSend(v8, "minute") / a3 * a3}];
    }

    [v9 setSecond:0];
    [v9 setNanosecond:0];
    v10 = [v7 dateFromComponents:v9];
  }

  return v10;
}

- (id)dateRoundedToNearestFifteenMinutesInCalendar:()CalClassAdditions
{
  v4 = a3;
  if (!v4)
  {
    v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  }

  v5 = [a1 minuteInCalendar:v4] % 15;
  v6 = 15;
  if (v5 < 8)
  {
    v6 = 0;
  }

  v7 = [a1 dateByAddingMinutes:v6 - v5 inCalendar:v4];

  return v7;
}

- (id)dateRoundedToHourOnSameDayInCalendar:()CalClassAdditions
{
  v4 = a3;
  if (!v4)
  {
    v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  }

  v5 = [a1 hourInCalendar:v4];
  if (v5 != [v4 hoursInDay] - 1 && objc_msgSend(a1, "minuteInCalendar:", v4) > 29)
  {
    ++v5;
  }

  v6 = [a1 allComponentsInCalendar:v4];
  [v6 setHour:v5];
  [v6 setMinute:0x7FFFFFFFFFFFFFFFLL];
  [v6 setSecond:0x7FFFFFFFFFFFFFFFLL];
  v7 = [v4 dateFromComponents:v6];

  return v7;
}

- (id)dateRoundedToStartOfNextDayInCalendar:()CalClassAdditions
{
  v4 = a3;
  v5 = [a1 dateRemovingTimeComponentsInCalendar:v4];
  v6 = [v5 dateByAddingDays:1 inCalendar:v4];

  return v6;
}

+ (id)nextRoundedHour
{
  v0 = [MEMORY[0x1E695DF00] date];
  v1 = [v0 dateByAddingMinutes:30 inCalendar:0];
  v2 = [v1 dateRoundedToHourOnSameDayInCalendar:0];

  return v2;
}

+ (id)nextRoundedChunkForDuration:()CalClassAdditions
{
  v2 = [MEMORY[0x1E695DEE8] sharedAutoupdatingCurrentCalendar];
  v3 = [MEMORY[0x1E695DF00] CalSimulatedDateForNow];
  v4 = [v2 components:124 fromDate:v3];

  if (a1 > 1800.0)
  {
    goto LABEL_2;
  }

  v7 = [v4 minute];
  if (a1 > 900.0)
  {
    if (v7 <= 30)
    {
      goto LABEL_9;
    }

    goto LABEL_2;
  }

  if (v7 > 15)
  {
    if (v7 <= 0x1E)
    {
LABEL_9:
      v8 = v4;
      v9 = 30;
      goto LABEL_10;
    }

    if (v7 <= 0x2D)
    {
      v8 = v4;
      v9 = 45;
      goto LABEL_10;
    }

LABEL_2:
    [v4 setMinute:0];
    v5 = [v2 dateFromComponents:v4];
    v6 = [v5 dateByAddingHours:1 inCalendar:v2];

    goto LABEL_11;
  }

  v8 = v4;
  v9 = 15;
LABEL_10:
  [v8 setMinute:v9];
  v6 = [v2 dateFromComponents:v4];
LABEL_11:

  return v6;
}

- (void)printComparisonToDate:()CalClassAdditions
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v7 = [a1 allComponentsInCalendar:v6];

  v8 = [MEMORY[0x1E695DEE8] currentCalendar];
  v9 = [v5 allComponentsInCalendar:v8];

  v10 = +[CalFoundationLogSubsystem defaultCategory];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [NSDate(CalClassAdditions) printComparisonToDate:];
  }

  v11 = +[CalFoundationLogSubsystem defaultCategory];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [NSDate(CalClassAdditions) printComparisonToDate:];
  }

  v12 = +[CalFoundationLogSubsystem defaultCategory];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [NSDate(CalClassAdditions) printComparisonToDate:];
  }

  v13 = +[CalFoundationLogSubsystem defaultCategory];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [NSDate(CalClassAdditions) printComparisonToDate:];
  }

  v14 = +[CalFoundationLogSubsystem defaultCategory];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [NSDate(CalClassAdditions) printComparisonToDate:];
  }

  v15 = +[CalFoundationLogSubsystem defaultCategory];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [NSDate(CalClassAdditions) printComparisonToDate:];
  }

  v16 = +[CalFoundationLogSubsystem defaultCategory];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [NSDate(CalClassAdditions) printComparisonToDate:];
  }

  v17 = +[CalFoundationLogSubsystem defaultCategory];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [NSDate(CalClassAdditions) printComparisonToDate:];
  }

  v18 = +[CalFoundationLogSubsystem defaultCategory];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [NSDate(CalClassAdditions) printComparisonToDate:];
  }

  v19 = +[CalFoundationLogSubsystem defaultCategory];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [NSDate(CalClassAdditions) printComparisonToDate:];
  }

  v20 = +[CalFoundationLogSubsystem defaultCategory];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [NSDate(CalClassAdditions) printComparisonToDate:];
  }

  v21 = +[CalFoundationLogSubsystem defaultCategory];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [NSDate(CalClassAdditions) printComparisonToDate:];
  }

  v22 = +[CalFoundationLogSubsystem defaultCategory];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    [NSDate(CalClassAdditions) printComparisonToDate:];
  }

  v23 = +[CalFoundationLogSubsystem defaultCategory];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    [NSDate(CalClassAdditions) printComparisonToDate:];
  }

  v24 = +[CalFoundationLogSubsystem defaultCategory];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    [NSDate(CalClassAdditions) printComparisonToDate:];
  }
}

- (uint64_t)localizedMonthShortened:()CalClassAdditions
{
  if (a3)
  {
    v3 = @"MMM";
  }

  else
  {
    v3 = @"MMMM";
  }

  return [a1 localizedDateStringWithTemplate:v3];
}

- (uint64_t)localizedMonthAndYearStringShortened:()CalClassAdditions
{
  if (a3)
  {
    v3 = @"yMMM";
  }

  else
  {
    v3 = @"yMMMM";
  }

  return [a1 localizedDateStringWithTemplate:v3];
}

- (uint64_t)localizedMonthAndDayStringShortened:()CalClassAdditions
{
  if (a3)
  {
    v3 = @"MMMd";
  }

  else
  {
    v3 = @"MMMMd";
  }

  return [a1 localizedDateStringWithTemplate:v3];
}

- (uint64_t)localizedYearMonthAndDayStringShortened:()CalClassAdditions
{
  if (a3)
  {
    v3 = @"yMMMd";
  }

  else
  {
    v3 = @"yMMMMd";
  }

  return [a1 localizedDateStringWithTemplate:v3];
}

- (uint64_t)localizedWeekdayMonthDayYearStringShortened:()CalClassAdditions
{
  if (a3)
  {
    v3 = @"yMMMEd";
  }

  else
  {
    v3 = @"yMMMMEEEEd";
  }

  return [a1 localizedDateStringWithTemplate:v3];
}

- (uint64_t)localizedWeekdayMonthYearStringShortened:()CalClassAdditions
{
  if (a3)
  {
    v3 = @"EMMMy";
  }

  else
  {
    v3 = @"EEEEmMMMy";
  }

  return [a1 localizedDateStringWithTemplate:v3];
}

- (uint64_t)localizedWeekdayMonthDayStringShortened:()CalClassAdditions
{
  if (a3)
  {
    v3 = @"MMMEd";
  }

  else
  {
    v3 = @"MMMMEEEEd";
  }

  return [a1 localizedDateStringWithTemplate:v3];
}

- (id)localizedDateStringWithTemplate:()CalClassAdditions
{
  v4 = MEMORY[0x1E696AB78];
  v5 = a3;
  v6 = [v4 CalSharedDateFormatter];
  v7 = MEMORY[0x1E696AB78];
  v8 = [MEMORY[0x1E695DF58] currentLocale];
  v9 = [v7 dateFormatFromTemplate:v5 options:0 locale:v8];

  [v6 setDateFormat:v9];
  v10 = [v6 stringFromDate:a1];

  return v10;
}

- (id)localizedWeekNumber
{
  v1 = MEMORY[0x1E696ADA0];
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "weekInCalendar:", 0)}];
  v3 = [v1 localizedStringFromNumber:v2 numberStyle:1];

  return v3;
}

- (id)_stringWithUseAbbreviatedFormats:()CalClassAdditions lowerCase:
{
  if (_stringWithUseAbbreviatedFormats_lowerCase__onceToken != -1)
  {
    [NSDate(CalClassAdditions) _stringWithUseAbbreviatedFormats:lowerCase:];
  }

  v7 = [MEMORY[0x1E695DFE8] defaultTimeZone];
  [_stringWithUseAbbreviatedFormats_lowerCase__calendar setTimeZone:v7];

  v8 = [MEMORY[0x1E695DF00] date];
  v9 = [v8 dateRemovingTimeComponentsInCalendar:0];

  v10 = [a1 dateRemovingTimeComponentsInCalendar:0];
  v11 = [_stringWithUseAbbreviatedFormats_lowerCase__calendar components:240 fromDate:v9 toDate:v10 options:0];
  if (![v11 day])
  {
    v12 = +[CalFoundationBundle bundle];
    if (a4)
    {
      v13 = @"today";
    }

    else
    {
      v13 = @"Today";
    }

    goto LABEL_26;
  }

  if ([v11 day] == -1)
  {
    v12 = +[CalFoundationBundle bundle];
    if (a4)
    {
      v13 = @"yesterday";
    }

    else
    {
      v13 = @"Yesterday";
    }

    goto LABEL_26;
  }

  if ([v11 day] == 1)
  {
    v12 = +[CalFoundationBundle bundle];
    if (a4)
    {
      v13 = @"tomorrow";
    }

    else
    {
      v13 = @"Tomorrow";
    }

LABEL_26:
    v27 = [v12 localizedStringForKey:v13 value:&stru_1F379FFA8 table:0];
LABEL_27:

    goto LABEL_28;
  }

  v14 = [v11 day];
  if (v14 >= 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = -v14;
  }

  if (v15 <= 6)
  {
    v16 = [MEMORY[0x1E696AB78] CalSharedDateFormatter];
    v12 = v16;
    if (a3)
    {
      v17 = @"EEE";
    }

    else
    {
      v17 = @"EEEE";
    }

    [v16 setDateFormat:v17];
    v18 = [v12 stringFromDate:a1];
    v19 = [_stringWithUseAbbreviatedFormats_lowerCase__calendar components:0x2000 fromDate:a1];
    v20 = [v19 weekOfYear];

    v21 = [_stringWithUseAbbreviatedFormats_lowerCase__calendar components:0x2000 fromDate:v9];
    v22 = [v21 weekOfYear];

    v23 = [v11 day];
    v24 = +[CalFoundationBundle bundle];
    v25 = v24;
    if ((v23 & 0x8000000000000000) == 0)
    {
      if (v20 <= v22)
      {
        if (a4)
        {
          v26 = @"this %@ (in this week)";
          goto LABEL_37;
        }

        v26 = @"This %@ (in this week)";
      }

      else
      {
        if (a4)
        {
          v26 = @"this %@ (in next week)";
LABEL_37:
          v29 = @"this %@";
LABEL_47:
          v30 = [v24 localizedStringForKey:v26 value:v29 table:0];

          v27 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v30 validFormatSpecifiers:@"%@" error:0, v18];

          goto LABEL_27;
        }

        v26 = @"This %@ (in next week)";
      }

      v29 = @"This %@";
      goto LABEL_47;
    }

    if (v20 >= v22)
    {
      if (a4)
      {
        v26 = @"last %@ (in this week)";
        goto LABEL_40;
      }

      v26 = @"Last %@ (in this week)";
    }

    else
    {
      if (a4)
      {
        v26 = @"last %@ (in previous week)";
LABEL_40:
        v29 = @"last %@";
        goto LABEL_47;
      }

      v26 = @"Last %@ (in previous week)";
    }

    v29 = @"Last %@";
    goto LABEL_47;
  }

  v27 = [a1 localizedWeekdayMonthDayStringShortened:a3];
LABEL_28:

  return v27;
}

- (id)timeStringAlwaysIncludeMinutes:()CalClassAdditions
{
  v5 = [MEMORY[0x1E696AB78] CalSharedDateFormatter];
  [v5 setDateStyle:0];
  [v5 setTimeStyle:1];
  if ((a3 & 1) == 0)
  {
    v6 = [MEMORY[0x1E695DEE8] CalGregorianGMTCalendar];
    v7 = [v6 components:96 fromDate:a1];

    if (![v7 minute])
    {
      v8 = [v5 stringFromDate:a1];
      v9 = [v5 AMSymbol];
      v10 = [v8 rangeOfString:v9];

      v11 = [v5 PMSymbol];
      v12 = [v8 rangeOfString:v11];

      if (v10 != 0x7FFFFFFFFFFFFFFFLL || v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = MEMORY[0x1E696AB78];
        v14 = [MEMORY[0x1E695DF58] currentLocale];
        v15 = [v13 dateFormatFromTemplate:@"h a" options:0 locale:v14];
        [v5 setDateFormat:v15];
      }
    }
  }

  v16 = [v5 stringFromDate:a1];

  return v16;
}

- (uint64_t)midnightOffsetMinutes:()CalClassAdditions
{
  v3 = [a3 components:96 fromDate:a1];
  v4 = [v3 hour];
  v5 = [v3 minute] + 60 * v4;

  return v5;
}

- (id)dateRemovingComponents:()CalClassAdditions inCalendar:
{
  v6 = a4;
  if (!v6)
  {
    v6 = [MEMORY[0x1E695DEE8] currentCalendar];
  }

  v7 = [v6 components:~a3 fromDate:a1];
  v8 = [v6 dateFromComponents:v7];

  return v8;
}

- (id)localizedAbbrevDate
{
  v2 = +[CalChronometry activeTimeZone];
  v3 = [a1 localizedAbbrevDateInTimeZone:v2];

  return v3;
}

- (id)localizedAbbrevMonthWithDay
{
  v2 = +[CalChronometry activeTimeZone];
  v3 = [a1 localizedAbbrevMonthWithDayInTimeZone:v2];

  return v3;
}

- (id)localizedMonthWithDayWithPreferredShortening
{
  v2 = [MEMORY[0x1E695DF58] currentLocale];
  v3 = [v2 CalPrefersFullMonthDisplayNames];

  if (v3)
  {
    [a1 localizedFullMonthWithDay];
  }

  else
  {
    [a1 localizedAbbrevMonthWithDay];
  }
  v4 = ;

  return v4;
}

- (uint64_t)rangeOfDayInLocalizedDateString:()CalClassAdditions
{
  v4 = MEMORY[0x1E695DF58];
  v5 = a3;
  v6 = [v4 currentLocale];
  v7 = [MEMORY[0x1E696AB78] CalSharedDateFormatter];
  v8 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"d" options:0 locale:v6];
  [v7 setDateFormat:v8];

  v9 = [v7 stringFromDate:a1];
  v10 = [v5 rangeOfString:v9];
  v12 = v11;
  [v7 setDateFormat:@"d"];
  v13 = [v7 stringFromDate:a1];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL || v12 == 0)
  {
    v15 = [v5 rangeOfString:v13 options:4];
  }

  else
  {
    v15 = [v5 rangeOfString:v13 options:0 range:v10 locale:{v12, v6}];
  }

  v16 = v15;

  return v16;
}

- (id)localizedAbbrevWeekdayWithDayOfMonthPreferWeekdayFirstForEnglish
{
  v2 = [MEMORY[0x1E695DF58] currentLocale];
  v3 = [v2 objectForKey:*MEMORY[0x1E695D9B0]];
  v4 = [v3 isEqualToString:@"en"];

  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = +[CalChronometry activeCalendar];
  v6 = [a1 weekdayInCalendar:v5];

  v7 = [a1 localizedDayOfMonth];
  v8 = objc_opt_class();
  objc_sync_enter(v8);
  v9 = +[CalDateLocalization sharedDateFormatter];
  v10 = [v9 shortStandaloneWeekdaySymbols];
  v11 = [v10 objectAtIndexedSubscript:v6 - 1];

  v12 = [v11 length];
  if (v12)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v11, v7];
  }

  objc_sync_exit(v8);
  if (!v12)
  {
LABEL_5:
    v10 = [a1 localizedAbbrevWeekdayWithDayOfMonth];
  }

  return v10;
}

- (id)localizedAbbrevMonthWithDayRangeToDate:()CalClassAdditions
{
  v4 = MEMORY[0x1E696AB88];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setDateStyle:0];
  [v6 setTimeStyle:0];
  [v6 setBoundaryStyle:1];
  v7 = [MEMORY[0x1E695DF58] currentLocale];
  if ([v7 CalUnableToAbbreviateMonthNames] & 1) != 0 || (objc_msgSend(v7, "languageCode"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", @"vi"), v8, (v9))
  {
    v10 = @"MMd";
  }

  else if ([v7 CalPrefersFullMonthDisplayNames])
  {
    v10 = @"MMMMd";
  }

  else
  {
    v10 = @"MMMd";
  }

  [v6 setDateTemplate:v10];
  v11 = [v6 stringFromDate:a1 toDate:v5];

  return v11;
}

- (id)localizedAbbrevStandaloneMonth
{
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v2 setDateFormat:@"LLL"];
  [v2 setFormattingContext:2];
  v3 = [v2 stringFromDate:a1];

  return v3;
}

- (id)localizedShortTime
{
  v2 = +[CalChronometry activeTimeZone];
  v3 = [a1 localizedShortTimeInTimeZone:v2];

  return v3;
}

- (id)localizedHour
{
  v2 = +[CalChronometry activeTimeZone];
  v3 = [a1 localizedHourInTimeZone:v2];

  return v3;
}

- (id)localizedHourMinutesWithoutAMPM
{
  v2 = +[CalChronometry activeTimeZone];
  v3 = [a1 localizedHourMinutesWithoutAMPMInTimeZone:v2];

  return v3;
}

- (id)localizedStringForEventTime
{
  v2 = +[CalChronometry activeTimeZone];
  v3 = [a1 localizedStringForEventTimeInTimeZone:v2];

  return v3;
}

- (id)localizedStringForEventTimeInTimeZone:()CalClassAdditions
{
  v4 = a3;
  v5 = +[CalDateLocalization hasAMPM];
  v6 = +[CalDateLocalization uses24HourTime];
  if (v5 && !v6)
  {
    v9 = [MEMORY[0x1E695DEE8] currentCalendar];
    v10 = [MEMORY[0x1E695DF58] currentLocale];
    [v9 setLocale:v10];

    [v9 setTimeZone:v4];
    if ([a1 minuteInCalendar:v9])
    {
      [a1 localizedShortTimeInTimeZone:v4];
    }

    else
    {
      [a1 localizedHourInTimeZone:v4];
    }
    v8 = ;
  }

  else
  {
    v8 = [a1 localizedHourMinutesWithoutAMPMInTimeZone:v4];
  }

  return v8;
}

+ (id)CalDateRangeStringWithStart:()CalClassAdditions end:
{
  v5 = a4;
  v6 = a3;
  v7 = +[CalFoundationBundle bundle];
  v8 = [v7 localizedStringForKey:@"Date range %@ to %@" value:@"%@ to %@" table:0];

  v9 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v8, v6, v5];

  return v9;
}

- (void)printComparisonToDate:()CalClassAdditions .cold.1()
{
  OUTLINED_FUNCTION_4_0();
  v13 = *MEMORY[0x1E69E9840];
  v2 = [v1 calendar];
  v3 = [v2 calendarIdentifier];
  v4 = [v0 calendar];
  v12 = [v4 calendarIdentifier];
  OUTLINED_FUNCTION_3_0(&dword_1B990D000, v5, v6, "Calendar: %@ vs %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)printComparisonToDate:()CalClassAdditions .cold.2()
{
  OUTLINED_FUNCTION_4_0();
  v12 = *MEMORY[0x1E69E9840];
  v2 = [v1 timeZone];
  v3 = [v0 timeZone];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_0(&dword_1B990D000, v4, v5, "TimeZone: %@ vs %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)printComparisonToDate:()CalClassAdditions .cold.3()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  [v2 era];
  [OUTLINED_FUNCTION_6_0() numberWithInteger:?];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_1_0() era];
  v3 = [OUTLINED_FUNCTION_5_0() numberWithInteger:?];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_0(&dword_1B990D000, v4, v5, "Era: %@ vs %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)printComparisonToDate:()CalClassAdditions .cold.4()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  [v2 year];
  [OUTLINED_FUNCTION_6_0() numberWithInteger:?];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_1_0() year];
  v3 = [OUTLINED_FUNCTION_5_0() numberWithInteger:?];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_0(&dword_1B990D000, v4, v5, "Year: %@ vs %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)printComparisonToDate:()CalClassAdditions .cold.5()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  [v2 quarter];
  [OUTLINED_FUNCTION_6_0() numberWithInteger:?];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_1_0() quarter];
  v3 = [OUTLINED_FUNCTION_5_0() numberWithInteger:?];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_0(&dword_1B990D000, v4, v5, "quarter: %@ vs %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)printComparisonToDate:()CalClassAdditions .cold.6()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  [v2 month];
  [OUTLINED_FUNCTION_6_0() numberWithInteger:?];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_1_0() month];
  v3 = [OUTLINED_FUNCTION_5_0() numberWithInteger:?];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_0(&dword_1B990D000, v4, v5, "month: %@ vs %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)printComparisonToDate:()CalClassAdditions .cold.7()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  [v2 day];
  [OUTLINED_FUNCTION_6_0() numberWithInteger:?];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_1_0() day];
  v3 = [OUTLINED_FUNCTION_5_0() numberWithInteger:?];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_0(&dword_1B990D000, v4, v5, "day: %@ vs %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)printComparisonToDate:()CalClassAdditions .cold.8()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  [v2 weekOfMonth];
  [OUTLINED_FUNCTION_6_0() numberWithInteger:?];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_1_0() weekOfMonth];
  v3 = [OUTLINED_FUNCTION_5_0() numberWithInteger:?];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_0(&dword_1B990D000, v4, v5, "weekOfMonth: %@ vs %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)printComparisonToDate:()CalClassAdditions .cold.9()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  [v2 weekOfYear];
  [OUTLINED_FUNCTION_6_0() numberWithInteger:?];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_1_0() weekOfYear];
  v3 = [OUTLINED_FUNCTION_5_0() numberWithInteger:?];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_0(&dword_1B990D000, v4, v5, "weekOfYear: %@ vs %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)printComparisonToDate:()CalClassAdditions .cold.10()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  [v2 weekday];
  [OUTLINED_FUNCTION_6_0() numberWithInteger:?];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_1_0() weekday];
  v3 = [OUTLINED_FUNCTION_5_0() numberWithInteger:?];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_0(&dword_1B990D000, v4, v5, "weekday: %@ vs %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)printComparisonToDate:()CalClassAdditions .cold.11()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  [v2 weekdayOrdinal];
  [OUTLINED_FUNCTION_6_0() numberWithInteger:?];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_1_0() weekdayOrdinal];
  v3 = [OUTLINED_FUNCTION_5_0() numberWithInteger:?];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_0(&dword_1B990D000, v4, v5, "weekdayOrdinal: %@ vs %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)printComparisonToDate:()CalClassAdditions .cold.12()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  [v2 hour];
  [OUTLINED_FUNCTION_6_0() numberWithInteger:?];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_1_0() hour];
  v3 = [OUTLINED_FUNCTION_5_0() numberWithInteger:?];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_0(&dword_1B990D000, v4, v5, "hour: %@ vs %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)printComparisonToDate:()CalClassAdditions .cold.13()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  [v2 minute];
  [OUTLINED_FUNCTION_6_0() numberWithInteger:?];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_1_0() minute];
  v3 = [OUTLINED_FUNCTION_5_0() numberWithInteger:?];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_0(&dword_1B990D000, v4, v5, "minute %@ vs %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)printComparisonToDate:()CalClassAdditions .cold.14()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  [v2 second];
  [OUTLINED_FUNCTION_6_0() numberWithInteger:?];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_1_0() second];
  v3 = [OUTLINED_FUNCTION_5_0() numberWithInteger:?];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_0(&dword_1B990D000, v4, v5, "second: %@ vs %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)printComparisonToDate:()CalClassAdditions .cold.15()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  [v2 nanosecond];
  [OUTLINED_FUNCTION_6_0() numberWithInteger:?];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_1_0() nanosecond];
  v3 = [OUTLINED_FUNCTION_5_0() numberWithInteger:?];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_0(&dword_1B990D000, v4, v5, "nanosecond: %@ vs %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

@end