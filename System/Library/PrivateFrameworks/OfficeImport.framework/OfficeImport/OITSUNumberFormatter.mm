@interface OITSUNumberFormatter
+ (__CFNumberFormatter)createHarmonizedCFNumberFormatterWithLocale:(id)locale style:(int64_t)style;
+ (id)currencyDecimalSeparatorForLocale:(id)locale;
+ (id)currencyGroupingSeparatorForLocale:(id)locale;
+ (id)currencySymbolForCurrencyCode:(id)code locale:(id)locale;
+ (id)currentLocaleCurrencyDecimalSeparator;
+ (id)currentLocaleDecimalSeparator;
+ (id)decimalSeparatorForLocale:(id)locale;
+ (id)defaultCurrencyCodeForLocale:(id)locale;
+ (id)defaultFormatStringForValueType:(int)type;
+ (id)defaultFormatStringForValueType:(int)type negativeStyle:(int)style;
+ (id)displayNameForCurrencyCode:(id)code;
+ (id)formatString:(id)string transformedForNegativeStyle:(int)style;
+ (id)formatterForLocale:(id)locale;
+ (id)groupingSeparatorForLocale:(id)locale;
+ (id)percentSymbolForLocale:(id)locale;
+ (id)stringBySubstitutingCharactersCFNumberFormatterDoesntUnderstand:(id)understand;
+ (id)userVisibleCurrencyCodes;
+ (int)positionOfMinusSignInNumberFormatSubpattern:(id)subpattern;
+ (int)positionOfSymbol:(id)symbol inNumberFormatSubpattern:(id)subpattern;
+ (unint64_t)groupingSizeForLocale:(id)locale;
+ (unsigned)defaultDecimalPlacesForCurrencyCode:(id)code;
+ (void)formatString:(id)string replaceOccurencesOfUnescapedString:(id)unescapedString withString:(id)withString;
+ (void)initialize;
- (BOOL)currencyFromString:(id)string additionalCurrencyCode:(id)code value:(double *)value formatString:(id *)formatString currencyCode:(id *)currencyCode;
- (BOOL)decimalFromString:(id)string value:(double *)value formatString:(id *)formatString;
- (BOOL)fractionFromString:(id)string value:(double *)value;
- (BOOL)p_valueFromString:(id)string formatters:(id)formatters value:(double *)value formatString:(id *)formatString;
- (BOOL)percentageFromString:(id)string value:(double *)value formatString:(id *)formatString;
- (BOOL)scientificFromString:(id)string value:(double *)value formatString:(id *)formatString;
- (OITSUNumberFormatter)initWithLocale:(id)locale;
- (__CFNumberFormatter)p_createHarmonizedCFNumberFormatterOfStyle:(int64_t)style;
- (id)currencyCode;
- (id)currencySymbolForCurrencyCode:(id)code;
- (id)defaultFormatStringForValueType:(int)type;
- (id)defaultFormatStringForValueType:(int)type negativeStyle:(int)style;
- (id)halfWidthCurrencySymbolForCurrencyCode:(id)code;
- (id)p_createDictionaryOfCurrencyFormattersForCurrencies:(id)currencies;
- (id)p_currencyFormatters;
- (id)p_decimalFormatters;
- (id)p_findCurrencySymbolInString:(id)string additionalCurrencyCode:(id)code successfullString:(id *)successfullString currencyCode:(id *)currencyCode;
- (id)p_percentageFormatters;
- (id)p_scientificFormatters;
- (void)dealloc;
- (void)p_loadHarmonizedNumberFormatterSymbols;
- (void)p_numberPreferencesChanged:(id)changed;
@end

@implementation OITSUNumberFormatter

+ (void)initialize
{
  v3 = sNumberingSystemForZeroChar;
  sNumberingSystemForZeroChar = &unk_286F6DDE0;

  v4 = objc_opt_new();
  v5 = sNumberingSystemForLocaleIdentifier;
  sNumberingSystemForLocaleIdentifier = v4;

  v6 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  v7 = gLockTSUNumberOfTrailingZerosInMantissaWhenFormattedAsScientific;
  gLockTSUNumberOfTrailingZerosInMantissaWhenFormattedAsScientific = v6;

  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___OITSUNumberFormatter;
  objc_msgSendSuper2(&v8, sel_initialize);
}

+ (id)stringBySubstitutingCharactersCFNumberFormatterDoesntUnderstand:(id)understand
{
  understandCopy = understand;
  if (stringBySubstitutingCharactersCFNumberFormatterDoesntUnderstand__once != -1)
  {
    +[OITSUNumberFormatter stringBySubstitutingCharactersCFNumberFormatterDoesntUnderstand:];
  }

  v4 = [understandCopy rangeOfCharacterFromSet:stringBySubstitutingCharactersCFNumberFormatterDoesntUnderstand__replacedCharacterSet];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = understandCopy;
  }

  else
  {
    v6 = v4;
    v7 = [understandCopy mutableCopy];
    v8 = [v7 length];
    v9 = v8 - v6;
    [v7 replaceOccurrencesOfString:@"−" withString:@"-" options:0 range:{v6, v8 - v6}];
    [v7 replaceOccurrencesOfString:@"﹣" withString:@"-" options:0 range:{v6, v9}];
    [v7 replaceOccurrencesOfString:@"－" withString:@"-" options:0 range:{v6, v9}];
    [v7 replaceOccurrencesOfString:@"﹢" withString:@"+" options:0 range:{v6, v9}];
    [v7 replaceOccurrencesOfString:@"＋" withString:@"+" options:0 range:{v6, v9}];
    v5 = [MEMORY[0x277CCACA8] stringWithString:v7];
  }

  return v5;
}

void __88__OITSUNumberFormatter_stringBySubstitutingCharactersCFNumberFormatterDoesntUnderstand___block_invoke()
{
  v0 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"−﹣－﹢＋"];
  v1 = stringBySubstitutingCharactersCFNumberFormatterDoesntUnderstand__replacedCharacterSet;
  stringBySubstitutingCharactersCFNumberFormatterDoesntUnderstand__replacedCharacterSet = v0;
}

+ (int)positionOfSymbol:(id)symbol inNumberFormatSubpattern:(id)subpattern
{
  subpatternCopy = subpattern;
  v6 = [subpatternCopy rangeOfString:symbol];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = v6;
    tsu_indexOfFirstNonPrefixCharacterInNumberFormatSubpattern = [subpatternCopy tsu_indexOfFirstNonPrefixCharacterInNumberFormatSubpattern];
    v7 = tsu_indexOfFirstNonPrefixCharacterInNumberFormatSubpattern != 0x7FFFFFFFFFFFFFFFLL && v8 >= tsu_indexOfFirstNonPrefixCharacterInNumberFormatSubpattern;
  }

  return v7;
}

