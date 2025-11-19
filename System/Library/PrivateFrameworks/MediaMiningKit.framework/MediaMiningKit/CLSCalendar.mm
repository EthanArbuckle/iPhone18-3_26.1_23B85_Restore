@interface CLSCalendar
+ (BOOL)currentLocaleSupportsSeasons;
+ (BOOL)isCountryCodePartOfNorthernHemisphere:(id)a3;
+ (BOOL)isCountryCodePartOfSouthernHemisphere:(id)a3;
+ (BOOL)isDateValid:(id)a3;
+ (BOOL)isFirstMonthOfSeasonForLocalDate:(id)a3;
+ (BOOL)isFirstTenDaysOfSeasonForLocalDate:(id)a3;
+ (BOOL)isFirstTwoWeeksOfMonthForLocalDate:(id)a3;
+ (BOOL)isLastMonthOfSeasonForLocalDate:(id)a3;
+ (BOOL)isLastTwoWeeksOfMonthForLocalDate:(id)a3;
+ (BOOL)isLastWeekOfMonthForLocalDate:(id)a3;
+ (BOOL)isLeapYearForDate:(id)a3 withCalendarIdentifier:(id)a4;
+ (BOOL)isMiddleMonthOfSeasonForLocalDate:(id)a3;
+ (BOOL)isSecondHalfOfSeasonForLocalDate:(id)a3;
+ (BOOL)supportsSeasonsWithLocale:(id)a3;
+ (_NSRange)rangeOfUnit:(unint64_t)a3 inUnit:(unint64_t)a4 forDate:(id)a5 withCalendarIdentifier:(id)a6;
+ (id)_calendarForIdentifier:(id)a3;
+ (id)components:(unint64_t)a3 fromDate:(id)a4 toDate:(id)a5 options:(unint64_t)a6;
+ (id)components:(unint64_t)a3 fromDate:(id)a4 withCalendarIdentifier:(id)a5;
+ (id)components:(unint64_t)a3 fromDateComponents:(id)a4 toDateComponents:(id)a5 options:(unint64_t)a6;
+ (id)componentsFromDate:(id)a3 inTimeZone:(id)a4;
+ (id)currentLocalDate;
+ (id)dateByAddingDays:(int64_t)a3 toDate:(id)a4 withCalendarIdentifier:(id)a5;
+ (id)dateByAddingHours:(int64_t)a3 toDate:(id)a4;
+ (id)dateByAddingMonths:(int64_t)a3 toDate:(id)a4;
+ (id)dateByAddingWeeksOfYear:(int64_t)a3 toDate:(id)a4;
+ (id)dateByAddingYears:(int64_t)a3 toDate:(id)a4 withCalendarIdentifier:(id)a5;
+ (id)dateBySettingYear:(int64_t)a3 ofDate:(id)a4;
+ (id)dateComponentsWithLocalDate:(id)a3;
+ (id)dateComponentsWithUTCDate:(id)a3 localDate:(id)a4;
+ (id)dateFromComponents:(id)a3 inTimeZone:(id)a4 withCalendarIdentifier:(id)a5;
+ (id)dateFromComponents:(unint64_t)a3 ofDate:(id)a4;
+ (id)endOfDayForDate:(id)a3;
+ (id)endOfMonthForDate:(id)a3;
+ (id)endOfWeekForDate:(id)a3;
+ (id)localDateFormatterWithFormat:(id)a3;
+ (id)localDateFromUniversalDate:(id)a3;
+ (id)localDateFromUniversalDate:(id)a3 atLocation:(id)a4;
+ (id)localDateFromUniversalDate:(id)a3 inTimeZone:(id)a4;
+ (id)localDateIntervalOfFirstTenDaysOfSeasonForLocalDate:(id)a3;
+ (id)localStartDateForNextSeasonAfterLocalDate:(id)a3;
+ (id)localStartSeasonDateForLocalDate:(id)a3;
+ (id)northernMeteorologicalSeasonNameForDateComponents:(id)a3;
+ (id)s_seasonCountryCodesDictionary;
+ (id)seasonNameForDateComponents:(id)a3 locale:(id)a4;
+ (id)seasonNameForLocalDate:(id)a3 locale:(id)a4;
+ (id)southernMeteorologicalSeasonNameForDateComponents:(id)a3;
+ (id)startOfDayForDate:(id)a3;
+ (id)startOfMonthForDate:(id)a3;
+ (id)startOfWeekForDate:(id)a3;
+ (id)universalDateFromLocalDate:(id)a3;
+ (id)universalDateFromLocalDate:(id)a3 atLocation:(id)a4;
+ (id)universalDateFromLocalDate:(id)a3 inTimeZone:(id)a4;
+ (id)validDateForDate:(id)a3;
+ (int64_t)compareDate:(id)a3 toDate:(id)a4 toUnitGranularities:(unint64_t)a5;
+ (int64_t)compareDate:(id)a3 toDate:(id)a4 toUnitGranularity:(unint64_t)a5;
+ (int64_t)countOfWeekday:(int64_t)a3 inMonthOfDate:(id)a4 withCalendarIdentifier:(id)a5;
+ (int64_t)dayFromDate:(id)a3;
+ (int64_t)dayOfWeekFromDate:(id)a3;
+ (int64_t)hourFromDate:(id)a3;
+ (int64_t)monthFromDate:(id)a3 withCalendarIdentifier:(id)a4;
+ (int64_t)numberOfDaysBetweenDate:(id)a3 andDate:(id)a4;
+ (int64_t)weekOfMonthFromDate:(id)a3;
+ (int64_t)weekOfYearFromDate:(id)a3;
+ (int64_t)yearForWeekOfYearFromDate:(id)a3;
+ (int64_t)yearFromDate:(id)a3 withCalendarIdentifier:(id)a4;
+ (void)initialize;
@end

