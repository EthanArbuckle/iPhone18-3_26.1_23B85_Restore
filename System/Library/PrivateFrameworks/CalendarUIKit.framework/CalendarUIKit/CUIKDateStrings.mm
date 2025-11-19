@interface CUIKDateStrings
+ (id)_cachedDateFormatterForDomain:(id)a3 calendar:(id)a4 formatterKey:(id)a5 creationBlock:(id)a6;
+ (id)_languageIDfromLocalID:(id)a3;
+ (id)_newDateFormatterForDateStyle:(unint64_t)a3 timeStyle:(unint64_t)a4 calendar:(id)a5;
+ (id)_newDateFormatterForFormat:(id)a3 calendar:(id)a4;
+ (id)_newDateFormatterForTemplate:(id)a3 calendar:(id)a4;
+ (id)_overlayDayOnlyStringForFormat:(id)a3 date:(id)a4 inCalendar:(id)a5;
+ (id)_significantLocaleComponents:(id)a3;
+ (id)_zodiacSymbolForDate:(id)a3 inCalendar:(id)a4;
+ (id)cachedDateFormatterForDateStyle:(unint64_t)a3 timeStyle:(unint64_t)a4 calendar:(id)a5;
+ (id)cachedDateFormatterForFormat:(id)a3 calendar:(id)a4;
+ (id)cachedDateFormatterForTemplate:(id)a3 calendar:(id)a4;
+ (id)longStringForDate:(id)a3 inCalendar:(id)a4;
+ (id)mediumStringForDate:(id)a3 inCalendar:(id)a4;
+ (id)monthDayStringForDate:(id)a3 inCalendar:(id)a4;
+ (id)monthStringForDate:(id)a3 inCalendar:(id)a4;
+ (id)overlayCalendarPickerDisplayNameForCalendarWithIdentifier:(id)a3;
+ (id)overlayFirstDayOfLunarMonthLocalizedStringInCalendar:(id)a3;
+ (id)overlayLocalizedStringForKey:(id)a3 calendar:(id)a4;
+ (id)overlayMediumStringForDate:(id)a3 inCalendar:(id)a4;
+ (id)overlayShortStringForDate:(id)a3 inCalendar:(id)a4 alwaysShowingDayNumber:(BOOL)a5;
+ (id)overlayYearStringForDate:(id)a3 inCalendar:(id)a4;
+ (id)stylizedTimelineHourStringForHourDate:(id)a3 baseFontSize:(double)a4;
+ (id)yearMonthDayStringForDate:(id)a3 inCalendar:(id)a4;
+ (id)yearMonthStringForDate:(id)a3 inCalendar:(id)a4;
+ (id)yearStringForDate:(id)a3 inCalendar:(id)a4;
+ (unint64_t)overlayCalendarTypeForCalendarIdentifier:(id)a3;
@end

@implementation CUIKDateStrings

+ (id)_newDateFormatterForDateStyle:(unint64_t)a3 timeStyle:(unint64_t)a4 calendar:(id)a5
{
  v7 = a5;
  v8 = objc_opt_new();
  v9 = [v7 locale];
  [v8 setLocale:v9];

  [v8 setCalendar:v7];
  [v8 setDateStyle:a3];
  [v8 setTimeStyle:a4];
  v10 = [v7 timeZone];

  [v8 setTimeZone:v10];
  return v8;
}

+ (id)_newDateFormatterForFormat:(id)a3 calendar:(id)a4
{
  v6 = a3;
  v7 = [a1 _newDateFormatterForDateStyle:4 timeStyle:4 calendar:a4];
  [v7 setDateFormat:v6];

  return v7;
}

+ (id)_newDateFormatterForTemplate:(id)a3 calendar:(id)a4
{
  v6 = MEMORY[0x1E696AB78];
  v7 = a4;
  v8 = a3;
  v9 = [v7 locale];
  v10 = [v6 dateFormatFromTemplate:v8 options:0 locale:v9];

  v11 = [a1 _newDateFormatterForFormat:v10 calendar:v7];
  return v11;
}

