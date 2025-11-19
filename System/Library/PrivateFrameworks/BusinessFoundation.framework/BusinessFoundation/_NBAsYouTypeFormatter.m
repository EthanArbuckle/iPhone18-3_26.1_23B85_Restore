@interface _NBAsYouTypeFormatter
- (BOOL)ableToExtractLongerNdd_;
- (BOOL)attemptToExtractCountryCallingCode_;
- (BOOL)attemptToExtractIdd_;
- (BOOL)createFormattingTemplate_:(id)a3;
- (BOOL)isDigitOrLeadingPlusSign_:(id)a3;
- (BOOL)isFormatEligible_:(id)a3;
- (BOOL)isNanpaNumberWithNationalPrefix_;
- (BOOL)maybeCreateNewTemplate_;
- (_NBAsYouTypeFormatter)init;
- (_NBAsYouTypeFormatter)initWithRegionCode:(id)a3;
- (_NBAsYouTypeFormatter)initWithRegionCode:(id)a3 bundle:(id)a4;
- (id)appendNationalNumber_:(id)a3;
- (id)attemptToChooseFormattingPattern_;
- (id)attemptToChoosePatternWithPrefixExtracted_;
- (id)attemptToFormatAccruedDigits_;
- (id)getFormattingTemplate_:(id)a3 numberFormat:(id)a4;
- (id)getMetadataForRegion_:(id)a3;
- (id)inputAccruedNationalNumber_;
- (id)inputDigit:(id)a3;
- (id)inputDigitAndRememberPosition:(id)a3;
- (id)inputDigitHelper_:(id)a3;
- (id)inputString:(id)a3;
- (id)inputStringAndRememberPosition:(id)a3;
- (id)normalizeAndAccrueDigitsAndPlusSign_:(id)a3 rememberPosition:(BOOL)a4;
- (id)removeLastDigit;
- (id)removeLastDigitAndRememberPosition;
- (id)removeNationalPrefixFromNationalNumber_;
- (unint64_t)getRememberedPosition;
- (void)clear;
- (void)getAvailableFormats_:(id)a3;
- (void)narrowDownPossibleFormats_:(id)a3;
@end

@implementation _NBAsYouTypeFormatter

- (_NBAsYouTypeFormatter)init
{
  v26.receiver = self;
  v26.super_class = _NBAsYouTypeFormatter;
  v2 = [(_NBAsYouTypeFormatter *)&v26 init];
  v3 = v2;
  if (v2)
  {
    v2->_isSuccessfulFormatting = 0;
    [(_NBAsYouTypeFormatter *)v2 setCurrentOutput_:&stru_285461708];
    v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
    [(_NBAsYouTypeFormatter *)v3 setFormattingTemplate_:v4];

    v25 = 0;
    v5 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@" " options:0 error:&v25];
    v6 = v25;
    [(_NBAsYouTypeFormatter *)v3 setDIGIT_PATTERN_:v5];

    v24 = v6;
    v7 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"[- ]" options:0 error:&v24];
    v8 = v24;

    [(_NBAsYouTypeFormatter *)v3 setNATIONAL_PREFIX_SEPARATORS_PATTERN_:v7];
    v23 = v8;
    v9 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"\\[([^\\[\\]])*\\]" options:0 error:&v23];
    v10 = v23;

    [(_NBAsYouTypeFormatter *)v3 setCHARACTER_CLASS_PATTERN_:v9];
    v22 = v10;
    v11 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"\\d(?=[^ options:}][^ error:{}])", 0, &v22}];
    v12 = v22;

    [(_NBAsYouTypeFormatter *)v3 setSTANDALONE_DIGIT_PATTERN_:v11];
    v21 = v12;
    v13 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^[-x‐-―−ー－-／ ­​⁠　()（）［］.\\[\\]/~⁓∼～]*(\\$\\d[-x‐-―−ー－-／ ­​⁠　()（）［］.\\[\\]/~⁓∼～]*)+$" options:0 error:&v21];
    v14 = v21;

    [(_NBAsYouTypeFormatter *)v3 setELIGIBLE_FORMAT_PATTERN_:v13];
    [(_NBAsYouTypeFormatter *)v3 setCurrentFormattingPattern_:&stru_285461708];
    v15 = objc_alloc_init(MEMORY[0x277CCAB68]);
    [(_NBAsYouTypeFormatter *)v3 setAccruedInput_:v15];

    v16 = objc_alloc_init(MEMORY[0x277CCAB68]);
    [(_NBAsYouTypeFormatter *)v3 setAccruedInputWithoutFormatting_:v16];

    [(_NBAsYouTypeFormatter *)v3 setAbleToFormat_:1];
    [(_NBAsYouTypeFormatter *)v3 setInputHasFormatting_:0];
    [(_NBAsYouTypeFormatter *)v3 setIsCompleteNumber_:0];
    [(_NBAsYouTypeFormatter *)v3 setIsExpectingCountryCallingCode_:0];
    [(_NBAsYouTypeFormatter *)v3 setLastMatchPosition_:0];
    [(_NBAsYouTypeFormatter *)v3 setOriginalPosition_:0];
    [(_NBAsYouTypeFormatter *)v3 setPositionToRemember_:0];
    v17 = objc_alloc_init(MEMORY[0x277CCAB68]);
    [(_NBAsYouTypeFormatter *)v3 setPrefixBeforeNationalNumber_:v17];

    [(_NBAsYouTypeFormatter *)v3 setShouldAddSpaceAfterNationalPrefix_:0];
    [(_NBAsYouTypeFormatter *)v3 setNationalPrefixExtracted_:&stru_285461708];
    v18 = objc_alloc_init(MEMORY[0x277CCAB68]);
    [(_NBAsYouTypeFormatter *)v3 setNationalNumber_:v18];

    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(_NBAsYouTypeFormatter *)v3 setPossibleFormats_:v19];
  }

  return v3;
}

