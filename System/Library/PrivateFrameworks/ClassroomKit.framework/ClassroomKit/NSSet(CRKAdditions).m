@interface NSSet(CRKAdditions)
+ (id)crk_setByCopyingObjectsFromArray:()CRKAdditions;
- (id)crk_filterUsingBlock:()CRKAdditions;
- (id)crk_flatMapUsingBlock:()CRKAdditions;
- (id)crk_mapUsingBlock:()CRKAdditions;
- (id)crk_naturallySortedArray;
- (id)crk_setByRemovingObject:()CRKAdditions;
- (id)crk_stableDescription;
- (id)setByCombiningWithSet:()CRKAdditions operation:;
- (uint64_t)crk_allObjectsMatchPredicate:()CRKAdditions;
- (uint64_t)crk_containsObjectMatchingPredicate:()CRKAdditions;
@end

@implementation NSSet(CRKAdditions)

- (id)crk_stableDescription
{
  v1 = [a1 allObjects];
  v2 = [v1 valueForKey:@"description"];

  v3 = [v2 sortedArrayUsingSelector:sel_compare_];
  v4 = MEMORY[0x277CCACA8];
  v5 = [v3 componentsJoinedByString:{@", "}];
  v6 = [v4 stringWithFormat:@"{ %@ }", v5];

  return v6;
}

- (id)crk_naturallySortedArray
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:1];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = [a1 sortedArrayUsingDescriptors:v3];

  return v4;
}

- (id)crk_setByRemovingObject:()CRKAdditions
{
  v4 = a3;
  if (v4 && ([a1 containsObject:v4] & 1) != 0)
  {
    v5 = [MEMORY[0x277CBEB98] setWithObject:v4];
    v6 = [a1 crk_setBySubtractingSet:v5];
  }

  else
  {
    v6 = [a1 copy];
  }

  return v6;
}

- (id)crk_mapUsingBlock:()CRKAdditions
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    [(NSSet(CRKAdditions) *)a2 crk_mapUsingBlock:a1];
  }

  v6 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = a1;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = v5[2](v5, *(*(&v15 + 1) + 8 * i));
        if (v12)
        {
          [v6 addObject:{v12, v15}];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = [v6 copy];

  return v13;
}

- (id)crk_flatMapUsingBlock:()CRKAdditions
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = a1;
  v6 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v19 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v9 = v4[2](v4, *(*(&v24 + 1) + 8 * i));
        v10 = v9;
        if (v9)
        {
          if (([v9 conformsToProtocol:&unk_285681F88] & 1) == 0)
          {
            [v5 addObject:v10];
          }

          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v11 = v10;
          v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v21;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v21 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                [v5 addObject:*(*(&v20 + 1) + 8 * j)];
              }

              v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v13);
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  v16 = [v5 copy];

  return v16;
}

- (id)crk_filterUsingBlock:()CRKAdditions
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__NSSet_CRKAdditions__crk_filterUsingBlock___block_invoke;
  v8[3] = &unk_278DC20D8;
  v9 = v4;
  v5 = v4;
  v6 = [a1 crk_mapUsingBlock:v8];

  return v6;
}

- (uint64_t)crk_containsObjectMatchingPredicate:()CRKAdditions
{
  v4 = a3;
  v5 = [a1 objectEnumerator];
  v6 = [v5 crk_containsObjectMatchingPredicate:v4];

  return v6;
}

- (uint64_t)crk_allObjectsMatchPredicate:()CRKAdditions
{
  v4 = a3;
  v5 = [a1 objectEnumerator];
  v6 = [v5 crk_allObjectsMatchPredicate:v4];

  return v6;
}

+ (id)crk_setByCopyingObjectsFromArray:()CRKAdditions
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v11 = [v10 copy];
          [v4 addObject:v11];
        }

        else
        {
          [v4 addObject:{v10, v14}];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];

  return v12;
}

- (id)setByCombiningWithSet:()CRKAdditions operation:
{
  v6 = a3;
  v7 = [a1 mutableCopy];
  ([v7 methodForSelector:a4])(v7, a4, v6);

  v8 = [objc_opt_class() setWithSet:v7];

  return v8;
}

- (void)crk_mapUsingBlock:()CRKAdditions .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSSet+CRKAdditions.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"block"}];
}

@end