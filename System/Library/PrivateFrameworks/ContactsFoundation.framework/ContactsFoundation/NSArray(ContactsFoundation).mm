@interface NSArray(ContactsFoundation)
+ (id)_cn_arrayWithObject:()ContactsFoundation count:;
- (CNLazyArray)_cn_lazy;
- (CNPair)_cn_partition:()ContactsFoundation;
- (id)_cn_arrayByRotatingRange:()ContactsFoundation by:;
- (id)_cn_balancedSlicesWithMaximumCount:()ContactsFoundation;
- (id)_cn_compactMap:()ContactsFoundation;
- (id)_cn_concurrentMap:()ContactsFoundation;
- (id)_cn_distinctObjects;
- (id)_cn_filter:()ContactsFoundation;
- (id)_cn_firstObjectPassingTest:()ContactsFoundation;
- (id)_cn_flatMap:()ContactsFoundation;
- (id)_cn_flatten;
- (id)_cn_groupBy:()ContactsFoundation;
- (id)_cn_indexBy:()ContactsFoundation;
- (id)_cn_indicesForObjects:()ContactsFoundation;
- (id)_cn_join:()ContactsFoundation;
- (id)_cn_joinWithBlock:()ContactsFoundation;
- (id)_cn_map:()ContactsFoundation;
- (id)_cn_reduce:()ContactsFoundation;
- (id)_cn_reduce:()ContactsFoundation initialValue:;
- (id)_cn_reversed;
- (id)_cn_safeSortedArrayUsingComparator:()ContactsFoundation;
- (id)_cn_skip:()ContactsFoundation;
- (id)_cn_skipLast:()ContactsFoundation;
- (id)_cn_slicesWithMaximumCount:()ContactsFoundation;
- (id)_cn_sortedArrayUsingAuxiliarySortOrder:()ContactsFoundation transform:;
- (id)_cn_take:()ContactsFoundation;
- (id)_cn_takeLast:()ContactsFoundation;
- (id)_cn_zip:()ContactsFoundation;
- (uint64_t)_cn_all:()ContactsFoundation;
- (uint64_t)_cn_any:()ContactsFoundation;
- (uint64_t)_cn_indexOfFirstObjectPassingTest:()ContactsFoundation;
- (uint64_t)_cn_isIdenticalToArray:()ContactsFoundation;
- (uint64_t)_cn_none:()ContactsFoundation;
- (void)_cn_each:()ContactsFoundation;
- (void)_cn_each:()ContactsFoundation until:;
- (void)_cn_each:()ContactsFoundation untilCancelled:;
- (void)_cn_each_reverse:()ContactsFoundation;
- (void)_cn_isNonEmpty;
- (void)_cn_zip:()ContactsFoundation withBlock:;
@end

@implementation NSArray(ContactsFoundation)

- (id)_cn_flatten
{
  v2 = [MEMORY[0x1E695DF70] array];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__NSArray_ContactsFoundation___cn_flatten__block_invoke;
  v5[3] = &unk_1E6ED5588;
  v3 = v2;
  v6 = v3;
  [a1 enumerateObjectsUsingBlock:v5];

  return v3;
}

- (id)_cn_distinctObjects
{
  v1 = [MEMORY[0x1E695DFB8] orderedSetWithArray:a1];
  v2 = [v1 array];

  return v2;
}

- (void)_cn_each:()ContactsFoundation
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = a1;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v4[2](v4, *(*(&v11 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_cn_each:()ContactsFoundation until:
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = a1;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v16 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v15 + 1) + 8 * v12);
      if (v7[2](v7))
      {
        break;
      }

      v6[2](v6, v13);
      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_cn_each:()ContactsFoundation untilCancelled:
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__NSArray_ContactsFoundation___cn_each_untilCancelled___block_invoke;
  v8[3] = &unk_1E6ED5488;
  v9 = v6;
  v7 = v6;
  [a1 _cn_each:a3 until:v8];
}

