@interface CNUIDate
+ (BOOL)isYearlessComponents:(id)a3;
+ (id)GMTComponentsFromDate:(id)a3 sourceCalendar:(id)a4;
+ (id)availableAlternateCalendars;
+ (id)componentsFromDate:(id)a3 sourceCalendar:(id)a4 destinationCalendar:(id)a5;
+ (id)currentCalendarGMT;
+ (id)dateByNormalizingToGMT:(id)a3;
+ (id)dateFromComponents:(id)a3 destinationCalendar:(id)a4;
+ (id)gregorianCalendarGMT;
+ (id)yearlessComponentsFromDate:(id)a3 calendar:(id)a4;
+ (id)yearlessGregorianComponentsFromGMTDate:(id)a3;
+ (void)initialize;
@end

@implementation CNUIDate

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:a1 selector:sel_localeDidChange_ name:*MEMORY[0x1E695D8F0] object:0];

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

+ (id)GMTComponentsFromDate:(id)a3 sourceCalendar:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 gregorianCalendarGMT];
  v9 = [a1 componentsFromDate:v7 sourceCalendar:v6 destinationCalendar:v8];

  return v9;
}

+ (id)componentsFromDate:(id)a3 sourceCalendar:(id)a4 destinationCalendar:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [a5 copy];
  v11 = [v8 timeZone];
  [v10 setTimeZone:v11];

  v12 = [v8 components:1048606 fromDate:v9];

  if ([CNUIDate isYearlessComponents:v12])
  {
    [a1 yearlessComponentsFromDate:v9 calendar:v10];
  }

  else
  {
    [v10 components:1048606 fromDate:v9];
  }
  v13 = ;

  return v13;
}

+ (id)yearlessGregorianComponentsFromGMTDate:(id)a3
{
  v4 = a3;
  v5 = [a1 gregorianCalendarGMT];
  v6 = [a1 yearlessComponentsFromDate:v4 calendar:v5];

  return v6;
}

+ (id)yearlessComponentsFromDate:(id)a3 calendar:(id)a4
{
  v5 = a4;
  v6 = [v5 components:24 fromDate:a3];
  [v6 setCalendar:v5];

  return v6;
}

+ (id)dateFromComponents:(id)a3 destinationCalendar:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = v7;
    v9 = [v7 copy];

    v10 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
    [v9 setTimeZone:v10];
  }

  else
  {
    v9 = +[CNUIDate gregorianCalendarGMT];
  }

  v11 = [v6 copy];
  [v11 setHour:12];
  [v11 setMinute:0];
  [v11 setSecond:0];
  v12 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v11 setTimeZone:v12];

  if ([CNUIDate isYearlessComponents:v11])
  {
    v13 = [v11 calendar];

    if (!v13)
    {
      v14 = [a1 currentCalendarGMT];
      [v11 setCalendar:v14];
    }

    v15 = [v9 calendarIdentifier];
    v16 = [v15 isEqual:*MEMORY[0x1E695D838]];

    if ((v16 & 1) == 0)
    {
      v26 = 0;
      v17 = [MEMORY[0x1E695DF00] distantFuture];
      [v9 getEra:&v26 year:0 month:0 day:0 fromDate:v17];

      [v11 setEra:v26];
    }

    [MEMORY[0x1E69AAE08] setYearlessYear:v11 forCalendar:v9];
    v18 = [v9 dateFromComponents:v11];
    goto LABEL_10;
  }

  if (v9)
  {
    v20 = [v11 date];
    v21 = [v9 components:2097182 fromDate:v20];

    v22 = v9;
    v23 = v21;
  }

  else
  {
    v25 = [v11 calendar];

    if (v25)
    {
      v18 = [v11 date];
LABEL_10:
      v19 = v18;
      goto LABEL_14;
    }

    v22 = [a1 currentCalendarGMT];
    v21 = v22;
    v23 = v11;
  }

  v19 = [v22 dateFromComponents:v23];

LABEL_14:

  return v19;
}

+ (id)dateByNormalizingToGMT:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x1E695DEE8];
    v4 = a3;
    v5 = [v3 currentCalendar];
    v6 = [v5 components:30 fromDate:v4];

    [v6 setHour:12];
    [v6 setMinute:0];
    [v6 setSecond:0];
    v7 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
    [v5 setTimeZone:v7];

    v8 = [v5 dateFromComponents:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)isYearlessComponents:(id)a3
{
  v3 = a3;
  if ([v3 year] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 1;
  }

  else
  {
    v5 = MEMORY[0x1E69AAE08];
    v6 = [v3 calendar];
    v4 = [v5 isYearlessDate:v3 forCalendar:v6];
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
  v5 = [v3 currentLocale];
  v6 = [v5 localeIdentifier];
  v7 = [v2 lunarCalendarsForLocaleID:v6];
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