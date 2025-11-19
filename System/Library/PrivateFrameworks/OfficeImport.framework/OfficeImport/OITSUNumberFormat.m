@interface OITSUNumberFormat
+ (id)numberFormatWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(int)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(int)a10;
+ (id)numberFormatWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(int)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(int)a10 prefixString:(id)a11 suffixString:(id)a12 scaleFactor:(double)a13 base:(unsigned __int8)a14 basePlaces:(unsigned __int16)a15 baseUseMinusSign:(BOOL)a16 isCustom:(BOOL)a17 formatName:(id)a18;
- (BOOL)customFormatShouldAutoInsertPercentSymbol;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEquivalent:(id)a3;
- (BOOL)usesTabs;
- (NSString)description;
- (OITSUNumberFormat)init;
- (OITSUNumberFormat)initWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(int)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(int)a10;
- (OITSUNumberFormat)initWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(int)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(int)a10 base:(unsigned __int8)a11 basePlaces:(unsigned __int16)a12 baseUseMinusSign:(BOOL)a13;
- (OITSUNumberFormat)initWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(int)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(int)a10 prefixString:(id)a11 suffixString:(id)a12 isCustom:(BOOL)a13;
- (OITSUNumberFormat)initWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(int)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(int)a10 prefixString:(id)a11 suffixString:(id)a12 scaleFactor:(double)a13 base:(unsigned __int8)a14 basePlaces:(unsigned __int16)a15 baseUseMinusSign:(BOOL)a16 isCustom:(BOOL)a17 interstitialStrings:(id)a18 interstitialStringInsertionIndexes:(id)a19 indexFromRightOfLastDigitPlaceholder:(unsigned __int16)a20 minimumIntegerWidth:(unsigned __int8)a21 decimalWidth:(unsigned __int8)a22 numberOfNonSpaceIntegerPlaceholderDigits:(unsigned __int8)a23 numberOfNonSpaceDecimalPlaceholderDigits:(unsigned __int8)a24 isTextFormat:(BOOL)a25 formatName:(id)a26 customFormatKey:(id)a27;
- (OITSUNumberFormat)initWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(int)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(int)a10 suffixString:(id)a11;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initCustomFormatWithFormatString:(id)a3 currencyCode:(id)a4 showThousandsSeparator:(BOOL)a5 fractionAccuracy:(int)a6 scaleFactor:(double)a7 interstitialStrings:(id)a8 interstitialStringInsertionIndexes:(id)a9 indexFromRightOfLastDigitPlaceholder:(unsigned __int16)a10 minimumIntegerWidth:(unsigned __int8)a11 decimalWidth:(unsigned __int8)a12 numberOfNonSpaceIntegerPlaceholderDigits:(unsigned __int8)a13 numberOfNonSpaceDecimalPlaceholderDigits:(unsigned __int8)a14 isTextFormat:(BOOL)a15 formatName:(id)a16;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)numberFormatBySettingNegativeStyle:(int)a3;
- (id)numberFormatBySettingUseAccountingStyle:(BOOL)a3;
- (id)stringFromDouble:(double)a3 locale:(id)a4;
- (id)stringFromDouble:(double)a3 locale:(id)a4 decimalPlaces:(unsigned __int16)a5 minimumDecimalPlaces:(unsigned __int16)a6 forceSuppressMinusSign:(BOOL)a7;
- (id)stringFromDouble:(double)a3 locale:(id)a4 forceSuppressMinusSign:(BOOL)a5;
- (id)stringFromDouble:(double)a3 locale:(id)a4 minimumDecimalPlaces:(unsigned __int16)a5;
- (id)stringFromDouble:(double)a3 locale:(id)a4 minimumDecimalPlaces:(unsigned __int16)a5 forceSuppressMinusSign:(BOOL)a6;
- (id)stringFromString:(id)a3;
- (unint64_t)hash;
- (unsigned)decimalPlaces;
- (void)dealloc;
- (void)setFormatName:(id)a3;
@end

@implementation OITSUNumberFormat

