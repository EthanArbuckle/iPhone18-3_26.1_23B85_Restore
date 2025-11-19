@interface NSDictionary
@end

@implementation NSDictionary

void __51__NSDictionary_HDCodingSupport__hk_codableMetadata__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = objc_alloc_init(HDCodableMetadataKeyValuePair);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [(HDCodableMetadataKeyValuePair *)v6 setKey:v9];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(HDCodableMetadataKeyValuePair *)v6 setStringValue:v5];
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_16:
    [*(a1 + 32) addKeyValuePairs:v6];
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v5;
    if ([v8 hk_hasFloatingPointValue])
    {
      [v8 doubleValue];
      [(HDCodableMetadataKeyValuePair *)v6 setNumberDoubleValue:?];
    }

    else
    {
      -[HDCodableMetadataKeyValuePair setNumberIntValue:](v6, "setNumberIntValue:", [v8 longLongValue]);
    }

LABEL_15:

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 timeIntervalSinceReferenceDate];
    [(HDCodableMetadataKeyValuePair *)v6 setDateValue:?];
    if (isKindOfClass)
    {
      goto LABEL_16;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v5 codableRepresentationForSync];
      [(HDCodableMetadataKeyValuePair *)v6 setQuantityValue:v8];
      goto LABEL_15;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(HDCodableMetadataKeyValuePair *)v6 setDataValue:v5];
      if (isKindOfClass)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_17:
}

@end