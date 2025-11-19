@interface HKObject(HDExtensions)
+ (id)hd_allObjectsToInsertWithObjects:()HDExtensions;
- (uint64_t)hd_dataEntityClass;
@end

@implementation HKObject(HDExtensions)

- (uint64_t)hd_dataEntityClass
{
  v0 = objc_opt_class();

  return [v0 hd_dataEntityClass];
}

+ (id)hd_allObjectsToInsertWithObjects:()HDExtensions
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CBEB40] orderedSet];
  v6 = [MEMORY[0x277CBEB40] orderedSet];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = [v12 hd_associatedObjects];
        v14 = [v13 mutableCopy];

        v15 = [v14 count];
        v16 = v5;
        if (v15)
        {
          [v5 addObjectsFromArray:v14];
          v16 = v6;
        }

        [v16 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  v17 = [v5 array];
  v18 = [v6 array];
  v19 = [v17 arrayByAddingObjectsFromArray:v18];

  objc_autoreleasePoolPop(v4);
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

@end