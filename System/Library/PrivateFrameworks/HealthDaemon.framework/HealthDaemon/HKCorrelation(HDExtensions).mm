@interface HKCorrelation(HDExtensions)
- (id)hd_associatedObjects;
- (id)hd_associatedSampleTypes;
@end

@implementation HKCorrelation(HDExtensions)

- (id)hd_associatedObjects
{
  objects = [self objects];
  allObjects = [objects allObjects];

  return allObjects;
}

- (id)hd_associatedSampleTypes
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  hd_associatedObjects = [self hd_associatedObjects];
  v4 = [hd_associatedObjects countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(hd_associatedObjects);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        hd_sampleType = [v8 hd_sampleType];

        if (hd_sampleType)
        {
          hd_sampleType2 = [v8 hd_sampleType];
          [v2 addObject:hd_sampleType2];
        }
      }

      v5 = [hd_associatedObjects countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  sampleType = [self sampleType];
  [v2 addObject:sampleType];

  v12 = [MEMORY[0x277CBEB98] setWithSet:v2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end