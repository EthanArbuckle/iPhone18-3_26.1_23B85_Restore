@interface NSCalendar(CalClassAdditions)
+ (id)CalCalendarWithUnsanitizedCalendarIdentifier:()CalClassAdditions;
+ (id)CalDateFromBirthdayComponents:()CalClassAdditions;
+ (id)CalGregorianCalendarForTimeZone:()CalClassAdditions;
+ (id)CalGregorianGMTCalendar;
+ (id)CalYearlessDateThreshold;
+ (id)sharedAutoupdatingCurrentCalendar;
- (BOOL)dateIsFirstOfMonth:()CalClassAdditions;
- (BOOL)dateIsFirstOfYear:()CalClassAdditions;
- (id)CalDateBySubtractingComponents:()CalClassAdditions fromDate:;
- (id)CalDateFromComponents:()CalClassAdditions inTimeZone:;
- (id)CalOccurrencesForBirthday:()CalClassAdditions inDateRange:;
- (id)dateBySanityCheckingDateRoundedToDay:()CalClassAdditions;
- (id)mapDatesFromDate:()CalClassAdditions stepSize:range:mapBlock:;
- (uint64_t)cal_isMultidayEventForUIWithStartDate:()CalClassAdditions endDate:;
- (uint64_t)calendarDaysFromDate:()CalClassAdditions toDate:;
- (uint64_t)daysInWeek;
- (uint64_t)hoursInDay;
- (uint64_t)minutesInHour;
- (uint64_t)monthsInYearForDate:()CalClassAdditions;
- (uint64_t)secondsInDay;
- (uint64_t)secondsInMinute;
@end

@implementation NSCalendar(CalClassAdditions)

- (uint64_t)daysInWeek
{
  [a1 maximumRangeOfUnit:512];
  if (v1 <= 0)
  {
    return 7;
  }

  else
  {
    return v1;
  }
}

+ (id)CalGregorianGMTCalendar
{
  if (CalGregorianGMTCalendar_onceToken != -1)
  {
    +[NSCalendar(CalClassAdditions) CalGregorianGMTCalendar];
  }

  v1 = CalGregorianGMTCalendar_gregorianGMTCalendar;

  return v1;
}

- (uint64_t)secondsInMinute
{
  [a1 maximumRangeOfUnit:128];
  if (v1 <= 0)
  {
    return 60;
  }

  else
  {
    return v1;
  }
}

+ (id)sharedAutoupdatingCurrentCalendar
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__NSCalendar_CalClassAdditions__sharedAutoupdatingCurrentCalendar__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedAutoupdatingCurrentCalendar_onceToken != -1)
  {
    dispatch_once(&sharedAutoupdatingCurrentCalendar_onceToken, block);
  }

  v1 = sharedAutoupdatingCurrentCalendar_autoupdatingCalendar;

  return v1;
}

- (uint64_t)minutesInHour
{
  [a1 maximumRangeOfUnit:64];
  if (v1 <= 0)
  {
    return 60;
  }

  else
  {
    return v1;
  }
}

- (uint64_t)hoursInDay
{
  [a1 maximumRangeOfUnit:32];
  if (v1 <= 0)
  {
    return 24;
  }

  else
  {
    return v1;
  }
}

+ (id)CalYearlessDateThreshold
{
  if (CalYearlessDateThreshold_onceToken != -1)
  {
    +[NSCalendar(CalClassAdditions) CalYearlessDateThreshold];
  }

  v1 = CalYearlessDateThreshold_s_threshold;

  return v1;
}

