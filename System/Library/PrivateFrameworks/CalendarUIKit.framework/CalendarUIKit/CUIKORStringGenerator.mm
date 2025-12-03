@interface CUIKORStringGenerator
+ (double)_defaultMinimumLineHeightForState:(id)state;
+ (double)_minimumPrimaryFontLineHeightUsingSmallText:(BOOL)text sizeClass:(int64_t)class;
+ (double)_naturalHeightForPrimaryTextUsingSmallText:(BOOL)text sizeClass:(int64_t)class;
+ (double)_widthForWidestPossibleIconIncludingTrailingPadding:(id)padding locationImageName:(id)name;
+ (double)attributedStringMinimumLineHeightUsingSmallText:(BOOL)text sizeClass:(int64_t)class;
+ (double)minNaturalTextHeightForEvent:(id)event usingSmallText:(BOOL)text sizeClass:(int64_t)class;
+ (double)minimumNaturalHeightForPrimaryTextUsingSmallText:(BOOL)text sizeClass:(int64_t)class;
+ (double)naturalHeightForPrimaryTextUsingSmallText:(BOOL)text sizeClass:(int64_t)class;
+ (id)_attributedLocationWithState:(id)state locationImageName:(id)name;
+ (id)_attributedStringWithSystemImageName:(id)name symbolAttributes:(id)attributes widthForSymbol:(double)symbol baseString:(id)string;
+ (id)_attributedTimeWithState:(id)state options:(unint64_t)options locationImageName:(id)name;
+ (id)_attributedTitleWithState:(id)state;
+ (id)_defaultAttributesForState:(id)state;
+ (void)_indentWrappingLinesAndLinesOtherThanTheFirstWithBaseParagraphStyle:(id)style string:(id)string indentAmount:(double)amount;
- (id)generateContentStringsWithState:(id)state options:(unint64_t)options;
- (id)generateTrailingStringWithState:(id)state;
- (id)generateTravelTimeStringWithState:(id)state;
@end

@implementation CUIKORStringGenerator

+ (double)attributedStringMinimumLineHeightUsingSmallText:(BOOL)text sizeClass:(int64_t)class
{
  if (text)
  {
    v4 = 8.0;
  }

  else
  {
    v4 = 9.0;
  }

  [self _minimumPrimaryFontLineHeightUsingSmallText:? sizeClass:?];
  result = CUIKCeilToScreenScale(v5);
  if (v4 >= result)
  {
    return v4;
  }

  return result;
}

+ (double)minimumNaturalHeightForPrimaryTextUsingSmallText:(BOOL)text sizeClass:(int64_t)class
{
  textCopy = text;
  [self _minimumPrimaryFontLineHeightUsingSmallText:? sizeClass:?];
  v8 = v7;
  [self attributedStringMinimumLineHeightUsingSmallText:textCopy sizeClass:class];
  if (v8 >= result)
  {
    return v8;
  }

  return result;
}

+ (double)minNaturalTextHeightForEvent:(id)event usingSmallText:(BOOL)text sizeClass:(int64_t)class
{
  textCopy = text;
  eventCopy = event;
  [self minimumNaturalHeightForPrimaryTextUsingSmallText:textCopy sizeClass:class];
  v10 = v9;
  v11 = +[CUIKSemiConstantCache sharedInstance];
  dayOccurrenceUncompressedSecondaryTextFont = [v11 dayOccurrenceUncompressedSecondaryTextFont];
  cuik_lineHeight = [(UIFont *)dayOccurrenceUncompressedSecondaryTextFont cuik_lineHeight];

  v15 = v10 + cuik_lineHeight;
  location = [eventCopy location];

  result = cuik_lineHeight + v15;
  if (!location)
  {
    return v15;
  }

  return result;
}

+ (double)naturalHeightForPrimaryTextUsingSmallText:(BOOL)text sizeClass:(int64_t)class
{
  [self _naturalHeightForPrimaryTextUsingSmallText:text sizeClass:class];

  return CUIKCeilToScreenScale(v4);
}

