@interface CNUIDate
+ (BOOL)isYearlessComponents:(id)components;
+ (id)GMTComponentsFromDate:(id)date sourceCalendar:(id)calendar;
+ (id)availableAlternateCalendars;
+ (id)componentsFromDate:(id)date sourceCalendar:(id)calendar destinationCalendar:(id)destinationCalendar;
+ (id)currentCalendarGMT;
+ (id)dateByNormalizingToGMT:(id)t;
+ (id)dateFromComponents:(id)components destinationCalendar:(id)calendar;
+ (id)gregorianCalendarGMT;
+ (id)yearlessComponentsFromDate:(id)date calendar:(id)calendar;
+ (id)yearlessGregorianComponentsFromGMTDate:(id)date;
+ (void)initialize;
@end

@implementation CNUIDate

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel_localeDidChange_ name:*MEMORY[0x1E695D8F0] object:0];

    calendarQueue = dispatch_queue_create(0, 0);

    MEMORY[0x1EEE66BB8]();
  }
}

void __28__CNUIDate_localeDidChange___block_invoke()
{
  v0 = currentCalendar;
  currentCalendar = 0;
}

+ (id)currentCalendarGMT
{
  dispatch_sync(calendarQueue, &__block_literal_global_3);
  v2 = currentCalendar;

  return v2;
}

void __30__CNUIDate_currentCalendarGMT__block_invoke()
{
  if (!currentCalendar)
  {
    v0 = [MEMORY[0x1E695DEE8] currentCalendar];
    v1 = currentCalendar;
    currentCalendar = v0;

    v2 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
    [currentCalendar setTimeZone:v2];
  }
}

+ (id)gregorianCalendarGMT
{
  if (gregorianCalendarGMT_onceToken != -1)
  {
    +[CNUIDate gregorianCalendarGMT];
  }

  v3 = gregorianCalendarGMT_calendar;

  return v3;
}

void __32__CNUIDate_gregorianCalendarGMT__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DEE8]);
  v1 = [v0 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v2 = gregorianCalendarGMT_calendar;
  gregorianCalendarGMT_calendar = v1;

  v3 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [gregorianCalendarGMT_calendar setTimeZone:v3];
}

+ (id)GMTComponentsFromDate:(id)date sourceCalendar:(id)calendar
{
  calendarCopy = calendar;
  dateCopy = date;
  gregorianCalendarGMT = [self gregorianCalendarGMT];
  v9 = [self componentsFromDate:dateCopy sourceCalendar:calendarCopy destinationCalendar:gregorianCalendarGMT];

  return v9;
}

+ (id)componentsFromDate:(id)date sourceCalendar:(id)calendar destinationCalendar:(id)destinationCalendar
{
  calendarCopy = calendar;
  dateCopy = date;
  v10 = [destinationCalendar copy];
  timeZone = [calendarCopy timeZone];
  [v10 setTimeZone:timeZone];

  v12 = [calendarCopy components:1048606 fromDate:dateCopy];

  if ([CNUIDate isYearlessComponents:v12])
  {
    [self yearlessComponentsFromDate:dateCopy calendar:v10];
  }

  else
  {
    [v10 components:1048606 fromDate:dateCopy];
  }
  v13 = ;

  return v13;
}

+ (id)yearlessGregorianComponentsFromGMTDate:(id)date
{
  dateCopy = date;
  gregorianCalendarGMT = [self gregorianCalendarGMT];
  v6 = [self yearlessComponentsFromDate:dateCopy calendar:gregorianCalendarGMT];

  return v6;
}

+ (id)yearlessComponentsFromDate:(id)date calendar:(id)calendar
{
  calendarCopy = calendar;
  v6 = [calendarCopy components:24 fromDate:date];
  [v6 setCalendar:calendarCopy];

  return v6;
}

+ (id)dateFromComponents:(id)components destinationCalendar:(id)calendar
{
  componentsCopy = components;
  calendarCopy = calendar;
  if (calendarCopy)
  {
    v8 = calendarCopy;
    v9 = [calendarCopy copy];

    v10 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
    [v9 setTimeZone:v10];
  }

  else
  {
    v9 = +[CNUIDate gregorianCalendarGMT];
  }

  v11 = [componentsCopy copy];
  [v11 setHour:12];
  [v11 setMinute:0];
  [v11 setSecond:0];
  v12 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v11 setTimeZone:v12];

  if ([CNUIDate isYearlessComponents:v11])
  {
    calendar = [v11 calendar];

    if (!calendar)
    {
      currentCalendarGMT = [self currentCalendarGMT];
      [v11 setCalendar:currentCalendarGMT];
    }

    calendarIdentifier = [v9 calendarIdentifier];
    v16 = [calendarIdentifier isEqual:*MEMORY[0x1E695D838]];

    if ((v16 & 1) == 0)
    {
      v26 = 0;
      distantFuture = [MEMORY[0x1E695DF00] distantFuture];
      [v9 getEra:&v26 year:0 month:0 day:0 fromDate:distantFuture];

      [v11 setEra:v26];
    }

    [MEMORY[0x1E69AAE08] setYearlessYear:v11 forCalendar:v9];
    date2 = [v9 dateFromComponents:v11];
    goto LABEL_10;
  }

  if (v9)
  {
    date = [v11 date];
    v21 = [v9 components:2097182 fromDate:date];

    currentCalendarGMT2 = v9;
    v23 = v21;
  }

  else
  {
    calendar2 = [v11 calendar];

    if (calendar2)
    {
      date2 = [v11 date];
LABEL_10:
      v19 = date2;
      goto LABEL_14;
    }

    currentCalendarGMT2 = [self currentCalendarGMT];
    v21 = currentCalendarGMT2;
    v23 = v11;
  }

  v19 = [currentCalendarGMT2 dateFromComponents:v23];

LABEL_14:

  return v19;
}

+ (id)dateByNormalizingToGMT:(id)t
{
  if (t)
  {
    v3 = MEMORY[0x1E695DEE8];
    tCopy = t;
    currentCalendar = [v3 currentCalendar];
    v6 = [currentCalendar components:30 fromDate:tCopy];

    [v6 setHour:12];
    [v6 setMinute:0];
    [v6 setSecond:0];
    v7 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
    [currentCalendar setTimeZone:v7];

    v8 = [currentCalendar dateFromComponents:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)isYearlessComponents:(id)components
{
  componentsCopy = components;
  if ([componentsCopy year] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 1;
  }

  else
  {
    v5 = MEMORY[0x1E69AAE08];
    calendar = [componentsCopy calendar];
    v4 = [v5 isYearlessDate:componentsCopy forCalendar:calendar];
  }

  return v4;
}

+ (id)availableAlternateCalendars
{
  if (availableAlternateCalendars_cn_once_token_1 != -1)
  {
    +[CNUIDate availableAlternateCalendars];
  }

  v2 = MEMORY[0x1E69AAE08];
  v3 = MEMORY[0x1E695DF58];
  v4 = availableAlternateCalendars_cn_once_object_1;
  currentLocale = [v3 currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];
  v7 = [v2 lunarCalendarsForLocaleID:localeIdentifier];
  v8 = [v7 mutableCopy];

  [v8 removeObjectsInArray:v4];

  return v8;
}

void __39__CNUIDate_availableAlternateCalendars__block_invoke()
{
  v0 = availableAlternateCalendars_cn_once_object_1;
  availableAlternateCalendars_cn_once_object_1 = &unk_1F1646000;
}

@end