@interface NSDate(RTExtensions)
+ (BOOL)isDateWithinLast24Hours:()RTExtensions;
+ (id)dateFormatter;
+ (id)dateFormatterForLogging;
+ (id)dateWithHour:()RTExtensions minute:second:;
+ (id)dateWithResolution:()RTExtensions;
+ (id)dateWithResolution:()RTExtensions calendar:;
+ (id)endOfDay;
+ (id)getEarliestDate:()RTExtensions;
+ (id)roundingUpDate:()RTExtensions bucketDurationMinute:;
+ (id)startOfDay;
+ (id)stringFromTimestamp:()RTExtensions;
+ (uint64_t)dateBisectingDate1:()RTExtensions date2:;
- (BOOL)betweenDate:()RTExtensions andDate:;
- (__CFString)getFormattedDateString;
- (id)dateByAddingUnit:()RTExtensions value:;
- (id)dateByRoundingWithTimeQuantization:()RTExtensions;
- (id)dateReducedToResolution:()RTExtensions;
- (id)dateReducedToResolution:()RTExtensions calendar:;
- (id)endOfDay;
- (id)startOfDay;
- (id)startOfDayAfterAddingUnit:()RTExtensions value:;
- (id)stringFromDate;
- (id)weekdayStringFromDate;
- (uint64_t)hour;
- (uint64_t)minute;
- (uint64_t)weekday;
@end

@implementation NSDate(RTExtensions)

+ (id)dateFormatterForLogging
{
  if (qword_1ED7C3880 != -1)
  {
    dispatch_once(&qword_1ED7C3880, &__block_literal_global_17);
  }

  v1 = qword_1ED7C3878;

  return v1;
}

- (id)stringFromDate
{
  v2 = MEMORY[0x1E696AEC0];
  [self timeIntervalSinceReferenceDate];
  v4 = v3;
  dateFormatterForLogging = [MEMORY[0x1E695DF00] dateFormatterForLogging];
  v6 = [dateFormatterForLogging stringFromDate:self];
  v7 = [v2 stringWithFormat:@"%f (%@)", v4, v6];

  return v7;
}

+ (id)dateFormatter
{
  if (qword_1ED7C3870 != -1)
  {
    dispatch_once(&qword_1ED7C3870, &__block_literal_global_6);
  }

  v1 = _MergedGlobals_22;

  return v1;
}

- (id)startOfDay
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [currentCalendar components:28 fromDate:self];

  currentCalendar2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [currentCalendar2 dateFromComponents:v3];

  return v5;
}

- (BOOL)betweenDate:()RTExtensions andDate:
{
  result = 0;
  if (a3 && a4)
  {
    v7 = a4;
    [a3 timeIntervalSinceReferenceDate];
    v9 = v8;
    [self timeIntervalSinceReferenceDate];
    v11 = v10;
    [v7 timeIntervalSinceReferenceDate];
    v13 = v12;

    if (v9 <= v13)
    {
      v14 = v9 <= v11;
      v15 = v11 > v13;
    }

    else
    {
      v14 = v13 <= v11;
      v15 = v11 > v9;
    }

    return !v15 && v14;
  }

  return result;
}

+ (id)startOfDay
{
  date = [self date];
  startOfDay = [date startOfDay];

  return startOfDay;
}

+ (id)endOfDay
{
  date = [self date];
  endOfDay = [date endOfDay];

  return endOfDay;
}

- (id)endOfDay
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [currentCalendar components:28 fromDate:self];

  [v3 setHour:23];
  [v3 setMinute:59];
  [v3 setSecond:59];
  currentCalendar2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [currentCalendar2 dateFromComponents:v3];

  return v5;
}

- (uint64_t)hour
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [currentCalendar component:32 fromDate:self];

  return v3;
}

- (uint64_t)minute
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [currentCalendar component:64 fromDate:self];

  return v3;
}

- (uint64_t)weekday
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  LOBYTE(self) = [currentCalendar component:512 fromDate:self];

  return 1 << (self - 1);
}

- (id)weekdayStringFromDate
{
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v2 setDateFormat:@"EEEE"];
  autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v2 setLocale:autoupdatingCurrentLocale];

  v4 = [v2 stringFromDate:self];

  return v4;
}

- (__CFString)getFormattedDateString
{
  if (self)
  {
    v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v2 setDateFormat:@"yyyy/MM/dd HH:mm:ss.SSS"];
    localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
    [v2 setTimeZone:localTimeZone];

    v4 = [v2 stringFromDate:self];
  }

  else
  {
    v4 = @"-";
  }

  return v4;
}

