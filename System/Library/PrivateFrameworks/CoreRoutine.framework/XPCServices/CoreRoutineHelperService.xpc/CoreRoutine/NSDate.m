@interface NSDate
+ (BOOL)isDateWithinLast24Hours:(id)a3;
+ (NSDate)dateWithHour:(int64_t)a3 minute:(int64_t)a4 second:(int64_t)a5;
+ (NSDate)dateWithResolution:(unint64_t)a3;
+ (NSDate)dateWithResolution:(unint64_t)a3 calendar:(id)a4;
+ (id)dateBisectingDate1:(id)a3 date2:(id)a4;
+ (id)dateFormatter;
+ (id)dateFormatterForLogging;
+ (id)endOfDay;
+ (id)getEarliestDate:(id)a3;
+ (id)roundingUpDate:(id)a3 bucketDurationMinute:(int)a4;
+ (id)startOfDay;
+ (id)stringFromTimestamp:(double)a3;
- (BOOL)betweenDate:(id)a3 andDate:(id)a4;
- (id)dateByAddingUnit:(unint64_t)a3 value:(int64_t)a4;
- (id)dateByRoundingWithTimeQuantization:(int64_t)a3;
- (id)dateReducedToResolution:(unint64_t)a3;
- (id)dateReducedToResolution:(unint64_t)a3 calendar:(id)a4;
- (id)endOfDay;
- (id)getFormattedDateString;
- (id)startOfDay;
- (id)startOfDayAfterAddingUnit:(unint64_t)a3 value:(int64_t)a4;
- (id)stringFromDate;
- (id)weekdayStringFromDate;
- (unint64_t)hour;
- (unint64_t)minute;
- (unint64_t)weekday;
@end

@implementation NSDate

- (BOOL)betweenDate:(id)a3 andDate:(id)a4
{
  result = 0;
  if (a3 && a4)
  {
    v7 = a4;
    [a3 timeIntervalSinceReferenceDate];
    v9 = v8;
    [(NSDate *)self timeIntervalSinceReferenceDate];
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
  v2 = [a1 date];
  v3 = [v2 startOfDay];

  return v3;
}

- (id)startOfDay
{
  v3 = +[NSCalendar currentCalendar];
  v4 = [v3 components:28 fromDate:self];

  v5 = +[NSCalendar currentCalendar];
  v6 = [v5 dateFromComponents:v4];

  return v6;
}

+ (id)endOfDay
{
  v2 = [a1 date];
  v3 = [v2 endOfDay];

  return v3;
}

- (id)endOfDay
{
  v3 = +[NSCalendar currentCalendar];
  v4 = [v3 components:28 fromDate:self];

  [v4 setHour:23];
  [v4 setMinute:59];
  [v4 setSecond:59];
  v5 = +[NSCalendar currentCalendar];
  v6 = [v5 dateFromComponents:v4];

  return v6;
}

- (unint64_t)hour
{
  v3 = +[NSCalendar currentCalendar];
  v4 = [v3 component:32 fromDate:self];

  return v4;
}

- (unint64_t)minute
{
  v3 = +[NSCalendar currentCalendar];
  v4 = [v3 component:64 fromDate:self];

  return v4;
}

- (unint64_t)weekday
{
  v3 = +[NSCalendar currentCalendar];
  LOBYTE(self) = [v3 component:512 fromDate:self];

  return 1 << (self - 1);
}

- (id)weekdayStringFromDate
{
  v3 = objc_alloc_init(NSDateFormatter);
  [v3 setDateFormat:@"EEEE"];
  v4 = +[NSLocale autoupdatingCurrentLocale];
  [v3 setLocale:v4];

  v5 = [v3 stringFromDate:self];

  return v5;
}

- (id)stringFromDate
{
  [(NSDate *)self timeIntervalSinceReferenceDate];
  v4 = v3;
  v5 = +[NSDate dateFormatterForLogging];
  v6 = [v5 stringFromDate:self];
  v7 = [NSString stringWithFormat:@"%f (%@)", v4, v6];

  return v7;
}

- (id)getFormattedDateString
{
  if (self)
  {
    v3 = objc_alloc_init(NSDateFormatter);
    [v3 setDateFormat:@"yyyy/MM/dd HH:mm:ss.SSS"];
    v4 = +[NSTimeZone localTimeZone];
    [v3 setTimeZone:v4];

    v5 = [v3 stringFromDate:self];
  }

  else
  {
    v5 = @"-";
  }

  return v5;
}

+ (id)stringFromTimestamp:(double)a3
{
  v3 = [NSDate dateWithTimeIntervalSinceReferenceDate:a3];
  v4 = [v3 stringFromDate];

  return v4;
}

+ (id)dateFormatter
{
  if (qword_1000B2B70 != -1)
  {
    dispatch_once(&qword_1000B2B70, &stru_1000A8D00);
  }

  v3 = qword_1000B2B68;

  return v3;
}

+ (id)dateFormatterForLogging
{
  if (qword_1000B2B80 != -1)
  {
    dispatch_once(&qword_1000B2B80, &stru_1000A8D20);
  }

  v3 = qword_1000B2B78;

  return v3;
}

+ (NSDate)dateWithResolution:(unint64_t)a3
{
  v4 = +[NSDate date];
  v5 = +[NSCalendar currentCalendar];
  v6 = [v4 dateReducedToResolution:a3 calendar:v5];

  return v6;
}

+ (NSDate)dateWithResolution:(unint64_t)a3 calendar:(id)a4
{
  v5 = a4;
  v6 = +[NSDate date];
  v7 = [v6 dateReducedToResolution:a3 calendar:v5];

  return v7;
}

- (id)dateReducedToResolution:(unint64_t)a3
{
  v5 = +[NSCalendar currentCalendar];
  v6 = [(NSDate *)self dateReducedToResolution:a3 calendar:v5];

  return v6;
}

- (id)dateReducedToResolution:(unint64_t)a3 calendar:(id)a4
{
  v6 = a4;
  if (a3 >= 7)
  {
    v8 = sub_1000011A0(&qword_1000B2958);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = 134218498;
      v13 = a3;
      v14 = 2080;
      v15 = "[NSDate(RTExtensions) dateReducedToResolution:calendar:]";
      v16 = 1024;
      v17 = 195;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Unhandled resolution, %lu (in %s:%d)", &v12, 0x1Cu);
    }

    v7 = 0;
  }

  else
  {
    v7 = qword_100092458[a3];
  }

  v9 = [v6 components:v7 fromDate:self];
  v10 = [v6 dateFromComponents:v9];

  return v10;
}

