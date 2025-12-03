@interface NSArray(CRKGenericAdditions)
- (BOOL)crk_isSortedByComparator:()CRKGenericAdditions;
- (id)crk_arrayByRemovingFirstObject;
- (id)crk_arrayByRemovingObject:()CRKGenericAdditions;
- (id)crk_arrayByRemovingObjectsInArray:()CRKGenericAdditions;
- (id)crk_dictionaryUsingKeyGenerator:()CRKGenericAdditions valueGenerator:;
- (id)crk_filterUsingBlock:()CRKGenericAdditions;
- (id)crk_firstMatching:()CRKGenericAdditions;
- (id)crk_flatMapUsingBlock:()CRKGenericAdditions;
- (id)crk_mapToSetUsingBlock:()CRKGenericAdditions;
- (id)crk_mapUsingBlock:()CRKGenericAdditions;
- (id)crk_optionalObjectAtIndex:()CRKGenericAdditions;
- (id)crk_partitionUsingKeyGenerator:()CRKGenericAdditions valueGenerator:;
- (id)crk_sortedArrayForRange:()CRKGenericAdditions usingComparator:;
- (id)crk_sortedSubarrayWithRange:()CRKGenericAdditions comparator:;
- (uint64_t)crk_allObjectsMatchPredicate:()CRKGenericAdditions;
- (uint64_t)crk_containsObjectMatchingPredicate:()CRKGenericAdditions;
- (uint64_t)crk_startsWith:()CRKGenericAdditions;
@end

@implementation NSArray(CRKGenericAdditions)

- (id)crk_firstMatching:()CRKGenericAdditions
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (v4[2](v4, v9))
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)crk_filterUsingBlock:()CRKGenericAdditions
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(selfCopy);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (v4[2](v4, v11))
        {
          [v5 addObject:{v11, v14}];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (id)crk_mapUsingBlock:()CRKGenericAdditions
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(selfCopy);
        }

        v11 = v4[2](v4, *(*(&v14 + 1) + 8 * i));
        if (v11)
        {
          [v5 addObject:{v11, v14}];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (id)crk_flatMapUsingBlock:()CRKGenericAdditions
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self;
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

- (id)crk_mapToSetUsingBlock:()CRKGenericAdditions
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([self count])
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{(objc_msgSend(self, "count") * 1.5)}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    selfCopy = self;
    v7 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(selfCopy);
          }

          v11 = v4[2](v4, *(*(&v14 + 1) + 8 * i));
          if (v11)
          {
            [v5 addObject:{v11, v14}];
          }
        }

        v8 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    v12 = [v5 copy];
  }

  else
  {
    v12 = objc_opt_new();
  }

  return v12;
}

- (uint64_t)crk_containsObjectMatchingPredicate:()CRKGenericAdditions
{
  v4 = a3;
  objectEnumerator = [self objectEnumerator];
  v6 = [objectEnumerator crk_containsObjectMatchingPredicate:v4];

  return v6;
}

- (uint64_t)crk_allObjectsMatchPredicate:()CRKGenericAdditions
{
  v4 = a3;
  objectEnumerator = [self objectEnumerator];
  v6 = [objectEnumerator crk_allObjectsMatchPredicate:v4];

  return v6;
}

- (id)crk_arrayByRemovingFirstObject
{
  v1 = [self mutableCopy];
  [v1 removeObjectAtIndex:0];
  v2 = [v1 copy];

  return v2;
}

- (id)crk_arrayByRemovingObject:()CRKGenericAdditions
{
  v4 = a3;
  if (v4)
  {
    v5 = [self mutableCopy];
    [v5 removeObject:v4];
    v6 = [v5 copy];
  }

  else
  {
    v6 = [self copy];
  }

  return v6;
}

- (id)crk_arrayByRemovingObjectsInArray:()CRKGenericAdditions
{
  v4 = a3;
  v5 = [self mutableCopy];
  [v5 removeObjectsInArray:v4];

  v6 = [v5 copy];

  return v6;
}