- (uint64_t)monthsInYearForDate:()CalClassAdditions
{
  v4 = a3;
  v5 = [v4 yearInCalendar:a1];
  v6 = [MEMORY[0x1E695DF10] CalComponentForYears:v5];
  v7 = [a1 dateFromComponents:v6];
  if ([v4 yearInCalendar:a1] == v5)
  {
    v8 = 0;
    v9 = v4;
    do
    {
      v4 = [v7 dateByAddingMonths:++v8 inCalendar:a1];

      v9 = v4;
    }

    while ([v4 yearInCalendar:a1] == v5);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (uint64_t)secondsInDay
{
  v2 = [a1 secondsInMinute];
  v3 = [a1 minutesInHour] * v2;
  return v3 * [a1 hoursInDay];
}

- (id)dateBySanityCheckingDateRoundedToDay:()CalClassAdditions
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 hourInCalendar:a1];
  if (v5)
  {
    v6 = v5;
    v7 = v4;
    v8 = v7;
    v9 = v7;
    if (v6 >= 12)
    {
      v9 = [v7 dateByAddingDays:1 inCalendar:a1];
    }

    v4 = [v9 dateRemovingTimeComponentsInCalendar:a1];

    if (([v4 isEqualToDate:v8] & 1) == 0)
    {
      v10 = +[CalFoundationLogSubsystem defaultCategory];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = [MEMORY[0x1E696AB78] localizedStringFromDate:v8 dateStyle:1 timeStyle:1];
        v21 = [a1 timeZone];
        v14 = [v21 descriptionForDate:v8];
        v15 = [MEMORY[0x1E696AB78] localizedStringFromDate:v4 dateStyle:1 timeStyle:1];
        v20 = [a1 timeZone];
        v16 = [v20 descriptionForDate:v4];
        v17 = [a1 calendarIdentifier];
        v18 = [a1 locale];
        v19 = [v18 localeIdentifier];
        *buf = 138413570;
        v23 = v13;
        v24 = 2112;
        v25 = v14;
        v26 = 2112;
        v27 = v15;
        v28 = 2112;
        v29 = v16;
        v30 = 2112;
        v31 = v17;
        v32 = 2112;
        v33 = v19;
        _os_log_error_impl(&dword_1B990D000, v10, OS_LOG_TYPE_ERROR, "ERROR: The given date could not be rounded to midnight. This date & time may not exist in the active calendar.\n\tInitial Start Date = %@ in %@;\n\tRevised Start Date = %@ in %@;\n\tCalendar/Locale = %@/%@;", buf, 0x3Eu);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

- (uint64_t)calendarDaysFromDate:()CalClassAdditions toDate:
{
  v6 = a3;
  v7 = a4;
  if (v6 == v7 || ([v6 isEqualToDate:v7] & 1) != 0)
  {
    v8 = 0;
  }

  else
  {
    v9 = [a1 components:48 fromDate:v6 toDate:v7 options:0];
    v8 = [v9 day];
    if ([v9 hour])
    {
      v10 = [v6 hourInCalendar:a1];
      v11 = [a1 timeZone];
      v12 = [v11 secondsFromGMTForDate:v7];
      v13 = [a1 timeZone];
      v14 = v12 - [v13 secondsFromGMTForDate:v6];

      if (v14 <= 0)
      {
        v15 = 0;
      }

      else
      {
        v15 = v14 / 0xE10uLL;
      }

      v16 = [v9 hour] + v10 + v15;
      if (v16 < 24)
      {
        v8 += v16 >> 63;
      }

      else
      {
        ++v8;
      }
    }
  }

  return v8;
}

- (BOOL)dateIsFirstOfMonth:()CalClassAdditions
{
  v3 = [a1 components:2147483664 fromDate:a3];
  v4 = [v3 day] == 1;

  return v4;
}

- (BOOL)dateIsFirstOfYear:()CalClassAdditions
{
  v4 = a3;
  v5 = [a1 components:14 fromDate:v4];
  v6 = objc_opt_new();
  [v6 setEra:{objc_msgSend(v5, "era")}];
  [v6 setYear:{objc_msgSend(v5, "year")}];
  v7 = [a1 dateFromComponents:v6];
  if (v7)
  {
    v8 = [a1 compareDate:v7 toDate:v4 toUnitGranularity:16] == 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (uint64_t)cal_isMultidayEventForUIWithStartDate:()CalClassAdditions endDate:
{
  v6 = a3;
  v7 = a4;
  if ([a1 isDate:v6 inSameDayAsDate:v7])
  {
    v8 = 0;
  }

  else
  {
    v9 = [a1 startOfDayForDate:v6];
    v10 = [a1 dateByAddingUnit:16 value:1 toDate:v9 options:0];
    v8 = [v7 isEqualToDate:v10] ^ 1;
  }

  return v8;
}

- (id)CalDateFromComponents:()CalClassAdditions inTimeZone:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 timeZone];
  [a1 setTimeZone:v6];

  v9 = [a1 dateFromComponents:v7];

  [a1 setTimeZone:v8];

  return v9;
}

- (id)CalDateBySubtractingComponents:()CalClassAdditions fromDate:
{
  v5 = a4;
  v6 = [a3 copy];
  if ([v6 era] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v6 setEra:{-objc_msgSend(v6, "era")}];
  }

  if ([v6 year] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v6 setYear:{-objc_msgSend(v6, "year")}];
  }

  if ([v6 month] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v6 setMonth:{-objc_msgSend(v6, "month")}];
  }

  if ([v6 day] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v6 setDay:{-objc_msgSend(v6, "day")}];
  }

  if ([v6 hour] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v6 setHour:{-objc_msgSend(v6, "hour")}];
  }

  if ([v6 minute] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v6 setMinute:{-objc_msgSend(v6, "minute")}];
  }

  if ([v6 second] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v6 setSecond:{-objc_msgSend(v6, "second")}];
  }

  v7 = [MEMORY[0x1E695DEE8] currentCalendar];
  v8 = [v7 dateByAddingComponents:v6 toDate:v5 options:0];

  return v8;
}