- (void)_cn_each_reverse:()ContactsFoundation
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__NSArray_ContactsFoundation___cn_each_reverse___block_invoke;
  v6[3] = &unk_1E6ED54B0;
  v7 = v4;
  v5 = v4;
  [a1 enumerateObjectsWithOptions:2 usingBlock:v6];
}

- (id)_cn_join:()ContactsFoundation
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __40__NSArray_ContactsFoundation___cn_join___block_invoke;
    v8[3] = &unk_1E6ED51B8;
    v9 = v4;
    v6 = [a1 _cn_joinWithBlock:v8];
  }

  else
  {
    v6 = a1;
  }

  return v6;
}

- (id)_cn_joinWithBlock:()ContactsFoundation
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__NSArray_ContactsFoundation___cn_joinWithBlock___block_invoke;
    v9[3] = &unk_1E6ED54E0;
    v10 = v4;
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = [a1 _cn_reduce:v9 initialValue:v6];
  }

  else
  {
    v7 = a1;
  }

  return v7;
}

- (id)_cn_map:()ContactsFoundation
{
  v4 = a3;
  if (a1 && [a1 count])
  {
    if ([a1 count] > 0x80)
    {
      v6 = v4;
      v7 = MEMORY[0x1E695DF70];
      v8 = a1;
      v9 = [[v7 alloc] initWithCapacity:{objc_msgSend(v8, "count")}];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __CNArrayMapSlowPath_block_invoke;
      v14[3] = &unk_1E6ED5670;
      v16 = v6;
      v10 = v9;
      v15 = v10;
      v11 = v6;
      [v8 enumerateObjectsUsingBlock:v14];

      v12 = v15;
      v5 = v10;
    }

    else
    {
      v5 = CNArrayMapFastPath(a1, v4);
    }
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (id)_cn_concurrentMap:()ContactsFoundation
{
  v4 = a3;
  if ([a1 count])
  {
    v5 = a1;
    v6 = v4;
    v7 = [v5 count];
    v8 = malloc_type_calloc(v7, 8uLL, 0x80040B8603338uLL);
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __CNArrayConcurrentMapSlowPath_block_invoke;
    v18 = &unk_1E6ED5698;
    v9 = v6;
    v19 = v9;
    v20 = v8;
    [v5 enumerateObjectsWithOptions:1 usingBlock:&v15];
    v10 = objc_alloc(MEMORY[0x1E695DEC8]);
    v11 = [v10 initWithObjects:v8 count:{v7, v15, v16, v17, v18}];
    if (v7)
    {
      v12 = v8;
      do
      {
        v13 = *v12;
        *v12++ = 0;

        --v7;
      }

      while (v7);
    }

    free(v8);
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  return v11;
}

- (id)_cn_compactMap:()ContactsFoundation
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (a1 && [a1 count])
  {
    if ([a1 count] > 0x80)
    {
      v5 = a1;
      v6 = v4;
      v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v18;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v18 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = v6[2](v6, *(*(&v17 + 1) + 8 * i));
            v13 = (off_1EF4401C8)(&__block_literal_global_4_3, v12);

            if (v13)
            {
              [v16 addObject:v12];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v9);
      }
    }

    else
    {
      v16 = CNArrayCompactMapFastPath(a1, v4);
    }
  }

  else
  {
    v16 = MEMORY[0x1E695E0F0];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)_cn_filter:()ContactsFoundation
{
  v4 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__NSArray_ContactsFoundation___cn_filter___block_invoke;
  v9[3] = &unk_1E6ED5510;
  v10 = v4;
  v5 = v4;
  v6 = [a1 indexesOfObjectsPassingTest:v9];
  v7 = [a1 objectsAtIndexes:v6];

  return v7;
}

- (CNPair)_cn_partition:()ContactsFoundation
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [MEMORY[0x1E695DF70] array];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __45__NSArray_ContactsFoundation___cn_partition___block_invoke;
  v12[3] = &unk_1E6ED5538;
  v14 = v6;
  v15 = v4;
  v13 = v5;
  v7 = v6;
  v8 = v5;
  v9 = v4;
  [a1 enumerateObjectsUsingBlock:v12];
  v10 = [[CNPair alloc] initWithFirst:v8 second:v7];

  return v10;
}

- (id)_cn_slicesWithMaximumCount:()ContactsFoundation
{
  v4 = CNRangeDividedIntoStridesOfLength(0, [a1 count], a3);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__NSArray_ContactsFoundation___cn_slicesWithMaximumCount___block_invoke;
  v7[3] = &unk_1E6ED5560;
  v7[4] = a1;
  v5 = [v4 _cn_map:v7];

  return v5;
}

- (id)_cn_balancedSlicesWithMaximumCount:()ContactsFoundation
{
  v4 = CNRangeDividedIntoBalancedStridesOfLength(0, [a1 count], a3);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__NSArray_ContactsFoundation___cn_balancedSlicesWithMaximumCount___block_invoke;
  v7[3] = &unk_1E6ED5560;
  v7[4] = a1;
  v5 = [v4 _cn_map:v7];

  return v5;
}

- (id)_cn_firstObjectPassingTest:()ContactsFoundation
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = a1;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (v4[2](v4, v9))
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x1E69E9840];

  return v6;
}

