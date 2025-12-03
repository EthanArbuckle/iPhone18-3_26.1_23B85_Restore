@interface CLSCalendar
+ (BOOL)currentLocaleSupportsSeasons;
+ (BOOL)isCountryCodePartOfNorthernHemisphere:(id)hemisphere;
+ (BOOL)isCountryCodePartOfSouthernHemisphere:(id)hemisphere;
+ (BOOL)isDateValid:(id)valid;
+ (BOOL)isFirstMonthOfSeasonForLocalDate:(id)date;
+ (BOOL)isFirstTenDaysOfSeasonForLocalDate:(id)date;
+ (BOOL)isFirstTwoWeeksOfMonthForLocalDate:(id)date;
+ (BOOL)isLastMonthOfSeasonForLocalDate:(id)date;
+ (BOOL)isLastTwoWeeksOfMonthForLocalDate:(id)date;
+ (BOOL)isLastWeekOfMonthForLocalDate:(id)date;
+ (BOOL)isLeapYearForDate:(id)date withCalendarIdentifier:(id)identifier;
+ (BOOL)isMiddleMonthOfSeasonForLocalDate:(id)date;
+ (BOOL)isSecondHalfOfSeasonForLocalDate:(id)date;
+ (BOOL)supportsSeasonsWithLocale:(id)locale;
+ (_NSRange)rangeOfUnit:(unint64_t)unit inUnit:(unint64_t)inUnit forDate:(id)date withCalendarIdentifier:(id)identifier;
+ (id)_calendarForIdentifier:(id)identifier;
+ (id)components:(unint64_t)components fromDate:(id)date toDate:(id)toDate options:(unint64_t)options;
+ (id)components:(unint64_t)components fromDate:(id)date withCalendarIdentifier:(id)identifier;
+ (id)components:(unint64_t)components fromDateComponents:(id)dateComponents toDateComponents:(id)toDateComponents options:(unint64_t)options;
+ (id)componentsFromDate:(id)date inTimeZone:(id)zone;
+ (id)currentLocalDate;
+ (id)dateByAddingDays:(int64_t)days toDate:(id)date withCalendarIdentifier:(id)identifier;
+ (id)dateByAddingHours:(int64_t)hours toDate:(id)date;
+ (id)dateByAddingMonths:(int64_t)months toDate:(id)date;
+ (id)dateByAddingWeeksOfYear:(int64_t)year toDate:(id)date;
+ (id)dateByAddingYears:(int64_t)years toDate:(id)date withCalendarIdentifier:(id)identifier;
+ (id)dateBySettingYear:(int64_t)year ofDate:(id)date;
+ (id)dateComponentsWithLocalDate:(id)date;
+ (id)dateComponentsWithUTCDate:(id)date localDate:(id)localDate;
+ (id)dateFromComponents:(id)components inTimeZone:(id)zone withCalendarIdentifier:(id)identifier;
+ (id)dateFromComponents:(unint64_t)components ofDate:(id)date;
+ (id)endOfDayForDate:(id)date;
+ (id)endOfMonthForDate:(id)date;
+ (id)endOfWeekForDate:(id)date;
+ (id)localDateFormatterWithFormat:(id)format;
+ (id)localDateFromUniversalDate:(id)date;
+ (id)localDateFromUniversalDate:(id)date atLocation:(id)location;
+ (id)localDateFromUniversalDate:(id)date inTimeZone:(id)zone;
+ (id)localDateIntervalOfFirstTenDaysOfSeasonForLocalDate:(id)date;
+ (id)localStartDateForNextSeasonAfterLocalDate:(id)date;
+ (id)localStartSeasonDateForLocalDate:(id)date;
+ (id)northernMeteorologicalSeasonNameForDateComponents:(id)components;
+ (id)s_seasonCountryCodesDictionary;
+ (id)seasonNameForDateComponents:(id)components locale:(id)locale;
+ (id)seasonNameForLocalDate:(id)date locale:(id)locale;
+ (id)southernMeteorologicalSeasonNameForDateComponents:(id)components;
+ (id)startOfDayForDate:(id)date;
+ (id)startOfMonthForDate:(id)date;
+ (id)startOfWeekForDate:(id)date;
+ (id)universalDateFromLocalDate:(id)date;
+ (id)universalDateFromLocalDate:(id)date atLocation:(id)location;
+ (id)universalDateFromLocalDate:(id)date inTimeZone:(id)zone;
+ (id)validDateForDate:(id)date;
+ (int64_t)compareDate:(id)date toDate:(id)toDate toUnitGranularities:(unint64_t)granularities;
+ (int64_t)compareDate:(id)date toDate:(id)toDate toUnitGranularity:(unint64_t)granularity;
+ (int64_t)countOfWeekday:(int64_t)weekday inMonthOfDate:(id)date withCalendarIdentifier:(id)identifier;
+ (int64_t)dayFromDate:(id)date;
+ (int64_t)dayOfWeekFromDate:(id)date;
+ (int64_t)hourFromDate:(id)date;
+ (int64_t)monthFromDate:(id)date withCalendarIdentifier:(id)identifier;
+ (int64_t)numberOfDaysBetweenDate:(id)date andDate:(id)andDate;
+ (int64_t)weekOfMonthFromDate:(id)date;
+ (int64_t)weekOfYearFromDate:(id)date;
+ (int64_t)yearForWeekOfYearFromDate:(id)date;
+ (int64_t)yearFromDate:(id)date withCalendarIdentifier:(id)identifier;
+ (void)initialize;
@end

