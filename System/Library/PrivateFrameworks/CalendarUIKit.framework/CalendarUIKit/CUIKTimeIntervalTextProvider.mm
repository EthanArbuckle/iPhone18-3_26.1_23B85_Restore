@interface CUIKTimeIntervalTextProvider
+ (BOOL)_use24HourFormatForLocale:(id)locale;
+ (_NSRange)_rangeOfAnnontatedTime:(id)time matchingPattern:(id)pattern;
+ (_NSRange)_rangeOfDesignatorInAnnotatedTime:(id)time;
+ (id)CUIKSmallCapAMPMTimezoneClarificationStringForStartDate:(id)date endDate:(id)endDate startTimeZone:(id)zone endTimeZone:(id)timeZone color:(id)color;
+ (id)_dateFormatterWithCalendar:(id)calendar designatorRequiresWhitespace:(BOOL)whitespace dateHasZeroMinutes:(BOOL)minutes;
+ (id)_stringByRemovingDesignatorRange:(_NSRange)range fromString:(id)string;
+ (id)_timeIntervalAttributedTextWithStartDate:(id)date endDate:(id)endDate calendar:(id)calendar textProviderUtils:(id)utils;
+ (id)attributedAndSmallCappedDesignatorTextWithDate:(id)date calendar:(id)calendar color:(id)color;
+ (id)timeIntervalAttributedAndSmallCappedDesignatorTextWithStartDate:(id)date endDate:(id)endDate calendar:(id)calendar color:(id)color font:(id)font;
+ (id)timeIntervalAttributedTextWithStartDate:(id)date endDate:(id)endDate calendar:(id)calendar;
+ (id)timeIntervalAttributedTextWithStartDate:(id)date endDate:(id)endDate calendar:(id)calendar font:(__CTFont *)font;
+ (id)timeIntervalAttributedTextWithStartDate:(id)date endDate:(id)endDate calendar:(id)calendar font:(__CTFont *)font designatorRequiresWhitespace:(BOOL)whitespace smallCapsAllowed:(BOOL)allowed dropLeftRedundantDesignator:(BOOL)designator;
+ (id)timeIntervalAttributedTextWithStartDate:(id)date endDate:(id)endDate calendar:(id)calendar font:(__CTFont *)font textProviderUtils:(id)utils;
+ (id)timeIntervalAttributedTextWithStartDate:(id)date endDate:(id)endDate calendar:(id)calendar keepRedundantDesignator:(BOOL)designator;
+ (void)force24HourFormatForUnitTests:(BOOL)tests withLocale:(id)locale;
+ (void)resetForce24HourFormatForUnitTests;
@end

@implementation CUIKTimeIntervalTextProvider

+ (id)timeIntervalAttributedTextWithStartDate:(id)date endDate:(id)endDate calendar:(id)calendar font:(__CTFont *)font
{
  calendarCopy = calendar;
  endDateCopy = endDate;
  dateCopy = date;
  v13 = objc_alloc_init(CUIKTextProviderUtils);
  v14 = [self timeIntervalAttributedTextWithStartDate:dateCopy endDate:endDateCopy calendar:calendarCopy font:font textProviderUtils:v13];

  return v14;
}

+ (id)timeIntervalAttributedTextWithStartDate:(id)date endDate:(id)endDate calendar:(id)calendar font:(__CTFont *)font designatorRequiresWhitespace:(BOOL)whitespace smallCapsAllowed:(BOOL)allowed dropLeftRedundantDesignator:(BOOL)designator
{
  allowedCopy = allowed;
  whitespaceCopy = whitespace;
  calendarCopy = calendar;
  endDateCopy = endDate;
  dateCopy = date;
  v18 = objc_alloc_init(CUIKTextProviderUtils);
  [(CUIKTextProviderUtils *)v18 setDesignatorRequiresWhitespace:whitespaceCopy];
  [(CUIKTextProviderUtils *)v18 setSmallCapsAllowed:allowedCopy];
  [(CUIKTextProviderUtils *)v18 setDropLeftRedundantDesignator:designator];
  v19 = [self timeIntervalAttributedTextWithStartDate:dateCopy endDate:endDateCopy calendar:calendarCopy font:font textProviderUtils:v18];

  return v19;
}

