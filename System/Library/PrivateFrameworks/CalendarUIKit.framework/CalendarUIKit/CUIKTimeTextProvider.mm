@interface CUIKTimeTextProvider
+ (BOOL)_use24HourFormatForLocale:(id)locale;
+ (id)_applyFont:(id)font toString:(id)string allowSmallCaps:(BOOL)caps otherAttributes:(id)attributes;
+ (id)_dateFormatterWithCalendar:(id)calendar dropDesignator:(BOOL)designator designatorRequiresWhitespace:(BOOL)whitespace retainZeroMinutes:(BOOL)minutes dateHasZeroMinutes:(BOOL)zeroMinutes addDate:(BOOL)date;
+ (id)_timeAttributedTextWithDate:(id)date calendar:(id)calendar droppingDesignator:(BOOL)designator designatorRequiresWhitespace:(BOOL)whitespace smallCapsAllowed:(BOOL)allowed retainZeroMinutes:(BOOL)minutes addDate:(BOOL)addDate;
+ (id)timeAttributedTextWithDate:(id)date calendar:(id)calendar font:(id)font options:(int64_t)options;
+ (id)timeAttributedTextWithDate:(id)date inTimeZone:(id)zone calendar:(id)calendar font:(id)font options:(int64_t)options;
+ (void)force24HourFormatForUnitTests:(BOOL)tests withLocale:(id)locale;
+ (void)resetForce24HourFormatForUnitTests;
@end

@implementation CUIKTimeTextProvider

+ (id)timeAttributedTextWithDate:(id)date inTimeZone:(id)zone calendar:(id)calendar font:(id)font options:(int64_t)options
{
  calendarCopy = calendar;
  v13 = MEMORY[0x1E695DF58];
  fontCopy = font;
  zoneCopy = zone;
  dateCopy = date;
  currentLocale = [v13 currentLocale];
  [calendarCopy setLocale:currentLocale];

  [calendarCopy setTimeZone:zoneCopy];
  v18 = [self timeAttributedTextWithDate:dateCopy calendar:calendarCopy font:fontCopy options:options];

  return v18;
}

