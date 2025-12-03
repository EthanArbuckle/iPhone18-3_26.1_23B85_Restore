@interface DBDateFormatter
+ (NSMutableDictionary)dateFormatters;
+ (NSMutableDictionary)dateIntervalFormatters;
+ (NSString)formattedNow;
+ (id)_dateFormatterFromToken:(id)token;
+ (id)_dateIntervalFormatterFromToken:(id)token;
+ (id)_formatDate:(id)date withToken:(id)token;
+ (id)_formatIntervalFromDate:(id)date toDate:(id)toDate withToken:(id)token;
+ (id)dateFormatterForToken:(id)token;
+ (id)dateIntervalFormatterForToken:(id)token;
+ (id)formattedDate:(id)date;
+ (id)formattedDateTimeStamp:(id)stamp;
+ (id)formattedRange:(id)range;
+ (id)formattedRangeDateTimeStampStart:(id)start end:(id)end;
+ (id)formattedRangeDateTimestamp:(id)timestamp;
+ (id)formattedRangeStart:(id)start end:(id)end;
+ (id)formattedRangeTimestamp:(id)timestamp;
+ (id)formattedRangeTimestampStart:(id)start end:(id)end;
+ (id)formattedTime:(id)time;
+ (id)formattedTimeStamp:(id)stamp;
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

+ (id)dateFormatterForToken:(id)token
{
  tokenCopy = token;
  dateFormatters = [self dateFormatters];
  objc_sync_enter(dateFormatters);
  dateFormatters2 = [self dateFormatters];
  v7 = [dateFormatters2 objectForKeyedSubscript:tokenCopy];

  if (!v7)
  {
    v7 = [self _dateFormatterFromToken:tokenCopy];
    dateFormatters3 = [self dateFormatters];
    [dateFormatters3 setObject:v7 forKeyedSubscript:tokenCopy];
  }

  objc_sync_exit(dateFormatters);

  return v7;
}