+ (int)positionOfMinusSignInNumberFormatSubpattern:(id)subpattern
{
  v4 = MEMORY[0x277CCACA8];
  subpatternCopy = subpattern;
  v6 = [v4 stringWithFormat:@"-"];
  LODWORD(self) = [self positionOfSymbol:v6 inNumberFormatSubpattern:subpatternCopy];

  return self;
}

+ (id)formatString:(id)string transformedForNegativeStyle:(int)style
{
  stringCopy = string;
  string = [MEMORY[0x277CCAB68] string];
  v8 = string;
  if (!style)
  {
    tsu_positiveSubpatternOfNumberFormatPattern = [stringCopy tsu_positiveSubpatternOfNumberFormatPattern];
    [v8 appendString:tsu_positiveSubpatternOfNumberFormatPattern];

    [v8 appendString:@";"];
    tsu_positiveSubpatternOfNumberFormatPattern2 = [stringCopy tsu_positiveSubpatternOfNumberFormatPattern];
    v16 = [tsu_positiveSubpatternOfNumberFormatPattern2 mutableCopy];

    [self formatString:v16 replaceOccurencesOfUnescapedString:@"-" withString:&stru_286EE1130];
    tsu_negativeSubpatternOfNumberFormatPattern = [stringCopy tsu_negativeSubpatternOfNumberFormatPattern];
    v18 = [OITSUNumberFormatter positionOfMinusSignInNumberFormatSubpattern:tsu_negativeSubpatternOfNumberFormatPattern];

    if (v18)
    {
      [v8 appendString:v16];
      if (v18 != 1)
      {
LABEL_13:

        goto LABEL_14;
      }

      v19 = @"-";
      v20 = v8;
    }

    else
    {
      [v8 appendString:@"-"];
      v20 = v8;
      v19 = v16;
    }

    [v20 appendString:v19];
    goto LABEL_13;
  }

  if (style == 1)
  {
    tsu_positiveSubpatternOfNumberFormatPattern3 = [stringCopy tsu_positiveSubpatternOfNumberFormatPattern];
    [v8 appendString:tsu_positiveSubpatternOfNumberFormatPattern3];

    [v8 appendString:@";"];
    tsu_positiveSubpatternOfNumberFormatPattern4 = [stringCopy tsu_positiveSubpatternOfNumberFormatPattern];
    v11 = [tsu_positiveSubpatternOfNumberFormatPattern4 mutableCopy];

    [self formatString:v11 replaceOccurencesOfUnescapedString:@"-" withString:&stru_286EE1130];
    v12 = v8;
    v13 = v11;
LABEL_9:
    [v12 appendString:v13];

    goto LABEL_14;
  }

  if ((style & 0xFFFFFFFE) == 2)
  {
    tsu_positiveSubpatternOfNumberFormatPattern5 = [stringCopy tsu_positiveSubpatternOfNumberFormatPattern];
    [v8 appendString:tsu_positiveSubpatternOfNumberFormatPattern5];

    [v8 appendString:@";"];
    tsu_positiveSubpatternOfNumberFormatPattern6 = [stringCopy tsu_positiveSubpatternOfNumberFormatPattern];
    v11 = [tsu_positiveSubpatternOfNumberFormatPattern6 mutableCopy];

    [self formatString:v11 replaceOccurencesOfUnescapedString:@"-" withString:&stru_286EE1130];
    objc_msgSend(v8, "appendString:", @"(");
    [v8 appendString:v11];
    v13 = @"");
    v12 = v8;
    goto LABEL_9;
  }

  [string appendString:stringCopy];
LABEL_14:

  return v8;
}

+ (void)formatString:(id)string replaceOccurencesOfUnescapedString:(id)unescapedString withString:(id)withString
{
  stringCopy = string;
  unescapedStringCopy = unescapedString;
  withStringCopy = withString;
  tsu_newRangesOfEscapedCharactersInNumberFormatPattern = [stringCopy tsu_newRangesOfEscapedCharactersInNumberFormatPattern];
  v10 = [stringCopy length];
  if ([tsu_newRangesOfEscapedCharactersInNumberFormatPattern count])
  {
    v11 = [tsu_newRangesOfEscapedCharactersInNumberFormatPattern objectAtIndex:0];
    [stringCopy replaceOccurrencesOfString:unescapedStringCopy withString:withStringCopy options:0 range:{0, objc_msgSend(v11, "rangeValue")}];

    if ([tsu_newRangesOfEscapedCharactersInNumberFormatPattern count] >= 2)
    {
      v12 = 1;
      do
      {
        v13 = [stringCopy length];
        v14 = [tsu_newRangesOfEscapedCharactersInNumberFormatPattern objectAtIndex:v12 - 1];
        rangeValue = [v14 rangeValue];
        v17 = v16;

        v18 = [tsu_newRangesOfEscapedCharactersInNumberFormatPattern objectAtIndex:v12];
        rangeValue2 = [v18 rangeValue];

        [stringCopy replaceOccurrencesOfString:unescapedStringCopy withString:withStringCopy options:0 range:{v17 + rangeValue - v10 + v13, rangeValue2 - (v17 + rangeValue)}];
        ++v12;
      }

      while (v12 < [tsu_newRangesOfEscapedCharactersInNumberFormatPattern count]);
    }

    lastObject = [tsu_newRangesOfEscapedCharactersInNumberFormatPattern lastObject];
    rangeValue3 = [lastObject rangeValue];
    v23 = v22;

    v24 = rangeValue3 + v23;
    v25 = [stringCopy length] - (rangeValue3 + v23);
  }

  else
  {
    v25 = [stringCopy length];
    v24 = 0;
  }

  [stringCopy replaceOccurrencesOfString:unescapedStringCopy withString:withStringCopy options:0 range:{v24, v25}];
}

+ (id)displayNameForCurrencyCode:(id)code
{
  codeCopy = code;
  v5 = [self formatterForLocale:0];
  v6 = [v5 displayNameForCurrencyCode:codeCopy];

  return v6;
}

+ (id)currencySymbolForCurrencyCode:(id)code locale:(id)locale
{
  codeCopy = code;
  v7 = [self formatterForLocale:locale];
  v8 = [v7 currencySymbolForCurrencyCode:codeCopy];

  return v8;
}

+ (unsigned)defaultDecimalPlacesForCurrencyCode:(id)code
{
  defaultFractionDigits = 0;
  v7 = 0.0;
  if (CFNumberFormatterGetDecimalInfoForCurrencyCode(code, &defaultFractionDigits, &v7))
  {
    return defaultFractionDigits & ~(defaultFractionDigits >> 31);
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[OITSUNumberFormatter defaultDecimalPlacesForCurrencyCode:]"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUNumberFormatter.m"];
    [OITSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:1376 isFatal:0 description:"Couldn't get decimal info for a currency code."];

    +[OITSUAssertionHandler logBacktraceThrottled];
    LOWORD(v3) = 0;
  }

  return v3;
}

+ (id)defaultCurrencyCodeForLocale:(id)locale
{
  v3 = [self formatterForLocale:locale];
  currencyCode = [v3 currencyCode];

  return currencyCode;
}