+ (id)timeIntervalAttributedTextWithStartDate:(id)date endDate:(id)endDate calendar:(id)calendar font:(__CTFont *)font textProviderUtils:(id)utils
{
  v34[1] = *MEMORY[0x1E69E9840];
  utilsCopy = utils;
  calendarCopy = calendar;
  endDateCopy = endDate;
  dateCopy = date;
  cUIKFontWithAlternativePunctuation = [(__CTFont *)font CUIKFontWithAlternativePunctuation];
  v33 = *MEMORY[0x1E69DB648];
  v34[0] = cUIKFontWithAlternativePunctuation;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
  v18 = [self _timeIntervalAttributedTextWithStartDate:dateCopy endDate:endDateCopy calendar:calendarCopy textProviderUtils:utilsCopy];

  v19 = objc_alloc(MEMORY[0x1E696AD40]);
  string = [v18 string];
  v21 = [v19 initWithString:string attributes:v17];

  v22 = [v18 length];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __112__CUIKTimeIntervalTextProvider_timeIntervalAttributedTextWithStartDate_endDate_calendar_font_textProviderUtils___block_invoke;
  v29[3] = &unk_1E839A870;
  v23 = v21;
  v30 = v23;
  v31 = cUIKFontWithAlternativePunctuation;
  v32 = utilsCopy;
  v24 = utilsCopy;
  v25 = cUIKFontWithAlternativePunctuation;
  [v18 enumerateAttributesInRange:0 options:v22 usingBlock:{0, v29}];
  v26 = v32;
  v27 = v23;

  return v23;
}

void __112__CUIKTimeIntervalTextProvider_timeIntervalAttributedTextWithStartDate_endDate_calendar_font_textProviderUtils___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v10 = [a2 objectForKeyedSubscript:@"CUIKSmallCapsAttributeName"];
  if ([v10 BOOLValue])
  {
    v7 = *MEMORY[0x1E69DB648];
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) CUIKFontWithLocalizedSmallCaps:{objc_msgSend(*(a1 + 48), "smallCapsAllowed")}];
    [v8 addAttribute:v7 value:v9 range:{a3, a4}];
  }
}

+ (id)timeIntervalAttributedTextWithStartDate:(id)date endDate:(id)endDate calendar:(id)calendar
{
  calendarCopy = calendar;
  endDateCopy = endDate;
  dateCopy = date;
  v11 = objc_alloc_init(CUIKTextProviderUtils);
  v12 = [self _timeIntervalAttributedTextWithStartDate:dateCopy endDate:endDateCopy calendar:calendarCopy textProviderUtils:v11];

  return v12;
}

+ (id)timeIntervalAttributedTextWithStartDate:(id)date endDate:(id)endDate calendar:(id)calendar keepRedundantDesignator:(BOOL)designator
{
  designatorCopy = designator;
  calendarCopy = calendar;
  endDateCopy = endDate;
  dateCopy = date;
  v13 = objc_alloc_init(CUIKTextProviderUtils);
  [(CUIKTextProviderUtils *)v13 setKeepRedundantDesignator:designatorCopy];
  v14 = [self _timeIntervalAttributedTextWithStartDate:dateCopy endDate:endDateCopy calendar:calendarCopy textProviderUtils:v13];

  return v14;
}

+ (void)force24HourFormatForUnitTests:(BOOL)tests withLocale:(id)locale
{
  testsCopy = tests;
  localeCopy = locale;
  os_unfair_lock_lock(&force24HourFormatRegistryLock);
  if (!force24HourFormatRegistry)
  {
    v6 = objc_opt_new();
    v7 = force24HourFormatRegistry;
    force24HourFormatRegistry = v6;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:testsCopy];
  v9 = force24HourFormatRegistry;
  localeIdentifier = [localeCopy localeIdentifier];

  [v9 setObject:v8 forKeyedSubscript:localeIdentifier];

  os_unfair_lock_unlock(&force24HourFormatRegistryLock);
}

+ (void)resetForce24HourFormatForUnitTests
{
  os_unfair_lock_lock(&force24HourFormatRegistryLock);
  v2 = force24HourFormatRegistry;
  force24HourFormatRegistry = 0;

  os_unfair_lock_unlock(&force24HourFormatRegistryLock);
}

