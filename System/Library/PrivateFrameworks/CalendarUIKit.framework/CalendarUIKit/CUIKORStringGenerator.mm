@interface CUIKORStringGenerator
+ (double)_defaultMinimumLineHeightForState:(id)a3;
+ (double)_minimumPrimaryFontLineHeightUsingSmallText:(BOOL)a3 sizeClass:(int64_t)a4;
+ (double)_naturalHeightForPrimaryTextUsingSmallText:(BOOL)a3 sizeClass:(int64_t)a4;
+ (double)_widthForWidestPossibleIconIncludingTrailingPadding:(id)a3 locationImageName:(id)a4;
+ (double)attributedStringMinimumLineHeightUsingSmallText:(BOOL)a3 sizeClass:(int64_t)a4;
+ (double)minNaturalTextHeightForEvent:(id)a3 usingSmallText:(BOOL)a4 sizeClass:(int64_t)a5;
+ (double)minimumNaturalHeightForPrimaryTextUsingSmallText:(BOOL)a3 sizeClass:(int64_t)a4;
+ (double)naturalHeightForPrimaryTextUsingSmallText:(BOOL)a3 sizeClass:(int64_t)a4;
+ (id)_attributedLocationWithState:(id)a3 locationImageName:(id)a4;
+ (id)_attributedStringWithSystemImageName:(id)a3 symbolAttributes:(id)a4 widthForSymbol:(double)a5 baseString:(id)a6;
+ (id)_attributedTimeWithState:(id)a3 options:(unint64_t)a4 locationImageName:(id)a5;
+ (id)_attributedTitleWithState:(id)a3;
+ (id)_defaultAttributesForState:(id)a3;
+ (void)_indentWrappingLinesAndLinesOtherThanTheFirstWithBaseParagraphStyle:(id)a3 string:(id)a4 indentAmount:(double)a5;
- (id)generateContentStringsWithState:(id)a3 options:(unint64_t)a4;
- (id)generateTrailingStringWithState:(id)a3;
- (id)generateTravelTimeStringWithState:(id)a3;
@end

@implementation CUIKORStringGenerator

+ (double)attributedStringMinimumLineHeightUsingSmallText:(BOOL)a3 sizeClass:(int64_t)a4
{
  if (a3)
  {
    v4 = 8.0;
  }

  else
  {
    v4 = 9.0;
  }

  [a1 _minimumPrimaryFontLineHeightUsingSmallText:? sizeClass:?];
  result = CUIKCeilToScreenScale(v5);
  if (v4 >= result)
  {
    return v4;
  }

  return result;
}

+ (double)minimumNaturalHeightForPrimaryTextUsingSmallText:(BOOL)a3 sizeClass:(int64_t)a4
{
  v5 = a3;
  [a1 _minimumPrimaryFontLineHeightUsingSmallText:? sizeClass:?];
  v8 = v7;
  [a1 attributedStringMinimumLineHeightUsingSmallText:v5 sizeClass:a4];
  if (v8 >= result)
  {
    return v8;
  }

  return result;
}

+ (double)minNaturalTextHeightForEvent:(id)a3 usingSmallText:(BOOL)a4 sizeClass:(int64_t)a5
{
  v6 = a4;
  v8 = a3;
  [a1 minimumNaturalHeightForPrimaryTextUsingSmallText:v6 sizeClass:a5];
  v10 = v9;
  v11 = +[CUIKSemiConstantCache sharedInstance];
  v12 = [v11 dayOccurrenceUncompressedSecondaryTextFont];
  v14 = [(UIFont *)v12 cuik_lineHeight];

  v15 = v10 + v14;
  v16 = [v8 location];

  result = v14 + v15;
  if (!v16)
  {
    return v15;
  }

  return result;
}

+ (double)naturalHeightForPrimaryTextUsingSmallText:(BOOL)a3 sizeClass:(int64_t)a4
{
  [a1 _naturalHeightForPrimaryTextUsingSmallText:a3 sizeClass:a4];

  return CUIKCeilToScreenScale(v4);
}

