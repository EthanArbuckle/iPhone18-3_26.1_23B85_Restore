@interface CalDateLocalization
+ (BOOL)dateIsWeekend:(id)a3;
+ (BOOL)hasAMPM;
+ (BOOL)requiresSingularLocalizationForDate:(id)a3;
+ (BOOL)shouldUseHourMinutesWithoutAMPMForHours;
+ (BOOL)uses24HourTime;
+ (BOOL)weekdayIsWeekend:(int64_t)a3;
+ (__CFDateFormatter)_dateFormatterForKey:(id)a3;
+ (__CFLocale)createCFLocale;
+ (id)ICUFormatForKey:(id)a3;
+ (id)ICUFormats;
+ (id)_hourSymbolInFormat:(id)a3;
+ (id)calendarDayFormatter;
+ (id)dateFormatters;
+ (id)dateStringRepresentationForEventCompontentsStartDate:(id)a3 endDate:(id)a4 allDay:(BOOL)a5 timeZone:(id)a6;
+ (id)dateStringRepresentationForReminderStartDate:(id)a3 allDay:(BOOL)a4;
+ (id)formatKeyForHourString;
+ (id)longStringForDateAndTime:(id)a3 inTimeZone:(id)a4;
+ (id)sharedDateFormatter;
+ (id)timelineHourDateFormatter;
+ (id)weekendDays;
+ (void)generateAdditionalPrecodedFormatters:(id)a3;
+ (void)generateDerivedTimeFormats:(id)a3;
+ (void)generateLocalizedDateTimeFormats;
+ (void)generatePreferedOrders;
+ (void)generateStandardFormatters:(id)a3;
+ (void)initializeFormatters;
+ (void)rebuildFormatters;
+ (void)rebuildWeekendDays;
+ (void)setupFormat:(id)a3 forKey:(id)a4 locale:(id)a5 standalone:(BOOL)a6;
+ (void)setupFormatter:(__CFDateFormatter *)a3 forKey:(id)a4;
@end

@implementation CalDateLocalization

+ (void)initializeFormatters
{
  obj = objc_opt_class();
  objc_sync_enter(obj);
  if ((__FormattersInitialized & 1) == 0)
  {
    __FormattersInitialized = 1;
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = __ICUFormats;
    __ICUFormats = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = __DateFormatters;
    __DateFormatters = v5;

    [a1 generateLocalizedDateTimeFormats];
  }

  objc_sync_exit(obj);
}

+ (void)rebuildFormatters
{
  obj = objc_opt_class();
  objc_sync_enter(obj);
  v3 = __SharedFormatter;
  __SharedFormatter = 0;

  v4 = __CalendarDayFormatter;
  __CalendarDayFormatter = 0;

  [a1 generateLocalizedDateTimeFormats];
  objc_sync_exit(obj);
}

+ (void)rebuildWeekendDays
{
  obj = objc_opt_class();
  objc_sync_enter(obj);
  v2 = __WeekendDays;
  __WeekendDays = 0;

  objc_sync_exit(obj);
}

+ (__CFLocale)createCFLocale
{
  v2 = [a1 locale];
  v3 = [v2 localeIdentifier];

  v4 = CFLocaleCreate(*MEMORY[0x1E695E480], v3);
  return v4;
}

+ (id)sharedDateFormatter
{
  v3 = objc_opt_class();
  objc_sync_enter(v3);
  v4 = __SharedFormatter;
  if (!__SharedFormatter)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v6 = __SharedFormatter;
    __SharedFormatter = v5;

    [__SharedFormatter setDateFormat:0];
    [__SharedFormatter setDateStyle:0];
    [__SharedFormatter setTimeStyle:0];
    v7 = __SharedFormatter;
    v8 = [a1 locale];
    [v7 setLocale:v8];

    v9 = __SharedFormatter;
    v10 = [MEMORY[0x1E695DFE8] defaultTimeZone];
    [v9 setTimeZone:v10];

    v4 = __SharedFormatter;
  }

  v11 = v4;
  objc_sync_exit(v3);

  return v11;
}

