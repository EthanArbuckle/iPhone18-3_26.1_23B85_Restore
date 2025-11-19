@interface CUIKTimeTextProvider
+ (BOOL)_use24HourFormatForLocale:(id)a3;
+ (id)_applyFont:(id)a3 toString:(id)a4 allowSmallCaps:(BOOL)a5 otherAttributes:(id)a6;
+ (id)_dateFormatterWithCalendar:(id)a3 dropDesignator:(BOOL)a4 designatorRequiresWhitespace:(BOOL)a5 retainZeroMinutes:(BOOL)a6 dateHasZeroMinutes:(BOOL)a7 addDate:(BOOL)a8;
+ (id)_timeAttributedTextWithDate:(id)a3 calendar:(id)a4 droppingDesignator:(BOOL)a5 designatorRequiresWhitespace:(BOOL)a6 smallCapsAllowed:(BOOL)a7 retainZeroMinutes:(BOOL)a8 addDate:(BOOL)a9;
+ (id)timeAttributedTextWithDate:(id)a3 calendar:(id)a4 font:(id)a5 options:(int64_t)a6;
+ (id)timeAttributedTextWithDate:(id)a3 inTimeZone:(id)a4 calendar:(id)a5 font:(id)a6 options:(int64_t)a7;
+ (void)force24HourFormatForUnitTests:(BOOL)a3 withLocale:(id)a4;
+ (void)resetForce24HourFormatForUnitTests;
@end

@implementation CUIKTimeTextProvider

+ (id)timeAttributedTextWithDate:(id)a3 inTimeZone:(id)a4 calendar:(id)a5 font:(id)a6 options:(int64_t)a7
{
  v12 = a5;
  v13 = MEMORY[0x1E695DF58];
  v14 = a6;
  v15 = a4;
  v16 = a3;
  v17 = [v13 currentLocale];
  [v12 setLocale:v17];

  [v12 setTimeZone:v15];
  v18 = [a1 timeAttributedTextWithDate:v16 calendar:v12 font:v14 options:a7];

  return v18;
}

+ (id)timeAttributedTextWithDate:(id)a3 calendar:(id)a4 font:(id)a5 options:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ((a6 & 2) != 0)
  {
    v13 = 1;
    if ((a6 & 4) != 0)
    {
LABEL_6:
      v14 = (a6 & 8) == 0;
      goto LABEL_8;
    }
  }

  else
  {
    v13 = +[CUIKTextProviderUtils designatorRequiresWhitespace];
    if ((a6 & 4) != 0)
    {
      goto LABEL_6;
    }
  }

  if (+[CUIKTextProviderUtils smallCapsAllowed])
  {
    goto LABEL_6;
  }

  v14 = 0;
LABEL_8:
  LOBYTE(v20) = (a6 & 0x20) != 0;
  v15 = [a1 _timeAttributedTextWithDate:v10 calendar:v11 droppingDesignator:a6 & 1 designatorRequiresWhitespace:v13 smallCapsAllowed:v14 retainZeroMinutes:(a6 >> 4) & 1 addDate:v20];
  v16 = v15;
  if (v12)
  {
    v17 = [a1 _applyFont:v12 toString:v15 allowSmallCaps:v14 otherAttributes:MEMORY[0x1E695E0F8]];
  }

  else
  {
    v17 = v15;
  }

  v18 = v17;

  return v18;
}

