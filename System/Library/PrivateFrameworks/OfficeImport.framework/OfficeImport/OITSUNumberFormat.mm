@interface OITSUNumberFormat
+ (id)numberFormatWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(int)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(int)self0;
+ (id)numberFormatWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(int)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(int)self0 prefixString:(id)self1 suffixString:(id)self2 scaleFactor:(double)self3 base:(unsigned __int8)self4 basePlaces:(unsigned __int16)self5 baseUseMinusSign:(BOOL)self6 isCustom:(BOOL)self7 formatName:(id)self8;
- (BOOL)customFormatShouldAutoInsertPercentSymbol;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalent:(id)equivalent;
- (BOOL)usesTabs;
- (NSString)description;
- (OITSUNumberFormat)init;
- (OITSUNumberFormat)initWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(int)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(int)self0;
- (OITSUNumberFormat)initWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(int)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(int)self0 base:(unsigned __int8)self1 basePlaces:(unsigned __int16)self2 baseUseMinusSign:(BOOL)self3;
- (OITSUNumberFormat)initWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(int)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(int)self0 prefixString:(id)self1 suffixString:(id)self2 isCustom:(BOOL)self3;
- (OITSUNumberFormat)initWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(int)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(int)self0 prefixString:(id)self1 suffixString:(id)self2 scaleFactor:(double)self3 base:(unsigned __int8)self4 basePlaces:(unsigned __int16)self5 baseUseMinusSign:(BOOL)self6 isCustom:(BOOL)self7 interstitialStrings:(id)self8 interstitialStringInsertionIndexes:(id)self9 indexFromRightOfLastDigitPlaceholder:(unsigned __int16)placeholder minimumIntegerWidth:(unsigned __int8)width decimalWidth:(unsigned __int8)decimalWidth numberOfNonSpaceIntegerPlaceholderDigits:(unsigned __int8)digits numberOfNonSpaceDecimalPlaceholderDigits:(unsigned __int8)placeholderDigits isTextFormat:(BOOL)format formatName:(id)name customFormatKey:(id)key;
- (OITSUNumberFormat)initWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(int)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(int)self0 suffixString:(id)self1;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initCustomFormatWithFormatString:(id)string currencyCode:(id)code showThousandsSeparator:(BOOL)separator fractionAccuracy:(int)accuracy scaleFactor:(double)factor interstitialStrings:(id)strings interstitialStringInsertionIndexes:(id)indexes indexFromRightOfLastDigitPlaceholder:(unsigned __int16)self0 minimumIntegerWidth:(unsigned __int8)self1 decimalWidth:(unsigned __int8)self2 numberOfNonSpaceIntegerPlaceholderDigits:(unsigned __int8)self3 numberOfNonSpaceDecimalPlaceholderDigits:(unsigned __int8)self4 isTextFormat:(BOOL)self5 formatName:(id)self6;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)numberFormatBySettingNegativeStyle:(int)style;
- (id)numberFormatBySettingUseAccountingStyle:(BOOL)style;
- (id)stringFromDouble:(double)double locale:(id)locale;
- (id)stringFromDouble:(double)double locale:(id)locale decimalPlaces:(unsigned __int16)places minimumDecimalPlaces:(unsigned __int16)decimalPlaces forceSuppressMinusSign:(BOOL)sign;
- (id)stringFromDouble:(double)double locale:(id)locale forceSuppressMinusSign:(BOOL)sign;
- (id)stringFromDouble:(double)double locale:(id)locale minimumDecimalPlaces:(unsigned __int16)places;
- (id)stringFromDouble:(double)double locale:(id)locale minimumDecimalPlaces:(unsigned __int16)places forceSuppressMinusSign:(BOOL)sign;
- (id)stringFromString:(id)string;
- (unint64_t)hash;
- (unsigned)decimalPlaces;
- (void)dealloc;
- (void)setFormatName:(id)name;
@end

@implementation OITSUNumberFormat

+ (id)numberFormatWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(int)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(int)self0
{
  HIDWORD(v12) = accuracy;
  LOBYTE(v12) = separator;
  v10 = [[self alloc] initWithValueType:*&type formatString:string decimalPlaces:places currencyCode:code useAccountingStyle:style negativeStyle:*&negativeStyle showThousandsSeparator:v12 fractionAccuracy:?];

  return v10;
}

+ (id)numberFormatWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(int)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(int)self0 prefixString:(id)self1 suffixString:(id)self2 scaleFactor:(double)self3 base:(unsigned __int8)self4 basePlaces:(unsigned __int16)self5 baseUseMinusSign:(BOOL)self6 isCustom:(BOOL)self7 formatName:(id)self8
{
  BYTE6(v22) = 0;
  *(&v22 + 2) = 0;
  LOWORD(v22) = 0;
  BYTE5(v21) = custom;
  BYTE4(v21) = sign;
  WORD1(v21) = basePlaces;
  LOBYTE(v21) = base;
  HIDWORD(v20) = accuracy;
  LOBYTE(v20) = separator;
  v18 = [[self alloc] initWithValueType:*&type formatString:string decimalPlaces:places currencyCode:code useAccountingStyle:style negativeStyle:negativeStyle showThousandsSeparator:factor fractionAccuracy:v20 prefixString:prefixString suffixString:suffixString scaleFactor:v21 base:0 basePlaces:0 baseUseMinusSign:v22 isCustom:name interstitialStrings:0 interstitialStringInsertionIndexes:? indexFromRightOfLastDigitPlaceholder:? minimumIntegerWidth:? decimalWidth:? numberOfNonSpaceIntegerPlaceholderDigits:? numberOfNonSpaceDecimalPlaceholderDigits:? isTextFormat:? formatName:? customFormatKey:?];

  return v18;
}

