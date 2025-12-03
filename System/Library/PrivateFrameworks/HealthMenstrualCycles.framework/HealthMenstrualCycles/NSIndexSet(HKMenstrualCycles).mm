@interface NSIndexSet(HKMenstrualCycles)
+ (id)hk_indexSetWithArray:()HKMenstrualCycles;
- (id)hk_indexSetSubtractingIndexes:()HKMenstrualCycles;
@end

@implementation NSIndexSet(HKMenstrualCycles)

+ (id)hk_indexSetWithArray:()HKMenstrualCycles
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 addIndex:{objc_msgSend(*(*(&v13 + 1) + 8 * i), "integerValue", v13)}];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v10 = [v4 copy];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)hk_indexSetSubtractingIndexes:()HKMenstrualCycles
{
  v4 = a3;
  v5 = [self mutableCopy];
  [v5 removeIndexes:v4];

  v6 = [v5 copy];

  return v6;
}

@end