+ (id)timelineHourDateFormatter
{
  v3 = objc_opt_class();
  objc_sync_enter(v3);
  v4 = __TimelineHourFormatter;
  if (!__TimelineHourFormatter)
  {
    v5 = objc_opt_new();
    v6 = [MEMORY[0x1E695DEE8] currentCalendar];
    [v5 setCalendar:v6];

    v7 = [MEMORY[0x1E695DFE8] defaultTimeZone];
    [v5 setTimeZone:v7];

    v8 = [a1 locale];
    [v5 setLocale:v8];

    [v5 setLocalizedDateFormatFromTemplate:@"j"];
    v9 = __TimelineHourFormatter;
    __TimelineHourFormatter = v5;

    v4 = __TimelineHourFormatter;
  }

  v10 = v4;
  objc_sync_exit(v3);

  return v10;
}

+ (id)calendarDayFormatter
{
  v3 = objc_opt_class();
  objc_sync_enter(v3);
  v4 = __CalendarDayFormatter;
  if (!__CalendarDayFormatter)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v6 = __CalendarDayFormatter;
    __CalendarDayFormatter = v5;

    [__CalendarDayFormatter setNumberStyle:1];
    v7 = __CalendarDayFormatter;
    v8 = [a1 locale];
    [v7 setLocale:v8];

    v4 = __CalendarDayFormatter;
  }

  v9 = v4;
  objc_sync_exit(v3);

  return v9;
}

+ (id)weekendDays
{
  v3 = objc_opt_class();
  objc_sync_enter(v3);
  v4 = __WeekendDays;
  if (!__WeekendDays)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = __WeekendDays;
    __WeekendDays = v5;

    v7 = [a1 locale];
    v8 = [v7 localeIdentifier];
    [v8 UTF8String];
    ucal_open();

    v9 = 1;
    v10 = MEMORY[0x1E695E110];
    v11 = MEMORY[0x1E695E118];
    do
    {
      if (ucal_getDayOfWeekType() == 1)
      {
        v12 = v11;
      }

      else
      {
        v12 = v10;
      }

      [__WeekendDays addObject:v12];
      ++v9;
    }

    while (v9 != 8);
    ucal_close();
    v4 = __WeekendDays;
  }

  v13 = v4;
  objc_sync_exit(v3);

  return v13;
}

+ (BOOL)dateIsWeekend:(id)a3
{
  v4 = a3;
  v5 = +[CalChronometry activeCalendar];
  v6 = [v4 weekdayInCalendar:v5];

  LOBYTE(a1) = [a1 weekdayIsWeekend:v6];
  return a1;
}

+ (BOOL)weekdayIsWeekend:(int64_t)a3
{
  v3 = a3 - 1;
  if (a3 < 1)
  {
    return 0;
  }

  v5 = [a1 weekendDays];
  v6 = [v5 count];

  if (v3 > v6)
  {
    return 0;
  }

  v8 = [a1 weekendDays];
  v9 = [v8 objectAtIndex:v3];
  v10 = [v9 BOOLValue];

  return v10;
}

+ (BOOL)hasAMPM
{
  v3 = objc_opt_class();
  objc_sync_enter(v3);
  v4 = [a1 sharedDateFormatter];
  v5 = [v4 AMSymbol];
  if ([v5 length])
  {
    v6 = [v4 PMSymbol];
    v7 = [v6 length] != 0;
  }

  else
  {
    v7 = 0;
  }

  objc_sync_exit(v3);
  return v7;
}

+ (BOOL)uses24HourTime
{
  v3 = objc_opt_class();
  objc_sync_enter(v3);
  v4 = [a1 ICUFormats];
  v5 = [v4 objectForKey:@"CALShortTimeFormat"];

  v6 = [v5 rangeOfString:@"H"] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v5, "rangeOfString:", @"k") != 0x7FFFFFFFFFFFFFFFLL;
  objc_sync_exit(v3);

  return v6;
}

+ (BOOL)shouldUseHourMinutesWithoutAMPMForHours
{
  if (![a1 hasAMPM])
  {
    return 1;
  }

  return [a1 uses24HourTime];
}

+ (id)formatKeyForHourString
{
  v2 = [a1 shouldUseHourMinutesWithoutAMPMForHours];
  v3 = CALHourMinutesWithoutAMPMFormat;
  if (!v2)
  {
    v3 = CALHourFormat;
  }

  v4 = *v3;

  return v4;
}