+ (id)_cachedDateFormatterForDomain:(id)a3 calendar:(id)a4 formatterKey:(id)a5 creationBlock:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [MEMORY[0x1E696AF00] currentThread];
  v14 = [v13 threadDictionary];

  v15 = [v14 objectForKeyedSubscript:v9];
  if (!v15)
  {
    v15 = objc_opt_new();
    [v14 setObject:v15 forKeyedSubscript:v9];
  }

  v16 = [v10 timeZone];
  v17 = [v15 objectForKey:v16];

  if (!v17)
  {
    v17 = objc_opt_new();
    v18 = [v10 timeZone];
    [v15 setObject:v17 forKey:v18];
  }

  v19 = [v17 objectForKey:v10];
  if (!v19)
  {
    v19 = objc_opt_new();
    [v17 setObject:v19 forKey:v10];
  }

  v20 = [v19 objectForKey:v11];
  if (!v20)
  {
    v20 = v12[2](v12);
    [v19 setObject:v20 forKey:v11];
  }

  return v20;
}

+ (id)cachedDateFormatterForFormat:(id)a3 calendar:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__CUIKDateStrings_cachedDateFormatterForFormat_calendar___block_invoke;
  v12[3] = &unk_1E839AC38;
  v14 = v7;
  v15 = a1;
  v13 = v6;
  v8 = v7;
  v9 = v6;
  v10 = [a1 _cachedDateFormatterForDomain:@"com.apple.calendarUIKit.dateStrings.formattersByFormat" calendar:v8 formatterKey:v9 creationBlock:v12];

  return v10;
}

id __57__CUIKDateStrings_cachedDateFormatterForFormat_calendar___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 48) _newDateFormatterForFormat:*(a1 + 32) calendar:*(a1 + 40)];

  return v1;
}

+ (id)cachedDateFormatterForTemplate:(id)a3 calendar:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__CUIKDateStrings_cachedDateFormatterForTemplate_calendar___block_invoke;
  v12[3] = &unk_1E839AC38;
  v14 = v7;
  v15 = a1;
  v13 = v6;
  v8 = v7;
  v9 = v6;
  v10 = [a1 _cachedDateFormatterForDomain:@"com.apple.calendarUIKit.dateStrings.formattersByTemplate" calendar:v8 formatterKey:v9 creationBlock:v12];

  return v10;
}

id __59__CUIKDateStrings_cachedDateFormatterForTemplate_calendar___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 48) _newDateFormatterForTemplate:*(a1 + 32) calendar:*(a1 + 40)];

  return v1;
}

+ (id)cachedDateFormatterForDateStyle:(unint64_t)a3 timeStyle:(unint64_t)a4 calendar:(id)a5
{
  v8 = a5;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu:%lu", a3, a4];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__CUIKDateStrings_cachedDateFormatterForDateStyle_timeStyle_calendar___block_invoke;
  v13[3] = &unk_1E839AC60;
  v16 = a3;
  v17 = a4;
  v14 = v8;
  v15 = a1;
  v10 = v8;
  v11 = [a1 _cachedDateFormatterForDomain:@"com.apple.calendarUIKit.dateStrings.formattersByStyles" calendar:v10 formatterKey:v9 creationBlock:v13];

  return v11;
}

id __70__CUIKDateStrings_cachedDateFormatterForDateStyle_timeStyle_calendar___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 40) _newDateFormatterForDateStyle:*(a1 + 48) timeStyle:*(a1 + 56) calendar:*(a1 + 32)];

  return v1;
}

+ (id)yearStringForDate:(id)a3 inCalendar:(id)a4
{
  v6 = a3;
  v7 = [a1 cachedDateFormatterForTemplate:@"y" calendar:a4];
  v8 = [v7 stringFromDate:v6];

  return v8;
}

+ (id)yearMonthStringForDate:(id)a3 inCalendar:(id)a4
{
  v6 = a3;
  v7 = [a1 cachedDateFormatterForTemplate:@"yMMMM" calendar:a4];
  v8 = [v7 stringFromDate:v6];

  return v8;
}

+ (id)yearMonthDayStringForDate:(id)a3 inCalendar:(id)a4
{
  v6 = a3;
  v7 = [a1 cachedDateFormatterForTemplate:@"UMMMd" calendar:a4];
  v8 = [v7 stringFromDate:v6];

  return v8;
}

+ (id)monthStringForDate:(id)a3 inCalendar:(id)a4
{
  v6 = a3;
  v7 = [a1 cachedDateFormatterForTemplate:@"MMM" calendar:a4];
  v8 = [v7 stringFromDate:v6];

  return v8;
}