+ (BOOL)_use24HourFormatForLocale:(id)locale
{
  localeCopy = locale;
  os_unfair_lock_lock(&force24HourFormatRegistryLock);
  v4 = force24HourFormatRegistry;
  localeIdentifier = [localeCopy localeIdentifier];

  v6 = [v4 objectForKeyedSubscript:localeIdentifier];

  os_unfair_lock_unlock(&force24HourFormatRegistryLock);
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

+ (id)_dateFormatterWithCalendar:(id)calendar designatorRequiresWhitespace:(BOOL)whitespace dateHasZeroMinutes:(BOOL)minutes
{
  minutesCopy = minutes;
  whitespaceCopy = whitespace;
  calendarCopy = calendar;
  if (_dateFormatterWithCalendar_designatorRequiresWhitespace_dateHasZeroMinutes__onceToken != -1)
  {
    +[CUIKTimeIntervalTextProvider _dateFormatterWithCalendar:designatorRequiresWhitespace:dateHasZeroMinutes:];
  }

  locale = [calendarCopy locale];
  v10 = [self _use24HourFormatForLocale:locale];

  v11 = minutesCopy & ~v10;
  v12 = [calendarCopy copy];
  v13 = [[CUIKDateFormatterCacheKey alloc] initWithCalendar:v12 is24HourFormat:v10 dropDesignator:0 canDropMinutes:v11 designatorRequiresWhitespace:whitespaceCopy addDate:0];
  v14 = [_dateFormatterWithCalendar_designatorRequiresWhitespace_dateHasZeroMinutes__cache objectForKey:v13];
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v16 = objc_opt_new();
    [v16 setCalendar:v12];
    timeZone = [v12 timeZone];
    [v16 setTimeZone:timeZone];

    locale2 = [v12 locale];
    [v16 setLocale:locale2];

    v19 = MEMORY[0x1E696AB78];
    if (v11)
    {
      v20 = @"j";
    }

    else
    {
      v20 = @"jmm";
    }

    locale3 = [v12 locale];
    v22 = [v19 dateFormatFromTemplate:v20 options:0 locale:locale3];

    v23 = [CUIKTextProviderUtils timeFormatByRemovingWhitespaceAroundDesignatorOfTimeFormat:v22 designatorRequiresWhitespace:whitespaceCopy];

    [v16 setDateFormat:v23];
    [_dateFormatterWithCalendar_designatorRequiresWhitespace_dateHasZeroMinutes__cache setObject:v16 forKey:v13];
    v15 = v16;
  }

  return v15;
}

