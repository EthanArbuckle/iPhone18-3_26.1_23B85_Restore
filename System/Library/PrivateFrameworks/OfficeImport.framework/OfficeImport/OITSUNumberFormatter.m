@interface OITSUNumberFormatter
+ (__CFNumberFormatter)createHarmonizedCFNumberFormatterWithLocale:(id)a3 style:(int64_t)a4;
+ (id)currencyDecimalSeparatorForLocale:(id)a3;
+ (id)currencyGroupingSeparatorForLocale:(id)a3;
+ (id)currencySymbolForCurrencyCode:(id)a3 locale:(id)a4;
+ (id)currentLocaleCurrencyDecimalSeparator;
+ (id)currentLocaleDecimalSeparator;
+ (id)decimalSeparatorForLocale:(id)a3;
+ (id)defaultCurrencyCodeForLocale:(id)a3;
+ (id)defaultFormatStringForValueType:(int)a3;
+ (id)defaultFormatStringForValueType:(int)a3 negativeStyle:(int)a4;
+ (id)displayNameForCurrencyCode:(id)a3;
+ (id)formatString:(id)a3 transformedForNegativeStyle:(int)a4;
+ (id)formatterForLocale:(id)a3;
+ (id)groupingSeparatorForLocale:(id)a3;
+ (id)percentSymbolForLocale:(id)a3;
+ (id)stringBySubstitutingCharactersCFNumberFormatterDoesntUnderstand:(id)a3;
+ (id)userVisibleCurrencyCodes;
+ (int)positionOfMinusSignInNumberFormatSubpattern:(id)a3;
+ (int)positionOfSymbol:(id)a3 inNumberFormatSubpattern:(id)a4;
+ (unint64_t)groupingSizeForLocale:(id)a3;
+ (unsigned)defaultDecimalPlacesForCurrencyCode:(id)a3;
+ (void)formatString:(id)a3 replaceOccurencesOfUnescapedString:(id)a4 withString:(id)a5;
+ (void)initialize;
- (BOOL)currencyFromString:(id)a3 additionalCurrencyCode:(id)a4 value:(double *)a5 formatString:(id *)a6 currencyCode:(id *)a7;
- (BOOL)decimalFromString:(id)a3 value:(double *)a4 formatString:(id *)a5;
- (BOOL)fractionFromString:(id)a3 value:(double *)a4;
- (BOOL)p_valueFromString:(id)a3 formatters:(id)a4 value:(double *)a5 formatString:(id *)a6;
- (BOOL)percentageFromString:(id)a3 value:(double *)a4 formatString:(id *)a5;
- (BOOL)scientificFromString:(id)a3 value:(double *)a4 formatString:(id *)a5;
- (OITSUNumberFormatter)initWithLocale:(id)a3;
- (__CFNumberFormatter)p_createHarmonizedCFNumberFormatterOfStyle:(int64_t)a3;
- (id)currencyCode;
- (id)currencySymbolForCurrencyCode:(id)a3;
- (id)defaultFormatStringForValueType:(int)a3;
- (id)defaultFormatStringForValueType:(int)a3 negativeStyle:(int)a4;
- (id)halfWidthCurrencySymbolForCurrencyCode:(id)a3;
- (id)p_createDictionaryOfCurrencyFormattersForCurrencies:(id)a3;
- (id)p_currencyFormatters;
- (id)p_decimalFormatters;
- (id)p_findCurrencySymbolInString:(id)a3 additionalCurrencyCode:(id)a4 successfullString:(id *)a5 currencyCode:(id *)a6;
- (id)p_percentageFormatters;
- (id)p_scientificFormatters;
- (void)dealloc;
- (void)p_loadHarmonizedNumberFormatterSymbols;
- (void)p_numberPreferencesChanged:(id)a3;
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

  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___OITSUNumberFormatter;
  objc_msgSendSuper2(&v8, sel_initialize);
}