+ (id)monthDayStringForDate:(id)a3 inCalendar:(id)a4
{
  v6 = a3;
  v7 = [a1 cachedDateFormatterForTemplate:@"MMMd" calendar:a4];
  v8 = [v7 stringFromDate:v6];

  return v8;
}

+ (id)mediumStringForDate:(id)a3 inCalendar:(id)a4
{
  v6 = a3;
  v7 = [a1 cachedDateFormatterForDateStyle:2 timeStyle:0 calendar:a4];
  v8 = [v7 stringFromDate:v6];

  return v8;
}

+ (id)longStringForDate:(id)a3 inCalendar:(id)a4
{
  v6 = a3;
  v7 = [a1 cachedDateFormatterForDateStyle:3 timeStyle:0 calendar:a4];
  v8 = [v7 stringFromDate:v6];

  return v8;
}

+ (unint64_t)overlayCalendarTypeForCalendarIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x1E695D828]])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695D860]])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695D880]])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695D890]])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695D818]])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695D858]])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695D8A0]])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695D8A8]])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695D8B0]])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695D8B8]])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695D8D0]])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695D8D8]])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695D8E8]])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695D838]])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695D8E0]])
  {
    v4 = 15;
  }

  else
  {
    v5 = +[CUIKLogSubsystem dateStrings];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(CUIKDateStrings *)v3 overlayCalendarTypeForCalendarIdentifier:v5];
    }

    v4 = 0;
  }

  return v4;
}

+ (id)_significantLocaleComponents:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF58] componentsFromLocaleIdentifier:a3];
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = *MEMORY[0x1E695D9E8];
  v19[0] = *MEMORY[0x1E695D9B0];
  v19[1] = v5;
  v6 = *MEMORY[0x1E695DA10];
  v19[2] = *MEMORY[0x1E695D978];
  v19[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:{4, 0}];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [v3 objectForKey:v12];
        if (v13)
        {
          [v4 setObject:v13 forKey:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v9);
  }

  return v4;
}

+ (id)_languageIDfromLocalID:(id)a3
{
  v3 = [a1 _significantLocaleComponents:a3];
  v4 = [MEMORY[0x1E695DF58] localeIdentifierFromComponents:v3];
  v5 = [v3 objectForKey:*MEMORY[0x1E695D9B0]];
  v6 = [v5 isEqualToString:@"zh"];

  if (v6)
  {
    v7 = [MEMORY[0x1E695DF58] addLikelySubtagsForLocaleIdentifier:v4];

    v4 = v7;
  }

  v8 = [MEMORY[0x1E695DF58] canonicalLanguageIdentifierFromString:v4];

  return v8;
}

+ (id)overlayLocalizedStringForKey:(id)a3 calendar:(id)a4
{
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a4 locale];
  v8 = [v7 localeIdentifier];

  v9 = [a1 _languageIDfromLocalID:v8];
  v10 = CUIKBundle();
  v11 = [v10 preferredLocalizations];
  v12 = [v11 firstObject];

  v13 = CUIKBundle();
  v14 = [v13 localizations];

  v15 = MEMORY[0x1E696AAE8];
  v22[0] = v9;
  v22[1] = v12;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v17 = [v15 preferredLocalizationsFromArray:v14 forPreferences:v16];

  v18 = CUIKBundle();
  v19 = [v17 firstObject];
  v20 = [v18 localizedStringForKey:v6 value:0 table:0 localization:v19];

  return v20;
}