+ (id)currentLocaleDecimalSeparator
{
  v2 = +[OITSULocale currentLocale];
  decimalSeparator = [v2 decimalSeparator];

  return decimalSeparator;
}

+ (id)currentLocaleCurrencyDecimalSeparator
{
  v2 = +[OITSULocale currentLocale];
  currencyDecimalSeparator = [v2 currencyDecimalSeparator];

  return currencyDecimalSeparator;
}

+ (id)defaultFormatStringForValueType:(int)type negativeStyle:(int)style
{
  v4 = *&style;
  v5 = *&type;
  v6 = [self formatterForLocale:0];
  v7 = [v6 defaultFormatStringForValueType:v5 negativeStyle:v4];

  return v7;
}

+ (id)defaultFormatStringForValueType:(int)type
{
  v3 = *&type;
  v4 = [self formatterForLocale:0];
  v5 = [v4 defaultFormatStringForValueType:v3];

  return v5;
}

+ (id)decimalSeparatorForLocale:(id)locale
{
  v3 = [self formatterForLocale:locale];
  decimalSeparator = [v3 decimalSeparator];

  return decimalSeparator;
}

+ (id)groupingSeparatorForLocale:(id)locale
{
  v3 = [self formatterForLocale:locale];
  groupingSeparator = [v3 groupingSeparator];

  return groupingSeparator;
}

+ (id)currencyDecimalSeparatorForLocale:(id)locale
{
  v3 = [self formatterForLocale:locale];
  currencyDecimalSeparator = [v3 currencyDecimalSeparator];

  return currencyDecimalSeparator;
}

+ (id)currencyGroupingSeparatorForLocale:(id)locale
{
  v3 = [self formatterForLocale:locale];
  currencyGroupingSeparator = [v3 currencyGroupingSeparator];

  return currencyGroupingSeparator;
}

+ (id)percentSymbolForLocale:(id)locale
{
  v3 = [self formatterForLocale:locale];
  percentSymbol = [v3 percentSymbol];

  return percentSymbol;
}

+ (unint64_t)groupingSizeForLocale:(id)locale
{
  v3 = [self formatterForLocale:locale];
  groupingSize = [v3 groupingSize];

  return groupingSize;
}

+ (id)userVisibleCurrencyCodes
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"SFTDefaultsShowCompleteCurrencyList"];

  if (v3)
  {
    v4 = CFLocaleCopyCommonISOCurrencyCodes();
  }

  else
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithObjects:{@"AUD", @"CAD", @"HKD", @"SGD", @"TWD", @"USD", @"EUR", @"CHF", @"SEK", @"DKK", @"NOK", @"MXN", @"GBP", @"BRL", @"INR", @"KRW", @"JPY", @"CNY", @"IDR", @"RUB", @"TRY", @"THB", @"PLN", @"ZAR", @"ARS", @"SAR", @"AED", @"EGP", @"HRK", @"CZK", @"ILS", @"HUF", @"RON", @"UAH", @"VND", @"MYR", 0}];
    v5 = +[OITSUNumberFormatter currentLocaleCurrencyCode];
    if (([v4 containsObject:v5] & 1) == 0)
    {
      [v4 insertObject:v5 atIndex:0];
    }
  }

  return v4;
}

+ (__CFNumberFormatter)createHarmonizedCFNumberFormatterWithLocale:(id)locale style:(int64_t)style
{
  v5 = [OITSUNumberFormatter formatterForLocale:locale];
  v6 = [v5 p_createHarmonizedCFNumberFormatterOfStyle:style];

  return v6;
}

+ (id)formatterForLocale:(id)locale
{
  localeCopy = locale;
  if (localeCopy)
  {
    currentThread = [MEMORY[0x277CCACC8] currentThread];
    threadDictionary = [currentThread threadDictionary];
    v7 = TSUNumberFormatterThreadDictionaryKeyForLocale(localeCopy);
    v8 = [threadDictionary objectForKey:v7];
    if (!v8)
    {
      v8 = [[self alloc] initWithLocale:localeCopy];
      [threadDictionary setObject:v8 forKey:v7];
      if ([OITSULocale localeIsAutoUpdating:localeCopy])
      {
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __52__OITSUNumberFormatter_Private__formatterForLocale___block_invoke;
        v18[3] = &unk_2799C6208;
        v9 = currentThread;
        v19 = v9;
        v10 = v8;
        v20 = v10;
        v11 = TSURegisterLocaleChangeObserver(v18);
        [threadDictionary setObject:v11 forKey:@"TSUNumberFormatterThreadDictionaryLocaleObserverKey"];
        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        v13 = *MEMORY[0x277CCA6F8];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __52__OITSUNumberFormatter_Private__formatterForLocale___block_invoke_2;
        v16[3] = &unk_2799C6230;
        v8 = v10;
        v17 = v8;
        v14 = [defaultCenter addObserverForName:v13 object:v9 queue:0 usingBlock:v16];

        [threadDictionary setObject:v14 forKey:@"TSUNumberFormatterThreadDictionaryExitObserverKey"];
      }
    }
  }

  else
  {
    currentThread = +[OITSULocale currentLocale];
    threadDictionary = [currentThread locale];
    v8 = [self formatterForLocale:threadDictionary];
  }

  return v8;
}

void __52__OITSUNumberFormatter_Private__formatterForLocale___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [MEMORY[0x277CCACC8] currentThread];
  v4 = *(a1 + 32);

  if (v3 == v4)
  {
    [*(a1 + 40) p_numberPreferencesChanged:v5];
  }

  else if (([*(a1 + 32) isFinished] & 1) == 0)
  {
    [*(a1 + 40) performSelector:sel_p_numberPreferencesChanged_ onThread:*(a1 + 32) withObject:v5 waitUntilDone:0];
  }
}