- (_NBAsYouTypeFormatter)initWithRegionCode:(id)a3
{
  v4 = MEMORY[0x277CCA8D8];
  v5 = a3;
  v6 = [v4 mainBundle];
  v7 = [(_NBAsYouTypeFormatter *)self initWithRegionCode:v5 bundle:v6];

  return v7;
}

- (_NBAsYouTypeFormatter)initWithRegionCode:(id)a3 bundle:(id)a4
{
  v5 = a3;
  v6 = [(_NBAsYouTypeFormatter *)self init];
  if (v6)
  {
    v7 = +[_NBPhoneNumberUtil sharedInstance];
    [(_NBAsYouTypeFormatter *)v6 setPhoneUtil_:v7];

    [(_NBAsYouTypeFormatter *)v6 setDefaultCountry_:v5];
    v8 = [(_NBAsYouTypeFormatter *)v6 defaultCountry];
    v9 = [(_NBAsYouTypeFormatter *)v6 getMetadataForRegion_:v8];
    [(_NBAsYouTypeFormatter *)v6 setCurrentMetaData_:v9];

    v10 = [(_NBAsYouTypeFormatter *)v6 currentMetaData];
    [(_NBAsYouTypeFormatter *)v6 setDefaultMetaData_:v10];
  }

  return v6;
}

- (id)getMetadataForRegion_:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(_NBMetadataHelper);
  v6 = [(_NBAsYouTypeFormatter *)self phoneUtil];
  v7 = [v6 getCountryCodeForRegion:v4];

  v8 = [(_NBAsYouTypeFormatter *)self phoneUtil];
  v9 = [v8 getRegionCodeForCountryCode:v7];

  v10 = [(_NBMetadataHelper *)v5 getMetadataForRegion:v9];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = objc_alloc_init(_NBPhoneMetaData);
  }

  v13 = v12;

  return v13;
}