+ (id)timeAttributedTextWithDate:(id)date calendar:(id)calendar font:(id)font options:(int64_t)options
{
  dateCopy = date;
  calendarCopy = calendar;
  fontCopy = font;
  if ((options & 2) != 0)
  {
    v13 = 1;
    if ((options & 4) != 0)
    {
LABEL_6:
      v14 = (options & 8) == 0;
      goto LABEL_8;
    }
  }

  else
  {
    v13 = +[CUIKTextProviderUtils designatorRequiresWhitespace];
    if ((options & 4) != 0)
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
  LOBYTE(v20) = (options & 0x20) != 0;
  v15 = [self _timeAttributedTextWithDate:dateCopy calendar:calendarCopy droppingDesignator:options & 1 designatorRequiresWhitespace:v13 smallCapsAllowed:v14 retainZeroMinutes:(options >> 4) & 1 addDate:v20];
  v16 = v15;
  if (fontCopy)
  {
    v17 = [self _applyFont:fontCopy toString:v15 allowSmallCaps:v14 otherAttributes:MEMORY[0x1E695E0F8]];
  }

  else
  {
    v17 = v15;
  }

  v18 = v17;

  return v18;
}

+ (id)_applyFont:(id)font toString:(id)string allowSmallCaps:(BOOL)caps otherAttributes:(id)attributes
{
  v29[1] = *MEMORY[0x1E69E9840];
  fontCopy = font;
  attributesCopy = attributes;
  v28 = *MEMORY[0x1E69DB648];
  v29[0] = fontCopy;
  v11 = MEMORY[0x1E695DF20];
  stringCopy = string;
  v13 = [v11 dictionaryWithObjects:v29 forKeys:&v28 count:1];
  v14 = objc_alloc(MEMORY[0x1E696AD40]);
  string = [stringCopy string];
  v16 = [v14 initWithString:string attributes:v13];

  v17 = [stringCopy length];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __75__CUIKTimeTextProvider__applyFont_toString_allowSmallCaps_otherAttributes___block_invoke;
  v23[3] = &unk_1E839AA08;
  capsCopy = caps;
  v24 = fontCopy;
  v25 = attributesCopy;
  v26 = v16;
  v18 = v16;
  v19 = attributesCopy;
  v20 = fontCopy;
  [stringCopy enumerateAttributesInRange:0 options:v17 usingBlock:{0, v23}];

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

+ (id)_timeAttributedTextWithDate:(id)date calendar:(id)calendar droppingDesignator:(BOOL)designator designatorRequiresWhitespace:(BOOL)whitespace smallCapsAllowed:(BOOL)allowed retainZeroMinutes:(BOOL)minutes addDate:(BOOL)addDate
{
  minutesCopy = minutes;
  whitespaceCopy = whitespace;
  designatorCopy = designator;
  calendarCopy = calendar;
  dateCopy = date;
  v17 = [self _dateFormatterWithCalendar:calendarCopy dropDesignator:designatorCopy designatorRequiresWhitespace:whitespaceCopy retainZeroMinutes:minutesCopy dateHasZeroMinutes:objc_msgSend(calendarCopy addDate:{"component:fromDate:", 64, dateCopy) == 0, addDate}];

  v18 = [v17 _attributedStringWithFieldsFromDate:dateCopy];

  v19 = objc_alloc(MEMORY[0x1E696AD40]);
  string = [v18 string];
  v21 = [v19 initWithString:string];

  v22 = [v18 length];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __152__CUIKTimeTextProvider__timeAttributedTextWithDate_calendar_droppingDesignator_designatorRequiresWhitespace_smallCapsAllowed_retainZeroMinutes_addDate___block_invoke;
  v25[3] = &unk_1E839AA30;
  v23 = v21;
  v26 = v23;
  allowedCopy = allowed;
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

+ (void)force24HourFormatForUnitTests:(BOOL)tests withLocale:(id)locale
{
  testsCopy = tests;
  localeCopy = locale;
  os_unfair_lock_lock(&force24HourFormatRegistryLock_0);
  if (!force24HourFormatRegistry_0)
  {
    v6 = objc_opt_new();
    v7 = force24HourFormatRegistry_0;
    force24HourFormatRegistry_0 = v6;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:testsCopy];
  v9 = force24HourFormatRegistry_0;
  localeIdentifier = [localeCopy localeIdentifier];

  [v9 setObject:v8 forKeyedSubscript:localeIdentifier];

  os_unfair_lock_unlock(&force24HourFormatRegistryLock_0);
}

+ (void)resetForce24HourFormatForUnitTests
{
  os_unfair_lock_lock(&force24HourFormatRegistryLock_0);
  v2 = force24HourFormatRegistry_0;
  force24HourFormatRegistry_0 = 0;

  os_unfair_lock_unlock(&force24HourFormatRegistryLock_0);
}

+ (BOOL)_use24HourFormatForLocale:(id)locale
{
  localeCopy = locale;
  os_unfair_lock_lock(&force24HourFormatRegistryLock_0);
  v4 = force24HourFormatRegistry_0;
  localeIdentifier = [localeCopy localeIdentifier];

  v6 = [v4 objectForKeyedSubscript:localeIdentifier];

  os_unfair_lock_unlock(&force24HourFormatRegistryLock_0);
  if (v6)
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = CUIKShow24Hours();
  }

  v8 = bOOLValue;

  return v8;
}

+ (id)_dateFormatterWithCalendar:(id)calendar dropDesignator:(BOOL)designator designatorRequiresWhitespace:(BOOL)whitespace retainZeroMinutes:(BOOL)minutes dateHasZeroMinutes:(BOOL)zeroMinutes addDate:(BOOL)date
{
  dateCopy = date;
  zeroMinutesCopy = zeroMinutes;
  minutesCopy = minutes;
  whitespaceCopy = whitespace;
  designatorCopy = designator;
  calendarCopy = calendar;
  if (_dateFormatterWithCalendar_dropDesignator_designatorRequiresWhitespace_retainZeroMinutes_dateHasZeroMinutes_addDate__onceToken != -1)
  {
    +[CUIKTimeTextProvider _dateFormatterWithCalendar:dropDesignator:designatorRequiresWhitespace:retainZeroMinutes:dateHasZeroMinutes:addDate:];
  }

  locale = [calendarCopy locale];
  v16 = [self _use24HourFormatForLocale:locale];

  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = zeroMinutesCopy & ~minutesCopy;
  }

  v18 = [calendarCopy copy];
  v19 = [[CUIKDateFormatterCacheKey alloc] initWithCalendar:v18 is24HourFormat:v16 dropDesignator:designatorCopy canDropMinutes:v17 designatorRequiresWhitespace:whitespaceCopy addDate:dateCopy];
  v20 = [_dateFormatterWithCalendar_dropDesignator_designatorRequiresWhitespace_retainZeroMinutes_dateHasZeroMinutes_addDate__cache objectForKey:v19];
  if (!v20)
  {
    v20 = objc_opt_new();
    [v20 setCalendar:v18];
    timeZone = [v18 timeZone];
    [v20 setTimeZone:timeZone];

    locale2 = [v18 locale];
    [v20 setLocale:locale2];

    if (dateCopy)
    {
      [v20 setDateStyle:1];
      [v20 setTimeStyle:1];
    }

    else
    {
      v23 = @"j";
      if (designatorCopy)
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
      locale3 = [v18 locale];
      v30 = [v28 dateFormatFromTemplate:v27 options:0 locale:locale3];

      v31 = [CUIKTextProviderUtils timeFormatByRemovingWhitespaceAroundDesignatorOfTimeFormat:v30 designatorRequiresWhitespace:whitespaceCopy];

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