+ (id)numberFormatWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(int)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(int)a10
{
  HIDWORD(v12) = a10;
  LOBYTE(v12) = a9;
  v10 = [[a1 alloc] initWithValueType:*&a3 formatString:a4 decimalPlaces:a5 currencyCode:a6 useAccountingStyle:a7 negativeStyle:*&a8 showThousandsSeparator:v12 fractionAccuracy:?];

  return v10;
}

+ (id)numberFormatWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(int)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(int)a10 prefixString:(id)a11 suffixString:(id)a12 scaleFactor:(double)a13 base:(unsigned __int8)a14 basePlaces:(unsigned __int16)a15 baseUseMinusSign:(BOOL)a16 isCustom:(BOOL)a17 formatName:(id)a18
{
  BYTE6(v22) = 0;
  *(&v22 + 2) = 0;
  LOWORD(v22) = 0;
  BYTE5(v21) = a17;
  BYTE4(v21) = a16;
  WORD1(v21) = a15;
  LOBYTE(v21) = a14;
  HIDWORD(v20) = a10;
  LOBYTE(v20) = a9;
  v18 = [[a1 alloc] initWithValueType:*&a3 formatString:a4 decimalPlaces:a5 currencyCode:a6 useAccountingStyle:a7 negativeStyle:a8 showThousandsSeparator:a13 fractionAccuracy:v20 prefixString:a11 suffixString:a12 scaleFactor:v21 base:0 basePlaces:0 baseUseMinusSign:v22 isCustom:a18 interstitialStrings:0 interstitialStringInsertionIndexes:? indexFromRightOfLastDigitPlaceholder:? minimumIntegerWidth:? decimalWidth:? numberOfNonSpaceIntegerPlaceholderDigits:? numberOfNonSpaceDecimalPlaceholderDigits:? isTextFormat:? formatName:? customFormatKey:?];

  return v18;
}

- (OITSUNumberFormat)init
{
  HIDWORD(v3) = -1;
  LOBYTE(v3) = 1;
  return [(OITSUNumberFormat *)self initWithValueType:0 formatString:0 decimalPlaces:2 currencyCode:+[OITSUNumberFormatter useAccountingStyle:"currentLocaleCurrencyCode"]negativeStyle:0 showThousandsSeparator:0 fractionAccuracy:v3];
}

- (id)initCustomFormatWithFormatString:(id)a3 currencyCode:(id)a4 showThousandsSeparator:(BOOL)a5 fractionAccuracy:(int)a6 scaleFactor:(double)a7 interstitialStrings:(id)a8 interstitialStringInsertionIndexes:(id)a9 indexFromRightOfLastDigitPlaceholder:(unsigned __int16)a10 minimumIntegerWidth:(unsigned __int8)a11 decimalWidth:(unsigned __int8)a12 numberOfNonSpaceIntegerPlaceholderDigits:(unsigned __int8)a13 numberOfNonSpaceDecimalPlaceholderDigits:(unsigned __int8)a14 isTextFormat:(BOOL)a15 formatName:(id)a16
{
  *(&v19 + 5) = __PAIR16__(a15, a14);
  *(&v19 + 3) = __PAIR16__(a13, a12);
  BYTE2(v19) = a11;
  LOWORD(v19) = a10;
  *(&v18 + 2) = 16842752;
  LOBYTE(v18) = 10;
  HIDWORD(v17) = a6;
  LOBYTE(v17) = a5;
  return [OITSUNumberFormat initWithValueType:"initWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:prefixString:suffixString:scaleFactor:base:basePlaces:baseUseMinusSign:isCustom:interstitialStrings:interstitialStringInsertionIndexes:indexFromRightOfLastDigitPlaceholder:minimumIntegerWidth:decimalWidth:numberOfNonSpaceIntegerPlaceholderDigits:numberOfNonSpaceDecimalPlaceholderDigits:isTextFormat:formatName:customFormatKey:" formatString:0 decimalPlaces:a3 currencyCode:0 useAccountingStyle:a4 negativeStyle:0 showThousandsSeparator:0 fractionAccuracy:a7 prefixString:v17 suffixString:0 scaleFactor:0 base:v18 basePlaces:a8 baseUseMinusSign:a9 isCustom:v19 interstitialStrings:a16 interstitialStringInsertionIndexes:0 indexFromRightOfLastDigitPlaceholder:? minimumIntegerWidth:? decimalWidth:? numberOfNonSpaceIntegerPlaceholderDigits:? numberOfNonSpaceDecimalPlaceholderDigits:? isTextFormat:? formatName:? customFormatKey:?];
}