- (BOOL)maybeCreateNewTemplate_
{
  v3 = [(_NBAsYouTypeFormatter *)self possibleFormats];
  v4 = [v3 count];

  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = [(_NBAsYouTypeFormatter *)self possibleFormats];
      v7 = [v6 nb_safeObjectAtIndex:v5 class:objc_opt_class()];

      v8 = [v7 pattern];
      if (![v8 length] || (-[_NBAsYouTypeFormatter currentFormattingPattern](self, "currentFormattingPattern"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", v8), v9, (v10 & 1) != 0))
      {
        v11 = 0;
        goto LABEL_13;
      }

      if ([(_NBAsYouTypeFormatter *)self createFormattingTemplate_:v7])
      {
        break;
      }

      if (v4 == ++v5)
      {
        goto LABEL_7;
      }
    }

    [(_NBAsYouTypeFormatter *)self setCurrentFormattingPattern_:v8];
    v12 = [v7 nationalPrefixFormattingRule];
    v13 = [v12 length];

    if (v13)
    {
      v14 = [(_NBAsYouTypeFormatter *)self NATIONAL_PREFIX_SEPARATORS_PATTERN];
      v15 = [v7 nationalPrefixFormattingRule];
      v16 = [v14 firstMatchInString:v15 options:0 range:{0, v13}];

      [(_NBAsYouTypeFormatter *)self setShouldAddSpaceAfterNationalPrefix_:v16 != 0];
    }

    else
    {
      [(_NBAsYouTypeFormatter *)self setShouldAddSpaceAfterNationalPrefix_:0];
    }

    [(_NBAsYouTypeFormatter *)self setLastMatchPosition_:0];
    v11 = 1;
LABEL_13:
  }

  else
  {
LABEL_7:
    [(_NBAsYouTypeFormatter *)self setAbleToFormat_:0];
    return 0;
  }

  return v11;
}

- (void)getAvailableFormats_:(id)a3
{
  v26 = a3;
  if (-[_NBAsYouTypeFormatter isCompleteNumber](self, "isCompleteNumber") && (-[_NBAsYouTypeFormatter currentMetaData](self, "currentMetaData"), v4 = objc_claimAutoreleasedReturnValue(), [v4 intlNumberFormats], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v4, v6))
  {
    v7 = [(_NBAsYouTypeFormatter *)self currentMetaData];
    v8 = [v7 intlNumberFormats];
  }

  else
  {
    v7 = [(_NBAsYouTypeFormatter *)self currentMetaData];
    v8 = [v7 numberFormats];
  }

  v9 = v8;

  v10 = [v9 count];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    while (1)
    {
      v13 = [v9 nb_safeObjectAtIndex:v12 class:objc_opt_class()];
      v14 = [(_NBAsYouTypeFormatter *)self currentMetaData];
      v15 = [v14 nationalPrefix];
      if (!v15)
      {
        break;
      }

      v16 = v15;
      v17 = [(_NBAsYouTypeFormatter *)self currentMetaData];
      v18 = [v17 nationalPrefix];
      v19 = [v18 length];

      if (!v19)
      {
        goto LABEL_14;
      }

      if (([(_NBAsYouTypeFormatter *)self isCompleteNumber]& 1) != 0)
      {
        goto LABEL_14;
      }

      if ([v13 nationalPrefixOptionalWhenFormatting])
      {
        goto LABEL_14;
      }

      v20 = [(_NBAsYouTypeFormatter *)self phoneUtil];
      v21 = [v13 nationalPrefixFormattingRule];
      v22 = [v20 formattingRuleHasFirstGroupOnly:v21];

      if (v22)
      {
        goto LABEL_14;
      }

LABEL_16:

      if (v11 == ++v12)
      {
        goto LABEL_17;
      }
    }

LABEL_14:
    v23 = [v13 format];
    v24 = [(_NBAsYouTypeFormatter *)self isFormatEligible_:v23];

    if (v24)
    {
      v25 = [(_NBAsYouTypeFormatter *)self possibleFormats];
      [v25 addObject:v13];
    }

    goto LABEL_16;
  }

LABEL_17:
  [(_NBAsYouTypeFormatter *)self narrowDownPossibleFormats_:v26];
}

- (BOOL)isFormatEligible_:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(_NBAsYouTypeFormatter *)self ELIGIBLE_FORMAT_PATTERN];
    v6 = [v5 firstMatchInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}];

    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)narrowDownPossibleFormats_:(id)a3
{
  v22 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [v22 length];
  v6 = [(_NBAsYouTypeFormatter *)self possibleFormats];
  v7 = [v6 count];

  if (v7)
  {
    v8 = 0;
    v9 = v5 - 3;
    do
    {
      v10 = [(_NBAsYouTypeFormatter *)self possibleFormats];
      v11 = [v10 nb_safeObjectAtIndex:v8 class:objc_opt_class()];

      v12 = [v11 leadingDigitsPatterns];
      v13 = [v12 count];

      if (v13)
      {
        v14 = [v11 leadingDigitsPatterns];
        [v14 count];

        v15 = [v11 leadingDigitsPatterns];
        v16 = [v15 count];

        if (v9 >= v16 - 1)
        {
          v17 = v16 - 1;
        }

        else
        {
          v17 = v9;
        }

        v18 = [v11 leadingDigitsPatterns];
        v19 = [v18 nb_safeStringAtIndex:v17];

        v20 = [(_NBAsYouTypeFormatter *)self phoneUtil];
        v21 = [v20 stringPositionByRegex:v22 regex:v19];

        if (!v21)
        {
          [v4 addObject:v11];
        }
      }

      else
      {
        [v4 addObject:v11];
      }

      ++v8;
    }

    while (v7 != v8);
  }

  [(_NBAsYouTypeFormatter *)self setPossibleFormats_:v4];
}

- (BOOL)createFormattingTemplate_:(id)a3
{
  v4 = a3;
  v5 = [v4 pattern];
  if ([v5 rangeOfString:@"|"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(_NBAsYouTypeFormatter *)self CHARACTER_CLASS_PATTERN];
    v7 = [v6 stringByReplacingMatchesInString:v5 options:0 range:0 withTemplate:{objc_msgSend(v5, "length"), @"\\\\d"}];

    v8 = [(_NBAsYouTypeFormatter *)self STANDALONE_DIGIT_PATTERN];
    v5 = [v8 stringByReplacingMatchesInString:v7 options:0 range:0 withTemplate:{objc_msgSend(v7, "length"), @"\\\\d"}];

    v9 = [(_NBAsYouTypeFormatter *)self formattingTemplate];
    [v9 setString:&stru_285461708];

    v10 = [v4 format];
    v11 = [(_NBAsYouTypeFormatter *)self getFormattingTemplate_:v5 numberFormat:v10];

    v12 = [v11 length];
    v13 = v12 != 0;
    if (v12)
    {
      v14 = [(_NBAsYouTypeFormatter *)self formattingTemplate];
      [v14 appendString:v11];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)getFormattingTemplate_:(id)a3 numberFormat:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_NBAsYouTypeFormatter *)self phoneUtil];
  v9 = [v8 matchedStringByRegex:@"999999999999999" regex:v6];

  v10 = [v9 nb_safeStringAtIndex:0];
  v11 = [v10 length];
  v12 = [(_NBAsYouTypeFormatter *)self nationalNumber];
  v13 = [v12 length];

  if (v11 >= v13)
  {
    v15 = [(_NBAsYouTypeFormatter *)self phoneUtil];
    v16 = [v15 replaceStringByRegex:v10 regex:v6 withTemplate:v7];

    v17 = [(_NBAsYouTypeFormatter *)self phoneUtil];
    v14 = [v17 replaceStringByRegex:v16 regex:@"9" withTemplate:@" "];
  }

  else
  {
    v14 = &stru_285461708;
  }

  return v14;
}

