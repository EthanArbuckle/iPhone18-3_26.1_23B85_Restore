@interface NSDictionary(CRKGenericAdditions)
- (id)crk_dictionaryByFilteringToKeys:()CRKGenericAdditions;
- (id)crk_mapToDictionary:()CRKGenericAdditions;
- (id)crk_mapUsingBlock:()CRKGenericAdditions;
@end

@implementation NSDictionary(CRKGenericAdditions)

- (id)crk_mapToDictionary:()CRKGenericAdditions
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__NSDictionary_CRKGenericAdditions__crk_mapToDictionary___block_invoke;
  v15[3] = &unk_278DC2588;
  v16 = v5;
  v6 = v5;
  v7 = MEMORY[0x245D3AAD0](v15);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__NSDictionary_CRKGenericAdditions__crk_mapToDictionary___block_invoke_2;
  v12[3] = &unk_278DC25B0;
  v13 = v4;
  v14 = v7;
  v8 = v7;
  v9 = v4;
  [a1 enumerateKeysAndObjectsUsingBlock:v12];
  v10 = [v6 copy];

  return v10;
}

- (id)crk_mapUsingBlock:()CRKGenericAdditions
{
  v5 = a3;
  if (!v5)
  {
    [(NSDictionary(CRKGenericAdditions) *)a2 crk_mapUsingBlock:a1];
  }

  v6 = objc_opt_new();
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __55__NSDictionary_CRKGenericAdditions__crk_mapUsingBlock___block_invoke;
  v14 = &unk_278DC25D8;
  v15 = v6;
  v16 = v5;
  v7 = v5;
  v8 = v6;
  [a1 enumerateKeysAndObjectsUsingBlock:&v11];
  v9 = [v8 copy];

  return v9;
}

- (id)crk_dictionaryByFilteringToKeys:()CRKGenericAdditions
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
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
        v12 = [a1 objectForKeyedSubscript:{v11, v15}];
        [v5 setObject:v12 forKeyedSubscript:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];

  return v13;
}

- (void)crk_mapUsingBlock:()CRKGenericAdditions .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSDictionary+CRKAdditions.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"block"}];
}

@end