- (OITSUNumberFormat)initWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(int)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(int)a10
{
  BYTE4(v12) = 1;
  WORD1(v12) = 0;
  LOBYTE(v12) = 10;
  HIDWORD(v11) = a10;
  LOBYTE(v11) = a9;
  return [OITSUNumberFormat initWithValueType:"initWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:base:basePlaces:baseUseMinusSign:" formatString:*&a3 decimalPlaces:a4 currencyCode:a5 useAccountingStyle:a6 negativeStyle:a7 showThousandsSeparator:*&a8 fractionAccuracy:v11 base:v12 basePlaces:? baseUseMinusSign:?];
}

- (OITSUNumberFormat)initWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(int)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(int)a10 base:(unsigned __int8)a11 basePlaces:(unsigned __int16)a12 baseUseMinusSign:(BOOL)a13
{
  BYTE6(v16) = 0;
  *(&v16 + 2) = 0;
  LOWORD(v16) = 0;
  BYTE5(v15) = 0;
  BYTE4(v15) = a13;
  WORD1(v15) = a12;
  LOBYTE(v15) = a11;
  HIDWORD(v14) = a10;
  LOBYTE(v14) = a9;
  return [OITSUNumberFormat initWithValueType:"initWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:prefixString:suffixString:scaleFactor:base:basePlaces:baseUseMinusSign:isCustom:interstitialStrings:interstitialStringInsertionIndexes:indexFromRightOfLastDigitPlaceholder:minimumIntegerWidth:decimalWidth:numberOfNonSpaceIntegerPlaceholderDigits:numberOfNonSpaceDecimalPlaceholderDigits:isTextFormat:formatName:customFormatKey:" formatString:*&a3 decimalPlaces:a4 currencyCode:a5 useAccountingStyle:a6 negativeStyle:a7 showThousandsSeparator:*&a8 fractionAccuracy:1.0 prefixString:v14 suffixString:0 scaleFactor:0 base:v15 basePlaces:0 baseUseMinusSign:0 isCustom:v16 interstitialStrings:0 interstitialStringInsertionIndexes:0 indexFromRightOfLastDigitPlaceholder:? minimumIntegerWidth:? decimalWidth:? numberOfNonSpaceIntegerPlaceholderDigits:? numberOfNonSpaceDecimalPlaceholderDigits:? isTextFormat:? formatName:? customFormatKey:?];
}

- (OITSUNumberFormat)initWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(int)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(int)a10 prefixString:(id)a11 suffixString:(id)a12 isCustom:(BOOL)a13
{
  BYTE6(v16) = 0;
  *(&v16 + 2) = 0;
  LOWORD(v16) = 0;
  BYTE5(v15) = a13;
  BYTE4(v15) = 1;
  WORD1(v15) = 0;
  LOBYTE(v15) = 10;
  HIDWORD(v14) = a10;
  LOBYTE(v14) = a9;
  return [OITSUNumberFormat initWithValueType:"initWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:prefixString:suffixString:scaleFactor:base:basePlaces:baseUseMinusSign:isCustom:interstitialStrings:interstitialStringInsertionIndexes:indexFromRightOfLastDigitPlaceholder:minimumIntegerWidth:decimalWidth:numberOfNonSpaceIntegerPlaceholderDigits:numberOfNonSpaceDecimalPlaceholderDigits:isTextFormat:formatName:customFormatKey:" formatString:*&a3 decimalPlaces:a4 currencyCode:a5 useAccountingStyle:a6 negativeStyle:a7 showThousandsSeparator:*&a8 fractionAccuracy:1.0 prefixString:v14 suffixString:a11 scaleFactor:a12 base:v15 basePlaces:0 baseUseMinusSign:0 isCustom:v16 interstitialStrings:0 interstitialStringInsertionIndexes:0 indexFromRightOfLastDigitPlaceholder:? minimumIntegerWidth:? decimalWidth:? numberOfNonSpaceIntegerPlaceholderDigits:? numberOfNonSpaceDecimalPlaceholderDigits:? isTextFormat:? formatName:? customFormatKey:?];
}