- (id)dateByAddingUnit:(unint64_t)a3 value:(int64_t)a4
{
  v7 = +[NSCalendar currentCalendar];
  v8 = [v7 dateByAddingUnit:a3 value:a4 toDate:self options:0];

  return v8;
}

- (id)startOfDayAfterAddingUnit:(unint64_t)a3 value:(int64_t)a4
{
  v7 = +[NSCalendar currentCalendar];
  v8 = [(NSDate *)self dateByAddingUnit:a3 value:a4];
  v9 = [v7 startOfDayForDate:v8];

  return v9;
}

- (id)dateByRoundingWithTimeQuantization:(int64_t)a3
{
  v3 = self;
  if (self)
  {
    v5 = +[NSCalendar currentCalendar];
    v6 = [v5 components:96 fromDate:v3];

    v3 = [v3 dateByAddingTimeInterval:{(objc_msgSend(v6, "minute") % a3) * -60.0}];
  }

  return v3;
}

+ (NSDate)dateWithHour:(int64_t)a3 minute:(int64_t)a4 second:(int64_t)a5
{
  v8 = +[NSCalendar currentCalendar];
  v9 = +[NSDate date];
  v10 = [v8 components:28 fromDate:v9];

  [v10 setHour:a3];
  [v10 setMinute:a4];
  [v10 setSecond:a5];
  v11 = [v8 dateFromComponents:v10];

  return v11;
}

+ (id)dateBisectingDate1:(id)a3 date2:(id)a4
{
  v5 = a4;
  [a3 timeIntervalSinceReferenceDate];
  v7 = v6;
  [v5 timeIntervalSinceReferenceDate];
  v9 = v8;

  return [NSDate dateWithTimeIntervalSinceReferenceDate:(v7 + v9) * 0.5];
}

+ (id)roundingUpDate:(id)a3 bucketDurationMinute:(int)a4
{
  v5 = a3;
  if (a4 <= 0)
  {
    v6 = sub_1000011A0(&qword_1000B2958);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v15[0] = 67109634;
      v15[1] = a4;
      v16 = 2080;
      v17 = "+[NSDate(RTExtensions) roundingUpDate:bucketDurationMinute:]";
      v18 = 1024;
      v19 = 246;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "bucketDurationMinute should be greater than 0, %d (in %s:%d)", v15, 0x18u);
    }
  }

  v7 = +[NSCalendar currentCalendar];
  v8 = [v7 components:2097404 fromDate:v5];

  v9 = +[NSCalendar currentCalendar];
  v10 = [v9 components:2097276 fromDate:v5];

  v11 = ceil(([v8 second] / 60.0 + objc_msgSend(v8, "minute")) / a4);
  [v10 setMinute:(a4 * v11)];
  v12 = +[NSCalendar currentCalendar];
  v13 = [v12 dateFromComponents:v10];

  return v13;
}

+ (BOOL)isDateWithinLast24Hours:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = +[NSDate date];
    v5 = [v4 dateByAddingTimeInterval:-86400.0];
    v6 = [v3 compare:v5] == 1 && objc_msgSend(v3, "compare:", v4) != 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)getEarliestDate:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = +[NSDate distantFuture];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if ([v11 compare:{v5, v14}] == -1)
          {
            v12 = v11;

            v5 = v12;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end