+ (id)overlayFirstDayOfLunarMonthLocalizedStringInCalendar:(id)a3
{
  v4 = a3;
  v5 = [v4 calendarIdentifier];
  v6 = [a1 overlayCalendarTypeForCalendarIdentifier:v5] - 1;
  v7 = [a1 overlayLocalizedStringForKey:off_1E839ACF8[v6] calendar:v4];
  if (!v7)
  {
    v8 = +[CUIKLogSubsystem dateStrings];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CUIKDateStrings *)v5 overlayFirstDayOfLunarMonthLocalizedStringInCalendar:v4];
    }

    v9 = CUIKBundle();
    v10 = v9;
    switch(v6)
    {
      case 0:
        v11 = @"First Day of Chinese Month";
        goto LABEL_15;
      case 1:
        v11 = @"First Day of Hebrew Month";
LABEL_15:
        v12 = &stru_1F4AA8958;
        goto LABEL_23;
      case 2:
        v11 = @"First Day of Hijri-IslamicCivil Month";
        v12 = @"First Day of Hijri Month";
        goto LABEL_23;
      case 3:
        v11 = @"First Day of Hijri-IslamicUmmAlQura Month";
        v12 = @"First Day of Hijri Month (Umm al-Qura)";
        goto LABEL_23;
      case 4:
        v11 = @"First Day of Bangla Month";
        goto LABEL_22;
      case 5:
        v11 = @"First Day of Gujarati Month";
        goto LABEL_22;
      case 6:
        v11 = @"First Day of Kannada Month";
        goto LABEL_22;
      case 7:
        v11 = @"First Day of Malayalam Month";
        goto LABEL_22;
      case 8:
        v11 = @"First Day of Marathi Month";
        goto LABEL_22;
      case 9:
        v11 = @"First Day of Odia Month";
        goto LABEL_22;
      case 10:
        v11 = @"First Day of Tamil Month";
        goto LABEL_22;
      case 11:
        v11 = @"First Day of Telugu Month";
        goto LABEL_22;
      case 12:
        v11 = @"First Day of Vikram Month";
        goto LABEL_22;
      case 13:
        v11 = @"First Day of Korean Month";
        goto LABEL_22;
      case 14:
        v11 = @"First Day of Vietnamese Month";
LABEL_22:
        v12 = v11;
LABEL_23:
        v7 = [v9 localizedStringForKey:v11 value:v12 table:0];

        if (v7)
        {
          break;
        }

        v13 = +[CUIKLogSubsystem dateStrings];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          +[CUIKDateStrings overlayFirstDayOfLunarMonthLocalizedStringInCalendar:];
        }

LABEL_27:
        v7 = @"First day of lunar month";
        break;
      default:
        goto LABEL_27;
    }
  }

  return v7;
}

+ (id)overlayCalendarPickerDisplayNameForCalendarWithIdentifier:(id)a3
{
  v4 = a3;
  switch([a1 overlayCalendarTypeForCalendarIdentifier:v4])
  {
    case 0:
      v5 = v4;
      break;
    case 1:
      v6 = CUIKBundle();
      v7 = v6;
      v8 = @"Chinese";
      goto LABEL_18;
    case 2:
      v6 = CUIKBundle();
      v7 = v6;
      v8 = @"Hebrew";
      goto LABEL_18;
    case 3:
      v6 = CUIKBundle();
      v7 = v6;
      v8 = @"Hijri-IslamicCivil";
      v9 = @"Hijri";
      goto LABEL_19;
    case 4:
      v6 = CUIKBundle();
      v7 = v6;
      v8 = @"Hijri-IslamicUmmAlQura";
      v9 = @"Hijri (Umm al-Qura)";
      goto LABEL_19;
    case 5:
      v6 = CUIKBundle();
      v7 = v6;
      v8 = @"Bangla";
      goto LABEL_18;
    case 6:
      v6 = CUIKBundle();
      v7 = v6;
      v8 = @"Gujarati";
      goto LABEL_18;
    case 7:
      v6 = CUIKBundle();
      v7 = v6;
      v8 = @"Kannada";
      goto LABEL_18;
    case 8:
      v6 = CUIKBundle();
      v7 = v6;
      v8 = @"Malayalam";
      goto LABEL_18;
    case 9:
      v6 = CUIKBundle();
      v7 = v6;
      v8 = @"Marathi";
      goto LABEL_18;
    case 10:
      v6 = CUIKBundle();
      v7 = v6;
      v8 = @"Odia";
      goto LABEL_18;
    case 11:
      v6 = CUIKBundle();
      v7 = v6;
      v8 = @"Tamil";
      goto LABEL_18;
    case 12:
      v6 = CUIKBundle();
      v7 = v6;
      v8 = @"Telugu";
      goto LABEL_18;
    case 13:
      v6 = CUIKBundle();
      v7 = v6;
      v8 = @"Vikram";
      goto LABEL_18;
    case 14:
      v6 = CUIKBundle();
      v7 = v6;
      v8 = @"Korean";
      goto LABEL_18;
    case 15:
      v6 = CUIKBundle();
      v7 = v6;
      v8 = @"Vietnamese";
LABEL_18:
      v9 = &stru_1F4AA8958;
LABEL_19:
      v5 = [v6 localizedStringForKey:v8 value:v9 table:0];

      break;
    default:
      v5 = 0;
      break;
  }

  return v5;
}

