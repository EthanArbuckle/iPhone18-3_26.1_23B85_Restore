@interface HKPIIRedactor
+ (void)_addName:(void *)a3 toArray:;
+ (void)_addNames:(void *)a3 toArray:;
@end

@implementation HKPIIRedactor

+ (void)_addName:(void *)a3 toArray:
{
  v6 = a2;
  v4 = a3;
  objc_opt_self();
  if (v6 && [v6 length])
  {
    v5 = [v6 copy];
    [v4 addObject:v5];
  }
}

+ (void)_addNames:(void *)a3 toArray:
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(HKPIIRedactor *)v6 _addName:v5 toArray:?];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end