- (BOOL)crk_isSortedByComparator:()CRKGenericAdditions
{
  v4 = a3;
  if ([self count] >= 2 && objc_msgSend(self, "count") >= 2)
  {
    v7 = 1;
    do
    {
      v8 = [self objectAtIndexedSubscript:v7 - 1];
      v9 = [self objectAtIndexedSubscript:v7];
      v10 = v4[2](v4, v8, v9);

      v5 = v10 != 1;
      if (v10 == 1)
      {
        break;
      }

      ++v7;
    }

    while (v7 < [self count]);
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)crk_sortedArrayForRange:()CRKGenericAdditions usingComparator:
{
  v9 = a5;
  if (a3 + a4 > [self count])
  {
    [NSArray(CRKGenericAdditions) crk_sortedArrayForRange:a2 usingComparator:self];
  }

  v10 = [self crk_sortedSubarrayWithRange:a3 comparator:{a4, v9}];
  v11 = [self mutableCopy];
  [v11 replaceObjectsInRange:a3 withObjectsFromArray:{a4, v10}];
  v12 = [v11 copy];

  return v12;
}

- (id)crk_dictionaryUsingKeyGenerator:()CRKGenericAdditions valueGenerator:
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self;
  v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        if (v6)
        {
          v14 = v6[2](v6, *(*(&v21 + 1) + 8 * i));
        }

        else
        {
          v14 = v13;
        }

        v15 = v14;
        if (v7)
        {
          v16 = v7[2](v7, v13);
        }

        else
        {
          v16 = v13;
        }

        v17 = v16;
        [v8 setObject:v16 forKeyedSubscript:v15];
      }

      v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v18 = [v8 copy];

  return v18;
}

- (id)crk_sortedSubarrayWithRange:()CRKGenericAdditions comparator:
{
  v9 = a3 + a4;
  v10 = a5;
  if (v9 > [self count])
  {
    [NSArray(CRKGenericAdditions) crk_sortedSubarrayWithRange:a2 comparator:self];
  }

  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:a4];
  [v11 replaceObjectsInRange:0 withObjectsFromArray:0 range:{self, a3, a4}];
  [v11 sortUsingComparator:v10];

  v12 = [v11 copy];

  return v12;
}

- (id)crk_partitionUsingKeyGenerator:()CRKGenericAdditions valueGenerator:
{
  v40 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = &__block_literal_global_22;
  }

  v6 = a4;
  v29 = MEMORY[0x245D3AAD0](v5);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &__block_literal_global_10;
  }

  v8 = MEMORY[0x245D3AAD0](v7);

  v9 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = self;
  v10 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v35;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        v15 = v29[2](v29, v14);
        v16 = v8[2](v8, v14);
        v17 = [v9 objectForKeyedSubscript:v15];
        if (!v17)
        {
          v17 = objc_opt_new();
          [v9 setObject:v17 forKeyedSubscript:v15];
        }

        [v17 addObject:v16];
      }

      v11 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v11);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  allKeys = [v9 allKeys];
  v19 = [allKeys countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v31;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v31 != v21)
        {
          objc_enumerationMutation(allKeys);
        }

        v23 = *(*(&v30 + 1) + 8 * j);
        v24 = [v9 objectForKeyedSubscript:v23];
        v25 = [v24 copy];
        [v9 setObject:v25 forKeyedSubscript:v23];
      }

      v20 = [allKeys countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v20);
  }

  v26 = [v9 copy];

  return v26;
}

- (uint64_t)crk_startsWith:()CRKGenericAdditions
{
  v4 = a3;
  v5 = [v4 count];
  if (v5 <= [self count])
  {
    if ([v4 count])
    {
      v7 = 0;
      do
      {
        v8 = [self objectAtIndexedSubscript:v7];
        v9 = [v4 objectAtIndexedSubscript:v7];
        v6 = [v8 isEqual:v9];

        if ((v6 & 1) == 0)
        {
          break;
        }

        ++v7;
      }

      while (v7 < [v4 count]);
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)crk_optionalObjectAtIndex:()CRKGenericAdditions
{
  if ([self count] <= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [self objectAtIndexedSubscript:a3];
  }

  return v5;
}

- (void)crk_sortedArrayForRange:()CRKGenericAdditions usingComparator:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSArray+CRKAdditions.m" lineNumber:133 description:@"Cannot sort subarray that extends beyond the size of the original array"];
}

- (void)crk_sortedSubarrayWithRange:()CRKGenericAdditions comparator:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSArray+CRKAdditions.m" lineNumber:159 description:@"Cannot sort subarray that extends beyond the size of the original array"];
}

@end