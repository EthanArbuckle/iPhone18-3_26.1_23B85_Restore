@interface HKOntologyLocalizedEducationContent(HDSyncSupport)
+ (id)createWithCodable:()HDSyncSupport;
- (HDCodableOntologyLocalizedEducationContent)codableRepresentationForSync;
@end

@implementation HKOntologyLocalizedEducationContent(HDSyncSupport)

- (HDCodableOntologyLocalizedEducationContent)codableRepresentationForSync
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(HDCodableOntologyLocalizedEducationContent);
  -[HDCodableOntologyLocalizedEducationContent setVersion:](v2, "setVersion:", [a1 version]);
  [a1 timestamp];
  [(HDCodableOntologyLocalizedEducationContent *)v2 setTimestamp:?];
  v23 = v2;
  -[HDCodableOntologyLocalizedEducationContent setDeleted:](v2, "setDeleted:", [a1 isDeleted]);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v22 = a1;
  obj = [a1 sections];
  v24 = [obj countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v24)
  {
    v21 = *v29;
    do
    {
      v3 = 0;
      do
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v28 + 1) + 8 * v3);
        if (v22)
        {
          v26 = v3;
          v5 = objc_alloc_init(HDCodableOntologyLocalizedEducationContentSection);
          -[HDCodableOntologyLocalizedEducationContentSection setSectionType:](v5, "setSectionType:", [v4 sectionType]);
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v25 = v4;
          v27 = [v4 sectionData];
          v6 = [v27 countByEnumeratingWithState:&v32 objects:v41 count:16];
          if (v6)
          {
            v7 = v6;
            v8 = *v33;
            do
            {
              for (i = 0; i != v7; ++i)
              {
                if (*v33 != v8)
                {
                  objc_enumerationMutation(v27);
                }

                v10 = *(*(&v32 + 1) + 8 * i);
                v11 = objc_alloc_init(HDCodableSectionData);
                v36 = 0u;
                v37 = 0u;
                v38 = 0u;
                v39 = 0u;
                v12 = [v10 stringValues];
                v13 = [v12 countByEnumeratingWithState:&v36 objects:v42 count:16];
                if (v13)
                {
                  v14 = v13;
                  v15 = *v37;
                  do
                  {
                    for (j = 0; j != v14; ++j)
                    {
                      if (*v37 != v15)
                      {
                        objc_enumerationMutation(v12);
                      }

                      [(HDCodableSectionData *)v11 addStringValues:*(*(&v36 + 1) + 8 * j)];
                    }

                    v14 = [v12 countByEnumeratingWithState:&v36 objects:v42 count:16];
                  }

                  while (v14);
                }

                -[HDCodableSectionData setSectionDataType:](v11, "setSectionDataType:", [v10 sectionDataType]);
                -[HDCodableSectionData setVersion:](v11, "setVersion:", [v10 version]);
                [v10 timestamp];
                [(HDCodableSectionData *)v11 setTimestamp:?];
                -[HDCodableSectionData setDeleted:](v11, "setDeleted:", [v10 deleted]);

                [(HDCodableOntologyLocalizedEducationContentSection *)v5 addSectionData:v11];
              }

              v7 = [v27 countByEnumeratingWithState:&v32 objects:v41 count:16];
            }

            while (v7);
          }

          v4 = v25;
          v3 = v26;
        }

        else
        {
          v5 = 0;
        }

        [(HDCodableOntologyLocalizedEducationContent *)v23 addSections:v5];
        ++v3;
      }

      while (v3 != v24);
      v17 = [obj countByEnumeratingWithState:&v28 objects:v40 count:16];
      v24 = v17;
    }

    while (v17);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)createWithCodable:()HDSyncSupport
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [v4 sections];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __72__HKOntologyLocalizedEducationContent_HDSyncSupport__createWithCodable___block_invoke;
    v13[3] = &__block_descriptor_40_e59__16__0__HDCodableOntologyLocalizedEducationContentSection_8l;
    v13[4] = a1;
    v6 = [v5 hk_map:v13];

    v7 = objc_alloc(MEMORY[0x277CCD750]);
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = MEMORY[0x277CBEBF8];
    }

    v9 = [v4 version];
    [v4 timestamp];
    v11 = [v7 initWithSections:v8 version:v9 timestamp:objc_msgSend(v4 deleted:{"deleted"), v10}];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end