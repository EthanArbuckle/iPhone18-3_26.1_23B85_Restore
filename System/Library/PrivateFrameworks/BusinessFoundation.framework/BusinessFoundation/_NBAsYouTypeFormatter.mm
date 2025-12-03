@interface _NBAsYouTypeFormatter
- (BOOL)ableToExtractLongerNdd_;
- (BOOL)attemptToExtractCountryCallingCode_;
- (BOOL)attemptToExtractIdd_;
- (BOOL)createFormattingTemplate_:(id)template_;
- (BOOL)isDigitOrLeadingPlusSign_:(id)sign_;
- (BOOL)isFormatEligible_:(id)eligible_;
- (BOOL)isNanpaNumberWithNationalPrefix_;
- (BOOL)maybeCreateNewTemplate_;
- (_NBAsYouTypeFormatter)init;
- (_NBAsYouTypeFormatter)initWithRegionCode:(id)code;
- (_NBAsYouTypeFormatter)initWithRegionCode:(id)code bundle:(id)bundle;
- (id)appendNationalNumber_:(id)number_;
- (id)attemptToChooseFormattingPattern_;
- (id)attemptToChoosePatternWithPrefixExtracted_;
- (id)attemptToFormatAccruedDigits_;
- (id)getFormattingTemplate_:(id)template_ numberFormat:(id)format;
- (id)getMetadataForRegion_:(id)region_;
- (id)inputAccruedNationalNumber_;
- (id)inputDigit:(id)digit;
- (id)inputDigitAndRememberPosition:(id)position;
- (id)inputDigitHelper_:(id)helper_;
- (id)inputString:(id)string;
- (id)inputStringAndRememberPosition:(id)position;
- (id)normalizeAndAccrueDigitsAndPlusSign_:(id)sign_ rememberPosition:(BOOL)position;
- (id)removeLastDigit;
- (id)removeLastDigitAndRememberPosition;
- (id)removeNationalPrefixFromNationalNumber_;
- (unint64_t)getRememberedPosition;
- (void)clear;
- (void)getAvailableFormats_:(id)formats_;
- (void)narrowDownPossibleFormats_:(id)formats_;
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

- (_NBAsYouTypeFormatter)initWithRegionCode:(id)code
{
  v4 = MEMORY[0x277CCA8D8];
  codeCopy = code;
  mainBundle = [v4 mainBundle];
  v7 = [(_NBAsYouTypeFormatter *)self initWithRegionCode:codeCopy bundle:mainBundle];

  return v7;
}

- (_NBAsYouTypeFormatter)initWithRegionCode:(id)code bundle:(id)bundle
{
  codeCopy = code;
  v6 = [(_NBAsYouTypeFormatter *)self init];
  if (v6)
  {
    v7 = +[_NBPhoneNumberUtil sharedInstance];
    [(_NBAsYouTypeFormatter *)v6 setPhoneUtil_:v7];

    [(_NBAsYouTypeFormatter *)v6 setDefaultCountry_:codeCopy];
    defaultCountry = [(_NBAsYouTypeFormatter *)v6 defaultCountry];
    v9 = [(_NBAsYouTypeFormatter *)v6 getMetadataForRegion_:defaultCountry];
    [(_NBAsYouTypeFormatter *)v6 setCurrentMetaData_:v9];

    currentMetaData = [(_NBAsYouTypeFormatter *)v6 currentMetaData];
    [(_NBAsYouTypeFormatter *)v6 setDefaultMetaData_:currentMetaData];
  }

  return v6;
}

