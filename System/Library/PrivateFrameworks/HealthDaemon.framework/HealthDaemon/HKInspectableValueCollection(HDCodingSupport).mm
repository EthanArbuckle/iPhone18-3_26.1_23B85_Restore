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
  collectionType = [v4 collectionType];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  collections = [v4 collections];
  v8 = [collections countByEnumeratingWithState:&v19 objects:v23 count:16];
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
        objc_enumerationMutation(collections);
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
        v9 = [collections countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v9)
        {
          goto LABEL_4;
        }

        break;
      }
    }
  }

  v14 = MEMORY[0x277CCD5C0];
  elementTags = [v4 elementTags];
  collections = [(HKMedicalCoding *)v14 _medicalCodingsWithCodable:elementTags];

  if (!collections)
  {
LABEL_13:
    v16 = 0;
    goto LABEL_14;
  }

  v16 = [objc_alloc(MEMORY[0x277CCD558]) _initWithCollectionType:collectionType collection:v6 tags:collections];
LABEL_14:

LABEL_15:
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (HDCodableInspectableValueCollection)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableInspectableValueCollection);
  -[HDCodableInspectableValueCollection setCollectionType:](v2, "setCollectionType:", [self collectionType]);
  collection = [self collection];
  v4 = [collection hk_map:&__block_literal_global_491_0];
  v5 = [v4 mutableCopy];
  [(HDCodableInspectableValueCollection *)v2 setCollections:v5];

  v6 = MEMORY[0x277CCD5C0];
  elementTags = [self elementTags];
  v8 = [(HKMedicalCoding *)v6 _codeableRepresentationForMedicalCodings:elementTags];
  [(HDCodableInspectableValueCollection *)v2 setElementTags:v8];

  return v2;
}

@end