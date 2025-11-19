@interface NSDictionary(HDCodingSupport)
+ (id)hk_dictionaryOrNilWithCodableMetadata:()HDCodingSupport;
+ (id)hk_dictionaryWithCodableMetadata:()HDCodingSupport;
- (HDCodableMetadataDictionary)hk_codableMetadata;
@end

@implementation NSDictionary(HDCodingSupport)

- (HDCodableMetadataDictionary)hk_codableMetadata
{
  v2 = objc_alloc_init(HDCodableMetadataDictionary);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__NSDictionary_HDCodingSupport__hk_codableMetadata__block_invoke;
  v5[3] = &unk_27861CC70;
  v3 = v2;
  v6 = v3;
  [a1 enumerateKeysAndObjectsUsingBlock:v5];

  return v3;
}

+ (id)hk_dictionaryWithCodableMetadata:()HDCodingSupport
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 keyValuePairsCount];
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v4];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v24 = v3;
  v6 = [v3 keyValuePairs];
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      v10 = 0;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v25 + 1) + 8 * v10);
        v12 = [v11 key];
        if ([v11 hasStringValue])
        {
          v13 = [v11 stringValue];
LABEL_14:
          v15 = v13;
          goto LABEL_15;
        }

        if ([v11 hasNumberDoubleValue])
        {
          v14 = MEMORY[0x277CCABB0];
          [v11 numberDoubleValue];
          v13 = [v14 numberWithDouble:?];
          goto LABEL_14;
        }

        if ([v11 hasNumberIntValue])
        {
          v13 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v11, "numberIntValue")}];
          goto LABEL_14;
        }

        if ([v11 hasDateValue])
        {
          [v11 dateValue];
          v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
          goto LABEL_14;
        }

        if ([v11 hasQuantityValue])
        {
          v17 = MEMORY[0x277CCD7E8];
          v18 = [v11 quantityValue];
          v19 = [v17 createWithCodable:v18];
        }

        else
        {
          if (![v11 hasDataValue])
          {
            v15 = 0;
            goto LABEL_20;
          }

          v20 = MEMORY[0x277CBEA90];
          v18 = [v11 dataValue];
          v19 = [v20 dataWithData:v18];
        }

        v15 = v19;

LABEL_15:
        if (v12)
        {
          v16 = v15 == 0;
        }

        else
        {
          v16 = 1;
        }

        if (!v16)
        {
          [v5 setObject:v15 forKeyedSubscript:v12];
        }

LABEL_20:

        ++v10;
      }

      while (v8 != v10);
      v21 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
      v8 = v21;
    }

    while (v21);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)hk_dictionaryOrNilWithCodableMetadata:()HDCodingSupport
{
  v4 = a3;
  if ([v4 keyValuePairsCount])
  {
    v5 = [a1 hk_dictionaryWithCodableMetadata:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end