+ (double)_naturalHeightForPrimaryTextUsingSmallText:(BOOL)a3 sizeClass:(int64_t)a4
{
  v9 = a3;
  CUIKMultiwindowAssert(a4 != 0, @"Unspecified size class", a3, a4, v4, v5, v6, v7, v15);
  v10 = +[CUIKSemiConstantCache sharedInstance];
  v11 = v10;
  if (v9)
  {
    if (a4 == 1)
    {
      [v10 dayReminderIntegrationCachedLineHeightSmallCompact];
    }

    else
    {
      [v10 dayReminderIntegrationCachedLineHeightSmallRegular];
    }
  }

  else if (a4 == 1)
  {
    [v10 dayReminderIntegrationCachedLineHeightCompact];
  }

  else
  {
    [v10 dayReminderIntegrationCachedLineHeightRegular];
  }

  v13 = v12;

  return v13;
}

- (id)generateContentStringsWithState:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 locationImageName];
  v8 = [objc_opt_class() _attributedTitleWithState:v6];
  v9 = [v8 mutableCopy];
  [v6 textSpace];
  v11 = v10;
  v12 = [v6 isAllDay];
  v13 = [v6 primaryTextFont];
  v15 = [(UIFont *)v13 cuik_lineHeight];

  v16 = [v6 secondaryTextFont];
  v18 = [(UIFont *)v16 cuik_lineHeight];

  v19 = objc_alloc_init(CUIKORContentStrings);
  [(CUIKORContentStrings *)v19 setTitleString:v8];
  v20 = [(CUIKORStringGenerator *)self generateTrailingStringWithState:v6];
  [(CUIKORContentStrings *)v19 setTrailingString:v20];

  if ((v12 & 1) == 0)
  {
    if (v11 >= v15 + v18)
    {
      v23 = [objc_opt_class() _attributedTimeWithState:v6 options:a4 locationImageName:v7];
      v30 = [objc_opt_class() _attributedLocationWithState:v6 locationImageName:v7];
      [(CUIKORContentStrings *)v19 setTimeString:v23];
      [(CUIKORContentStrings *)v19 setLocationString:v30];
      v35 = [v30 length];
      v36 = [v23 length];
      if (v35)
      {
        v37 = [v30 attributesAtIndex:objc_msgSend(v30 effectiveRange:{"length") - 1, 0}];
        v38 = v7;
        v39 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n" attributes:v37];
        [v9 appendAttributedString:v39];

        v7 = v38;
        [v9 appendAttributedString:v30];
      }

      if (!v36)
      {
        goto LABEL_10;
      }

      v31 = [v23 attributesAtIndex:objc_msgSend(v23 effectiveRange:{"length") - 1, 0}];
      v40 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n" attributes:v31];
      [v9 appendAttributedString:v40];

      [v9 appendAttributedString:v23];
    }

    else
    {
      v21 = [v6 location];
      v22 = [v21 length];

      if (!v22)
      {
        goto LABEL_11;
      }

      v23 = [objc_opt_class() _defaultAttributesForState:v6];
      v24 = [v6 secondaryTextFont];
      v25 = *MEMORY[0x1E69DB648];
      [v23 setObject:v24 forKeyedSubscript:*MEMORY[0x1E69DB648]];

      v26 = [v6 locationTextColor];
      v27 = [v26 cuik_colorWithAlphaScaled:{CUIKOccurrenceLeadingIconAlphaScale(objc_msgSend(v6, "userInterfaceStyle"))}];
      [v23 setObject:v27 forKeyedSubscript:*MEMORY[0x1E69DB650]];

      v28 = MEMORY[0x1E69DCAD8];
      v29 = [v23 objectForKeyedSubscript:v25];
      v30 = [v28 cuik_configurationWithFont:v29 scale:1];

      v31 = [MEMORY[0x1E69DCAB8] cuik_privateSystemImageNamed:v7 withConfiguration:v30];
      v32 = [MEMORY[0x1E69DB7F0] cuik_textAttachmentWithImage:v31];
      [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v32 attributes:v23];
      v33 = v42 = v7;
      v34 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" " attributes:v23];
      [v9 appendAttributedString:v34];

      [v9 appendAttributedString:v33];
      v7 = v42;
    }

LABEL_10:
  }

LABEL_11:
  [(CUIKORContentStrings *)v19 setCombinedString:v9];

  return v19;
}