uint64_t __107__CUIKTimeIntervalTextProvider__dateFormatterWithCalendar_designatorRequiresWhitespace_dateHasZeroMinutes___block_invoke()
{
  v0 = objc_opt_new();
  v1 = _dateFormatterWithCalendar_designatorRequiresWhitespace_dateHasZeroMinutes__cache;
  _dateFormatterWithCalendar_designatorRequiresWhitespace_dateHasZeroMinutes__cache = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)_timeIntervalAttributedTextWithStartDate:(id)date endDate:(id)endDate calendar:(id)calendar textProviderUtils:(id)utils
{
  v79[1] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  endDateCopy = endDate;
  calendarCopy = calendar;
  utilsCopy = utils;
  v14 = ([utilsCopy keepZeroMinutes] & 1) == 0 && objc_msgSend(calendarCopy, "component:fromDate:", 64, dateCopy) == 0;
  v15 = [self _dateFormatterWithCalendar:calendarCopy designatorRequiresWhitespace:objc_msgSend(utilsCopy dateHasZeroMinutes:{"designatorRequiresWhitespace"), v14}];
  v16 = [v15 _attributedStringWithFieldsFromDate:dateCopy];
  v18 = [self _rangeOfDesignatorInAnnotatedTime:v16];
  v70 = v17;
  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    string = 0;
  }

  else
  {
    v19 = [v16 attributedSubstringFromRange:{v18, v17}];
    string = [v19 string];
  }

  v75 = v16;
  v20 = ([utilsCopy keepZeroMinutes] & 1) == 0 && objc_msgSend(calendarCopy, "component:fromDate:", 64, endDateCopy) == 0;
  v74 = calendarCopy;
  v21 = [self _dateFormatterWithCalendar:calendarCopy designatorRequiresWhitespace:objc_msgSend(utilsCopy dateHasZeroMinutes:{"designatorRequiresWhitespace"), v20}];

  v71 = v21;
  v22 = [v21 _attributedStringWithFieldsFromDate:endDateCopy];
  v24 = [self _rangeOfDesignatorInAnnotatedTime:v22];
  v25 = v23;
  v76 = v22;
  if (v24 == 0x7FFFFFFFFFFFFFFFLL)
  {
    string2 = 0;
  }

  else
  {
    v27 = [v22 attributedSubstringFromRange:{v24, v23}];
    string2 = [v27 string];
  }

  v72 = endDateCopy;
  v28 = CUIKBundle();
  v29 = [v28 localizedStringForKey:@"INTERVAL_HYPHEN_NARROW" value:@" – " table:0];

  v73 = string2;
  if (string | string2)
  {
    v69 = dateCopy;
    v78 = @"CUIKSmallCapsAttributeName";
    v45 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(utilsCopy, "smallCapsAllowed")}];
    v79[0] = v45;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:&v78 count:1];
    v46 = v66 = utilsCopy;

    v47 = objc_alloc(MEMORY[0x1E696AD40]);
    string3 = [v75 string];
    v49 = [v47 initWithString:string3];

    v50 = v25;
    v51 = v49;
    [v49 addAttributes:v46 range:{v18, v70}];
    v52 = objc_alloc(MEMORY[0x1E696AD40]);
    string4 = [v76 string];
    v54 = [v52 initWithString:string4];

    v67 = v46;
    v55 = v46;
    utilsCopy = v66;
    [v54 addAttributes:v55 range:{v24, v50}];
    v68 = v29;
    v56 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v29];
    v43 = v74;
    if ([v66 keepRedundantDesignator])
    {
      v33 = v75;
      v44 = v76;
      v60 = 0x1E696A000;
      v57 = v51;
    }

    else
    {
      v57 = v51;
      if (v73 && [string isEqualToString:?])
      {
        if ([v66 dropLeftRedundantDesignator])
        {
          if (v18 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v33 = v75;
            string5 = [v75 string];
            v59 = [self _stringByRemovingDesignatorRange:v18 fromString:{v70, string5}];

            v60 = 0x1E696A000uLL;
            v61 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v59];
            v62 = v57;
            v57 = v61;
LABEL_31:

            v44 = v76;
            goto LABEL_26;
          }
        }

        else if (v24 != 0x7FFFFFFFFFFFFFFFLL)
        {
          string6 = [v76 string];
          v59 = [self _stringByRemovingDesignatorRange:v24 fromString:{v50, string6}];

          v60 = 0x1E696A000uLL;
          v65 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v59];
          v62 = v54;
          v54 = v65;
          v33 = v75;
          goto LABEL_31;
        }
      }

      v33 = v75;
      v44 = v76;
      v60 = 0x1E696A000uLL;
    }

LABEL_26:
    v42 = [objc_alloc(*(v60 + 3392)) initWithAttributedString:v57];
    [v42 appendAttributedString:v56];
    [v42 appendAttributedString:v54];

    v38 = v68;
    dateCopy = v69;
    goto LABEL_27;
  }

  locale = [v74 locale];
  languageCode = [locale languageCode];

  v32 = [MEMORY[0x1E695DF58] characterDirectionForLanguage:languageCode];
  v33 = v75;
  string7 = [v75 string];
  directionalityIsolatedString = [string7 directionalityIsolatedString];

  string8 = [v76 string];
  directionalityIsolatedString2 = [string8 directionalityIsolatedString];

  v38 = v29;
  v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", directionalityIsolatedString, v29, directionalityIsolatedString2];
  v40 = v39;
  if (v32 == 2)
  {
    rTLString = [v39 RTLString];

    v40 = rTLString;
  }

  v42 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v40];

  v43 = v74;
  v44 = v76;
LABEL_27:

  return v42;
}

