@interface NSDictionary(Utilities)
- (id)mt_deepCopy;
- (id)mt_dictionarybyReplacingKey:()Utilities value:;
- (id)mt_removingKeys:()Utilities;
@end

@implementation NSDictionary(Utilities)

- (id)mt_removingKeys:()Utilities
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 mutableCopy];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = a1;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (([v4 containsObject:{v11, v15}] & 1) == 0)
        {
          [v5 removeObjectForKey:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)mt_deepCopy
{
  v28 = *MEMORY[0x277D85DE8];
  v20[1] = v20;
  v21 = [a1 count];
  v2 = 8 * v21;
  v3 = v20 - ((8 * v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v3, 8 * v21);
  v22 = v2;
  bzero(v3, v2);
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v23 = 0u;
  v4 = a1;
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        objc_storeStrong(&v3[8 * v7], v10);
        v11 = [v4 objectForKeyedSubscript:v10];
        if (objc_opt_respondsToSelector())
        {
          v12 = [v11 mt_deepCopy];

          v11 = v12;
        }

        v13 = *&v3[8 * v7];
        *&v3[8 * v7] = v11;

        ++v7;
      }

      v6 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  v14 = v21;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v3 count:v21];
  v16 = v22;
  if (v14)
  {
    v17 = v22;
    do
    {

      v17 -= 8;
    }

    while (v17);
    do
    {

      v16 -= 8;
    }

    while (v16);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)mt_dictionarybyReplacingKey:()Utilities value:
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 objectForKey:v6];
  v9 = v8;
  if (v8 == v7 || [v8 isEqual:v7])
  {
    v10 = a1;
  }

  else
  {
    v11 = [a1 mutableCopy];
    [v11 setObject:v7 forKeyedSubscript:v6];
    v10 = [v11 copy];
  }

  return v10;
}

@end