- (void)clear
{
  [(_NBAsYouTypeFormatter *)self setCurrentOutput_:&stru_285461708];
  v3 = [(_NBAsYouTypeFormatter *)self accruedInput];
  [v3 setString:&stru_285461708];

  v4 = [(_NBAsYouTypeFormatter *)self accruedInputWithoutFormatting];
  [v4 setString:&stru_285461708];

  v5 = [(_NBAsYouTypeFormatter *)self formattingTemplate];
  [v5 setString:&stru_285461708];

  [(_NBAsYouTypeFormatter *)self setLastMatchPosition_:0];
  [(_NBAsYouTypeFormatter *)self setCurrentFormattingPattern_:&stru_285461708];
  v6 = [(_NBAsYouTypeFormatter *)self prefixBeforeNationalNumber];
  [v6 setString:&stru_285461708];

  [(_NBAsYouTypeFormatter *)self setNationalPrefixExtracted_:&stru_285461708];
  v7 = [(_NBAsYouTypeFormatter *)self nationalNumber];
  [v7 setString:&stru_285461708];

  [(_NBAsYouTypeFormatter *)self setAbleToFormat_:1];
  [(_NBAsYouTypeFormatter *)self setInputHasFormatting_:0];
  [(_NBAsYouTypeFormatter *)self setPositionToRemember_:0];
  [(_NBAsYouTypeFormatter *)self setOriginalPosition_:0];
  [(_NBAsYouTypeFormatter *)self setIsCompleteNumber_:0];
  [(_NBAsYouTypeFormatter *)self setIsExpectingCountryCallingCode_:0];
  v8 = [(_NBAsYouTypeFormatter *)self possibleFormats];
  [v8 removeAllObjects];

  [(_NBAsYouTypeFormatter *)self setShouldAddSpaceAfterNationalPrefix_:0];
  v9 = [(_NBAsYouTypeFormatter *)self currentMetaData];
  v10 = [(_NBAsYouTypeFormatter *)self defaultMetaData];

  if (v9 != v10)
  {
    v12 = [(_NBAsYouTypeFormatter *)self defaultCountry];
    v11 = [(_NBAsYouTypeFormatter *)self getMetadataForRegion_:v12];
    [(_NBAsYouTypeFormatter *)self setCurrentMetaData_:v11];
  }
}

- (id)removeLastDigitAndRememberPosition
{
  v3 = [(_NBAsYouTypeFormatter *)self accruedInput];
  v4 = [v3 copy];

  [(_NBAsYouTypeFormatter *)self clear];
  v5 = [v4 length];
  if (v5)
  {
    v6 = v5 - 1;
    if (v5 == 1)
    {
      v10 = &stru_285461708;
    }

    else
    {
      v7 = 0;
      v8 = &stru_285461708;
      do
      {
        v9 = [v4 substringWithRange:{v7, 1}];
        v10 = [(_NBAsYouTypeFormatter *)self inputDigitAndRememberPosition:v9];

        ++v7;
        v8 = v10;
      }

      while (v6 != v7);
    }

    v11 = v10;
  }

  else
  {
    v11 = &stru_285461708;
  }

  return v11;
}

- (id)removeLastDigit
{
  v3 = [(_NBAsYouTypeFormatter *)self accruedInput];
  v4 = [v3 copy];

  [(_NBAsYouTypeFormatter *)self clear];
  v5 = [v4 length];
  if (v5)
  {
    v6 = v5 - 1;
    if (v5 == 1)
    {
      v10 = &stru_285461708;
    }

    else
    {
      v7 = 0;
      v8 = &stru_285461708;
      do
      {
        v9 = [v4 substringWithRange:{v7, 1}];
        v10 = [(_NBAsYouTypeFormatter *)self inputDigit:v9];

        ++v7;
        v8 = v10;
      }

      while (v6 != v7);
    }

    v11 = v10;
  }

  else
  {
    v11 = &stru_285461708;
  }

  return v11;
}

