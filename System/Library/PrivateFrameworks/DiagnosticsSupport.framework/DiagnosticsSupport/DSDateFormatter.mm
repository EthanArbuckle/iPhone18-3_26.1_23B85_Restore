@interface DSDateFormatter
+ (id)sharedFormatter;
- (DSDateFormatter)formatterWithType:(int64_t)a3;
- (DSDateFormatter)init;
@end

@implementation DSDateFormatter

+ (id)sharedFormatter
{
  if (sharedFormatter_onceToken != -1)
  {
    +[DSDateFormatter sharedFormatter];
  }

  v3 = sharedFormatter_singleton;

  return v3;
}

uint64_t __34__DSDateFormatter_sharedFormatter__block_invoke()
{
  sharedFormatter_singleton = objc_alloc_init(DSDateFormatter);

  return MEMORY[0x2821F96F8]();
}

- (DSDateFormatter)init
{
  v6.receiver = self;
  v6.super_class = DSDateFormatter;
  v2 = [(DSDateFormatter *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    dateFormatters = v2->_dateFormatters;
    v2->_dateFormatters = v3;
  }

  return v2;
}

- (DSDateFormatter)formatterWithType:(int64_t)a3
{
  v5 = [(DSDateFormatter *)self dateFormatters];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [(DSDateFormatter *)self dateFormatters];
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v10 = [v8 objectForKeyedSubscript:v9];
    goto LABEL_21;
  }

  v10 = objc_alloc_init(MEMORY[0x277CCA968]);
  v11 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [v10 setLocale:v11];

  [v10 setFormatterBehavior:1040];
  if (a3 > 2)
  {
    if (a3 > 4)
    {
      if (a3 != 5)
      {
        if (a3 == 6)
        {
          v14 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
          [v10 setLocale:v14];

          [v10 setDateStyle:3];
          [v10 setTimeStyle:1];
          [v10 setDoesRelativeDateFormatting:1];
        }

        goto LABEL_20;
      }

      v12 = @"yyyy-MM-dd HH.mm.ss.SSS Z";
    }

    else if (a3 == 3)
    {
      v12 = @"yyyy-MM-dd";
    }

    else
    {
      v12 = @"EEE MMM dd HH:mm:ss z yyyy";
    }

    goto LABEL_17;
  }

  switch(a3)
  {
    case 0:
      v12 = @"yyyy-MM-dd'T'HH:mm:ssZZZZZ";
LABEL_17:
      [v10 setDateFormat:v12];
      break;
    case 1:
      [v10 setDateFormat:@"MM/dd/YYYY HH:mm:ss ZZZ"];
      v13 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
      [v10 setTimeZone:v13];
      goto LABEL_19;
    case 2:
      [v10 setDateFormat:@"yyyy-MM-dd HH:mm:ss Z"];
      v13 = [MEMORY[0x277CBEAF8] systemLocale];
      [v10 setLocale:v13];
LABEL_19:

      break;
  }

LABEL_20:
  v8 = [(DSDateFormatter *)self dateFormatters];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v8 setObject:v10 forKeyedSubscript:v9];
LABEL_21:

  return v10;
}

@end