+ (id)CUIKSmallCapAMPMTimezoneClarificationStringForStartDate:(id)date endDate:(id)endDate startTimeZone:(id)zone endTimeZone:(id)timeZone color:(id)color
{
  v64[1] = *MEMORY[0x1E69E9840];
  zoneCopy = zone;
  timeZoneCopy = timeZone;
  colorCopy = color;
  v15 = MEMORY[0x1E696AD40];
  endDateCopy = endDate;
  dateCopy = date;
  v18 = objc_alloc_init(v15);
  v55 = zoneCopy;
  if (zoneCopy)
  {
    calendarTimeZone = zoneCopy;
  }

  else
  {
    calendarTimeZone = [MEMORY[0x1E695DFE8] calendarTimeZone];
  }

  v20 = calendarTimeZone;
  v53 = calendarTimeZone;
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  [currentCalendar setTimeZone:v20];
  v52 = currentCalendar;
  v48 = [self attributedAndSmallCappedDesignatorTextWithDate:dateCopy calendar:currentCalendar color:colorCopy];
  v54 = timeZoneCopy;
  if (timeZoneCopy)
  {
    v22 = timeZoneCopy;
  }

  else
  {
    v22 = v20;
  }

  v23 = MEMORY[0x1E695DEE8];
  v24 = v22;
  currentCalendar2 = [v23 currentCalendar];
  [currentCalendar2 setTimeZone:v24];
  v51 = currentCalendar2;
  v50 = [self attributedAndSmallCappedDesignatorTextWithDate:endDateCopy calendar:currentCalendar2 color:colorCopy];

  v26 = MEMORY[0x1E696AEC0];
  v27 = _CUIKShortTZString(v20, dateCopy);
  v28 = [v26 stringWithFormat:@"(%@)", v27];

  v29 = objc_alloc(MEMORY[0x1E696AAB0]);
  v63 = *MEMORY[0x1E69DB650];
  v30 = v63;
  v64[0] = colorCopy;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:&v63 count:1];
  v49 = v28;
  v47 = [v29 initWithString:v28 attributes:v31];

  v32 = MEMORY[0x1E696AEC0];
  v33 = _CUIKShortTZString(v24, dateCopy);

  v34 = [v32 stringWithFormat:@"(%@)", v33];

  v35 = objc_alloc(MEMORY[0x1E696AAB0]);
  v61 = v30;
  v62 = colorCopy;
  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
  v56 = [v35 initWithString:v34 attributes:v36];

  v37 = CUIKBundle();
  v38 = [v37 localizedStringForKey:@"INTERVAL_HYPHEN_NARROW" value:@" – " table:0];

  v39 = objc_alloc(MEMORY[0x1E696AAB0]);
  v59 = v30;
  v60 = colorCopy;
  v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
  v41 = [v39 initWithString:v38 attributes:v40];

  v42 = objc_alloc(MEMORY[0x1E696AAB0]);
  v57 = v30;
  v58 = colorCopy;
  v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
  v44 = [v42 initWithString:@" " attributes:v43];

  LOBYTE(v43) = [v53 isEquivalentTo:v24];
  [v18 appendAttributedString:?];
  v45 = v47;
  if ((v43 & 1) == 0)
  {
    [v18 appendAttributedString:v44];
    [v18 appendAttributedString:v47];
    v45 = v56;
  }

  [v18 appendAttributedString:v41];
  [v18 appendAttributedString:v50];
  [v18 appendAttributedString:v44];
  [v18 appendAttributedString:v45];

  return v18;
}