+ (id)_applyFont:(id)a3 toString:(id)a4 allowSmallCaps:(BOOL)a5 otherAttributes:(id)a6
{
  v29[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a6;
  v28 = *MEMORY[0x1E69DB648];
  v29[0] = v9;
  v11 = MEMORY[0x1E695DF20];
  v12 = a4;
  v13 = [v11 dictionaryWithObjects:v29 forKeys:&v28 count:1];
  v14 = objc_alloc(MEMORY[0x1E696AD40]);
  v15 = [v12 string];
  v16 = [v14 initWithString:v15 attributes:v13];

  v17 = [v12 length];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __75__CUIKTimeTextProvider__applyFont_toString_allowSmallCaps_otherAttributes___block_invoke;
  v23[3] = &unk_1E839AA08;
  v27 = a5;
  v24 = v9;
  v25 = v10;
  v26 = v16;
  v18 = v16;
  v19 = v10;
  v20 = v9;
  [v12 enumerateAttributesInRange:0 options:v17 usingBlock:{0, v23}];

  v21 = [v18 copy];

  return v21;
}

void __75__CUIKTimeTextProvider__applyFont_toString_allowSmallCaps_otherAttributes___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = [a2 objectForKeyedSubscript:@"CUIKSmallCapsAttributeName"];
  if ([v9 BOOLValue])
  {
    v7 = objc_opt_new();
    v8 = [*(a1 + 32) CUIKFontWithLocalizedSmallCaps:*(a1 + 56)];
    [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x1E69DB648]];

    [v7 addEntriesFromDictionary:*(a1 + 40)];
    [*(a1 + 48) addAttributes:v7 range:{a3, a4}];
  }
}

+ (id)_timeAttributedTextWithDate:(id)a3 calendar:(id)a4 droppingDesignator:(BOOL)a5 designatorRequiresWhitespace:(BOOL)a6 smallCapsAllowed:(BOOL)a7 retainZeroMinutes:(BOOL)a8 addDate:(BOOL)a9
{
  v9 = a8;
  v11 = a6;
  v12 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [a1 _dateFormatterWithCalendar:v15 dropDesignator:v12 designatorRequiresWhitespace:v11 retainZeroMinutes:v9 dateHasZeroMinutes:objc_msgSend(v15 addDate:{"component:fromDate:", 64, v16) == 0, a9}];

  v18 = [v17 _attributedStringWithFieldsFromDate:v16];

  v19 = objc_alloc(MEMORY[0x1E696AD40]);
  v20 = [v18 string];
  v21 = [v19 initWithString:v20];

  v22 = [v18 length];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __152__CUIKTimeTextProvider__timeAttributedTextWithDate_calendar_droppingDesignator_designatorRequiresWhitespace_smallCapsAllowed_retainZeroMinutes_addDate___block_invoke;
  v25[3] = &unk_1E839AA30;
  v23 = v21;
  v26 = v23;
  v27 = a7;
  [v18 enumerateAttributesInRange:0 options:v22 usingBlock:{0, v25}];

  return v23;
}

void __152__CUIKTimeTextProvider__timeAttributedTextWithDate_calendar_droppingDesignator_designatorRequiresWhitespace_smallCapsAllowed_retainZeroMinutes_addDate___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = [a2 objectForKeyedSubscript:*MEMORY[0x1E695D8F8]];
  if ([v9 hasPrefix:@"a"])
  {
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
    [v7 addAttribute:@"CUIKSmallCapsAttributeName" value:v8 range:{a3, a4}];
  }
}