- (OITSUNumberFormat)initWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(int)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(int)a10 suffixString:(id)a11
{
  LOBYTE(v13) = 0;
  HIDWORD(v12) = a10;
  LOBYTE(v12) = a9;
  return [(OITSUNumberFormat *)self initWithValueType:*&a3 formatString:a4 decimalPlaces:a5 currencyCode:a6 useAccountingStyle:a7 negativeStyle:*&a8 showThousandsSeparator:v12 fractionAccuracy:0 prefixString:a11 suffixString:v13 isCustom:?];
}

- (OITSUNumberFormat)initWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(int)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(int)a10 prefixString:(id)a11 suffixString:(id)a12 scaleFactor:(double)a13 base:(unsigned __int8)a14 basePlaces:(unsigned __int16)a15 baseUseMinusSign:(BOOL)a16 isCustom:(BOOL)a17 interstitialStrings:(id)a18 interstitialStringInsertionIndexes:(id)a19 indexFromRightOfLastDigitPlaceholder:(unsigned __int16)a20 minimumIntegerWidth:(unsigned __int8)a21 decimalWidth:(unsigned __int8)a22 numberOfNonSpaceIntegerPlaceholderDigits:(unsigned __int8)a23 numberOfNonSpaceDecimalPlaceholderDigits:(unsigned __int8)a24 isTextFormat:(BOOL)a25 formatName:(id)a26 customFormatKey:(id)a27
{
  v29 = a7;
  v33 = *&a3;
  v53.receiver = self;
  v53.super_class = OITSUNumberFormat;
  v34 = [(OITSUNumberFormat *)&v53 init];
  v35 = v34;
  if (v34)
  {
    v34->mFormatStringContainsTabCharacter = 0;
    v52 = v29;
    if (a17)
    {
      if (!a4)
      {
        v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUNumberFormat initWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:prefixString:suffixString:scaleFactor:base:basePlaces:baseUseMinusSign:isCustom:interstitialStrings:interstitialStringInsertionIndexes:indexFromRightOfLastDigitPlaceholder:minimumIntegerWidth:decimalWidth:numberOfNonSpaceIntegerPlaceholderDigits:numberOfNonSpaceDecimalPlaceholderDigits:isTextFormat:formatName:customFormatKey:]"];
        +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v36, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUNumberFormat.m"], 310, 0, "Passed a nil format string while creating a custom format!");
        +[OITSUAssertionHandler logBacktraceThrottled];
      }

      v35->mFormatString = a4;
      v35->mFormatStringRequiresSuppressionOfMinusSign = 0;
      v37 = [a4 length];
      if (v37)
      {
        v38 = v37;
        for (i = 0; i != v38; ++i)
        {
          v40 = [a4 characterAtIndex:i];
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
      if (v29)
      {
        v42 = 2;
      }

      else
      {
        v42 = a8;
      }

      if (v33 != 1)
      {
        v42 = a8;
      }

      if (v33 == 3)
      {
        v43 = 0;
      }

      else
      {
        v43 = v42;
      }

      if (a4)
      {
        v44 = [OITSUNumberFormatter formatString:a4 transformedForNegativeStyle:v43];
      }

      else
      {
        v44 = [OITSUNumberFormatter defaultFormatStringForValueType:v33 negativeStyle:v43];
      }

      v35->mFormatString = v44;
      v35->mFormatStringRequiresSuppressionOfMinusSign = a8 == 1;
    }

    v45 = a24;
    if (a6)
    {
      v46 = a6;
    }

    else
    {
      v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUNumberFormat initWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:prefixString:suffixString:scaleFactor:base:basePlaces:baseUseMinusSign:isCustom:interstitialStrings:interstitialStringInsertionIndexes:indexFromRightOfLastDigitPlaceholder:minimumIntegerWidth:decimalWidth:numberOfNonSpaceIntegerPlaceholderDigits:numberOfNonSpaceDecimalPlaceholderDigits:isTextFormat:formatName:customFormatKey:]"];
      v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUNumberFormat.m"];
      v49 = v47;
      v45 = a24;
      [OITSUAssertionHandler handleFailureInFunction:v49 file:v48 lineNumber:352 isFatal:0 description:"We require the currencyCode from the locale you are using, don't pass in nil."];
      +[OITSUAssertionHandler logBacktraceThrottled];
      v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUNumberFormat initWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:prefixString:suffixString:scaleFactor:base:basePlaces:baseUseMinusSign:isCustom:interstitialStrings:interstitialStringInsertionIndexes:indexFromRightOfLastDigitPlaceholder:minimumIntegerWidth:decimalWidth:numberOfNonSpaceIntegerPlaceholderDigits:numberOfNonSpaceDecimalPlaceholderDigits:isTextFormat:formatName:customFormatKey:]"];
      +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v50, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUNumberFormat.m"], 353, 0, "No locale passed in, falling to back current locale.");
      +[OITSUAssertionHandler logBacktraceThrottled];
      v46 = [+[OITSULocale currentLocale](OITSULocale "currentLocale")];
    }

    v35->mCurrencyCode = v46;
    v35->mValueType = v33;
    v35->mDecimalPlaces = a5;
    v35->mNegativeStyle = a8;
    v35->mShowThousandsSeparator = a9;
    v35->mUseAccountingStyle = v52;
    v35->mFractionAccuracy = a10;
    v35->mScaleFactor = a13;
    v35->mIsCustom = a17;
    v35->mCustomFormatKey = a27;
    v35->mInterstitialStrings = a18;
    v35->mInterstitialStringInsertionIndexes = a19;
    v35->mIsTextFormat = a25;
    v35->mIndexFromRightOfLastDigitPlaceholder = a20;
    v35->mMinimumIntegerWidth = a21;
    v35->mDecimalWidth = a22;
    v35->mNumberOfNonSpaceIntegerPlaceholderDigits = a23;
    v35->mNumberOfNonSpaceDecimalPlaceholderDigits = v45;
    v35->mFormatName = a26;
    v35->mBase = a14;
    v35->mBasePlaces = a15;
    v35->mBaseUseMinusSign = a16;
    v35->mSuffixString = [a12 copy];
    v35->mPrefixString = [a11 copy];
    if (a17)
    {
      v35->mFormatContainsSpecialTokens = 0;
    }
  }

  return v35;
}