+ (id)attributedAndSmallCappedDesignatorTextWithDate:(id)date calendar:(id)calendar color:(id)color
{
  v45[1] = *MEMORY[0x1E69E9840];
  colorCopy = color;
  calendarCopy = calendar;
  dateCopy = date;
  v11 = [self _dateFormatterWithCalendar:calendarCopy designatorRequiresWhitespace:1 dateHasZeroMinutes:{objc_msgSend(calendarCopy, "component:fromDate:", 64, dateCopy) == 0}];

  v12 = [v11 _attributedStringWithFieldsFromDate:dateCopy];

  v13 = [self _rangeOfDesignatorInAnnotatedTime:v12];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL || (v15 = v13, v16 = v14, [v12 attributedSubstringFromRange:{v13, v14}], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "string"), v18 = objc_claimAutoreleasedReturnValue(), v17, !v18))
  {
    v32 = v12;
  }

  else
  {
    v19 = MEMORY[0x1E69DB878];
    v20 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8]];
    v36 = [v19 fontWithDescriptor:v20 size:0.0];

    fontDescriptor = [v36 fontDescriptor];
    v44 = *MEMORY[0x1E69DB8B0];
    v38 = colorCopy;
    v37 = v18;
    v23 = *MEMORY[0x1E69DB900];
    v41[0] = *MEMORY[0x1E69DB908];
    v22 = v41[0];
    v41[1] = v23;
    v42[0] = &unk_1F4ABEA20;
    v42[1] = &unk_1F4ABEA38;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:2];
    v43[0] = v24;
    v39[0] = v22;
    v39[1] = v23;
    v40[0] = &unk_1F4ABEA50;
    v40[1] = &unk_1F4ABEA38;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
    v43[1] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
    v45[0] = v26;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
    v28 = [fontDescriptor fontDescriptorByAddingAttributes:v27];

    v29 = [MEMORY[0x1E69DB878] fontWithDescriptor:v28 size:0.0];
    v30 = objc_alloc(MEMORY[0x1E696AD40]);
    string = [v12 string];
    v32 = [v30 initWithString:string];

    v33 = *MEMORY[0x1E69DB648];
    [v32 addAttribute:*MEMORY[0x1E69DB648] value:v36 range:{0, v15}];
    v34 = v33;
    colorCopy = v38;
    [v32 addAttribute:v34 value:v29 range:{v15, v16}];
    [v32 addAttribute:*MEMORY[0x1E69DB650] value:v38 range:{v15, v16}];
  }

  return v32;
}

+ (id)timeIntervalAttributedAndSmallCappedDesignatorTextWithStartDate:(id)date endDate:(id)endDate calendar:(id)calendar color:(id)color font:(id)font
{
  v88[1] = *MEMORY[0x1E69E9840];
  calendarCopy = calendar;
  colorCopy = color;
  fontCopy = font;
  endDateCopy = endDate;
  dateCopy = date;
  v15 = 1;
  v16 = [self _dateFormatterWithCalendar:calendarCopy designatorRequiresWhitespace:1 dateHasZeroMinutes:{objc_msgSend(calendarCopy, "component:fromDate:", 64, dateCopy) == 0}];
  v17 = [v16 _attributedStringWithFieldsFromDate:dateCopy];

  v19 = [self _rangeOfDesignatorInAnnotatedTime:v17];
  v20 = v18;
  if (v19 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = [v17 attributedSubstringFromRange:{v19, v18}];
    [v21 string];
    v23 = v22 = v17;

    v24 = v23 == 0;
    v17 = v22;
    v15 = v24;
  }

  v76 = v20;
  v25 = 1;
  v26 = [self _dateFormatterWithCalendar:calendarCopy designatorRequiresWhitespace:1 dateHasZeroMinutes:{objc_msgSend(calendarCopy, "component:fromDate:", 64, endDateCopy) == 0}];

  v77 = v26;
  v27 = [v26 _attributedStringWithFieldsFromDate:endDateCopy];

  v29 = [self _rangeOfDesignatorInAnnotatedTime:v27];
  v30 = v28;
  if (v29 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v31 = [v27 attributedSubstringFromRange:{v29, v28}];
    string = [v31 string];

    v25 = string == 0;
  }

  v80 = v27;
  v33 = CUIKBundle();
  v34 = [v33 localizedStringForKey:@"INTERVAL_HYPHEN_NARROW" value:@" – " table:0];

  v78 = calendarCopy;
  if ((v15 & v25) == 1)
  {
    locale = [calendarCopy locale];
    languageCode = [locale languageCode];

    v37 = [MEMORY[0x1E695DF58] characterDirectionForLanguage:languageCode];
    string2 = [v17 string];
    directionalityIsolatedString = [string2 directionalityIsolatedString];

    string3 = [v80 string];
    directionalityIsolatedString2 = [string3 directionalityIsolatedString];

    v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", directionalityIsolatedString, v34, directionalityIsolatedString2];
    v43 = v42;
    v44 = v34;
    if (v37 == 2)
    {
      rTLString = [v42 RTLString];

      v43 = rTLString;
    }

    v46 = colorCopy;
    v47 = fontCopy;
    v48 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v43];
    v49 = [v43 rangeOfString:v44];
    [v48 addAttribute:*MEMORY[0x1E69DB650] value:colorCopy range:{v49, v50}];

    v51 = v80;
  }

  else
  {
    fontDescriptor = [fontCopy fontDescriptor];
    v87 = *MEMORY[0x1E69DB8B0];
    v75 = v30;
    v54 = *MEMORY[0x1E69DB900];
    v84[0] = *MEMORY[0x1E69DB908];
    v53 = v84[0];
    v84[1] = v54;
    v85[0] = &unk_1F4ABEA20;
    v85[1] = &unk_1F4ABEA38;
    v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v85 forKeys:v84 count:2];
    v86[0] = v55;
    v82[0] = v53;
    v82[1] = v54;
    v83[0] = &unk_1F4ABEA50;
    v83[1] = &unk_1F4ABEA38;
    v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v82 count:2];
    v86[1] = v56;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:2];
    v57 = v73 = v34;
    v88[0] = v57;
    v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v88 forKeys:&v87 count:1];
    v74 = [fontDescriptor fontDescriptorByAddingAttributes:v58];

    v59 = [MEMORY[0x1E69DB878] fontWithDescriptor:v74 size:0.0];
    v60 = objc_alloc(MEMORY[0x1E696AD40]);
    string4 = [v17 string];
    v62 = [v60 initWithString:string4];

    v63 = *MEMORY[0x1E69DB648];
    [v62 addAttribute:*MEMORY[0x1E69DB648] value:fontCopy range:{0, v19}];
    v64 = v59;
    v72 = v59;
    [v62 addAttribute:v63 value:v59 range:{v19, v76}];
    v65 = *MEMORY[0x1E69DB650];
    [v62 addAttribute:*MEMORY[0x1E69DB650] value:colorCopy range:{v19, v76}];
    v66 = objc_alloc(MEMORY[0x1E696AD40]);
    v51 = v80;
    string5 = [v80 string];
    v68 = [v66 initWithString:string5];

    [v68 addAttribute:v63 value:fontCopy range:{0, v29}];
    v69 = v63;
    v46 = colorCopy;
    [v68 addAttribute:v69 value:v64 range:{v29, v75}];
    v47 = fontCopy;
    [v68 addAttribute:v65 value:colorCopy range:{v29, v75}];
    v44 = v73;
    v70 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v73];
    [v70 addAttribute:v65 value:colorCopy range:{0, objc_msgSend(v70, "length")}];
    v48 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v62];
    [v48 appendAttributedString:v70];
    [v48 appendAttributedString:v68];
  }

  return v48;
}

