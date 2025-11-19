@interface CUIKTimeIntervalTextProvider
+ (BOOL)_use24HourFormatForLocale:(id)a3;
+ (_NSRange)_rangeOfAnnontatedTime:(id)a3 matchingPattern:(id)a4;
+ (_NSRange)_rangeOfDesignatorInAnnotatedTime:(id)a3;
+ (id)CUIKSmallCapAMPMTimezoneClarificationStringForStartDate:(id)a3 endDate:(id)a4 startTimeZone:(id)a5 endTimeZone:(id)a6 color:(id)a7;
+ (id)_dateFormatterWithCalendar:(id)a3 designatorRequiresWhitespace:(BOOL)a4 dateHasZeroMinutes:(BOOL)a5;
+ (id)_stringByRemovingDesignatorRange:(_NSRange)a3 fromString:(id)a4;
+ (id)_timeIntervalAttributedTextWithStartDate:(id)a3 endDate:(id)a4 calendar:(id)a5 textProviderUtils:(id)a6;
+ (id)attributedAndSmallCappedDesignatorTextWithDate:(id)a3 calendar:(id)a4 color:(id)a5;
+ (id)timeIntervalAttributedAndSmallCappedDesignatorTextWithStartDate:(id)a3 endDate:(id)a4 calendar:(id)a5 color:(id)a6 font:(id)a7;
+ (id)timeIntervalAttributedTextWithStartDate:(id)a3 endDate:(id)a4 calendar:(id)a5;
+ (id)timeIntervalAttributedTextWithStartDate:(id)a3 endDate:(id)a4 calendar:(id)a5 font:(__CTFont *)a6;
+ (id)timeIntervalAttributedTextWithStartDate:(id)a3 endDate:(id)a4 calendar:(id)a5 font:(__CTFont *)a6 designatorRequiresWhitespace:(BOOL)a7 smallCapsAllowed:(BOOL)a8 dropLeftRedundantDesignator:(BOOL)a9;
+ (id)timeIntervalAttributedTextWithStartDate:(id)a3 endDate:(id)a4 calendar:(id)a5 font:(__CTFont *)a6 textProviderUtils:(id)a7;
+ (id)timeIntervalAttributedTextWithStartDate:(id)a3 endDate:(id)a4 calendar:(id)a5 keepRedundantDesignator:(BOOL)a6;
+ (void)force24HourFormatForUnitTests:(BOOL)a3 withLocale:(id)a4;
+ (void)resetForce24HourFormatForUnitTests;
@end

@implementation CUIKTimeIntervalTextProvider

+ (id)timeIntervalAttributedTextWithStartDate:(id)a3 endDate:(id)a4 calendar:(id)a5 font:(__CTFont *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(CUIKTextProviderUtils);
  v14 = [a1 timeIntervalAttributedTextWithStartDate:v12 endDate:v11 calendar:v10 font:a6 textProviderUtils:v13];

  return v14;
}

+ (id)timeIntervalAttributedTextWithStartDate:(id)a3 endDate:(id)a4 calendar:(id)a5 font:(__CTFont *)a6 designatorRequiresWhitespace:(BOOL)a7 smallCapsAllowed:(BOOL)a8 dropLeftRedundantDesignator:(BOOL)a9
{
  v9 = a8;
  v10 = a7;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = objc_alloc_init(CUIKTextProviderUtils);
  [(CUIKTextProviderUtils *)v18 setDesignatorRequiresWhitespace:v10];
  [(CUIKTextProviderUtils *)v18 setSmallCapsAllowed:v9];
  [(CUIKTextProviderUtils *)v18 setDropLeftRedundantDesignator:a9];
  v19 = [a1 timeIntervalAttributedTextWithStartDate:v17 endDate:v16 calendar:v15 font:a6 textProviderUtils:v18];

  return v19;
}

+ (id)timeIntervalAttributedTextWithStartDate:(id)a3 endDate:(id)a4 calendar:(id)a5 font:(__CTFont *)a6 textProviderUtils:(id)a7
{
  v34[1] = *MEMORY[0x1E69E9840];
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(__CTFont *)a6 CUIKFontWithAlternativePunctuation];
  v33 = *MEMORY[0x1E69DB648];
  v34[0] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
  v18 = [a1 _timeIntervalAttributedTextWithStartDate:v15 endDate:v14 calendar:v13 textProviderUtils:v12];

  v19 = objc_alloc(MEMORY[0x1E696AD40]);
  v20 = [v18 string];
  v21 = [v19 initWithString:v20 attributes:v17];

  v22 = [v18 length];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __112__CUIKTimeIntervalTextProvider_timeIntervalAttributedTextWithStartDate_endDate_calendar_font_textProviderUtils___block_invoke;
  v29[3] = &unk_1E839A870;
  v23 = v21;
  v30 = v23;
  v31 = v16;
  v32 = v12;
  v24 = v12;
  v25 = v16;
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