- (id)generateTravelTimeStringWithState:(id)a3
{
  v3 = a3;
  [v3 travelTime];
  v5 = CUIKDisplayStringTravelTimeAndDuration(v4);
  if ([v5 length])
  {
    v6 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v5];
    v7 = [objc_opt_class() _defaultAttributesForState:v3];
    v8 = +[CUIKORFontUtils defaultOccurrenceSecondaryTextFont];
    [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x1E69DB648]];

    [v6 setAttributes:v7 range:{0, objc_msgSend(v6, "length")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)generateTrailingStringWithState:(id)a3
{
  v3 = a3;
  v4 = [v3 moreText];
  if (v4)
  {
    v5 = +[CUIKInterface shared];
    v6 = [v5 layoutDirectionOrOverride] == 0;

    v7 = [CUIKORStringGenerator _defaultAttributesForState:v3];
    v8 = [v3 primaryTextFont];
    [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x1E69DB648]];

    v9 = [v3 moreTextColor];
    [v7 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69DB650]];

    v10 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
    v11 = [v10 mutableCopy];

    [v11 setAlignment:2 * v6];
    [v7 setObject:v11 forKeyedSubscript:*MEMORY[0x1E69DB688]];
    v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v4 attributes:v7];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_attributedTitleWithState:(id)a3
{
  v4 = a3;
  v5 = [v4 title];
  v6 = v5;
  v7 = &stru_1F4AA8958;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [a1 _defaultAttributesForState:v4];
  v10 = [v4 primaryTextFont];
  v11 = *MEMORY[0x1E69DB648];
  [v9 setObject:v10 forKeyedSubscript:*MEMORY[0x1E69DB648]];

  v12 = [v4 titleTextColor];
  [v9 setObject:v12 forKeyedSubscript:*MEMORY[0x1E69DB650]];

  v13 = objc_alloc_init(MEMORY[0x1E696AD40]);
  if ([v4 needsReply] && (objc_msgSend(v4, "isCancelled") & 1) == 0)
  {
    v14 = MEMORY[0x1E69DB7F0];
    v15 = [v9 objectForKeyedSubscript:v11];
    v16 = [CUIKORImageUtils scaledCalendarInvitationDotForFont:v15];
    v17 = [v14 cuik_textAttachmentWithImage:v16];

    v18 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v17];
    [v13 appendAttributedString:v18];
  }

  v19 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v8];

  [v13 appendAttributedString:v19];
  [v13 addAttributes:v9 range:{0, objc_msgSend(v13, "length")}];

  return v13;
}