+ (BOOL)requiresSingularLocalizationForDate:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v5 setCalendar:v4];
  [v5 setLocalizedDateFormatFromTemplate:@"j"];
  v6 = [v5 stringFromDate:v3];
  v7 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  v8 = [v7 invertedSet];

  v9 = [v6 componentsSeparatedByCharactersInSet:v8];
  v10 = [v9 componentsJoinedByString:&stru_1F379FFA8];

  v11 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v12 = [v11 numberFromString:v10];
  v13 = [v12 intValue];
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = [v4 component:32 fromDate:v3];
  }

  return v14 == 1;
}

+ (void)setupFormatter:(__CFDateFormatter *)a3 forKey:(id)a4
{
  v5 = a4;
  v6 = CFDateFormatterGetFormat(a3);
  [__DateFormatters setObject:a3 forKey:v5];
  [__ICUFormats setObject:v6 forKey:v5];
}

+ (void)setupFormat:(id)a3 forKey:(id)a4 locale:(id)a5 standalone:(BOOL)a6
{
  v6 = a6;
  v12 = a4;
  v10 = a3;
  v11 = CFDateFormatterCreate(0, a5, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  CFDateFormatterSetFormat(v11, v10);

  if (v6)
  {
    CFDateFormatterSetProperty(v11, @"kCFDateFormatterFormattingContextKey", &unk_1F37B05B0);
  }

  [a1 setupFormatter:v11 forKey:v12];
  CFRelease(v11);
}

+ (void)generateStandardFormatters:(id)a3
{
  v3 = a3;
  v4 = CFDateFormatterCreate(0, v3, kCFDateFormatterFullStyle, kCFDateFormatterFullStyle);
  [CalDateLocalization setupFormatter:v4 forKey:@"CALFullDateAndTimeFormat"];
  CFRelease(v4);
  v5 = CFDateFormatterCreate(0, v3, kCFDateFormatterShortStyle, kCFDateFormatterShortStyle);
  [CalDateLocalization setupFormatter:v5 forKey:@"CALShortDateAndTimeFormat"];
  CFRelease(v5);
  v6 = CFDateFormatterCreate(0, v3, kCFDateFormatterFullStyle, kCFDateFormatterNoStyle);
  [CalDateLocalization setupFormatter:v6 forKey:@"CALFullDateFormat"];
  CFRelease(v6);
  v7 = CFDateFormatterCreate(0, v3, kCFDateFormatterLongStyle, kCFDateFormatterNoStyle);
  [CalDateLocalization setupFormatter:v7 forKey:@"CALLongDateFormat"];
  CFRelease(v7);
  v8 = CFDateFormatterCreate(0, v3, kCFDateFormatterMediumStyle, kCFDateFormatterNoStyle);
  [CalDateLocalization setupFormatter:v8 forKey:@"CALAbbrevDateFormat"];
  CFRelease(v8);
  v9 = CFDateFormatterCreate(0, v3, kCFDateFormatterShortStyle, kCFDateFormatterNoStyle);
  [CalDateLocalization setupFormatter:v9 forKey:@"CALShortDateFormat"];
  CFRelease(v9);
  v10 = CFDateFormatterCreate(0, v3, kCFDateFormatterNoStyle, kCFDateFormatterFullStyle);
  [CalDateLocalization setupFormatter:v10 forKey:@"CALFullTimeFormat"];
  CFRelease(v10);
  v11 = CFDateFormatterCreate(0, v3, kCFDateFormatterNoStyle, kCFDateFormatterShortStyle);

  [CalDateLocalization setupFormatter:v11 forKey:@"CALShortTimeFormat"];

  CFRelease(v11);
}

+ (void)generateAdditionalPrecodedFormatters:(id)a3
{
  v7 = a3;
  [CalDateLocalization setupFormatTemplate:@"j" forKey:@"CALHourFormat" locale:v7];
  [CalDateLocalization setupFormat:@"a" forKey:@"CALAMPMFormat" locale:v7 standalone:0];
  [CalDateLocalization setupFormatTemplate:@"d" forKey:@"CALDayOfMonthFormat" locale:v7];
  [CalDateLocalization setupFormatTemplate:@"y" forKey:@"CALFullYearFormat" locale:v7];
  [CalDateLocalization setupFormatTemplate:@"LLL" forKey:@"CALAbbrevMonthFormat" locale:v7 standalone:1];
  [CalDateLocalization setupFormatTemplate:@"LLLL" forKey:@"CALFullMonthFormat" locale:v7 standalone:1];
  [CalDateLocalization setupFormatTemplate:@"cccc" forKey:@"CALFullDayOfWeekFormat" locale:v7];
  [CalDateLocalization setupFormatTemplate:@"ccc" forKey:@"CALAbbrevDayOfWeekFormat" locale:v7];
  [CalDateLocalization setupFormatTemplate:@"EEEEd" forKey:@"CALLongDayOfWeekWithDayOfMonthFormat" locale:v7];
  [CalDateLocalization setupFormatTemplate:@"yMMMMEEEd" forKey:@"CALAbbrevDayOfWeekWithFullDateFormat" locale:v7];
  [CalDateLocalization setupFormatTemplate:@"yMMMEd" forKey:@"CALAbbrevDayOfWeekWithAbbrevDateFormat" locale:v7];
  [CalDateLocalization setupFormatTemplate:@"MMMMEEEEd" forKey:@"CALFullDateWithoutYearFormat" locale:v7];
  [CalDateLocalization setupFormatTemplate:@"MMMEEEEd" forKey:@"CALLongDayOfWeekAbbrevDateWithoutYearFormat" locale:v7];
  [CalDateLocalization setupFormatTemplate:@"MMMMEEEd" forKey:@"CALAbbrevDayOfWeekWithFullDateWithoutYearFormat" locale:v7];
  [CalDateLocalization setupFormatTemplate:@"MMMEEEd" forKey:@"CALAbbrevDateWithoutYearFormat" locale:v7];
  [CalDateLocalization setupFormatTemplate:@"MMMMd" forKey:@"CALFullMonthWithDay" locale:v7];
  [CalDateLocalization setupFormatTemplate:@"yMMMM" forKey:@"CALFullYearMonth" locale:v7 standalone:1];
  [CalDateLocalization setupFormatTemplate:@"MMMd" forKey:@"CALAbbrevMonthWithDay" locale:v7];
  [CalDateLocalization setupFormatTemplate:@"Md" forKey:@"CALShortMonthWithDay" locale:v7];
  v8[0] = 0;
  v8[1] = 0;
  v4 = MEMORY[0x1E696AD60];
  v5 = _GetFormatAnd_d_FieldRangeFor_EEEd(v7, v8);
  v6 = [v4 stringWithString:v5];

  if ([v6 length])
  {
    [a1 setupFormat:v6 forKey:@"CALAbbrevDayOfWeekWithDayOfMonthFormat" locale:v7 standalone:0];
  }
}

+ (id)_hourSymbolInFormat:(id)a3
{
  v3 = a3;
  v4 = @"HH";
  if ([v3 rangeOfString:@"HH"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = @"H";
    if ([v3 rangeOfString:@"H"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = @"KK";
      if ([v3 rangeOfString:@"KK"] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v4 = @"K";
        if ([v3 rangeOfString:@"K"] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v4 = @"kk";
          if ([v3 rangeOfString:@"kk"] == 0x7FFFFFFFFFFFFFFFLL)
          {
            v4 = @"k";
            if ([v3 rangeOfString:@"k"] == 0x7FFFFFFFFFFFFFFFLL)
            {
              v4 = @"hh";
              if ([v3 rangeOfString:@"hh"] == 0x7FFFFFFFFFFFFFFFLL)
              {
                v4 = @"h";
                if ([v3 rangeOfString:@"h"] == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v4 = 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v4;
}

+ (void)generateDerivedTimeFormats:(id)a3
{
  v18 = a3;
  v4 = [a1 ICUFormats];
  v5 = [v4 objectForKey:@"CALShortTimeFormat"];

  v6 = [a1 _hourSymbolInFormat:v5];
  v7 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"jmm" options:0 locale:v18];
  v8 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"a."];
  v9 = [v7 stringByTrimmingCharactersInSet:v8];

  v10 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v11 = [v9 stringByTrimmingCharactersInSet:v10];

  v12 = [a1 _hourSymbolInFormat:v11];
  if ([v6 length] && objc_msgSend(v12, "length") && (objc_msgSend(v12, "isEqualToString:", v6) & 1) == 0)
  {
    v13 = [v11 stringByReplacingOccurrencesOfString:v12 withString:v6];

    v11 = v13;
  }

  if (![v6 length])
  {
    v14 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"j" options:0 locale:v18];

    v15 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"a."];
    v16 = [v14 stringByTrimmingCharactersInSet:v15];

    v17 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v6 = [v16 stringByTrimmingCharactersInSet:v17];
  }

  [CalDateLocalization setupFormat:v6 forKey:@"CALHourWithoutAMPMFormat" locale:v18 standalone:0];
  [CalDateLocalization setupFormat:v11 forKey:@"CALHourMinutesWithoutAMPMFormat" locale:v18 standalone:0];
}

+ (void)generateLocalizedDateTimeFormats
{
  if (__FormattersInitialized == 1)
  {
    [__ICUFormats removeAllObjects];
    [__DateFormatters removeAllObjects];
    if (_formattersCache)
    {
      [_formattersCache removeAllObjects];
    }

    else
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v5 = _formattersCache;
      _formattersCache = v4;
    }

    v6 = [a1 locale];
    [a1 generateStandardFormatters:v6];
    [a1 generateAdditionalPrecodedFormatters:v6];
    [a1 generateDerivedTimeFormats:v6];
    [a1 generatePreferedOrders];
  }
}

+ (void)generatePreferedOrders
{
  if (!_datesFormats)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"CALFullDateFormat", @"CALLongDateFormat", @"CALAbbrevDateFormat", @"CALShortDateFormat", @"CALShortMonthWithDay", 0}];
    v3 = _datesFormats;
    _datesFormats = v2;
  }

  if (!_datesWithYear)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"CALFullDateFormat", @"CALLongDateFormat", @"CALAbbrevDateFormat", @"CALShortDateFormat", 0}];
    v5 = _datesWithYear;
    _datesWithYear = v4;
  }

  if (!_fullDatesWithoutYear)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"CALFullDateWithoutYearFormat", @"CALFullMonthWithDay", @"CALAbbrevDateWithoutYearFormat", @"CALAbbrevMonthWithDay", @"CALShortMonthWithDay", 0}];
    v7 = _fullDatesWithoutYear;
    _fullDatesWithoutYear = v6;
  }

  if (!_datesWithoutYear)
  {
    _datesWithoutYear = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"CALFullDateWithoutYearFormat", @"CALAbbrevDateWithoutYearFormat", @"CALShortMonthWithDay", 0}];

    MEMORY[0x1EEE66BB8]();
  }
}