+ (double)_naturalHeightForPrimaryTextUsingSmallText:(BOOL)text sizeClass:(int64_t)class
{
  textCopy = text;
  CUIKMultiwindowAssert(class != 0, @"Unspecified size class", text, class, v4, v5, v6, v7, v15);
  v10 = +[CUIKSemiConstantCache sharedInstance];
  v11 = v10;
  if (textCopy)
  {
    if (class == 1)
    {
      [v10 dayReminderIntegrationCachedLineHeightSmallCompact];
    }

    else
    {
      [v10 dayReminderIntegrationCachedLineHeightSmallRegular];
    }
  }

  else if (class == 1)
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

- (id)generateContentStringsWithState:(id)state options:(unint64_t)options
{
  stateCopy = state;
  locationImageName = [stateCopy locationImageName];
  v8 = [objc_opt_class() _attributedTitleWithState:stateCopy];
  v9 = [v8 mutableCopy];
  [stateCopy textSpace];
  v11 = v10;
  isAllDay = [stateCopy isAllDay];
  primaryTextFont = [stateCopy primaryTextFont];
  cuik_lineHeight = [(UIFont *)primaryTextFont cuik_lineHeight];

  secondaryTextFont = [stateCopy secondaryTextFont];
  cuik_lineHeight2 = [(UIFont *)secondaryTextFont cuik_lineHeight];

  v19 = objc_alloc_init(CUIKORContentStrings);
  [(CUIKORContentStrings *)v19 setTitleString:v8];
  v20 = [(CUIKORStringGenerator *)self generateTrailingStringWithState:stateCopy];
  [(CUIKORContentStrings *)v19 setTrailingString:v20];

  if ((isAllDay & 1) == 0)
  {
    if (v11 >= cuik_lineHeight + cuik_lineHeight2)
    {
      v23 = [objc_opt_class() _attributedTimeWithState:stateCopy options:options locationImageName:locationImageName];
      v30 = [objc_opt_class() _attributedLocationWithState:stateCopy locationImageName:locationImageName];
      [(CUIKORContentStrings *)v19 setTimeString:v23];
      [(CUIKORContentStrings *)v19 setLocationString:v30];
      v35 = [v30 length];
      v36 = [v23 length];
      if (v35)
      {
        v37 = [v30 attributesAtIndex:objc_msgSend(v30 effectiveRange:{"length") - 1, 0}];
        v38 = locationImageName;
        v39 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n" attributes:v37];
        [v9 appendAttributedString:v39];

        locationImageName = v38;
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
      location = [stateCopy location];
      v22 = [location length];

      if (!v22)
      {
        goto LABEL_11;
      }

      v23 = [objc_opt_class() _defaultAttributesForState:stateCopy];
      secondaryTextFont2 = [stateCopy secondaryTextFont];
      v25 = *MEMORY[0x1E69DB648];
      [v23 setObject:secondaryTextFont2 forKeyedSubscript:*MEMORY[0x1E69DB648]];

      locationTextColor = [stateCopy locationTextColor];
      v27 = [locationTextColor cuik_colorWithAlphaScaled:{CUIKOccurrenceLeadingIconAlphaScale(objc_msgSend(stateCopy, "userInterfaceStyle"))}];
      [v23 setObject:v27 forKeyedSubscript:*MEMORY[0x1E69DB650]];

      v28 = MEMORY[0x1E69DCAD8];
      v29 = [v23 objectForKeyedSubscript:v25];
      v30 = [v28 cuik_configurationWithFont:v29 scale:1];

      v31 = [MEMORY[0x1E69DCAB8] cuik_privateSystemImageNamed:locationImageName withConfiguration:v30];
      v32 = [MEMORY[0x1E69DB7F0] cuik_textAttachmentWithImage:v31];
      [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v32 attributes:v23];
      v33 = v42 = locationImageName;
      v34 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" " attributes:v23];
      [v9 appendAttributedString:v34];

      [v9 appendAttributedString:v33];
      locationImageName = v42;
    }

LABEL_10:
  }

LABEL_11:
  [(CUIKORContentStrings *)v19 setCombinedString:v9];

  return v19;
}

- (id)generateTravelTimeStringWithState:(id)state
{
  stateCopy = state;
  [stateCopy travelTime];
  v5 = CUIKDisplayStringTravelTimeAndDuration(v4);
  if ([v5 length])
  {
    v6 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v5];
    v7 = [objc_opt_class() _defaultAttributesForState:stateCopy];
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

- (id)generateTrailingStringWithState:(id)state
{
  stateCopy = state;
  moreText = [stateCopy moreText];
  if (moreText)
  {
    v5 = +[CUIKInterface shared];
    v6 = [v5 layoutDirectionOrOverride] == 0;

    v7 = [CUIKORStringGenerator _defaultAttributesForState:stateCopy];
    primaryTextFont = [stateCopy primaryTextFont];
    [v7 setObject:primaryTextFont forKeyedSubscript:*MEMORY[0x1E69DB648]];

    moreTextColor = [stateCopy moreTextColor];
    [v7 setObject:moreTextColor forKeyedSubscript:*MEMORY[0x1E69DB650]];

    defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
    v11 = [defaultParagraphStyle mutableCopy];

    [v11 setAlignment:2 * v6];
    [v7 setObject:v11 forKeyedSubscript:*MEMORY[0x1E69DB688]];
    v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:moreText attributes:v7];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_attributedTitleWithState:(id)state
{
  stateCopy = state;
  title = [stateCopy title];
  v6 = title;
  v7 = &stru_1F4AA8958;
  if (title)
  {
    v7 = title;
  }

  v8 = v7;

  v9 = [self _defaultAttributesForState:stateCopy];
  primaryTextFont = [stateCopy primaryTextFont];
  v11 = *MEMORY[0x1E69DB648];
  [v9 setObject:primaryTextFont forKeyedSubscript:*MEMORY[0x1E69DB648]];

  titleTextColor = [stateCopy titleTextColor];
  [v9 setObject:titleTextColor forKeyedSubscript:*MEMORY[0x1E69DB650]];

  v13 = objc_alloc_init(MEMORY[0x1E696AD40]);
  if ([stateCopy needsReply] && (objc_msgSend(stateCopy, "isCancelled") & 1) == 0)
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

+ (id)_attributedTimeWithState:(id)state options:(unint64_t)options locationImageName:(id)name
{
  stateCopy = state;
  nameCopy = name;
  if (_bitmaskContainsOption() & 1) != 0 || ([stateCopy hidesTime])
  {
    v8 = 0;
    goto LABEL_19;
  }

  secondaryTextFont = [stateCopy secondaryTextFont];
  v9 = CUIKCalendar();
  occurrence = [stateCopy occurrence];
  startDate = [occurrence startDate];
  occurrence2 = [stateCopy occurrence];
  endDate = [occurrence2 endDate];
  v14 = [v9 cal_isMultidayEventForUIWithStartDate:startDate endDate:endDate];

  occurrence3 = [stateCopy occurrence];
  effectiveTimeZone = [occurrence3 effectiveTimeZone];
  occurrence4 = [stateCopy occurrence];
  startDate2 = [occurrence4 startDate];
  v19 = CUIKShouldShowTimezoneClarification(effectiveTimeZone, startDate2);

  v98 = v9;
  v95 = v19;
  if (v14)
  {
    v99 = 0;
    v20 = secondaryTextFont;
  }

  else
  {
    occurrence5 = [stateCopy occurrence];
    endTimeZone = [occurrence5 endTimeZone];
    occurrence6 = [stateCopy occurrence];
    endDate2 = [occurrence6 endDate];
    if (CUIKShouldShowTimezoneClarification(endTimeZone, endDate2))
    {
      occurrence7 = [stateCopy occurrence];
      effectiveTimeZone2 = [occurrence7 effectiveTimeZone];
      [stateCopy occurrence];
      v27 = v93 = self;
      endTimeZone2 = [v27 endTimeZone];
      v29 = CalEqualObjects() & v19 ^ 1;

      v30 = v29;
      self = v93;
      v19 = v95;

      v9 = v98;
    }

    else
    {
      v30 = 0;
    }

    v20 = secondaryTextFont;

    v99 = v30;
    if (!v19 || (v30 & 1) != 0)
    {
      occurrence8 = [stateCopy occurrence];
      startDate3 = [occurrence8 startDate];
      occurrence9 = [stateCopy occurrence];
      endDate3 = [occurrence9 endDate];
      v36 = [CUIKTimeIntervalTextProvider timeIntervalAttributedTextWithStartDate:startDate3 endDate:endDate3 calendar:v9 font:secondaryTextFont];
      v34 = [v36 mutableCopy];

      goto LABEL_13;
    }
  }

  occurrence8 = [stateCopy occurrence];
  startDate3 = [occurrence8 startDate];
  occurrence9 = [CUIKTimeTextProvider timeAttributedTextWithDate:startDate3 calendar:v9 font:v20 options:0];
  v34 = [occurrence9 mutableCopy];
LABEL_13:

  v37 = [self _defaultAttributesForState:stateCopy];
  timeTextColor = [stateCopy timeTextColor];
  v39 = *MEMORY[0x1E69DB650];
  [v37 setObject:timeTextColor forKeyedSubscript:*MEMORY[0x1E69DB650]];

  [v34 addAttributes:v37 range:{0, objc_msgSend(v34, "length")}];
  v40 = [v37 mutableCopy];
  timeTextColor2 = [stateCopy timeTextColor];
  v42 = [timeTextColor2 cuik_colorWithAlphaScaled:{CUIKOccurrenceLeadingIconAlphaScale(objc_msgSend(stateCopy, "userInterfaceStyle"))}];
  [v40 setObject:v42 forKeyedSubscript:v39];

  v43 = *MEMORY[0x1E69DB648];
  [v40 setObject:v20 forKeyedSubscript:*MEMORY[0x1E69DB648]];
  [self _widthForWidestPossibleIconIncludingTrailingPadding:v20 locationImageName:nameCopy];
  v45 = v44;
  v8 = [self _attributedStringWithSystemImageName:@"clock.time.1009" symbolAttributes:v40 widthForSymbol:v34 baseString:?];
  if ((v95 | v99))
  {
    v90 = v40;
    v91 = v34;
    selfCopy = self;
    occurrence10 = [stateCopy occurrence];
    effectiveTimeZone3 = [occurrence10 effectiveTimeZone];

    v96 = [v98 copy];
    [v96 setTimeZone:effectiveTimeZone3];
    v48 = objc_alloc(MEMORY[0x1E696AAB0]);
    occurrence11 = [stateCopy occurrence];
    startDate4 = [occurrence11 startDate];
    v89 = effectiveTimeZone3;
    v51 = [effectiveTimeZone3 abbreviationForDate:startDate4];
    v92 = [v48 initWithString:v51];

    v52 = [v37 mutableCopy];
    [v52 setObject:v20 forKeyedSubscript:v43];
    [stateCopy occurrence];
    if (v99)
      v53 = {;
      endTimeZone3 = [v53 endTimeZone];

      v87 = endTimeZone3;
      v88 = [v98 copy];
      v55 = endTimeZone3;
      [v88 setTimeZone:endTimeZone3];
      v56 = objc_alloc(MEMORY[0x1E696AAB0]);
      occurrence12 = [stateCopy occurrence];
      endDate4 = [occurrence12 endDate];
      v59 = [v55 abbreviationForDate:endDate4];
      v60 = [v56 initWithString:v59];

      v100 = v52;
      occurrence13 = [stateCopy occurrence];
      startDate5 = [occurrence13 startDate];
      v63 = [CUIKTimeTextProvider timeAttributedTextWithDate:startDate5 calendar:v96 font:v20 options:0];

      occurrence14 = [stateCopy occurrence];
      endDate5 = [occurrence14 endDate];
      v86 = [CUIKTimeTextProvider timeAttributedTextWithDate:endDate5 calendar:v88 font:v20 options:0];

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
      startDate6 = [v74 startDate];
      v73 = [CUIKTimeTextProvider timeAttributedTextWithDate:startDate6 calendar:v96 font:v20 options:0];

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
    self = selfCopy;
    v20 = secondaryTextFont;
    v40 = v90;
    v34 = v91;
  }

  v84 = [v37 objectForKeyedSubscript:*MEMORY[0x1E69DB688]];
  [self _indentWrappingLinesAndLinesOtherThanTheFirstWithBaseParagraphStyle:v84 string:v8 indentAmount:v45];

LABEL_19:

  return v8;
}

+ (id)_attributedLocationWithState:(id)state locationImageName:(id)name
{
  stateCopy = state;
  nameCopy = name;
  location = [stateCopy location];
  if (location)
  {
    location2 = [stateCopy location];
    v10 = [location2 mutableCopy];
  }

  else
  {
    v10 = 0;
  }

  if ([v10 length])
  {
    v11 = [self _defaultAttributesForState:stateCopy];
    secondaryTextFont = [stateCopy secondaryTextFont];
    v13 = *MEMORY[0x1E69DB648];
    [v11 setObject:secondaryTextFont forKeyedSubscript:*MEMORY[0x1E69DB648]];

    locationTextColor = [stateCopy locationTextColor];
    v15 = *MEMORY[0x1E69DB650];
    [v11 setObject:locationTextColor forKeyedSubscript:*MEMORY[0x1E69DB650]];

    [v10 addAttributes:v11 range:{0, objc_msgSend(v10, "length")}];
    v16 = [v11 mutableCopy];
    locationTextColor2 = [stateCopy locationTextColor];
    v18 = [locationTextColor2 cuik_colorWithAlphaScaled:{CUIKOccurrenceLeadingIconAlphaScale(objc_msgSend(stateCopy, "userInterfaceStyle"))}];
    [v16 setObject:v18 forKeyedSubscript:v15];

    v19 = [v16 objectForKeyedSubscript:v13];
    [self _widthForWidestPossibleIconIncludingTrailingPadding:v19 locationImageName:nameCopy];
    v21 = v20;

    v22 = [self _attributedStringWithSystemImageName:nameCopy symbolAttributes:v16 widthForSymbol:v10 baseString:v21];
    v23 = [v11 objectForKeyedSubscript:*MEMORY[0x1E69DB688]];
    [self _indentWrappingLinesAndLinesOtherThanTheFirstWithBaseParagraphStyle:v23 string:v22 indentAmount:v21];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (double)_widthForWidestPossibleIconIncludingTrailingPadding:(id)padding locationImageName:(id)name
{
  v5 = MEMORY[0x1E69DCAD8];
  nameCopy = name;
  v7 = [v5 cuik_configurationWithFont:padding scale:1];
  v8 = [MEMORY[0x1E69DCAB8] cuik_privateSystemImageNamed:nameCopy withConfiguration:v7];

  [v8 size];
  v10 = v9;
  +[CUIKORImageUtils iconToTextPadding];
  v12 = v10 + v11;

  return v12;
}

+ (id)_attributedStringWithSystemImageName:(id)name symbolAttributes:(id)attributes widthForSymbol:(double)symbol baseString:(id)string
{
  v9 = MEMORY[0x1E69DCAD8];
  v10 = *MEMORY[0x1E69DB648];
  stringCopy = string;
  attributesCopy = attributes;
  nameCopy = name;
  v14 = [attributesCopy objectForKeyedSubscript:v10];
  v30 = [v9 cuik_configurationWithFont:v14 scale:1];

  v15 = [MEMORY[0x1E69DCAB8] cuik_privateSystemImageNamed:nameCopy withConfiguration:v30];

  v16 = [MEMORY[0x1E69DB7F0] cuik_textAttachmentWithImage:v15];
  [v15 size];
  v18 = v17;
  v19 = [attributesCopy objectForKeyedSubscript:v10];
  [v19 capHeight];
  *&v20 = v20 - v18;
  v21 = (roundf(*&v20) * 0.5);
  [v15 size];
  [v16 setBounds:{0.0, v21, v22, v18}];
  v23 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v16];
  v24 = [MEMORY[0x1E69DB7F0] cuik_textAttachmentWithImage:0];
  [v15 size];
  [v24 setBounds:{0.0, 0.0, symbol - v25, 0.0}];
  v26 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v24];
  v27 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"⁠"];
  v28 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v23];
  [v28 appendAttributedString:v27];
  [v28 appendAttributedString:v26];
  [v28 appendAttributedString:v27];
  [v28 addAttributes:attributesCopy range:{0, objc_msgSend(v28, "length")}];

  [v28 appendAttributedString:stringCopy];

  return v28;
}

+ (void)_indentWrappingLinesAndLinesOtherThanTheFirstWithBaseParagraphStyle:(id)style string:(id)string indentAmount:(double)amount
{
  styleCopy = style;
  stringCopy = string;
  v9 = [styleCopy mutableCopy];
  [v9 setHeadIndent:amount];
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 1;
  string = [stringCopy string];
  string2 = [stringCopy string];
  v12 = [string2 length];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __113__CUIKORStringGenerator__indentWrappingLinesAndLinesOtherThanTheFirstWithBaseParagraphStyle_string_indentAmount___block_invoke;
  v15[3] = &unk_1E839A848;
  v18 = v20;
  v13 = v9;
  v16 = v13;
  amountCopy = amount;
  v14 = stringCopy;
  v17 = v14;
  [string enumerateSubstringsInRange:0 options:v12 usingBlock:{0, v15}];

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

+ (id)_defaultAttributesForState:(id)state
{
  v18[2] = *MEMORY[0x1E69E9840];
  stateCopy = state;
  title = [stateCopy title];
  v6 = title;
  v7 = &stru_1F4AA8958;
  if (title)
  {
    v7 = title;
  }

  v8 = v7;

  v9 = [(__CFString *)v8 componentsSeparatedByString:@" "];

  LODWORD(v8) = [v9 count] < 2;
  v10 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v10 setParagraphSpacing:3.0];
  LODWORD(v11) = 1045220557;
  [v10 setHyphenationFactor:v11];
  [self _defaultMinimumLineHeightForState:stateCopy];
  [v10 setMinimumLineHeight:?];
  [v10 setLineBreakMode:4 * v8];
  v12 = *MEMORY[0x1E69DB660];
  v17[0] = *MEMORY[0x1E69DB688];
  v17[1] = v12;
  v18[0] = v10;
  v18[1] = &unk_1F4ABED50;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v14 = [v13 mutableCopy];

  if (([stateCopy isCancelled] & 1) != 0 || objc_msgSend(stateCopy, "isDeclined"))
  {
    [v14 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69DB6B8]];
    strikethroughColor = [stateCopy strikethroughColor];
    [v14 setObject:strikethroughColor forKeyedSubscript:*MEMORY[0x1E69DB6B0]];
  }

  return v14;
}

+ (double)_defaultMinimumLineHeightForState:(id)state
{
  usesSmallText = [state usesSmallText];
  result = 9.0;
  if (usesSmallText)
  {
    return 8.0;
  }

  return result;
}

+ (double)_minimumPrimaryFontLineHeightUsingSmallText:(BOOL)text sizeClass:(int64_t)class
{
  textCopy = text;
  CUIKMultiwindowAssert(class != 0, @"Unspecified size class", text, class, v4, v5, v6, v7, v15);
  v10 = +[CUIKSemiConstantCache sharedInstance];
  v11 = v10;
  if (textCopy)
  {
    if (class == 1)
    {
      [v10 dayOccurrenceMinimumCachedLineHeightSmallCompact];
    }

    else
    {
      [v10 dayOccurrenceMinimumCachedLineHeightSmallRegular];
    }
  }

  else if (class == 1)
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