+ (id)_attributedTimeWithState:(id)a3 options:(unint64_t)a4 locationImageName:(id)a5
{
  v7 = a3;
  v101 = a5;
  if (_bitmaskContainsOption() & 1) != 0 || ([v7 hidesTime])
  {
    v8 = 0;
    goto LABEL_19;
  }

  v97 = [v7 secondaryTextFont];
  v9 = CUIKCalendar();
  v10 = [v7 occurrence];
  v11 = [v10 startDate];
  v12 = [v7 occurrence];
  v13 = [v12 endDate];
  v14 = [v9 cal_isMultidayEventForUIWithStartDate:v11 endDate:v13];

  v15 = [v7 occurrence];
  v16 = [v15 effectiveTimeZone];
  v17 = [v7 occurrence];
  v18 = [v17 startDate];
  v19 = CUIKShouldShowTimezoneClarification(v16, v18);

  v98 = v9;
  v95 = v19;
  if (v14)
  {
    v99 = 0;
    v20 = v97;
  }

  else
  {
    v21 = [v7 occurrence];
    v22 = [v21 endTimeZone];
    v23 = [v7 occurrence];
    v24 = [v23 endDate];
    if (CUIKShouldShowTimezoneClarification(v22, v24))
    {
      v25 = [v7 occurrence];
      v26 = [v25 effectiveTimeZone];
      [v7 occurrence];
      v27 = v93 = a1;
      v28 = [v27 endTimeZone];
      v29 = CalEqualObjects() & v19 ^ 1;

      v30 = v29;
      a1 = v93;
      v19 = v95;

      v9 = v98;
    }

    else
    {
      v30 = 0;
    }

    v20 = v97;

    v99 = v30;
    if (!v19 || (v30 & 1) != 0)
    {
      v31 = [v7 occurrence];
      v32 = [v31 startDate];
      v33 = [v7 occurrence];
      v35 = [v33 endDate];
      v36 = [CUIKTimeIntervalTextProvider timeIntervalAttributedTextWithStartDate:v32 endDate:v35 calendar:v9 font:v97];
      v34 = [v36 mutableCopy];

      goto LABEL_13;
    }
  }

  v31 = [v7 occurrence];
  v32 = [v31 startDate];
  v33 = [CUIKTimeTextProvider timeAttributedTextWithDate:v32 calendar:v9 font:v20 options:0];
  v34 = [v33 mutableCopy];
LABEL_13:

  v37 = [a1 _defaultAttributesForState:v7];
  v38 = [v7 timeTextColor];
  v39 = *MEMORY[0x1E69DB650];
  [v37 setObject:v38 forKeyedSubscript:*MEMORY[0x1E69DB650]];

  [v34 addAttributes:v37 range:{0, objc_msgSend(v34, "length")}];
  v40 = [v37 mutableCopy];
  v41 = [v7 timeTextColor];
  v42 = [v41 cuik_colorWithAlphaScaled:{CUIKOccurrenceLeadingIconAlphaScale(objc_msgSend(v7, "userInterfaceStyle"))}];
  [v40 setObject:v42 forKeyedSubscript:v39];

  v43 = *MEMORY[0x1E69DB648];
  [v40 setObject:v20 forKeyedSubscript:*MEMORY[0x1E69DB648]];
  [a1 _widthForWidestPossibleIconIncludingTrailingPadding:v20 locationImageName:v101];
  v45 = v44;
  v8 = [a1 _attributedStringWithSystemImageName:@"clock.time.1009" symbolAttributes:v40 widthForSymbol:v34 baseString:?];
  if ((v95 | v99))
  {
    v90 = v40;
    v91 = v34;
    v94 = a1;
    v46 = [v7 occurrence];
    v47 = [v46 effectiveTimeZone];

    v96 = [v98 copy];
    [v96 setTimeZone:v47];
    v48 = objc_alloc(MEMORY[0x1E696AAB0]);
    v49 = [v7 occurrence];
    v50 = [v49 startDate];
    v89 = v47;
    v51 = [v47 abbreviationForDate:v50];
    v92 = [v48 initWithString:v51];

    v52 = [v37 mutableCopy];
    [v52 setObject:v20 forKeyedSubscript:v43];
    [v7 occurrence];
    if (v99)
      v53 = {;
      v54 = [v53 endTimeZone];

      v87 = v54;
      v88 = [v98 copy];
      v55 = v54;
      [v88 setTimeZone:v54];
      v56 = objc_alloc(MEMORY[0x1E696AAB0]);
      v57 = [v7 occurrence];
      v58 = [v57 endDate];
      v59 = [v55 abbreviationForDate:v58];
      v60 = [v56 initWithString:v59];

      v100 = v52;
      v61 = [v7 occurrence];
      v62 = [v61 startDate];
      v63 = [CUIKTimeTextProvider timeAttributedTextWithDate:v62 calendar:v96 font:v20 options:0];

      v64 = [v7 occurrence];
      v65 = [v64 endDate];
      v86 = [CUIKTimeTextProvider timeAttributedTextWithDate:v65 calendar:v88 font:v20 options:0];

      v66 = MEMORY[0x1E696AAB0];
      v67 = objc_alloc(MEMORY[0x1E696AAB0]);
      v68 = CUIKBundle();
      v69 = [v68 localizedStringForKey:@"time range with multiple time zones" value:@"(%@ %@ - %@ %@)" table:0];
      v70 = [v67 initWithString:v69 attributes:v100];
      v71 = [v66 localizedAttributedStringWithFormat:v70, v63, v92, v86, v60];

      v72 = v88;
      v73 = v87;

      v52 = v100;
    }

    else
      v74 = {;
      v75 = [v74 startDate];
      v73 = [CUIKTimeTextProvider timeAttributedTextWithDate:v75 calendar:v96 font:v20 options:0];

      v76 = MEMORY[0x1E696AAB0];
      v77 = objc_alloc(MEMORY[0x1E696AAB0]);
      v72 = CUIKBundle();
      v60 = [v72 localizedStringForKey:@"time range then time zone" value:@"(%@ %@)" table:0];
      v63 = [v77 initWithString:? attributes:?];
      v71 = [v76 localizedAttributedStringWithFormat:v63, v73, v92];
    }

    v78 = MEMORY[0x1E696AD40];
    v79 = objc_alloc(MEMORY[0x1E696AAB0]);
    v80 = CUIKBundle();
    v81 = [v80 localizedStringForKey:@"time zone clarifier format %@ %@" value:@"%@ %@" table:0];
    v82 = [v79 initWithString:v81 attributes:v52];
    v83 = [v78 localizedAttributedStringWithFormat:v82, v8, v71];

    v8 = v83;
    a1 = v94;
    v20 = v97;
    v40 = v90;
    v34 = v91;
  }

  v84 = [v37 objectForKeyedSubscript:*MEMORY[0x1E69DB688]];
  [a1 _indentWrappingLinesAndLinesOtherThanTheFirstWithBaseParagraphStyle:v84 string:v8 indentAmount:v45];

LABEL_19:

  return v8;
}