+ (id)_overlayDayOnlyStringForFormat:(id)a3 date:(id)a4 inCalendar:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (_overlayDayOnlyStringForFormat_date_inCalendar__onceToken != -1)
  {
    +[CUIKDateStrings _overlayDayOnlyStringForFormat:date:inCalendar:];
  }

  if (_overlayDayOnlyStringForFormat_date_inCalendar__s_previousCalendar != v10 && ([v10 isEqual:?] & 1) == 0)
  {
    [_overlayDayOnlyStringForFormat_date_inCalendar__s_cachedStrings removeAllObjects];
    objc_storeStrong(&_overlayDayOnlyStringForFormat_date_inCalendar__s_previousCalendar, a5);
  }

  v11 = [v10 component:16 fromDate:v9];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%ld", v8, v11];
  v13 = [_overlayDayOnlyStringForFormat_date_inCalendar__s_cachedStrings objectForKey:v12];
  if (!v13)
  {
    v14 = [a1 cachedDateFormatterForFormat:v8 calendar:v10];
    v13 = [v14 stringFromDate:v9];

    [_overlayDayOnlyStringForFormat_date_inCalendar__s_cachedStrings setObject:v13 forKey:v12];
  }

  return v13;
}

uint64_t __66__CUIKDateStrings__overlayDayOnlyStringForFormat_date_inCalendar___block_invoke()
{
  v0 = objc_opt_new();
  v1 = _overlayDayOnlyStringForFormat_date_inCalendar__s_cachedStrings;
  _overlayDayOnlyStringForFormat_date_inCalendar__s_cachedStrings = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)overlayShortStringForDate:(id)a3 inCalendar:(id)a4 alwaysShowingDayNumber:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 components:2147483664 fromDate:v8];
  if ([v10 day] != 1 || (objc_msgSend(v10, "isRepeatedDay") & 1) != 0 || a5)
  {
    v11 = [a1 overlayDayNumberStringForDate:v8 inCalendar:v9];
  }

  else
  {
    v11 = [a1 monthStringForDate:v8 inCalendar:v9];
  }

  v12 = v11;

  return v12;
}

+ (id)overlayMediumStringForDate:(id)a3 inCalendar:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 components:2147483664 fromDate:v6];
  if ([v8 day] == 1 && (objc_msgSend(v8, "isRepeatedDay") & 1) == 0)
  {
    v9 = [a1 monthDayStringForDate:v6 inCalendar:v7];
  }

  else
  {
    v9 = [a1 overlayDayNumberStringForDate:v6 inCalendar:v7];
  }

  v10 = v9;

  return v10;
}

+ (id)_zodiacSymbolForDate:(id)a3 inCalendar:(id)a4
{
  v5 = a3;
  v6 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__CUIKDateStrings__zodiacSymbolForDate_inCalendar___block_invoke;
  block[3] = &unk_1E8399BD8;
  v7 = v6;
  v13 = v7;
  if (_zodiacSymbolForDate_inCalendar__onceToken != -1)
  {
    dispatch_once(&_zodiacSymbolForDate_inCalendar__onceToken, block);
  }

  if (_zodiacSymbolForDate_inCalendar__s_formatter)
  {
    [v7 component:4 fromDate:v5];
    v11 = 0;
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharacters:v10 length:udat_getSymbols()];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __51__CUIKDateStrings__zodiacSymbolForDate_inCalendar___block_invoke(uint64_t a1)
{
  v3 = 0;
  v1 = [*(a1 + 32) locale];
  v2 = [v1 localeIdentifier];
  [v2 UTF8String];
  _zodiacSymbolForDate_inCalendar__s_formatter = udat_open();
}

+ (id)overlayYearStringForDate:(id)a3 inCalendar:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 calendarIdentifier];
  v9 = [v8 isEqualToString:*MEMORY[0x1E695D828]];

  if (v9)
  {
    v10 = [a1 cachedDateFormatterForFormat:@"U" calendar:v7];
    v11 = [v10 stringFromDate:v6];

    v12 = [a1 _zodiacSymbolForDate:v6 inCalendar:v7];
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = &stru_1F4AA8958;
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@年", v11, v13];
  }

  else
  {
    v14 = [a1 yearStringForDate:v6 inCalendar:v7];
  }

  return v14;
}