@implementation CLSCalendar

+ (BOOL)isLeapYearForDate:(id)a3 withCalendarIdentifier:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v7 isEqualToString:*MEMORY[0x277CBE5C8]])
  {
    [a1 rangeOfUnit:16 inUnit:4 forDate:v6 withCalendarIdentifier:v7];
    v9 = v8 > 0x172;
  }

  else
  {
    v10 = +[CLSLogging sharedLogging];
    v11 = [v10 loggingConnection];

    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v13 = 138412290;
      v14 = v7;
      _os_log_fault_impl(&dword_22F907000, v11, OS_LOG_TYPE_FAULT, "Unsupported calendar identifier for SPI: %@", &v13, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

+ (id)localStartSeasonDateForLocalDate:(id)a3
{
  v4 = a3;
  if ([a1 isDateValid:v4])
  {
    v5 = [a1 monthFromDate:v4];
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

    v9 = [sCLSDateHelperCalendar dateBySettingUnit:8 value:v8 ofDate:v4 options:260];
    v10 = [a1 startOfMonthForDate:v9];
  }

  else
  {
    v10 = [a1 validDateForDate:v4];
  }

  return v10;
}

+ (BOOL)supportsSeasonsWithLocale:(id)a3
{
  v4 = a3;
  v5 = [v4 countryCode];
  if ([a1 isCountryCodePartOfNorthernHemisphere:v5])
  {
    v6 = 1;
  }

  else
  {
    v7 = [v4 countryCode];
    v6 = [a1 isCountryCodePartOfSouthernHemisphere:v7];
  }

  return v6;
}

+ (BOOL)currentLocaleSupportsSeasons
{
  v3 = [MEMORY[0x277CBEAF8] currentLocale];
  LOBYTE(a1) = [a1 supportsSeasonsWithLocale:v3];

  return a1;
}

+ (id)localStartDateForNextSeasonAfterLocalDate:(id)a3
{
  v4 = [a1 dateByAddingMonths:3 toDate:a3];
  v5 = [a1 localStartSeasonDateForLocalDate:v4];

  return v5;
}

+ (BOOL)isLastMonthOfSeasonForLocalDate:(id)a3
{
  v4 = a3;
  if ([a1 isDateValid:v4])
  {
    v5 = [a1 monthFromDate:v4];
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

+ (BOOL)isMiddleMonthOfSeasonForLocalDate:(id)a3
{
  v4 = a3;
  if ([a1 isDateValid:v4])
  {
    v5 = [a1 monthFromDate:v4];
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

+ (id)localDateIntervalOfFirstTenDaysOfSeasonForLocalDate:(id)a3
{
  v4 = a3;
  if ([a1 isDateValid:v4])
  {
    v5 = [a1 localStartSeasonDateForLocalDate:v4];
    v6 = [a1 dateByAddingDays:11 toDate:v5];
    v7 = [v6 dateByAddingTimeInterval:-0.01];

    v8 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v5 endDate:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)isFirstTenDaysOfSeasonForLocalDate:(id)a3
{
  v4 = a3;
  v5 = [a1 localDateIntervalOfFirstTenDaysOfSeasonForLocalDate:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 containsDate:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)isFirstMonthOfSeasonForLocalDate:(id)a3
{
  v4 = a3;
  if ([a1 isDateValid:v4])
  {
    v5 = [a1 monthFromDate:v4];
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

+ (BOOL)isSecondHalfOfSeasonForLocalDate:(id)a3
{
  v4 = a3;
  if ([a1 isDateValid:v4])
  {
    v5 = [a1 componentsFromDate:v4 inTimeZone:0];
    v6 = [v5 month];
    v7 = [v5 day];
    v9 = v6 == 4 && v7 > 14;
    v11 = v6 == 7 && v7 > 14;
    v13 = v6 == 10 && v7 > 14;
    v16 = v6 == 1 && v7 > 14 || v6 == 2;
    v17 = v13 || v16;
    if (v6 == 11)
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

    if (v6 == 8)
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

    if (v6 == 5)
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

+ (id)seasonNameForLocalDate:(id)a3 locale:(id)a4
{
  v6 = a4;
  v7 = [a1 componentsFromDate:a3 inTimeZone:0];
  v8 = [a1 seasonNameForDateComponents:v7 locale:v6];

  return v8;
}

+ (id)seasonNameForDateComponents:(id)a3 locale:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v7 = [MEMORY[0x277CBEAF8] currentLocale];
  }

  v8 = [v7 countryCode];
  v9 = [a1 isCountryCodePartOfNorthernHemisphere:v8];

  if (v9)
  {
    v10 = [a1 northernMeteorologicalSeasonNameForDateComponents:v6];
LABEL_7:
    v13 = v10;
    goto LABEL_9;
  }

  v11 = [v7 countryCode];
  v12 = [a1 isCountryCodePartOfSouthernHemisphere:v11];

  if (v12)
  {
    v10 = [a1 southernMeteorologicalSeasonNameForDateComponents:v6];
    goto LABEL_7;
  }

  v13 = 0;
LABEL_9:

  return v13;
}

+ (BOOL)isCountryCodePartOfSouthernHemisphere:(id)a3
{
  v4 = a3;
  v5 = [a1 s_seasonCountryCodesDictionary];
  v6 = [v5 objectForKeyedSubscript:@"southernHemisphereCountryCodes"];
  v7 = [v6 containsObject:v4];

  return v7;
}

+ (BOOL)isCountryCodePartOfNorthernHemisphere:(id)a3
{
  v4 = a3;
  v5 = [a1 s_seasonCountryCodesDictionary];
  v6 = [v5 objectForKeyedSubscript:@"northernHemisphereCountryCodes"];
  v7 = [v6 containsObject:v4];

  return v7;
}

+ (id)s_seasonCountryCodesDictionary
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__CLSCalendar_s_seasonCountryCodesDictionary__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

+ (id)southernMeteorologicalSeasonNameForDateComponents:(id)a3
{
  v3 = [a3 month];
  v4 = @"Autumn";
  v5 = @"Spring";
  if (v3 < 9)
  {
    v5 = @"Winter";
  }

  if (v3 >= 6)
  {
    v4 = v5;
  }

  if (v3 - 12 >= 0xFFFFFFFFFFFFFFF7)
  {
    return v4;
  }

  else
  {
    return @"Summer";
  }
}

+ (id)northernMeteorologicalSeasonNameForDateComponents:(id)a3
{
  v3 = [a3 month];
  v4 = @"Spring";
  v5 = @"Autumn";
  if (v3 < 9)
  {
    v5 = @"Summer";
  }

  if (v3 >= 6)
  {
    v4 = v5;
  }

  if (v3 - 12 >= 0xFFFFFFFFFFFFFFF7)
  {
    return v4;
  }

  else
  {
    return @"Winter";
  }
}

+ (id)components:(unint64_t)a3 fromDate:(id)a4 toDate:(id)a5 options:(unint64_t)a6
{
  v9 = a4;
  v10 = a5;
  v11 = v10;
  v12 = 0;
  if (v9 && v10)
  {
    v13 = sCLSDateHelperCalendar;
    objc_sync_enter(v13);
    v12 = [sCLSDateHelperCalendar components:a3 fromDate:v9 toDate:v11 options:a6];
    objc_sync_exit(v13);
  }

  return v12;
}

+ (id)components:(unint64_t)a3 fromDateComponents:(id)a4 toDateComponents:(id)a5 options:(unint64_t)a6
{
  v9 = a4;
  v10 = a5;
  v11 = v10;
  v12 = 0;
  if (v9 && v10)
  {
    v13 = sCLSDateHelperCalendar;
    objc_sync_enter(v13);
    v12 = [sCLSDateHelperCalendar components:a3 fromDateComponents:v9 toDateComponents:v11 options:a6];
    objc_sync_exit(v13);
  }

  return v12;
}

+ (BOOL)isFirstTwoWeeksOfMonthForLocalDate:(id)a3
{
  v4 = a3;
  if ([a1 isDateValid:v4])
  {
    v5 = [a1 rangeOfUnit:16 inUnit:8 forDate:v4 withCalendarIdentifier:sCLSDefaultCalendarIdentifier];
    v6 = [a1 dayFromDate:v4] - 14 < v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isLastTwoWeeksOfMonthForLocalDate:(id)a3
{
  v4 = a3;
  if ([a1 isDateValid:v4])
  {
    [a1 rangeOfUnit:16 inUnit:8 forDate:v4 withCalendarIdentifier:sCLSDefaultCalendarIdentifier];
    v6 = [a1 dayFromDate:v4] + 14 > v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isLastWeekOfMonthForLocalDate:(id)a3
{
  v4 = a3;
  if ([a1 isDateValid:v4])
  {
    [a1 rangeOfUnit:16 inUnit:8 forDate:v4 withCalendarIdentifier:sCLSDefaultCalendarIdentifier];
    v6 = [a1 dayFromDate:v4] + 7 > v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (int64_t)countOfWeekday:(int64_t)a3 inMonthOfDate:(id)a4 withCalendarIdentifier:(id)a5
{
  v8 = a4;
  v9 = a5;
  if ([a1 isDateValid:v8])
  {
    v10 = a1;
    objc_sync_enter(v10);
    v11 = [v10 _calendarForIdentifier:v9];
    v12 = [v11 components:14 fromDate:v8];
    [v12 setDay:1];
    v13 = [v11 dateFromComponents:v12];
    if (v13)
    {
      v23 = [v11 component:512 fromDate:v13];
      v14 = [v12 copy];
      [v11 rangeOfUnit:16 inUnit:8 forDate:v8];
      [v14 setDay:v15];
      v16 = [v11 dateFromComponents:v14];
      if (v16)
      {
        v17 = [v11 component:512 fromDate:v16];
        [v11 rangeOfUnit:1024 inUnit:8 forDate:v8];
        if (v23 <= v17)
        {
          v19 = v23 > a3 || v17 < a3;
        }

        else
        {
          v19 = v23 > a3 && v17 < a3;
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

    objc_sync_exit(v10);
  }

  else
  {
    v20 = -1;
  }

  return v20;
}

+ (_NSRange)rangeOfUnit:(unint64_t)a3 inUnit:(unint64_t)a4 forDate:(id)a5 withCalendarIdentifier:(id)a6
{
  v10 = a5;
  v11 = a6;
  if ([a1 isDateValid:v10])
  {
    v12 = a1;
    objc_sync_enter(v12);
    v13 = [v12 _calendarForIdentifier:v11];
    v14 = [v13 rangeOfUnit:a3 inUnit:a4 forDate:v10];
    v16 = v15;

    objc_sync_exit(v12);
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

+ (int64_t)compareDate:(id)a3 toDate:(id)a4 toUnitGranularity:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v11 = 0;
  if (v8 && v9)
  {
    v12 = a1;
    objc_sync_enter(v12);
    v11 = [sCLSDateHelperCalendar compareDate:v8 toDate:v10 toUnitGranularity:a5];
    objc_sync_exit(v12);
  }

  return v11;
}

+ (int64_t)compareDate:(id)a3 toDate:(id)a4 toUnitGranularities:(unint64_t)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v11 = 0;
  if (v8 && v9)
  {
    v12 = a1;
    objc_sync_enter(v12);
    if (((v5 & 4) == 0 || (v11 = [sCLSDateHelperCalendar compareDate:v8 toDate:v10 toUnitGranularity:4]) == 0) && ((v5 & 8) == 0 || (v11 = objc_msgSend(sCLSDateHelperCalendar, "compareDate:toDate:toUnitGranularity:", v8, v10, 8)) == 0) && ((v5 & 0x10) == 0 || (v11 = objc_msgSend(sCLSDateHelperCalendar, "compareDate:toDate:toUnitGranularity:", v8, v10, 16)) == 0) && ((v5 & 0x20) == 0 || (v11 = objc_msgSend(sCLSDateHelperCalendar, "compareDate:toDate:toUnitGranularity:", v8, v10, 32)) == 0) && ((v5 & 0x40) == 0 || (v11 = objc_msgSend(sCLSDateHelperCalendar, "compareDate:toDate:toUnitGranularity:", v8, v10, 64)) == 0) && ((v5 & 0x80) == 0 || (v11 = objc_msgSend(sCLSDateHelperCalendar, "compareDate:toDate:toUnitGranularity:", v8, v10, 128)) == 0))
    {
      v11 = 0;
    }

    objc_sync_exit(v12);
  }

  return v11;
}

+ (int64_t)numberOfDaysBetweenDate:(id)a3 andDate:(id)a4
{
  v4 = [sCLSDateHelperCalendar components:16 fromDate:a3 toDate:a4 options:0];
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

+ (id)dateFromComponents:(unint64_t)a3 ofDate:(id)a4
{
  v6 = a4;
  if ([a1 isDateValid:v6])
  {
    v7 = a1;
    objc_sync_enter(v7);
    v8 = [sCLSDateHelperCalendar components:a3 fromDate:v6];
    v9 = [sCLSDateHelperCalendar dateFromComponents:v8];

    objc_sync_exit(v7);
  }

  else
  {
    v9 = [a1 validDateForDate:v6];
  }

  return v9;
}

+ (id)dateByAddingWeeksOfYear:(int64_t)a3 toDate:(id)a4
{
  v6 = a4;
  if ([a1 isDateValid:v6])
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v7 setWeekOfYear:a3];
    v8 = a1;
    objc_sync_enter(v8);
    v9 = [sCLSDateHelperCalendar dateByAddingComponents:v7 toDate:v6 options:0];
    objc_sync_exit(v8);
  }

  else
  {
    v9 = [a1 validDateForDate:v6];
  }

  return v9;
}

+ (id)dateByAddingYears:(int64_t)a3 toDate:(id)a4 withCalendarIdentifier:(id)a5
{
  v8 = a4;
  v9 = a5;
  if ([a1 isDateValid:v8])
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v10 setYear:a3];
    v11 = a1;
    objc_sync_enter(v11);
    v12 = [v11 _calendarForIdentifier:v9];
    v13 = [v12 dateByAddingComponents:v10 toDate:v8 options:0];

    objc_sync_exit(v11);
  }

  else
  {
    v13 = [a1 validDateForDate:v8];
  }

  return v13;
}

+ (id)dateByAddingMonths:(int64_t)a3 toDate:(id)a4
{
  v6 = a4;
  if ([a1 isDateValid:v6])
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v7 setMonth:a3];
    v8 = a1;
    objc_sync_enter(v8);
    v9 = [sCLSDateHelperCalendar dateByAddingComponents:v7 toDate:v6 options:0];
    objc_sync_exit(v8);
  }

  else
  {
    v9 = [a1 validDateForDate:v6];
  }

  return v9;
}

+ (id)dateByAddingDays:(int64_t)a3 toDate:(id)a4 withCalendarIdentifier:(id)a5
{
  v8 = a4;
  v9 = a5;
  if ([a1 isDateValid:v8])
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v10 setDay:a3];
    v11 = a1;
    objc_sync_enter(v11);
    v12 = [v11 _calendarForIdentifier:v9];
    v13 = [v12 dateByAddingComponents:v10 toDate:v8 options:0];

    objc_sync_exit(v11);
  }

  else
  {
    v13 = [a1 validDateForDate:v8];
  }

  return v13;
}

+ (id)dateByAddingHours:(int64_t)a3 toDate:(id)a4
{
  v6 = a4;
  if ([a1 isDateValid:v6])
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v7 setHour:a3];
    v8 = a1;
    objc_sync_enter(v8);
    v9 = [sCLSDateHelperCalendar dateByAddingComponents:v7 toDate:v6 options:0];
    objc_sync_exit(v8);
  }

  else
  {
    v9 = [a1 validDateForDate:v6];
  }

  return v9;
}

+ (int64_t)hourFromDate:(id)a3
{
  v4 = a3;
  if ([a1 isDateValid:v4])
  {
    v5 = a1;
    objc_sync_enter(v5);
    v6 = [sCLSDateHelperCalendar component:32 fromDate:v4];
    objc_sync_exit(v5);
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

+ (int64_t)dayOfWeekFromDate:(id)a3
{
  v4 = a3;
  if ([a1 isDateValid:v4])
  {
    v5 = a1;
    objc_sync_enter(v5);
    v6 = [sCLSDateHelperCalendar component:512 fromDate:v4];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = -1;
    }

    else
    {
      v7 = v6;
    }

    objc_sync_exit(v5);
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

+ (int64_t)dayFromDate:(id)a3
{
  v4 = a3;
  if ([a1 isDateValid:v4])
  {
    v5 = a1;
    objc_sync_enter(v5);
    v6 = [sCLSDateHelperCalendar component:16 fromDate:v4];
    objc_sync_exit(v5);
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

+ (int64_t)weekOfMonthFromDate:(id)a3
{
  v4 = a3;
  if ([a1 isDateValid:v4])
  {
    v5 = a1;
    objc_sync_enter(v5);
    v6 = [sCLSDateHelperCalendar component:4096 fromDate:v4];
    objc_sync_exit(v5);
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

+ (int64_t)weekOfYearFromDate:(id)a3
{
  v4 = a3;
  if ([a1 isDateValid:v4])
  {
    v5 = a1;
    objc_sync_enter(v5);
    v6 = [sCLSDateHelperCalendar component:0x2000 fromDate:v4];
    objc_sync_exit(v5);
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

+ (int64_t)monthFromDate:(id)a3 withCalendarIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([a1 isDateValid:v6])
  {
    v8 = a1;
    objc_sync_enter(v8);
    v9 = [v8 _calendarForIdentifier:v7];
    v10 = [v9 component:8 fromDate:v6];

    objc_sync_exit(v8);
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

+ (int64_t)yearForWeekOfYearFromDate:(id)a3
{
  v4 = a3;
  if ([a1 isDateValid:v4])
  {
    v5 = a1;
    objc_sync_enter(v5);
    v6 = [sCLSDateHelperCalendar component:0x4000 fromDate:v4];
    objc_sync_exit(v5);
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

+ (int64_t)yearFromDate:(id)a3 withCalendarIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([a1 isDateValid:v6])
  {
    v8 = a1;
    objc_sync_enter(v8);
    v9 = [v8 _calendarForIdentifier:v7];
    v10 = [v9 component:4 fromDate:v6];

    objc_sync_exit(v8);
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

+ (id)components:(unint64_t)a3 fromDate:(id)a4 withCalendarIdentifier:(id)a5
{
  v8 = a4;
  v9 = a5;
  if ([a1 isDateValid:v8])
  {
    v10 = a1;
    objc_sync_enter(v10);
    v11 = [v10 _calendarForIdentifier:v9];
    v12 = [v11 components:a3 fromDate:v8];

    objc_sync_exit(v10);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)endOfMonthForDate:(id)a3
{
  v4 = a3;
  if ([a1 isDateValid:v4])
  {
    v5 = [a1 startOfMonthForDate:v4];

    v6 = [a1 dateByAddingMonths:1 toDate:v5];
    v7 = [v6 dateByAddingTimeInterval:-0.01];

    v4 = v5;
  }

  else
  {
    v7 = [a1 validDateForDate:v4];
  }

  return v7;
}

+ (id)startOfMonthForDate:(id)a3
{
  v4 = a3;
  if ([a1 isDateValid:v4])
  {
    v5 = a1;
    objc_sync_enter(v5);
    v6 = [sCLSDateHelperCalendar components:14 fromDate:v4];
    v7 = [sCLSDateHelperCalendar dateFromComponents:v6];

    objc_sync_exit(v5);
  }

  else
  {
    v7 = [a1 validDateForDate:v4];
  }

  return v7;
}

+ (id)endOfWeekForDate:(id)a3
{
  v4 = a3;
  if ([a1 isDateValid:v4])
  {
    v5 = [a1 startOfWeekForDate:v4];

    v6 = [a1 dateByAddingWeeksOfYear:1 toDate:v5];
    v7 = [v6 dateByAddingTimeInterval:-0.01];

    v4 = v5;
  }

  else
  {
    v7 = [a1 validDateForDate:v4];
  }

  return v7;
}

+ (id)startOfWeekForDate:(id)a3
{
  v4 = a3;
  if ([a1 isDateValid:v4])
  {
    v5 = a1;
    objc_sync_enter(v5);
    v6 = [sCLSDateHelperCalendar components:24576 fromDate:v4];
    v7 = [sCLSDateHelperCalendar dateFromComponents:v6];

    objc_sync_exit(v5);
  }

  else
  {
    v7 = [a1 validDateForDate:v4];
  }

  return v7;
}

+ (id)endOfDayForDate:(id)a3
{
  v4 = a3;
  if ([a1 isDateValid:v4])
  {
    v5 = [a1 startOfDayForDate:v4];

    v6 = [a1 dateByAddingDays:1 toDate:v5];
    v7 = [v6 dateByAddingTimeInterval:-0.01];

    v4 = v5;
  }

  else
  {
    v7 = [a1 validDateForDate:v4];
  }

  return v7;
}

+ (id)startOfDayForDate:(id)a3
{
  v4 = a3;
  if ([a1 isDateValid:v4])
  {
    v5 = a1;
    objc_sync_enter(v5);
    v6 = [sCLSDateHelperCalendar startOfDayForDate:v4];
    objc_sync_exit(v5);
  }

  else
  {
    v6 = [a1 validDateForDate:v4];
  }

  return v6;
}

+ (id)localDateFormatterWithFormat:(id)a3
{
  v3 = MEMORY[0x277CCA968];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setDateFormat:v4];

  v6 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
  [v5 setTimeZone:v6];

  return v5;
}

+ (id)dateBySettingYear:(int64_t)a3 ofDate:(id)a4
{
  v6 = a4;
  if ([a1 isDateValid:v6])
  {
    v7 = a1;
    objc_sync_enter(v7);
    v8 = [v7 components:-24577 fromDate:v6];
    [v8 setYear:a3];
    v9 = [v7 dateFromComponents:v8 inTimeZone:0];

    objc_sync_exit(v7);
  }

  else
  {
    v9 = [a1 validDateForDate:v6];
  }

  return v9;
}

+ (id)localDateFromUniversalDate:(id)a3 atLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([a1 isDateValid:v6])
  {
    if (v7)
    {
      v8 = [v7 timeZone];
    }

    else
    {
      v8 = sCLSDateHelperGMTTimeZone_5052;
    }

    v10 = v8;
    v9 = [a1 localDateFromUniversalDate:v6 inTimeZone:v8];
  }

  else
  {
    v9 = [a1 validDateForDate:v6];
  }

  return v9;
}

+ (id)universalDateFromLocalDate:(id)a3 atLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([a1 isDateValid:v6])
  {
    if (v7)
    {
      v8 = [v7 timeZone];
    }

    else
    {
      v8 = sCLSDateHelperGMTTimeZone_5052;
    }

    v10 = v8;
    v9 = [a1 universalDateFromLocalDate:v6 inTimeZone:v8];
  }

  else
  {
    v9 = [a1 validDateForDate:v6];
  }

  return v9;
}

+ (id)localDateFromUniversalDate:(id)a3
{
  v4 = MEMORY[0x277CBEBB0];
  v5 = a3;
  v6 = [v4 localTimeZone];
  v7 = [a1 localDateFromUniversalDate:v5 inTimeZone:v6];

  return v7;
}

+ (id)localDateFromUniversalDate:(id)a3 inTimeZone:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([a1 isDateValid:v6])
  {
    v8 = a1;
    objc_sync_enter(v8);
    v9 = sCLSDateHelperGMTTimeZone_5052;
    if (v7)
    {
      v9 = v7;
    }

    v10 = v9;
    if (v10)
    {
      v11 = [sCLSDateHelperCalendar componentsInTimeZone:v10 fromDate:v6];
      [v11 setTimeZone:sCLSDateHelperGMTTimeZone_5052];
      v12 = [sCLSDateHelperCalendar dateFromComponents:v11];
    }

    else
    {
      v12 = 0;
    }

    objc_sync_exit(v8);
  }

  else
  {
    v12 = [a1 validDateForDate:v6];
  }

  return v12;
}

+ (id)universalDateFromLocalDate:(id)a3
{
  v4 = MEMORY[0x277CBEBB0];
  v5 = a3;
  v6 = [v4 localTimeZone];
  v7 = [a1 universalDateFromLocalDate:v5 inTimeZone:v6];

  return v7;
}

+ (id)universalDateFromLocalDate:(id)a3 inTimeZone:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([a1 isDateValid:v6])
  {
    v8 = a1;
    objc_sync_enter(v8);
    v9 = [sCLSDateHelperCalendar componentsInTimeZone:sCLSDateHelperGMTTimeZone_5052 fromDate:v6];
    v10 = v9;
    if (v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = sCLSDateHelperGMTTimeZone_5052;
    }

    [v9 setTimeZone:v11];
    v12 = [sCLSDateHelperCalendar dateFromComponents:v10];

    objc_sync_exit(v8);
  }

  else
  {
    v12 = [a1 validDateForDate:v6];
  }

  return v12;
}

+ (id)componentsFromDate:(id)a3 inTimeZone:(id)a4
{
  v6 = a4;
  v7 = [a1 validDateForDate:a3];
  v8 = a1;
  objc_sync_enter(v8);
  if (!v6)
  {
    v6 = sCLSDateHelperGMTTimeZone_5052;
  }

  v9 = [sCLSDateHelperCalendar componentsInTimeZone:v6 fromDate:v7];
  objc_sync_exit(v8);

  return v9;
}

+ (id)dateFromComponents:(id)a3 inTimeZone:(id)a4 withCalendarIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = a1;
    objc_sync_enter(v11);
    v12 = [v11 _calendarForIdentifier:v10];
    v13 = [v12 dateFromComponents:v8];

    objc_sync_exit(v11);
    if (v9)
    {
      v14 = [v13 dateByAddingTimeInterval:{objc_msgSend(v9, "secondsFromGMTForDate:", v13)}];

      v13 = v14;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)dateComponentsWithLocalDate:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [a1 validDateForDate:v4];

    v6 = a1;
    objc_sync_enter(v6);
    v4 = [sCLSDateHelperCalendar componentsInTimeZone:sCLSDateHelperGMTTimeZone_5052 fromDate:v5];
    objc_sync_exit(v6);
  }

  return v4;
}

+ (id)dateComponentsWithUTCDate:(id)a3 localDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([a1 isDateValid:v6] && objc_msgSend(a1, "isDateValid:", v7))
  {
    [v7 timeIntervalSinceDate:v6];
    v9 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:v8];
    v10 = a1;
    objc_sync_enter(v10);
    v11 = [sCLSDateHelperCalendar componentsInTimeZone:v9 fromDate:v6];
    objc_sync_exit(v10);
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
  v3 = [MEMORY[0x277CBEBB0] systemTimeZone];
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [v2 dateWithTimeIntervalSinceNow:{objc_msgSend(v3, "secondsFromGMTForDate:", v4)}];

  return v5;
}

+ (id)validDateForDate:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (!v3)
  {
    v8 = 0;
    goto LABEL_9;
  }

  v4 = [MEMORY[0x277CBEAA8] distantPast];
  v5 = [v3 compare:v4];

  if (v5 != -1)
  {
    v6 = [MEMORY[0x277CBEAA8] distantFuture];
    v7 = [v6 compare:v3];

    v8 = v3;
    if (v7 != -1)
    {
      goto LABEL_9;
    }

    v8 = [MEMORY[0x277CBEAA8] distantFuture];

    v9 = +[CLSLogging sharedLogging];
    v10 = [v9 loggingConnection];

    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    goto LABEL_12;
  }

  v8 = [MEMORY[0x277CBEAA8] distantPast];

  v11 = +[CLSLogging sharedLogging];
  v10 = [v11 loggingConnection];

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
LABEL_12:
    v13 = 138412546;
    v14 = v3;
    v15 = 2112;
    v16 = v8;
    _os_log_error_impl(&dword_22F907000, v10, OS_LOG_TYPE_ERROR, "Invalid date found: %@, using %@ instead.", &v13, 0x16u);
  }

LABEL_8:

LABEL_9:

  return v8;
}

+ (BOOL)isDateValid:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277CBEAA8] distantPast];
    if ([v3 compare:v4] == -1)
    {
      v6 = 0;
    }

    else
    {
      v5 = [MEMORY[0x277CBEAA8] distantFuture];
      v6 = [v5 compare:v3] != -1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_calendarForIdentifier:(id)a3
{
  v3 = a3;
  v4 = [sCLSDateHelperCalendarByIdentifier objectForKeyedSubscript:v3];
  if (!v4)
  {
    v4 = [MEMORY[0x277CBEA80] calendarWithIdentifier:v3];
    [v4 setTimeZone:sCLSDateHelperGMTTimeZone_5052];
    [sCLSDateHelperCalendarByIdentifier setObject:v4 forKeyedSubscript:v3];
  }

  return v4;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v3.receiver = a1;
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