- (OITSUNumberFormat)init
{
  HIDWORD(v3) = -1;
  LOBYTE(v3) = 1;
  return [(OITSUNumberFormat *)self initWithValueType:0 formatString:0 decimalPlaces:2 currencyCode:+[OITSUNumberFormatter useAccountingStyle:"currentLocaleCurrencyCode"]negativeStyle:0 showThousandsSeparator:0 fractionAccuracy:v3];
}

- (id)initCustomFormatWithFormatString:(id)string currencyCode:(id)code showThousandsSeparator:(BOOL)separator fractionAccuracy:(int)accuracy scaleFactor:(double)factor interstitialStrings:(id)strings interstitialStringInsertionIndexes:(id)indexes indexFromRightOfLastDigitPlaceholder:(unsigned __int16)self0 minimumIntegerWidth:(unsigned __int8)self1 decimalWidth:(unsigned __int8)self2 numberOfNonSpaceIntegerPlaceholderDigits:(unsigned __int8)self3 numberOfNonSpaceDecimalPlaceholderDigits:(unsigned __int8)self4 isTextFormat:(BOOL)self5 formatName:(id)self6
{
  *(&v19 + 5) = __PAIR16__(format, placeholderDigits);
  *(&v19 + 3) = __PAIR16__(digits, decimalWidth);
  BYTE2(v19) = width;
  LOWORD(v19) = placeholder;
  *(&v18 + 2) = 16842752;
  LOBYTE(v18) = 10;
  HIDWORD(v17) = accuracy;
  LOBYTE(v17) = separator;
  return [OITSUNumberFormat initWithValueType:"initWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:prefixString:suffixString:scaleFactor:base:basePlaces:baseUseMinusSign:isCustom:interstitialStrings:interstitialStringInsertionIndexes:indexFromRightOfLastDigitPlaceholder:minimumIntegerWidth:decimalWidth:numberOfNonSpaceIntegerPlaceholderDigits:numberOfNonSpaceDecimalPlaceholderDigits:isTextFormat:formatName:customFormatKey:" formatString:0 decimalPlaces:string currencyCode:0 useAccountingStyle:code negativeStyle:0 showThousandsSeparator:0 fractionAccuracy:factor prefixString:v17 suffixString:0 scaleFactor:0 base:v18 basePlaces:strings baseUseMinusSign:indexes isCustom:v19 interstitialStrings:name interstitialStringInsertionIndexes:0 indexFromRightOfLastDigitPlaceholder:? minimumIntegerWidth:? decimalWidth:? numberOfNonSpaceIntegerPlaceholderDigits:? numberOfNonSpaceDecimalPlaceholderDigits:? isTextFormat:? formatName:? customFormatKey:?];
}

- (OITSUNumberFormat)initWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(int)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(int)self0
{
  BYTE4(v12) = 1;
  WORD1(v12) = 0;
  LOBYTE(v12) = 10;
  HIDWORD(v11) = accuracy;
  LOBYTE(v11) = separator;
  return [OITSUNumberFormat initWithValueType:"initWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:base:basePlaces:baseUseMinusSign:" formatString:*&type decimalPlaces:string currencyCode:places useAccountingStyle:code negativeStyle:style showThousandsSeparator:*&negativeStyle fractionAccuracy:v11 base:v12 basePlaces:? baseUseMinusSign:?];
}

- (OITSUNumberFormat)initWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(int)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(int)self0 base:(unsigned __int8)self1 basePlaces:(unsigned __int16)self2 baseUseMinusSign:(BOOL)self3
{
  BYTE6(v16) = 0;
  *(&v16 + 2) = 0;
  LOWORD(v16) = 0;
  BYTE5(v15) = 0;
  BYTE4(v15) = sign;
  WORD1(v15) = basePlaces;
  LOBYTE(v15) = base;
  HIDWORD(v14) = accuracy;
  LOBYTE(v14) = separator;
  return [OITSUNumberFormat initWithValueType:"initWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:prefixString:suffixString:scaleFactor:base:basePlaces:baseUseMinusSign:isCustom:interstitialStrings:interstitialStringInsertionIndexes:indexFromRightOfLastDigitPlaceholder:minimumIntegerWidth:decimalWidth:numberOfNonSpaceIntegerPlaceholderDigits:numberOfNonSpaceDecimalPlaceholderDigits:isTextFormat:formatName:customFormatKey:" formatString:*&type decimalPlaces:string currencyCode:places useAccountingStyle:code negativeStyle:style showThousandsSeparator:*&negativeStyle fractionAccuracy:1.0 prefixString:v14 suffixString:0 scaleFactor:0 base:v15 basePlaces:0 baseUseMinusSign:0 isCustom:v16 interstitialStrings:0 interstitialStringInsertionIndexes:0 indexFromRightOfLastDigitPlaceholder:? minimumIntegerWidth:? decimalWidth:? numberOfNonSpaceIntegerPlaceholderDigits:? numberOfNonSpaceDecimalPlaceholderDigits:? isTextFormat:? formatName:? customFormatKey:?];
}