+ (id)stringBySubstitutingCharactersCFNumberFormatterDoesntUnderstand:(id)a3
{
  v3 = a3;
  if (stringBySubstitutingCharactersCFNumberFormatterDoesntUnderstand__once != -1)
  {
    +[OITSUNumberFormatter stringBySubstitutingCharactersCFNumberFormatterDoesntUnderstand:];
  }

  v4 = [v3 rangeOfCharacterFromSet:stringBySubstitutingCharactersCFNumberFormatterDoesntUnderstand__replacedCharacterSet];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v3;
  }

  else
  {
    v6 = v4;
    v7 = [v3 mutableCopy];
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

+ (int)positionOfSymbol:(id)a3 inNumberFormatSubpattern:(id)a4
{
  v5 = a4;
  v6 = [v5 rangeOfString:a3];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = v6;
    v9 = [v5 tsu_indexOfFirstNonPrefixCharacterInNumberFormatSubpattern];
    v7 = v9 != 0x7FFFFFFFFFFFFFFFLL && v8 >= v9;
  }

  return v7;
}

+ (int)positionOfMinusSignInNumberFormatSubpattern:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [v4 stringWithFormat:@"-"];
  LODWORD(a1) = [a1 positionOfSymbol:v6 inNumberFormatSubpattern:v5];

  return a1;
}

+ (id)formatString:(id)a3 transformedForNegativeStyle:(int)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CCAB68] string];
  v8 = v7;
  if (!a4)
  {
    v14 = [v6 tsu_positiveSubpatternOfNumberFormatPattern];
    [v8 appendString:v14];

    [v8 appendString:@";"];
    v15 = [v6 tsu_positiveSubpatternOfNumberFormatPattern];
    v16 = [v15 mutableCopy];

    [a1 formatString:v16 replaceOccurencesOfUnescapedString:@"-" withString:&stru_286EE1130];
    v17 = [v6 tsu_negativeSubpatternOfNumberFormatPattern];
    v18 = [OITSUNumberFormatter positionOfMinusSignInNumberFormatSubpattern:v17];

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

  if (a4 == 1)
  {
    v9 = [v6 tsu_positiveSubpatternOfNumberFormatPattern];
    [v8 appendString:v9];

    [v8 appendString:@";"];
    v10 = [v6 tsu_positiveSubpatternOfNumberFormatPattern];
    v11 = [v10 mutableCopy];

    [a1 formatString:v11 replaceOccurencesOfUnescapedString:@"-" withString:&stru_286EE1130];
    v12 = v8;
    v13 = v11;
LABEL_9:
    [v12 appendString:v13];

    goto LABEL_14;
  }

  if ((a4 & 0xFFFFFFFE) == 2)
  {
    v21 = [v6 tsu_positiveSubpatternOfNumberFormatPattern];
    [v8 appendString:v21];

    [v8 appendString:@";"];
    v22 = [v6 tsu_positiveSubpatternOfNumberFormatPattern];
    v11 = [v22 mutableCopy];

    [a1 formatString:v11 replaceOccurencesOfUnescapedString:@"-" withString:&stru_286EE1130];
    objc_msgSend(v8, "appendString:", @"(");
    [v8 appendString:v11];
    v13 = @"");
    v12 = v8;
    goto LABEL_9;
  }

  [v7 appendString:v6];
LABEL_14:

  return v8;
}

+ (void)formatString:(id)a3 replaceOccurencesOfUnescapedString:(id)a4 withString:(id)a5
{
  v26 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v26 tsu_newRangesOfEscapedCharactersInNumberFormatPattern];
  v10 = [v26 length];
  if ([v9 count])
  {
    v11 = [v9 objectAtIndex:0];
    [v26 replaceOccurrencesOfString:v7 withString:v8 options:0 range:{0, objc_msgSend(v11, "rangeValue")}];

    if ([v9 count] >= 2)
    {
      v12 = 1;
      do
      {
        v13 = [v26 length];
        v14 = [v9 objectAtIndex:v12 - 1];
        v15 = [v14 rangeValue];
        v17 = v16;

        v18 = [v9 objectAtIndex:v12];
        v19 = [v18 rangeValue];

        [v26 replaceOccurrencesOfString:v7 withString:v8 options:0 range:{v17 + v15 - v10 + v13, v19 - (v17 + v15)}];
        ++v12;
      }

      while (v12 < [v9 count]);
    }

    v20 = [v9 lastObject];
    v21 = [v20 rangeValue];
    v23 = v22;

    v24 = v21 + v23;
    v25 = [v26 length] - (v21 + v23);
  }

  else
  {
    v25 = [v26 length];
    v24 = 0;
  }

  [v26 replaceOccurrencesOfString:v7 withString:v8 options:0 range:{v24, v25}];
}

