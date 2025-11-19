@interface NSDate(IC)
- (id)ic_briefFormattedDate;
- (id)ic_briefFormattedDate:()IC locale:;
- (id)ic_briefFormattedDateForAccessibility;
- (id)ic_endOfDay;
- (id)ic_shortFormattedDateForAccessibility:()IC;
- (id)ic_startOfDay;
- (uint64_t)ic_isLaterThanUnitsAgo:()IC value:;
- (uint64_t)ic_isSameDayAsDate:()IC;
- (uint64_t)ic_isToday;
- (uint64_t)ic_isWithinInclusiveDayIntervalBeginning:()IC ending:;
- (uint64_t)ic_isWithinSameMonth:()IC;
- (uint64_t)ic_isWithinSameYear:()IC;
- (uint64_t)ic_isYesterday;
- (uint64_t)ic_iso8601Date;
- (uint64_t)ic_localDateWithSeconds;
- (uint64_t)ic_truncated;
- (unint64_t)ic_numberOfDaysFromDate:()IC;
@end

@implementation NSDate(IC)

- (uint64_t)ic_isToday
{
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [v2 components:28 fromDate:a1];
  v4 = [v2 dateFromComponents:v3];
  v5 = [MEMORY[0x1E695DF00] date];
  v6 = [v2 components:28 fromDate:v5];

  v7 = [v2 dateFromComponents:v6];
  v8 = [v4 isEqualToDate:v7];

  return v8;
}

- (uint64_t)ic_isYesterday
{
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [v2 components:28 fromDate:a1];
  v4 = [v2 dateFromComponents:v3];
  v5 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v5 setDay:-1];
  v6 = [MEMORY[0x1E695DF00] date];
  v7 = [v2 dateByAddingComponents:v5 toDate:v6 options:0];

  v8 = [v2 components:28 fromDate:v7];
  v9 = [v2 dateFromComponents:v8];

  v10 = [v4 isEqualToDate:v9];
  return v10;
}

- (uint64_t)ic_localDateWithSeconds
{
  if (ic_localDateWithSeconds_localFormatterOnceToken != -1)
  {
    [NSDate(IC) ic_localDateWithSeconds];
  }

  v2 = ic_localDateWithSeconds_localFormatter;

  return [v2 stringFromDate:a1];
}

- (id)ic_startOfDay
{
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [v2 startOfDayForDate:a1];

  return v3;
}

- (id)ic_endOfDay
{
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [v2 components:28 fromDate:a1];
  [v3 setHour:23];
  [v3 setMinute:59];
  [v3 setSecond:59];
  v4 = [v2 dateFromComponents:v3];

  return v4;
}

- (uint64_t)ic_iso8601Date
{
  if (ic_iso8601Date_onceToken != -1)
  {
    [NSDate(IC) ic_iso8601Date];
  }

  v2 = ic_iso8601Date_dateFormatter;

  return [v2 stringFromDate:a1];
}

- (id)ic_shortFormattedDateForAccessibility:()IC
{
  if (([a1 ic_isToday] & 1) != 0 || objc_msgSend(a1, "ic_isYesterday"))
  {
    if (ic_shortFormattedDateForAccessibility__shortRelativeOnceToken != -1)
    {
      [NSDate(IC) ic_shortFormattedDateForAccessibility:];
    }

    v5 = &ic_shortFormattedDateForAccessibility__shortRelativeformatter;
  }

  else if (a3)
  {
    if (ic_shortFormattedDateForAccessibility__shortAccessibilityStandardOnceToken != -1)
    {
      [NSDate(IC) ic_shortFormattedDateForAccessibility:];
    }

    v5 = &ic_shortFormattedDateForAccessibility__shortAccessibilityStandardformatter;
  }

  else
  {
    if (ic_shortFormattedDateForAccessibility__shortStandardOnceToken != -1)
    {
      [NSDate(IC) ic_shortFormattedDateForAccessibility:];
    }

    v5 = &ic_shortFormattedDateForAccessibility__shortStandardformatter;
  }

  v6 = [*v5 stringFromDate:a1];

  return v6;
}

- (id)ic_briefFormattedDate
{
  if (ic_briefFormattedDate_cachedDateString)
  {
    v2 = ic_briefFormattedDate_cachedDate == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2 || ([ic_briefFormattedDate_cachedDate timeIntervalSinceDate:a1], fabs(v3) >= 1.0))
  {
    v4 = [MEMORY[0x1E695DF58] currentLocale];
    v5 = [v4 copy];
    v6 = [a1 ic_briefFormattedDate:0 locale:v5];
    v7 = ic_briefFormattedDate_cachedDateString;
    ic_briefFormattedDate_cachedDateString = v6;

    objc_storeStrong(&ic_briefFormattedDate_cachedDate, a1);
  }

  v8 = ic_briefFormattedDate_cachedDateString;

  return v8;
}

- (id)ic_briefFormattedDateForAccessibility
{
  v2 = [MEMORY[0x1E695DF58] currentLocale];
  v3 = [a1 ic_briefFormattedDate:1 locale:v2];

  return v3;
}

