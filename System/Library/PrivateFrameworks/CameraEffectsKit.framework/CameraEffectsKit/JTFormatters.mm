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
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [v2 threadDictionary];

  v4 = [v3 objectForKeyedSubscript:@"FormattersDateFormatterKeyForCurrentThread"];
  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    v5 = [MEMORY[0x277CBEAF8] currentLocale];
    [v4 setLocale:v5];

    [v4 setDateStyle:2];
    [v4 setTimeStyle:0];
    [v3 setObject:v4 forKeyedSubscript:@"FormattersDateFormatterKeyForCurrentThread"];
  }

  return v4;
}

+ (id)dateFormatterLongStyle
{
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [v2 threadDictionary];

  v4 = [v3 objectForKeyedSubscript:@"FormattersDateFormatterLongStyleKeyForCurrentThread"];
  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    v5 = [MEMORY[0x277CBEAF8] currentLocale];
    [v4 setLocale:v5];

    [v4 setDateStyle:3];
    [v4 setTimeStyle:0];
    [v3 setObject:v4 forKeyedSubscript:@"FormattersDateFormatterLongStyleKeyForCurrentThread"];
  }

  return v4;
}

+ (id)dateFormatterMonthDay
{
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [v2 threadDictionary];

  v4 = [v3 objectForKeyedSubscript:@"FormattersDateFormatterMonthDayKeyForCurrentThread"];
  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    v5 = [MEMORY[0x277CBEAF8] currentLocale];
    [v4 setLocale:v5];

    [v4 setLocalizedDateFormatFromTemplate:@"MMMMd"];
    [v3 setObject:v4 forKeyedSubscript:@"FormattersDateFormatterMonthDayKeyForCurrentThread"];
  }

  return v4;
}

+ (id)dateFormatterDayOfWeekMonthDayYear
{
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [v2 threadDictionary];

  v4 = [v3 objectForKeyedSubscript:@"FormattersDateFormatterDayOfWeekMonthDayYearKeyForCurrentThread"];
  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    v5 = [MEMORY[0x277CBEAF8] currentLocale];
    [v4 setLocale:v5];

    [v4 setLocalizedDateFormatFromTemplate:@"EMMMdyyyy"];
    [v3 setObject:v4 forKeyedSubscript:@"FormattersDateFormatterDayOfWeekMonthDayYearKeyForCurrentThread"];
  }

  return v4;
}

+ (id)dateFormatterDebugDate
{
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [v2 threadDictionary];

  v4 = [v3 objectForKeyedSubscript:@"FormattersDateFormatterDebugDateForCurrentThread"];
  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v4 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    [v3 setObject:v4 forKeyedSubscript:@"FormattersDateFormatterDebugDateForCurrentThread"];
  }

  return v4;
}

+ (id)dateComponentsFormatterHourMinSec
{
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [v2 threadDictionary];

  v4 = [v3 objectForKeyedSubscript:@"DateComponentsFormatterHourMinSecKeyForCurrentThread"];
  if (!v4)
  {
    v4 = objc_opt_new();
    [v4 setUnitsStyle:0];
    [v4 setAllowedUnits:224];
    [v4 setFormattingContext:2];
    [v4 setMaximumUnitCount:3];
    [v4 setZeroFormattingBehavior:0];
    v5 = [MEMORY[0x277CCACC8] currentThread];
    v6 = [v5 threadDictionary];
    [v6 setObject:v4 forKey:@"DateComponentsFormatterHourMinSecKeyForCurrentThread"];
  }

  return v4;
}

+ (id)dateComponentsFormatterMinSec
{
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [v2 threadDictionary];

  v4 = [v3 objectForKeyedSubscript:@"kDateComponentsFormatterMinSecKeyForCurrentThread"];
  if (!v4)
  {
    v4 = objc_opt_new();
    [v4 setUnitsStyle:0];
    [v4 setAllowedUnits:192];
    [v4 setFormattingContext:2];
    [v4 setMaximumUnitCount:2];
    [v4 setZeroFormattingBehavior:0x10000];
    v5 = [MEMORY[0x277CCACC8] currentThread];
    v6 = [v5 threadDictionary];
    [v6 setObject:v4 forKey:@"kDateComponentsFormatterMinSecKeyForCurrentThread"];
  }

  return v4;
}

@end