+ (id)stylizedTimelineHourStringForHourDate:(id)a3 baseFontSize:(double)a4
{
  v131[2] = *MEMORY[0x1E69E9840];
  v69 = a3;
  v68 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"GMT"];
  if ([MEMORY[0x1E6992F68] uses24HourTime])
  {
    v5 = [v69 localizedStringWithFormat:*MEMORY[0x1E6992E88] timeZone:v68];
    v6 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v5];
    v7 = [v5 length];
    v130[0] = *MEMORY[0x1E69DB648];
    v8 = [MEMORY[0x1E69DB878] systemFontOfSize:floor(a4)];
    v131[0] = v8;
    v130[1] = *MEMORY[0x1E69DB650];
    v9 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v131[1] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v131 forKeys:v130 count:2];

    [v6 setAttributes:v10 range:{0, v7}];
  }

  else
  {
    v5 = [MEMORY[0x1E6992F68] timelineHourDateFormatter];
    v11 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
    [v5 setTimeZone:v11];

    v12 = [v5 _attributedStringWithFieldsFromDate:v69];
    v13 = [v12 mutableCopy];

    v107 = 0;
    v108 = &v107;
    v109 = 0x3032000000;
    v110 = __Block_byref_object_copy__11;
    v111 = __Block_byref_object_dispose__11;
    v112 = 0;
    v105[0] = 0;
    v105[1] = v105;
    v105[2] = 0x3032000000;
    v105[3] = __Block_byref_object_copy__11;
    v105[4] = __Block_byref_object_dispose__11;
    v106 = 0;
    v14 = [MEMORY[0x1E695DF70] array];
    v101 = 0;
    v102 = &v101;
    v103 = 0x2020000000;
    v104 = -1;
    v15 = [v13 length];
    v95[0] = MEMORY[0x1E69E9820];
    v95[1] = 3221225472;
    v95[2] = __70__CUIKDateStrings_stylizedTimelineHourStringForHourDate_baseFontSize___block_invoke;
    v95[3] = &unk_1E839AC88;
    v16 = v13;
    v96 = v16;
    v98 = &v107;
    v99 = &v101;
    v100 = v105;
    v65 = v14;
    v97 = v65;
    [v16 enumerateAttributesInRange:0 options:v15 usingBlock:{0, v95}];
    if (([v108[5] isEqual:@"AM"] & 1) != 0 || objc_msgSend(v108[5], "isEqual:", @"PM"))
    {
      if (stylizedTimelineHourStringForHourDate_baseFontSize__onceToken != -1)
      {
        +[CUIKDateStrings stylizedTimelineHourStringForHourDate:baseFontSize:];
      }

      [v16 insertAttributedString:stylizedTimelineHourStringForHourDate_baseFontSize__spaceAttrString atIndex:v102[3]];
    }

    v90 = 0;
    v91 = &v90;
    v92 = 0x3010000000;
    v93 = &unk_1CADB7076;
    v94 = xmmword_1CAD58160;
    v85 = 0;
    v86 = &v85;
    v87 = 0x3010000000;
    v88 = &unk_1CADB7076;
    v89 = xmmword_1CAD58160;
    v17 = [MEMORY[0x1E695DF70] array];
    v18 = [v16 length];
    v80[0] = MEMORY[0x1E69E9820];
    v80[1] = 3221225472;
    v80[2] = __70__CUIKDateStrings_stylizedTimelineHourStringForHourDate_baseFontSize___block_invoke_3;
    v80[3] = &unk_1E839ACB0;
    v19 = v16;
    v81 = v19;
    v83 = &v85;
    v84 = &v90;
    v67 = v17;
    v82 = v67;
    [v19 enumerateAttributesInRange:0 options:v18 usingBlock:{0, v80}];
    if (v91[4] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = [MEMORY[0x1E69DB878] systemFontOfSize:floor(a4) weight:*MEMORY[0x1E69DB970]];
      v21 = *MEMORY[0x1E69DB648];
      v66 = v20;
      v114[0] = v20;
      v22 = *MEMORY[0x1E69DB650];
      v113[0] = v21;
      v113[1] = v22;
      v23 = [MEMORY[0x1E69DC888] cuik_timelineHourColor];
      v114[1] = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v114 forKeys:v113 count:2];

      [v19 setAttributes:v24 range:{0, objc_msgSend(v19, "length")}];
    }

    else
    {
      v25 = [MEMORY[0x1E69DC888] cuik_timelineHourColor];
      v59 = *MEMORY[0x1E69DB650];
      v128 = *MEMORY[0x1E69DB650];
      v129 = v25;
      v66 = v25;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v129 forKeys:&v128 count:1];
      v26 = v91[4];
      if (v26 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v19 addAttributes:v24 range:{v26, v91[5]}];
      }

      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v27 = v67;
      v28 = [v27 countByEnumeratingWithState:&v76 objects:v127 count:16];
      if (v28)
      {
        v29 = *v77;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v77 != v29)
            {
              objc_enumerationMutation(v27);
            }

            v31 = [*(*(&v76 + 1) + 8 * i) rangeValue];
            [v19 addAttributes:v24 range:{v31, v32}];
          }

          v28 = [v27 countByEnumeratingWithState:&v76 objects:v127 count:16];
        }

        while (v28);
      }

      v33 = [MEMORY[0x1E69DB878] systemFontOfSize:floor(a4 * 1.36363636)];
      v34 = [MEMORY[0x1E69DB878] cuik_createFontFromFont:v33 withFontGrade:2];
      v35 = *MEMORY[0x1E69DB648];
      v125 = *MEMORY[0x1E69DB648];
      v58 = v34;
      v126 = v34;
      v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v126 forKeys:&v125 count:1];
      v36 = v91[4];
      if (v36 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v19 addAttributes:v61 range:{v36, v91[5]}];
      }

      v64 = [MEMORY[0x1E69DB878] cuik_preferredTightLeadingFontForTextStyle:*MEMORY[0x1E69DDD10]];
      v37 = *MEMORY[0x1E69DB900];
      v123[0] = *MEMORY[0x1E69DB908];
      v123[1] = v37;
      v124[0] = &unk_1F4ABEBE8;
      v124[1] = &unk_1F4ABEC00;
      v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v124 forKeys:v123 count:2];
      v38 = [v64 fontDescriptor];
      v121 = *MEMORY[0x1E69DB8B0];
      v120 = v63;
      v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v120 count:1];
      v122 = v39;
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v122 forKeys:&v121 count:1];
      v62 = [v38 fontDescriptorByAddingAttributes:v40];

      v41 = [MEMORY[0x1E69DB878] fontWithDescriptor:v62 size:floor(a4)];
      v118 = v59;
      v42 = [MEMORY[0x1E69DC888] cuik_timelineDesignatorColor];
      v119 = v42;
      v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v119 forKeys:&v118 count:1];

      v43 = v86[4];
      if (v43 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v19 addAttributes:v60 range:{v43, v86[5]}];
      }

      v116 = v35;
      v117 = v41;
      v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
      v45 = v86[4];
      if (v45 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v19 addAttributes:v44 range:{v45, v86[5]}];
      }

      v46 = v33;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v47 = v27;
      v48 = [v47 countByEnumeratingWithState:&v72 objects:v115 count:16];
      if (v48)
      {
        v49 = *v73;
        do
        {
          for (j = 0; j != v48; ++j)
          {
            if (*v73 != v49)
            {
              objc_enumerationMutation(v47);
            }

            v51 = [*(*(&v72 + 1) + 8 * j) rangeValue];
            [v19 addAttributes:v44 range:{v51, v52}];
          }

          v48 = [v47 countByEnumeratingWithState:&v72 objects:v115 count:16];
        }

        while (v48);
      }
    }

    v53 = [v19 length];
    v54 = *MEMORY[0x1E69DB688];
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __70__CUIKDateStrings_stylizedTimelineHourStringForHourDate_baseFontSize___block_invoke_196;
    v70[3] = &unk_1E839ACD8;
    v55 = v19;
    v71 = v55;
    [v55 enumerateAttribute:v54 inRange:0 options:v53 usingBlock:{0, v70}];
    v56 = v71;
    v6 = v55;

    _Block_object_dispose(&v85, 8);
    _Block_object_dispose(&v90, 8);

    _Block_object_dispose(&v101, 8);
    _Block_object_dispose(v105, 8);

    _Block_object_dispose(&v107, 8);
  }

  return v6;
}