- (id)ic_briefFormattedDate:()IC locale:
{
  v6 = a4;
  v7 = a1;
  v8 = [MEMORY[0x1E695DF00] distantFuture];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = [MEMORY[0x1E695DF00] date];

    v7 = v10;
  }

  if ([v7 ic_isToday])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__NSDate_IC__ic_briefFormattedDate_locale___block_invoke;
    block[3] = &unk_1E84848B8;
    v38 = v6;
    if (ic_briefFormattedDate_locale__briefTodayOnceToken != -1)
    {
      dispatch_once(&ic_briefFormattedDate_locale__briefTodayOnceToken, block);
    }

    v11 = [ic_briefFormattedDate_locale__briefTodayFormatter stringFromDate:v7];
    v12 = v38;
  }

  else
  {
    v12 = [MEMORY[0x1E695DEE8] currentCalendar];
    v13 = [MEMORY[0x1E695DF00] date];
    v14 = [v12 components:28 fromDate:v13];

    v15 = [v12 dateFromComponents:v14];
    v16 = [v12 dateByAddingUnit:16 value:-1 toDate:v15 options:0];
    v17 = [v12 dateByAddingUnit:0x2000 value:-1 toDate:v15 options:0];
    if ([v7 compare:v16] == 1 || objc_msgSend(v7, "compare:", v17) != 1)
    {
      if (a3)
      {
        v27 = MEMORY[0x1E69E9820];
        v28 = 3221225472;
        v29 = __43__NSDate_IC__ic_briefFormattedDate_locale___block_invoke_3;
        v30 = &unk_1E84848B8;
        v18 = &v31;
        v31 = v6;
        if (ic_briefFormattedDate_locale__templateOnceToken_15 != -1)
        {
          dispatch_once(&ic_briefFormattedDate_locale__templateOnceToken_15, &v27);
        }

        v20 = ic_briefFormattedDate_locale__accessibilityDateFormatter;
      }

      else
      {
        v22 = MEMORY[0x1E69E9820];
        v23 = 3221225472;
        v24 = __43__NSDate_IC__ic_briefFormattedDate_locale___block_invoke_4;
        v25 = &unk_1E84848B8;
        v18 = &v26;
        v26 = v6;
        if (ic_briefFormattedDate_locale__briefRelativeOnceToken != -1)
        {
          dispatch_once(&ic_briefFormattedDate_locale__briefRelativeOnceToken, &v22);
        }

        v20 = ic_briefFormattedDate_locale__briefRelativeFormatter;
      }
    }

    else
    {
      v32 = MEMORY[0x1E69E9820];
      v33 = 3221225472;
      v34 = __43__NSDate_IC__ic_briefFormattedDate_locale___block_invoke_2;
      v35 = &unk_1E84848B8;
      v18 = &v36;
      v36 = v6;
      if (ic_briefFormattedDate_locale__templateOnceToken != -1)
      {
        dispatch_once(&ic_briefFormattedDate_locale__templateOnceToken, &v32);
      }

      v19 = &ic_briefFormattedDate_locale__accessibleTemplateFormatter;
      if (!a3)
      {
        v19 = &ic_briefFormattedDate_locale__templateFormatter;
      }

      v20 = *v19;
    }

    v11 = [v20 stringFromDate:{v7, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36}];
  }

  return v11;
}

- (uint64_t)ic_truncated
{
  v1 = MEMORY[0x1E695DF00];
  [a1 timeIntervalSince1970];
  v3 = trunc(v2);

  return [v1 dateWithTimeIntervalSince1970:v3];
}

- (uint64_t)ic_isSameDayAsDate:()IC
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v7 = [v6 isDate:a1 inSameDayAsDate:v5];

  return v7;
}

- (uint64_t)ic_isLaterThanUnitsAgo:()IC value:
{
  v7 = [MEMORY[0x1E695DEE8] currentCalendar];
  v8 = [MEMORY[0x1E695DF00] now];
  v9 = [v7 dateByAddingUnit:a3 value:-a4 toDate:v8 options:0];

  v10 = [a1 ic_isLaterThanDate:v9];
  return v10;
}

- (uint64_t)ic_isWithinInclusiveDayIntervalBeginning:()IC ending:
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DEE8] currentCalendar];
  if (v6 && [a1 ic_isEarlierThanDate:v6] && !objc_msgSend(v8, "isDate:inSameDayAsDate:", a1, v6))
  {
    v9 = 0;
  }

  else if (v7 && [a1 ic_isLaterThanDate:v7])
  {
    v9 = [v8 isDate:a1 inSameDayAsDate:v7];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (uint64_t)ic_isWithinSameMonth:()IC
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v7 = [v6 isDate:a1 equalToDate:v5 toUnitGranularity:8];

  return v7;
}

- (uint64_t)ic_isWithinSameYear:()IC
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v7 = [v6 isDate:a1 equalToDate:v5 toUnitGranularity:4];

  return v7;
}

- (unint64_t)ic_numberOfDaysFromDate:()IC
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v7 = [v6 ordinalityOfUnit:16 inUnit:2 forDate:a1];
  v8 = [v6 ordinalityOfUnit:16 inUnit:2 forDate:v5];

  if (v7 <= v8)
  {
    v9 = v8 - v7;
  }

  else
  {
    v9 = v7 - v8;
  }

  return v9;
}

@end