- (id)numberFormatBySettingNegativeStyle:(int)a3
{
  v3 = *&a3;
  v5 = objc_opt_class();
  v6 = [(OITSUNumberFormat *)self valueType];
  v7 = [(OITSUNumberFormat *)self formatString];
  v8 = [(OITSUNumberFormat *)self decimalPlaces];
  v9 = [(OITSUNumberFormat *)self currencyCode];
  v10 = [(OITSUNumberFormat *)self usesAccountingStyle];
  v11 = [(OITSUNumberFormat *)self showThousandsSeparator];
  v12 = [(OITSUNumberFormat *)self fractionAccuracy];
  *(&v15 + 2) = *&self->mBasePlaces;
  LOBYTE(v15) = self->mBase;
  HIDWORD(v14) = v12;
  LOBYTE(v14) = v11;
  return [v5 numberFormatWithValueType:v6 formatString:v7 decimalPlaces:v8 currencyCode:v9 useAccountingStyle:v10 negativeStyle:v3 showThousandsSeparator:self->mScaleFactor fractionAccuracy:v14 prefixString:self->mPrefixString suffixString:self->mSuffixString scaleFactor:v15 base:self->mFormatName basePlaces:? baseUseMinusSign:? isCustom:? formatName:?];
}

- (id)numberFormatBySettingUseAccountingStyle:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_class();
  v6 = [(OITSUNumberFormat *)self valueType];
  v7 = [(OITSUNumberFormat *)self formatString];
  v8 = [(OITSUNumberFormat *)self decimalPlaces];
  v9 = [(OITSUNumberFormat *)self currencyCode];
  v10 = [(OITSUNumberFormat *)self negativeStyle];
  v11 = [(OITSUNumberFormat *)self showThousandsSeparator];
  v12 = [(OITSUNumberFormat *)self fractionAccuracy];
  *(&v15 + 2) = *&self->mBasePlaces;
  LOBYTE(v15) = self->mBase;
  HIDWORD(v14) = v12;
  LOBYTE(v14) = v11;
  return [v5 numberFormatWithValueType:v6 formatString:v7 decimalPlaces:v8 currencyCode:v9 useAccountingStyle:v3 negativeStyle:v10 showThousandsSeparator:self->mScaleFactor fractionAccuracy:v14 prefixString:self->mPrefixString suffixString:self->mSuffixString scaleFactor:v15 base:self->mFormatName basePlaces:? baseUseMinusSign:? isCustom:? formatName:?];
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