void __70__CUIKDateStrings_stylizedTimelineHourStringForHourDate_baseFontSize___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v14 = [a2 objectForKeyedSubscript:*MEMORY[0x1E695D8F8]];
  v7 = [*(a1 + 32) string];
  v8 = [v7 substringWithRange:{a3, a4}];

  if ([v14 hasPrefix:@"a"])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v8);
    *(*(*(a1 + 56) + 8) + 24) = a3;
    goto LABEL_7;
  }

  v9 = [v14 lowercaseString];
  if ([v9 hasPrefix:@"h"])
  {

LABEL_6:
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v8);
    goto LABEL_7;
  }

  v10 = [v14 lowercaseString];
  v11 = [v10 hasPrefix:@"k"];

  if (v11)
  {
    goto LABEL_6;
  }

  v12 = [v8 stringByTrimmingWhitespaceAndRemovingNewlines];
  v13 = [v12 isEqual:&stru_1F4AA8958];

  if ((v13 & 1) == 0)
  {
    [*(a1 + 40) addObject:v8];
  }

LABEL_7:
}

void __70__CUIKDateStrings_stylizedTimelineHourStringForHourDate_baseFontSize___block_invoke_2()
{
  v2 = [MEMORY[0x1E69DB7F0] cuik_textAttachmentWithImage:0];
  [v2 setBounds:{0.0, 0.0, 1.0, 0.0}];
  v0 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v2];
  v1 = stylizedTimelineHourStringForHourDate_baseFontSize__spaceAttrString;
  stylizedTimelineHourStringForHourDate_baseFontSize__spaceAttrString = v0;
}

