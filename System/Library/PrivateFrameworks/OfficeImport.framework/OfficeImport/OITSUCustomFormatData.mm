@interface OITSUCustomFormatData
+ (id)customFormatData;
- (BOOL)isEqual:(id)equal;
- (OITSUCustomFormatData)init;
- (OITSUCustomFormatData)initWithCustomFormatData:(id)data;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)p_copySelfTo:(id)to;
@end

@implementation OITSUCustomFormatData

+ (id)customFormatData
{
  v2 = objc_alloc_init(OITSUCustomFormatData);

  return v2;
}

- (OITSUCustomFormatData)initWithCustomFormatData:(id)data
{
  dataCopy = data;
  v7.receiver = self;
  v7.super_class = OITSUCustomFormatData;
  v5 = [(OITSUCustomFormatData *)&v7 init];
  if (v5)
  {
    [dataCopy p_copySelfTo:v5];
  }

  return v5;
}

- (OITSUCustomFormatData)init
{
  v3.receiver = self;
  v3.super_class = OITSUCustomFormatData;
  result = [(OITSUCustomFormatData *)&v3 init];
  if (result)
  {
    result->_scaleFactor = 1.0;
    result->_fractionAccuracy = -3;
    *&result->_showThousandsSeparator = 0;
    result->_formatContainsIntegerToken = 1;
  }

  return result;
}

