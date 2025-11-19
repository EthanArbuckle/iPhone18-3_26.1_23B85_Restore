@interface HKInspectableValueCollection(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (HDCodableInspectableValueCollection)codableRepresentationForSync;
@end

@implementation HKInspectableValueCollection(HDCodingSupport)

+ (id)createWithCodable:()HDCodingSupport
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = 0;
    goto LABEL_15;
  }

  v4 = v3;
  v5 = [v4 collectionType];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [v4 collections];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
LABEL_4:
    v11 = 0;
    while (1)
    {
      if (*v20 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = [MEMORY[0x277CCD550] createWithCodable:*(*(&v19 + 1) + 8 * v11)];
      if (!v12)
      {
        goto LABEL_13;
      }

      v13 = v12;
      [v6 addObject:v12];

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v9)
        {
          goto LABEL_4;
        }

        break;
      }
    }
  }

  v14 = MEMORY[0x277CCD5C0];
  v15 = [v4 elementTags];
  v7 = [(HKMedicalCoding *)v14 _medicalCodingsWithCodable:v15];

  if (!v7)
  {
LABEL_13:
    v16 = 0;
    goto LABEL_14;
  }

  v16 = [objc_alloc(MEMORY[0x277CCD558]) _initWithCollectionType:v5 collection:v6 tags:v7];
LABEL_14:

LABEL_15:
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (HDCodableInspectableValueCollection)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableInspectableValueCollection);
  -[HDCodableInspectableValueCollection setCollectionType:](v2, "setCollectionType:", [a1 collectionType]);
  v3 = [a1 collection];
  v4 = [v3 hk_map:&__block_literal_global_491_0];
  v5 = [v4 mutableCopy];
  [(HDCodableInspectableValueCollection *)v2 setCollections:v5];

  v6 = MEMORY[0x277CCD5C0];
  v7 = [a1 elementTags];
  v8 = [(HKMedicalCoding *)v6 _codeableRepresentationForMedicalCodings:v7];
  [(HDCodableInspectableValueCollection *)v2 setElementTags:v8];

  return v2;
}

@end