- (OITSUNumberFormatter)initWithLocale:(id)locale
{
  localeCopy = locale;
  v62.receiver = self;
  v62.super_class = OITSUNumberFormatter;
  v5 = [(OITSUNumberFormatter *)&v62 init];
  if (v5)
  {
    if (!localeCopy)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUNumberFormatter(Private) initWithLocale:]"];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUNumberFormatter.m"];
      [OITSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:1527 isFatal:1 description:"TSUNumberFormatter cannot be initialized without a locale. Please check comments near this assertion or <rdar://problem/23557988> for details."];

      TSUCrash("TSUNumberFormatter cannot be initialized without a locale. Please check comments near this assertion or <rdar://problem/23557988> for details.", v9, v10, v11, v12, v13, v14, v15, v62.receiver);
    }

    v6 = localeCopy;
    locale = v5->_locale;
    v5->_locale = v6;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    currencyCodeToHalfWidthSymbolMap = v5->_currencyCodeToHalfWidthSymbolMap;
    v5->_currencyCodeToHalfWidthSymbolMap = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
    currencyCodeToSymbolMap = v5->_currencyCodeToSymbolMap;
    v5->_currencyCodeToSymbolMap = v19;

    v21 = [(OITSUNumberFormatter *)v5 p_createHarmonizedCFNumberFormatterOfStyle:2];
    v22 = [(__CFString *)CFNumberFormatterGetFormat(v21) copy];
    currencyString = v5->_currencyString;
    v5->_currencyString = v22;

    v24 = CFNumberFormatterCopyProperty(v21, *MEMORY[0x277CBEF00]);
    currencyDecimalSeparator = v5->_currencyDecimalSeparator;
    v5->_currencyDecimalSeparator = v24;

    v26 = CFNumberFormatterCopyProperty(v21, *MEMORY[0x277CBEF08]);
    currencyGroupingSeparator = v5->_currencyGroupingSeparator;
    v5->_currencyGroupingSeparator = v26;

    CFRelease(v21);
    v28 = [(OITSUNumberFormatter *)v5 p_createHarmonizedCFNumberFormatterOfStyle:3];
    v29 = CFNumberFormatterCopyProperty(v28, *MEMORY[0x277CBEFB0]);
    percentSymbol = v5->_percentSymbol;
    v5->_percentSymbol = v29;

    v31 = [(__CFString *)CFNumberFormatterGetFormat(v28) copy];
    percentageString = v5->_percentageString;
    v5->_percentageString = v31;

    CFRelease(v28);
    v33 = [(OITSUNumberFormatter *)v5 p_createHarmonizedCFNumberFormatterOfStyle:0];
    CFNumberFormatterSetFormat(v33, @"#.##E+00");
    v34 = [(__CFString *)CFNumberFormatterGetFormat(v33) copy];
    scientificString = v5->_scientificString;
    v5->_scientificString = v34;

    CFRelease(v33);
    v36 = [(OITSUNumberFormatter *)v5 p_createHarmonizedCFNumberFormatterOfStyle:1];
    v37 = [(__CFString *)CFNumberFormatterGetFormat(v36) copy];
    decimalString = v5->_decimalString;
    v5->_decimalString = v37;

    v39 = CFNumberFormatterCopyProperty(v36, *MEMORY[0x277CBEF18]);
    decimalSeparator = v5->_decimalSeparator;
    v5->_decimalSeparator = v39;

    v41 = CFNumberFormatterCopyProperty(v36, *MEMORY[0x277CBEF28]);
    groupingSeparator = v5->_groupingSeparator;
    v5->_groupingSeparator = v41;

    v43 = CFNumberFormatterCopyProperty(v36, *MEMORY[0x277CBEF30]);
    v5->_groupingSize = [v43 unsignedIntegerValue];
    CFRelease(v36);
    v44 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
    transformedDecimalStrings = v5->_transformedDecimalStrings;
    v5->_transformedDecimalStrings = v44;

    v46 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
    transformedCurrencyStrings = v5->_transformedCurrencyStrings;
    v5->_transformedCurrencyStrings = v46;

    v48 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
    transformedPercentageStrings = v5->_transformedPercentageStrings;
    v5->_transformedPercentageStrings = v48;

    v50 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
    transformedScientificStrings = v5->_transformedScientificStrings;
    v5->_transformedScientificStrings = v50;

    for (i = 0; i != 5; ++i)
    {
      v53 = v5->_transformedDecimalStrings;
      v54 = [OITSUNumberFormatter formatString:v5->_decimalString transformedForNegativeStyle:i];
      [(NSMutableArray *)v53 insertObject:v54 atIndex:i];

      v55 = v5->_transformedCurrencyStrings;
      v56 = [OITSUNumberFormatter formatString:v5->_currencyString transformedForNegativeStyle:i];
      [(NSMutableArray *)v55 insertObject:v56 atIndex:i];

      v57 = v5->_transformedPercentageStrings;
      v58 = [OITSUNumberFormatter formatString:v5->_percentageString transformedForNegativeStyle:i];
      [(NSMutableArray *)v57 insertObject:v58 atIndex:i];

      v59 = v5->_transformedScientificStrings;
      v60 = [OITSUNumberFormatter formatString:v5->_scientificString transformedForNegativeStyle:i];
      [(NSMutableArray *)v59 insertObject:v60 atIndex:i];
    }

    v5->_fractionFormatter = [(OITSUNumberFormatter *)v5 p_createHarmonizedCFNumberFormatterOfStyle:1];
  }

  return v5;
}

- (void)dealloc
{
  fractionFormatter = self->_fractionFormatter;
  if (fractionFormatter)
  {
    CFRelease(fractionFormatter);
    self->_fractionFormatter = 0;
  }

  v4.receiver = self;
  v4.super_class = OITSUNumberFormatter;
  [(OITSUNumberFormatter *)&v4 dealloc];
}