- (void)p_copySelfTo:(id)to
{
  toCopy = to;
  formatString = [(OITSUCustomFormatData *)self formatString];
  [toCopy setFormatString:formatString];

  interstitialStrings = [(OITSUCustomFormatData *)self interstitialStrings];
  [toCopy setInterstitialStrings:interstitialStrings];

  interstitialStringInsertionIndexes = [(OITSUCustomFormatData *)self interstitialStringInsertionIndexes];
  [toCopy setInterstitialStringInsertionIndexes:interstitialStringInsertionIndexes];

  [(OITSUCustomFormatData *)self scaleFactor];
  [toCopy setScaleFactor:?];
  [toCopy setFractionAccuracy:{-[OITSUCustomFormatData fractionAccuracy](self, "fractionAccuracy")}];
  [toCopy setMinimumIntegerWidth:{-[OITSUCustomFormatData minimumIntegerWidth](self, "minimumIntegerWidth")}];
  [toCopy setDecimalWidth:{-[OITSUCustomFormatData decimalWidth](self, "decimalWidth")}];
  [toCopy setNumberOfNonSpaceIntegerPlaceholderDigits:{-[OITSUCustomFormatData numberOfNonSpaceIntegerPlaceholderDigits](self, "numberOfNonSpaceIntegerPlaceholderDigits")}];
  [toCopy setNumberOfNonSpaceDecimalPlaceholderDigits:{-[OITSUCustomFormatData numberOfNonSpaceDecimalPlaceholderDigits](self, "numberOfNonSpaceDecimalPlaceholderDigits")}];
  [toCopy setIndexFromRightOfLastDigitPlaceholder:{-[OITSUCustomFormatData indexFromRightOfLastDigitPlaceholder](self, "indexFromRightOfLastDigitPlaceholder")}];
  [toCopy setNumberOfHashDecimalPlaceholders:{-[OITSUCustomFormatData numberOfHashDecimalPlaceholders](self, "numberOfHashDecimalPlaceholders")}];
  [toCopy setTotalNumberOfDecimalPlaceholdersInFormat:-[OITSUCustomFormatData totalNumberOfDecimalPlaceholdersInFormat](self, "totalNumberOfDecimalPlaceholdersInFormat")];
  [toCopy setCurrencyCodeIndex:{-[OITSUCustomFormatData currencyCodeIndex](self, "currencyCodeIndex")}];
  [toCopy setShowThousandsSeparator:{-[OITSUCustomFormatData showThousandsSeparator](self, "showThousandsSeparator")}];
  [toCopy setUseAccountingStyle:{-[OITSUCustomFormatData useAccountingStyle](self, "useAccountingStyle")}];
  [toCopy setRequiresFractionReplacement:{-[OITSUCustomFormatData requiresFractionReplacement](self, "requiresFractionReplacement")}];
  [toCopy setIsConditional:{-[OITSUCustomFormatData isConditional](self, "isConditional")}];
  [toCopy setFormatContainsIntegerToken:{-[OITSUCustomFormatData formatContainsIntegerToken](self, "formatContainsIntegerToken")}];
  [toCopy setIsComplexFormat:-[OITSUCustomFormatData isComplexFormat](self, "isComplexFormat")];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [(OITSUCustomFormatData *)[OITSUMutableCustomFormatData allocWithZone:?]];
  [(OITSUCustomFormatData *)self p_copySelfTo:v4];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = TSUDynamicCast(v5, equalCopy);

  if (!v6)
  {
    goto LABEL_30;
  }

  showThousandsSeparator = [(OITSUCustomFormatData *)self showThousandsSeparator];
  if (showThousandsSeparator != [v6 showThousandsSeparator])
  {
    goto LABEL_30;
  }

  useAccountingStyle = [(OITSUCustomFormatData *)self useAccountingStyle];
  if (useAccountingStyle != [v6 useAccountingStyle])
  {
    goto LABEL_30;
  }

  requiresFractionReplacement = [(OITSUCustomFormatData *)self requiresFractionReplacement];
  if (requiresFractionReplacement != [v6 requiresFractionReplacement])
  {
    goto LABEL_30;
  }

  isConditional = [(OITSUCustomFormatData *)self isConditional];
  if (isConditional != [v6 isConditional])
  {
    goto LABEL_30;
  }

  formatContainsIntegerToken = [(OITSUCustomFormatData *)self formatContainsIntegerToken];
  if (formatContainsIntegerToken != [v6 formatContainsIntegerToken])
  {
    goto LABEL_30;
  }

  isComplexFormat = [(OITSUCustomFormatData *)self isComplexFormat];
  if (isComplexFormat != [v6 isComplexFormat])
  {
    goto LABEL_30;
  }

  fractionAccuracy = [(OITSUCustomFormatData *)self fractionAccuracy];
  if (fractionAccuracy != [v6 fractionAccuracy])
  {
    goto LABEL_30;
  }

  minimumIntegerWidth = [(OITSUCustomFormatData *)self minimumIntegerWidth];
  if (minimumIntegerWidth != [v6 minimumIntegerWidth])
  {
    goto LABEL_30;
  }

  decimalWidth = [(OITSUCustomFormatData *)self decimalWidth];
  if (decimalWidth != [v6 decimalWidth])
  {
    goto LABEL_30;
  }

  numberOfNonSpaceIntegerPlaceholderDigits = [(OITSUCustomFormatData *)self numberOfNonSpaceIntegerPlaceholderDigits];
  if (numberOfNonSpaceIntegerPlaceholderDigits != [v6 numberOfNonSpaceIntegerPlaceholderDigits])
  {
    goto LABEL_30;
  }

  numberOfNonSpaceDecimalPlaceholderDigits = [(OITSUCustomFormatData *)self numberOfNonSpaceDecimalPlaceholderDigits];
  if (numberOfNonSpaceDecimalPlaceholderDigits != [v6 numberOfNonSpaceDecimalPlaceholderDigits])
  {
    goto LABEL_30;
  }

  indexFromRightOfLastDigitPlaceholder = [(OITSUCustomFormatData *)self indexFromRightOfLastDigitPlaceholder];
  if (indexFromRightOfLastDigitPlaceholder != [v6 indexFromRightOfLastDigitPlaceholder])
  {
    goto LABEL_30;
  }

  numberOfHashDecimalPlaceholders = [(OITSUCustomFormatData *)self numberOfHashDecimalPlaceholders];
  if (numberOfHashDecimalPlaceholders != [v6 numberOfHashDecimalPlaceholders])
  {
    goto LABEL_30;
  }

  totalNumberOfDecimalPlaceholdersInFormat = [(OITSUCustomFormatData *)self totalNumberOfDecimalPlaceholdersInFormat];
  if (totalNumberOfDecimalPlaceholdersInFormat != [v6 totalNumberOfDecimalPlaceholdersInFormat])
  {
    goto LABEL_30;
  }

  [(OITSUCustomFormatData *)self scaleFactor];
  v22 = v21;
  [v6 scaleFactor];
  if (v22 != v23)
  {
    goto LABEL_30;
  }

  currencyCodeIndex = [(OITSUCustomFormatData *)self currencyCodeIndex];
  if (currencyCodeIndex != [v6 currencyCodeIndex])
  {
    goto LABEL_30;
  }

  formatString = [(OITSUCustomFormatData *)self formatString];

  if (formatString)
  {
    formatString2 = [(OITSUCustomFormatData *)self formatString];
    formatString3 = [v6 formatString];
    v28 = [formatString2 isEqualToString:formatString3];

    if ((v28 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    formatString4 = [v6 formatString];

    if (formatString4)
    {
      goto LABEL_30;
    }
  }

  interstitialStrings = [(OITSUCustomFormatData *)self interstitialStrings];

  if (interstitialStrings)
  {
    interstitialStrings2 = [(OITSUCustomFormatData *)self interstitialStrings];
    interstitialStrings3 = [v6 interstitialStrings];
    v33 = [interstitialStrings2 isEqualToArray:interstitialStrings3];

    if ((v33 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    interstitialStrings4 = [v6 interstitialStrings];

    if (interstitialStrings4)
    {
      goto LABEL_30;
    }
  }

  interstitialStringInsertionIndexes = [(OITSUCustomFormatData *)self interstitialStringInsertionIndexes];

  if (!interstitialStringInsertionIndexes)
  {
    interstitialStringInsertionIndexes2 = [v6 interstitialStringInsertionIndexes];

    if (!interstitialStringInsertionIndexes2)
    {
      goto LABEL_28;
    }

LABEL_30:
    v39 = 0;
    goto LABEL_31;
  }

  interstitialStringInsertionIndexes3 = [(OITSUCustomFormatData *)self interstitialStringInsertionIndexes];
  interstitialStringInsertionIndexes4 = [v6 interstitialStringInsertionIndexes];
  v38 = [interstitialStringInsertionIndexes3 isEqualToIndexSet:interstitialStringInsertionIndexes4];

  if ((v38 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_28:
  v39 = 1;
LABEL_31:

  return v39;
}

- (unint64_t)hash
{
  formatString = [(OITSUCustomFormatData *)self formatString];
  v3 = [formatString hash];

  return v3;
}

@end