+ (id)ICUFormats
{
  [a1 initializeFormatters];
  v2 = __ICUFormats;

  return v2;
}

+ (id)dateFormatters
{
  [a1 initializeFormatters];
  v2 = __DateFormatters;

  return v2;
}

+ (id)ICUFormatForKey:(id)a3
{
  v4 = a3;
  v5 = [a1 ICUFormats];
  v6 = [v5 objectForKey:v4];

  return v6;
}

+ (__CFDateFormatter)_dateFormatterForKey:(id)a3
{
  v4 = a3;
  v5 = [a1 dateFormatters];
  v6 = [v5 objectForKey:v4];

  return v6;
}

+ (id)longStringForDateAndTime:(id)a3 inTimeZone:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 createCFLocale];
  v9 = CFDateFormatterCreate(0, v8, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  v10 = v9;
  if (v6)
  {
    v11 = @"EEE  MMM d, jmm z";
  }

  else
  {
    v11 = @"EEE  MMM d, jmm";
  }

  Locale = CFDateFormatterGetLocale(v9);
  DateFormatFromTemplate = CFDateFormatterCreateDateFormatFromTemplate(0, v11, 0, Locale);
  CFDateFormatterSetFormat(v10, DateFormatFromTemplate);
  CFDateFormatterSetProperty(v10, *MEMORY[0x1E695E5D8], v6);

  StringWithDate = CFDateFormatterCreateStringWithDate(0, v10, v7);
  CFRelease(DateFormatFromTemplate);
  CFRelease(v10);
  CFRelease(v8);

  return StringWithDate;
}