+ (id)_dateFormatterFromToken:(id)token
{
  tokenCopy = token;
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  [v4 setLocale:autoupdatingCurrentLocale];

  formatString = [tokenCopy formatString];

  if (formatString)
  {
    formatString2 = [tokenCopy formatString];
    [v4 setDateFormat:formatString2];
  }

  else
  {
    [v4 setDateStyle:{objc_msgSend(tokenCopy, "dateStyle")}];
    [v4 setTimeStyle:{objc_msgSend(tokenCopy, "timeStyle")}];
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

+ (id)dateIntervalFormatterForToken:(id)token
{
  tokenCopy = token;
  dateIntervalFormatters = [self dateIntervalFormatters];
  objc_sync_enter(dateIntervalFormatters);
  dateIntervalFormatters2 = [self dateIntervalFormatters];
  v7 = [dateIntervalFormatters2 objectForKeyedSubscript:tokenCopy];

  if (!v7)
  {
    v7 = [self _dateIntervalFormatterFromToken:tokenCopy];
    dateIntervalFormatters3 = [self dateIntervalFormatters];
    [dateIntervalFormatters3 setObject:v7 forKeyedSubscript:tokenCopy];
  }

  objc_sync_exit(dateIntervalFormatters);

  return v7;
}

+ (id)_dateIntervalFormatterFromToken:(id)token
{
  tokenCopy = token;
  v4 = objc_alloc_init(MEMORY[0x277CCA978]);
  autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  [v4 setLocale:autoupdatingCurrentLocale];

  formatString = [tokenCopy formatString];

  if (formatString)
  {
    formatString2 = [tokenCopy formatString];
    [v4 setDateTemplate:formatString2];
  }

  else
  {
    [v4 setDateStyle:{objc_msgSend(tokenCopy, "dateStyle")}];
    [v4 setTimeStyle:{objc_msgSend(tokenCopy, "timeStyle")}];
  }

  return v4;
}

+ (NSString)formattedNow
{
  v3 = [MEMORY[0x277CBEAA8] now];
  v4 = [self formattedDate:v3];

  return v4;
}

+ (id)formattedDate:(id)date
{
  v4 = formattedDate__onceToken;
  dateCopy = date;
  if (v4 != -1)
  {
    +[DBDateFormatter formattedDate:];
  }

  v6 = [self _formatDate:dateCopy withToken:formattedDate___formattedDateToken];

  return v6;
}

uint64_t __33__DBDateFormatter_formattedDate___block_invoke()
{
  v0 = [DBDateFormatterToken tokenWithDateStyle:1 timeStyle:1];
  v1 = formattedDate___formattedDateToken;
  formattedDate___formattedDateToken = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)formattedDateTimeStamp:(id)stamp
{
  v4 = formattedDateTimeStamp__onceToken;
  stampCopy = stamp;
  if (v4 != -1)
  {
    +[DBDateFormatter formattedDateTimeStamp:];
  }

  v6 = [self _formatDate:stampCopy withToken:formattedDateTimeStamp___formattedDateTimeStampToken];

  return v6;
}

uint64_t __42__DBDateFormatter_formattedDateTimeStamp___block_invoke()
{
  v0 = [DBDateFormatterToken tokenWithFormatString:@"yyyy-MM-dd HH:mm:ss.SSS"];
  v1 = formattedDateTimeStamp___formattedDateTimeStampToken;
  formattedDateTimeStamp___formattedDateTimeStampToken = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)formattedTime:(id)time
{
  v4 = formattedTime__onceToken;
  timeCopy = time;
  if (v4 != -1)
  {
    +[DBDateFormatter formattedTime:];
  }

  v6 = [self _formatDate:timeCopy withToken:formattedTime___formattedTimeToken];

  return v6;
}

uint64_t __33__DBDateFormatter_formattedTime___block_invoke()
{
  v0 = [DBDateFormatterToken tokenWithDateStyle:0 timeStyle:1];
  v1 = formattedTime___formattedTimeToken;
  formattedTime___formattedTimeToken = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)formattedTimeStamp:(id)stamp
{
  v4 = formattedTimeStamp__onceToken;
  stampCopy = stamp;
  if (v4 != -1)
  {
    +[DBDateFormatter formattedTimeStamp:];
  }

  v6 = [self _formatDate:stampCopy withToken:formattedTimeStamp___formattedTimeStampToken];

  return v6;
}

uint64_t __38__DBDateFormatter_formattedTimeStamp___block_invoke()
{
  v0 = [DBDateFormatterToken tokenWithFormatString:@"HH:mm:ss.SSS"];
  v1 = formattedTimeStamp___formattedTimeStampToken;
  formattedTimeStamp___formattedTimeStampToken = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)_formatDate:(id)date withToken:(id)token
{
  dateCopy = date;
  tokenCopy = token;
  if (dateCopy)
  {
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    v8 = [DBComparison isValue:dateCopy equalTo:distantFuture];

    if (v8)
    {
      v9 = @"distantFuture";
    }

    else
    {
      distantPast = [MEMORY[0x277CBEAA8] distantPast];
      v11 = [DBComparison isValue:dateCopy equalTo:distantPast];

      if (v11)
      {
        v9 = @"distantPast";
      }

      else
      {
        v12 = [DBDateFormatter dateFormatterForToken:tokenCopy];
        objc_sync_enter(v12);
        v9 = [v12 stringFromDate:dateCopy];
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

+ (id)formattedRangeStart:(id)start end:(id)end
{
  v6 = formattedRangeStart_end__onceToken;
  endCopy = end;
  startCopy = start;
  if (v6 != -1)
  {
    +[DBDateFormatter formattedRangeStart:end:];
  }

  v9 = [self _formatIntervalFromDate:startCopy toDate:endCopy withToken:formattedRangeStart_end___formattedRangeToken];

  return v9;
}

uint64_t __43__DBDateFormatter_formattedRangeStart_end___block_invoke()
{
  v0 = [DBDateFormatterToken tokenWithDateStyle:0 timeStyle:1];
  v1 = formattedRangeStart_end___formattedRangeToken;
  formattedRangeStart_end___formattedRangeToken = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)formattedRangeDateTimeStampStart:(id)start end:(id)end
{
  v6 = formattedRangeDateTimeStampStart_end__onceToken;
  endCopy = end;
  startCopy = start;
  if (v6 != -1)
  {
    +[DBDateFormatter formattedRangeDateTimeStampStart:end:];
  }

  v9 = [self _formatIntervalFromDate:startCopy toDate:endCopy withToken:formattedRangeDateTimeStampStart_end___formattedRangeDateTimeStampToken];

  return v9;
}

uint64_t __56__DBDateFormatter_formattedRangeDateTimeStampStart_end___block_invoke()
{
  v0 = [DBDateFormatterToken tokenWithFormatString:@"yyyy-MM-dd HH:mm:ss.SSS"];
  v1 = formattedRangeDateTimeStampStart_end___formattedRangeDateTimeStampToken;
  formattedRangeDateTimeStampStart_end___formattedRangeDateTimeStampToken = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)formattedRangeTimestampStart:(id)start end:(id)end
{
  v6 = formattedRangeTimestampStart_end__onceToken;
  endCopy = end;
  startCopy = start;
  if (v6 != -1)
  {
    +[DBDateFormatter formattedRangeTimestampStart:end:];
  }

  v9 = [self _formatIntervalFromDate:startCopy toDate:endCopy withToken:formattedRangeTimestampStart_end___formattedRangeTimestampToken];

  return v9;
}

uint64_t __52__DBDateFormatter_formattedRangeTimestampStart_end___block_invoke()
{
  v0 = [DBDateFormatterToken tokenWithFormatString:@"HH:mm:ss.SSS"];
  v1 = formattedRangeTimestampStart_end___formattedRangeTimestampToken;
  formattedRangeTimestampStart_end___formattedRangeTimestampToken = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)formattedRange:(id)range
{
  rangeCopy = range;
  start = [rangeCopy start];
  v6 = [rangeCopy end];

  v7 = [self formattedRangeStart:start end:v6];

  return v7;
}

+ (id)formattedRangeDateTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  start = [timestampCopy start];
  v6 = [timestampCopy end];

  v7 = [self formattedRangeDateTimeStampStart:start end:v6];

  return v7;
}

+ (id)formattedRangeTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  start = [timestampCopy start];
  v6 = [timestampCopy end];

  v7 = [self formattedRangeTimestampStart:start end:v6];

  return v7;
}

+ (id)_formatIntervalFromDate:(id)date toDate:(id)toDate withToken:(id)token
{
  dateCopy = date;
  toDateCopy = toDate;
  tokenCopy = token;
  v10 = [DBDateFormatter dateIntervalFormatterForToken:tokenCopy];
  objc_sync_enter(v10);
  v11 = [v10 stringFromDate:dateCopy toDate:toDateCopy];
  objc_sync_exit(v10);

  return v11;
}

@end