- (OITSUNumberFormat)initWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(int)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(int)self0 prefixString:(id)self1 suffixString:(id)self2 isCustom:(BOOL)self3
{
  BYTE6(v16) = 0;
  *(&v16 + 2) = 0;
  LOWORD(v16) = 0;
  BYTE5(v15) = custom;
  BYTE4(v15) = 1;
  WORD1(v15) = 0;
  LOBYTE(v15) = 10;
  HIDWORD(v14) = accuracy;
  LOBYTE(v14) = separator;
  return [OITSUNumberFormat initWithValueType:"initWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:prefixString:suffixString:scaleFactor:base:basePlaces:baseUseMinusSign:isCustom:interstitialStrings:interstitialStringInsertionIndexes:indexFromRightOfLastDigitPlaceholder:minimumIntegerWidth:decimalWidth:numberOfNonSpaceIntegerPlaceholderDigits:numberOfNonSpaceDecimalPlaceholderDigits:isTextFormat:formatName:customFormatKey:" formatString:*&type decimalPlaces:string currencyCode:places useAccountingStyle:code negativeStyle:style showThousandsSeparator:*&negativeStyle fractionAccuracy:1.0 prefixString:v14 suffixString:prefixString scaleFactor:suffixString base:v15 basePlaces:0 baseUseMinusSign:0 isCustom:v16 interstitialStrings:0 interstitialStringInsertionIndexes:0 indexFromRightOfLastDigitPlaceholder:? minimumIntegerWidth:? decimalWidth:? numberOfNonSpaceIntegerPlaceholderDigits:? numberOfNonSpaceDecimalPlaceholderDigits:? isTextFormat:? formatName:? customFormatKey:?];
}

- (OITSUNumberFormat)initWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(int)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(int)self0 suffixString:(id)self1
{
  LOBYTE(v13) = 0;
  HIDWORD(v12) = accuracy;
  LOBYTE(v12) = separator;
  return [(OITSUNumberFormat *)self initWithValueType:*&type formatString:string decimalPlaces:places currencyCode:code useAccountingStyle:style negativeStyle:*&negativeStyle showThousandsSeparator:v12 fractionAccuracy:0 prefixString:suffixString suffixString:v13 isCustom:?];
}