- (id)inputStringAndRememberPosition:(id)a3
{
  v4 = a3;
  [(_NBAsYouTypeFormatter *)self clear];
  v5 = [v4 length];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = &stru_285461708;
    do
    {
      v9 = [v4 substringWithRange:{v7, 1}];
      v10 = [(_NBAsYouTypeFormatter *)self inputDigitAndRememberPosition:v9];

      ++v7;
      v8 = v10;
    }

    while (v6 != v7);
  }

  else
  {
    v10 = &stru_285461708;
  }

  return v10;
}

- (id)inputString:(id)a3
{
  v4 = a3;
  [(_NBAsYouTypeFormatter *)self clear];
  v5 = [v4 length];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = &stru_285461708;
    do
    {
      v9 = [v4 substringWithRange:{v7, 1}];
      v10 = [(_NBAsYouTypeFormatter *)self inputDigit:v9];

      ++v7;
      v8 = v10;
    }

    while (v6 != v7);
  }

  else
  {
    v10 = &stru_285461708;
  }

  return v10;
}

- (id)inputDigit:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length])
  {
    v6 = [(_NBAsYouTypeFormatter *)self inputDigitWithOptionToRememberPosition_:v5 rememberPosition:0];
    [(_NBAsYouTypeFormatter *)self setCurrentOutput_:v6];
  }

  v7 = [(_NBAsYouTypeFormatter *)self currentOutput];

  return v7;
}

- (id)inputDigitAndRememberPosition:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length])
  {
    v6 = [(_NBAsYouTypeFormatter *)self inputDigitWithOptionToRememberPosition_:v5 rememberPosition:1];
    [(_NBAsYouTypeFormatter *)self setCurrentOutput_:v6];
  }

  v7 = [(_NBAsYouTypeFormatter *)self currentOutput];

  return v7;
}

- (id)attemptToChoosePatternWithPrefixExtracted_
{
  [(_NBAsYouTypeFormatter *)self setAbleToFormat_:1];
  [(_NBAsYouTypeFormatter *)self setIsExpectingCountryCallingCode_:0];
  v3 = [(_NBAsYouTypeFormatter *)self possibleFormats];
  [v3 removeAllObjects];

  return [(_NBAsYouTypeFormatter *)self attemptToChooseFormattingPattern];
}

- (BOOL)ableToExtractLongerNdd_
{
  v3 = [(_NBAsYouTypeFormatter *)self nationalPrefixExtracted];
  v4 = [v3 length];

  if (v4)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [(_NBAsYouTypeFormatter *)self nationalNumber];
    v7 = [v5 stringWithString:v6];

    v8 = [(_NBAsYouTypeFormatter *)self nationalPrefixExtracted];
    v9 = [v8 mutableCopy];
    [(_NBAsYouTypeFormatter *)self setNationalNumber_:v9];

    v10 = [(_NBAsYouTypeFormatter *)self nationalNumber];
    [v10 appendString:v7];

    v11 = [(_NBAsYouTypeFormatter *)self prefixBeforeNationalNumber];
    v12 = [v11 copy];

    v13 = [(_NBAsYouTypeFormatter *)self nationalPrefixExtracted];
    v14 = [v12 rangeOfString:v13 options:4];

    v15 = [v12 substringWithRange:{0, v14}];
    v16 = [v15 mutableCopy];
    [(_NBAsYouTypeFormatter *)self setPrefixBeforeNationalNumber_:v16];
  }

  v17 = [(_NBAsYouTypeFormatter *)self nationalPrefixExtracted];
  v18 = [(_NBAsYouTypeFormatter *)self removeNationalPrefixFromNationalNumber];
  v19 = v17 != v18;

  return v19;
}

- (BOOL)isDigitOrLeadingPlusSign_:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [v4 stringWithFormat:@"([%@])", 0x285461688];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]+", 0x285461668];
  v8 = [(_NBAsYouTypeFormatter *)self phoneUtil];
  v9 = [v8 matchesByRegex:v5 regex:v6];
  v10 = [v9 count];

  v11 = [(_NBAsYouTypeFormatter *)self phoneUtil];
  v12 = [v11 matchesByRegex:v5 regex:v7];

  v13 = [v12 count];
  if (v10)
  {
    v14 = 1;
  }

  else
  {
    v15 = [(_NBAsYouTypeFormatter *)self accruedInput];
    v14 = [v15 length] == 1 && v13 != 0;
  }

  return v14;
}

