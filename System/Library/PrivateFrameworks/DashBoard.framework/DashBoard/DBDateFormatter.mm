@interface DBDateFormatter
+ (NSMutableDictionary)dateFormatters;
+ (NSMutableDictionary)dateIntervalFormatters;
+ (NSString)formattedNow;
+ (id)_dateFormatterFromToken:(id)a3;
+ (id)_dateIntervalFormatterFromToken:(id)a3;
+ (id)_formatDate:(id)a3 withToken:(id)a4;
+ (id)_formatIntervalFromDate:(id)a3 toDate:(id)a4 withToken:(id)a5;
+ (id)dateFormatterForToken:(id)a3;
+ (id)dateIntervalFormatterForToken:(id)a3;
+ (id)formattedDate:(id)a3;
+ (id)formattedDateTimeStamp:(id)a3;
+ (id)formattedRange:(id)a3;
+ (id)formattedRangeDateTimeStampStart:(id)a3 end:(id)a4;
+ (id)formattedRangeDateTimestamp:(id)a3;
+ (id)formattedRangeStart:(id)a3 end:(id)a4;
+ (id)formattedRangeTimestamp:(id)a3;
+ (id)formattedRangeTimestampStart:(id)a3 end:(id)a4;
+ (id)formattedTime:(id)a3;
+ (id)formattedTimeStamp:(id)a3;
@end

@implementation DBDateFormatter

+ (NSMutableDictionary)dateFormatters
{
  if (dateFormatters_onceToken != -1)
  {
    +[DBDateFormatter dateFormatters];
  }

  v3 = dateFormatters__dateFormatters;

  return v3;
}

uint64_t __33__DBDateFormatter_dateFormatters__block_invoke()
{
  v0 = objc_opt_new();
  v1 = dateFormatters__dateFormatters;
  dateFormatters__dateFormatters = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)dateFormatterForToken:(id)a3
{
  v4 = a3;
  v5 = [a1 dateFormatters];
  objc_sync_enter(v5);
  v6 = [a1 dateFormatters];
  v7 = [v6 objectForKeyedSubscript:v4];

  if (!v7)
  {
    v7 = [a1 _dateFormatterFromToken:v4];
    v8 = [a1 dateFormatters];
    [v8 setObject:v7 forKeyedSubscript:v4];
  }

  objc_sync_exit(v5);

  return v7;
}

+ (id)_dateFormatterFromToken:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  v5 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  [v4 setLocale:v5];

  v6 = [v3 formatString];

  if (v6)
  {
    v7 = [v3 formatString];
    [v4 setDateFormat:v7];
  }

  else
  {
    [v4 setDateStyle:{objc_msgSend(v3, "dateStyle")}];
    [v4 setTimeStyle:{objc_msgSend(v3, "timeStyle")}];
  }

  return v4;
}

+ (NSMutableDictionary)dateIntervalFormatters
{
  if (dateIntervalFormatters_onceToken != -1)
  {
    +[DBDateFormatter dateIntervalFormatters];
  }

  v3 = dateIntervalFormatters__dateIntervalFormatters;

  return v3;
}

uint64_t __41__DBDateFormatter_dateIntervalFormatters__block_invoke()
{
  v0 = objc_opt_new();
  v1 = dateIntervalFormatters__dateIntervalFormatters;
  dateIntervalFormatters__dateIntervalFormatters = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)dateIntervalFormatterForToken:(id)a3
{
  v4 = a3;
  v5 = [a1 dateIntervalFormatters];
  objc_sync_enter(v5);
  v6 = [a1 dateIntervalFormatters];
  v7 = [v6 objectForKeyedSubscript:v4];

  if (!v7)
  {
    v7 = [a1 _dateIntervalFormatterFromToken:v4];
    v8 = [a1 dateIntervalFormatters];
    [v8 setObject:v7 forKeyedSubscript:v4];
  }

  objc_sync_exit(v5);

  return v7;
}

+ (id)_dateIntervalFormatterFromToken:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CCA978]);
  v5 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  [v4 setLocale:v5];

  v6 = [v3 formatString];

  if (v6)
  {
    v7 = [v3 formatString];
    [v4 setDateTemplate:v7];
  }

  else
  {
    [v4 setDateStyle:{objc_msgSend(v3, "dateStyle")}];
    [v4 setTimeStyle:{objc_msgSend(v3, "timeStyle")}];
  }

  return v4;
}

+ (NSString)formattedNow
{
  v3 = [MEMORY[0x277CBEAA8] now];
  v4 = [a1 formattedDate:v3];

  return v4;
}

+ (id)formattedDate:(id)a3
{
  v4 = formattedDate__onceToken;
  v5 = a3;
  if (v4 != -1)
  {
    +[DBDateFormatter formattedDate:];
  }

  v6 = [a1 _formatDate:v5 withToken:formattedDate___formattedDateToken];

  return v6;
}

uint64_t __33__DBDateFormatter_formattedDate___block_invoke()
{
  v0 = [DBDateFormatterToken tokenWithDateStyle:1 timeStyle:1];
  v1 = formattedDate___formattedDateToken;
  formattedDate___formattedDateToken = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)formattedDateTimeStamp:(id)a3
{
  v4 = formattedDateTimeStamp__onceToken;
  v5 = a3;
  if (v4 != -1)
  {
    +[DBDateFormatter formattedDateTimeStamp:];
  }

  v6 = [a1 _formatDate:v5 withToken:formattedDateTimeStamp___formattedDateTimeStampToken];

  return v6;
}

