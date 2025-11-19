@interface UIView(CarTableViewAdditions)
- (id)_CPS_recursiveSubviewsWithClass:()CarTableViewAdditions;
@end

@implementation UIView(CarTableViewAdditions)

- (id)_CPS_recursiveSubviewsWithClass:()CarTableViewAdditions
{
  v21 = *MEMORY[0x277D85DE8];
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = [MEMORY[0x277CBEB18] array];
  memset(__b, 0, sizeof(__b));
  obj = [v19 subviews];
  v13 = [obj countByEnumeratingWithState:__b objects:v20 count:16];
  if (v13)
  {
    v9 = *__b[2];
    v10 = 0;
    v11 = v13;
    while (1)
    {
      v8 = v10;
      if (*__b[2] != v9)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(__b[1] + 8 * v10);
      v6 = v16;
      v7 = [v15 _CPS_recursiveSubviewsWithClass:v17];
      [v6 addObjectsFromArray:?];
      MEMORY[0x277D82BD8](v7);
      if (objc_opt_isKindOfClass())
      {
        [v16 addObject:v15];
      }

      ++v10;
      if (v8 + 1 >= v11)
      {
        v10 = 0;
        v11 = [obj countByEnumeratingWithState:__b objects:v20 count:16];
        if (!v11)
        {
          break;
        }
      }
    }
  }

  *&v3 = MEMORY[0x277D82BD8](obj).n128_u64[0];
  v5 = [v16 copy];
  objc_storeStrong(&v16, 0);

  return v5;
}

@end