+ (id)timeIntervalAttributedTextWithStartDate:(id)a3 endDate:(id)a4 calendar:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(CUIKTextProviderUtils);
  v12 = [a1 _timeIntervalAttributedTextWithStartDate:v10 endDate:v9 calendar:v8 textProviderUtils:v11];

  return v12;
}

+ (id)timeIntervalAttributedTextWithStartDate:(id)a3 endDate:(id)a4 calendar:(id)a5 keepRedundantDesignator:(BOOL)a6
{
  v6 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(CUIKTextProviderUtils);
  [(CUIKTextProviderUtils *)v13 setKeepRedundantDesignator:v6];
  v14 = [a1 _timeIntervalAttributedTextWithStartDate:v12 endDate:v11 calendar:v10 textProviderUtils:v13];

  return v14;
}

+ (void)force24HourFormatForUnitTests:(BOOL)a3 withLocale:(id)a4
{
  v4 = a3;
  v5 = a4;
  os_unfair_lock_lock(&force24HourFormatRegistryLock);
  if (!force24HourFormatRegistry)
  {
    v6 = objc_opt_new();
    v7 = force24HourFormatRegistry;
    force24HourFormatRegistry = v6;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  v9 = force24HourFormatRegistry;
  v10 = [v5 localeIdentifier];

  [v9 setObject:v8 forKeyedSubscript:v10];

  os_unfair_lock_unlock(&force24HourFormatRegistryLock);
}

+ (void)resetForce24HourFormatForUnitTests
{
  os_unfair_lock_lock(&force24HourFormatRegistryLock);
  v2 = force24HourFormatRegistry;
  force24HourFormatRegistry = 0;

  os_unfair_lock_unlock(&force24HourFormatRegistryLock);
}

+ (BOOL)_use24HourFormatForLocale:(id)a3
{
  v3 = a3;
  os_unfair_lock_lock(&force24HourFormatRegistryLock);
  v4 = force24HourFormatRegistry;
  v5 = [v3 localeIdentifier];

  v6 = [v4 objectForKeyedSubscript:v5];

  os_unfair_lock_unlock(&force24HourFormatRegistryLock);
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

+ (id)_dateFormatterWithCalendar:(id)a3 designatorRequiresWhitespace:(BOOL)a4 dateHasZeroMinutes:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  if (_dateFormatterWithCalendar_designatorRequiresWhitespace_dateHasZeroMinutes__onceToken != -1)
  {
    +[CUIKTimeIntervalTextProvider _dateFormatterWithCalendar:designatorRequiresWhitespace:dateHasZeroMinutes:];
  }

  v9 = [v8 locale];
  v10 = [a1 _use24HourFormatForLocale:v9];

  v11 = v5 & ~v10;
  v12 = [v8 copy];
  v13 = [[CUIKDateFormatterCacheKey alloc] initWithCalendar:v12 is24HourFormat:v10 dropDesignator:0 canDropMinutes:v11 designatorRequiresWhitespace:v6 addDate:0];
  v14 = [_dateFormatterWithCalendar_designatorRequiresWhitespace_dateHasZeroMinutes__cache objectForKey:v13];
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v16 = objc_opt_new();
    [v16 setCalendar:v12];
    v17 = [v12 timeZone];
    [v16 setTimeZone:v17];

    v18 = [v12 locale];
    [v16 setLocale:v18];

    v19 = MEMORY[0x1E696AB78];
    if (v11)
    {
      v20 = @"j";
    }

    else
    {
      v20 = @"jmm";
    }

    v21 = [v12 locale];
    v22 = [v19 dateFormatFromTemplate:v20 options:0 locale:v21];

    v23 = [CUIKTextProviderUtils timeFormatByRemovingWhitespaceAroundDesignatorOfTimeFormat:v22 designatorRequiresWhitespace:v6];

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

+ (id)_timeIntervalAttributedTextWithStartDate:(id)a3 endDate:(id)a4 calendar:(id)a5 textProviderUtils:(id)a6
{
  v79[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = ([v13 keepZeroMinutes] & 1) == 0 && objc_msgSend(v12, "component:fromDate:", 64, v10) == 0;
  v15 = [a1 _dateFormatterWithCalendar:v12 designatorRequiresWhitespace:objc_msgSend(v13 dateHasZeroMinutes:{"designatorRequiresWhitespace"), v14}];
  v16 = [v15 _attributedStringWithFieldsFromDate:v10];
  v18 = [a1 _rangeOfDesignatorInAnnotatedTime:v16];
  v70 = v17;
  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v77 = 0;
  }

  else
  {
    v19 = [v16 attributedSubstringFromRange:{v18, v17}];
    v77 = [v19 string];
  }

  v75 = v16;
  v20 = ([v13 keepZeroMinutes] & 1) == 0 && objc_msgSend(v12, "component:fromDate:", 64, v11) == 0;
  v74 = v12;
  v21 = [a1 _dateFormatterWithCalendar:v12 designatorRequiresWhitespace:objc_msgSend(v13 dateHasZeroMinutes:{"designatorRequiresWhitespace"), v20}];

  v71 = v21;
  v22 = [v21 _attributedStringWithFieldsFromDate:v11];
  v24 = [a1 _rangeOfDesignatorInAnnotatedTime:v22];
  v25 = v23;
  v76 = v22;
  if (v24 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = 0;
  }

  else
  {
    v27 = [v22 attributedSubstringFromRange:{v24, v23}];
    v26 = [v27 string];
  }

  v72 = v11;
  v28 = CUIKBundle();
  v29 = [v28 localizedStringForKey:@"INTERVAL_HYPHEN_NARROW" value:@" – " table:0];

  v73 = v26;
  if (v77 | v26)
  {
    v69 = v10;
    v78 = @"CUIKSmallCapsAttributeName";
    v45 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v13, "smallCapsAllowed")}];
    v79[0] = v45;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:&v78 count:1];
    v46 = v66 = v13;

    v47 = objc_alloc(MEMORY[0x1E696AD40]);
    v48 = [v75 string];
    v49 = [v47 initWithString:v48];

    v50 = v25;
    v51 = v49;
    [v49 addAttributes:v46 range:{v18, v70}];
    v52 = objc_alloc(MEMORY[0x1E696AD40]);
    v53 = [v76 string];
    v54 = [v52 initWithString:v53];

    v67 = v46;
    v55 = v46;
    v13 = v66;
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
      if (v73 && [v77 isEqualToString:?])
      {
        if ([v66 dropLeftRedundantDesignator])
        {
          if (v18 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v33 = v75;
            v58 = [v75 string];
            v59 = [a1 _stringByRemovingDesignatorRange:v18 fromString:{v70, v58}];

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
          v64 = [v76 string];
          v59 = [a1 _stringByRemovingDesignatorRange:v24 fromString:{v50, v64}];

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
    v10 = v69;
    goto LABEL_27;
  }

  v30 = [v74 locale];
  v31 = [v30 languageCode];

  v32 = [MEMORY[0x1E695DF58] characterDirectionForLanguage:v31];
  v33 = v75;
  v34 = [v75 string];
  v35 = [v34 directionalityIsolatedString];

  v36 = [v76 string];
  v37 = [v36 directionalityIsolatedString];

  v38 = v29;
  v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v35, v29, v37];
  v40 = v39;
  if (v32 == 2)
  {
    v41 = [v39 RTLString];

    v40 = v41;
  }

  v42 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v40];

  v43 = v74;
  v44 = v76;
