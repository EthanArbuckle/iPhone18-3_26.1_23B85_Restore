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
    [self _setCategoryTypes:v5];

    countryCode = [(HDCodableMedicalUserDomainConcept *)v7 countryCode];
    [self _setCountryCode:countryCode];
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
  categoryTypes = [self categoryTypes];
  v4 = [categoryTypes countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(categoryTypes);
        }

        -[HDCodableMedicalUserDomainConcept addCategoryTypes:](v2, "addCategoryTypes:", [*(*(&v12 + 1) + 8 * i) longLongValue]);
      }

      v5 = [categoryTypes countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  countryCode = [self countryCode];
  [(HDCodableMedicalUserDomainConcept *)v2 setCountryCode:countryCode];

  data = [(HDCodableMedicalUserDomainConcept *)v2 data];

  v10 = *MEMORY[0x277D85DE8];

  return data;
}

@end