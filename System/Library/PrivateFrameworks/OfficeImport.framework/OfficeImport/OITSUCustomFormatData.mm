@interface OITSUCustomFormatData
+ (id)customFormatData;
- (BOOL)isEqual:(id)a3;
- (OITSUCustomFormatData)init;
- (OITSUCustomFormatData)initWithCustomFormatData:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)p_copySelfTo:(id)a3;
@end

@implementation OITSUCustomFormatData

+ (id)customFormatData
{
  v2 = objc_alloc_init(OITSUCustomFormatData);

  return v2;
}

- (OITSUCustomFormatData)initWithCustomFormatData:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = OITSUCustomFormatData;
  v5 = [(OITSUCustomFormatData *)&v7 init];
  if (v5)
  {
    [v4 p_copySelfTo:v5];
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

- (void)p_copySelfTo:(id)a3
{
  v7 = a3;
  v4 = [(OITSUCustomFormatData *)self formatString];
  [v7 setFormatString:v4];

  v5 = [(OITSUCustomFormatData *)self interstitialStrings];
  [v7 setInterstitialStrings:v5];

  v6 = [(OITSUCustomFormatData *)self interstitialStringInsertionIndexes];
  [v7 setInterstitialStringInsertionIndexes:v6];

  [(OITSUCustomFormatData *)self scaleFactor];
  [v7 setScaleFactor:?];
  [v7 setFractionAccuracy:{-[OITSUCustomFormatData fractionAccuracy](self, "fractionAccuracy")}];
  [v7 setMinimumIntegerWidth:{-[OITSUCustomFormatData minimumIntegerWidth](self, "minimumIntegerWidth")}];
  [v7 setDecimalWidth:{-[OITSUCustomFormatData decimalWidth](self, "decimalWidth")}];
  [v7 setNumberOfNonSpaceIntegerPlaceholderDigits:{-[OITSUCustomFormatData numberOfNonSpaceIntegerPlaceholderDigits](self, "numberOfNonSpaceIntegerPlaceholderDigits")}];
  [v7 setNumberOfNonSpaceDecimalPlaceholderDigits:{-[OITSUCustomFormatData numberOfNonSpaceDecimalPlaceholderDigits](self, "numberOfNonSpaceDecimalPlaceholderDigits")}];
  [v7 setIndexFromRightOfLastDigitPlaceholder:{-[OITSUCustomFormatData indexFromRightOfLastDigitPlaceholder](self, "indexFromRightOfLastDigitPlaceholder")}];
  [v7 setNumberOfHashDecimalPlaceholders:{-[OITSUCustomFormatData numberOfHashDecimalPlaceholders](self, "numberOfHashDecimalPlaceholders")}];
  [v7 setTotalNumberOfDecimalPlaceholdersInFormat:-[OITSUCustomFormatData totalNumberOfDecimalPlaceholdersInFormat](self, "totalNumberOfDecimalPlaceholdersInFormat")];
  [v7 setCurrencyCodeIndex:{-[OITSUCustomFormatData currencyCodeIndex](self, "currencyCodeIndex")}];
  [v7 setShowThousandsSeparator:{-[OITSUCustomFormatData showThousandsSeparator](self, "showThousandsSeparator")}];
  [v7 setUseAccountingStyle:{-[OITSUCustomFormatData useAccountingStyle](self, "useAccountingStyle")}];
  [v7 setRequiresFractionReplacement:{-[OITSUCustomFormatData requiresFractionReplacement](self, "requiresFractionReplacement")}];
  [v7 setIsConditional:{-[OITSUCustomFormatData isConditional](self, "isConditional")}];
  [v7 setFormatContainsIntegerToken:{-[OITSUCustomFormatData formatContainsIntegerToken](self, "formatContainsIntegerToken")}];
  [v7 setIsComplexFormat:-[OITSUCustomFormatData isComplexFormat](self, "isComplexFormat")];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [(OITSUCustomFormatData *)[OITSUMutableCustomFormatData allocWithZone:?]];
  [(OITSUCustomFormatData *)self p_copySelfTo:v4];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = TSUDynamicCast(v5, v4);

  if (!v6)
  {
    goto LABEL_30;
  }

  v7 = [(OITSUCustomFormatData *)self showThousandsSeparator];
  if (v7 != [v6 showThousandsSeparator])
  {
    goto LABEL_30;
  }

  v8 = [(OITSUCustomFormatData *)self useAccountingStyle];
  if (v8 != [v6 useAccountingStyle])
  {
    goto LABEL_30;
  }

  v9 = [(OITSUCustomFormatData *)self requiresFractionReplacement];
  if (v9 != [v6 requiresFractionReplacement])
  {
    goto LABEL_30;
  }

  v10 = [(OITSUCustomFormatData *)self isConditional];
  if (v10 != [v6 isConditional])
  {
    goto LABEL_30;
  }

  v11 = [(OITSUCustomFormatData *)self formatContainsIntegerToken];
  if (v11 != [v6 formatContainsIntegerToken])
  {
    goto LABEL_30;
  }

  v12 = [(OITSUCustomFormatData *)self isComplexFormat];
  if (v12 != [v6 isComplexFormat])
  {
    goto LABEL_30;
  }

  v13 = [(OITSUCustomFormatData *)self fractionAccuracy];
  if (v13 != [v6 fractionAccuracy])
  {
    goto LABEL_30;
  }

  v14 = [(OITSUCustomFormatData *)self minimumIntegerWidth];
  if (v14 != [v6 minimumIntegerWidth])
  {
    goto LABEL_30;
  }

  v15 = [(OITSUCustomFormatData *)self decimalWidth];
  if (v15 != [v6 decimalWidth])
  {
    goto LABEL_30;
  }

  v16 = [(OITSUCustomFormatData *)self numberOfNonSpaceIntegerPlaceholderDigits];
  if (v16 != [v6 numberOfNonSpaceIntegerPlaceholderDigits])
  {
    goto LABEL_30;
  }

  v17 = [(OITSUCustomFormatData *)self numberOfNonSpaceDecimalPlaceholderDigits];
  if (v17 != [v6 numberOfNonSpaceDecimalPlaceholderDigits])
  {
    goto LABEL_30;
  }

  v18 = [(OITSUCustomFormatData *)self indexFromRightOfLastDigitPlaceholder];
  if (v18 != [v6 indexFromRightOfLastDigitPlaceholder])
  {
    goto LABEL_30;
  }

  v19 = [(OITSUCustomFormatData *)self numberOfHashDecimalPlaceholders];
  if (v19 != [v6 numberOfHashDecimalPlaceholders])
  {
    goto LABEL_30;
  }

  v20 = [(OITSUCustomFormatData *)self totalNumberOfDecimalPlaceholdersInFormat];
  if (v20 != [v6 totalNumberOfDecimalPlaceholdersInFormat])
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

  v24 = [(OITSUCustomFormatData *)self currencyCodeIndex];
  if (v24 != [v6 currencyCodeIndex])
  {
    goto LABEL_30;
  }

  v25 = [(OITSUCustomFormatData *)self formatString];

  if (v25)
  {
    v26 = [(OITSUCustomFormatData *)self formatString];
    v27 = [v6 formatString];
    v28 = [v26 isEqualToString:v27];

    if ((v28 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v29 = [v6 formatString];

    if (v29)
    {
      goto LABEL_30;
    }
  }

  v30 = [(OITSUCustomFormatData *)self interstitialStrings];

  if (v30)
  {
    v31 = [(OITSUCustomFormatData *)self interstitialStrings];
    v32 = [v6 interstitialStrings];
    v33 = [v31 isEqualToArray:v32];

    if ((v33 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v34 = [v6 interstitialStrings];

    if (v34)
    {
      goto LABEL_30;
    }
  }

  v35 = [(OITSUCustomFormatData *)self interstitialStringInsertionIndexes];

  if (!v35)
  {
    v40 = [v6 interstitialStringInsertionIndexes];

    if (!v40)
    {
      goto LABEL_28;
    }

LABEL_30:
    v39 = 0;
    goto LABEL_31;
  }

  v36 = [(OITSUCustomFormatData *)self interstitialStringInsertionIndexes];
  v37 = [v6 interstitialStringInsertionIndexes];
  v38 = [v36 isEqualToIndexSet:v37];

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
  v2 = [(OITSUCustomFormatData *)self formatString];
  v3 = [v2 hash];

  return v3;
}

@end