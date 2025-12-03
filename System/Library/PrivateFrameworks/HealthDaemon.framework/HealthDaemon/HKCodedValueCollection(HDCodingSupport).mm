@interface HKCodedValueCollection(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (HDCodableCodedValueCollection)codableRepresentationForSync;
@end

@implementation HKCodedValueCollection(HDCodingSupport)

+ (id)createWithCodable:()HDCodingSupport
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    codedValues = [v4 codedValues];
    v7 = [codedValues countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(codedValues);
          }

          v11 = [MEMORY[0x277CCD1A0] createWithCodable:*(*(&v16 + 1) + 8 * i)];
          if (!v11)
          {

            v13 = 0;
            goto LABEL_13;
          }

          v12 = v11;
          [v5 addObject:v11];
        }

        v8 = [codedValues countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v13 = [MEMORY[0x277CCD1A8] codedValueCollectionWithCodedValues:v5];
LABEL_13:
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (HDCodableCodedValueCollection)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableCodedValueCollection);
  codedValues = [self codedValues];
  v4 = [codedValues hk_map:&__block_literal_global_482];
  v5 = [v4 mutableCopy];
  [(HDCodableCodedValueCollection *)v2 setCodedValues:v5];

  return v2;
}

@end