+ (id)dateStringRepresentationForEventCompontentsStartDate:(id)a3 endDate:(id)a4 allDay:(BOOL)a5 timeZone:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CalendarFoundation"];
  v14 = 0;
  if (v10 && v11)
  {
    if (v12)
    {
      v15 = v7;
    }

    else
    {
      v15 = 1;
    }

    if (!v12)
    {
      v12 = [MEMORY[0x1E695DFE8] defaultTimeZone];
    }

    v12 = v12;
    v16 = [MEMORY[0x1E695DEE8] currentCalendar];
    [v16 setTimeZone:v12];
    v41 = v16;
    v17 = [v16 components:30 fromDate:v10];
    v18 = [MEMORY[0x1E695DEE8] currentCalendar];
    [v18 setTimeZone:v12];
    if (v7)
    {
      v19 = [v11 dateByAddingTimeInterval:-1.0];

      v11 = v19;
    }

    [v18 components:30 fromDate:v11];
    v38 = v40 = v17;
    v20 = [v17 isEqual:?];
    v21 = objc_opt_new();
    v22 = [a1 locale];
    [v21 setLocale:v22];

    v39 = v18;
    if (v15)
    {
      [v21 setTimeZone:v12];
      [v21 setDateStyle:2];
      [v21 setTimeStyle:!v7];
      v23 = [v21 stringFromDate:v10];
      if (v20)
      {
        v24 = 0;
      }

      else
      {
        v24 = 2;
      }

      [v21 setDateStyle:v24];
      [v21 setTimeStyle:!v7];
      v25 = [v21 stringFromDate:v11];
      v26 = v7 & v20;
      v27 = MEMORY[0x1E696AEC0];
      if (v26 == 1)
      {
        v28 = [v13 localizedStringForKey:@"Scheduled: %@" value:&stru_1F379FFA8 table:0];
LABEL_27:
        v14 = [v27 localizedStringWithFormat:v28, v23, v37];
LABEL_28:

        goto LABEL_29;
      }

      v33 = @"Scheduled: %@ to %@";
      v34 = &stru_1F379FFA8;
    }

    else
    {
      v29 = [v12 isEqualToTimeZone:v12];
      [v21 setTimeZone:v12];
      if (v29)
      {
        [v21 setTimeStyle:1];
        [v21 setDateStyle:2];
        v23 = [v21 stringFromDate:v10];
        if (v20)
        {
          v30 = 0;
        }

        else
        {
          v30 = 2;
        }

        [v21 setDateStyle:v30];
        v25 = [v21 stringFromDate:v11];
        [v21 setLocalizedDateFormatFromTemplate:@"z"];
        v28 = [v21 stringFromDate:v10];
        v31 = MEMORY[0x1E696AEC0];
        v32 = [v13 localizedStringForKey:@"Scheduled: %@ to %@ value:%@" table:{&stru_1F379FFA8, 0}];
        v14 = [v31 localizedStringWithFormat:v32, v23, v25, v28];

        goto LABEL_28;
      }

      [v21 setLocalizedDateFormatFromTemplate:{@"MMM d, y h:mm a z"}];
      v23 = [v21 stringFromDate:v10];
      [v21 setTimeZone:v12];
      if (v20)
      {
        v35 = @"h:mm a z";
      }

      else
      {
        v35 = @"MMM d, y h:mm a z";
      }

      [v21 setLocalizedDateFormatFromTemplate:v35];
      v25 = [v21 stringFromDate:v11];
      v27 = MEMORY[0x1E696AEC0];
      v33 = @"Scheduled: %@ to %@ (with timezone information)";
      v34 = @"Scheduled: %@ to %@";
    }

    v28 = [v13 localizedStringForKey:v33 value:v34 table:0];
    v37 = v25;
    goto LABEL_27;
  }

LABEL_29:

  return v14;
}

+ (id)dateStringRepresentationForReminderStartDate:(id)a3 allDay:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [a1 locale];
  [v7 setLocale:v8];

  [v7 setDoesRelativeDateFormatting:1];
  [v7 setDateStyle:1];
  [v7 setTimeStyle:!v4];
  v9 = [v7 stringFromDate:v6];

  return v9;
}

+ (void)setupFormatTemplate:(NSObject *)a3 forKey:locale:standalone:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = [a2 localeIdentifier];
  v7 = 136315650;
  v8 = "+[CalDateLocalization setupFormatTemplate:forKey:locale:standalone:]";
  v9 = 2112;
  v10 = a1;
  v11 = 2112;
  v12 = v5;
  _os_log_error_impl(&dword_1B990D000, a3, OS_LOG_TYPE_ERROR, "%s ERROR: unable to generate format string from template %@ in locale %@", &v7, 0x20u);

  v6 = *MEMORY[0x1E69E9840];
}

@end