- (uint64_t)_cn_indexOfFirstObjectPassingTest:()ContactsFoundation
{
  v4 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__NSArray_ContactsFoundation___cn_indexOfFirstObjectPassingTest___block_invoke;
  v9[3] = &unk_1E6ED5510;
  v10 = v4;
  v5 = v4;
  v6 = [a1 indexesOfObjectsPassingTest:v9];
  v7 = [v6 firstIndex];

  return v7;
}

- (uint64_t)_cn_all:()ContactsFoundation
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = a1;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (!v4[2](v4, *(*(&v13 + 1) + 8 * v9)))
        {
          v10 = 0;
          goto LABEL_11;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (uint64_t)_cn_any:()ContactsFoundation
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = a1;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if (v4[2](v4, *(*(&v11 + 1) + 8 * i)))
        {
          v6 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (uint64_t)_cn_none:()ContactsFoundation
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = a1;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (v4[2](v4, *(*(&v13 + 1) + 8 * v9)))
        {
          v10 = 0;
          goto LABEL_11;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)_cn_indicesForObjects:()ContactsFoundation
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AD50] indexSet];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
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

        v11 = [a1 indexOfObject:{*(*(&v14 + 1) + 8 * i), v14}];
        if (v11 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v5 addIndex:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_cn_flatMap:()ContactsFoundation
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __43__NSArray_ContactsFoundation___cn_flatMap___block_invoke;
  v11[3] = &unk_1E6ED55B0;
  v6 = v5;
  v12 = v6;
  v13 = v4;
  v7 = v4;
  [a1 enumerateObjectsUsingBlock:v11];
  v8 = v13;
  v9 = v6;

  return v6;
}

- (id)_cn_reduce:()ContactsFoundation
{
  v4 = a3;
  v5 = [a1 _cn_tail];
  v6 = [a1 firstObject];
  v7 = [v5 _cn_reduce:v4 initialValue:v6];

  return v7;
}