- (__CFNumberFormatter)p_createHarmonizedCFNumberFormatterOfStyle:(int64_t)style
{
  v5 = self->_locale;
  v6 = [OITSULocale localeIsAutoUpdating:v5];
  if (!v6)
  {
    v7 = TSULocaleNSLocaleWithHarmonizedNumberingSystem(v5);

    v5 = v7;
  }

  v8 = CFNumberFormatterCreate(0, v5, style);
  if (v8)
  {
    if (v6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUNumberFormatter(Private) p_createHarmonizedCFNumberFormatterOfStyle:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUNumberFormatter.m"];
    [OITSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:1616 isFatal:0 description:"invalid nil value for '%{public}s'", "formatter"];

    +[OITSUAssertionHandler logBacktraceThrottled];
    if (v6)
    {
      goto LABEL_13;
    }
  }

  [(OITSUNumberFormatter *)self p_loadHarmonizedNumberFormatterSymbols];
  v11 = TSUNumberFormatterNumberingSystemForFormatter(v8);
  harmonizedNumberFormatterSymbols = self->_harmonizedNumberFormatterSymbols;
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"symbol-%@-decimal", v11];
  v14 = [(OITSULocaleStructuredDictionary *)harmonizedNumberFormatterSymbols objectForKey:v13 locale:v5];

  if (v14)
  {
    v15 = *MEMORY[0x277CBEF18];
    v16 = self->_harmonizedNumberFormatterSymbols;
    [MEMORY[0x277CCACA8] stringWithFormat:@"symbol-%@-decimal", v11];
    v18 = v17 = style;
    v19 = [(OITSULocaleStructuredDictionary *)v16 objectForKey:v18 locale:v5];
    CFNumberFormatterSetProperty(v8, v15, v19);

    v20 = *MEMORY[0x277CBEF28];
    v21 = self->_harmonizedNumberFormatterSymbols;
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"symbol-%@-group", v11];
    v23 = [(OITSULocaleStructuredDictionary *)v21 objectForKey:v22 locale:v5];
    CFNumberFormatterSetProperty(v8, v20, v23);

    v24 = *MEMORY[0x277CBEF00];
    v25 = self->_harmonizedNumberFormatterSymbols;
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"symbol-%@-decimal", v11];
    v27 = [(OITSULocaleStructuredDictionary *)v25 objectForKey:v26 locale:v5];
    CFNumberFormatterSetProperty(v8, v24, v27);

    style = v17;
    v28 = *MEMORY[0x277CBEF08];
    v29 = self->_harmonizedNumberFormatterSymbols;
    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"symbol-%@-group", v11];
    v31 = [(OITSULocaleStructuredDictionary *)v29 objectForKey:v30 locale:v5];
    CFNumberFormatterSetProperty(v8, v28, v31);

    v32 = *MEMORY[0x277CBEFB0];
    v33 = self->_harmonizedNumberFormatterSymbols;
    v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"symbol-%@-percentSign", v11];
    v35 = [(OITSULocaleStructuredDictionary *)v33 objectForKey:v34 locale:v5];
    CFNumberFormatterSetProperty(v8, v32, v35);

    v36 = *MEMORY[0x277CBEFB8];
    v37 = self->_harmonizedNumberFormatterSymbols;
    v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"symbol-%@-plusSign", v11];
    v39 = [(OITSULocaleStructuredDictionary *)v37 objectForKey:v38 locale:v5];
    CFNumberFormatterSetProperty(v8, v36, v39);

    v40 = *MEMORY[0x277CBEF70];
    v41 = self->_harmonizedNumberFormatterSymbols;
    v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"symbol-%@-minusSign", v11];
    v43 = [(OITSULocaleStructuredDictionary *)v41 objectForKey:v42 locale:v5];
    CFNumberFormatterSetProperty(v8, v40, v43);

    v44 = *MEMORY[0x277CBEF20];
    v45 = self->_harmonizedNumberFormatterSymbols;
    v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"symbol-%@-exponential", v11];
    v47 = [(OITSULocaleStructuredDictionary *)v45 objectForKey:v46 locale:v5];
    CFNumberFormatterSetProperty(v8, v44, v47);

    v48 = *MEMORY[0x277CBEFA8];
    v49 = self->_harmonizedNumberFormatterSymbols;
    v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"symbol-%@-perMille", v11];
    v51 = [(OITSULocaleStructuredDictionary *)v49 objectForKey:v50 locale:v5];
    CFNumberFormatterSetProperty(v8, v48, v51);

    v52 = *MEMORY[0x277CBEF38];
    v53 = self->_harmonizedNumberFormatterSymbols;
    v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"symbol-%@-infinity", v11];
    v55 = [(OITSULocaleStructuredDictionary *)v53 objectForKey:v54 locale:v5];
    CFNumberFormatterSetProperty(v8, v52, v55);

    v56 = *MEMORY[0x277CBEF80];
    v57 = self->_harmonizedNumberFormatterSymbols;
    v58 = [MEMORY[0x277CCACA8] stringWithFormat:@"symbol-%@-nan", v11];
    v59 = [(OITSULocaleStructuredDictionary *)v57 objectForKey:v58 locale:v5];
    CFNumberFormatterSetProperty(v8, v56, v59);
  }

  v60 = self->_harmonizedNumberFormatterSymbols;
  v61 = [MEMORY[0x277CCACA8] stringWithFormat:@"format-%@-decimalFormat", v11];
  v62 = [(OITSULocaleStructuredDictionary *)v60 objectForKey:v61 locale:v5];

  if (v62 && style <= 4)
  {
    v63 = self->_harmonizedNumberFormatterSymbols;
    v64 = [MEMORY[0x277CCACA8] stringWithFormat:off_2799C62C0[style], v11];
    v65 = [(OITSULocaleStructuredDictionary *)v63 objectForKey:v64 locale:v5];
    CFNumberFormatterSetFormat(v8, v65);
  }

LABEL_13:
  return v8;
}

- (void)p_numberPreferencesChanged:(id)changed
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v5 = [threadDictionary objectForKey:@"TSUNumberFormatterThreadDictionaryKey"];
  if (v5 != self)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUNumberFormatter(Private) p_numberPreferencesChanged:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUNumberFormatter.m"];
    [OITSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:1703 isFatal:0 description:"Registered wrong date formatter for date preference change notification"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  [threadDictionary removeObjectForKey:@"TSUNumberFormatterThreadDictionaryKey"];
  v8 = [threadDictionary objectForKey:@"TSUNumberFormatterThreadDictionaryLocaleObserverKey"];
  TSURemoveLocaleChangeObserver(v8);

  [threadDictionary removeObjectForKey:@"TSUNumberFormatterThreadDictionaryLocaleObserverKey"];
  v9 = [threadDictionary objectForKey:@"TSUNumberFormatterThreadDictionaryExitObserverKey"];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:v9];

  [threadDictionary removeObjectForKey:@"TSUNumberFormatterThreadDictionaryExitObserverKey"];
}

- (BOOL)decimalFromString:(id)string value:(double *)value formatString:(id *)formatString
{
  stringCopy = string;
  p_decimalFormatters = [(OITSUNumberFormatter *)self p_decimalFormatters];
  LOBYTE(formatString) = [(OITSUNumberFormatter *)self p_valueFromString:stringCopy formatters:p_decimalFormatters value:value formatString:formatString];

  return formatString;
}

- (BOOL)currencyFromString:(id)string additionalCurrencyCode:(id)code value:(double *)value formatString:(id *)formatString currencyCode:(id *)currencyCode
{
  codeCopy = code;
  v51 = 0;
  v52 = 0;
  v14 = [(OITSUNumberFormatter *)self p_findCurrencySymbolInString:string additionalCurrencyCode:codeCopy successfullString:&v52 currencyCode:&v51];
  v15 = v52;
  v16 = v51;
  v17 = v16;
  v18 = 0;
  if (v14 && v16)
  {
    valueCopy = value;
    p_currencyFormatters = [(OITSUNumberFormatter *)self p_currencyFormatters];
    v19 = [p_currencyFormatters objectForKeyedSubscript:v17];
    if (!v19)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUNumberFormatter(Private) currencyFromString:additionalCurrencyCode:value:formatString:currencyCode:]"];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUNumberFormatter.m"];
      [OITSUAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:1741 isFatal:1 description:v17, self->_locale];

      TSUCrash("No currency formatters found for currencyCode:%{public}@ locale:%{public}@", v22, v23, v24, v25, v26, v27, v28, v17);
    }

    v29 = [(OITSUNumberFormatter *)self p_valueFromString:v15 formatters:v19 value:valueCopy formatString:formatString];
    v18 = v29;
    if (!codeCopy || v29)
    {
      goto LABEL_15;
    }

    if (self->_additionalCurrencyCode)
    {
      if ([codeCopy isEqualToString:?])
      {
LABEL_12:
        formatStringCopy = formatString;
        v36 = self->_additionalCurrencyCode;

        v37 = [(NSDictionary *)self->_additionalCurrencyCodeFormatters objectForKey:self->_additionalCurrencyCode];

        if (!v37)
        {
          v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUNumberFormatter(Private) currencyFromString:additionalCurrencyCode:value:formatString:currencyCode:]"];
          v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUNumberFormatter.m"];
          [OITSUAssertionHandler handleFailureInFunction:v38 file:v39 lineNumber:1764 isFatal:1 description:self->_additionalCurrencyCode, self->_locale];

          TSUCrash("No currency formatters found for additional currencyCode:%{public}@ locale:%{public}@", v40, v41, v42, v43, v44, v45, v46, self->_additionalCurrencyCode);
        }

        v18 = [(OITSUNumberFormatter *)self p_valueFromString:v15 formatters:v37 value:valueCopy formatString:formatStringCopy];
        v17 = v36;
        v19 = v37;
LABEL_15:

        goto LABEL_16;
      }

      additionalCurrencyCode = self->_additionalCurrencyCode;
    }

    else
    {
      additionalCurrencyCode = 0;
    }

    self->_additionalCurrencyCode = 0;

    additionalCurrencyCodeFormatters = self->_additionalCurrencyCodeFormatters;
    self->_additionalCurrencyCodeFormatters = 0;

    objc_storeStrong(&self->_additionalCurrencyCode, code);
    v32 = [MEMORY[0x277CBEA60] arrayWithObject:self->_additionalCurrencyCode];
    v33 = [(OITSUNumberFormatter *)self p_createDictionaryOfCurrencyFormattersForCurrencies:v32];
    v34 = self->_additionalCurrencyCodeFormatters;
    self->_additionalCurrencyCodeFormatters = v33;

    goto LABEL_12;
  }