+ (id)displayNameForCurrencyCode:(id)a3
{
  v4 = a3;
  v5 = [a1 formatterForLocale:0];
  v6 = [v5 displayNameForCurrencyCode:v4];

  return v6;
}

+ (id)currencySymbolForCurrencyCode:(id)a3 locale:(id)a4
{
  v6 = a3;
  v7 = [a1 formatterForLocale:a4];
  v8 = [v7 currencySymbolForCurrencyCode:v6];

  return v8;
}

+ (unsigned)defaultDecimalPlacesForCurrencyCode:(id)a3
{
  defaultFractionDigits = 0;
  v7 = 0.0;
  if (CFNumberFormatterGetDecimalInfoForCurrencyCode(a3, &defaultFractionDigits, &v7))
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

+ (id)defaultCurrencyCodeForLocale:(id)a3
{
  v3 = [a1 formatterForLocale:a3];
  v4 = [v3 currencyCode];

  return v4;
}

+ (id)currentLocaleDecimalSeparator
{
  v2 = +[OITSULocale currentLocale];
  v3 = [v2 decimalSeparator];

  return v3;
}

+ (id)currentLocaleCurrencyDecimalSeparator
{
  v2 = +[OITSULocale currentLocale];
  v3 = [v2 currencyDecimalSeparator];

  return v3;
}

+ (id)defaultFormatStringForValueType:(int)a3 negativeStyle:(int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  v6 = [a1 formatterForLocale:0];
  v7 = [v6 defaultFormatStringForValueType:v5 negativeStyle:v4];

  return v7;
}

+ (id)defaultFormatStringForValueType:(int)a3
{
  v3 = *&a3;
  v4 = [a1 formatterForLocale:0];
  v5 = [v4 defaultFormatStringForValueType:v3];

  return v5;
}

+ (id)decimalSeparatorForLocale:(id)a3
{
  v3 = [a1 formatterForLocale:a3];
  v4 = [v3 decimalSeparator];

  return v4;
}

+ (id)groupingSeparatorForLocale:(id)a3
{
  v3 = [a1 formatterForLocale:a3];
  v4 = [v3 groupingSeparator];

  return v4;
}

+ (id)currencyDecimalSeparatorForLocale:(id)a3
{
  v3 = [a1 formatterForLocale:a3];
  v4 = [v3 currencyDecimalSeparator];

  return v4;
}

+ (id)currencyGroupingSeparatorForLocale:(id)a3
{
  v3 = [a1 formatterForLocale:a3];
  v4 = [v3 currencyGroupingSeparator];

  return v4;
}

+ (id)percentSymbolForLocale:(id)a3
{
  v3 = [a1 formatterForLocale:a3];
  v4 = [v3 percentSymbol];

  return v4;
}

+ (unint64_t)groupingSizeForLocale:(id)a3
{
  v3 = [a1 formatterForLocale:a3];
  v4 = [v3 groupingSize];

  return v4;
}

+ (id)userVisibleCurrencyCodes
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"SFTDefaultsShowCompleteCurrencyList"];

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

+ (__CFNumberFormatter)createHarmonizedCFNumberFormatterWithLocale:(id)a3 style:(int64_t)a4
{
  v5 = [OITSUNumberFormatter formatterForLocale:a3];
  v6 = [v5 p_createHarmonizedCFNumberFormatterOfStyle:a4];

  return v6;
}