- (id)_cn_reduce:()ContactsFoundation initialValue:
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = a1;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  v10 = v7;
  if (v9)
  {
    v11 = v9;
    v12 = *v18;
    v10 = v7;
    do
    {
      v13 = 0;
      v14 = v10;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v10 = v6[2](v6, v14, *(*(&v17 + 1) + 8 * v13));

        ++v13;
        v14 = v10;
      }

      while (v11 != v13);
      v11 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)_cn_skip:()ContactsFoundation
{
  if ([a1 count] >= a3)
  {
    v5 = [a1 subarrayWithRange:{a3, objc_msgSend(a1, "count") - a3}];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (id)_cn_skipLast:()ContactsFoundation
{
  if ([a1 count] >= a3)
  {
    v5 = [a1 _cn_take:{objc_msgSend(a1, "count") - a3}];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (id)_cn_sortedArrayUsingAuxiliarySortOrder:()ContactsFoundation transform:
{
  v2 = [_CNSortsByPositionInAuxiliaryArray comparatorForSortingAccordingToAuxiliaryValues:"comparatorForSortingAccordingToAuxiliaryValues:transform:" transform:?];
  v3 = [a1 sortedArrayUsingComparator:v2];

  return v3;
}

- (id)_cn_take:()ContactsFoundation
{
  if ([a1 count] >= a3)
  {
    v5 = [a1 subarrayWithRange:{0, a3}];
  }

  else
  {
    v5 = a1;
  }

  return v5;
}

- (id)_cn_takeLast:()ContactsFoundation
{
  if ([a1 count] >= a3)
  {
    v5 = [a1 subarrayWithRange:{objc_msgSend(a1, "count") - a3, a3}];
  }

  else
  {
    v5 = a1;
  }

  return v5;
}

- (id)_cn_groupBy:()ContactsFoundation
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = a1;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = v4[2](v4, v11);
        v13 = [v5 objectForKey:{v12, v16}];
        if (!v13)
        {
          v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [v5 setObject:v13 forKey:v12];
        }

        [v13 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_cn_indexBy:()ContactsFoundation
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
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
        v12 = v4[2](v4, v11);
        [v5 setObject:v11 forKey:{v12, v15}];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_cn_zip:()ContactsFoundation
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = [v4 arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __39__NSArray_ContactsFoundation___cn_zip___block_invoke;
  v9[3] = &unk_1E6ED55D8;
  v7 = v6;
  v10 = v7;
  [a1 _cn_zip:v5 withBlock:v9];

  return v7;
}

- (void)_cn_zip:()ContactsFoundation withBlock:
{
  v13 = a3;
  v6 = a4;
  v7 = [a1 count];
  v8 = [v13 count];
  if (v7 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      v11 = [a1 objectAtIndexedSubscript:i];
      v12 = [v13 objectAtIndexedSubscript:i];
      v6[2](v6, v11, v12);
    }
  }
}

- (id)_cn_reversed
{
  if ([a1 count] > 1)
  {
    v3 = [a1 reverseObjectEnumerator];
    v2 = [v3 allObjects];
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

- (id)_cn_safeSortedArrayUsingComparator:()ContactsFoundation
{
  if (a3)
  {
    v3 = [a1 sortedArrayUsingComparator:?];
  }

  else
  {
    v3 = a1;
  }

  return v3;
}

- (uint64_t)_cn_isIdenticalToArray:()ContactsFoundation
{
  v4 = a3;
  v5 = v4;
  if (v4 == a1)
  {
    v7 = 1;
  }

  else if (v4 && (v6 = [v4 count], v6 == objc_msgSend(a1, "count")))
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 1;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __54__NSArray_ContactsFoundation___cn_isIdenticalToArray___block_invoke;
    v9[3] = &unk_1E6ED5600;
    v10 = v5;
    v11 = &v12;
    [a1 enumerateObjectsUsingBlock:v9];
    v7 = *(v13 + 24);

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (void)_cn_isNonEmpty
{
  if (result)
  {
    return ([result count] != 0);
  }

  return result;
}

- (id)_cn_arrayByRotatingRange:()ContactsFoundation by:
{
  v8 = [a1 mutableCopy];
  [v8 _cn_rotateRange:a3 by:{a4, a5}];

  return v8;
}

+ (id)_cn_arrayWithObject:()ContactsFoundation count:
{
  v5 = MEMORY[0x1E695DF70];
  v6 = a3;
  v7 = [v5 arrayWithCapacity:a4];
  [v7 _cn_addObject:v6 count:a4];

  return v7;
}

- (CNLazyArray)_cn_lazy
{
  v1 = [[CNLazyArray alloc] initWithArray:a1];

  return v1;
}

@end