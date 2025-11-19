@interface NSDictionary(HMDUtilities)
+ (id)dictionaryByCombiningNonOverlappingDictionaries:()HMDUtilities;
- (id)firstKeyWithValue:()HMDUtilities;
@end

@implementation NSDictionary(HMDUtilities)

- (id)firstKeyWithValue:()HMDUtilities
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__NSDictionary_HMDUtilities__firstKeyWithValue___block_invoke;
  v8[3] = &unk_278676838;
  v9 = v4;
  v5 = v4;
  v6 = [a1 na_firstKeyPassingTest:v8];

  return v6;
}

+ (id)dictionaryByCombiningNonOverlappingDictionaries:()HMDUtilities
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 addEntriesFromDictionary:{*(*(&v12 + 1) + 8 * i), v12}];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

@end