- (id)attemptToFormatAccruedDigits_
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(_NBAsYouTypeFormatter *)self nationalNumber];
  v26 = [v3 stringWithString:v4];

  v5 = [(_NBAsYouTypeFormatter *)self possibleFormats];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    while (1)
    {
      v8 = [(_NBAsYouTypeFormatter *)self possibleFormats];
      v9 = [v8 objectAtIndexedSubscript:v7];

      v10 = [v9 pattern];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"^(?:%@)$", v10];
      v12 = [(_NBAsYouTypeFormatter *)self phoneUtil];
      v13 = [v12 matchesByRegex:v26 regex:v11];
      v14 = [v13 count];

      if (v14)
      {
        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_5;
      }
    }

    v16 = [v9 nationalPrefixFormattingRule];
    v17 = [v16 length];

    if (v17)
    {
      v18 = [(_NBAsYouTypeFormatter *)self NATIONAL_PREFIX_SEPARATORS_PATTERN];
      v19 = [v9 nationalPrefixFormattingRule];
      v20 = [v9 nationalPrefixFormattingRule];
      v21 = [v18 matchesInString:v19 options:0 range:{0, objc_msgSend(v20, "length")}];

      -[_NBAsYouTypeFormatter setShouldAddSpaceAfterNationalPrefix_:](self, "setShouldAddSpaceAfterNationalPrefix_:", [v21 count] != 0);
    }

    else
    {
      [(_NBAsYouTypeFormatter *)self setShouldAddSpaceAfterNationalPrefix_:0];
    }

    v22 = [(_NBAsYouTypeFormatter *)self phoneUtil];
    v23 = [v9 format];
    v24 = [v22 replaceStringByRegex:v26 regex:v10 withTemplate:v23];

    v15 = [(_NBAsYouTypeFormatter *)self appendNationalNumber_:v24];
  }

  else
  {
LABEL_5:
    v15 = &stru_285461708;
  }

  return v15;
}

- (id)appendNationalNumber_:(id)a3
{
  v4 = a3;
  v5 = [(_NBAsYouTypeFormatter *)self prefixBeforeNationalNumber];
  v6 = [v5 length];

  v7 = [@" " characterAtIndex:0];
  if (-[_NBAsYouTypeFormatter shouldAddSpaceAfterNationalPrefix](self, "shouldAddSpaceAfterNationalPrefix") && v6 && (-[_NBAsYouTypeFormatter prefixBeforeNationalNumber](self, "prefixBeforeNationalNumber"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 characterAtIndex:v6 - 1], v8, v9 != v7))
  {
    v12 = MEMORY[0x277CCACA8];
    v11 = [(_NBAsYouTypeFormatter *)self prefixBeforeNationalNumber];
    [v12 stringWithFormat:@"%@%@%@", v11, @" ", v4];
  }

  else
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [(_NBAsYouTypeFormatter *)self prefixBeforeNationalNumber];
    [v10 stringWithFormat:@"%@%@", v11, v4, v15];
  }
  v13 = ;

  return v13;
}

- (unint64_t)getRememberedPosition
{
  if (([(_NBAsYouTypeFormatter *)self ableToFormat]& 1) != 0)
  {
    v3 = [(_NBAsYouTypeFormatter *)self accruedInputWithoutFormatting];
    v4 = [(_NBAsYouTypeFormatter *)self currentOutput];
    if ([(_NBAsYouTypeFormatter *)self positionToRemember])
    {
      v5 = 0;
      v6 = 0;
      do
      {
        if (v6 >= [v4 length])
        {
          break;
        }

        v7 = [v3 characterAtIndex:v5];
        if (v7 == [v4 characterAtIndex:v6])
        {
          ++v5;
        }

        ++v6;
      }

      while (v5 < [(_NBAsYouTypeFormatter *)self positionToRemember]);
    }

    else
    {
      v6 = 0;
    }

    return v6;
  }

  else
  {

    return [(_NBAsYouTypeFormatter *)self originalPosition];
  }
}

- (id)attemptToChooseFormattingPattern_
{
  v3 = [(_NBAsYouTypeFormatter *)self nationalNumber];
  v4 = [v3 copy];

  if ([v4 length] < 3)
  {
    v7 = [(_NBAsYouTypeFormatter *)self appendNationalNumber_:v4];
  }

  else
  {
    [(_NBAsYouTypeFormatter *)self getAvailableFormats_:v4];
    v5 = [(_NBAsYouTypeFormatter *)self attemptToFormatAccruedDigits];
    if ([v5 length])
    {
      v6 = v5;
    }

    else
    {
      if (([(_NBAsYouTypeFormatter *)self maybeCreateNewTemplate]& 1) != 0)
      {
        [(_NBAsYouTypeFormatter *)self inputAccruedNationalNumber];
      }

      else
      {
        [(_NBAsYouTypeFormatter *)self accruedInput];
      }
      v6 = ;
    }

    v7 = v6;
  }

  return v7;
}