- (OITSUNumberFormat)initWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(int)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(int)self0 prefixString:(id)self1 suffixString:(id)self2 scaleFactor:(double)self3 base:(unsigned __int8)self4 basePlaces:(unsigned __int16)self5 baseUseMinusSign:(BOOL)self6 isCustom:(BOOL)self7 interstitialStrings:(id)self8 interstitialStringInsertionIndexes:(id)self9 indexFromRightOfLastDigitPlaceholder:(unsigned __int16)placeholder minimumIntegerWidth:(unsigned __int8)width decimalWidth:(unsigned __int8)decimalWidth numberOfNonSpaceIntegerPlaceholderDigits:(unsigned __int8)digits numberOfNonSpaceDecimalPlaceholderDigits:(unsigned __int8)placeholderDigits isTextFormat:(BOOL)format formatName:(id)name customFormatKey:(id)key
{
  styleCopy = style;
  v33 = *&type;
  v53.receiver = self;
  v53.super_class = OITSUNumberFormat;
  v34 = [(OITSUNumberFormat *)&v53 init];
  v35 = v34;
  if (v34)
  {
    v34->mFormatStringContainsTabCharacter = 0;
    v52 = styleCopy;
    if (custom)
    {
      if (!string)
      {
        v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUNumberFormat initWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:prefixString:suffixString:scaleFactor:base:basePlaces:baseUseMinusSign:isCustom:interstitialStrings:interstitialStringInsertionIndexes:indexFromRightOfLastDigitPlaceholder:minimumIntegerWidth:decimalWidth:numberOfNonSpaceIntegerPlaceholderDigits:numberOfNonSpaceDecimalPlaceholderDigits:isTextFormat:formatName:customFormatKey:]"];
        +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v36, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUNumberFormat.m"], 310, 0, "Passed a nil format string while creating a custom format!");
        +[OITSUAssertionHandler logBacktraceThrottled];
      }

      v35->mFormatString = string;
      v35->mFormatStringRequiresSuppressionOfMinusSign = 0;
      v37 = [string length];
      if (v37)
      {
        v38 = v37;
        for (i = 0; i != v38; ++i)
        {
          v40 = [string characterAtIndex:i];
          p_mFormatStringContainsTabCharacter = &v35->mFormatStringContainsTabCharacter;
          if (v40 != 9)
          {
            p_mFormatStringContainsTabCharacter = &v35->mRequiresFractionReplacement;
            if (v40 != TSUCustomNumberFormatFractionReplacementCharacter)
            {
              continue;
            }
          }

          *p_mFormatStringContainsTabCharacter = 1;
        }
      }
    }

    else
    {
      if (styleCopy)
      {
        negativeStyleCopy2 = 2;
      }

      else
      {
        negativeStyleCopy2 = negativeStyle;
      }

      if (v33 != 1)
      {
        negativeStyleCopy2 = negativeStyle;
      }

      if (v33 == 3)
      {
        v43 = 0;
      }

      else
      {
        v43 = negativeStyleCopy2;
      }

      if (string)
      {
        v44 = [OITSUNumberFormatter formatString:string transformedForNegativeStyle:v43];
      }

      else
      {
        v44 = [OITSUNumberFormatter defaultFormatStringForValueType:v33 negativeStyle:v43];
      }

      v35->mFormatString = v44;
      v35->mFormatStringRequiresSuppressionOfMinusSign = negativeStyle == 1;
    }

    placeholderDigitsCopy2 = placeholderDigits;
    if (code)
    {
      codeCopy = code;
    }

    else
    {
      v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUNumberFormat initWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:prefixString:suffixString:scaleFactor:base:basePlaces:baseUseMinusSign:isCustom:interstitialStrings:interstitialStringInsertionIndexes:indexFromRightOfLastDigitPlaceholder:minimumIntegerWidth:decimalWidth:numberOfNonSpaceIntegerPlaceholderDigits:numberOfNonSpaceDecimalPlaceholderDigits:isTextFormat:formatName:customFormatKey:]"];
      v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUNumberFormat.m"];
      v49 = v47;
      placeholderDigitsCopy2 = placeholderDigits;
      [OITSUAssertionHandler handleFailureInFunction:v49 file:v48 lineNumber:352 isFatal:0 description:"We require the currencyCode from the locale you are using, don't pass in nil."];
      +[OITSUAssertionHandler logBacktraceThrottled];
      v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUNumberFormat initWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:prefixString:suffixString:scaleFactor:base:basePlaces:baseUseMinusSign:isCustom:interstitialStrings:interstitialStringInsertionIndexes:indexFromRightOfLastDigitPlaceholder:minimumIntegerWidth:decimalWidth:numberOfNonSpaceIntegerPlaceholderDigits:numberOfNonSpaceDecimalPlaceholderDigits:isTextFormat:formatName:customFormatKey:]"];
      +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v50, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUNumberFormat.m"], 353, 0, "No locale passed in, falling to back current locale.");
      +[OITSUAssertionHandler logBacktraceThrottled];
      codeCopy = [+[OITSULocale currentLocale](OITSULocale "currentLocale")];
    }

    v35->mCurrencyCode = codeCopy;
    v35->mValueType = v33;
    v35->mDecimalPlaces = places;
    v35->mNegativeStyle = negativeStyle;
    v35->mShowThousandsSeparator = separator;
    v35->mUseAccountingStyle = v52;
    v35->mFractionAccuracy = accuracy;
    v35->mScaleFactor = factor;
    v35->mIsCustom = custom;
    v35->mCustomFormatKey = key;
    v35->mInterstitialStrings = strings;
    v35->mInterstitialStringInsertionIndexes = indexes;
    v35->mIsTextFormat = format;
    v35->mIndexFromRightOfLastDigitPlaceholder = placeholder;
    v35->mMinimumIntegerWidth = width;
    v35->mDecimalWidth = decimalWidth;
    v35->mNumberOfNonSpaceIntegerPlaceholderDigits = digits;
    v35->mNumberOfNonSpaceDecimalPlaceholderDigits = placeholderDigitsCopy2;
    v35->mFormatName = name;
    v35->mBase = base;
    v35->mBasePlaces = basePlaces;
    v35->mBaseUseMinusSign = sign;
    v35->mSuffixString = [suffixString copy];
    v35->mPrefixString = [prefixString copy];
    if (custom)
    {
      v35->mFormatContainsSpecialTokens = 0;
    }
  }

  return v35;
}

- (id)numberFormatBySettingNegativeStyle:(int)style
{
  v3 = *&style;
  v5 = objc_opt_class();
  valueType = [(OITSUNumberFormat *)self valueType];
  formatString = [(OITSUNumberFormat *)self formatString];
  decimalPlaces = [(OITSUNumberFormat *)self decimalPlaces];
  currencyCode = [(OITSUNumberFormat *)self currencyCode];
  usesAccountingStyle = [(OITSUNumberFormat *)self usesAccountingStyle];
  showThousandsSeparator = [(OITSUNumberFormat *)self showThousandsSeparator];
  fractionAccuracy = [(OITSUNumberFormat *)self fractionAccuracy];
  *(&v15 + 2) = *&self->mBasePlaces;
  LOBYTE(v15) = self->mBase;
  HIDWORD(v14) = fractionAccuracy;
  LOBYTE(v14) = showThousandsSeparator;
  return [v5 numberFormatWithValueType:valueType formatString:formatString decimalPlaces:decimalPlaces currencyCode:currencyCode useAccountingStyle:usesAccountingStyle negativeStyle:v3 showThousandsSeparator:self->mScaleFactor fractionAccuracy:v14 prefixString:self->mPrefixString suffixString:self->mSuffixString scaleFactor:v15 base:self->mFormatName basePlaces:? baseUseMinusSign:? isCustom:? formatName:?];
}