+ (id)formatterForLocale:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CCACC8] currentThread];
    v6 = [v5 threadDictionary];
    v7 = TSUNumberFormatterThreadDictionaryKeyForLocale(v4);
    v8 = [v6 objectForKey:v7];
    if (!v8)
    {
      v8 = [[a1 alloc] initWithLocale:v4];
      [v6 setObject:v8 forKey:v7];
      if ([OITSULocale localeIsAutoUpdating:v4])
      {
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __52__OITSUNumberFormatter_Private__formatterForLocale___block_invoke;
        v18[3] = &unk_2799C6208;
        v9 = v5;
        v19 = v9;
        v10 = v8;
        v20 = v10;
        v11 = TSURegisterLocaleChangeObserver(v18);
        [v6 setObject:v11 forKey:@"TSUNumberFormatterThreadDictionaryLocaleObserverKey"];
        v12 = [MEMORY[0x277CCAB98] defaultCenter];
        v13 = *MEMORY[0x277CCA6F8];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __52__OITSUNumberFormatter_Private__formatterForLocale___block_invoke_2;
        v16[3] = &unk_2799C6230;
        v8 = v10;
        v17 = v8;
        v14 = [v12 addObserverForName:v13 object:v9 queue:0 usingBlock:v16];

        [v6 setObject:v14 forKey:@"TSUNumberFormatterThreadDictionaryExitObserverKey"];
      }
    }
  }

  else
  {
    v5 = +[OITSULocale currentLocale];
    v6 = [v5 locale];
    v8 = [a1 formatterForLocale:v6];
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

- (OITSUNumberFormatter)initWithLocale:(id)a3
{
  v4 = a3;
  v62.receiver = self;
  v62.super_class = OITSUNumberFormatter;
  v5 = [(OITSUNumberFormatter *)&v62 init];
  if (v5)
  {
    if (!v4)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUNumberFormatter(Private) initWithLocale:]"];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUNumberFormatter.m"];
      [OITSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:1527 isFatal:1 description:"TSUNumberFormatter cannot be initialized without a locale. Please check comments near this assertion or <rdar://problem/23557988> for details."];

      TSUCrash("TSUNumberFormatter cannot be initialized without a locale. Please check comments near this assertion or <rdar://problem/23557988> for details.", v9, v10, v11, v12, v13, v14, v15, v62.receiver);
    }

    v6 = v4;
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

- (__CFNumberFormatter)p_createHarmonizedCFNumberFormatterOfStyle:(int64_t)a3
{
  v5 = self->_locale;
  v6 = [OITSULocale localeIsAutoUpdating:v5];
  if (!v6)
  {
    v7 = TSULocaleNSLocaleWithHarmonizedNumberingSystem(v5);

    v5 = v7;
  }

  v8 = CFNumberFormatterCreate(0, v5, a3);
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
    v18 = v17 = a3;
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

    a3 = v17;
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

  if (v62 && a3 <= 4)
  {
    v63 = self->_harmonizedNumberFormatterSymbols;
    v64 = [MEMORY[0x277CCACA8] stringWithFormat:off_2799C62C0[a3], v11];
    v65 = [(OITSULocaleStructuredDictionary *)v63 objectForKey:v64 locale:v5];
    CFNumberFormatterSetFormat(v8, v65);
  }

LABEL_13:
  return v8;
}