+ (_NSRange)_rangeOfDesignatorInAnnotatedTime:(id)time
{
  v3 = [self _rangeOfAnnontatedTime:time matchingPattern:&__block_literal_global_43];
  result.length = v4;
  result.location = v3;
  return result;
}

+ (_NSRange)_rangeOfAnnontatedTime:(id)time matchingPattern:(id)pattern
{
  timeCopy = time;
  patternCopy = pattern;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3010000000;
  v19 = &unk_1CADB7076;
  v20 = xmmword_1CAD58160;
  v7 = [timeCopy length];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71__CUIKTimeIntervalTextProvider__rangeOfAnnontatedTime_matchingPattern___block_invoke;
  v13[3] = &unk_1E839A8B8;
  v8 = patternCopy;
  v14 = v8;
  v15 = &v16;
  [timeCopy enumerateAttributesInRange:0 options:v7 usingBlock:{0, v13}];
  v9 = v17[4];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);
  v11 = v9;
  v12 = v10;
  result.length = v12;
  result.location = v11;
  return result;
}

void __71__CUIKTimeIntervalTextProvider__rangeOfAnnontatedTime_matchingPattern___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v10 = [a2 objectForKeyedSubscript:*MEMORY[0x1E695D8F8]];
  if ((*(*(a1 + 32) + 16))())
  {
    v9 = *(*(a1 + 40) + 8);
    *(v9 + 32) = a3;
    *(v9 + 40) = a4;
    *a5 = 1;
  }
}

+ (id)_stringByRemovingDesignatorRange:(_NSRange)range fromString:(id)string
{
  v4 = [string stringByReplacingCharactersInRange:range.location withString:{range.length, &stru_1F4AA8958}];
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  return v6;
}

@end