@interface HKMedicalUserDomainConcept(HDSyncSupport)
- (id)codableSubclassData;
- (void)applyCodableSubclassData:()HDSyncSupport mutableUserDomainConceptProperties:;
@end

@implementation HKMedicalUserDomainConcept(HDSyncSupport)

- (void)applyCodableSubclassData:()HDSyncSupport mutableUserDomainConceptProperties:
{
  v4 = a3;
  v7 = [[HDCodableMedicalUserDomainConcept alloc] initWithData:v4];

  if (v7)
  {
    v5 = PBRepeatedInt64NSArray();
    [a1 _setCategoryTypes:v5];

    v6 = [(HDCodableMedicalUserDomainConcept *)v7 countryCode];
    [a1 _setCountryCode:v6];
  }
}

- (id)codableSubclassData
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(HDCodableMedicalUserDomainConcept);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [a1 categoryTypes];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        -[HDCodableMedicalUserDomainConcept addCategoryTypes:](v2, "addCategoryTypes:", [*(*(&v12 + 1) + 8 * i) longLongValue]);
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v8 = [a1 countryCode];
  [(HDCodableMedicalUserDomainConcept *)v2 setCountryCode:v8];

  v9 = [(HDCodableMedicalUserDomainConcept *)v2 data];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end