LABEL_16:
  if (currencyCode)
  {
    if (v18)
    {
      v47 = v17;
    }

    else
    {
      v47 = 0;
    }

    *currencyCode = v47;
  }

  return v18;
}

- (BOOL)percentageFromString:(id)string value:(double *)value formatString:(id *)formatString
{
  stringCopy = string;
  p_percentageFormatters = [(OITSUNumberFormatter *)self p_percentageFormatters];
  LOBYTE(formatString) = [(OITSUNumberFormatter *)self p_valueFromString:stringCopy formatters:p_percentageFormatters value:value formatString:formatString];

  return formatString;
}

- (BOOL)scientificFromString:(id)string value:(double *)value formatString:(id *)formatString
{
  stringCopy = string;
  p_scientificFormatters = [(OITSUNumberFormatter *)self p_scientificFormatters];
  LOBYTE(formatString) = [(OITSUNumberFormatter *)self p_valueFromString:stringCopy formatters:p_scientificFormatters value:value formatString:formatString];

  return formatString;
}

- (BOOL)fractionFromString:(id)string value:(double *)value
{
  stringCopy = string;
  v7 = [stringCopy rangeOfString:@"/"];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL || v8 == 0)
  {
    v12 = 0;
    if (!value)
    {
LABEL_26:
      v10 = 0;
      goto LABEL_41;
    }
  }

  else
  {
    v11 = v7;
    v12 = [stringCopy substringWithRange:{0, v7}];
    v13 = v11 + 1;
    if (v13 < [stringCopy length])
    {
      v14 = [stringCopy substringWithRange:{v13, objc_msgSend(stringCopy, "length") - v13}];
      whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v16 = [v12 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
      v17 = [v14 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
      v18 = [v16 rangeOfString:@" "];
      if (v18 == 0x7FFFFFFFFFFFFFFFLL || v19 == 0)
      {
        v27 = 0;
        v35 = 0;
        v36 = 0;
        v38 = 0.0;
        v39 = 0.0;
        v37 = 0.0;
      }

      else
      {
        v26 = v18;
        v27 = [v16 substringWithRange:{0, v18}];
        v28 = v26 + 1;
        if (v28 >= [v16 length])
        {
          v10 = 0;
          if (value)
          {
            *value = 0.0;
          }

          goto LABEL_40;
        }

        v34 = v17;
        v29 = [v16 substringWithRange:{v28, objc_msgSend(v16, "length") - v28}];
        v21 = [v27 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
        v36 = v29;
        v30 = [v29 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
        v38 = 0.0;
        v39 = 0.0;
        v37 = 0.0;
        v35 = v30;
        if (v21)
        {
          v31 = v30;
          if (!TSUImprovedCFNumberFormatterGetValueFromString(self->_fractionFormatter, v21, &v37) || (v22 = floor(v37), vabdd_f64(v37, v22) > 0.00001))
          {
            v10 = 0;
            v25 = 0.0;
            v17 = v34;
            if (!value)
            {
              goto LABEL_39;
            }

            goto LABEL_38;
          }

          ValueFromString = TSUImprovedCFNumberFormatterGetValueFromString(self->_fractionFormatter, v31, &v39);
          v17 = v34;
          if ((ValueFromString & 1) == 0)
          {
LABEL_37:
            v10 = 0;
            v25 = 0.0;
            if (!value)
            {
LABEL_39:

LABEL_40:
              goto LABEL_41;
            }

LABEL_38:
            *value = v25;
            goto LABEL_39;
          }

LABEL_17:
          if ((TSUImprovedCFNumberFormatterGetValueFromString(self->_fractionFormatter, v17, &v38) & 1) != 0 && v38 != 0.0)
          {
            v23 = v39;
            if (v22 < 0.0)
            {
              v23 = -v39;
              v39 = -v39;
            }

            v24 = v22 + v23 / v38;
            if (__fpclassifyd(v24) != 2 && __fpclassifyd(v24) != 1)
            {
              if (!value)
              {
                v10 = 1;
                goto LABEL_39;
              }

              v25 = v22 + v39 / v38;
              v10 = 1;
              goto LABEL_38;
            }
          }

          goto LABEL_37;
        }

        v17 = v34;
      }

      v21 = 0;
      if ((TSUImprovedCFNumberFormatterGetValueFromString(self->_fractionFormatter, v16, &v39) & 1) == 0)
      {
        goto LABEL_37;
      }

      v22 = 0.0;
      goto LABEL_17;
    }

    if (!value)
    {
      goto LABEL_26;
    }
  }

  v10 = 0;
  *value = 0.0;
LABEL_41:

  return v10;
}

- (BOOL)p_valueFromString:(id)string formatters:(id)formatters value:(double *)value formatString:(id *)formatString
{
  stringCopy = string;
  formattersCopy = formatters;
  v11 = formattersCopy;
  if (!formattersCopy)
  {
    v15 = 0;
    if (!formatString)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v12 = [formattersCopy count];
  v13 = objc_opt_class();
  objc_sync_enter(v13);
  if (v12)
  {
    v14 = 0;
    v15 = 1;
    while (1)
    {
      v16 = [v11 objectAtIndex:v14];
      if (TSUImprovedCFNumberFormatterGetValueFromString(v16, stringCopy, value))
      {
        break;
      }

      v15 = ++v14 < v12;
      if (v12 == v14)
      {
        goto LABEL_6;
      }
    }

    if (formatString)
    {
      *formatString = CFNumberFormatterGetFormat(v16);
    }
  }

  else
  {
LABEL_6:
    v15 = 0;
  }

  objc_sync_exit(v13);

  if (formatString)
  {
LABEL_12:
    if (!v15)
    {
      *formatString = 0;
    }
  }

LABEL_14:

  return v15;
}

- (id)p_findCurrencySymbolInString:(id)string additionalCurrencyCode:(id)code successfullString:(id *)successfullString currencyCode:(id *)currencyCode
{
  stringCopy = string;
  codeCopy = code;
  v12 = [stringCopy length];
  if (v12)
  {
    v13 = v12;
    successfullStringCopy = successfullString;
    obj = objc_opt_class();
    objc_sync_enter(obj);
    v14 = 8;
    v49 = v13;
    if (v13 < 8)
    {
      v14 = v13;
    }

    v50 = v14;
    v15 = TSUCurrencyCodesForLocale(self->_locale, codeCopy);
    v16 = [v15 count];
    v39 = codeCopy;
    if (v16)
    {
      v43 = v16;
      currencyCodeCopy = currencyCode;
      v47 = 0;
      v48 = 0;
      v46 = 0;
      v17 = 0;
      v45 = v13 - v50;
      selfCopy = self;
      while (1)
      {
        v18 = v15;
        v19 = [v15 objectAtIndex:{v17, v39}];
        v20 = [(OITSUNumberFormatter *)self currencySymbolForCurrencyCode:v19];
        v21 = [v20 stringByReplacingOccurrencesOfString:@"\u200F" withString:&stru_286EE1130];
        v22 = [stringCopy rangeOfString:v21 options:0 range:{0, v50}];
        v24 = v23;
        v26 = 0;
        v25 = 0x7FFFFFFFFFFFFFFFLL;
        if (v49 >= 1)
        {
          v25 = [stringCopy rangeOfString:v21 options:0 range:{v45, v50}];
        }

        if (v22 != 0x7FFFFFFFFFFFFFFFLL || v25 != 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v22 != 0x7FFFFFFFFFFFFFFFLL && v24 > v48)
          {
            break;
          }

          if (v25 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v24 = v26;
            if (v26 > v48)
            {
              break;
            }
          }
        }

        v27 = [(OITSUNumberFormatter *)self halfWidthCurrencySymbolForCurrencyCode:v19];
        v28 = [stringCopy rangeOfString:v27 options:0 range:{0, v50}];
        v30 = v29;
        v24 = 0;
        v31 = 0x7FFFFFFFFFFFFFFFLL;
        if (v49 >= 1)
        {
          v31 = [stringCopy rangeOfString:v27 options:0 range:{v45, v50}];
          v24 = v32;
        }

        if (v28 != 0x7FFFFFFFFFFFFFFFLL || v31 != 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v28 != 0x7FFFFFFFFFFFFFFFLL && v30 > v48)
          {
            v24 = v30;
            v31 = v28;
LABEL_25:
            v33 = [stringCopy stringByReplacingCharactersInRange:v31 withString:{v24, v21}];

LABEL_26:
            v34 = v21;

            if (successfullStringCopy)
            {
              v35 = v33;
              *successfullStringCopy = v33;
            }

            if (currencyCodeCopy)
            {
              v36 = v19;
              *currencyCodeCopy = v19;
            }

            v47 = v34;
            v48 = v24;
            v46 = v33;
            goto LABEL_31;
          }

          if (v31 != 0x7FFFFFFFFFFFFFFFLL && v24 > v48)
          {
            goto LABEL_25;
          }
        }

LABEL_31:
        ++v17;
        self = selfCopy;
        v15 = v18;
        if (v43 == v17)
        {
          goto LABEL_35;
        }
      }

      v33 = stringCopy;
      v27 = v46;
      goto LABEL_26;
    }

    v46 = 0;
    v47 = 0;
LABEL_35:

    objc_sync_exit(obj);
    codeCopy = v39;
    v37 = v47;
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

- (void)p_loadHarmonizedNumberFormatterSymbols
{
  if (!self->_harmonizedNumberFormatterSymbols)
  {
    obj = self;
    objc_sync_enter(obj);
    if (!self->_harmonizedNumberFormatterSymbols)
    {
      locale = obj->_locale;
      v4 = SFUBundle();
      v5 = [OITSULocaleStructuredDictionary dictionaryWithContentsOfFileForLocale:locale inDirectory:@"NumberFormatterSymbols" inBundle:v4];
      harmonizedNumberFormatterSymbols = self->_harmonizedNumberFormatterSymbols;
      self->_harmonizedNumberFormatterSymbols = v5;

      if (!self->_harmonizedNumberFormatterSymbols)
      {
        v7 = +[OITSULocaleStructuredDictionary numberFormatterSymbolsFallbackDictionary];
        v8 = self->_harmonizedNumberFormatterSymbols;
        self->_harmonizedNumberFormatterSymbols = v7;
      }
    }

    objc_sync_exit(obj);
  }
}

- (id)currencySymbolForCurrencyCode:(id)code
{
  codeCopy = code;
  if (!codeCopy)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUNumberFormatter(Private) currencySymbolForCurrencyCode:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUNumberFormatter.m"];
    [OITSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:2075 isFatal:0 description:"can't get the currency symbol for a nil currency code. Using USD."];

    +[OITSUAssertionHandler logBacktraceThrottled];
    codeCopy = @"USD";
  }

  v7 = self->_currencyCodeToSymbolMap;
  objc_sync_enter(v7);
  v8 = [(NSMutableDictionary *)self->_currencyCodeToSymbolMap objectForKey:codeCopy];
  if (!v8)
  {
    if ([OITSULocale localeIsAutoUpdating:self->_locale])
    {
      v9 = self->_locale;
      v10 = MEMORY[0x277CBEB38];
      v11 = MEMORY[0x277CBEAF8];
      localeIdentifier = [(NSLocale *)v9 localeIdentifier];
      v13 = [v11 componentsFromLocaleIdentifier:localeIdentifier];
      v14 = [v10 dictionaryWithDictionary:v13];

      [v14 setObject:codeCopy forKey:*MEMORY[0x277CBE698]];
      v15 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:v14];
      v16 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v15];
      v8 = [v16 objectForKey:*MEMORY[0x277CBE6A0]];

      if (!v8)
      {
        goto LABEL_9;
      }
    }

    else
    {
      [(OITSUNumberFormatter *)self p_loadHarmonizedNumberFormatterSymbols];
      v8 = [(OITSULocaleStructuredDictionary *)self->_harmonizedNumberFormatterSymbols objectForKey:codeCopy locale:self->_locale];
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    [(NSMutableDictionary *)self->_currencyCodeToSymbolMap setObject:v8 forKey:codeCopy];
  }

LABEL_9:
  objc_sync_exit(v7);

  if (v8)
  {
    v17 = v8;
  }

  else
  {
    v17 = codeCopy;
  }

  v18 = v17;

  return v17;
}

- (id)halfWidthCurrencySymbolForCurrencyCode:(id)code
{
  codeCopy = code;
  v5 = [(NSMutableDictionary *)self->_currencyCodeToHalfWidthSymbolMap objectForKey:codeCopy];
  if (!v5)
  {
    v6 = [(OITSUNumberFormatter *)self currencySymbolForCurrencyCode:codeCopy];
    v7 = [v6 mutableCopy];
    CFStringTransform(v7, 0, *MEMORY[0x277CBF0A8], 0);
    v5 = [(__CFString *)v7 copy];

    [(NSMutableDictionary *)self->_currencyCodeToHalfWidthSymbolMap setObject:v5 forKey:codeCopy];
  }

  return v5;
}

- (id)currencyCode
{
  v2 = [(NSLocale *)self->_locale objectForKey:*MEMORY[0x277CBE698]];
  if (!v2)
  {
    v2 = @"USD";
  }

  return v2;
}

- (id)defaultFormatStringForValueType:(int)type negativeStyle:(int)style
{
  v4 = 136;
  if ((type - 1) < 3)
  {
    v4 = 8 * (type - 1) + 144;
  }

  if (style >= 4)
  {
    styleCopy = 4;
  }

  else
  {
    styleCopy = style;
  }

  v6 = [*(&self->super.isa + v4) objectAtIndex:styleCopy];

  return v6;
}

- (id)defaultFormatStringForValueType:(int)type
{
  v3 = 80;
  if ((type - 1) < 3)
  {
    v3 = 8 * (type - 1) + 56;
  }

  return *(&self->super.isa + v3);
}

- (id)p_createDictionaryOfCurrencyFormattersForCurrencies:(id)currencies
{
  currenciesCopy = currencies;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [(OITSUNumberFormatter *)self p_createHarmonizedCFNumberFormatterOfStyle:2];
  CFNumberFormatterSetProperty(v7, *MEMORY[0x277CBEF20], @"xyzzyqghbv&q");
  v8 = CFNumberFormatterGetFormat(v7);
  tsu_positiveSubpatternOfNumberFormatPattern = [v8 tsu_positiveSubpatternOfNumberFormatPattern];
  tsu_numberPortionOfNumberFormatSubpattern = [tsu_positiveSubpatternOfNumberFormatPattern tsu_numberPortionOfNumberFormatSubpattern];

  CFRelease(v7);
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"¤%@", tsu_numberPortionOfNumberFormatSubpattern];
  [v6 addObject:v11];

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"¤%@- ¤%@", tsu_numberPortionOfNumberFormatSubpattern, tsu_numberPortionOfNumberFormatSubpattern];;
  [v6 addObject:v12];

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@¤", tsu_numberPortionOfNumberFormatSubpattern];
  [v6 addObject:v13];

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@¤- %@¤", tsu_numberPortionOfNumberFormatSubpattern, tsu_numberPortionOfNumberFormatSubpattern];;
  [v6 addObject:v14];

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"¤%@¤-%@", tsu_numberPortionOfNumberFormatSubpattern, tsu_numberPortionOfNumberFormatSubpattern];;
  [v6 addObject:v15];

  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"¤%@(¤%@)", tsu_numberPortionOfNumberFormatSubpattern, tsu_numberPortionOfNumberFormatSubpattern];;
  [v6 addObject:v16];

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"¤%@¤(%@)", tsu_numberPortionOfNumberFormatSubpattern, tsu_numberPortionOfNumberFormatSubpattern];;
  [v6 addObject:v17];

  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@¤(%@¤)", tsu_numberPortionOfNumberFormatSubpattern, tsu_numberPortionOfNumberFormatSubpattern];;
  [v6 addObject:v18];

  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@¤(%@)¤", tsu_numberPortionOfNumberFormatSubpattern, tsu_numberPortionOfNumberFormatSubpattern];;
  [v6 addObject:v19];

  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"¤%@¤%@-", tsu_numberPortionOfNumberFormatSubpattern, tsu_numberPortionOfNumberFormatSubpattern];;
  [v6 addObject:v20];

  v21 = [currenciesCopy count];
  if (v21 >= 1)
  {
    v22 = v21;
    for (i = 0; i != v22; ++i)
    {
      v24 = [currenciesCopy objectAtIndex:i];
      v25 = p_newArrayOfCurrencyFormattersForCurrencyCode(self->_locale, v6, v24);
      [dictionary setObject:v25 forKey:v24];
    }
  }

  return dictionary;
}

