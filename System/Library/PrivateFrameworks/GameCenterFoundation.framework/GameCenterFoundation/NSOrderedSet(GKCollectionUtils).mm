@interface NSOrderedSet(GKCollectionUtils)
- (id)_gkDistinctValuesForKeyPath:()GKCollectionUtils;
- (id)_gkMapDictionaryWithKeyPath:()GKCollectionUtils valueKeyPath:;
- (id)_gkValuesForKeyPath:()GKCollectionUtils;
@end

@implementation NSOrderedSet(GKCollectionUtils)

- (id)_gkMapDictionaryWithKeyPath:()GKCollectionUtils valueKeyPath:
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v22 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = a1;
  v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = [v12 valueForKeyPath:{v6, v22}];
        if (v7)
        {
          v14 = [v12 valueForKeyPath:v7];
        }

        else
        {
          v14 = v12;
        }

        v15 = v14;
        if (v13)
        {
          v16 = [MEMORY[0x277CBEB68] null];
          v17 = v16;
          if (v13 == v16 || v15 == 0)
          {
          }

          else
          {
            v19 = [MEMORY[0x277CBEB68] null];

            if (v15 != v19)
            {
              [v22 setObject:v15 forKey:v13];
            }
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)_gkValuesForKeyPath:()GKCollectionUtils
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = a1;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) valueForKeyPath:{v4, v14}];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_gkDistinctValuesForKeyPath:()GKCollectionUtils
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(a1, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = a1;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) valueForKeyPath:{v4, v14}];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

@end