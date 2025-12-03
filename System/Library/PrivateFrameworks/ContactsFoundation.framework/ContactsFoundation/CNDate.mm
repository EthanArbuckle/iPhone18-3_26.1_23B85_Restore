@interface CNDate
+ (NSCalendar)gmtBuddhistCalendar;
+ (NSCalendar)gmtChineseCalendar;
+ (NSCalendar)gmtGregorianCalendar;
+ (NSCalendar)gmtIslamicCalendar;
+ (NSCalendar)gmtJapaneseCalendar;
+ (id)dateFromDayComponents:(id)components;
+ (id)dayComponentsFromDate:(id)date;
@end

@implementation CNDate

+ (NSCalendar)gmtGregorianCalendar
{
  if (gmtGregorianCalendar_onceToken != -1)
  {
    +[CNDate gmtGregorianCalendar];
  }

  v3 = gmtGregorianCalendar_s_gmtGregorian;

  return v3;
}

void __30__CNDate_gmtGregorianCalendar__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DEE8]);
  v1 = [v0 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v2 = gmtGregorianCalendar_s_gmtGregorian;
  gmtGregorianCalendar_s_gmtGregorian = v1;

  v3 = gmtGregorianCalendar_s_gmtGregorian;
  v4 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v3 setTimeZone:v4];
}

+ (NSCalendar)gmtJapaneseCalendar
{
  if (gmtJapaneseCalendar_onceToken != -1)
  {
    +[CNDate gmtJapaneseCalendar];
  }

  v3 = gmtJapaneseCalendar_s_gmtJapanese;

  return v3;
}

void __29__CNDate_gmtJapaneseCalendar__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DEE8]);
  v1 = [v0 initWithCalendarIdentifier:*MEMORY[0x1E695D898]];
  v2 = gmtJapaneseCalendar_s_gmtJapanese;
  gmtJapaneseCalendar_s_gmtJapanese = v1;

  v3 = gmtJapaneseCalendar_s_gmtJapanese;
  v4 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v3 setTimeZone:v4];
}

+ (NSCalendar)gmtBuddhistCalendar
{
  if (gmtBuddhistCalendar_onceToken != -1)
  {
    +[CNDate gmtBuddhistCalendar];
  }

  v3 = gmtBuddhistCalendar_s_gmtBuddhist;

  return v3;
}

void __29__CNDate_gmtBuddhistCalendar__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DEE8]);
  v1 = [v0 initWithCalendarIdentifier:*MEMORY[0x1E695D820]];
  v2 = gmtBuddhistCalendar_s_gmtBuddhist;
  gmtBuddhistCalendar_s_gmtBuddhist = v1;

  v3 = gmtBuddhistCalendar_s_gmtBuddhist;
  v4 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v3 setTimeZone:v4];
}

+ (NSCalendar)gmtIslamicCalendar
{
  if (gmtIslamicCalendar_onceToken != -1)
  {
    +[CNDate gmtIslamicCalendar];
  }

  v3 = gmtIslamicCalendar_s_gmtIslamic;

  return v3;
}

void __28__CNDate_gmtIslamicCalendar__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DEE8]);
  v1 = [v0 initWithCalendarIdentifier:*MEMORY[0x1E695D878]];
  v2 = gmtIslamicCalendar_s_gmtIslamic;
  gmtIslamicCalendar_s_gmtIslamic = v1;

  v3 = gmtIslamicCalendar_s_gmtIslamic;
  v4 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v3 setTimeZone:v4];
}

+ (NSCalendar)gmtChineseCalendar
{
  if (gmtChineseCalendar_onceToken != -1)
  {
    +[CNDate gmtChineseCalendar];
  }

  v3 = gmtChineseCalendar_s_gmtChinese;

  return v3;
}

void __28__CNDate_gmtChineseCalendar__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DEE8]);
  v1 = [v0 initWithCalendarIdentifier:*MEMORY[0x1E695D828]];
  v2 = gmtChineseCalendar_s_gmtChinese;
  gmtChineseCalendar_s_gmtChinese = v1;

  v3 = gmtChineseCalendar_s_gmtChinese;
  v4 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v3 setTimeZone:v4];
}

+ (id)dateFromDayComponents:(id)components
{
  if (components)
  {
    componentsCopy = components;
    gmtGregorianCalendar = [self gmtGregorianCalendar];
    v6 = [componentsCopy copy];

    [v6 setHour:12];
    [v6 setMinute:0];
    [v6 setSecond:0];
    timeZone = [gmtGregorianCalendar timeZone];
    [v6 setTimeZone:timeZone];

    if ([v6 year] == 0x7FFFFFFFFFFFFFFFLL)
    {
      [getIntlUtilityClass_0[0]() setYearlessYear:v6 forCalendar:gmtGregorianCalendar];
    }

    v8 = [gmtGregorianCalendar dateFromComponents:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)dayComponentsFromDate:(id)date
{
  if (date)
  {
    dateCopy = date;
    gmtGregorianCalendar = [self gmtGregorianCalendar];
    v6 = [gmtGregorianCalendar components:30 fromDate:dateCopy];

    if ([getIntlUtilityClass_0[0]() isYearlessDate:v6 forCalendar:gmtGregorianCalendar])
    {
      [v6 setYear:0x7FFFFFFFFFFFFFFFLL];
    }

    if ([v6 era] == 1)
    {
      [v6 setEra:0x7FFFFFFFFFFFFFFFLL];
    }

    [v6 setCalendar:gmtGregorianCalendar];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end