- (id)p_decimalFormatters
{
  decimalFormatters = self->_decimalFormatters;
  if (!decimalFormatters)
  {
    v4 = objc_opt_class();
    objc_sync_enter(v4);
    if (!self->_decimalFormatters)
    {
      v5 = TSUCreateArrayOfDecimalFormattersForLocale(self->_locale);
      __dmb(0xBu);
      v6 = self->_decimalFormatters;
      self->_decimalFormatters = v5;
    }

    objc_sync_exit(v4);

    decimalFormatters = self->_decimalFormatters;
  }

  return decimalFormatters;
}

- (id)p_currencyFormatters
{
  currencyFormatters = self->_currencyFormatters;
  if (!currencyFormatters)
  {
    v4 = objc_opt_class();
    objc_sync_enter(v4);
    if (!self->_currencyFormatters)
    {
      v5 = TSUCurrencyCodesForLocale(self->_locale, 0);
      v6 = [(OITSUNumberFormatter *)self p_createDictionaryOfCurrencyFormattersForCurrencies:v5];

      __dmb(0xBu);
      v7 = self->_currencyFormatters;
      self->_currencyFormatters = v6;
    }

    objc_sync_exit(v4);

    currencyFormatters = self->_currencyFormatters;
  }

  return currencyFormatters;
}

- (id)p_percentageFormatters
{
  percentageFormatters = self->_percentageFormatters;
  if (!percentageFormatters)
  {
    v4 = objc_opt_class();
    objc_sync_enter(v4);
    if (!self->_percentageFormatters)
    {
      v5 = TSUCreateArrayOfPercentageFormattersForLocale(self->_locale);
      __dmb(0xBu);
      v6 = self->_percentageFormatters;
      self->_percentageFormatters = v5;
    }

    objc_sync_exit(v4);

    percentageFormatters = self->_percentageFormatters;
  }

  return percentageFormatters;
}

- (id)p_scientificFormatters
{
  scientificFormatters = self->_scientificFormatters;
  if (!scientificFormatters)
  {
    v4 = objc_opt_class();
    objc_sync_enter(v4);
    if (!self->_scientificFormatters)
    {
      v5 = TSUCreateArrayOfScientificFormattersForLocale(self->_locale);
      __dmb(0xBu);
      v6 = self->_scientificFormatters;
      self->_scientificFormatters = v5;
    }

    objc_sync_exit(v4);

    scientificFormatters = self->_scientificFormatters;
  }

  return scientificFormatters;
}

@end