+ (id)_attributedLocationWithState:(id)a3 locationImageName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 location];
  if (v8)
  {
    v9 = [v6 location];
    v10 = [v9 mutableCopy];
  }

  else
  {
    v10 = 0;
  }

  if ([v10 length])
  {
    v11 = [a1 _defaultAttributesForState:v6];
    v12 = [v6 secondaryTextFont];
    v13 = *MEMORY[0x1E69DB648];
    [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x1E69DB648]];

    v14 = [v6 locationTextColor];
    v15 = *MEMORY[0x1E69DB650];
    [v11 setObject:v14 forKeyedSubscript:*MEMORY[0x1E69DB650]];

    [v10 addAttributes:v11 range:{0, objc_msgSend(v10, "length")}];
    v16 = [v11 mutableCopy];
    v17 = [v6 locationTextColor];
    v18 = [v17 cuik_colorWithAlphaScaled:{CUIKOccurrenceLeadingIconAlphaScale(objc_msgSend(v6, "userInterfaceStyle"))}];
    [v16 setObject:v18 forKeyedSubscript:v15];

    v19 = [v16 objectForKeyedSubscript:v13];
    [a1 _widthForWidestPossibleIconIncludingTrailingPadding:v19 locationImageName:v7];
    v21 = v20;

    v22 = [a1 _attributedStringWithSystemImageName:v7 symbolAttributes:v16 widthForSymbol:v10 baseString:v21];
    v23 = [v11 objectForKeyedSubscript:*MEMORY[0x1E69DB688]];
    [a1 _indentWrappingLinesAndLinesOtherThanTheFirstWithBaseParagraphStyle:v23 string:v22 indentAmount:v21];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (double)_widthForWidestPossibleIconIncludingTrailingPadding:(id)a3 locationImageName:(id)a4
{
  v5 = MEMORY[0x1E69DCAD8];
  v6 = a4;
  v7 = [v5 cuik_configurationWithFont:a3 scale:1];
  v8 = [MEMORY[0x1E69DCAB8] cuik_privateSystemImageNamed:v6 withConfiguration:v7];

  [v8 size];
  v10 = v9;
  +[CUIKORImageUtils iconToTextPadding];
  v12 = v10 + v11;

  return v12;
}

+ (id)_attributedStringWithSystemImageName:(id)a3 symbolAttributes:(id)a4 widthForSymbol:(double)a5 baseString:(id)a6
{
  v9 = MEMORY[0x1E69DCAD8];
  v10 = *MEMORY[0x1E69DB648];
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = [v12 objectForKeyedSubscript:v10];
  v30 = [v9 cuik_configurationWithFont:v14 scale:1];

  v15 = [MEMORY[0x1E69DCAB8] cuik_privateSystemImageNamed:v13 withConfiguration:v30];

  v16 = [MEMORY[0x1E69DB7F0] cuik_textAttachmentWithImage:v15];
  [v15 size];
  v18 = v17;
  v19 = [v12 objectForKeyedSubscript:v10];
  [v19 capHeight];
  *&v20 = v20 - v18;
  v21 = (roundf(*&v20) * 0.5);
  [v15 size];
  [v16 setBounds:{0.0, v21, v22, v18}];
  v23 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v16];
  v24 = [MEMORY[0x1E69DB7F0] cuik_textAttachmentWithImage:0];
  [v15 size];
  [v24 setBounds:{0.0, 0.0, a5 - v25, 0.0}];
  v26 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v24];
  v27 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"⁠"];
  v28 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v23];
  [v28 appendAttributedString:v27];
  [v28 appendAttributedString:v26];
  [v28 appendAttributedString:v27];
  [v28 addAttributes:v12 range:{0, objc_msgSend(v28, "length")}];

  [v28 appendAttributedString:v11];

  return v28;
}

