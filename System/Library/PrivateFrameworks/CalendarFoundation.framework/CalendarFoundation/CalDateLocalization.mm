@interface CalDateLocalization
+ (BOOL)dateIsWeekend:(id)weekend;
+ (BOOL)hasAMPM;
+ (BOOL)requiresSingularLocalizationForDate:(id)date;
+ (BOOL)shouldUseHourMinutesWithoutAMPMForHours;
+ (BOOL)uses24HourTime;
+ (BOOL)weekdayIsWeekend:(int64_t)weekend;
+ (__CFDateFormatter)_dateFormatterForKey:(id)key;
+ (__CFLocale)createCFLocale;
+ (id)ICUFormatForKey:(id)key;
+ (id)ICUFormats;
+ (id)_hourSymbolInFormat:(id)format;
+ (id)calendarDayFormatter;
+ (id)dateFormatters;
+ (id)dateStringRepresentationForEventCompontentsStartDate:(id)date endDate:(id)endDate allDay:(BOOL)day timeZone:(id)zone;
+ (id)dateStringRepresentationForReminderStartDate:(id)date allDay:(BOOL)day;
+ (id)formatKeyForHourString;
+ (id)longStringForDateAndTime:(id)time inTimeZone:(id)zone;
+ (id)sharedDateFormatter;
+ (id)timelineHourDateFormatter;
+ (id)weekendDays;
+ (void)generateAdditionalPrecodedFormatters:(id)formatters;
+ (void)generateDerivedTimeFormats:(id)formats;
+ (void)generateLocalizedDateTimeFormats;
+ (void)generatePreferedOrders;
+ (void)generateStandardFormatters:(id)formatters;
+ (void)initializeFormatters;
+ (void)rebuildFormatters;
+ (void)rebuildWeekendDays;
+ (void)setupFormat:(id)format forKey:(id)key locale:(id)locale standalone:(BOOL)standalone;
+ (void)setupFormatter:(__CFDateFormatter *)formatter forKey:(id)key;
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

    [self generateLocalizedDateTimeFormats];
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

  [self generateLocalizedDateTimeFormats];
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
  locale = [self locale];
  localeIdentifier = [locale localeIdentifier];

  v4 = CFLocaleCreate(*MEMORY[0x1E695E480], localeIdentifier);
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
    locale = [self locale];
    [v7 setLocale:locale];

    v9 = __SharedFormatter;
    defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
    [v9 setTimeZone:defaultTimeZone];

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
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    [v5 setCalendar:currentCalendar];

    defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
    [v5 setTimeZone:defaultTimeZone];

    locale = [self locale];
    [v5 setLocale:locale];

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
    locale = [self locale];
    [v7 setLocale:locale];

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

    locale = [self locale];
    localeIdentifier = [locale localeIdentifier];
    [localeIdentifier UTF8String];
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

+ (BOOL)dateIsWeekend:(id)weekend
{
  weekendCopy = weekend;
  v5 = +[CalChronometry activeCalendar];
  v6 = [weekendCopy weekdayInCalendar:v5];

  LOBYTE(self) = [self weekdayIsWeekend:v6];
  return self;
}

+ (BOOL)weekdayIsWeekend:(int64_t)weekend
{
  v3 = weekend - 1;
  if (weekend < 1)
  {
    return 0;
  }

  weekendDays = [self weekendDays];
  v6 = [weekendDays count];

  if (v3 > v6)
  {
    return 0;
  }

  weekendDays2 = [self weekendDays];
  v9 = [weekendDays2 objectAtIndex:v3];
  bOOLValue = [v9 BOOLValue];

  return bOOLValue;
}

+ (BOOL)hasAMPM
{
  v3 = objc_opt_class();
  objc_sync_enter(v3);
  sharedDateFormatter = [self sharedDateFormatter];
  aMSymbol = [sharedDateFormatter AMSymbol];
  if ([aMSymbol length])
  {
    pMSymbol = [sharedDateFormatter PMSymbol];
    v7 = [pMSymbol length] != 0;
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
  iCUFormats = [self ICUFormats];
  v5 = [iCUFormats objectForKey:@"CALShortTimeFormat"];

  v6 = [v5 rangeOfString:@"H"] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v5, "rangeOfString:", @"k") != 0x7FFFFFFFFFFFFFFFLL;
  objc_sync_exit(v3);

  return v6;
}