- (id)inputAccruedNationalNumber_
{
  v3 = [(_NBAsYouTypeFormatter *)self nationalNumber];
  v4 = [v3 copy];

  v5 = [v4 length];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = &stru_285461708;
    do
    {
      v9 = v8;
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", objc_msgSend(v4, "characterAtIndex:", v7)];
      v8 = [(_NBAsYouTypeFormatter *)self inputDigitHelper_:v10];

      ++v7;
    }

    while (v6 != v7);
    if (([(_NBAsYouTypeFormatter *)self ableToFormat]& 1) != 0)
    {
      [(_NBAsYouTypeFormatter *)self appendNationalNumber_:v8];
    }

    else
    {
      [(_NBAsYouTypeFormatter *)self accruedInput];
    }
    v11 = ;
  }

  else
  {
    v11 = [(_NBAsYouTypeFormatter *)self prefixBeforeNationalNumber];
  }

  return v11;
}

- (BOOL)isNanpaNumberWithNationalPrefix_
{
  v3 = [(_NBAsYouTypeFormatter *)self currentMetaData];
  v4 = [v3 countryCode];
  v5 = [v4 isEqual:&unk_285464A88];

  if (!v5)
  {
    return 0;
  }

  v6 = [(_NBAsYouTypeFormatter *)self nationalNumber];
  v7 = [v6 copy];

  v8 = [v7 characterAtIndex:0] == 49 && objc_msgSend(v7, "characterAtIndex:", 1) != 48 && objc_msgSend(v7, "characterAtIndex:", 1) != 49;
  return v8;
}

- (id)removeNationalPrefixFromNationalNumber_
{
  v3 = [(_NBAsYouTypeFormatter *)self nationalNumber];
  v4 = [v3 copy];

  if ([(_NBAsYouTypeFormatter *)self isNanpaNumberWithNationalPrefix])
  {
    v5 = [(_NBAsYouTypeFormatter *)self prefixBeforeNationalNumber];
    [v5 appendFormat:@"1%@", @" "];

    v6 = 1;
    [(_NBAsYouTypeFormatter *)self setIsCompleteNumber_:1];
    goto LABEL_13;
  }

  v7 = [(_NBAsYouTypeFormatter *)self currentMetaData];
  v6 = [v7 nationalPrefixForParsing];
  if (v6)
  {
    v8 = [(_NBAsYouTypeFormatter *)self currentMetaData];
    v9 = [v8 nationalPrefixForParsing];
    v10 = [v9 length];

    if (!v10)
    {
      v6 = 0;
      goto LABEL_13;
    }

    v11 = MEMORY[0x277CCACA8];
    v12 = [(_NBAsYouTypeFormatter *)self currentMetaData];
    v13 = [v12 nationalPrefixForParsing];
    v7 = [v11 stringWithFormat:@"^(?:%@)", v13];

    v14 = [(_NBAsYouTypeFormatter *)self phoneUtil];
    v15 = [v14 matchedStringByRegex:v4 regex:v7];

    v16 = [v15 nb_safeStringAtIndex:0];
    v17 = v16;
    v6 = 0;
    if (v15 && v16)
    {
      if ([v16 length])
      {
        [(_NBAsYouTypeFormatter *)self setIsCompleteNumber_:1];
        v6 = [v17 length];
        v18 = [(_NBAsYouTypeFormatter *)self prefixBeforeNationalNumber];
        v19 = [v4 substringWithRange:{0, v6}];
        [v18 appendString:v19];
      }

      else
      {
        v6 = 0;
      }
    }
  }

LABEL_13:
  v20 = [v4 substringFromIndex:v6];
  v21 = [v20 mutableCopy];
  [(_NBAsYouTypeFormatter *)self setNationalNumber_:v21];

  v22 = [v4 substringWithRange:{0, v6}];

  return v22;
}