LABEL_27:

  return v42;
}

+ (id)CUIKSmallCapAMPMTimezoneClarificationStringForStartDate:(id)a3 endDate:(id)a4 startTimeZone:(id)a5 endTimeZone:(id)a6 color:(id)a7
{
  v64[1] = *MEMORY[0x1E69E9840];
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = MEMORY[0x1E696AD40];
  v16 = a4;
  v17 = a3;
  v18 = objc_alloc_init(v15);
  v55 = v12;
  if (v12)
  {
    v19 = v12;
  }

  else
  {
    v19 = [MEMORY[0x1E695DFE8] calendarTimeZone];
  }

  v20 = v19;
  v53 = v19;
  v21 = [MEMORY[0x1E695DEE8] currentCalendar];
  [v21 setTimeZone:v20];
  v52 = v21;
  v48 = [a1 attributedAndSmallCappedDesignatorTextWithDate:v17 calendar:v21 color:v14];
  v54 = v13;
  if (v13)
  {
    v22 = v13;
  }

  else
  {
    v22 = v20;
  }

  v23 = MEMORY[0x1E695DEE8];
  v24 = v22;
  v25 = [v23 currentCalendar];
  [v25 setTimeZone:v24];
  v51 = v25;
  v50 = [a1 attributedAndSmallCappedDesignatorTextWithDate:v16 calendar:v25 color:v14];

  v26 = MEMORY[0x1E696AEC0];
  v27 = _CUIKShortTZString(v20, v17);
  v28 = [v26 stringWithFormat:@"(%@)", v27];

  v29 = objc_alloc(MEMORY[0x1E696AAB0]);
  v63 = *MEMORY[0x1E69DB650];
  v30 = v63;
  v64[0] = v14;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:&v63 count:1];
  v49 = v28;
  v47 = [v29 initWithString:v28 attributes:v31];

  v32 = MEMORY[0x1E696AEC0];
  v33 = _CUIKShortTZString(v24, v17);

  v34 = [v32 stringWithFormat:@"(%@)", v33];

  v35 = objc_alloc(MEMORY[0x1E696AAB0]);
  v61 = v30;
  v62 = v14;
  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
  v56 = [v35 initWithString:v34 attributes:v36];

  v37 = CUIKBundle();
  v38 = [v37 localizedStringForKey:@"INTERVAL_HYPHEN_NARROW" value:@" – " table:0];

  v39 = objc_alloc(MEMORY[0x1E696AAB0]);
  v59 = v30;
  v60 = v14;
  v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
  v41 = [v39 initWithString:v38 attributes:v40];

  v42 = objc_alloc(MEMORY[0x1E696AAB0]);
  v57 = v30;
  v58 = v14;
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

