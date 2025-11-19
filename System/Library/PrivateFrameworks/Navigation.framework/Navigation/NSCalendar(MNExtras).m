@interface NSCalendar(MNExtras)
- (id)_navigation_dateStringForDate:()MNExtras withStyle:useRelativeFormatting:inTimeZone:;
- (id)_navigation_offsetDate:()MNExtras toTimeZone:;
- (id)_navigation_transitRelativeDateStringForDate:()MNExtras context:inTimeZone:outUsedFormat:;
- (uint64_t)_navigation_isDateInToday:()MNExtras inTimeZone:;
- (uint64_t)_navigation_isDateInTomorrow:()MNExtras inTimeZone:;
- (void)_navigation_relativeDateStringForDate:()MNExtras context:inTimeZone:;
@end

@implementation NSCalendar(MNExtras)

- (id)_navigation_transitRelativeDateStringForDate:()MNExtras context:inTimeZone:outUsedFormat:
{
  v10 = a3;
  v11 = a5;
  v12 = [a1 _navigation_relativeDateStringForDate:v10 context:a4 inTimeZone:v11];
  v13 = v12;
  if (!v12)
  {
    v15 = [MEMORY[0x1E695DF00] date];
    v16 = [a1 components:28 fromDate:v15];
    v17 = [a1 dateFromComponents:v16];

    v18 = [a1 dateByAddingUnit:16 value:5 toDate:v17 options:0];
    v19 = [a1 _navigation_offsetDate:v10 toTimeZone:v11];
    v20 = [a1 components:16 fromDate:v19 toDate:v18 options:0];
    if ([v20 day] < 0 || objc_msgSend(v20, "day") > 5)
    {
      if (_navigation_transitRelativeDateStringForDate_context_inTimeZone_outUsedFormat__onceToken_14 != -1)
      {
        dispatch_once(&_navigation_transitRelativeDateStringForDate_context_inTimeZone_outUsedFormat__onceToken_14, &__block_literal_global_16);
      }

      v21 = &_navigation_transitRelativeDateStringForDate_context_inTimeZone_outUsedFormat__monthDayFormatter;
      if (!a6)
      {
        goto LABEL_16;
      }

      v22 = 2;
    }

    else
    {
      if (_navigation_transitRelativeDateStringForDate_context_inTimeZone_outUsedFormat__onceToken != -1)
      {
        dispatch_once(&_navigation_transitRelativeDateStringForDate_context_inTimeZone_outUsedFormat__onceToken, &__block_literal_global_10);
      }

      v21 = &_navigation_transitRelativeDateStringForDate_context_inTimeZone_outUsedFormat__weekdayFormatter;
      if (!a6)
      {
        goto LABEL_16;
      }

      v22 = 1;
    }

    *a6 = v22;
LABEL_16:
    v14 = [*v21 stringFromDate:v19];

    goto LABEL_17;
  }

  if (a6)
  {
    *a6 = 0;
  }

  v14 = v12;
LABEL_17:

  return v14;
}

- (void)_navigation_relativeDateStringForDate:()MNExtras context:inTimeZone:
{
  v8 = _navigation_relativeDateStringForDate_context_inTimeZone__onceToken;
  v9 = a5;
  v10 = a3;
  if (v8 != -1)
  {
    dispatch_once(&_navigation_relativeDateStringForDate_context_inTimeZone__onceToken, &__block_literal_global_7);
  }

  v11 = [a1 _navigation_offsetDate:v10 toTimeZone:v9];

  [_navigation_relativeDateStringForDate_context_inTimeZone__dateFormatter setFormattingContext:a4];
  [_navigation_relativeDateStringForDate_context_inTimeZone__dateFormatter setDoesRelativeDateFormatting:0];
  v12 = [_navigation_relativeDateStringForDate_context_inTimeZone__dateFormatter stringFromDate:v11];
  [_navigation_relativeDateStringForDate_context_inTimeZone__dateFormatter setDoesRelativeDateFormatting:1];
  v13 = [_navigation_relativeDateStringForDate_context_inTimeZone__dateFormatter stringFromDate:v11];
  if ([v13 isEqualToString:v12])
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  v15 = v14;

  return v14;
}

- (id)_navigation_dateStringForDate:()MNExtras withStyle:useRelativeFormatting:inTimeZone:
{
  v10 = _navigation_dateStringForDate_withStyle_useRelativeFormatting_inTimeZone__onceToken;
  v11 = a6;
  v12 = a3;
  if (v10 != -1)
  {
    dispatch_once(&_navigation_dateStringForDate_withStyle_useRelativeFormatting_inTimeZone__onceToken, &__block_literal_global_12028);
  }

  [_navigation_dateStringForDate_withStyle_useRelativeFormatting_inTimeZone__dateFormatter setDateStyle:a4];
  [_navigation_dateStringForDate_withStyle_useRelativeFormatting_inTimeZone__dateFormatter setDoesRelativeDateFormatting:a5];
  v13 = _navigation_dateStringForDate_withStyle_useRelativeFormatting_inTimeZone__dateFormatter;
  v14 = [a1 _navigation_offsetDate:v12 toTimeZone:v11];

  v15 = [v13 stringFromDate:v14];

  return v15;
}

- (uint64_t)_navigation_isDateInTomorrow:()MNExtras inTimeZone:
{
  v2 = [a1 _navigation_offsetDate:? toTimeZone:?];
  v3 = [a1 isDateInTomorrow:v2];

  return v3;
}

- (uint64_t)_navigation_isDateInToday:()MNExtras inTimeZone:
{
  v2 = [a1 _navigation_offsetDate:? toTimeZone:?];
  v3 = [a1 isDateInToday:v2];

  return v3;
}

- (id)_navigation_offsetDate:()MNExtras toTimeZone:
{
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    v8 = [a1 componentsInTimeZone:a4 fromDate:v6];
    v9 = [a1 timeZone];
    [v8 setTimeZone:v9];

    v10 = [a1 dateFromComponents:v8];
  }

  else
  {
    v10 = v6;
  }

  return v10;
}

@end