- (BOOL)attemptToExtractIdd_
{
  v3 = [(_NBAsYouTypeFormatter *)self accruedInputWithoutFormatting];
  v4 = [v3 copy];

  v5 = MEMORY[0x277CCACA8];
  v6 = [(_NBAsYouTypeFormatter *)self currentMetaData];
  v7 = [v6 internationalPrefix];
  v8 = [v5 stringWithFormat:@"^(?:\\+|%@)", v7];

  v9 = [(_NBAsYouTypeFormatter *)self phoneUtil];
  v10 = [v9 matchedStringByRegex:v4 regex:v8];

  v11 = [v10 nb_safeStringAtIndex:0];
  v12 = v11;
  v13 = 0;
  if (v10 && v11)
  {
    if ([v11 length])
    {
      v13 = 1;
      [(_NBAsYouTypeFormatter *)self setIsCompleteNumber_:1];
      v14 = [v12 length];
      v15 = [v4 substringFromIndex:v14];
      v16 = [v15 mutableCopy];
      [(_NBAsYouTypeFormatter *)self setNationalNumber_:v16];

      v17 = [v4 substringWithRange:{0, v14}];
      v18 = [v17 mutableCopy];
      [(_NBAsYouTypeFormatter *)self setPrefixBeforeNationalNumber_:v18];

      if ([v4 characterAtIndex:0] != 43)
      {
        v19 = [(_NBAsYouTypeFormatter *)self prefixBeforeNationalNumber];
        [v19 appendString:@" "];
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (BOOL)attemptToExtractCountryCallingCode_
{
  v3 = [(_NBAsYouTypeFormatter *)self nationalNumber];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(_NBAsYouTypeFormatter *)self phoneUtil];
    v6 = [(_NBAsYouTypeFormatter *)self nationalNumber];
    v19 = &stru_285461708;
    v7 = [v5 extractCountryCode:v6 nationalNumber:&v19];
    v8 = v19;

    v9 = [v7 isEqualToNumber:&unk_285464AA0];
    if (v9)
    {
LABEL_10:
      v15 = v9 ^ 1;

      return v15;
    }

    v10 = [(__CFString *)v8 mutableCopy];
    [(_NBAsYouTypeFormatter *)self setNationalNumber_:v10];

    v11 = [(_NBAsYouTypeFormatter *)self phoneUtil];
    v12 = [v11 getRegionCodeForCountryCode:v7];

    if ([@"001" isEqualToString:v12])
    {
      v13 = objc_alloc_init(_NBMetadataHelper);
      v14 = [(_NBMetadataHelper *)v13 getMetadataForNonGeographicalRegion:v7];
      [(_NBAsYouTypeFormatter *)self setCurrentMetaData_:v14];
    }

    else
    {
      v16 = [(_NBAsYouTypeFormatter *)self defaultCountry];

      if (v12 == v16)
      {
LABEL_9:
        v17 = [(_NBAsYouTypeFormatter *)self prefixBeforeNationalNumber];
        [v17 appendFormat:@"%@%@", v7, @" "];

        goto LABEL_10;
      }

      v13 = [(_NBAsYouTypeFormatter *)self getMetadataForRegion_:v12];
      [(_NBAsYouTypeFormatter *)self setCurrentMetaData_:v13];
    }

    goto LABEL_9;
  }

  return 0;
}

- (id)normalizeAndAccrueDigitsAndPlusSign_:(id)a3 rememberPosition:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 isEqualToString:@"+"])
  {
    v7 = v6;
    v8 = [(_NBAsYouTypeFormatter *)self accruedInputWithoutFormatting];
  }

  else
  {
    v9 = [(_NBAsYouTypeFormatter *)self phoneUtil];
    v10 = [v9 DIGIT_MAPPINGS];
    v7 = [v10 objectForKey:v6];

    if (!v7)
    {
      v7 = &stru_285461708;
      goto LABEL_8;
    }

    v11 = [(_NBAsYouTypeFormatter *)self accruedInputWithoutFormatting];
    [v11 appendString:v7];

    v8 = [(_NBAsYouTypeFormatter *)self nationalNumber];
  }

  v12 = v8;
  [v8 appendString:v7];

  if (v4)
  {
    v13 = [(_NBAsYouTypeFormatter *)self accruedInputWithoutFormatting];
    -[_NBAsYouTypeFormatter setPositionToRemember_:](self, "setPositionToRemember_:", [v13 length]);
  }

LABEL_8:

  return v7;
}

- (id)inputDigitHelper_:(id)a3
{
  v4 = a3;
  v5 = [(_NBAsYouTypeFormatter *)self formattingTemplate];
  v6 = [v5 copy];

  v7 = [v6 length];
  if (v7 <= [(_NBAsYouTypeFormatter *)self lastMatchPosition])
  {
    v8 = &stru_285461708;
  }

  else
  {
    v8 = [v6 substringFromIndex:{-[_NBAsYouTypeFormatter lastMatchPosition](self, "lastMatchPosition")}];
  }

  v9 = [(_NBAsYouTypeFormatter *)self phoneUtil];
  v10 = [v9 stringPositionByRegex:v8 regex:@" "];

  if (v10 < 0)
  {
    v18 = [(_NBAsYouTypeFormatter *)self possibleFormats];
    v19 = [v18 count];

    if (v19 == 1)
    {
      [(_NBAsYouTypeFormatter *)self setAbleToFormat_:0];
    }

    [(_NBAsYouTypeFormatter *)self setCurrentFormattingPattern_:&stru_285461708];
    v17 = [(_NBAsYouTypeFormatter *)self accruedInput];
  }

  else
  {
    v11 = [(_NBAsYouTypeFormatter *)self phoneUtil];
    v12 = [v11 stringPositionByRegex:v6 regex:@" "];

    v13 = [v6 rangeOfString:@" "];
    v15 = [v6 stringByReplacingOccurrencesOfString:@" " withString:v4 options:2 range:{v13, v14}];
    v16 = [v15 mutableCopy];
    [(_NBAsYouTypeFormatter *)self setFormattingTemplate_:v16];

    [(_NBAsYouTypeFormatter *)self setLastMatchPosition_:v12];
    v17 = [v15 substringWithRange:{0, -[_NBAsYouTypeFormatter lastMatchPosition](self, "lastMatchPosition") + 1}];
  }

  return v17;
}

@end