- (id)numberFormatBySettingUseAccountingStyle:(BOOL)style
{
  styleCopy = style;
  v5 = objc_opt_class();
  valueType = [(OITSUNumberFormat *)self valueType];
  formatString = [(OITSUNumberFormat *)self formatString];
  decimalPlaces = [(OITSUNumberFormat *)self decimalPlaces];
  currencyCode = [(OITSUNumberFormat *)self currencyCode];
  negativeStyle = [(OITSUNumberFormat *)self negativeStyle];
  showThousandsSeparator = [(OITSUNumberFormat *)self showThousandsSeparator];
  fractionAccuracy = [(OITSUNumberFormat *)self fractionAccuracy];
  *(&v15 + 2) = *&self->mBasePlaces;
  LOBYTE(v15) = self->mBase;
  HIDWORD(v14) = fractionAccuracy;
  LOBYTE(v14) = showThousandsSeparator;
  return [v5 numberFormatWithValueType:valueType formatString:formatString decimalPlaces:decimalPlaces currencyCode:currencyCode useAccountingStyle:styleCopy negativeStyle:negativeStyle showThousandsSeparator:self->mScaleFactor fractionAccuracy:v14 prefixString:self->mPrefixString suffixString:self->mSuffixString scaleFactor:v15 base:self->mFormatName basePlaces:? baseUseMinusSign:? isCustom:? formatName:?];
}

- (void)dealloc
{
  self->mFormatString = 0;

  self->mCurrencyCode = 0;
  self->mInterstitialStrings = 0;

  self->mInterstitialStringInsertionIndexes = 0;
  self->mFormatName = 0;

  self->mPrefixString = 0;
  self->mSuffixString = 0;

  self->mCustomFormatKey = 0;
  v3.receiver = self;
  v3.super_class = OITSUNumberFormat;
  [(OITSUNumberFormat *)&v3 dealloc];
}

- (void)setFormatName:(id)name
{
  nameCopy = name;

  self->mFormatName = name;
}

- (unsigned)decimalPlaces
{
  if (self->mDecimalPlaces == 0xFFFF)
  {
    return 0;
  }

  else
  {
    return self->mDecimalPlaces;
  }
}

- (BOOL)customFormatShouldAutoInsertPercentSymbol
{
  if (!self->mIsCustom)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUNumberFormat customFormatShouldAutoInsertPercentSymbol]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v3, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUNumberFormat.m"], 567, 0, "not a custom format!");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  [(OITSUNumberFormat *)self scaleFactor];
  return v4 == 100.0;
}

- (BOOL)usesTabs
{
  if (self->mFormatStringContainsTabCharacter)
  {
    return 1;
  }

  else
  {
    return self->mValueType == 1 && self->mUseAccountingStyle;
  }
}

- (id)stringFromDouble:(double)double locale:(id)locale forceSuppressMinusSign:(BOOL)sign
{
  [(OITSUNumberFormat *)self decimalPlaces];

  return [OITSUNumberFormat stringFromDouble:"stringFromDouble:locale:decimalPlaces:minimumDecimalPlaces:forceSuppressMinusSign:" locale:locale decimalPlaces:double minimumDecimalPlaces:? forceSuppressMinusSign:?];
}

- (id)stringFromDouble:(double)double locale:(id)locale
{
  [(OITSUNumberFormat *)self decimalPlaces];

  return [OITSUNumberFormat stringFromDouble:"stringFromDouble:locale:decimalPlaces:minimumDecimalPlaces:forceSuppressMinusSign:" locale:locale decimalPlaces:double minimumDecimalPlaces:? forceSuppressMinusSign:?];
}

- (id)stringFromDouble:(double)double locale:(id)locale minimumDecimalPlaces:(unsigned __int16)places forceSuppressMinusSign:(BOOL)sign
{
  signCopy = sign;
  placesCopy = places;
  decimalPlaces = [(OITSUNumberFormat *)self decimalPlaces];

  return [(OITSUNumberFormat *)self stringFromDouble:locale locale:decimalPlaces decimalPlaces:placesCopy minimumDecimalPlaces:signCopy forceSuppressMinusSign:double];
}

- (id)stringFromDouble:(double)double locale:(id)locale minimumDecimalPlaces:(unsigned __int16)places
{
  placesCopy = places;
  decimalPlaces = [(OITSUNumberFormat *)self decimalPlaces];

  return [(OITSUNumberFormat *)self stringFromDouble:locale locale:decimalPlaces decimalPlaces:placesCopy minimumDecimalPlaces:0 forceSuppressMinusSign:double];
}

