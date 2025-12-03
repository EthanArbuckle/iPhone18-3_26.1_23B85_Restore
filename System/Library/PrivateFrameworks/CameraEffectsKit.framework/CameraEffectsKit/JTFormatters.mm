@interface JTFormatters
+ (id)dateComponentsFormatterHourMinSec;
+ (id)dateComponentsFormatterMinSec;
+ (id)dateFormatter;
+ (id)dateFormatterDayOfWeekMonthDayYear;
+ (id)dateFormatterDebugDate;
+ (id)dateFormatterLongStyle;
+ (id)dateFormatterMonthDay;
@end

@implementation JTFormatters

+ (id)dateFormatter
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v4 = [threadDictionary objectForKeyedSubscript:@"FormattersDateFormatterKeyForCurrentThread"];
  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    [v4 setLocale:currentLocale];

    [v4 setDateStyle:2];
    [v4 setTimeStyle:0];
    [threadDictionary setObject:v4 forKeyedSubscript:@"FormattersDateFormatterKeyForCurrentThread"];
  }

  return v4;
}

+ (id)dateFormatterLongStyle
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v4 = [threadDictionary objectForKeyedSubscript:@"FormattersDateFormatterLongStyleKeyForCurrentThread"];
  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    [v4 setLocale:currentLocale];

    [v4 setDateStyle:3];
    [v4 setTimeStyle:0];
    [threadDictionary setObject:v4 forKeyedSubscript:@"FormattersDateFormatterLongStyleKeyForCurrentThread"];
  }

  return v4;
}

+ (id)dateFormatterMonthDay
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v4 = [threadDictionary objectForKeyedSubscript:@"FormattersDateFormatterMonthDayKeyForCurrentThread"];
  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    [v4 setLocale:currentLocale];

    [v4 setLocalizedDateFormatFromTemplate:@"MMMMd"];
    [threadDictionary setObject:v4 forKeyedSubscript:@"FormattersDateFormatterMonthDayKeyForCurrentThread"];
  }

  return v4;
}

+ (id)dateFormatterDayOfWeekMonthDayYear
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v4 = [threadDictionary objectForKeyedSubscript:@"FormattersDateFormatterDayOfWeekMonthDayYearKeyForCurrentThread"];
  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    [v4 setLocale:currentLocale];

    [v4 setLocalizedDateFormatFromTemplate:@"EMMMdyyyy"];
    [threadDictionary setObject:v4 forKeyedSubscript:@"FormattersDateFormatterDayOfWeekMonthDayYearKeyForCurrentThread"];
  }

  return v4;
}

+ (id)dateFormatterDebugDate
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v4 = [threadDictionary objectForKeyedSubscript:@"FormattersDateFormatterDebugDateForCurrentThread"];
  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v4 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    [threadDictionary setObject:v4 forKeyedSubscript:@"FormattersDateFormatterDebugDateForCurrentThread"];
  }

  return v4;
}

+ (id)dateComponentsFormatterHourMinSec
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v4 = [threadDictionary objectForKeyedSubscript:@"DateComponentsFormatterHourMinSecKeyForCurrentThread"];
  if (!v4)
  {
    v4 = objc_opt_new();
    [v4 setUnitsStyle:0];
    [v4 setAllowedUnits:224];
    [v4 setFormattingContext:2];
    [v4 setMaximumUnitCount:3];
    [v4 setZeroFormattingBehavior:0];
    currentThread2 = [MEMORY[0x277CCACC8] currentThread];
    threadDictionary2 = [currentThread2 threadDictionary];
    [threadDictionary2 setObject:v4 forKey:@"DateComponentsFormatterHourMinSecKeyForCurrentThread"];
  }

  return v4;
}

+ (id)dateComponentsFormatterMinSec
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v4 = [threadDictionary objectForKeyedSubscript:@"kDateComponentsFormatterMinSecKeyForCurrentThread"];
  if (!v4)
  {
    v4 = objc_opt_new();
    [v4 setUnitsStyle:0];
    [v4 setAllowedUnits:192];
    [v4 setFormattingContext:2];
    [v4 setMaximumUnitCount:2];
    [v4 setZeroFormattingBehavior:0x10000];
    currentThread2 = [MEMORY[0x277CCACC8] currentThread];
    threadDictionary2 = [currentThread2 threadDictionary];
    [threadDictionary2 setObject:v4 forKey:@"kDateComponentsFormatterMinSecKeyForCurrentThread"];
  }

  return v4;
}

@end