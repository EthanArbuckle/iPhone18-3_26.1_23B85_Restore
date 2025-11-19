@interface HKSample(HDExtensions)
+ (void)hd_sampleTypesForObjects:()HDExtensions;
- (id)hd_associatedSampleTypes;
@end

@implementation HKSample(HDExtensions)

- (id)hd_associatedSampleTypes
{
  v1 = MEMORY[0x277CBEB98];
  v2 = [a1 hd_sampleType];
  v3 = [v1 setWithObject:v2];

  return v3;
}

+ (void)hd_sampleTypesForObjects:()HDExtensions
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB58] set];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v12 = [v10 hd_associatedSampleTypes];
        [v4 unionSet:v12];

        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v13 = v4;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

@end