- (void)p_numberPreferencesChanged:(id)a3
{
  v4 = [MEMORY[0x277CCACC8] currentThread];
  v11 = [v4 threadDictionary];

  v5 = [v11 objectForKey:@"TSUNumberFormatterThreadDictionaryKey"];
  if (v5 != self)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUNumberFormatter(Private) p_numberPreferencesChanged:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUNumberFormatter.m"];
    [OITSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:1703 isFatal:0 description:"Registered wrong date formatter for date preference change notification"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  [v11 removeObjectForKey:@"TSUNumberFormatterThreadDictionaryKey"];
  v8 = [v11 objectForKey:@"TSUNumberFormatterThreadDictionaryLocaleObserverKey"];
  TSURemoveLocaleChangeObserver(v8);

  [v11 removeObjectForKey:@"TSUNumberFormatterThreadDictionaryLocaleObserverKey"];
  v9 = [v11 objectForKey:@"TSUNumberFormatterThreadDictionaryExitObserverKey"];
  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  [v10 removeObserver:v9];

  [v11 removeObjectForKey:@"TSUNumberFormatterThreadDictionaryExitObserverKey"];
}

- (BOOL)decimalFromString:(id)a3 value:(double *)a4 formatString:(id *)a5
{
  v8 = a3;
  v9 = [(OITSUNumberFormatter *)self p_decimalFormatters];
  LOBYTE(a5) = [(OITSUNumberFormatter *)self p_valueFromString:v8 formatters:v9 value:a4 formatString:a5];

  return a5;
}

- (BOOL)currencyFromString:(id)a3 additionalCurrencyCode:(id)a4 value:(double *)a5 formatString:(id *)a6 currencyCode:(id *)a7
{
  v13 = a4;
  v51 = 0;
  v52 = 0;
  v14 = [(OITSUNumberFormatter *)self p_findCurrencySymbolInString:a3 additionalCurrencyCode:v13 successfullString:&v52 currencyCode:&v51];
  v15 = v52;
  v16 = v51;
  v17 = v16;
  v18 = 0;
  if (v14 && v16)
  {
    v50 = a5;
    v49 = [(OITSUNumberFormatter *)self p_currencyFormatters];
    v19 = [v49 objectForKeyedSubscript:v17];
    if (!v19)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUNumberFormatter(Private) currencyFromString:additionalCurrencyCode:value:formatString:currencyCode:]"];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUNumberFormatter.m"];
      [OITSUAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:1741 isFatal:1 description:v17, self->_locale];

      TSUCrash("No currency formatters found for currencyCode:%{public}@ locale:%{public}@", v22, v23, v24, v25, v26, v27, v28, v17);
    }

    v29 = [(OITSUNumberFormatter *)self p_valueFromString:v15 formatters:v19 value:v50 formatString:a6];
    v18 = v29;
    if (!v13 || v29)
    {
      goto LABEL_15;
    }

    if (self->_additionalCurrencyCode)
    {
      if ([v13 isEqualToString:?])
      {
LABEL_12:
        v35 = a6;
        v36 = self->_additionalCurrencyCode;

        v37 = [(NSDictionary *)self->_additionalCurrencyCodeFormatters objectForKey:self->_additionalCurrencyCode];

        if (!v37)
        {
          v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUNumberFormatter(Private) currencyFromString:additionalCurrencyCode:value:formatString:currencyCode:]"];
          v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUNumberFormatter.m"];
          [OITSUAssertionHandler handleFailureInFunction:v38 file:v39 lineNumber:1764 isFatal:1 description:self->_additionalCurrencyCode, self->_locale];

          TSUCrash("No currency formatters found for additional currencyCode:%{public}@ locale:%{public}@", v40, v41, v42, v43, v44, v45, v46, self->_additionalCurrencyCode);
        }

        v18 = [(OITSUNumberFormatter *)self p_valueFromString:v15 formatters:v37 value:v50 formatString:v35];
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

    objc_storeStrong(&self->_additionalCurrencyCode, a4);
    v32 = [MEMORY[0x277CBEA60] arrayWithObject:self->_additionalCurrencyCode];
    v33 = [(OITSUNumberFormatter *)self p_createDictionaryOfCurrencyFormattersForCurrencies:v32];
    v34 = self->_additionalCurrencyCodeFormatters;
    self->_additionalCurrencyCodeFormatters = v33;

    goto LABEL_12;
  }

LABEL_16:
  if (a7)
  {
    if (v18)
    {
      v47 = v17;
    }

    else
    {
      v47 = 0;
    }

    *a7 = v47;
  }

  return v18;
}

- (BOOL)percentageFromString:(id)a3 value:(double *)a4 formatString:(id *)a5
{
  v8 = a3;
  v9 = [(OITSUNumberFormatter *)self p_percentageFormatters];
  LOBYTE(a5) = [(OITSUNumberFormatter *)self p_valueFromString:v8 formatters:v9 value:a4 formatString:a5];

  return a5;
}

- (BOOL)scientificFromString:(id)a3 value:(double *)a4 formatString:(id *)a5
{
  v8 = a3;
  v9 = [(OITSUNumberFormatter *)self p_scientificFormatters];
  LOBYTE(a5) = [(OITSUNumberFormatter *)self p_valueFromString:v8 formatters:v9 value:a4 formatString:a5];

  return a5;
}

- (BOOL)fractionFromString:(id)a3 value:(double *)a4
{
  v6 = a3;
  v7 = [v6 rangeOfString:@"/"];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL || v8 == 0)
  {
    v12 = 0;
    if (!a4)
    {
LABEL_26:
      v10 = 0;
      goto LABEL_41;
    }
  }

  else
  {
    v11 = v7;
    v12 = [v6 substringWithRange:{0, v7}];
    v13 = v11 + 1;
    if (v13 < [v6 length])
    {
      v14 = [v6 substringWithRange:{v13, objc_msgSend(v6, "length") - v13}];
      v15 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v16 = [v12 stringByTrimmingCharactersInSet:v15];
      v17 = [v14 stringByTrimmingCharactersInSet:v15];
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
          if (a4)
          {
            *a4 = 0.0;
          }

          goto LABEL_40;
        }

        v34 = v17;
        v29 = [v16 substringWithRange:{v28, objc_msgSend(v16, "length") - v28}];
        v21 = [v27 stringByTrimmingCharactersInSet:v15];
        v36 = v29;
        v30 = [v29 stringByTrimmingCharactersInSet:v15];
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
            if (!a4)
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
            if (!a4)
            {
LABEL_39:

LABEL_40:
              goto LABEL_41;
            }

LABEL_38:
            *a4 = v25;
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
              if (!a4)
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

    if (!a4)
    {
      goto LABEL_26;
    }
  }

  v10 = 0;
  *a4 = 0.0;