@implementation CLSCalendar

+ (BOOL)isLeapYearForDate:(id)date withCalendarIdentifier:(id)identifier
{
  v15 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:*MEMORY[0x277CBE5C8]])
  {
    [self rangeOfUnit:16 inUnit:4 forDate:dateCopy withCalendarIdentifier:identifierCopy];
    v9 = v8 > 0x172;
  }

  else
  {
    v10 = +[CLSLogging sharedLogging];
    loggingConnection = [v10 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
    {
      v13 = 138412290;
      v14 = identifierCopy;
      _os_log_fault_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_FAULT, "Unsupported calendar identifier for SPI: %@", &v13, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

+ (id)localStartSeasonDateForLocalDate:(id)date
{
  dateCopy = date;
  if ([self isDateValid:dateCopy])
  {
    v5 = [self monthFromDate:dateCopy];
    v6 = 3;
    v7 = 9;
    if (v5 < 9)
    {
      v7 = 6;
    }

    if (v5 >= 6)
    {
      v6 = v7;
    }

    if (v5 - 12 >= 0xFFFFFFFFFFFFFFF7)
    {
      v8 = v6;
    }

    else
    {
      v8 = 12;
    }

    v9 = [sCLSDateHelperCalendar dateBySettingUnit:8 value:v8 ofDate:dateCopy options:260];
    v10 = [self startOfMonthForDate:v9];
  }

  else
  {
    v10 = [self validDateForDate:dateCopy];
  }

  return v10;
}

+ (BOOL)supportsSeasonsWithLocale:(id)locale
{
  localeCopy = locale;
  countryCode = [localeCopy countryCode];
  if ([self isCountryCodePartOfNorthernHemisphere:countryCode])
  {
    v6 = 1;
  }

  else
  {
    countryCode2 = [localeCopy countryCode];
    v6 = [self isCountryCodePartOfSouthernHemisphere:countryCode2];
  }

  return v6;
}

+ (BOOL)currentLocaleSupportsSeasons
{
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  LOBYTE(self) = [self supportsSeasonsWithLocale:currentLocale];

  return self;
}

+ (id)localStartDateForNextSeasonAfterLocalDate:(id)date
{
  v4 = [self dateByAddingMonths:3 toDate:date];
  v5 = [self localStartSeasonDateForLocalDate:v4];

  return v5;
}

+ (BOOL)isLastMonthOfSeasonForLocalDate:(id)date
{
  dateCopy = date;
  if ([self isDateValid:dateCopy])
  {
    v5 = [self monthFromDate:dateCopy];
    if (v5 <= 0xB)
    {
      v6 = 0x8A4u >> v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

+ (BOOL)isMiddleMonthOfSeasonForLocalDate:(id)date
{
  dateCopy = date;
  if ([self isDateValid:dateCopy])
  {
    v5 = [self monthFromDate:dateCopy];
    if (v5 <= 0xA)
    {
      v6 = 0x492u >> v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

+ (id)localDateIntervalOfFirstTenDaysOfSeasonForLocalDate:(id)date
{
  dateCopy = date;
  if ([self isDateValid:dateCopy])
  {
    v5 = [self localStartSeasonDateForLocalDate:dateCopy];
    v6 = [self dateByAddingDays:11 toDate:v5];
    v7 = [v6 dateByAddingTimeInterval:-0.01];

    v8 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v5 endDate:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)isFirstTenDaysOfSeasonForLocalDate:(id)date
{
  dateCopy = date;
  v5 = [self localDateIntervalOfFirstTenDaysOfSeasonForLocalDate:dateCopy];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 containsDate:dateCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)isFirstMonthOfSeasonForLocalDate:(id)date
{
  dateCopy = date;
  if ([self isDateValid:dateCopy])
  {
    v5 = [self monthFromDate:dateCopy];
    if (v5 <= 0xC)
    {
      v6 = 0x1248u >> v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

+ (BOOL)isSecondHalfOfSeasonForLocalDate:(id)date
{
  dateCopy = date;
  if ([self isDateValid:dateCopy])
  {
    v5 = [self componentsFromDate:dateCopy inTimeZone:0];
    month = [v5 month];
    v7 = [v5 day];
    v9 = month == 4 && v7 > 14;
    v11 = month == 7 && v7 > 14;
    v13 = month == 10 && v7 > 14;
    v16 = month == 1 && v7 > 14 || month == 2;
    v17 = v13 || v16;
    if (month == 11)
    {
      v17 = 1;
    }

    if (v11)
    {
      v18 = 1;
    }

    else
    {
      v18 = v17;
    }

    if (month == 8)
    {
      v18 = 1;
    }

    if (v9)
    {
      v19 = 1;
    }

    else
    {
      v19 = v18;
    }

    if (month == 5)
    {
      v20 = 1;
    }

    else
    {
      v20 = v19;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (id)seasonNameForLocalDate:(id)date locale:(id)locale
{
  localeCopy = locale;
  v7 = [self componentsFromDate:date inTimeZone:0];
  v8 = [self seasonNameForDateComponents:v7 locale:localeCopy];

  return v8;
}

+ (id)seasonNameForDateComponents:(id)components locale:(id)locale
{
  componentsCopy = components;
  localeCopy = locale;
  if (!localeCopy)
  {
    localeCopy = [MEMORY[0x277CBEAF8] currentLocale];
  }

  countryCode = [localeCopy countryCode];
  v9 = [self isCountryCodePartOfNorthernHemisphere:countryCode];

  if (v9)
  {
    v10 = [self northernMeteorologicalSeasonNameForDateComponents:componentsCopy];
LABEL_7:
    v13 = v10;
    goto LABEL_9;
  }

  countryCode2 = [localeCopy countryCode];
  v12 = [self isCountryCodePartOfSouthernHemisphere:countryCode2];

  if (v12)
  {
    v10 = [self southernMeteorologicalSeasonNameForDateComponents:componentsCopy];
    goto LABEL_7;
  }

  v13 = 0;
LABEL_9:

  return v13;
}

+ (BOOL)isCountryCodePartOfSouthernHemisphere:(id)hemisphere
{
  hemisphereCopy = hemisphere;
  s_seasonCountryCodesDictionary = [self s_seasonCountryCodesDictionary];
  v6 = [s_seasonCountryCodesDictionary objectForKeyedSubscript:@"southernHemisphereCountryCodes"];
  v7 = [v6 containsObject:hemisphereCopy];

  return v7;
}

+ (BOOL)isCountryCodePartOfNorthernHemisphere:(id)hemisphere
{
  hemisphereCopy = hemisphere;
  s_seasonCountryCodesDictionary = [self s_seasonCountryCodesDictionary];
  v6 = [s_seasonCountryCodesDictionary objectForKeyedSubscript:@"northernHemisphereCountryCodes"];
  v7 = [v6 containsObject:hemisphereCopy];

  return v7;
}

+ (id)s_seasonCountryCodesDictionary
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__CLSCalendar_s_seasonCountryCodesDictionary__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (s_seasonCountryCodesDictionary_onceToken != -1)
  {
    dispatch_once(&s_seasonCountryCodesDictionary_onceToken, block);
  }

  v2 = s_seasonCountryCodesDictionary_s_seasonCountryCodesDictionary;

  return v2;
}

void __45__CLSCalendar_s_seasonCountryCodesDictionary__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v0 URLForResource:@"seasonsCountryCodes" withExtension:@"plist"];

  v1 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v3];
  v2 = s_seasonCountryCodesDictionary_s_seasonCountryCodesDictionary;
  s_seasonCountryCodesDictionary_s_seasonCountryCodesDictionary = v1;
}

+ (id)southernMeteorologicalSeasonNameForDateComponents:(id)components
{
  month = [components month];
  v4 = @"Autumn";
  v5 = @"Spring";
  if (month < 9)
  {
    v5 = @"Winter";
  }

  if (month >= 6)
  {
    v4 = v5;
  }

  if (month - 12 >= 0xFFFFFFFFFFFFFFF7)
  {
    return v4;
  }

  else
  {
    return @"Summer";
  }
}

+ (id)northernMeteorologicalSeasonNameForDateComponents:(id)components
{
  month = [components month];
  v4 = @"Spring";
  v5 = @"Autumn";
  if (month < 9)
  {
    v5 = @"Summer";
  }

  if (month >= 6)
  {
    v4 = v5;
  }

  if (month - 12 >= 0xFFFFFFFFFFFFFFF7)
  {
    return v4;
  }

  else
  {
    return @"Winter";
  }
}

+ (id)components:(unint64_t)components fromDate:(id)date toDate:(id)toDate options:(unint64_t)options
{
  dateCopy = date;
  toDateCopy = toDate;
  v11 = toDateCopy;
  v12 = 0;
  if (dateCopy && toDateCopy)
  {
    v13 = sCLSDateHelperCalendar;
    objc_sync_enter(v13);
    v12 = [sCLSDateHelperCalendar components:components fromDate:dateCopy toDate:v11 options:options];
    objc_sync_exit(v13);
  }

  return v12;
}

+ (id)components:(unint64_t)components fromDateComponents:(id)dateComponents toDateComponents:(id)toDateComponents options:(unint64_t)options
{
  dateComponentsCopy = dateComponents;
  toDateComponentsCopy = toDateComponents;
  v11 = toDateComponentsCopy;
  v12 = 0;
  if (dateComponentsCopy && toDateComponentsCopy)
  {
    v13 = sCLSDateHelperCalendar;
    objc_sync_enter(v13);
    v12 = [sCLSDateHelperCalendar components:components fromDateComponents:dateComponentsCopy toDateComponents:v11 options:options];
    objc_sync_exit(v13);
  }

  return v12;
}

+ (BOOL)isFirstTwoWeeksOfMonthForLocalDate:(id)date
{
  dateCopy = date;
  if ([self isDateValid:dateCopy])
  {
    v5 = [self rangeOfUnit:16 inUnit:8 forDate:dateCopy withCalendarIdentifier:sCLSDefaultCalendarIdentifier];
    v6 = [self dayFromDate:dateCopy] - 14 < v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isLastTwoWeeksOfMonthForLocalDate:(id)date
{
  dateCopy = date;
  if ([self isDateValid:dateCopy])
  {
    [self rangeOfUnit:16 inUnit:8 forDate:dateCopy withCalendarIdentifier:sCLSDefaultCalendarIdentifier];
    v6 = [self dayFromDate:dateCopy] + 14 > v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isLastWeekOfMonthForLocalDate:(id)date
{
  dateCopy = date;
  if ([self isDateValid:dateCopy])
  {
    [self rangeOfUnit:16 inUnit:8 forDate:dateCopy withCalendarIdentifier:sCLSDefaultCalendarIdentifier];
    v6 = [self dayFromDate:dateCopy] + 7 > v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (int64_t)countOfWeekday:(int64_t)weekday inMonthOfDate:(id)date withCalendarIdentifier:(id)identifier
{
  dateCopy = date;
  identifierCopy = identifier;
  if ([self isDateValid:dateCopy])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v11 = [selfCopy _calendarForIdentifier:identifierCopy];
    v12 = [v11 components:14 fromDate:dateCopy];
    [v12 setDay:1];
    v13 = [v11 dateFromComponents:v12];
    if (v13)
    {
      v23 = [v11 component:512 fromDate:v13];
      v14 = [v12 copy];
      [v11 rangeOfUnit:16 inUnit:8 forDate:dateCopy];
      [v14 setDay:v15];
      v16 = [v11 dateFromComponents:v14];
      if (v16)
      {
        v17 = [v11 component:512 fromDate:v16];
        [v11 rangeOfUnit:1024 inUnit:8 forDate:dateCopy];
        if (v23 <= v17)
        {
          v19 = v23 > weekday || v17 < weekday;
        }

        else
        {
          v19 = v23 > weekday && v17 < weekday;
        }

        v21 = v19;
        v20 = v18 - v21;
      }

      else
      {
        v20 = -1;
      }
    }

    else
    {
      v20 = -1;
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v20 = -1;
  }

  return v20;
}

+ (_NSRange)rangeOfUnit:(unint64_t)unit inUnit:(unint64_t)inUnit forDate:(id)date withCalendarIdentifier:(id)identifier
{
  dateCopy = date;
  identifierCopy = identifier;
  if ([self isDateValid:dateCopy])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v13 = [selfCopy _calendarForIdentifier:identifierCopy];
    v14 = [v13 rangeOfUnit:unit inUnit:inUnit forDate:dateCopy];
    v16 = v15;

    objc_sync_exit(selfCopy);
  }

  else
  {
    v16 = 0;
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v17 = v14;
  v18 = v16;
  result.length = v18;
  result.location = v17;
  return result;
}

+ (int64_t)compareDate:(id)date toDate:(id)toDate toUnitGranularity:(unint64_t)granularity
{
  dateCopy = date;
  toDateCopy = toDate;
  v10 = toDateCopy;
  v11 = 0;
  if (dateCopy && toDateCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v11 = [sCLSDateHelperCalendar compareDate:dateCopy toDate:v10 toUnitGranularity:granularity];
    objc_sync_exit(selfCopy);
  }

  return v11;
}

+ (int64_t)compareDate:(id)date toDate:(id)toDate toUnitGranularities:(unint64_t)granularities
{
  granularitiesCopy = granularities;
  dateCopy = date;
  toDateCopy = toDate;
  v10 = toDateCopy;
  v11 = 0;
  if (dateCopy && toDateCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (((granularitiesCopy & 4) == 0 || (v11 = [sCLSDateHelperCalendar compareDate:dateCopy toDate:v10 toUnitGranularity:4]) == 0) && ((granularitiesCopy & 8) == 0 || (v11 = objc_msgSend(sCLSDateHelperCalendar, "compareDate:toDate:toUnitGranularity:", dateCopy, v10, 8)) == 0) && ((granularitiesCopy & 0x10) == 0 || (v11 = objc_msgSend(sCLSDateHelperCalendar, "compareDate:toDate:toUnitGranularity:", dateCopy, v10, 16)) == 0) && ((granularitiesCopy & 0x20) == 0 || (v11 = objc_msgSend(sCLSDateHelperCalendar, "compareDate:toDate:toUnitGranularity:", dateCopy, v10, 32)) == 0) && ((granularitiesCopy & 0x40) == 0 || (v11 = objc_msgSend(sCLSDateHelperCalendar, "compareDate:toDate:toUnitGranularity:", dateCopy, v10, 64)) == 0) && ((granularitiesCopy & 0x80) == 0 || (v11 = objc_msgSend(sCLSDateHelperCalendar, "compareDate:toDate:toUnitGranularity:", dateCopy, v10, 128)) == 0))
    {
      v11 = 0;
    }

    objc_sync_exit(selfCopy);
  }

  return v11;
}

+ (int64_t)numberOfDaysBetweenDate:(id)date andDate:(id)andDate
{
  v4 = [sCLSDateHelperCalendar components:16 fromDate:date toDate:andDate options:0];
  v5 = [v4 day];
  if (v5 >= 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = -v5;
  }

  return v6;
}

+ (id)dateFromComponents:(unint64_t)components ofDate:(id)date
{
  dateCopy = date;
  if ([self isDateValid:dateCopy])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v8 = [sCLSDateHelperCalendar components:components fromDate:dateCopy];
    v9 = [sCLSDateHelperCalendar dateFromComponents:v8];

    objc_sync_exit(selfCopy);
  }

  else
  {
    v9 = [self validDateForDate:dateCopy];
  }

  return v9;
}

+ (id)dateByAddingWeeksOfYear:(int64_t)year toDate:(id)date
{
  dateCopy = date;
  if ([self isDateValid:dateCopy])
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v7 setWeekOfYear:year];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v9 = [sCLSDateHelperCalendar dateByAddingComponents:v7 toDate:dateCopy options:0];
    objc_sync_exit(selfCopy);
  }

  else
  {
    v9 = [self validDateForDate:dateCopy];
  }

  return v9;
}

+ (id)dateByAddingYears:(int64_t)years toDate:(id)date withCalendarIdentifier:(id)identifier
{
  dateCopy = date;
  identifierCopy = identifier;
  if ([self isDateValid:dateCopy])
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v10 setYear:years];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v12 = [selfCopy _calendarForIdentifier:identifierCopy];
    v13 = [v12 dateByAddingComponents:v10 toDate:dateCopy options:0];

    objc_sync_exit(selfCopy);
  }

  else
  {
    v13 = [self validDateForDate:dateCopy];
  }

  return v13;
}

+ (id)dateByAddingMonths:(int64_t)months toDate:(id)date
{
  dateCopy = date;
  if ([self isDateValid:dateCopy])
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v7 setMonth:months];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v9 = [sCLSDateHelperCalendar dateByAddingComponents:v7 toDate:dateCopy options:0];
    objc_sync_exit(selfCopy);
  }

  else
  {
    v9 = [self validDateForDate:dateCopy];
  }

  return v9;
}

+ (id)dateByAddingDays:(int64_t)days toDate:(id)date withCalendarIdentifier:(id)identifier
{
  dateCopy = date;
  identifierCopy = identifier;
  if ([self isDateValid:dateCopy])
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v10 setDay:days];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v12 = [selfCopy _calendarForIdentifier:identifierCopy];
    v13 = [v12 dateByAddingComponents:v10 toDate:dateCopy options:0];

    objc_sync_exit(selfCopy);
  }

  else
  {
    v13 = [self validDateForDate:dateCopy];
  }

  return v13;
}

+ (id)dateByAddingHours:(int64_t)hours toDate:(id)date
{
  dateCopy = date;
  if ([self isDateValid:dateCopy])
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v7 setHour:hours];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v9 = [sCLSDateHelperCalendar dateByAddingComponents:v7 toDate:dateCopy options:0];
    objc_sync_exit(selfCopy);
  }

  else
  {
    v9 = [self validDateForDate:dateCopy];
  }

  return v9;
}

+ (int64_t)hourFromDate:(id)date
{
  dateCopy = date;
  if ([self isDateValid:dateCopy])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [sCLSDateHelperCalendar component:32 fromDate:dateCopy];
    objc_sync_exit(selfCopy);
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

+ (int64_t)dayOfWeekFromDate:(id)date
{
  dateCopy = date;
  if ([self isDateValid:dateCopy])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [sCLSDateHelperCalendar component:512 fromDate:dateCopy];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = -1;
    }

    else
    {
      v7 = v6;
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

+ (int64_t)dayFromDate:(id)date
{
  dateCopy = date;
  if ([self isDateValid:dateCopy])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [sCLSDateHelperCalendar component:16 fromDate:dateCopy];
    objc_sync_exit(selfCopy);
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

+ (int64_t)weekOfMonthFromDate:(id)date
{
  dateCopy = date;
  if ([self isDateValid:dateCopy])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [sCLSDateHelperCalendar component:4096 fromDate:dateCopy];
    objc_sync_exit(selfCopy);
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

+ (int64_t)weekOfYearFromDate:(id)date
{
  dateCopy = date;
  if ([self isDateValid:dateCopy])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [sCLSDateHelperCalendar component:0x2000 fromDate:dateCopy];
    objc_sync_exit(selfCopy);
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

+ (int64_t)monthFromDate:(id)date withCalendarIdentifier:(id)identifier
{
  dateCopy = date;
  identifierCopy = identifier;
  if ([self isDateValid:dateCopy])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v9 = [selfCopy _calendarForIdentifier:identifierCopy];
    v10 = [v9 component:8 fromDate:dateCopy];

    objc_sync_exit(selfCopy);
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

+ (int64_t)yearForWeekOfYearFromDate:(id)date
{
  dateCopy = date;
  if ([self isDateValid:dateCopy])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [sCLSDateHelperCalendar component:0x4000 fromDate:dateCopy];
    objc_sync_exit(selfCopy);
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

+ (int64_t)yearFromDate:(id)date withCalendarIdentifier:(id)identifier
{
  dateCopy = date;
  identifierCopy = identifier;
  if ([self isDateValid:dateCopy])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v9 = [selfCopy _calendarForIdentifier:identifierCopy];
    v10 = [v9 component:4 fromDate:dateCopy];

    objc_sync_exit(selfCopy);
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

+ (id)components:(unint64_t)components fromDate:(id)date withCalendarIdentifier:(id)identifier
{
  dateCopy = date;
  identifierCopy = identifier;
  if ([self isDateValid:dateCopy])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v11 = [selfCopy _calendarForIdentifier:identifierCopy];
    v12 = [v11 components:components fromDate:dateCopy];

    objc_sync_exit(selfCopy);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)endOfMonthForDate:(id)date
{
  dateCopy = date;
  if ([self isDateValid:dateCopy])
  {
    v5 = [self startOfMonthForDate:dateCopy];

    v6 = [self dateByAddingMonths:1 toDate:v5];
    v7 = [v6 dateByAddingTimeInterval:-0.01];

    dateCopy = v5;
  }

  else
  {
    v7 = [self validDateForDate:dateCopy];
  }

  return v7;
}

+ (id)startOfMonthForDate:(id)date
{
  dateCopy = date;
  if ([self isDateValid:dateCopy])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [sCLSDateHelperCalendar components:14 fromDate:dateCopy];
    v7 = [sCLSDateHelperCalendar dateFromComponents:v6];

    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = [self validDateForDate:dateCopy];
  }

  return v7;
}

+ (id)endOfWeekForDate:(id)date
{
  dateCopy = date;
  if ([self isDateValid:dateCopy])
  {
    v5 = [self startOfWeekForDate:dateCopy];

    v6 = [self dateByAddingWeeksOfYear:1 toDate:v5];
    v7 = [v6 dateByAddingTimeInterval:-0.01];

    dateCopy = v5;
  }

  else
  {
    v7 = [self validDateForDate:dateCopy];
  }

  return v7;
}

+ (id)startOfWeekForDate:(id)date
{
  dateCopy = date;
  if ([self isDateValid:dateCopy])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [sCLSDateHelperCalendar components:24576 fromDate:dateCopy];
    v7 = [sCLSDateHelperCalendar dateFromComponents:v6];

    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = [self validDateForDate:dateCopy];
  }

  return v7;
}

+ (id)endOfDayForDate:(id)date
{
  dateCopy = date;
  if ([self isDateValid:dateCopy])
  {
    v5 = [self startOfDayForDate:dateCopy];

    v6 = [self dateByAddingDays:1 toDate:v5];
    v7 = [v6 dateByAddingTimeInterval:-0.01];

    dateCopy = v5;
  }

  else
  {
    v7 = [self validDateForDate:dateCopy];
  }

  return v7;
}

+ (id)startOfDayForDate:(id)date
{
  dateCopy = date;
  if ([self isDateValid:dateCopy])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [sCLSDateHelperCalendar startOfDayForDate:dateCopy];
    objc_sync_exit(selfCopy);
  }

  else
  {
    v6 = [self validDateForDate:dateCopy];
  }

  return v6;
}

+ (id)localDateFormatterWithFormat:(id)format
{
  v3 = MEMORY[0x277CCA968];
  formatCopy = format;
  v5 = objc_alloc_init(v3);
  [v5 setDateFormat:formatCopy];

  v6 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
  [v5 setTimeZone:v6];

  return v5;
}

+ (id)dateBySettingYear:(int64_t)year ofDate:(id)date
{
  dateCopy = date;
  if ([self isDateValid:dateCopy])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v8 = [selfCopy components:-24577 fromDate:dateCopy];
    [v8 setYear:year];
    v9 = [selfCopy dateFromComponents:v8 inTimeZone:0];

    objc_sync_exit(selfCopy);
  }

  else
  {
    v9 = [self validDateForDate:dateCopy];
  }

  return v9;
}

+ (id)localDateFromUniversalDate:(id)date atLocation:(id)location
{
  dateCopy = date;
  locationCopy = location;
  if ([self isDateValid:dateCopy])
  {
    if (locationCopy)
    {
      timeZone = [locationCopy timeZone];
    }

    else
    {
      timeZone = sCLSDateHelperGMTTimeZone_5052;
    }

    v10 = timeZone;
    v9 = [self localDateFromUniversalDate:dateCopy inTimeZone:timeZone];
  }

  else
  {
    v9 = [self validDateForDate:dateCopy];
  }

  return v9;
}

+ (id)universalDateFromLocalDate:(id)date atLocation:(id)location
{
  dateCopy = date;
  locationCopy = location;
  if ([self isDateValid:dateCopy])
  {
    if (locationCopy)
    {
      timeZone = [locationCopy timeZone];
    }

    else
    {
      timeZone = sCLSDateHelperGMTTimeZone_5052;
    }

    v10 = timeZone;
    v9 = [self universalDateFromLocalDate:dateCopy inTimeZone:timeZone];
  }

  else
  {
    v9 = [self validDateForDate:dateCopy];
  }

  return v9;
}

+ (id)localDateFromUniversalDate:(id)date
{
  v4 = MEMORY[0x277CBEBB0];
  dateCopy = date;
  localTimeZone = [v4 localTimeZone];
  v7 = [self localDateFromUniversalDate:dateCopy inTimeZone:localTimeZone];

  return v7;
}

+ (id)localDateFromUniversalDate:(id)date inTimeZone:(id)zone
{
  dateCopy = date;
  zoneCopy = zone;
  if ([self isDateValid:dateCopy])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v9 = sCLSDateHelperGMTTimeZone_5052;
    if (zoneCopy)
    {
      v9 = zoneCopy;
    }

    v10 = v9;
    if (v10)
    {
      v11 = [sCLSDateHelperCalendar componentsInTimeZone:v10 fromDate:dateCopy];
      [v11 setTimeZone:sCLSDateHelperGMTTimeZone_5052];
      v12 = [sCLSDateHelperCalendar dateFromComponents:v11];
    }

    else
    {
      v12 = 0;
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v12 = [self validDateForDate:dateCopy];
  }

  return v12;
}

+ (id)universalDateFromLocalDate:(id)date
{
  v4 = MEMORY[0x277CBEBB0];
  dateCopy = date;
  localTimeZone = [v4 localTimeZone];
  v7 = [self universalDateFromLocalDate:dateCopy inTimeZone:localTimeZone];

  return v7;
}

+ (id)universalDateFromLocalDate:(id)date inTimeZone:(id)zone
{
  dateCopy = date;
  zoneCopy = zone;
  if ([self isDateValid:dateCopy])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v9 = [sCLSDateHelperCalendar componentsInTimeZone:sCLSDateHelperGMTTimeZone_5052 fromDate:dateCopy];
    v10 = v9;
    if (zoneCopy)
    {
      v11 = zoneCopy;
    }

    else
    {
      v11 = sCLSDateHelperGMTTimeZone_5052;
    }

    [v9 setTimeZone:v11];
    v12 = [sCLSDateHelperCalendar dateFromComponents:v10];

    objc_sync_exit(selfCopy);
  }

  else
  {
    v12 = [self validDateForDate:dateCopy];
  }

  return v12;
}

+ (id)componentsFromDate:(id)date inTimeZone:(id)zone
{
  zoneCopy = zone;
  v7 = [self validDateForDate:date];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!zoneCopy)
  {
    zoneCopy = sCLSDateHelperGMTTimeZone_5052;
  }

  v9 = [sCLSDateHelperCalendar componentsInTimeZone:zoneCopy fromDate:v7];
  objc_sync_exit(selfCopy);

  return v9;
}

+ (id)dateFromComponents:(id)components inTimeZone:(id)zone withCalendarIdentifier:(id)identifier
{
  componentsCopy = components;
  zoneCopy = zone;
  identifierCopy = identifier;
  if (componentsCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v12 = [selfCopy _calendarForIdentifier:identifierCopy];
    v13 = [v12 dateFromComponents:componentsCopy];

    objc_sync_exit(selfCopy);
    if (zoneCopy)
    {
      v14 = [v13 dateByAddingTimeInterval:{objc_msgSend(zoneCopy, "secondsFromGMTForDate:", v13)}];

      v13 = v14;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)dateComponentsWithLocalDate:(id)date
{
  dateCopy = date;
  if (dateCopy)
  {
    v5 = [self validDateForDate:dateCopy];

    selfCopy = self;
    objc_sync_enter(selfCopy);
    dateCopy = [sCLSDateHelperCalendar componentsInTimeZone:sCLSDateHelperGMTTimeZone_5052 fromDate:v5];
    objc_sync_exit(selfCopy);
  }

  return dateCopy;
}

+ (id)dateComponentsWithUTCDate:(id)date localDate:(id)localDate
{
  dateCopy = date;
  localDateCopy = localDate;
  if ([self isDateValid:dateCopy] && objc_msgSend(self, "isDateValid:", localDateCopy))
  {
    [localDateCopy timeIntervalSinceDate:dateCopy];
    v9 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:v8];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v11 = [sCLSDateHelperCalendar componentsInTimeZone:v9 fromDate:dateCopy];
    objc_sync_exit(selfCopy);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)currentLocalDate
{
  v2 = MEMORY[0x277CBEAA8];
  systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
  date = [MEMORY[0x277CBEAA8] date];
  v5 = [v2 dateWithTimeIntervalSinceNow:{objc_msgSend(systemTimeZone, "secondsFromGMTForDate:", date)}];

  return v5;
}

+ (id)validDateForDate:(id)date
{
  v17 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if (!dateCopy)
  {
    distantFuture2 = 0;
    goto LABEL_9;
  }

  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v5 = [dateCopy compare:distantPast];

  if (v5 != -1)
  {
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    v7 = [distantFuture compare:dateCopy];

    distantFuture2 = dateCopy;
    if (v7 != -1)
    {
      goto LABEL_9;
    }

    distantFuture2 = [MEMORY[0x277CBEAA8] distantFuture];

    v9 = +[CLSLogging sharedLogging];
    loggingConnection = [v9 loggingConnection];

    if (!os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    goto LABEL_12;
  }

  distantFuture2 = [MEMORY[0x277CBEAA8] distantPast];

  v11 = +[CLSLogging sharedLogging];
  loggingConnection = [v11 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
  {
LABEL_12:
    v13 = 138412546;
    v14 = dateCopy;
    v15 = 2112;
    v16 = distantFuture2;
    _os_log_error_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_ERROR, "Invalid date found: %@, using %@ instead.", &v13, 0x16u);
  }

LABEL_8:

LABEL_9:

  return distantFuture2;
}

+ (BOOL)isDateValid:(id)valid
{
  validCopy = valid;
  if (validCopy)
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    if ([validCopy compare:distantPast] == -1)
    {
      v6 = 0;
    }

    else
    {
      distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
      v6 = [distantFuture compare:validCopy] != -1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_calendarForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [sCLSDateHelperCalendarByIdentifier objectForKeyedSubscript:identifierCopy];
  if (!v4)
  {
    v4 = [MEMORY[0x277CBEA80] calendarWithIdentifier:identifierCopy];
    [v4 setTimeZone:sCLSDateHelperGMTTimeZone_5052];
    [sCLSDateHelperCalendarByIdentifier setObject:v4 forKeyedSubscript:identifierCopy];
  }

  return v4;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v3.receiver = self;
    v3.super_class = &OBJC_METACLASS___CLSCalendar;
    objc_msgSendSuper2(&v3, sel_initialize);
    if (initialize_onceToken != -1)
    {
      dispatch_once(&initialize_onceToken, &__block_literal_global_5060);
    }
  }
}

uint64_t __25__CLSCalendar_initialize__block_invoke()
{
  v0 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"GMT"];
  v1 = sCLSDateHelperGMTTimeZone_5052;
  sCLSDateHelperGMTTimeZone_5052 = v0;

  v2 = *MEMORY[0x277CBE5C0];
  objc_storeStrong(&sCLSDefaultCalendarIdentifier, *MEMORY[0x277CBE5C0]);
  v3 = [MEMORY[0x277CBEA80] calendarWithIdentifier:v2];
  v4 = sCLSDateHelperCalendar;
  sCLSDateHelperCalendar = v3;

  [sCLSDateHelperCalendar setTimeZone:sCLSDateHelperGMTTimeZone_5052];
  v5 = objc_alloc(MEMORY[0x277CBEB38]);
  sCLSDateHelperCalendarByIdentifier = [v5 initWithObjectsAndKeys:{sCLSDateHelperCalendar, v2, 0}];

  return MEMORY[0x2821F96F8]();
}

@end