uint64_t __42__DBDateFormatter_formattedDateTimeStamp___block_invoke()
{
  v0 = [DBDateFormatterToken tokenWithFormatString:@"yyyy-MM-dd HH:mm:ss.SSS"];
  v1 = formattedDateTimeStamp___formattedDateTimeStampToken;
  formattedDateTimeStamp___formattedDateTimeStampToken = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)formattedTime:(id)a3
{
  v4 = formattedTime__onceToken;
  v5 = a3;
  if (v4 != -1)
  {
    +[DBDateFormatter formattedTime:];
  }

  v6 = [a1 _formatDate:v5 withToken:formattedTime___formattedTimeToken];

  return v6;
}

uint64_t __33__DBDateFormatter_formattedTime___block_invoke()
{
  v0 = [DBDateFormatterToken tokenWithDateStyle:0 timeStyle:1];
  v1 = formattedTime___formattedTimeToken;
  formattedTime___formattedTimeToken = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)formattedTimeStamp:(id)a3
{
  v4 = formattedTimeStamp__onceToken;
  v5 = a3;
  if (v4 != -1)
  {
    +[DBDateFormatter formattedTimeStamp:];
  }

  v6 = [a1 _formatDate:v5 withToken:formattedTimeStamp___formattedTimeStampToken];

  return v6;
}

uint64_t __38__DBDateFormatter_formattedTimeStamp___block_invoke()
{
  v0 = [DBDateFormatterToken tokenWithFormatString:@"HH:mm:ss.SSS"];
  v1 = formattedTimeStamp___formattedTimeStampToken;
  formattedTimeStamp___formattedTimeStampToken = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)_formatDate:(id)a3 withToken:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [MEMORY[0x277CBEAA8] distantFuture];
    v8 = [DBComparison isValue:v5 equalTo:v7];

    if (v8)
    {
      v9 = @"distantFuture";
    }

    else
    {
      v10 = [MEMORY[0x277CBEAA8] distantPast];
      v11 = [DBComparison isValue:v5 equalTo:v10];

      if (v11)
      {
        v9 = @"distantPast";
      }

      else
      {
        v12 = [DBDateFormatter dateFormatterForToken:v6];
        objc_sync_enter(v12);
        v9 = [v12 stringFromDate:v5];
        objc_sync_exit(v12);
      }
    }
  }

  else
  {
    v9 = @"none";
  }

  return v9;
}

+ (id)formattedRangeStart:(id)a3 end:(id)a4
{
  v6 = formattedRangeStart_end__onceToken;
  v7 = a4;
  v8 = a3;
  if (v6 != -1)
  {
    +[DBDateFormatter formattedRangeStart:end:];
  }

  v9 = [a1 _formatIntervalFromDate:v8 toDate:v7 withToken:formattedRangeStart_end___formattedRangeToken];

  return v9;
}

uint64_t __43__DBDateFormatter_formattedRangeStart_end___block_invoke()
{
  v0 = [DBDateFormatterToken tokenWithDateStyle:0 timeStyle:1];
  v1 = formattedRangeStart_end___formattedRangeToken;
  formattedRangeStart_end___formattedRangeToken = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)formattedRangeDateTimeStampStart:(id)a3 end:(id)a4
{
  v6 = formattedRangeDateTimeStampStart_end__onceToken;
  v7 = a4;
  v8 = a3;
  if (v6 != -1)
  {
    +[DBDateFormatter formattedRangeDateTimeStampStart:end:];
  }

  v9 = [a1 _formatIntervalFromDate:v8 toDate:v7 withToken:formattedRangeDateTimeStampStart_end___formattedRangeDateTimeStampToken];

  return v9;
}

uint64_t __56__DBDateFormatter_formattedRangeDateTimeStampStart_end___block_invoke()
{
  v0 = [DBDateFormatterToken tokenWithFormatString:@"yyyy-MM-dd HH:mm:ss.SSS"];
  v1 = formattedRangeDateTimeStampStart_end___formattedRangeDateTimeStampToken;
  formattedRangeDateTimeStampStart_end___formattedRangeDateTimeStampToken = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)formattedRangeTimestampStart:(id)a3 end:(id)a4
{
  v6 = formattedRangeTimestampStart_end__onceToken;
  v7 = a4;
  v8 = a3;
  if (v6 != -1)
  {
    +[DBDateFormatter formattedRangeTimestampStart:end:];
  }

  v9 = [a1 _formatIntervalFromDate:v8 toDate:v7 withToken:formattedRangeTimestampStart_end___formattedRangeTimestampToken];

  return v9;
}

uint64_t __52__DBDateFormatter_formattedRangeTimestampStart_end___block_invoke()
{
  v0 = [DBDateFormatterToken tokenWithFormatString:@"HH:mm:ss.SSS"];
  v1 = formattedRangeTimestampStart_end___formattedRangeTimestampToken;
  formattedRangeTimestampStart_end___formattedRangeTimestampToken = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)formattedRange:(id)a3
{
  v4 = a3;
  v5 = [v4 start];
  v6 = [v4 end];

  v7 = [a1 formattedRangeStart:v5 end:v6];

  return v7;
}

+ (id)formattedRangeDateTimestamp:(id)a3
{
  v4 = a3;
  v5 = [v4 start];
  v6 = [v4 end];

  v7 = [a1 formattedRangeDateTimeStampStart:v5 end:v6];

  return v7;
}

+ (id)formattedRangeTimestamp:(id)a3
{
  v4 = a3;
  v5 = [v4 start];
  v6 = [v4 end];

  v7 = [a1 formattedRangeTimestampStart:v5 end:v6];

  return v7;
}

+ (id)_formatIntervalFromDate:(id)a3 toDate:(id)a4 withToken:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [DBDateFormatter dateIntervalFormatterForToken:v9];
  objc_sync_enter(v10);
  v11 = [v10 stringFromDate:v7 toDate:v8];
  objc_sync_exit(v10);

  return v11;
}

@end