LABEL_41:

  return v10;
}

- (BOOL)p_valueFromString:(id)a3 formatters:(id)a4 value:(double *)a5 formatString:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (!v10)
  {
    v15 = 0;
    if (!a6)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v12 = [v10 count];
  v13 = objc_opt_class();
  objc_sync_enter(v13);
  if (v12)
  {
    v14 = 0;
    v15 = 1;
    while (1)
    {
      v16 = [v11 objectAtIndex:v14];
      if (TSUImprovedCFNumberFormatterGetValueFromString(v16, v9, a5))
      {
        break;
      }

      v15 = ++v14 < v12;
      if (v12 == v14)
      {
        goto LABEL_6;
      }
    }

    if (a6)
    {
      *a6 = CFNumberFormatterGetFormat(v16);
    }
  }

  else
  {
LABEL_6:
    v15 = 0;
  }

  objc_sync_exit(v13);

  if (a6)
  {
LABEL_12:
    if (!v15)
    {
      *a6 = 0;
    }
  }

LABEL_14:

  return v15;
}

- (id)p_findCurrencySymbolInString:(id)a3 additionalCurrencyCode:(id)a4 successfullString:(id *)a5 currencyCode:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [v10 length];
  if (v12)
  {
    v13 = v12;
    v42 = a5;
    obj = objc_opt_class();
    objc_sync_enter(obj);
    v14 = 8;
    v49 = v13;
    if (v13 < 8)
    {
      v14 = v13;
    }

    v50 = v14;
    v15 = TSUCurrencyCodesForLocale(self->_locale, v11);
    v16 = [v15 count];
    v39 = v11;
    if (v16)
    {
      v43 = v16;
      v41 = a6;
      v47 = 0;
      v48 = 0;
      v46 = 0;
      v17 = 0;
      v45 = v13 - v50;
      v44 = self;
      while (1)
      {
        v18 = v15;
        v19 = [v15 objectAtIndex:{v17, v39}];
        v20 = [(OITSUNumberFormatter *)self currencySymbolForCurrencyCode:v19];
        v21 = [v20 stringByReplacingOccurrencesOfString:@"\u200F" withString:&stru_286EE1130];
        v22 = [v10 rangeOfString:v21 options:0 range:{0, v50}];
        v24 = v23;
        v26 = 0;
        v25 = 0x7FFFFFFFFFFFFFFFLL;
        if (v49 >= 1)
        {
          v25 = [v10 rangeOfString:v21 options:0 range:{v45, v50}];
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
        v28 = [v10 rangeOfString:v27 options:0 range:{0, v50}];
        v30 = v29;
        v24 = 0;
        v31 = 0x7FFFFFFFFFFFFFFFLL;
        if (v49 >= 1)
        {
          v31 = [v10 rangeOfString:v27 options:0 range:{v45, v50}];
          v24 = v32;
        }

        if (v28 != 0x7FFFFFFFFFFFFFFFLL || v31 != 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v28 != 0x7FFFFFFFFFFFFFFFLL && v30 > v48)
          {
            v24 = v30;
            v31 = v28;
LABEL_25:
            v33 = [v10 stringByReplacingCharactersInRange:v31 withString:{v24, v21}];

LABEL_26:
            v34 = v21;

            if (v42)
            {
              v35 = v33;
              *v42 = v33;
            }

            if (v41)
            {
              v36 = v19;
              *v41 = v19;
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
        self = v44;
        v15 = v18;
        if (v43 == v17)
        {
          goto LABEL_35;
        }
      }

      v33 = v10;
      v27 = v46;
      goto LABEL_26;
    }

    v46 = 0;
    v47 = 0;
LABEL_35:

    objc_sync_exit(obj);
    v11 = v39;
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

- (id)currencySymbolForCurrencyCode:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUNumberFormatter(Private) currencySymbolForCurrencyCode:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUNumberFormatter.m"];
    [OITSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:2075 isFatal:0 description:"can't get the currency symbol for a nil currency code. Using USD."];

    +[OITSUAssertionHandler logBacktraceThrottled];
    v4 = @"USD";
  }

  v7 = self->_currencyCodeToSymbolMap;
  objc_sync_enter(v7);
  v8 = [(NSMutableDictionary *)self->_currencyCodeToSymbolMap objectForKey:v4];
  if (!v8)
  {
    if ([OITSULocale localeIsAutoUpdating:self->_locale])
    {
      v9 = self->_locale;
      v10 = MEMORY[0x277CBEB38];
      v11 = MEMORY[0x277CBEAF8];
      v12 = [(NSLocale *)v9 localeIdentifier];
      v13 = [v11 componentsFromLocaleIdentifier:v12];
      v14 = [v10 dictionaryWithDictionary:v13];

      [v14 setObject:v4 forKey:*MEMORY[0x277CBE698]];
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
      v8 = [(OITSULocaleStructuredDictionary *)self->_harmonizedNumberFormatterSymbols objectForKey:v4 locale:self->_locale];
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    [(NSMutableDictionary *)self->_currencyCodeToSymbolMap setObject:v8 forKey:v4];
  }

LABEL_9:
  objc_sync_exit(v7);

  if (v8)
  {
    v17 = v8;
  }

  else
  {
    v17 = v4;
  }

  v18 = v17;

  return v17;
}

- (id)halfWidthCurrencySymbolForCurrencyCode:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_currencyCodeToHalfWidthSymbolMap objectForKey:v4];
  if (!v5)
  {
    v6 = [(OITSUNumberFormatter *)self currencySymbolForCurrencyCode:v4];
    v7 = [v6 mutableCopy];
    CFStringTransform(v7, 0, *MEMORY[0x277CBF0A8], 0);
    v5 = [(__CFString *)v7 copy];

    [(NSMutableDictionary *)self->_currencyCodeToHalfWidthSymbolMap setObject:v5 forKey:v4];
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

- (id)defaultFormatStringForValueType:(int)a3 negativeStyle:(int)a4
{
  v4 = 136;
  if ((a3 - 1) < 3)
  {
    v4 = 8 * (a3 - 1) + 144;
  }

  if (a4 >= 4)
  {
    v5 = 4;
  }

  else
  {
    v5 = a4;
  }

  v6 = [*(&self->super.isa + v4) objectAtIndex:v5];

  return v6;
}

- (id)defaultFormatStringForValueType:(int)a3
{
  v3 = 80;
  if ((a3 - 1) < 3)
  {
    v3 = 8 * (a3 - 1) + 56;
  }

  return *(&self->super.isa + v3);
}

- (id)p_createDictionaryOfCurrencyFormattersForCurrencies:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [(OITSUNumberFormatter *)self p_createHarmonizedCFNumberFormatterOfStyle:2];
  CFNumberFormatterSetProperty(v7, *MEMORY[0x277CBEF20], @"xyzzyqghbv&q");
  v8 = CFNumberFormatterGetFormat(v7);
  v9 = [v8 tsu_positiveSubpatternOfNumberFormatPattern];
  v10 = [v9 tsu_numberPortionOfNumberFormatSubpattern];

  CFRelease(v7);
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"¤%@", v10];
  [v6 addObject:v11];

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"¤%@- ¤%@", v10, v10];;
  [v6 addObject:v12];

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@¤", v10];
  [v6 addObject:v13];

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@¤- %@¤", v10, v10];;
  [v6 addObject:v14];

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"¤%@¤-%@", v10, v10];;
  [v6 addObject:v15];

  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"¤%@(¤%@)", v10, v10];;
  [v6 addObject:v16];

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"¤%@¤(%@)", v10, v10];;
  [v6 addObject:v17];

  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@¤(%@¤)", v10, v10];;
  [v6 addObject:v18];

  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@¤(%@)¤", v10, v10];;
  [v6 addObject:v19];

  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"¤%@¤%@-", v10, v10];;
  [v6 addObject:v20];

  v21 = [v4 count];
  if (v21 >= 1)
  {
    v22 = v21;
    for (i = 0; i != v22; ++i)
    {
      v24 = [v4 objectAtIndex:i];
      v25 = p_newArrayOfCurrencyFormattersForCurrencyCode(self->_locale, v6, v24);
      [v5 setObject:v25 forKey:v24];
    }
  }

  return v5;
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