+ (BOOL)shouldUseHourMinutesWithoutAMPMForHours
{
  if (![self hasAMPM])
  {
    return 1;
  }

  return [self uses24HourTime];
}

+ (id)formatKeyForHourString
{
  shouldUseHourMinutesWithoutAMPMForHours = [self shouldUseHourMinutesWithoutAMPMForHours];
  v3 = CALHourMinutesWithoutAMPMFormat;
  if (!shouldUseHourMinutesWithoutAMPMForHours)
  {
    v3 = CALHourFormat;
  }

  v4 = *v3;

  return v4;
}

+ (BOOL)requiresSingularLocalizationForDate:(id)date
{
  dateCopy = date;
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v5 setCalendar:currentCalendar];
  [v5 setLocalizedDateFormatFromTemplate:@"j"];
  v6 = [v5 stringFromDate:dateCopy];
  decimalDigitCharacterSet = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  invertedSet = [decimalDigitCharacterSet invertedSet];

  v9 = [v6 componentsSeparatedByCharactersInSet:invertedSet];
  v10 = [v9 componentsJoinedByString:&stru_1F379FFA8];

  v11 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v12 = [v11 numberFromString:v10];
  intValue = [v12 intValue];
  if (intValue)
  {
    v14 = intValue;
  }

  else
  {
    v14 = [currentCalendar component:32 fromDate:dateCopy];
  }

  return v14 == 1;
}

+ (void)setupFormatter:(__CFDateFormatter *)formatter forKey:(id)key
{
  keyCopy = key;
  v6 = CFDateFormatterGetFormat(formatter);
  [__DateFormatters setObject:formatter forKey:keyCopy];
  [__ICUFormats setObject:v6 forKey:keyCopy];
}