void __70__CUIKDateStrings_stylizedTimelineHourStringForHourDate_baseFontSize___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = [a2 objectForKeyedSubscript:*MEMORY[0x1E695D8F8]];
  v7 = [*(a1 + 32) string];
  v8 = [v7 substringWithRange:{a3, a4}];

  if ([v18 hasPrefix:@"a"])
  {
    v9 = *(a1 + 48);
LABEL_7:
    v13 = *(v9 + 8);
    *(v13 + 32) = a3;
    *(v13 + 40) = a4;
    goto LABEL_8;
  }

  v10 = [v18 lowercaseString];
  if ([v10 hasPrefix:@"h"])
  {

LABEL_6:
    v9 = *(a1 + 56);
    goto LABEL_7;
  }

  v11 = [v18 lowercaseString];
  v12 = [v11 hasPrefix:@"k"];

  if (v12)
  {
    goto LABEL_6;
  }

  v14 = [v8 stringByTrimmingWhitespaceAndRemovingNewlines];
  v15 = [v14 isEqual:&stru_1F4AA8958];

  if ((v15 & 1) == 0)
  {
    v16 = *(a1 + 40);
    v17 = [MEMORY[0x1E696B098] valueWithRange:{a3, a4}];
    [v16 addObject:v17];
  }

LABEL_8:
}

void __70__CUIKDateStrings_stylizedTimelineHourStringForHourDate_baseFontSize___block_invoke_196(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = [a2 mutableCopy];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  }

  v9 = v7;
  if (CUIKLocaleIsRightToLeft())
  {
    v8 = 0;
  }

  else
  {
    v8 = 2;
  }

  [v9 setAlignment:v8];
  [*(a1 + 32) addAttribute:*MEMORY[0x1E69DB688] value:v9 range:{a3, a4}];
}

+ (void)overlayCalendarTypeForCalendarIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1CAB19000, a2, OS_LOG_TYPE_ERROR, "Unexpected overlay calendar: '%@'", &v2, 0xCu);
}

+ (void)overlayFirstDayOfLunarMonthLocalizedStringInCalendar:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 locale];
  v3 = [v2 localeIdentifier];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

+ (void)overlayFirstDayOfLunarMonthLocalizedStringInCalendar:.cold.2()
{
  v0 = [MEMORY[0x1E695DF58] currentLocale];
  v1 = [v0 localeIdentifier];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

+ (void)_zodiacSymbolForDate:(UErrorCode *)a1 inCalendar:.cold.1(UErrorCode *a1)
{
  u_errorName(*a1);
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __51__CUIKDateStrings__zodiacSymbolForDate_inCalendar___block_invoke_cold_1(UErrorCode *a1)
{
  u_errorName(*a1);
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

@end