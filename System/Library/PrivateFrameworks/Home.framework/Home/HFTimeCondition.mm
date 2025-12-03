@interface HFTimeCondition
+ (id)_formattedStringForDateComponentsCondition:(id)condition style:(unint64_t)style formattingContext:(int64_t)context;
+ (id)_formattedStringForOffset:(id)offset;
+ (id)_formattedStringForSunriseSunsetCondition:(id)condition style:(unint64_t)style formattingContext:(int64_t)context;
+ (id)_formattedStringForTimeCondition:(id)condition style:(unint64_t)style formattingContext:(int64_t)context;
+ (id)_formattedStringForTimeRangeCondition:(id)condition style:(unint64_t)style formattingContext:(int64_t)context;
+ (id)_nameForConditionType:(unint64_t)type formattingStyle:(int64_t)style formattingContext:(int64_t)context;
+ (id)defaultConditionForType:(unint64_t)type;
+ (id)hf_naturalLanguageSummaryForTypeOnlyWithOptions:(id)options;
- (id)hf_naturalLanguageSummaryWithOptions:(id)options;
@end

@implementation HFTimeCondition

- (id)hf_naturalLanguageSummaryWithOptions:(id)options
{
  optionsCopy = options;
  if ([optionsCopy type] == 3)
  {
    v5 = 0;
    goto LABEL_3;
  }

  if ([optionsCopy type] == 2)
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v10 = [objc_opt_class() defaultConditionForType:{objc_msgSend(optionsCopy, "type")}];
    v9 = [(HFCondition *)self isEqual:v10];
    v8 = [optionsCopy formattingStyle] != 3 || v9;
  }

  timeContext = [optionsCopy timeContext];
  if (!timeContext)
  {
    if (!v8)
    {
      v5 = [optionsCopy formattingStyle] != 3;
LABEL_3:
      v6 = [objc_opt_class() _formattedStringForTimeCondition:self style:v5 formattingContext:{objc_msgSend(optionsCopy, "formattingContext")}];
      v7 = 0;
      if (v6)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (timeContext != 1 || v9)
  {
LABEL_13:
    v7 = 0;
    goto LABEL_14;
  }

  v7 = [objc_opt_class() _formattedStringForTimeCondition:self style:1 formattingContext:{objc_msgSend(optionsCopy, "formattingContext")}];
LABEL_14:
  v6 = [objc_opt_class() _nameForConditionType:objc_msgSend(optionsCopy formattingStyle:"type") formattingContext:{objc_msgSend(optionsCopy, "formattingStyle"), objc_msgSend(optionsCopy, "formattingContext")}];
LABEL_15:
  if ([optionsCopy formattingContext] != 5)
  {
    hf_stringByCapitalizingFirstWord = [v6 hf_stringByCapitalizingFirstWord];

    hf_stringByCapitalizingFirstWord2 = [v7 hf_stringByCapitalizingFirstWord];

    v7 = hf_stringByCapitalizingFirstWord2;
    v6 = hf_stringByCapitalizingFirstWord;
  }

  v14 = [[HFConditionUISummary alloc] initWithCondition:self title:v6 description:v7];

  return v14;
}

+ (id)hf_naturalLanguageSummaryForTypeOnlyWithOptions:(id)options
{
  optionsCopy = options;
  v4 = [objc_opt_class() _nameForConditionType:objc_msgSend(optionsCopy formattingStyle:"type") formattingContext:{objc_msgSend(optionsCopy, "formattingStyle"), objc_msgSend(optionsCopy, "formattingContext")}];
  formattingContext = [optionsCopy formattingContext];

  if (formattingContext != 5)
  {
    hf_stringByCapitalizingFirstWord = [v4 hf_stringByCapitalizingFirstWord];

    v4 = hf_stringByCapitalizingFirstWord;
  }

  v7 = [[HFConditionUISummary alloc] initWithCondition:0 title:v4 description:0];

  return v7;
}

+ (id)_nameForConditionType:(unint64_t)type formattingStyle:(int64_t)style formattingContext:(int64_t)context
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __92__HFTimeCondition_NaturalLanguage___nameForConditionType_formattingStyle_formattingContext___block_invoke;
  v11[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v11[4] = type;
  v6 = __92__HFTimeCondition_NaturalLanguage___nameForConditionType_formattingStyle_formattingContext___block_invoke(v11);
  v7 = v6;
  if (style != 3)
  {
    v8 = [v6 stringByAppendingString:@"_Short"];

    v7 = v8;
  }

  v9 = _HFLocalizedStringWithDefaultValue(v7, v7, 1);

  return v9;
}

__CFString *__92__HFTimeCondition_NaturalLanguage___nameForConditionType_formattingStyle_formattingContext___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 < 4)
  {
    return off_277DF47D0[v1];
  }

  NSLog(&cfstr_UnknownTypeD.isa, v1);
  return 0;
}

