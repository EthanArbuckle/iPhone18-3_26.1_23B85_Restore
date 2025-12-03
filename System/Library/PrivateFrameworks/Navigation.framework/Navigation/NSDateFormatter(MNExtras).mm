@interface NSDateFormatter(MNExtras)
+ (id)_navigation_debugDescriptionForDate:()MNExtras;
+ (id)_navigation_localizedTimestampStringForDepartureArrivalDate:()MNExtras inTimeZone:canIncludeDate:relativeToTimeZone:;
+ (id)_navigation_localizedTimestampStringForDepartureArrivalDate:()MNExtras inTimeZone:canIncludeDate:showTimeZone:useShortFormat:;
+ (id)_navigation_localizedTimestampStringForDepartureArrivalDate:()MNExtras inTimeZone:canIncludeDate:suppressTimeZoneDisplay:useShortFormat:;
+ (id)_timestampFormatterForTimeZone:()MNExtras displayTimeZone:;
@end

@implementation NSDateFormatter(MNExtras)

+ (id)_navigation_debugDescriptionForDate:()MNExtras
{
  v3 = _navigation_debugDescriptionForDate__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&_navigation_debugDescriptionForDate__onceToken, &__block_literal_global_29);
  }

  v5 = [_navigation_debugDescriptionForDate__df stringForObjectValue:v4];

  return v5;
}

+ (id)_navigation_localizedTimestampStringForDepartureArrivalDate:()MNExtras inTimeZone:canIncludeDate:showTimeZone:useShortFormat:
{
  v12 = a3;
  v13 = a4;
  if (_navigation_localizedTimestampStringForDepartureArrivalDate_inTimeZone_canIncludeDate_showTimeZone_useShortFormat__onceToken != -1)
  {
    dispatch_once(&_navigation_localizedTimestampStringForDepartureArrivalDate_inTimeZone_canIncludeDate_showTimeZone_useShortFormat__onceToken, &__block_literal_global_1427);
  }

  v14 = _navigation_localizedTimestampStringForDepartureArrivalDate_inTimeZone_canIncludeDate_showTimeZone_useShortFormat___formatterCache;
  v15 = [MEMORY[0x1E696AD98] numberWithBool:a6];
  v16 = [v14 objectForKey:v15];

  if (v16)
  {
    if (v13)
    {
LABEL_5:
      timeZone = v13;
      goto LABEL_8;
    }
  }

  else
  {
    v16 = objc_opt_new();
    v18 = _navigation_localizedTimestampStringForDepartureArrivalDate_inTimeZone_canIncludeDate_showTimeZone_useShortFormat___formatterCache;
    v19 = [MEMORY[0x1E696AD98] numberWithBool:a6];
    [v18 setObject:v16 forKey:v19];

    if (v13)
    {
      goto LABEL_5;
    }
  }

  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  timeZone = [currentCalendar timeZone];

LABEL_8:
  v21 = [v16 objectForKey:timeZone];
  if (v21)
  {
    v22 = v21;
    if (a6)
    {
      v23 = @"jmaz";
    }

    else
    {
      v23 = @"jma";
    }

    [v21 setLocalizedDateFormatFromTemplate:v23];
  }

  else
  {
    v22 = [self _timestampFormatterForTimeZone:timeZone displayTimeZone:a6];
    [v16 setObject:v22 forKey:timeZone];
  }

  v24 = [v22 stringFromDate:v12];
  if (a5)
  {
    currentCalendar2 = [MEMORY[0x1E695DEE8] currentCalendar];
    if (([currentCalendar2 _navigation_isDateInToday:v12 inTimeZone:v13] & 1) == 0)
    {
      if (a7)
      {
        v27 = [currentCalendar2 _navigation_dateStringForDate:v12 withStyle:1 useRelativeFormatting:0 inTimeZone:v13];
        v28 = MEMORY[0x1E696AEC0];
        v29 = _MNLocalizedStringFromThisBundle(@"%@ %@");
        [v28 stringWithFormat:v29, v24, v27];
      }

      else
      {
        v27 = [currentCalendar2 _navigation_dateStringForDate:v12 withStyle:1 useRelativeFormatting:1 inTimeZone:v13];
        v30 = MEMORY[0x1E696AEC0];
        v29 = _MNLocalizedStringFromThisBundle(@"%@ at %@");
        [v30 stringWithFormat:v29, v27, v24];
      }
      v26 = ;

      goto LABEL_22;
    }
  }

  v26 = v24;
LABEL_22:

  return v26;
}

+ (id)_navigation_localizedTimestampStringForDepartureArrivalDate:()MNExtras inTimeZone:canIncludeDate:relativeToTimeZone:
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  timeZone = [currentCalendar timeZone];

  if (v10 && v11)
  {
    v14 = v10;
    v15 = v11;
  }

  else
  {
    if (!v10 || (v14 = v10, v11))
    {
      v16 = 0;
      if (!v11)
      {
        goto LABEL_10;
      }

      v14 = v11;
      if (v10)
      {
        goto LABEL_10;
      }
    }

    v15 = timeZone;
  }

  v16 = [v14 _navigation_isEquivalentToTimeZone:v15 forDate:v9] ^ 1;
LABEL_10:
  v17 = [MEMORY[0x1E696AB78] _navigation_localizedTimestampStringForDepartureArrivalDate:v9 inTimeZone:v10 canIncludeDate:a5 showTimeZone:v16 useShortFormat:0];

  return v17;
}

+ (id)_navigation_localizedTimestampStringForDepartureArrivalDate:()MNExtras inTimeZone:canIncludeDate:suppressTimeZoneDisplay:useShortFormat:
{
  v11 = a3;
  v12 = a4;
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  timeZone = [currentCalendar timeZone];

  v15 = 0;
  if (v12 && (a6 & 1) == 0)
  {
    v15 = [v12 _navigation_isEquivalentToTimeZone:timeZone forDate:v11] ^ 1;
  }

  v16 = [MEMORY[0x1E696AB78] _navigation_localizedTimestampStringForDepartureArrivalDate:v11 inTimeZone:v12 canIncludeDate:a5 showTimeZone:v15 useShortFormat:a7];

  return v16;
}

+ (id)_timestampFormatterForTimeZone:()MNExtras displayTimeZone:
{
  v5 = MEMORY[0x1E696AB78];
  v6 = a3;
  v7 = objc_alloc_init(v5);
  autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v7 setLocale:autoupdatingCurrentLocale];

  if (a4)
  {
    v9 = @"jmaz";
  }

  else
  {
    v9 = @"jma";
  }

  [v7 setLocalizedDateFormatFromTemplate:v9];
  [v7 setTimeZone:v6];

  return v7;
}

@end