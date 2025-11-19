@interface NSArray(GKCollectionUtils)
- (id)_gkDistinctValuesForKeyPath:()GKCollectionUtils;
- (id)_gkFilterWithBlock:()GKCollectionUtils;
- (id)_gkFirstObjectPassingTest:()GKCollectionUtils;
- (id)_gkFoldWithInitialValue:()GKCollectionUtils block:;
- (id)_gkMapConcurrentlyWithBlock:()GKCollectionUtils;
- (id)_gkMapDictionaryWithKeyPath:()GKCollectionUtils valueKeyPath:;
- (id)_gkMapWithBlock:()GKCollectionUtils;
- (id)_gkSubarraysByKeyWithBlock:()GKCollectionUtils;
- (id)_gkValuesForKeyPath:()GKCollectionUtils;
- (uint64_t)_gkIndexOfObjectPassingTest:()GKCollectionUtils;
@end

@implementation NSArray(GKCollectionUtils)

- (id)_gkMapConcurrentlyWithBlock:()GKCollectionUtils
{
  v4 = a3;
  v5 = [a1 count];
  v6 = malloc_type_calloc(v5, 8uLL, 0x80040B8603338uLL);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __58__NSArray_GKCollectionUtils___gkMapConcurrentlyWithBlock___block_invoke;
  v15 = &unk_2785DC910;
  v17 = v6;
  v7 = v4;
  v16 = v7;
  [a1 enumerateObjectsWithOptions:1 usingBlock:&v12];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:{v5, v12, v13, v14, v15}];
  if (v5)
  {
    v9 = v6;
    do
    {
      v10 = *v9;
      *v9++ = 0;

      --v5;
    }

    while (v5);
  }

  free(v6);

  return v8;
}

- (id)_gkMapWithBlock:()GKCollectionUtils
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46__NSArray_GKCollectionUtils___gkMapWithBlock___block_invoke;
  v11[3] = &unk_2785DC938;
  v13 = v4;
  v6 = v5;
  v12 = v6;
  v7 = v4;
  [a1 enumerateObjectsUsingBlock:v11];
  v8 = v12;
  v9 = v6;

  return v6;
}

- (id)_gkFilterWithBlock:()GKCollectionUtils
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__NSArray_GKCollectionUtils___gkFilterWithBlock___block_invoke;
  v11[3] = &unk_2785DC938;
  v13 = v4;
  v6 = v5;
  v12 = v6;
  v7 = v4;
  [a1 enumerateObjectsUsingBlock:v11];
  v8 = v12;
  v9 = v6;

  return v6;
}

- (id)_gkSubarraysByKeyWithBlock:()GKCollectionUtils
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v6 = [a1 count];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__NSArray_GKCollectionUtils___gkSubarraysByKeyWithBlock___block_invoke;
  v12[3] = &unk_2785DC960;
  v14 = v4;
  v7 = v5;
  v13 = v7;
  v15 = v6;
  v8 = v4;
  [a1 enumerateObjectsUsingBlock:v12];
  v9 = v13;
  v10 = v7;

  return v7;
}

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

- (id)_gkFirstObjectPassingTest:()GKCollectionUtils
{
  v2 = [a1 _gkIndexOfObjectPassingTest:?];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = [a1 objectAtIndexedSubscript:v2];
  }

  return v3;
}

- (id)_gkFoldWithInitialValue:()GKCollectionUtils block:
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v8 = v6;
  v20 = v8;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__NSArray_GKCollectionUtils___gkFoldWithInitialValue_block___block_invoke;
  v12[3] = &unk_2785DC988;
  v14 = &v15;
  v9 = v7;
  v13 = v9;
  [a1 enumerateObjectsUsingBlock:v12];
  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

- (uint64_t)_gkIndexOfObjectPassingTest:()GKCollectionUtils
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__NSArray_GKCollectionUtils___gkIndexOfObjectPassingTest___block_invoke;
  v8[3] = &unk_2785DC9B0;
  v9 = v4;
  v5 = v4;
  v6 = [a1 indexOfObjectPassingTest:v8];

  return v6;
}

@end