- (id)stringFromDouble:(double)double locale:(id)locale decimalPlaces:(unsigned __int16)places minimumDecimalPlaces:(unsigned __int16)decimalPlaces forceSuppressMinusSign:(BOOL)sign
{
  mValueType = self->mValueType;
  formatString = [(OITSUNumberFormat *)self formatString];
  currencyCode = [(OITSUNumberFormat *)self currencyCode];
  hasValidDecimalPlaces = [(OITSUNumberFormat *)self hasValidDecimalPlaces];
  HIBYTE(v12) = self->mRequiresFractionReplacement;
  LOBYTE(v12) = self->mFormatContainsIntegerToken;
  HIBYTE(v11) = self->mFormatContainsSpecialTokens;
  LOBYTE(v11) = self->mIsCustom;
  HIWORD(v10) = self->mIndexFromRightOfLastDigitPlaceholder;
  WORD2(v10) = *&self->mNumberOfHashDecimalPlaceholders;
  LODWORD(v10) = *&self->mMinimumIntegerWidth;
  return TSUNumberFormatStringFromDouble(mValueType, places, decimalPlaces, sign, formatString, currencyCode, hasValidDecimalPlaces, self->mInterstitialStrings, double, self->mScaleFactor, self->mInterstitialStringInsertionIndexes, v10, self->mFormatStringRequiresSuppressionOfMinusSign, self->mIsTextFormat, v11, v12, [(OITSUNumberFormat *)self showThousandsSeparator], self->mUseAccountingStyle, *&self->mUseScientificFormattingAutomatically, self->mBase, self->mBasePlaces, self->mBaseUseMinusSign, self->mFractionAccuracy, locale);
}

- (id)stringFromString:(id)string
{
  if (!self->mIsTextFormat)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUNumberFormat stringFromString:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUNumberFormat.m"], 655, 0, "Attempt to generate a string from a string with a non-text number format!");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v6 = [MEMORY[0x277CCAB68] stringWithString:self->mFormatString];
  [v6 replaceOccurrencesOfString:objc_msgSend(MEMORY[0x277CCACA8] withString:"stringWithFormat:" options:@"%C" range:{TSUCustomNumberFormatTextReplacementCharacter), string, 0, 0, objc_msgSend(v6, "length")}];
  return v6;
}