+ (void)_indentWrappingLinesAndLinesOtherThanTheFirstWithBaseParagraphStyle:(id)a3 string:(id)a4 indentAmount:(double)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 mutableCopy];
  [v9 setHeadIndent:a5];
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 1;
  v10 = [v8 string];
  v11 = [v8 string];
  v12 = [v11 length];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __113__CUIKORStringGenerator__indentWrappingLinesAndLinesOtherThanTheFirstWithBaseParagraphStyle_string_indentAmount___block_invoke;
  v15[3] = &unk_1E839A848;
  v18 = v20;
  v13 = v9;
  v16 = v13;
  v19 = a5;
  v14 = v8;
  v17 = v14;
  [v10 enumerateSubstringsInRange:0 options:v12 usingBlock:{0, v15}];

  _Block_object_dispose(v20, 8);
}

void __113__CUIKORStringGenerator__indentWrappingLinesAndLinesOtherThanTheFirstWithBaseParagraphStyle_string_indentAmount___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0.0;
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v7 = *(a1 + 56);
  }

  [*(a1 + 32) setFirstLineHeadIndent:v7];
  v8 = *MEMORY[0x1E69DB688];
  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) copy];
  [v9 addAttribute:v8 value:v10 range:{a3, a4}];

  *(*(*(a1 + 48) + 8) + 24) = 0;
}

+ (id)_defaultAttributesForState:(id)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 title];
  v6 = v5;
  v7 = &stru_1F4AA8958;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [(__CFString *)v8 componentsSeparatedByString:@" "];

  LODWORD(v8) = [v9 count] < 2;
  v10 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v10 setParagraphSpacing:3.0];
  LODWORD(v11) = 1045220557;
  [v10 setHyphenationFactor:v11];
  [a1 _defaultMinimumLineHeightForState:v4];
  [v10 setMinimumLineHeight:?];
  [v10 setLineBreakMode:4 * v8];
  v12 = *MEMORY[0x1E69DB660];
  v17[0] = *MEMORY[0x1E69DB688];
  v17[1] = v12;
  v18[0] = v10;
  v18[1] = &unk_1F4ABED50;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v14 = [v13 mutableCopy];

  if (([v4 isCancelled] & 1) != 0 || objc_msgSend(v4, "isDeclined"))
  {
    [v14 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69DB6B8]];
    v15 = [v4 strikethroughColor];
    [v14 setObject:v15 forKeyedSubscript:*MEMORY[0x1E69DB6B0]];
  }

  return v14;
}

+ (double)_defaultMinimumLineHeightForState:(id)a3
{
  v3 = [a3 usesSmallText];
  result = 9.0;
  if (v3)
  {
    return 8.0;
  }

  return result;
}

+ (double)_minimumPrimaryFontLineHeightUsingSmallText:(BOOL)a3 sizeClass:(int64_t)a4
{
  v9 = a3;
  CUIKMultiwindowAssert(a4 != 0, @"Unspecified size class", a3, a4, v4, v5, v6, v7, v15);
  v10 = +[CUIKSemiConstantCache sharedInstance];
  v11 = v10;
  if (v9)
  {
    if (a4 == 1)
    {
      [v10 dayOccurrenceMinimumCachedLineHeightSmallCompact];
    }

    else
    {
      [v10 dayOccurrenceMinimumCachedLineHeightSmallRegular];
    }
  }

  else if (a4 == 1)
  {
    [v10 dayOccurrenceMinimumCachedLineHeightCompact];
  }

  else
  {
    [v10 dayOccurrenceMinimumCachedLineHeightRegular];
  }

  v13 = v12;

  return v13;
}

@end