+ (id)stringFromTimestamp:()RTExtensions
{
  v0 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
  stringFromDate = [v0 stringFromDate];

  return stringFromDate;
}

+ (id)dateWithResolution:()RTExtensions
{
  date = [MEMORY[0x1E695DF00] date];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [date dateReducedToResolution:a3 calendar:currentCalendar];

  return v6;
}

+ (id)dateWithResolution:()RTExtensions calendar:
{
  v5 = MEMORY[0x1E695DF00];
  v6 = a4;
  date = [v5 date];
  v8 = [date dateReducedToResolution:a3 calendar:v6];

  return v8;
}

- (id)dateReducedToResolution:()RTExtensions
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [self dateReducedToResolution:a3 calendar:currentCalendar];

  return v6;
}

- (id)dateReducedToResolution:()RTExtensions calendar:
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (a3 >= 7)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = 134218498;
      v14 = a3;
      v15 = 2080;
      v16 = "[NSDate(RTExtensions) dateReducedToResolution:calendar:]";
      v17 = 1024;
      v18 = 195;
      _os_log_error_impl(&dword_1BF1C4000, v8, OS_LOG_TYPE_ERROR, "Unhandled resolution, %lu (in %s:%d)", &v13, 0x1Cu);
    }

    v7 = 0;
  }

  else
  {
    v7 = qword_1BF231A88[a3];
  }

  v9 = [v6 components:v7 fromDate:self];
  v10 = [v6 dateFromComponents:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)dateByAddingUnit:()RTExtensions value:
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v8 = [currentCalendar dateByAddingUnit:a3 value:a4 toDate:self options:0];

  return v8;
}

- (id)startOfDayAfterAddingUnit:()RTExtensions value:
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v8 = [self dateByAddingUnit:a3 value:a4];
  v9 = [currentCalendar startOfDayForDate:v8];

  return v9;
}

- (id)dateByRoundingWithTimeQuantization:()RTExtensions
{
  selfCopy = self;
  if (self)
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v6 = [currentCalendar components:96 fromDate:selfCopy];

    selfCopy = [selfCopy dateByAddingTimeInterval:{(objc_msgSend(v6, "minute") % a3) * -60.0}];
  }

  return selfCopy;
}

+ (id)dateWithHour:()RTExtensions minute:second:
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  date = [MEMORY[0x1E695DF00] date];
  v10 = [currentCalendar components:28 fromDate:date];

  [v10 setHour:a3];
  [v10 setMinute:a4];
  [v10 setSecond:a5];
  v11 = [currentCalendar dateFromComponents:v10];

  return v11;
}

+ (uint64_t)dateBisectingDate1:()RTExtensions date2:
{
  v5 = MEMORY[0x1E695DF00];
  v6 = a4;
  [a3 timeIntervalSinceReferenceDate];
  v8 = v7;
  [v6 timeIntervalSinceReferenceDate];
  v10 = v9;

  return [v5 dateWithTimeIntervalSinceReferenceDate:(v8 + v10) * 0.5];
}

+ (id)roundingUpDate:()RTExtensions bucketDurationMinute:
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a4 <= 0)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v16[0] = 67109634;
      v16[1] = a4;
      v17 = 2080;
      v18 = "+[NSDate(RTExtensions) roundingUpDate:bucketDurationMinute:]";
      v19 = 1024;
      v20 = 246;
      _os_log_error_impl(&dword_1BF1C4000, v6, OS_LOG_TYPE_ERROR, "bucketDurationMinute should be greater than 0, %d (in %s:%d)", v16, 0x18u);
    }
  }

  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v8 = [currentCalendar components:2097404 fromDate:v5];

  currentCalendar2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v10 = [currentCalendar2 components:2097276 fromDate:v5];

  v11 = ceil(([v8 second] / 60.0 + objc_msgSend(v8, "minute")) / a4);
  [v10 setMinute:(a4 * v11)];
  currentCalendar3 = [MEMORY[0x1E695DEE8] currentCalendar];
  v13 = [currentCalendar3 dateFromComponents:v10];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (BOOL)isDateWithinLast24Hours:()RTExtensions
{
  v3 = a3;
  if (v3)
  {
    date = [MEMORY[0x1E695DF00] date];
    v5 = [date dateByAddingTimeInterval:-86400.0];
    v6 = [v3 compare:v5] == 1 && objc_msgSend(v3, "compare:", date) != 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)getEarliestDate:()RTExtensions
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 count])
  {
    distantFuture = [MEMORY[0x1E695DF00] distantFuture];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          if ([v11 compare:{distantFuture, v15}] == -1)
          {
            v12 = v11;

            distantFuture = v12;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  else
  {
    distantFuture = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return distantFuture;
}

@end