- (id)getMetadataForRegion_:(id)region_
{
  region_Copy = region_;
  v5 = objc_alloc_init(_NBMetadataHelper);
  phoneUtil = [(_NBAsYouTypeFormatter *)self phoneUtil];
  v7 = [phoneUtil getCountryCodeForRegion:region_Copy];

  phoneUtil2 = [(_NBAsYouTypeFormatter *)self phoneUtil];
  v9 = [phoneUtil2 getRegionCodeForCountryCode:v7];

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
  possibleFormats = [(_NBAsYouTypeFormatter *)self possibleFormats];
  v4 = [possibleFormats count];

  if (v4)
  {
    v5 = 0;
    while (1)
    {
      possibleFormats2 = [(_NBAsYouTypeFormatter *)self possibleFormats];
      v7 = [possibleFormats2 nb_safeObjectAtIndex:v5 class:objc_opt_class()];

      pattern = [v7 pattern];
      if (![pattern length] || (-[_NBAsYouTypeFormatter currentFormattingPattern](self, "currentFormattingPattern"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", pattern), v9, (v10 & 1) != 0))
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

    [(_NBAsYouTypeFormatter *)self setCurrentFormattingPattern_:pattern];
    nationalPrefixFormattingRule = [v7 nationalPrefixFormattingRule];
    v13 = [nationalPrefixFormattingRule length];

    if (v13)
    {
      nATIONAL_PREFIX_SEPARATORS_PATTERN = [(_NBAsYouTypeFormatter *)self NATIONAL_PREFIX_SEPARATORS_PATTERN];
      nationalPrefixFormattingRule2 = [v7 nationalPrefixFormattingRule];
      v16 = [nATIONAL_PREFIX_SEPARATORS_PATTERN firstMatchInString:nationalPrefixFormattingRule2 options:0 range:{0, v13}];

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

- (void)getAvailableFormats_:(id)formats_
{
  formats_Copy = formats_;
  if (-[_NBAsYouTypeFormatter isCompleteNumber](self, "isCompleteNumber") && (-[_NBAsYouTypeFormatter currentMetaData](self, "currentMetaData"), v4 = objc_claimAutoreleasedReturnValue(), [v4 intlNumberFormats], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v4, v6))
  {
    currentMetaData = [(_NBAsYouTypeFormatter *)self currentMetaData];
    intlNumberFormats = [currentMetaData intlNumberFormats];
  }

  else
  {
    currentMetaData = [(_NBAsYouTypeFormatter *)self currentMetaData];
    intlNumberFormats = [currentMetaData numberFormats];
  }

  v9 = intlNumberFormats;

  v10 = [v9 count];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    while (1)
    {
      v13 = [v9 nb_safeObjectAtIndex:v12 class:objc_opt_class()];
      currentMetaData2 = [(_NBAsYouTypeFormatter *)self currentMetaData];
      nationalPrefix = [currentMetaData2 nationalPrefix];
      if (!nationalPrefix)
      {
        break;
      }

      v16 = nationalPrefix;
      currentMetaData3 = [(_NBAsYouTypeFormatter *)self currentMetaData];
      nationalPrefix2 = [currentMetaData3 nationalPrefix];
      v19 = [nationalPrefix2 length];

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

      phoneUtil = [(_NBAsYouTypeFormatter *)self phoneUtil];
      nationalPrefixFormattingRule = [v13 nationalPrefixFormattingRule];
      v22 = [phoneUtil formattingRuleHasFirstGroupOnly:nationalPrefixFormattingRule];

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
    format = [v13 format];
    v24 = [(_NBAsYouTypeFormatter *)self isFormatEligible_:format];

    if (v24)
    {
      possibleFormats = [(_NBAsYouTypeFormatter *)self possibleFormats];
      [possibleFormats addObject:v13];
    }

    goto LABEL_16;
  }

LABEL_17:
  [(_NBAsYouTypeFormatter *)self narrowDownPossibleFormats_:formats_Copy];
}

- (BOOL)isFormatEligible_:(id)eligible_
{
  eligible_Copy = eligible_;
  if ([eligible_Copy length])
  {
    eLIGIBLE_FORMAT_PATTERN = [(_NBAsYouTypeFormatter *)self ELIGIBLE_FORMAT_PATTERN];
    v6 = [eLIGIBLE_FORMAT_PATTERN firstMatchInString:eligible_Copy options:0 range:{0, objc_msgSend(eligible_Copy, "length")}];

    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)narrowDownPossibleFormats_:(id)formats_
{
  formats_Copy = formats_;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [formats_Copy length];
  possibleFormats = [(_NBAsYouTypeFormatter *)self possibleFormats];
  v7 = [possibleFormats count];

  if (v7)
  {
    v8 = 0;
    v9 = v5 - 3;
    do
    {
      possibleFormats2 = [(_NBAsYouTypeFormatter *)self possibleFormats];
      v11 = [possibleFormats2 nb_safeObjectAtIndex:v8 class:objc_opt_class()];

      leadingDigitsPatterns = [v11 leadingDigitsPatterns];
      v13 = [leadingDigitsPatterns count];

      if (v13)
      {
        leadingDigitsPatterns2 = [v11 leadingDigitsPatterns];
        [leadingDigitsPatterns2 count];

        leadingDigitsPatterns3 = [v11 leadingDigitsPatterns];
        v16 = [leadingDigitsPatterns3 count];

        if (v9 >= v16 - 1)
        {
          v17 = v16 - 1;
        }

        else
        {
          v17 = v9;
        }

        leadingDigitsPatterns4 = [v11 leadingDigitsPatterns];
        v19 = [leadingDigitsPatterns4 nb_safeStringAtIndex:v17];

        phoneUtil = [(_NBAsYouTypeFormatter *)self phoneUtil];
        v21 = [phoneUtil stringPositionByRegex:formats_Copy regex:v19];

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

- (BOOL)createFormattingTemplate_:(id)template_
{
  template_Copy = template_;
  pattern = [template_Copy pattern];
  if ([pattern rangeOfString:@"|"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    cHARACTER_CLASS_PATTERN = [(_NBAsYouTypeFormatter *)self CHARACTER_CLASS_PATTERN];
    v7 = [cHARACTER_CLASS_PATTERN stringByReplacingMatchesInString:pattern options:0 range:0 withTemplate:{objc_msgSend(pattern, "length"), @"\\\\d"}];

    sTANDALONE_DIGIT_PATTERN = [(_NBAsYouTypeFormatter *)self STANDALONE_DIGIT_PATTERN];
    pattern = [sTANDALONE_DIGIT_PATTERN stringByReplacingMatchesInString:v7 options:0 range:0 withTemplate:{objc_msgSend(v7, "length"), @"\\\\d"}];

    formattingTemplate = [(_NBAsYouTypeFormatter *)self formattingTemplate];
    [formattingTemplate setString:&stru_285461708];

    format = [template_Copy format];
    v11 = [(_NBAsYouTypeFormatter *)self getFormattingTemplate_:pattern numberFormat:format];

    v12 = [v11 length];
    v13 = v12 != 0;
    if (v12)
    {
      formattingTemplate2 = [(_NBAsYouTypeFormatter *)self formattingTemplate];
      [formattingTemplate2 appendString:v11];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)getFormattingTemplate_:(id)template_ numberFormat:(id)format
{
  template_Copy = template_;
  formatCopy = format;
  phoneUtil = [(_NBAsYouTypeFormatter *)self phoneUtil];
  v9 = [phoneUtil matchedStringByRegex:@"999999999999999" regex:template_Copy];

  v10 = [v9 nb_safeStringAtIndex:0];
  v11 = [v10 length];
  nationalNumber = [(_NBAsYouTypeFormatter *)self nationalNumber];
  v13 = [nationalNumber length];

  if (v11 >= v13)
  {
    phoneUtil2 = [(_NBAsYouTypeFormatter *)self phoneUtil];
    v16 = [phoneUtil2 replaceStringByRegex:v10 regex:template_Copy withTemplate:formatCopy];

    phoneUtil3 = [(_NBAsYouTypeFormatter *)self phoneUtil];
    v14 = [phoneUtil3 replaceStringByRegex:v16 regex:@"9" withTemplate:@" "];
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
  accruedInput = [(_NBAsYouTypeFormatter *)self accruedInput];
  [accruedInput setString:&stru_285461708];

  accruedInputWithoutFormatting = [(_NBAsYouTypeFormatter *)self accruedInputWithoutFormatting];
  [accruedInputWithoutFormatting setString:&stru_285461708];

  formattingTemplate = [(_NBAsYouTypeFormatter *)self formattingTemplate];
  [formattingTemplate setString:&stru_285461708];

  [(_NBAsYouTypeFormatter *)self setLastMatchPosition_:0];
  [(_NBAsYouTypeFormatter *)self setCurrentFormattingPattern_:&stru_285461708];
  prefixBeforeNationalNumber = [(_NBAsYouTypeFormatter *)self prefixBeforeNationalNumber];
  [prefixBeforeNationalNumber setString:&stru_285461708];

  [(_NBAsYouTypeFormatter *)self setNationalPrefixExtracted_:&stru_285461708];
  nationalNumber = [(_NBAsYouTypeFormatter *)self nationalNumber];
  [nationalNumber setString:&stru_285461708];

  [(_NBAsYouTypeFormatter *)self setAbleToFormat_:1];
  [(_NBAsYouTypeFormatter *)self setInputHasFormatting_:0];
  [(_NBAsYouTypeFormatter *)self setPositionToRemember_:0];
  [(_NBAsYouTypeFormatter *)self setOriginalPosition_:0];
  [(_NBAsYouTypeFormatter *)self setIsCompleteNumber_:0];
  [(_NBAsYouTypeFormatter *)self setIsExpectingCountryCallingCode_:0];
  possibleFormats = [(_NBAsYouTypeFormatter *)self possibleFormats];
  [possibleFormats removeAllObjects];

  [(_NBAsYouTypeFormatter *)self setShouldAddSpaceAfterNationalPrefix_:0];
  currentMetaData = [(_NBAsYouTypeFormatter *)self currentMetaData];
  defaultMetaData = [(_NBAsYouTypeFormatter *)self defaultMetaData];

  if (currentMetaData != defaultMetaData)
  {
    defaultCountry = [(_NBAsYouTypeFormatter *)self defaultCountry];
    v11 = [(_NBAsYouTypeFormatter *)self getMetadataForRegion_:defaultCountry];
    [(_NBAsYouTypeFormatter *)self setCurrentMetaData_:v11];
  }
}

- (id)removeLastDigitAndRememberPosition
{
  accruedInput = [(_NBAsYouTypeFormatter *)self accruedInput];
  v4 = [accruedInput copy];

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
  accruedInput = [(_NBAsYouTypeFormatter *)self accruedInput];
  v4 = [accruedInput copy];

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

- (id)inputStringAndRememberPosition:(id)position
{
  positionCopy = position;
  [(_NBAsYouTypeFormatter *)self clear];
  v5 = [positionCopy length];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = &stru_285461708;
    do
    {
      v9 = [positionCopy substringWithRange:{v7, 1}];
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

- (id)inputString:(id)string
{
  stringCopy = string;
  [(_NBAsYouTypeFormatter *)self clear];
  v5 = [stringCopy length];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = &stru_285461708;
    do
    {
      v9 = [stringCopy substringWithRange:{v7, 1}];
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

- (id)inputDigit:(id)digit
{
  digitCopy = digit;
  v5 = digitCopy;
  if (digitCopy && [digitCopy length])
  {
    v6 = [(_NBAsYouTypeFormatter *)self inputDigitWithOptionToRememberPosition_:v5 rememberPosition:0];
    [(_NBAsYouTypeFormatter *)self setCurrentOutput_:v6];
  }

  currentOutput = [(_NBAsYouTypeFormatter *)self currentOutput];

  return currentOutput;
}

- (id)inputDigitAndRememberPosition:(id)position
{
  positionCopy = position;
  v5 = positionCopy;
  if (positionCopy && [positionCopy length])
  {
    v6 = [(_NBAsYouTypeFormatter *)self inputDigitWithOptionToRememberPosition_:v5 rememberPosition:1];
    [(_NBAsYouTypeFormatter *)self setCurrentOutput_:v6];
  }

  currentOutput = [(_NBAsYouTypeFormatter *)self currentOutput];

  return currentOutput;
}

- (id)attemptToChoosePatternWithPrefixExtracted_
{
  [(_NBAsYouTypeFormatter *)self setAbleToFormat_:1];
  [(_NBAsYouTypeFormatter *)self setIsExpectingCountryCallingCode_:0];
  possibleFormats = [(_NBAsYouTypeFormatter *)self possibleFormats];
  [possibleFormats removeAllObjects];

  return [(_NBAsYouTypeFormatter *)self attemptToChooseFormattingPattern];
}

- (BOOL)ableToExtractLongerNdd_
{
  nationalPrefixExtracted = [(_NBAsYouTypeFormatter *)self nationalPrefixExtracted];
  v4 = [nationalPrefixExtracted length];

  if (v4)
  {
    v5 = MEMORY[0x277CCACA8];
    nationalNumber = [(_NBAsYouTypeFormatter *)self nationalNumber];
    v7 = [v5 stringWithString:nationalNumber];

    nationalPrefixExtracted2 = [(_NBAsYouTypeFormatter *)self nationalPrefixExtracted];
    v9 = [nationalPrefixExtracted2 mutableCopy];
    [(_NBAsYouTypeFormatter *)self setNationalNumber_:v9];

    nationalNumber2 = [(_NBAsYouTypeFormatter *)self nationalNumber];
    [nationalNumber2 appendString:v7];

    prefixBeforeNationalNumber = [(_NBAsYouTypeFormatter *)self prefixBeforeNationalNumber];
    v12 = [prefixBeforeNationalNumber copy];

    nationalPrefixExtracted3 = [(_NBAsYouTypeFormatter *)self nationalPrefixExtracted];
    v14 = [v12 rangeOfString:nationalPrefixExtracted3 options:4];

    v15 = [v12 substringWithRange:{0, v14}];
    v16 = [v15 mutableCopy];
    [(_NBAsYouTypeFormatter *)self setPrefixBeforeNationalNumber_:v16];
  }

  nationalPrefixExtracted4 = [(_NBAsYouTypeFormatter *)self nationalPrefixExtracted];
  removeNationalPrefixFromNationalNumber = [(_NBAsYouTypeFormatter *)self removeNationalPrefixFromNationalNumber];
  v19 = nationalPrefixExtracted4 != removeNationalPrefixFromNationalNumber;

  return v19;
}

- (BOOL)isDigitOrLeadingPlusSign_:(id)sign_
{
  v4 = MEMORY[0x277CCACA8];
  sign_Copy = sign_;
  0x285461688 = [v4 stringWithFormat:@"([%@])", 0x285461688];
  0x285461668 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]+", 0x285461668];
  phoneUtil = [(_NBAsYouTypeFormatter *)self phoneUtil];
  v9 = [phoneUtil matchesByRegex:sign_Copy regex:0x285461688];
  v10 = [v9 count];

  phoneUtil2 = [(_NBAsYouTypeFormatter *)self phoneUtil];
  v12 = [phoneUtil2 matchesByRegex:sign_Copy regex:0x285461668];

  v13 = [v12 count];
  if (v10)
  {
    v14 = 1;
  }

  else
  {
    accruedInput = [(_NBAsYouTypeFormatter *)self accruedInput];
    v14 = [accruedInput length] == 1 && v13 != 0;
  }

  return v14;
}

- (id)attemptToFormatAccruedDigits_
{
  v3 = MEMORY[0x277CCACA8];
  nationalNumber = [(_NBAsYouTypeFormatter *)self nationalNumber];
  v26 = [v3 stringWithString:nationalNumber];

  possibleFormats = [(_NBAsYouTypeFormatter *)self possibleFormats];
  v6 = [possibleFormats count];

  if (v6)
  {
    v7 = 0;
    while (1)
    {
      possibleFormats2 = [(_NBAsYouTypeFormatter *)self possibleFormats];
      v9 = [possibleFormats2 objectAtIndexedSubscript:v7];

      pattern = [v9 pattern];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"^(?:%@)$", pattern];
      phoneUtil = [(_NBAsYouTypeFormatter *)self phoneUtil];
      v13 = [phoneUtil matchesByRegex:v26 regex:v11];
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

    nationalPrefixFormattingRule = [v9 nationalPrefixFormattingRule];
    v17 = [nationalPrefixFormattingRule length];

    if (v17)
    {
      nATIONAL_PREFIX_SEPARATORS_PATTERN = [(_NBAsYouTypeFormatter *)self NATIONAL_PREFIX_SEPARATORS_PATTERN];
      nationalPrefixFormattingRule2 = [v9 nationalPrefixFormattingRule];
      nationalPrefixFormattingRule3 = [v9 nationalPrefixFormattingRule];
      v21 = [nATIONAL_PREFIX_SEPARATORS_PATTERN matchesInString:nationalPrefixFormattingRule2 options:0 range:{0, objc_msgSend(nationalPrefixFormattingRule3, "length")}];

      -[_NBAsYouTypeFormatter setShouldAddSpaceAfterNationalPrefix_:](self, "setShouldAddSpaceAfterNationalPrefix_:", [v21 count] != 0);
    }

    else
    {
      [(_NBAsYouTypeFormatter *)self setShouldAddSpaceAfterNationalPrefix_:0];
    }

    phoneUtil2 = [(_NBAsYouTypeFormatter *)self phoneUtil];
    format = [v9 format];
    v24 = [phoneUtil2 replaceStringByRegex:v26 regex:pattern withTemplate:format];

    v15 = [(_NBAsYouTypeFormatter *)self appendNationalNumber_:v24];
  }

  else
  {
LABEL_5:
    v15 = &stru_285461708;
  }

  return v15;
}

- (id)appendNationalNumber_:(id)number_
{
  number_Copy = number_;
  prefixBeforeNationalNumber = [(_NBAsYouTypeFormatter *)self prefixBeforeNationalNumber];
  v6 = [prefixBeforeNationalNumber length];

  v7 = [@" " characterAtIndex:0];
  if (-[_NBAsYouTypeFormatter shouldAddSpaceAfterNationalPrefix](self, "shouldAddSpaceAfterNationalPrefix") && v6 && (-[_NBAsYouTypeFormatter prefixBeforeNationalNumber](self, "prefixBeforeNationalNumber"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 characterAtIndex:v6 - 1], v8, v9 != v7))
  {
    v12 = MEMORY[0x277CCACA8];
    prefixBeforeNationalNumber2 = [(_NBAsYouTypeFormatter *)self prefixBeforeNationalNumber];
    [v12 stringWithFormat:@"%@%@%@", prefixBeforeNationalNumber2, @" ", number_Copy];
  }

  else
  {
    v10 = MEMORY[0x277CCACA8];
    prefixBeforeNationalNumber2 = [(_NBAsYouTypeFormatter *)self prefixBeforeNationalNumber];
    [v10 stringWithFormat:@"%@%@", prefixBeforeNationalNumber2, number_Copy, v15];
  }
  v13 = ;

  return v13;
}

- (unint64_t)getRememberedPosition
{
  if (([(_NBAsYouTypeFormatter *)self ableToFormat]& 1) != 0)
  {
    accruedInputWithoutFormatting = [(_NBAsYouTypeFormatter *)self accruedInputWithoutFormatting];
    currentOutput = [(_NBAsYouTypeFormatter *)self currentOutput];
    if ([(_NBAsYouTypeFormatter *)self positionToRemember])
    {
      v5 = 0;
      v6 = 0;
      do
      {
        if (v6 >= [currentOutput length])
        {
          break;
        }

        v7 = [accruedInputWithoutFormatting characterAtIndex:v5];
        if (v7 == [currentOutput characterAtIndex:v6])
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
  nationalNumber = [(_NBAsYouTypeFormatter *)self nationalNumber];
  v4 = [nationalNumber copy];

  if ([v4 length] < 3)
  {
    v7 = [(_NBAsYouTypeFormatter *)self appendNationalNumber_:v4];
  }

  else
  {
    [(_NBAsYouTypeFormatter *)self getAvailableFormats_:v4];
    attemptToFormatAccruedDigits = [(_NBAsYouTypeFormatter *)self attemptToFormatAccruedDigits];
    if ([attemptToFormatAccruedDigits length])
    {
      v6 = attemptToFormatAccruedDigits;
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
  nationalNumber = [(_NBAsYouTypeFormatter *)self nationalNumber];
  v4 = [nationalNumber copy];

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
    prefixBeforeNationalNumber = ;
  }

  else
  {
    prefixBeforeNationalNumber = [(_NBAsYouTypeFormatter *)self prefixBeforeNationalNumber];
  }

  return prefixBeforeNationalNumber;
}

- (BOOL)isNanpaNumberWithNationalPrefix_
{
  currentMetaData = [(_NBAsYouTypeFormatter *)self currentMetaData];
  countryCode = [currentMetaData countryCode];
  v5 = [countryCode isEqual:&unk_285464A88];

  if (!v5)
  {
    return 0;
  }

  nationalNumber = [(_NBAsYouTypeFormatter *)self nationalNumber];
  v7 = [nationalNumber copy];

  v8 = [v7 characterAtIndex:0] == 49 && objc_msgSend(v7, "characterAtIndex:", 1) != 48 && objc_msgSend(v7, "characterAtIndex:", 1) != 49;
  return v8;
}

- (id)removeNationalPrefixFromNationalNumber_
{
  nationalNumber = [(_NBAsYouTypeFormatter *)self nationalNumber];
  v4 = [nationalNumber copy];

  if ([(_NBAsYouTypeFormatter *)self isNanpaNumberWithNationalPrefix])
  {
    prefixBeforeNationalNumber = [(_NBAsYouTypeFormatter *)self prefixBeforeNationalNumber];
    [prefixBeforeNationalNumber appendFormat:@"1%@", @" "];

    nationalPrefixForParsing = 1;
    [(_NBAsYouTypeFormatter *)self setIsCompleteNumber_:1];
    goto LABEL_13;
  }

  currentMetaData = [(_NBAsYouTypeFormatter *)self currentMetaData];
  nationalPrefixForParsing = [currentMetaData nationalPrefixForParsing];
  if (nationalPrefixForParsing)
  {
    currentMetaData2 = [(_NBAsYouTypeFormatter *)self currentMetaData];
    nationalPrefixForParsing2 = [currentMetaData2 nationalPrefixForParsing];
    v10 = [nationalPrefixForParsing2 length];

    if (!v10)
    {
      nationalPrefixForParsing = 0;
      goto LABEL_13;
    }

    v11 = MEMORY[0x277CCACA8];
    currentMetaData3 = [(_NBAsYouTypeFormatter *)self currentMetaData];
    nationalPrefixForParsing3 = [currentMetaData3 nationalPrefixForParsing];
    currentMetaData = [v11 stringWithFormat:@"^(?:%@)", nationalPrefixForParsing3];

    phoneUtil = [(_NBAsYouTypeFormatter *)self phoneUtil];
    v15 = [phoneUtil matchedStringByRegex:v4 regex:currentMetaData];

    v16 = [v15 nb_safeStringAtIndex:0];
    v17 = v16;
    nationalPrefixForParsing = 0;
    if (v15 && v16)
    {
      if ([v16 length])
      {
        [(_NBAsYouTypeFormatter *)self setIsCompleteNumber_:1];
        nationalPrefixForParsing = [v17 length];
        prefixBeforeNationalNumber2 = [(_NBAsYouTypeFormatter *)self prefixBeforeNationalNumber];
        v19 = [v4 substringWithRange:{0, nationalPrefixForParsing}];
        [prefixBeforeNationalNumber2 appendString:v19];
      }

      else
      {
        nationalPrefixForParsing = 0;
      }
    }
  }

LABEL_13:
  v20 = [v4 substringFromIndex:nationalPrefixForParsing];
  v21 = [v20 mutableCopy];
  [(_NBAsYouTypeFormatter *)self setNationalNumber_:v21];

  v22 = [v4 substringWithRange:{0, nationalPrefixForParsing}];

  return v22;
}

- (BOOL)attemptToExtractIdd_
{
  accruedInputWithoutFormatting = [(_NBAsYouTypeFormatter *)self accruedInputWithoutFormatting];
  v4 = [accruedInputWithoutFormatting copy];

  v5 = MEMORY[0x277CCACA8];
  currentMetaData = [(_NBAsYouTypeFormatter *)self currentMetaData];
  internationalPrefix = [currentMetaData internationalPrefix];
  v8 = [v5 stringWithFormat:@"^(?:\\+|%@)", internationalPrefix];

  phoneUtil = [(_NBAsYouTypeFormatter *)self phoneUtil];
  v10 = [phoneUtil matchedStringByRegex:v4 regex:v8];

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
        prefixBeforeNationalNumber = [(_NBAsYouTypeFormatter *)self prefixBeforeNationalNumber];
        [prefixBeforeNationalNumber appendString:@" "];
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
  nationalNumber = [(_NBAsYouTypeFormatter *)self nationalNumber];
  v4 = [nationalNumber length];

  if (v4)
  {
    phoneUtil = [(_NBAsYouTypeFormatter *)self phoneUtil];
    nationalNumber2 = [(_NBAsYouTypeFormatter *)self nationalNumber];
    v19 = &stru_285461708;
    v7 = [phoneUtil extractCountryCode:nationalNumber2 nationalNumber:&v19];
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

    phoneUtil2 = [(_NBAsYouTypeFormatter *)self phoneUtil];
    v12 = [phoneUtil2 getRegionCodeForCountryCode:v7];

    if ([@"001" isEqualToString:v12])
    {
      v13 = objc_alloc_init(_NBMetadataHelper);
      v14 = [(_NBMetadataHelper *)v13 getMetadataForNonGeographicalRegion:v7];
      [(_NBAsYouTypeFormatter *)self setCurrentMetaData_:v14];
    }

    else
    {
      defaultCountry = [(_NBAsYouTypeFormatter *)self defaultCountry];

      if (v12 == defaultCountry)
      {
LABEL_9:
        prefixBeforeNationalNumber = [(_NBAsYouTypeFormatter *)self prefixBeforeNationalNumber];
        [prefixBeforeNationalNumber appendFormat:@"%@%@", v7, @" "];

        goto LABEL_10;
      }

      v13 = [(_NBAsYouTypeFormatter *)self getMetadataForRegion_:v12];
      [(_NBAsYouTypeFormatter *)self setCurrentMetaData_:v13];
    }

    goto LABEL_9;
  }

  return 0;
}

- (id)normalizeAndAccrueDigitsAndPlusSign_:(id)sign_ rememberPosition:(BOOL)position
{
  positionCopy = position;
  sign_Copy = sign_;
  if ([sign_Copy isEqualToString:@"+"])
  {
    v7 = sign_Copy;
    accruedInputWithoutFormatting = [(_NBAsYouTypeFormatter *)self accruedInputWithoutFormatting];
  }

  else
  {
    phoneUtil = [(_NBAsYouTypeFormatter *)self phoneUtil];
    dIGIT_MAPPINGS = [phoneUtil DIGIT_MAPPINGS];
    v7 = [dIGIT_MAPPINGS objectForKey:sign_Copy];

    if (!v7)
    {
      v7 = &stru_285461708;
      goto LABEL_8;
    }

    accruedInputWithoutFormatting2 = [(_NBAsYouTypeFormatter *)self accruedInputWithoutFormatting];
    [accruedInputWithoutFormatting2 appendString:v7];

    accruedInputWithoutFormatting = [(_NBAsYouTypeFormatter *)self nationalNumber];
  }

  v12 = accruedInputWithoutFormatting;
  [accruedInputWithoutFormatting appendString:v7];

  if (positionCopy)
  {
    accruedInputWithoutFormatting3 = [(_NBAsYouTypeFormatter *)self accruedInputWithoutFormatting];
    -[_NBAsYouTypeFormatter setPositionToRemember_:](self, "setPositionToRemember_:", [accruedInputWithoutFormatting3 length]);
  }

LABEL_8:

  return v7;
}

- (id)inputDigitHelper_:(id)helper_
{
  helper_Copy = helper_;
  formattingTemplate = [(_NBAsYouTypeFormatter *)self formattingTemplate];
  v6 = [formattingTemplate copy];

  v7 = [v6 length];
  if (v7 <= [(_NBAsYouTypeFormatter *)self lastMatchPosition])
  {
    v8 = &stru_285461708;
  }

  else
  {
    v8 = [v6 substringFromIndex:{-[_NBAsYouTypeFormatter lastMatchPosition](self, "lastMatchPosition")}];
  }

  phoneUtil = [(_NBAsYouTypeFormatter *)self phoneUtil];
  v10 = [phoneUtil stringPositionByRegex:v8 regex:@" "];

  if (v10 < 0)
  {
    possibleFormats = [(_NBAsYouTypeFormatter *)self possibleFormats];
    v19 = [possibleFormats count];

    if (v19 == 1)
    {
      [(_NBAsYouTypeFormatter *)self setAbleToFormat_:0];
    }

    [(_NBAsYouTypeFormatter *)self setCurrentFormattingPattern_:&stru_285461708];
    accruedInput = [(_NBAsYouTypeFormatter *)self accruedInput];
  }

  else
  {
    phoneUtil2 = [(_NBAsYouTypeFormatter *)self phoneUtil];
    v12 = [phoneUtil2 stringPositionByRegex:v6 regex:@" "];

    v13 = [v6 rangeOfString:@" "];
    v15 = [v6 stringByReplacingOccurrencesOfString:@" " withString:helper_Copy options:2 range:{v13, v14}];
    v16 = [v15 mutableCopy];
    [(_NBAsYouTypeFormatter *)self setFormattingTemplate_:v16];

    [(_NBAsYouTypeFormatter *)self setLastMatchPosition_:v12];
    accruedInput = [v15 substringWithRange:{0, -[_NBAsYouTypeFormatter lastMatchPosition](self, "lastMatchPosition") + 1}];
  }

  return accruedInput;
}

@end