- (BOOL)isEquivalent:(id)equivalent
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_26;
  }

  mValueType = self->mValueType;
  if (mValueType != *(equivalent + 2))
  {
    goto LABEL_26;
  }

  if (mValueType > 2)
  {
    switch(mValueType)
    {
      case 3:
        mDecimalPlaces = self->mDecimalPlaces;
        v7 = *(equivalent + 12);
        goto LABEL_29;
      case 4:
        mDecimalPlaces = self->mFractionAccuracy;
        v7 = *(equivalent + 13);
        goto LABEL_29;
      case 5:
        if (self->mBase == *(equivalent + 80) && self->mBasePlaces == *(equivalent + 41))
        {
          mDecimalPlaces = self->mBaseUseMinusSign;
          v7 = *(equivalent + 84);
          goto LABEL_29;
        }

LABEL_26:
        LOBYTE(v8) = 0;
        return v8;
    }

LABEL_17:

    LOBYTE(v8) = [(OITSUNumberFormat *)self isEqual:equivalent];
    return v8;
  }

  if (!mValueType)
  {
LABEL_7:
    if (self->mDecimalPlaces == *(equivalent + 12) && self->mNegativeStyle == *(equivalent + 11))
    {
      mDecimalPlaces = self->mShowThousandsSeparator;
      v7 = *(equivalent + 48);
LABEL_29:
      LOBYTE(v8) = mDecimalPlaces == v7;
      return v8;
    }

    goto LABEL_26;
  }

  if (mValueType != 1)
  {
    if (mValueType == 2)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

  if (self->mDecimalPlaces != *(equivalent + 12))
  {
    goto LABEL_26;
  }

  mCurrencyCode = self->mCurrencyCode;
  if (!(mCurrencyCode | *(equivalent + 4)) || (v8 = [(NSString *)mCurrencyCode isEqualToString:?]))
  {
    if (self->mNegativeStyle == *(equivalent + 11) && self->mShowThousandsSeparator == *(equivalent + 48))
    {
      mDecimalPlaces = self->mUseAccountingStyle;
      v7 = *(equivalent + 40);
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = self->mValueType << 24;
  v27 = [(NSString *)self->mFormatString hash]+ v3;
  v26 = self->mDecimalPlaces << 16;
  v24 = [(NSString *)self->mCurrencyCode hash];
  mUseAccountingStyle = self->mUseAccountingStyle;
  mNegativeStyle = self->mNegativeStyle;
  mShowThousandsSeparator = self->mShowThousandsSeparator;
  mFormatStringRequiresSuppressionOfMinusSign = self->mFormatStringRequiresSuppressionOfMinusSign;
  mFractionAccuracy = self->mFractionAccuracy;
  mIsCustom = self->mIsCustom;
  v18 = [(NSUUID *)self->mCustomFormatKey hash];
  mScaleFactor = self->mScaleFactor;
  mFormatStringContainsTabCharacter = self->mFormatStringContainsTabCharacter;
  mRequiresFractionReplacement = self->mRequiresFractionReplacement;
  v14 = [(NSArray *)self->mInterstitialStrings hash];
  v4 = [(NSIndexSet *)self->mInterstitialStringInsertionIndexes hash];
  mIndexFromRightOfLastDigitPlaceholder = self->mIndexFromRightOfLastDigitPlaceholder;
  mIsTextFormat = self->mIsTextFormat;
  mMinimumIntegerWidth = self->mMinimumIntegerWidth;
  mDecimalWidth = self->mDecimalWidth;
  mNumberOfNonSpaceIntegerPlaceholderDigits = self->mNumberOfNonSpaceIntegerPlaceholderDigits;
  mNumberOfNonSpaceDecimalPlaceholderDigits = self->mNumberOfNonSpaceDecimalPlaceholderDigits;
  v11 = [(NSString *)self->mFormatName hash];
  v12 = [(NSString *)self->mSuffixString hash];
  return v27 + v24 + v26 + mUseAccountingStyle + mNegativeStyle + mShowThousandsSeparator + mFractionAccuracy + mFormatStringRequiresSuppressionOfMinusSign + mIsCustom + v18 + mScaleFactor + mFormatStringContainsTabCharacter + mRequiresFractionReplacement + v14 + v4 + mIndexFromRightOfLastDigitPlaceholder + mIsTextFormat + mMinimumIntegerWidth + mDecimalWidth + mNumberOfNonSpaceIntegerPlaceholderDigits + mNumberOfNonSpaceDecimalPlaceholderDigits + v11 + v12 + [(NSString *)self->mPrefixString hash];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->mValueType != *(equal + 2))
  {
    goto LABEL_38;
  }

  mFormatString = self->mFormatString;
  if (mFormatString | *(equal + 2))
  {
    v6 = [(NSString *)mFormatString isEqualToString:?];
    if (!v6)
    {
      return v6;
    }
  }

  if (self->mDecimalPlaces != *(equal + 12))
  {
    goto LABEL_38;
  }

  mCurrencyCode = self->mCurrencyCode;
  if (mCurrencyCode | *(equal + 4))
  {
    v6 = [(NSString *)mCurrencyCode isEqualToString:?];
    if (!v6)
    {
      return v6;
    }
  }

  if (self->mUseAccountingStyle != *(equal + 40) || self->mNegativeStyle != *(equal + 11) || self->mShowThousandsSeparator != *(equal + 48) || self->mFractionAccuracy != *(equal + 13) || self->mFormatStringRequiresSuppressionOfMinusSign != *(equal + 56) || self->mIsCustom != *(equal + 85))
  {
    goto LABEL_38;
  }

  mCustomFormatKey = self->mCustomFormatKey;
  if (mCustomFormatKey | *(equal + 17))
  {
    v6 = [(NSUUID *)mCustomFormatKey isEqual:?];
    if (!v6)
    {
      return v6;
    }
  }

  if (self->mScaleFactor != *(equal + 11) || self->mFormatStringContainsTabCharacter != *(equal + 96) || self->mRequiresFractionReplacement != *(equal + 101))
  {
    goto LABEL_38;
  }

  mInterstitialStrings = self->mInterstitialStrings;
  if (mInterstitialStrings | *(equal + 13))
  {
    v6 = [(NSArray *)mInterstitialStrings isEqual:?];
    if (!v6)
    {
      return v6;
    }
  }

  mInterstitialStringInsertionIndexes = self->mInterstitialStringInsertionIndexes;
  if (mInterstitialStringInsertionIndexes | *(equal + 14))
  {
    v6 = [(NSIndexSet *)mInterstitialStringInsertionIndexes isEqual:?];
    if (!v6)
    {
      return v6;
    }
  }

  if (self->mIndexFromRightOfLastDigitPlaceholder != *(equal + 60) || self->mIsTextFormat != *(equal + 122) || self->mMinimumIntegerWidth != *(equal + 123) || self->mDecimalWidth != *(equal + 124) || self->mNumberOfNonSpaceIntegerPlaceholderDigits != *(equal + 125) || self->mNumberOfNonSpaceDecimalPlaceholderDigits != *(equal + 126))
  {
    goto LABEL_38;
  }

  mFormatName = self->mFormatName;
  if (mFormatName | *(equal + 16))
  {
    v6 = [(NSString *)mFormatName isEqual:?];
    if (!v6)
    {
      return v6;
    }
  }

  if (self->mBase != *(equal + 80) || self->mBasePlaces != *(equal + 41) || self->mBaseUseMinusSign != *(equal + 84))
  {
LABEL_38:
    LOBYTE(v6) = 0;
    return v6;
  }

  mSuffixString = self->mSuffixString;
  if (!(mSuffixString | *(equal + 9)) || (v6 = [(NSString *)mSuffixString isEqual:?]) != 0)
  {
    mPrefixString = self->mPrefixString;
    if (mPrefixString | *(equal + 8))
    {

      LOBYTE(v6) = [(NSString *)mPrefixString isEqual:?];
    }

    else
    {
      LOBYTE(v6) = 1;
    }
  }

  return v6;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:200];
  [(NSString *)v3 appendFormat:@"TSUNumberFormat[%p]\n", self];
  if (self->mIsCustom)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [(NSString *)v3 appendFormat:@"Custom Format: %@\n", v4];
  [(NSString *)v3 appendFormat:@"Name: %@\n", self->mFormatName];
  [(NSString *)v3 appendFormat:@"Value Type: %@\n", TSUNumberFormatterStringFromValueType(self->mValueType)];
  [(NSString *)v3 appendFormat:@"Format String: %@\n", self->mFormatString];
  [(NSString *)v3 appendFormat:@"Decimal Places: %d\n", self->mDecimalPlaces];
  [(NSString *)v3 appendFormat:@"Currency Code: %@\n", self->mCurrencyCode];
  if (self->mUseAccountingStyle)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [(NSString *)v3 appendFormat:@"Use Accounting Style: %@\n", v5];
  [(NSString *)v3 appendFormat:@"Negative Style: %@\n", TSUNumberFormatterStringFromNegativeStyle(self->mNegativeStyle)];
  if (self->mShowThousandsSeparator)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [(NSString *)v3 appendFormat:@"Show Thousands Separator: %@\n", v6];
  [(NSString *)v3 appendFormat:@"Fraction Accuracy: %@\n", TSUNumberFormatterStringFromFractionAccuracy(self->mFractionAccuracy)];
  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  BYTE6(v8) = self->mIsTextFormat;
  *(&v8 + 2) = *&self->mMinimumIntegerWidth;
  LOWORD(v8) = self->mIndexFromRightOfLastDigitPlaceholder;
  *(&v7 + 2) = *&self->mBasePlaces;
  LOBYTE(v7) = self->mBase;
  HIDWORD(v6) = self->mFractionAccuracy;
  LOBYTE(v6) = self->mShowThousandsSeparator;
  return [v4 initWithValueType:self->mValueType formatString:self->mFormatString decimalPlaces:self->mDecimalPlaces currencyCode:self->mCurrencyCode useAccountingStyle:self->mUseAccountingStyle negativeStyle:self->mNegativeStyle showThousandsSeparator:self->mScaleFactor fractionAccuracy:v6 prefixString:self->mPrefixString suffixString:self->mSuffixString scaleFactor:v7 base:self->mInterstitialStrings basePlaces:self->mInterstitialStringInsertionIndexes baseUseMinusSign:v8 isCustom:self->mFormatName interstitialStrings:self->mCustomFormatKey interstitialStringInsertionIndexes:? indexFromRightOfLastDigitPlaceholder:? minimumIntegerWidth:? decimalWidth:? numberOfNonSpaceIntegerPlaceholderDigits:? numberOfNonSpaceDecimalPlaceholderDigits:? isTextFormat:? formatName:? customFormatKey:?];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [OITSUMutableNumberFormat allocWithZone:zone];
  BYTE6(v8) = self->mIsTextFormat;
  *(&v8 + 2) = *&self->mMinimumIntegerWidth;
  LOWORD(v8) = self->mIndexFromRightOfLastDigitPlaceholder;
  *(&v7 + 2) = *&self->mBasePlaces;
  LOBYTE(v7) = self->mBase;
  HIDWORD(v6) = self->mFractionAccuracy;
  LOBYTE(v6) = self->mShowThousandsSeparator;
  return [OITSUNumberFormat initWithValueType:v4 formatString:"initWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:prefixString:suffixString:scaleFactor:base:basePlaces:baseUseMinusSign:isCustom:interstitialStrings:interstitialStringInsertionIndexes:indexFromRightOfLastDigitPlaceholder:minimumIntegerWidth:decimalWidth:numberOfNonSpaceIntegerPlaceholderDigits:numberOfNonSpaceDecimalPlaceholderDigits:isTextFormat:formatName:customFormatKey:" decimalPlaces:self->mValueType currencyCode:self->mFormatString useAccountingStyle:self->mDecimalPlaces negativeStyle:self->mCurrencyCode showThousandsSeparator:self->mUseAccountingStyle fractionAccuracy:self->mNegativeStyle prefixString:self->mScaleFactor suffixString:v6 scaleFactor:self->mPrefixString base:self->mSuffixString basePlaces:v7 baseUseMinusSign:self->mInterstitialStrings isCustom:self->mInterstitialStringInsertionIndexes interstitialStrings:v8 interstitialStringInsertionIndexes:self->mFormatName indexFromRightOfLastDigitPlaceholder:self->mCustomFormatKey minimumIntegerWidth:? decimalWidth:? numberOfNonSpaceIntegerPlaceholderDigits:? numberOfNonSpaceDecimalPlaceholderDigits:? isTextFormat:? formatName:? customFormatKey:?];
}

@end