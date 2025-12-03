@interface OITSUFormatUtilities_LocaleSpecificStorage
+ (id)localeSpecificStorageForLocale:(id)locale;
- (OITSUFormatUtilities_LocaleSpecificStorage)initWithLocale:(id)locale;
@end

@implementation OITSUFormatUtilities_LocaleSpecificStorage

- (OITSUFormatUtilities_LocaleSpecificStorage)initWithLocale:(id)locale
{
  localeCopy = locale;
  v59.receiver = self;
  v59.super_class = OITSUFormatUtilities_LocaleSpecificStorage;
  v5 = [(OITSUFormatUtilities_LocaleSpecificStorage *)&v59 init];
  if (v5)
  {
    locale = [localeCopy locale];
    v7 = TSUHarmonizedCFNumberFormatterCreate(locale, 2);

    v8 = [(__CFString *)CFNumberFormatterGetFormat(v7) copy];
    formatCurrencyString = v5->_formatCurrencyString;
    v5->_formatCurrencyString = v8;

    CFRelease(v7);
    v10 = [OITSUNumberFormatter formatString:v5->_formatCurrencyString transformedForNegativeStyle:0];
    v11 = [v10 copy];
    formatCurrencyStringMinus = v5->_formatCurrencyStringMinus;
    v5->_formatCurrencyStringMinus = v11;

    v13 = [OITSUNumberFormatter formatString:v5->_formatCurrencyString transformedForNegativeStyle:1];
    v14 = [v13 copy];
    formatCurrencyStringRedOnly = v5->_formatCurrencyStringRedOnly;
    v5->_formatCurrencyStringRedOnly = v14;

    v16 = [OITSUNumberFormatter formatString:v5->_formatCurrencyString transformedForNegativeStyle:2];
    v17 = [v16 copy];
    formatCurrencyStringWithParens = v5->_formatCurrencyStringWithParens;
    v5->_formatCurrencyStringWithParens = v17;

    locale2 = [localeCopy locale];
    v20 = TSUHarmonizedCFNumberFormatterCreate(locale2, 3);

    v21 = [(__CFString *)CFNumberFormatterGetFormat(v20) copy];
    formatPercentageString = v5->_formatPercentageString;
    v5->_formatPercentageString = v21;

    CFRelease(v20);
    v23 = [OITSUNumberFormatter formatString:v5->_formatPercentageString transformedForNegativeStyle:0];
    v24 = [v23 copy];
    formatPercentageStringMinus = v5->_formatPercentageStringMinus;
    v5->_formatPercentageStringMinus = v24;

    v26 = [OITSUNumberFormatter formatString:v5->_formatPercentageString transformedForNegativeStyle:1];
    v27 = [v26 copy];
    formatPercentageStringRedOnly = v5->_formatPercentageStringRedOnly;
    v5->_formatPercentageStringRedOnly = v27;

    v29 = [OITSUNumberFormatter formatString:v5->_formatPercentageString transformedForNegativeStyle:2];
    v30 = [v29 copy];
    formatPercentageStringWithParens = v5->_formatPercentageStringWithParens;
    v5->_formatPercentageStringWithParens = v30;

    locale3 = [localeCopy locale];
    v33 = TSUHarmonizedCFNumberFormatterCreate(locale3, 0);

    CFNumberFormatterSetFormat(v33, @"#.##E+00");
    v34 = [(__CFString *)CFNumberFormatterGetFormat(v33) copy];
    formatScientificString = v5->_formatScientificString;
    v5->_formatScientificString = v34;

    CFRelease(v33);
    v36 = [OITSUNumberFormatter formatString:v5->_formatScientificString transformedForNegativeStyle:0];
    v37 = [v36 copy];
    formatScientificStringMinus = v5->_formatScientificStringMinus;
    v5->_formatScientificStringMinus = v37;

    v39 = [OITSUNumberFormatter formatString:v5->_formatScientificString transformedForNegativeStyle:1];
    v40 = [v39 copy];
    formatScientificStringRedOnly = v5->_formatScientificStringRedOnly;
    v5->_formatScientificStringRedOnly = v40;

    v42 = [OITSUNumberFormatter formatString:v5->_formatScientificString transformedForNegativeStyle:2];
    v43 = [v42 copy];
    formatScientificStringWithParens = v5->_formatScientificStringWithParens;
    v5->_formatScientificStringWithParens = v43;

    locale4 = [localeCopy locale];
    v46 = TSUHarmonizedCFNumberFormatterCreate(locale4, 1);

    v47 = [(__CFString *)CFNumberFormatterGetFormat(v46) copy];
    formatDecimalString = v5->_formatDecimalString;
    v5->_formatDecimalString = v47;

    CFRelease(v46);
    v49 = [OITSUNumberFormatter formatString:v5->_formatDecimalString transformedForNegativeStyle:0];
    v50 = [v49 copy];
    formatDecimalStringMinus = v5->_formatDecimalStringMinus;
    v5->_formatDecimalStringMinus = v50;

    v52 = [OITSUNumberFormatter formatString:v5->_formatDecimalString transformedForNegativeStyle:1];
    v53 = [v52 copy];
    formatDecimalStringRedOnly = v5->_formatDecimalStringRedOnly;
    v5->_formatDecimalStringRedOnly = v53;

    v55 = [OITSUNumberFormatter formatString:v5->_formatDecimalString transformedForNegativeStyle:2];
    v56 = [v55 copy];
    formatDecimalStringWithParens = v5->_formatDecimalStringWithParens;
    v5->_formatDecimalStringWithParens = v56;
  }

  return v5;
}

+ (id)localeSpecificStorageForLocale:(id)locale
{
  localeCopy = locale;
  if (!localeCopy)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[OITSUFormatUtilities_LocaleSpecificStorage localeSpecificStorageForLocale:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUFormatUtilities.m"];
    [OITSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:133 isFatal:0 description:"Need a locale here"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v7 = [localeCopy localeSpecificStorageForKey:@"TSUFormatUtilities_LocaleSpecificStorage"];
  if (!v7)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v7 = [localeCopy localeSpecificStorageForKey:@"TSUFormatUtilities_LocaleSpecificStorage"];
    if (!v7)
    {
      v7 = [[OITSUFormatUtilities_LocaleSpecificStorage alloc] initWithLocale:localeCopy];
      [localeCopy setLocaleSpecificStorage:v7 forKey:@"TSUFormatUtilities_LocaleSpecificStorage"];
    }

    objc_sync_exit(selfCopy);
  }

  return v7;
}

@end