+ (void)force24HourFormatForUnitTests:(BOOL)a3 withLocale:(id)a4
{
  v4 = a3;
  v5 = a4;
  os_unfair_lock_lock(&force24HourFormatRegistryLock_0);
  if (!force24HourFormatRegistry_0)
  {
    v6 = objc_opt_new();
    v7 = force24HourFormatRegistry_0;
    force24HourFormatRegistry_0 = v6;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  v9 = force24HourFormatRegistry_0;
  v10 = [v5 localeIdentifier];

  [v9 setObject:v8 forKeyedSubscript:v10];

  os_unfair_lock_unlock(&force24HourFormatRegistryLock_0);
}

+ (void)resetForce24HourFormatForUnitTests
{
  os_unfair_lock_lock(&force24HourFormatRegistryLock_0);
  v2 = force24HourFormatRegistry_0;
  force24HourFormatRegistry_0 = 0;

  os_unfair_lock_unlock(&force24HourFormatRegistryLock_0);
}

+ (BOOL)_use24HourFormatForLocale:(id)a3
{
  v3 = a3;
  os_unfair_lock_lock(&force24HourFormatRegistryLock_0);
  v4 = force24HourFormatRegistry_0;
  v5 = [v3 localeIdentifier];

  v6 = [v4 objectForKeyedSubscript:v5];

  os_unfair_lock_unlock(&force24HourFormatRegistryLock_0);
  if (v6)
  {
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = CUIKShow24Hours();
  }

  v8 = v7;

  return v8;
}

+ (id)_dateFormatterWithCalendar:(id)a3 dropDesignator:(BOOL)a4 designatorRequiresWhitespace:(BOOL)a5 retainZeroMinutes:(BOOL)a6 dateHasZeroMinutes:(BOOL)a7 addDate:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v14 = a3;
  if (_dateFormatterWithCalendar_dropDesignator_designatorRequiresWhitespace_retainZeroMinutes_dateHasZeroMinutes_addDate__onceToken != -1)
  {
    +[CUIKTimeTextProvider _dateFormatterWithCalendar:dropDesignator:designatorRequiresWhitespace:retainZeroMinutes:dateHasZeroMinutes:addDate:];
  }

  v15 = [v14 locale];
  v16 = [a1 _use24HourFormatForLocale:v15];

  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = v9 & ~v10;
  }

  v18 = [v14 copy];
  v19 = [[CUIKDateFormatterCacheKey alloc] initWithCalendar:v18 is24HourFormat:v16 dropDesignator:v12 canDropMinutes:v17 designatorRequiresWhitespace:v11 addDate:v8];
  v20 = [_dateFormatterWithCalendar_dropDesignator_designatorRequiresWhitespace_retainZeroMinutes_dateHasZeroMinutes_addDate__cache objectForKey:v19];
  if (!v20)
  {
    v20 = objc_opt_new();
    [v20 setCalendar:v18];
    v21 = [v18 timeZone];
    [v20 setTimeZone:v21];

    v22 = [v18 locale];
    [v20 setLocale:v22];

    if (v8)
    {
      [v20 setDateStyle:1];
      [v20 setTimeStyle:1];
    }

    else
    {
      v23 = @"j";
      if (v12)
      {
        v23 = @"J";
      }

      v24 = v23;
      v25 = v24;
      if (v17)
      {
        v26 = v24;
      }

      else
      {
        v26 = [(__CFString *)v24 stringByAppendingString:@"mm"];
      }

      v27 = v26;
      v28 = MEMORY[0x1E696AB78];
      v29 = [v18 locale];
      v30 = [v28 dateFormatFromTemplate:v27 options:0 locale:v29];

      v31 = [CUIKTextProviderUtils timeFormatByRemovingWhitespaceAroundDesignatorOfTimeFormat:v30 designatorRequiresWhitespace:v11];

      [v20 setDateFormat:v31];
    }

    [_dateFormatterWithCalendar_dropDesignator_designatorRequiresWhitespace_retainZeroMinutes_dateHasZeroMinutes_addDate__cache setObject:v20 forKey:v19];
  }

  v32 = v20;

  return v32;
}

uint64_t __140__CUIKTimeTextProvider__dateFormatterWithCalendar_dropDesignator_designatorRequiresWhitespace_retainZeroMinutes_dateHasZeroMinutes_addDate___block_invoke()
{
  v0 = objc_opt_new();
  v1 = _dateFormatterWithCalendar_dropDesignator_designatorRequiresWhitespace_retainZeroMinutes_dateHasZeroMinutes_addDate__cache;
  _dateFormatterWithCalendar_dropDesignator_designatorRequiresWhitespace_retainZeroMinutes_dateHasZeroMinutes_addDate__cache = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end