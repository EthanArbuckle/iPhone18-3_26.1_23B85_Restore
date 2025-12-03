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
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  orderedSet2 = [MEMORY[0x277CBEB40] orderedSet];
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
        hd_associatedObjects = [v12 hd_associatedObjects];
        v14 = [hd_associatedObjects mutableCopy];

        v15 = [v14 count];
        v16 = orderedSet;
        if (v15)
        {
          [orderedSet addObjectsFromArray:v14];
          v16 = orderedSet2;
        }

        [v16 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  array = [orderedSet array];
  array2 = [orderedSet2 array];
  v19 = [array arrayByAddingObjectsFromArray:array2];

  objc_autoreleasePoolPop(v4);
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

@end