+ (id)CalGregorianCalendarForTimeZone:()CalClassAdditions
{
  v4 = a3;
  if (!v4 || ([MEMORY[0x1E695DFE8] timeZoneWithName:@"GMT"], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "isEquivalentTo:", v5), v5, v6))
  {
    v7 = [a1 CalGregorianGMTCalendar];
    goto LABEL_12;
  }

  v8 = [v4 name];
  os_unfair_lock_lock(&CalGregorianCalendarForTimeZone__lock);
  v9 = CalGregorianCalendarForTimeZone__calendarForTimeZoneCache;
  if (CalGregorianCalendarForTimeZone__calendarForTimeZoneCache)
  {
    goto LABEL_5;
  }

  WeakRetained = objc_loadWeakRetained(&CalGregorianCalendarForTimeZone__weakCache);
  if (!WeakRetained)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v15 = CalGregorianCalendarForTimeZone__calendarForTimeZoneCache;
    CalGregorianCalendarForTimeZone__calendarForTimeZoneCache = v9;

LABEL_5:
    WeakRetained = v9;
  }

  v7 = [WeakRetained objectForKey:v8];
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
    [v7 setTimeZone:v4];
    [WeakRetained setObject:v7 forKey:v8];
    v11 = [WeakRetained count];
    if (CalGregorianCalendarForTimeZone__calendarForTimeZoneCache)
    {
      if (v11 >= 0x20)
      {
        objc_storeWeak(&CalGregorianCalendarForTimeZone__weakCache, CalGregorianCalendarForTimeZone__calendarForTimeZoneCache);
        v12 = CFRetain(CalGregorianCalendarForTimeZone__calendarForTimeZoneCache);
        CFAutorelease(v12);
        v13 = CalGregorianCalendarForTimeZone__calendarForTimeZoneCache;
        CalGregorianCalendarForTimeZone__calendarForTimeZoneCache = 0;
      }
    }
  }

  os_unfair_lock_unlock(&CalGregorianCalendarForTimeZone__lock);

LABEL_12:

  return v7;
}

+ (id)CalCalendarWithUnsanitizedCalendarIdentifier:()CalClassAdditions
{
  v3 = a3;
  if (!v3)
  {
    v3 = *MEMORY[0x1E695D850];
  }

  v4 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:v3];
  if (!v4)
  {
    v4 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  }

  return v4;
}

