@interface HKCorrelation(HDExtensions)
- (id)hd_associatedObjects;
- (id)hd_associatedSampleTypes;
@end

@implementation HKCorrelation(HDExtensions)

- (id)hd_associatedObjects
{
  v1 = [a1 objects];
  v2 = [v1 allObjects];

  return v2;
}

- (id)hd_associatedSampleTypes
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [a1 hd_associatedObjects];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 hd_sampleType];

        if (v9)
        {
          v10 = [v8 hd_sampleType];
          [v2 addObject:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v11 = [a1 sampleType];
  [v2 addObject:v11];

  v12 = [MEMORY[0x277CBEB98] setWithSet:v2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end