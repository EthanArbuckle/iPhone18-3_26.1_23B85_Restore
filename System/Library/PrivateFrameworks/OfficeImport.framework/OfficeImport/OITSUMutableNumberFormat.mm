@interface OITSUMutableNumberFormat
- (void)p_copyIVarsFromNumberFormat:(id)a3;
- (void)setCurrencyCode:(id)a3;
- (void)setCustomFormatKey:(id)a3;
- (void)setNegativeStyle:(int)a3;
- (void)setNilValueForKey:(id)a3;
- (void)setPrefixString:(id)a3;
- (void)setSuffixString:(id)a3;
- (void)setUseAccountingStyle:(BOOL)a3;
@end

@implementation OITSUMutableNumberFormat

- (void)p_copyIVarsFromNumberFormat:(id)a3
{
  if (a3 == self)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUMutableNumberFormat p_copyIVarsFromNumberFormat:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUNumberFormat.m"], 1133, 0, "It's not safe to copy an object onto itself");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  self->super.mValueType = *(a3 + 2);

  self->super.mFormatString = *(a3 + 2);
  self->super.mDecimalPlaces = *(a3 + 12);

  self->super.mCurrencyCode = *(a3 + 4);
  self->super.mUseAccountingStyle = *(a3 + 40);
  self->super.mNegativeStyle = *(a3 + 11);
  self->super.mShowThousandsSeparator = *(a3 + 48);
  self->super.mFractionAccuracy = *(a3 + 13);
  self->super.mFormatStringRequiresSuppressionOfMinusSign = *(a3 + 56);
  self->super.mUseScientificFormattingAutomatically = *(a3 + 57);
  self->super.mIgnoreDecimalPlacesForZeroValue = *(a3 + 58);

  self->super.mPrefixString = *(a3 + 8);
  self->super.mSuffixString = *(a3 + 9);
  self->super.mBase = *(a3 + 80);
  self->super.mBasePlaces = *(a3 + 41);
  self->super.mBaseUseMinusSign = *(a3 + 84);
  self->super.mIsCustom = *(a3 + 85);
  self->super.mCustomFormatKey = *(a3 + 17);
  self->super.mScaleFactor = *(a3 + 11);
  self->super.mFormatStringContainsTabCharacter = *(a3 + 96);
  self->super.mFormatContainsSpecialTokens = *(a3 + 97);
  self->super.mFormatContainsIntegerToken = *(a3 + 98);
  self->super.mNumberOfHashDecimalPlaceholders = *(a3 + 99);
  self->super.mTotalNumberOfDecimalPlaceholdersInFormat = *(a3 + 100);
  self->super.mRequiresFractionReplacement = *(a3 + 101);

  self->super.mInterstitialStrings = *(a3 + 13);
  self->super.mInterstitialStringInsertionIndexes = *(a3 + 14);
  self->super.mIndexFromRightOfLastDigitPlaceholder = *(a3 + 60);
  self->super.mIsTextFormat = *(a3 + 122);
  self->super.mMinimumIntegerWidth = *(a3 + 123);
  self->super.mDecimalWidth = *(a3 + 124);
  self->super.mNumberOfNonSpaceIntegerPlaceholderDigits = *(a3 + 125);
  self->super.mNumberOfNonSpaceDecimalPlaceholderDigits = *(a3 + 126);

  self->super.mFormatName = *(a3 + 16);
}

- (void)setPrefixString:(id)a3
{
  mPrefixString = self->super.mPrefixString;
  if (mPrefixString != a3)
  {

    self->super.mPrefixString = [a3 copy];
  }
}

- (void)setSuffixString:(id)a3
{
  mSuffixString = self->super.mSuffixString;
  if (mSuffixString != a3)
  {

    self->super.mSuffixString = [a3 copy];
  }
}

- (void)setCurrencyCode:(id)a3
{
  mCurrencyCode = self->super.mCurrencyCode;
  if (mCurrencyCode != a3)
  {

    self->super.mCurrencyCode = [a3 copy];
  }
}

- (void)setNegativeStyle:(int)a3
{
  v4 = [(OITSUNumberFormat *)self numberFormatBySettingNegativeStyle:*&a3];

  [(OITSUMutableNumberFormat *)self p_copyIVarsFromNumberFormat:v4];
}

- (void)setUseAccountingStyle:(BOOL)a3
{
  v4 = [(OITSUNumberFormat *)self numberFormatBySettingUseAccountingStyle:a3];

  [(OITSUMutableNumberFormat *)self p_copyIVarsFromNumberFormat:v4];
}

- (void)setNilValueForKey:(id)a3
{
  if ([a3 isEqualToString:@"currencyCode"])
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUMutableNumberFormat setNilValueForKey:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUNumberFormat.m"], 1230, 0, "We require a locale to set the currencyCode properly, don't set it to nil.");
    +[OITSUAssertionHandler logBacktraceThrottled];
    v6 = [+[OITSULocale currentLocale](OITSULocale "currentLocale")];
    v7 = @"currencyCode";
  }

  else if ([a3 isEqualToString:@"prefixString"])
  {
    v6 = &stru_286EE1130;
    v7 = @"prefixString";
  }

  else
  {
    if (![a3 isEqualToString:@"suffixString"])
    {
      v8.receiver = self;
      v8.super_class = OITSUMutableNumberFormat;
      [(OITSUMutableNumberFormat *)&v8 setNilValueForKey:a3];
      return;
    }

    v6 = &stru_286EE1130;
    v7 = @"suffixString";
  }

  [(OITSUMutableNumberFormat *)self setValue:v6 forKey:v7];
}

- (void)setCustomFormatKey:(id)a3
{
  mCustomFormatKey = self->super.mCustomFormatKey;
  if (mCustomFormatKey != a3)
  {

    self->super.mCustomFormatKey = a3;
  }
}

@end