- (void)setFormatName:(id)a3
{
  v5 = a3;

  self->mFormatName = a3;
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

- (id)stringFromDouble:(double)a3 locale:(id)a4 forceSuppressMinusSign:(BOOL)a5
{
  [(OITSUNumberFormat *)self decimalPlaces];

  return [OITSUNumberFormat stringFromDouble:"stringFromDouble:locale:decimalPlaces:minimumDecimalPlaces:forceSuppressMinusSign:" locale:a4 decimalPlaces:a3 minimumDecimalPlaces:? forceSuppressMinusSign:?];
}

- (id)stringFromDouble:(double)a3 locale:(id)a4
{
  [(OITSUNumberFormat *)self decimalPlaces];

  return [OITSUNumberFormat stringFromDouble:"stringFromDouble:locale:decimalPlaces:minimumDecimalPlaces:forceSuppressMinusSign:" locale:a4 decimalPlaces:a3 minimumDecimalPlaces:? forceSuppressMinusSign:?];
}

- (id)stringFromDouble:(double)a3 locale:(id)a4 minimumDecimalPlaces:(unsigned __int16)a5 forceSuppressMinusSign:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v11 = [(OITSUNumberFormat *)self decimalPlaces];

  return [(OITSUNumberFormat *)self stringFromDouble:a4 locale:v11 decimalPlaces:v7 minimumDecimalPlaces:v6 forceSuppressMinusSign:a3];
}

- (id)stringFromDouble:(double)a3 locale:(id)a4 minimumDecimalPlaces:(unsigned __int16)a5
{
  v5 = a5;
  v9 = [(OITSUNumberFormat *)self decimalPlaces];

  return [(OITSUNumberFormat *)self stringFromDouble:a4 locale:v9 decimalPlaces:v5 minimumDecimalPlaces:0 forceSuppressMinusSign:a3];
}

- (id)stringFromDouble:(double)a3 locale:(id)a4 decimalPlaces:(unsigned __int16)a5 minimumDecimalPlaces:(unsigned __int16)a6 forceSuppressMinusSign:(BOOL)a7
{
  mValueType = self->mValueType;
  v17 = [(OITSUNumberFormat *)self formatString];
  v16 = [(OITSUNumberFormat *)self currencyCode];
  v14 = [(OITSUNumberFormat *)self hasValidDecimalPlaces];
  HIBYTE(v12) = self->mRequiresFractionReplacement;
  LOBYTE(v12) = self->mFormatContainsIntegerToken;
  HIBYTE(v11) = self->mFormatContainsSpecialTokens;
  LOBYTE(v11) = self->mIsCustom;
  HIWORD(v10) = self->mIndexFromRightOfLastDigitPlaceholder;
  WORD2(v10) = *&self->mNumberOfHashDecimalPlaceholders;
  LODWORD(v10) = *&self->mMinimumIntegerWidth;
  return TSUNumberFormatStringFromDouble(mValueType, a5, a6, a7, v17, v16, v14, self->mInterstitialStrings, a3, self->mScaleFactor, self->mInterstitialStringInsertionIndexes, v10, self->mFormatStringRequiresSuppressionOfMinusSign, self->mIsTextFormat, v11, v12, [(OITSUNumberFormat *)self showThousandsSeparator], self->mUseAccountingStyle, *&self->mUseScientificFormattingAutomatically, self->mBase, self->mBasePlaces, self->mBaseUseMinusSign, self->mFractionAccuracy, a4);
}