+ (id)_formattedStringForTimeRangeCondition:(id)condition style:(unint64_t)style formattingContext:(int64_t)context
{
  conditionCopy = condition;
  startCondition = [conditionCopy startCondition];
  v9 = [self _formattedStringForTimeCondition:startCondition style:1 formattingContext:5];

  endCondition = [conditionCopy endCondition];

  v11 = [self _formattedStringForTimeCondition:endCondition style:1 formattingContext:5];

  v18 = @"HFConditionDescriptionTimeRangeFormat";
  if (style != 1)
  {
    v18 = 0;
  }

  if (style)
  {
    v19 = v18;
  }

  else
  {
    v19 = @"HFConditionNameTimeRangeFormat";
  }

  v20 = HFLocalizedStringWithFormat(v19, @"%1$@ %2$@", v12, v13, v14, v15, v16, v17, v9);

  return v20;
}

__CFString *__98__HFTimeCondition_NaturalLanguage___formattedStringForTimeRangeCondition_style_formattingContext___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = @"HFConditionDescriptionTimeRangeFormat";
  if (v1 != 1)
  {
    v2 = 0;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return @"HFConditionNameTimeRangeFormat";
  }
}

+ (id)_formattedStringForTimeCondition:(id)condition style:(unint64_t)style formattingContext:(int64_t)context
{
  conditionCopy = condition;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [self _formattedStringForTimeRangeCondition:conditionCopy style:style formattingContext:context];
LABEL_7:
    v10 = v9;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [self _formattedStringForDateComponentsCondition:conditionCopy style:style formattingContext:context];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [self _formattedStringForSunriseSunsetCondition:conditionCopy style:style formattingContext:context];
    goto LABEL_7;
  }

  NSLog(&cfstr_UnknownTimeCon.isa, conditionCopy);
  v10 = 0;
LABEL_8:

  return v10;
}

+ (id)_formattedStringForDateComponentsCondition:(id)condition style:(unint64_t)style formattingContext:(int64_t)context
{
  conditionCopy = condition;
  dateComponents = [conditionCopy dateComponents];

  if (dateComponents)
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    dateComponents2 = [conditionCopy dateComponents];
    v10 = [currentCalendar dateFromComponents:dateComponents2];

    v11 = [MEMORY[0x277CCA968] localizedStringFromDate:v10 dateStyle:0 timeStyle:1];
    v12 = v11;
    if (style == 1)
    {
      v13 = v11;
    }

    else
    {
      v24 = MEMORY[0x277D85DD0];
      v25 = conditionCopy;
      comparisonType = [v25 comparisonType];
      if (comparisonType > 2)
      {
        v15 = 0;
      }

      else
      {
        v15 = off_277DF47F0[comparisonType];
      }

      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"HFConditionNameDate%@", v15, v24, 3221225472, __103__HFTimeCondition_NaturalLanguage___formattedStringForDateComponentsCondition_style_formattingContext___block_invoke, &unk_277DF3568];
      v13 = HFLocalizedStringWithFormat(v16, @"%@", v17, v18, v19, v20, v21, v22, v12);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

__CFString *__103__HFTimeCondition_NaturalLanguage___formattedStringForDateComponentsCondition_style_formattingContext___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) comparisonType];
  if (v1 > 2)
  {
    return 0;
  }

  else
  {
    return off_277DF47F0[v1];
  }
}

