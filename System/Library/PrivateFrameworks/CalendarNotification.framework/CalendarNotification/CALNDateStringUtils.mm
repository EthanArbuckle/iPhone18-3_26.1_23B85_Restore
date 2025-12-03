@interface CALNDateStringUtils
+ (id)_allDayFormatter;
+ (id)_dateTimeFormatter;
+ (id)dateTimeStringForEventDate:(id)date alwaysIncludeDate:(BOOL)includeDate allDayEvent:(BOOL)event dateProvider:(id)provider;
@end

@implementation CALNDateStringUtils

+ (id)dateTimeStringForEventDate:(id)date alwaysIncludeDate:(BOOL)includeDate allDayEvent:(BOOL)event dateProvider:(id)provider
{
  eventCopy = event;
  dateCopy = date;
  v10 = [provider now];
  [dateCopy timeIntervalSinceDate:v10];
  if (includeDate || v11 < 0.0 || v11 >= 43200.0)
  {
    v13 = objc_opt_class();
    if (eventCopy)
    {
      [v13 _allDayFormatter];
    }

    else
    {
      [v13 _dateTimeFormatter];
    }
    v14 = ;
    v12 = [v14 stringFromDate:dateCopy];
  }

  else
  {
    v12 = [MEMORY[0x277CCA968] localizedStringFromDate:dateCopy dateStyle:0 timeStyle:1];
  }

  return v12;
}

+ (id)_allDayFormatter
{
  if (_allDayFormatter_onceToken != -1)
  {
    +[CALNDateStringUtils _allDayFormatter];
  }

  v3 = _allDayFormatter_allDayFormatter;

  return v3;
}

uint64_t __39__CALNDateStringUtils__allDayFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = _allDayFormatter_allDayFormatter;
  _allDayFormatter_allDayFormatter = v0;

  v2 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  [_allDayFormatter_allDayFormatter setLocale:v2];

  [_allDayFormatter_allDayFormatter setDateStyle:3];
  [_allDayFormatter_allDayFormatter setTimeStyle:0];
  v3 = _allDayFormatter_allDayFormatter;

  return [v3 setDoesRelativeDateFormatting:1];
}

+ (id)_dateTimeFormatter
{
  if (_dateTimeFormatter_onceToken != -1)
  {
    +[CALNDateStringUtils _dateTimeFormatter];
  }

  v3 = _dateTimeFormatter_dateTimeFormatter;

  return v3;
}

uint64_t __41__CALNDateStringUtils__dateTimeFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = _dateTimeFormatter_dateTimeFormatter;
  _dateTimeFormatter_dateTimeFormatter = v0;

  v2 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  [_dateTimeFormatter_dateTimeFormatter setLocale:v2];

  [_dateTimeFormatter_dateTimeFormatter setDateStyle:3];
  [_dateTimeFormatter_dateTimeFormatter setTimeStyle:1];
  v3 = _dateTimeFormatter_dateTimeFormatter;

  return [v3 setDoesRelativeDateFormatting:1];
}

@end