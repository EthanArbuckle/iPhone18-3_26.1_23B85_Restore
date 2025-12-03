@interface HKCodedValue(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (HDCodableCodedValue)codableRepresentationForSync;
@end

@implementation HKCodedValue(HDCodingSupport)

+ (id)createWithCodable:()HDCodingSupport
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = MEMORY[0x277CCD5C0];
    codings = [v4 codings];
    v7 = [(HKMedicalCoding *)v5 _medicalCodingsWithCodable:codings];

    if (v7)
    {
      v8 = MEMORY[0x277CCD550];
      value = [v4 value];
      v10 = [v8 createWithCodable:value];

      if (v10)
      {
        referenceRanges = [v4 referenceRanges];

        if (referenceRanges)
        {
          v22 = v10;
          referenceRanges = objc_alloc_init(MEMORY[0x277CBEB18]);
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          referenceRanges2 = [v4 referenceRanges];
          v13 = [referenceRanges2 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v24;
            while (2)
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v24 != v15)
                {
                  objc_enumerationMutation(referenceRanges2);
                }

                v17 = [MEMORY[0x277CCD890] createWithCodable:*(*(&v23 + 1) + 8 * i)];
                if (!v17)
                {

                  v19 = 0;
                  v10 = v22;
                  goto LABEL_19;
                }

                v18 = v17;
                [referenceRanges addObject:v17];
              }

              v14 = [referenceRanges2 countByEnumeratingWithState:&v23 objects:v27 count:16];
              if (v14)
              {
                continue;
              }

              break;
            }
          }

          v10 = v22;
        }

        v19 = [MEMORY[0x277CCD1A0] codedValueWithCodings:v7 value:v10 referenceRanges:referenceRanges];
LABEL_19:
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (HDCodableCodedValue)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableCodedValue);
  v3 = MEMORY[0x277CCD5C0];
  codings = [self codings];
  v5 = [(HKMedicalCoding *)v3 _codeableRepresentationForMedicalCodings:codings];
  [(HDCodableCodedValue *)v2 setCodings:v5];

  value = [self value];
  codableRepresentationForSync = [value codableRepresentationForSync];
  [(HDCodableCodedValue *)v2 setValue:codableRepresentationForSync];

  referenceRanges = [self referenceRanges];
  v9 = [referenceRanges hk_map:&__block_literal_global_495];
  v10 = [v9 mutableCopy];
  [(HDCodableCodedValue *)v2 setReferenceRanges:v10];

  return v2;
}

@end