- (id)stringFromString:(id)a3
{
  if (!self->mIsTextFormat)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUNumberFormat stringFromString:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUNumberFormat.m"], 655, 0, "Attempt to generate a string from a string with a non-text number format!");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v6 = [MEMORY[0x277CCAB68] stringWithString:self->mFormatString];
  [v6 replaceOccurrencesOfString:objc_msgSend(MEMORY[0x277CCACA8] withString:"stringWithFormat:" options:@"%C" range:{TSUCustomNumberFormatTextReplacementCharacter), a3, 0, 0, objc_msgSend(v6, "length")}];
  return v6;
}

- (BOOL)isEquivalent:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_26;
  }

  mValueType = self->mValueType;
  if (mValueType != *(a3 + 2))
  {
    goto LABEL_26;
  }

  if (mValueType > 2)
  {
    switch(mValueType)
    {
      case 3:
        mDecimalPlaces = self->mDecimalPlaces;
        v7 = *(a3 + 12);
        goto LABEL_29;
      case 4:
        mDecimalPlaces = self->mFractionAccuracy;
        v7 = *(a3 + 13);
        goto LABEL_29;
      case 5:
        if (self->mBase == *(a3 + 80) && self->mBasePlaces == *(a3 + 41))
        {
          mDecimalPlaces = self->mBaseUseMinusSign;
          v7 = *(a3 + 84);
          goto LABEL_29;
        }

LABEL_26:
        LOBYTE(v8) = 0;
        return v8;
    }

LABEL_17:

    LOBYTE(v8) = [(OITSUNumberFormat *)self isEqual:a3];
    return v8;
  }

  if (!mValueType)
  {
LABEL_7:
    if (self->mDecimalPlaces == *(a3 + 12) && self->mNegativeStyle == *(a3 + 11))
    {
      mDecimalPlaces = self->mShowThousandsSeparator;
      v7 = *(a3 + 48);
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

  if (self->mDecimalPlaces != *(a3 + 12))
  {
    goto LABEL_26;
  }

  mCurrencyCode = self->mCurrencyCode;
  if (!(mCurrencyCode | *(a3 + 4)) || (v8 = [(NSString *)mCurrencyCode isEqualToString:?]))
  {
    if (self->mNegativeStyle == *(a3 + 11) && self->mShowThousandsSeparator == *(a3 + 48))
    {
      mDecimalPlaces = self->mUseAccountingStyle;
      v7 = *(a3 + 40);
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

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->mValueType != *(a3 + 2))
  {
    goto LABEL_38;
  }

  mFormatString = self->mFormatString;
  if (mFormatString | *(a3 + 2))
  {
    v6 = [(NSString *)mFormatString isEqualToString:?];
    if (!v6)
    {
      return v6;
    }
  }

  if (self->mDecimalPlaces != *(a3 + 12))
  {
    goto LABEL_38;
  }

  mCurrencyCode = self->mCurrencyCode;
  if (mCurrencyCode | *(a3 + 4))
  {
    v6 = [(NSString *)mCurrencyCode isEqualToString:?];
    if (!v6)
    {
      return v6;
    }
  }

  if (self->mUseAccountingStyle != *(a3 + 40) || self->mNegativeStyle != *(a3 + 11) || self->mShowThousandsSeparator != *(a3 + 48) || self->mFractionAccuracy != *(a3 + 13) || self->mFormatStringRequiresSuppressionOfMinusSign != *(a3 + 56) || self->mIsCustom != *(a3 + 85))
  {
    goto LABEL_38;
  }

  mCustomFormatKey = self->mCustomFormatKey;
  if (mCustomFormatKey | *(a3 + 17))
  {
    v6 = [(NSUUID *)mCustomFormatKey isEqual:?];
    if (!v6)
    {
      return v6;
    }
  }

  if (self->mScaleFactor != *(a3 + 11) || self->mFormatStringContainsTabCharacter != *(a3 + 96) || self->mRequiresFractionReplacement != *(a3 + 101))
  {
    goto LABEL_38;
  }

  mInterstitialStrings = self->mInterstitialStrings;
  if (mInterstitialStrings | *(a3 + 13))
  {
    v6 = [(NSArray *)mInterstitialStrings isEqual:?];
    if (!v6)
    {
      return v6;
    }
  }

  mInterstitialStringInsertionIndexes = self->mInterstitialStringInsertionIndexes;
  if (mInterstitialStringInsertionIndexes | *(a3 + 14))
  {
    v6 = [(NSIndexSet *)mInterstitialStringInsertionIndexes isEqual:?];
    if (!v6)
    {
      return v6;
    }
  }

  if (self->mIndexFromRightOfLastDigitPlaceholder != *(a3 + 60) || self->mIsTextFormat != *(a3 + 122) || self->mMinimumIntegerWidth != *(a3 + 123) || self->mDecimalWidth != *(a3 + 124) || self->mNumberOfNonSpaceIntegerPlaceholderDigits != *(a3 + 125) || self->mNumberOfNonSpaceDecimalPlaceholderDigits != *(a3 + 126))
  {
    goto LABEL_38;
  }

  mFormatName = self->mFormatName;
  if (mFormatName | *(a3 + 16))
  {
    v6 = [(NSString *)mFormatName isEqual:?];
    if (!v6)
    {
      return v6;
    }
  }

  if (self->mBase != *(a3 + 80) || self->mBasePlaces != *(a3 + 41) || self->mBaseUseMinusSign != *(a3 + 84))
  {
LABEL_38:
    LOBYTE(v6) = 0;
    return v6;
  }

  mSuffixString = self->mSuffixString;
  if (!(mSuffixString | *(a3 + 9)) || (v6 = [(NSString *)mSuffixString isEqual:?]) != 0)
  {
    mPrefixString = self->mPrefixString;
    if (mPrefixString | *(a3 + 8))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  BYTE6(v8) = self->mIsTextFormat;
  *(&v8 + 2) = *&self->mMinimumIntegerWidth;
  LOWORD(v8) = self->mIndexFromRightOfLastDigitPlaceholder;
  *(&v7 + 2) = *&self->mBasePlaces;
  LOBYTE(v7) = self->mBase;
  HIDWORD(v6) = self->mFractionAccuracy;
  LOBYTE(v6) = self->mShowThousandsSeparator;
  return [v4 initWithValueType:self->mValueType formatString:self->mFormatString decimalPlaces:self->mDecimalPlaces currencyCode:self->mCurrencyCode useAccountingStyle:self->mUseAccountingStyle negativeStyle:self->mNegativeStyle showThousandsSeparator:self->mScaleFactor fractionAccuracy:v6 prefixString:self->mPrefixString suffixString:self->mSuffixString scaleFactor:v7 base:self->mInterstitialStrings basePlaces:self->mInterstitialStringInsertionIndexes baseUseMinusSign:v8 isCustom:self->mFormatName interstitialStrings:self->mCustomFormatKey interstitialStringInsertionIndexes:? indexFromRightOfLastDigitPlaceholder:? minimumIntegerWidth:? decimalWidth:? numberOfNonSpaceIntegerPlaceholderDigits:? numberOfNonSpaceDecimalPlaceholderDigits:? isTextFormat:? formatName:? customFormatKey:?];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [OITSUMutableNumberFormat allocWithZone:a3];
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