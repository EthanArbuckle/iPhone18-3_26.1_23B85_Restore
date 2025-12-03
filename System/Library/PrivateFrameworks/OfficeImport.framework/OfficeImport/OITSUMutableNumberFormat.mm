@interface OITSUMutableNumberFormat
- (void)p_copyIVarsFromNumberFormat:(id)format;
- (void)setCurrencyCode:(id)code;
- (void)setCustomFormatKey:(id)key;
- (void)setNegativeStyle:(int)style;
- (void)setNilValueForKey:(id)key;
- (void)setPrefixString:(id)string;
- (void)setSuffixString:(id)string;
- (void)setUseAccountingStyle:(BOOL)style;
@end

@implementation OITSUMutableNumberFormat

- (void)p_copyIVarsFromNumberFormat:(id)format
{
  if (format == self)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUMutableNumberFormat p_copyIVarsFromNumberFormat:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUNumberFormat.m"], 1133, 0, "It's not safe to copy an object onto itself");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  self->super.mValueType = *(format + 2);

  self->super.mFormatString = *(format + 2);
  self->super.mDecimalPlaces = *(format + 12);

  self->super.mCurrencyCode = *(format + 4);
  self->super.mUseAccountingStyle = *(format + 40);
  self->super.mNegativeStyle = *(format + 11);
  self->super.mShowThousandsSeparator = *(format + 48);
  self->super.mFractionAccuracy = *(format + 13);
  self->super.mFormatStringRequiresSuppressionOfMinusSign = *(format + 56);
  self->super.mUseScientificFormattingAutomatically = *(format + 57);
  self->super.mIgnoreDecimalPlacesForZeroValue = *(format + 58);

  self->super.mPrefixString = *(format + 8);
  self->super.mSuffixString = *(format + 9);
  self->super.mBase = *(format + 80);
  self->super.mBasePlaces = *(format + 41);
  self->super.mBaseUseMinusSign = *(format + 84);
  self->super.mIsCustom = *(format + 85);
  self->super.mCustomFormatKey = *(format + 17);
  self->super.mScaleFactor = *(format + 11);
  self->super.mFormatStringContainsTabCharacter = *(format + 96);
  self->super.mFormatContainsSpecialTokens = *(format + 97);
  self->super.mFormatContainsIntegerToken = *(format + 98);
  self->super.mNumberOfHashDecimalPlaceholders = *(format + 99);
  self->super.mTotalNumberOfDecimalPlaceholdersInFormat = *(format + 100);
  self->super.mRequiresFractionReplacement = *(format + 101);

  self->super.mInterstitialStrings = *(format + 13);
  self->super.mInterstitialStringInsertionIndexes = *(format + 14);
  self->super.mIndexFromRightOfLastDigitPlaceholder = *(format + 60);
  self->super.mIsTextFormat = *(format + 122);
  self->super.mMinimumIntegerWidth = *(format + 123);
  self->super.mDecimalWidth = *(format + 124);
  self->super.mNumberOfNonSpaceIntegerPlaceholderDigits = *(format + 125);
  self->super.mNumberOfNonSpaceDecimalPlaceholderDigits = *(format + 126);

  self->super.mFormatName = *(format + 16);
}

- (void)setPrefixString:(id)string
{
  mPrefixString = self->super.mPrefixString;
  if (mPrefixString != string)
  {

    self->super.mPrefixString = [string copy];
  }
}

- (void)setSuffixString:(id)string
{
  mSuffixString = self->super.mSuffixString;
  if (mSuffixString != string)
  {

    self->super.mSuffixString = [string copy];
  }
}

- (void)setCurrencyCode:(id)code
{
  mCurrencyCode = self->super.mCurrencyCode;
  if (mCurrencyCode != code)
  {

    self->super.mCurrencyCode = [code copy];
  }
}

- (void)setNegativeStyle:(int)style
{
  v4 = [(OITSUNumberFormat *)self numberFormatBySettingNegativeStyle:*&style];

  [(OITSUMutableNumberFormat *)self p_copyIVarsFromNumberFormat:v4];
}

- (void)setUseAccountingStyle:(BOOL)style
{
  v4 = [(OITSUNumberFormat *)self numberFormatBySettingUseAccountingStyle:style];

  [(OITSUMutableNumberFormat *)self p_copyIVarsFromNumberFormat:v4];
}

- (void)setNilValueForKey:(id)key
{
  if ([key isEqualToString:@"currencyCode"])
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUMutableNumberFormat setNilValueForKey:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUNumberFormat.m"], 1230, 0, "We require a locale to set the currencyCode properly, don't set it to nil.");
    +[OITSUAssertionHandler logBacktraceThrottled];
    v6 = [+[OITSULocale currentLocale](OITSULocale "currentLocale")];
    v7 = @"currencyCode";
  }

  else if ([key isEqualToString:@"prefixString"])
  {
    v6 = &stru_286EE1130;
    v7 = @"prefixString";
  }

  else
  {
    if (![key isEqualToString:@"suffixString"])
    {
      v8.receiver = self;
      v8.super_class = OITSUMutableNumberFormat;
      [(OITSUMutableNumberFormat *)&v8 setNilValueForKey:key];
      return;
    }

    v6 = &stru_286EE1130;
    v7 = @"suffixString";
  }

  [(OITSUMutableNumberFormat *)self setValue:v6 forKey:v7];
}

- (void)setCustomFormatKey:(id)key
{
  mCustomFormatKey = self->super.mCustomFormatKey;
  if (mCustomFormatKey != key)
  {

    self->super.mCustomFormatKey = key;
  }
}

@end