+ (id)attributedAndSmallCappedDesignatorTextWithDate:(id)a3 calendar:(id)a4 color:(id)a5
{
  v45[1] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [a1 _dateFormatterWithCalendar:v9 designatorRequiresWhitespace:1 dateHasZeroMinutes:{objc_msgSend(v9, "component:fromDate:", 64, v10) == 0}];

  v12 = [v11 _attributedStringWithFieldsFromDate:v10];

  v13 = [a1 _rangeOfDesignatorInAnnotatedTime:v12];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL || (v15 = v13, v16 = v14, [v12 attributedSubstringFromRange:{v13, v14}], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "string"), v18 = objc_claimAutoreleasedReturnValue(), v17, !v18))
  {
    v32 = v12;
  }

  else
  {
    v19 = MEMORY[0x1E69DB878];
    v20 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8]];
    v36 = [v19 fontWithDescriptor:v20 size:0.0];

    v21 = [v36 fontDescriptor];
    v44 = *MEMORY[0x1E69DB8B0];
    v38 = v8;
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
    v28 = [v21 fontDescriptorByAddingAttributes:v27];

    v29 = [MEMORY[0x1E69DB878] fontWithDescriptor:v28 size:0.0];
    v30 = objc_alloc(MEMORY[0x1E696AD40]);
    v31 = [v12 string];
    v32 = [v30 initWithString:v31];

    v33 = *MEMORY[0x1E69DB648];
    [v32 addAttribute:*MEMORY[0x1E69DB648] value:v36 range:{0, v15}];
    v34 = v33;
    v8 = v38;
    [v32 addAttribute:v34 value:v29 range:{v15, v16}];
    [v32 addAttribute:*MEMORY[0x1E69DB650] value:v38 range:{v15, v16}];
  }

  return v32;
}