+ (id)_formattedStringForSunriseSunsetCondition:(id)condition style:(unint64_t)style formattingContext:(int64_t)context
{
  conditionCopy = condition;
  v38[1] = MEMORY[0x277D85DD0];
  v38[2] = 3221225472;
  v38[3] = __102__HFTimeCondition_NaturalLanguage___formattedStringForSunriseSunsetCondition_style_formattingContext___block_invoke;
  v38[4] = &__block_descriptor_40_e15___NSString_8__0l;
  v38[5] = style;
  v9 = @"HFConditionDescription";
  if (style != 1)
  {
    v9 = 0;
  }

  if (!style)
  {
    v9 = @"HFConditionName";
  }

  v10 = MEMORY[0x277CCAB68];
  v11 = v9;
  v12 = [[v10 alloc] initWithString:v11];

  if (style != 1)
  {
    comparisonType = [conditionCopy comparisonType];
    if (comparisonType)
    {
      if (comparisonType != 2)
      {
        goto LABEL_29;
      }

      v14 = @"After";
    }

    else
    {
      v14 = @"Before";
    }

    [v12 appendString:v14];
  }

  significantEvent = [conditionCopy significantEvent];
  v16 = [significantEvent isEqualToString:*MEMORY[0x277CD0FA8]];

  if (v16)
  {
    v17 = @"Sunrise";
    goto LABEL_15;
  }

  significantEvent2 = [conditionCopy significantEvent];
  v19 = [significantEvent2 isEqualToString:*MEMORY[0x277CD0FB0]];

  if (!v19)
  {
LABEL_29:
    v34 = 0;
    goto LABEL_30;
  }

  v17 = @"Sunset";
LABEL_15:
  [v12 appendString:v17];
  offset = [conditionCopy offset];
  if (!offset || (v21 = offset, [conditionCopy offset], v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "hf_timeInterval"), v24 = v23, v22, v21, v24 == 0.0))
  {
    v31 = 0;
  }

  else
  {
    offset2 = [conditionCopy offset];
    [offset2 hf_timeInterval];
    v27 = v26;

    offset3 = [conditionCopy offset];
    v29 = offset3;
    if (style == 1)
    {
      hf_absoluteValue = [offset3 hf_absoluteValue];

      v29 = hf_absoluteValue;
    }

    v31 = [self _formattedStringForOffset:v29];
    if (v27 < 0.0)
    {
      v32 = @"WithNegativeOffset";
    }

    else
    {
      v32 = @"WithPositiveOffset";
    }

    [v12 appendString:v32];
  }

  v33 = _HFLocalizedStringWithDefaultValue(v12, 0, 0);
  if (!v33)
  {
    NSLog(&cfstr_NoLocalizedStr.isa, v12);
  }

  v38[0] = 0;
  v34 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v33 validFormatSpecifiers:@"%@" error:v38, v31];
  v35 = v38[0];
  if (!v34)
  {
    v36 = NSStringFromSelector(a2);
    NSLog(&cfstr_CouldnTLocaliz.isa, v36, v35);
  }

LABEL_30:

  return v34;
}

__CFString *__102__HFTimeCondition_NaturalLanguage___formattedStringForSunriseSunsetCondition_style_formattingContext___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = @"HFConditionDescription";
  if (v1 != 1)
  {
    v2 = 0;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return @"HFConditionName";
  }
}

+ (id)_formattedStringForOffset:(id)offset
{
  v3 = MEMORY[0x277CCA958];
  offsetCopy = offset;
  v5 = objc_alloc_init(v3);
  [v5 setUnitsStyle:2];
  [v5 setAllowedUnits:96];
  v6 = [v5 stringFromDateComponents:offsetCopy];

  return v6;
}

+ (id)defaultConditionForType:(unint64_t)type
{
  if (type - 2 < 2)
  {
    v4 = [MEMORY[0x277CBEAB8] hf_componentsWithHour:9 minute:0];
    v7 = [MEMORY[0x277CBEAB8] hf_componentsWithHour:17 minute:0];
    v8 = [[HFDateComponentsCondition alloc] initWithDateComponents:v4 comparisonType:2];
    v9 = [[HFDateComponentsCondition alloc] initWithDateComponents:v7 comparisonType:0];
    v10 = [[HFTimeRangeCondition alloc] initWithStartCondition:v8 endCondition:v9];

LABEL_8:
    goto LABEL_9;
  }

  if (type == 1)
  {
    v11 = [HFSunriseSunsetCondition alloc];
    v4 = [(HFSunriseSunsetCondition *)v11 initWithSignificantEvent:*MEMORY[0x277CD0FB0] comparisonType:2];
    v5 = [HFSunriseSunsetCondition alloc];
    v6 = MEMORY[0x277CD0FA8];
    goto LABEL_7;
  }

  if (!type)
  {
    v3 = [HFSunriseSunsetCondition alloc];
    v4 = [(HFSunriseSunsetCondition *)v3 initWithSignificantEvent:*MEMORY[0x277CD0FA8] comparisonType:2];
    v5 = [HFSunriseSunsetCondition alloc];
    v6 = MEMORY[0x277CD0FB0];
LABEL_7:
    v7 = [(HFSunriseSunsetCondition *)v5 initWithSignificantEvent:*v6 comparisonType:0];
    v10 = [[HFTimeRangeCondition alloc] initWithStartCondition:v4 endCondition:v7];
    goto LABEL_8;
  }

  NSLog(&cfstr_UnknownConditi.isa, a2, type);
  v10 = 0;
LABEL_9:

  return v10;
}

@end