+ (void)setupFormat:(id)format forKey:(id)key locale:(id)locale standalone:(BOOL)standalone
{
  standaloneCopy = standalone;
  keyCopy = key;
  formatCopy = format;
  v11 = CFDateFormatterCreate(0, locale, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  CFDateFormatterSetFormat(v11, formatCopy);

  if (standaloneCopy)
  {
    CFDateFormatterSetProperty(v11, @"kCFDateFormatterFormattingContextKey", &unk_1F37B05B0);
  }

  [self setupFormatter:v11 forKey:keyCopy];
  CFRelease(v11);
}

+ (void)generateStandardFormatters:(id)formatters
{
  formattersCopy = formatters;
  v4 = CFDateFormatterCreate(0, formattersCopy, kCFDateFormatterFullStyle, kCFDateFormatterFullStyle);
  [CalDateLocalization setupFormatter:v4 forKey:@"CALFullDateAndTimeFormat"];
  CFRelease(v4);
  v5 = CFDateFormatterCreate(0, formattersCopy, kCFDateFormatterShortStyle, kCFDateFormatterShortStyle);
  [CalDateLocalization setupFormatter:v5 forKey:@"CALShortDateAndTimeFormat"];
  CFRelease(v5);
  v6 = CFDateFormatterCreate(0, formattersCopy, kCFDateFormatterFullStyle, kCFDateFormatterNoStyle);
  [CalDateLocalization setupFormatter:v6 forKey:@"CALFullDateFormat"];
  CFRelease(v6);
  v7 = CFDateFormatterCreate(0, formattersCopy, kCFDateFormatterLongStyle, kCFDateFormatterNoStyle);
  [CalDateLocalization setupFormatter:v7 forKey:@"CALLongDateFormat"];
  CFRelease(v7);
  v8 = CFDateFormatterCreate(0, formattersCopy, kCFDateFormatterMediumStyle, kCFDateFormatterNoStyle);
  [CalDateLocalization setupFormatter:v8 forKey:@"CALAbbrevDateFormat"];
  CFRelease(v8);
  v9 = CFDateFormatterCreate(0, formattersCopy, kCFDateFormatterShortStyle, kCFDateFormatterNoStyle);
  [CalDateLocalization setupFormatter:v9 forKey:@"CALShortDateFormat"];
  CFRelease(v9);
  v10 = CFDateFormatterCreate(0, formattersCopy, kCFDateFormatterNoStyle, kCFDateFormatterFullStyle);
  [CalDateLocalization setupFormatter:v10 forKey:@"CALFullTimeFormat"];
  CFRelease(v10);
  v11 = CFDateFormatterCreate(0, formattersCopy, kCFDateFormatterNoStyle, kCFDateFormatterShortStyle);

  [CalDateLocalization setupFormatter:v11 forKey:@"CALShortTimeFormat"];

  CFRelease(v11);
}

+ (void)generateAdditionalPrecodedFormatters:(id)formatters
{
  formattersCopy = formatters;
  [CalDateLocalization setupFormatTemplate:@"j" forKey:@"CALHourFormat" locale:formattersCopy];
  [CalDateLocalization setupFormat:@"a" forKey:@"CALAMPMFormat" locale:formattersCopy standalone:0];
  [CalDateLocalization setupFormatTemplate:@"d" forKey:@"CALDayOfMonthFormat" locale:formattersCopy];
  [CalDateLocalization setupFormatTemplate:@"y" forKey:@"CALFullYearFormat" locale:formattersCopy];
  [CalDateLocalization setupFormatTemplate:@"LLL" forKey:@"CALAbbrevMonthFormat" locale:formattersCopy standalone:1];
  [CalDateLocalization setupFormatTemplate:@"LLLL" forKey:@"CALFullMonthFormat" locale:formattersCopy standalone:1];
  [CalDateLocalization setupFormatTemplate:@"cccc" forKey:@"CALFullDayOfWeekFormat" locale:formattersCopy];
  [CalDateLocalization setupFormatTemplate:@"ccc" forKey:@"CALAbbrevDayOfWeekFormat" locale:formattersCopy];
  [CalDateLocalization setupFormatTemplate:@"EEEEd" forKey:@"CALLongDayOfWeekWithDayOfMonthFormat" locale:formattersCopy];
  [CalDateLocalization setupFormatTemplate:@"yMMMMEEEd" forKey:@"CALAbbrevDayOfWeekWithFullDateFormat" locale:formattersCopy];
  [CalDateLocalization setupFormatTemplate:@"yMMMEd" forKey:@"CALAbbrevDayOfWeekWithAbbrevDateFormat" locale:formattersCopy];
  [CalDateLocalization setupFormatTemplate:@"MMMMEEEEd" forKey:@"CALFullDateWithoutYearFormat" locale:formattersCopy];
  [CalDateLocalization setupFormatTemplate:@"MMMEEEEd" forKey:@"CALLongDayOfWeekAbbrevDateWithoutYearFormat" locale:formattersCopy];
  [CalDateLocalization setupFormatTemplate:@"MMMMEEEd" forKey:@"CALAbbrevDayOfWeekWithFullDateWithoutYearFormat" locale:formattersCopy];
  [CalDateLocalization setupFormatTemplate:@"MMMEEEd" forKey:@"CALAbbrevDateWithoutYearFormat" locale:formattersCopy];
  [CalDateLocalization setupFormatTemplate:@"MMMMd" forKey:@"CALFullMonthWithDay" locale:formattersCopy];
  [CalDateLocalization setupFormatTemplate:@"yMMMM" forKey:@"CALFullYearMonth" locale:formattersCopy standalone:1];
  [CalDateLocalization setupFormatTemplate:@"MMMd" forKey:@"CALAbbrevMonthWithDay" locale:formattersCopy];
  [CalDateLocalization setupFormatTemplate:@"Md" forKey:@"CALShortMonthWithDay" locale:formattersCopy];
  v8[0] = 0;
  v8[1] = 0;
  v4 = MEMORY[0x1E696AD60];
  v5 = _GetFormatAnd_d_FieldRangeFor_EEEd(formattersCopy, v8);
  v6 = [v4 stringWithString:v5];

  if ([v6 length])
  {
    [self setupFormat:v6 forKey:@"CALAbbrevDayOfWeekWithDayOfMonthFormat" locale:formattersCopy standalone:0];
  }
}

+ (id)_hourSymbolInFormat:(id)format
{
  formatCopy = format;
  v4 = @"HH";
  if ([formatCopy rangeOfString:@"HH"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = @"H";
    if ([formatCopy rangeOfString:@"H"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = @"KK";
      if ([formatCopy rangeOfString:@"KK"] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v4 = @"K";
        if ([formatCopy rangeOfString:@"K"] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v4 = @"kk";
          if ([formatCopy rangeOfString:@"kk"] == 0x7FFFFFFFFFFFFFFFLL)
          {
            v4 = @"k";
            if ([formatCopy rangeOfString:@"k"] == 0x7FFFFFFFFFFFFFFFLL)
            {
              v4 = @"hh";
              if ([formatCopy rangeOfString:@"hh"] == 0x7FFFFFFFFFFFFFFFLL)
              {
                v4 = @"h";
                if ([formatCopy rangeOfString:@"h"] == 0x7FFFFFFFFFFFFFFFLL)
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

+ (void)generateDerivedTimeFormats:(id)formats
{
  formatsCopy = formats;
  iCUFormats = [self ICUFormats];
  v5 = [iCUFormats objectForKey:@"CALShortTimeFormat"];

  v6 = [self _hourSymbolInFormat:v5];
  v7 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"jmm" options:0 locale:formatsCopy];
  v8 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"a."];
  v9 = [v7 stringByTrimmingCharactersInSet:v8];

  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v11 = [v9 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  v12 = [self _hourSymbolInFormat:v11];
  if ([v6 length] && objc_msgSend(v12, "length") && (objc_msgSend(v12, "isEqualToString:", v6) & 1) == 0)
  {
    v13 = [v11 stringByReplacingOccurrencesOfString:v12 withString:v6];

    v11 = v13;
  }

  if (![v6 length])
  {
    v14 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"j" options:0 locale:formatsCopy];

    v15 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"a."];
    v16 = [v14 stringByTrimmingCharactersInSet:v15];

    whitespaceCharacterSet2 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v6 = [v16 stringByTrimmingCharactersInSet:whitespaceCharacterSet2];
  }

  [CalDateLocalization setupFormat:v6 forKey:@"CALHourWithoutAMPMFormat" locale:formatsCopy standalone:0];
  [CalDateLocalization setupFormat:v11 forKey:@"CALHourMinutesWithoutAMPMFormat" locale:formatsCopy standalone:0];
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

    locale = [self locale];
    [self generateStandardFormatters:locale];
    [self generateAdditionalPrecodedFormatters:locale];
    [self generateDerivedTimeFormats:locale];
    [self generatePreferedOrders];
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
  [self initializeFormatters];
  v2 = __ICUFormats;

  return v2;
}

+ (id)dateFormatters
{
  [self initializeFormatters];
  v2 = __DateFormatters;

  return v2;
}

+ (id)ICUFormatForKey:(id)key
{
  keyCopy = key;
  iCUFormats = [self ICUFormats];
  v6 = [iCUFormats objectForKey:keyCopy];

  return v6;
}

+ (__CFDateFormatter)_dateFormatterForKey:(id)key
{
  keyCopy = key;
  dateFormatters = [self dateFormatters];
  v6 = [dateFormatters objectForKey:keyCopy];

  return v6;
}

+ (id)longStringForDateAndTime:(id)time inTimeZone:(id)zone
{
  zoneCopy = zone;
  timeCopy = time;
  createCFLocale = [self createCFLocale];
  v9 = CFDateFormatterCreate(0, createCFLocale, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  v10 = v9;
  if (zoneCopy)
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
  CFDateFormatterSetProperty(v10, *MEMORY[0x1E695E5D8], zoneCopy);

  StringWithDate = CFDateFormatterCreateStringWithDate(0, v10, timeCopy);
  CFRelease(DateFormatFromTemplate);
  CFRelease(v10);
  CFRelease(createCFLocale);

  return StringWithDate;
}

+ (id)dateStringRepresentationForEventCompontentsStartDate:(id)date endDate:(id)endDate allDay:(BOOL)day timeZone:(id)zone
{
  dayCopy = day;
  dateCopy = date;
  endDateCopy = endDate;
  zoneCopy = zone;
  v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CalendarFoundation"];
  v14 = 0;
  if (dateCopy && endDateCopy)
  {
    if (zoneCopy)
    {
      v15 = dayCopy;
    }

    else
    {
      v15 = 1;
    }

    if (!zoneCopy)
    {
      zoneCopy = [MEMORY[0x1E695DFE8] defaultTimeZone];
    }

    zoneCopy = zoneCopy;
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    [currentCalendar setTimeZone:zoneCopy];
    v41 = currentCalendar;
    v17 = [currentCalendar components:30 fromDate:dateCopy];
    currentCalendar2 = [MEMORY[0x1E695DEE8] currentCalendar];
    [currentCalendar2 setTimeZone:zoneCopy];
    if (dayCopy)
    {
      v19 = [endDateCopy dateByAddingTimeInterval:-1.0];

      endDateCopy = v19;
    }

    [currentCalendar2 components:30 fromDate:endDateCopy];
    v38 = v40 = v17;
    v20 = [v17 isEqual:?];
    v21 = objc_opt_new();
    locale = [self locale];
    [v21 setLocale:locale];

    v39 = currentCalendar2;
    if (v15)
    {
      [v21 setTimeZone:zoneCopy];
      [v21 setDateStyle:2];
      [v21 setTimeStyle:!dayCopy];
      v23 = [v21 stringFromDate:dateCopy];
      if (v20)
      {
        v24 = 0;
      }

      else
      {
        v24 = 2;
      }

      [v21 setDateStyle:v24];
      [v21 setTimeStyle:!dayCopy];
      v25 = [v21 stringFromDate:endDateCopy];
      v26 = dayCopy & v20;
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
      v29 = [zoneCopy isEqualToTimeZone:zoneCopy];
      [v21 setTimeZone:zoneCopy];
      if (v29)
      {
        [v21 setTimeStyle:1];
        [v21 setDateStyle:2];
        v23 = [v21 stringFromDate:dateCopy];
        if (v20)
        {
          v30 = 0;
        }

        else
        {
          v30 = 2;
        }

        [v21 setDateStyle:v30];
        v25 = [v21 stringFromDate:endDateCopy];
        [v21 setLocalizedDateFormatFromTemplate:@"z"];
        v28 = [v21 stringFromDate:dateCopy];
        v31 = MEMORY[0x1E696AEC0];
        v32 = [v13 localizedStringForKey:@"Scheduled: %@ to %@ value:%@" table:{&stru_1F379FFA8, 0}];
        v14 = [v31 localizedStringWithFormat:v32, v23, v25, v28];

        goto LABEL_28;
      }

      [v21 setLocalizedDateFormatFromTemplate:{@"MMM d, y h:mm a z"}];
      v23 = [v21 stringFromDate:dateCopy];
      [v21 setTimeZone:zoneCopy];
      if (v20)
      {
        v35 = @"h:mm a z";
      }

      else
      {
        v35 = @"MMM d, y h:mm a z";
      }

      [v21 setLocalizedDateFormatFromTemplate:v35];
      v25 = [v21 stringFromDate:endDateCopy];
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

+ (id)dateStringRepresentationForReminderStartDate:(id)date allDay:(BOOL)day
{
  dayCopy = day;
  dateCopy = date;
  v7 = objc_opt_new();
  locale = [self locale];
  [v7 setLocale:locale];

  [v7 setDoesRelativeDateFormatting:1];
  [v7 setDateStyle:1];
  [v7 setTimeStyle:!dayCopy];
  v9 = [v7 stringFromDate:dateCopy];

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