+ (id)timeIntervalAttributedAndSmallCappedDesignatorTextWithStartDate:(id)a3 endDate:(id)a4 calendar:(id)a5 color:(id)a6 font:(id)a7
{
  v88[1] = *MEMORY[0x1E69E9840];
  v12 = a5;
  v79 = a6;
  v81 = a7;
  v13 = a4;
  v14 = a3;
  v15 = 1;
  v16 = [a1 _dateFormatterWithCalendar:v12 designatorRequiresWhitespace:1 dateHasZeroMinutes:{objc_msgSend(v12, "component:fromDate:", 64, v14) == 0}];
  v17 = [v16 _attributedStringWithFieldsFromDate:v14];

  v19 = [a1 _rangeOfDesignatorInAnnotatedTime:v17];
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
  v26 = [a1 _dateFormatterWithCalendar:v12 designatorRequiresWhitespace:1 dateHasZeroMinutes:{objc_msgSend(v12, "component:fromDate:", 64, v13) == 0}];

  v77 = v26;
  v27 = [v26 _attributedStringWithFieldsFromDate:v13];

  v29 = [a1 _rangeOfDesignatorInAnnotatedTime:v27];
  v30 = v28;
  if (v29 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v31 = [v27 attributedSubstringFromRange:{v29, v28}];
    v32 = [v31 string];

    v25 = v32 == 0;
  }

  v80 = v27;
  v33 = CUIKBundle();
  v34 = [v33 localizedStringForKey:@"INTERVAL_HYPHEN_NARROW" value:@" – " table:0];

  v78 = v12;
  if ((v15 & v25) == 1)
  {
    v35 = [v12 locale];
    v36 = [v35 languageCode];

    v37 = [MEMORY[0x1E695DF58] characterDirectionForLanguage:v36];
    v38 = [v17 string];
    v39 = [v38 directionalityIsolatedString];

    v40 = [v80 string];
    v41 = [v40 directionalityIsolatedString];

    v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v39, v34, v41];
    v43 = v42;
    v44 = v34;
    if (v37 == 2)
    {
      v45 = [v42 RTLString];

      v43 = v45;
    }

    v46 = v79;
    v47 = v81;
    v48 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v43];
    v49 = [v43 rangeOfString:v44];
    [v48 addAttribute:*MEMORY[0x1E69DB650] value:v79 range:{v49, v50}];

    v51 = v80;
  }

  else
  {
    v52 = [v81 fontDescriptor];
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
    v74 = [v52 fontDescriptorByAddingAttributes:v58];

    v59 = [MEMORY[0x1E69DB878] fontWithDescriptor:v74 size:0.0];
    v60 = objc_alloc(MEMORY[0x1E696AD40]);
    v61 = [v17 string];
    v62 = [v60 initWithString:v61];

    v63 = *MEMORY[0x1E69DB648];
    [v62 addAttribute:*MEMORY[0x1E69DB648] value:v81 range:{0, v19}];
    v64 = v59;
    v72 = v59;
    [v62 addAttribute:v63 value:v59 range:{v19, v76}];
    v65 = *MEMORY[0x1E69DB650];
    [v62 addAttribute:*MEMORY[0x1E69DB650] value:v79 range:{v19, v76}];
    v66 = objc_alloc(MEMORY[0x1E696AD40]);
    v51 = v80;
    v67 = [v80 string];
    v68 = [v66 initWithString:v67];

    [v68 addAttribute:v63 value:v81 range:{0, v29}];
    v69 = v63;
    v46 = v79;
    [v68 addAttribute:v69 value:v64 range:{v29, v75}];
    v47 = v81;
    [v68 addAttribute:v65 value:v79 range:{v29, v75}];
    v44 = v73;
    v70 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v73];
    [v70 addAttribute:v65 value:v79 range:{0, objc_msgSend(v70, "length")}];
    v48 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v62];
    [v48 appendAttributedString:v70];
    [v48 appendAttributedString:v68];
  }

  return v48;
}

+ (_NSRange)_rangeOfDesignatorInAnnotatedTime:(id)a3
{
  v3 = [a1 _rangeOfAnnontatedTime:a3 matchingPattern:&__block_literal_global_43];
  result.length = v4;
  result.location = v3;
  return result;
}

+ (_NSRange)_rangeOfAnnontatedTime:(id)a3 matchingPattern:(id)a4
{
  v5 = a3;
  v6 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3010000000;
  v19 = &unk_1CADB7076;
  v20 = xmmword_1CAD58160;
  v7 = [v5 length];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71__CUIKTimeIntervalTextProvider__rangeOfAnnontatedTime_matchingPattern___block_invoke;
  v13[3] = &unk_1E839A8B8;
  v8 = v6;
  v14 = v8;
  v15 = &v16;
  [v5 enumerateAttributesInRange:0 options:v7 usingBlock:{0, v13}];
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

+ (id)_stringByRemovingDesignatorRange:(_NSRange)a3 fromString:(id)a4
{
  v4 = [a4 stringByReplacingCharactersInRange:a3.location withString:{a3.length, &stru_1F4AA8958}];
  v5 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];

  return v6;
}

@end