- (id)CalOccurrencesForBirthday:()CalClassAdditions inDateRange:
{
  v6 = a3;
  v7 = a4;
  if (![v7 isValid])
  {
    v12 = MEMORY[0x1E695E0F0];
    goto LABEL_12;
  }

  v8 = objc_opt_new();
  [v8 setMonth:{objc_msgSend(v6, "month")}];
  [v8 setLeapMonth:{objc_msgSend(v6, "isLeapMonth")}];
  [v8 setDay:{objc_msgSend(v6, "day")}];
  if ([v6 year] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v6, "era") == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_10;
  }

  v9 = [a1 dateFromComponents:v6];
  v10 = [v7 endDate];
  v11 = [v9 CalIsAfterDate:v10];

  if ((v11 & 1) == 0)
  {
    v13 = [v7 startDate];
    v14 = [v9 CalIsAfterDate:v13];

    if (v14)
    {
      v15 = [CalDateRange alloc];
      v16 = [v7 endDate];
      v17 = [(CalDateRange *)v15 initWithStartDate:v9 endDate:v16];

      v7 = v17;
    }

LABEL_10:
    v18 = [v7 startDate];
    v19 = [a1 nextDateAfterDate:v18 matchingHour:0 minute:0 second:0 options:6];

    v20 = objc_opt_new();
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __71__NSCalendar_CalClassAdditions__CalOccurrencesForBirthday_inDateRange___block_invoke;
    v24[3] = &unk_1E7EC65F8;
    v7 = v7;
    v25 = v7;
    v21 = v20;
    v26 = v21;
    [a1 enumerateDatesStartingAfterDate:v19 matchingComponents:v8 options:256 usingBlock:v24];
    v22 = v26;
    v12 = v21;

    goto LABEL_11;
  }

  v12 = MEMORY[0x1E695E0F0];
LABEL_11:

LABEL_12:

  return v12;
}

+ (id)CalDateFromBirthdayComponents:()CalClassAdditions
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DFE8] defaultTimeZone];
  v5 = [v3 calendar];
  [v5 setTimeZone:v4];

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__0;
  v28 = __Block_byref_object_dispose__0;
  v29 = 0;
  if ([v3 year] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [v3 calendar];
    v7 = [v6 calendarIdentifier];
    v8 = [*MEMORY[0x1E695D850] isEqualToString:v7];

    if (v8)
    {
      v9 = [v3 copy];
      [v9 setYear:1604];
      v10 = [v3 calendar];
      v11 = [v10 dateFromComponents:v9];
      v12 = v25[5];
      v25[5] = v11;
    }

    else
    {
      v23[0] = 0;
      v23[1] = v23;
      v23[2] = 0x2020000000;
      v23[3] = 0;
      [v3 setEra:0x7FFFFFFFFFFFFFFFLL];
      v15 = [v3 calendar];
      v16 = [MEMORY[0x1E695DEE8] CalYearlessDateThreshold];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __63__NSCalendar_CalClassAdditions__CalDateFromBirthdayComponents___block_invoke;
      v19[3] = &unk_1E7EC6620;
      v21 = &v24;
      v20 = v3;
      v22 = v23;
      [v15 enumerateDatesStartingAfterDate:v16 matchingComponents:v20 options:6 usingBlock:v19];

      _Block_object_dispose(v23, 8);
    }
  }

  else
  {
    v13 = [v3 date];
    v14 = v25[5];
    v25[5] = v13;
  }

  v17 = v25[5];
  _Block_object_dispose(&v24, 8);

  return v17;
}

- (id)mapDatesFromDate:()CalClassAdditions stepSize:range:mapBlock:
{
  v10 = a3;
  v11 = a6;
  v12 = objc_opt_new();
  v13 = v10;
  v14 = [a1 dateByAddingUnit:a5 value:1 toDate:v13 options:0];
  v15 = v13;
  if ([v13 isBeforeDate:v14])
  {
    v16 = v13;
    do
    {
      v15 = [a1 dateByAddingUnit:a4 value:1 toDate:v16 options:0];

      v17 = v11[2](v11, v15);
      [v12 addObject:v17];

      v16 = v15;
    }

    while (([v15 isBeforeDate:v14] & 1) != 0);
  }

  return v12;
}

@end