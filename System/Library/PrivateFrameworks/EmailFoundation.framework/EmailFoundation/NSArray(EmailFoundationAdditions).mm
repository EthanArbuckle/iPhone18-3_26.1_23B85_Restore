@interface NSArray(EmailFoundationAdditions)
- (BOOL)ef_all:()EmailFoundationAdditions;
- (BOOL)ef_any:()EmailFoundationAdditions;
- (id)ef_arrayByAddingAbsentObjectsFromArray:()EmailFoundationAdditions;
- (id)ef_compactMap:()EmailFoundationAdditions;
- (id)ef_compactMapItemsInRange:()EmailFoundationAdditions usingTransform:;
- (id)ef_compactMapSelector:()EmailFoundationAdditions;
- (id)ef_filter:()EmailFoundationAdditions;
- (id)ef_firstObjectPassingTest:()EmailFoundationAdditions;
- (id)ef_flatMap:()EmailFoundationAdditions;
- (id)ef_flatten;
- (id)ef_groupBy:()EmailFoundationAdditions;
- (id)ef_groupByObject:()EmailFoundationAdditions;
- (id)ef_groupByObject:()EmailFoundationAdditions keyOptions:valueOptions:;
- (id)ef_indicesOfStringsWithPrefix:()EmailFoundationAdditions;
- (id)ef_lastObjectPassingTest:()EmailFoundationAdditions;
- (id)ef_longestCommonPrefix;
- (id)ef_map:()EmailFoundationAdditions;
- (id)ef_mapSelector:()EmailFoundationAdditions;
- (id)ef_max;
- (id)ef_mean;
- (id)ef_median;
- (id)ef_min;
- (id)ef_mode;
- (id)ef_notEmpty;
- (id)ef_objectSameAs:()EmailFoundationAdditions usingComparator:;
- (id)ef_objectsPassingTest:()EmailFoundationAdditions;
- (id)ef_partition:()EmailFoundationAdditions;
- (id)ef_permutations;
- (id)ef_reduce:()EmailFoundationAdditions;
- (id)ef_reverse;
- (id)ef_shortDescriptionStringWithLimit:()EmailFoundationAdditions;
- (id)ef_standardDeviation;
- (id)ef_subarraysOfSize:()EmailFoundationAdditions;
- (id)ef_suffix:()EmailFoundationAdditions;
- (id)ef_sum;
- (id)ef_tail;
- (id)ef_uniquifyWithComparator:()EmailFoundationAdditions;
- (uint64_t)ef_countObjectsPassingTest:()EmailFoundationAdditions;
- (uint64_t)ef_indexOfObject:()EmailFoundationAdditions usingComparator:;
- (uint64_t)ef_indexOfObject:()EmailFoundationAdditions usingSortFunction:context:;
- (uint64_t)ef_indexWhereObjectWouldBeInserted:()EmailFoundationAdditions usingComparator:;
- (uint64_t)ef_prefix:()EmailFoundationAdditions;
- (void)ef_enumerateObjectsInBatchesOfSize:()EmailFoundationAdditions objectArrayBlock:;
- (void)ef_enumerateObjectsInBatchesOfSize:()EmailFoundationAdditions overlapBy:block:;
@end

@implementation NSArray(EmailFoundationAdditions)

- (id)ef_flatten
{
  v16 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(selfCopy);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          ef_flatten = [v7 ef_flatten];
          [array addObjectsFromArray:ef_flatten];
        }

        else
        {
          [array addObject:{v7, v11}];
        }
      }

      v4 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)ef_tail
{
  if ([self count] >= 2)
  {
    v2 = [self subarrayWithRange:{1, objc_msgSend(self, "count") - 1}];
  }

  else
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  return v2;
}

- (id)ef_notEmpty
{
  if ([self count])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (uint64_t)ef_prefix:()EmailFoundationAdditions
{
  v5 = [self count];
  if (v5 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = v5;
  }

  return [self subarrayWithRange:{0, v6}];
}

- (id)ef_suffix:()EmailFoundationAdditions
{
  if ([self count] <= a3)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [self subarrayWithRange:{objc_msgSend(self, "count") - a3, a3}];
  }

  return selfCopy;
}

- (id)ef_arrayByAddingAbsentObjectsFromArray:()EmailFoundationAdditions
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [self mutableCopy];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [v5 ef_addObjectIfAbsentAccordingToEquals:{*(*(&v12 + 1) + 8 * i), v12}];
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)ef_indicesOfStringsWithPrefix:()EmailFoundationAdditions
{
  v4 = a3;
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  for (i = [self indexOfObject:v4 inSortedRange:0 options:objc_msgSend(self usingComparator:{"count"), 1280, &__block_literal_global_6_0}]; i < objc_msgSend(self, "count"); ++i)
  {
    v7 = [self objectAtIndexedSubscript:i];
    v8 = [v7 hasPrefix:v4];

    if (!v8)
    {
      break;
    }

    [indexSet addIndex:i];
  }

  return indexSet;
}

- (void)ef_enumerateObjectsInBatchesOfSize:()EmailFoundationAdditions objectArrayBlock:
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [self count];
  if (v7)
  {
    v8 = v15;
    bzero(v15, 0x400uLL);
    if (v7 >= 0x81)
    {
      if (a3 >= 0x400)
      {
        v10 = 1024;
      }

      else
      {
        v10 = a3;
      }

      v8 = malloc_type_malloc(8 * v10, 0x80040B8603338uLL);
      v9 = v8;
    }

    else
    {
      v9 = 0;
      v10 = 128;
    }

    v11 = 0;
    v14 = 0;
    while ((v14 & 1) == 0 && v7)
    {
      if (v10 >= v7)
      {
        v12 = v7;
      }

      else
      {
        v12 = v10;
      }

      [self getObjects:v8 range:{v11, v12}];
      v7 -= v12;
      v6[2](v6, v8, v11, v12, &v14);
      v11 += v12;
    }

    if (v9)
    {
      free(v9);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)ef_enumerateObjectsInBatchesOfSize:()EmailFoundationAdditions overlapBy:block:
{
  v9 = a5;
  v10 = a3 - a4;
  if (a3 <= a4)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFNSArrayAdditions.m" lineNumber:111 description:@"Overlap must be smaller than batch size"];
  }

  v11 = [self count];
  if (v11)
  {
    v12 = 0;
    v17 = 0;
    do
    {
      if (v11 >= a3)
      {
        v13 = a3;
      }

      else
      {
        v13 = v11;
      }

      v14 = [self subarrayWithRange:{v12, v13}];
      v9[2](v9, v14, &v17);
      if (v17)
      {
        v15 = 0;
      }

      else
      {
        v17 = v11 < a3;
        if (v11 >= a3)
        {
          v15 = v10;
        }

        else
        {
          v15 = 0;
        }
      }

      if (v17)
      {
        break;
      }

      v12 += v15;
      v11 -= v15;
    }

    while (v11);
  }
}

- (uint64_t)ef_indexOfObject:()EmailFoundationAdditions usingComparator:
{
  v6 = a3;
  v7 = a4;
  v8 = [self indexOfObject:v6 inSortedRange:0 options:objc_msgSend(self usingComparator:{"count"), 256, v7}];

  return v8;
}

- (uint64_t)ef_indexOfObject:()EmailFoundationAdditions usingSortFunction:context:
{
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __80__NSArray_EmailFoundationAdditions__ef_indexOfObject_usingSortFunction_context___block_invoke;
  v13 = &__block_descriptor_48_e11_q24__0_8_16l;
  v14 = a4;
  v15 = a5;
  v6 = a3;
  v7 = _Block_copy(&v10);
  v8 = [self ef_indexOfObject:v6 usingComparator:{v7, v10, v11, v12, v13, v14, v15}];

  return v8;
}

- (id)ef_objectSameAs:()EmailFoundationAdditions usingComparator:
{
  v6 = a3;
  v7 = a4;
  v8 = [self ef_indexOfObject:v6 usingComparator:v7];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [self objectAtIndex:v8];
  }

  return v9;
}

- (uint64_t)ef_indexWhereObjectWouldBeInserted:()EmailFoundationAdditions usingComparator:
{
  v6 = a3;
  v7 = a4;
  v8 = [self indexOfObject:v6 inSortedRange:0 options:objc_msgSend(self usingComparator:{"count"), 1536, v7}];

  return v8;
}

- (BOOL)ef_all:()EmailFoundationAdditions
{
  v4 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__NSArray_EmailFoundationAdditions__ef_all___block_invoke;
  v9[3] = &unk_1E8248E98;
  v10 = v4;
  v5 = v4;
  v6 = [self ef_firstObjectPassingTest:v9];
  v7 = v6 == 0;

  return v7;
}

- (BOOL)ef_any:()EmailFoundationAdditions
{
  v1 = [self ef_firstObjectPassingTest:?];
  v2 = v1 != 0;

  return v2;
}

- (id)ef_filter:()EmailFoundationAdditions
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__NSArray_EmailFoundationAdditions__ef_filter___block_invoke;
  v10[3] = &unk_1E8248EC0;
  v6 = v4;
  v11 = v6;
  v7 = [self indexesOfObjectsPassingTest:v10];

  objc_autoreleasePoolPop(v5);
  v8 = [self objectsAtIndexes:v7];

  return v8;
}

- (id)ef_objectsPassingTest:()EmailFoundationAdditions
{
  v2 = [self indexesOfObjectsPassingTest:?];
  v3 = [self objectsAtIndexes:v2];

  return v3;
}

- (id)ef_firstObjectPassingTest:()EmailFoundationAdditions
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (v4[2](v4, v9))
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (id)ef_lastObjectPassingTest:()EmailFoundationAdditions
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__NSArray_EmailFoundationAdditions__ef_lastObjectPassingTest___block_invoke;
  v8[3] = &unk_1E8248EE8;
  v9 = v4;
  v10 = &v11;
  v5 = v4;
  [self enumerateObjectsWithOptions:2 usingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (uint64_t)ef_countObjectsPassingTest:()EmailFoundationAdditions
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  v6 = 0;
  v7 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(selfCopy);
        }

        v6 += v4[2](v4, *(*(&v12 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)ef_uniquifyWithComparator:()EmailFoundationAdditions
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  array = [MEMORY[0x1E695DF70] array];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = self;
  v6 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = 0u;
          v20 = 0u;
          v17 = 0u;
          v18 = 0u;
          ef_flatten = [v9 ef_flatten];
          v11 = [ef_flatten countByEnumeratingWithState:&v17 objects:v25 count:16];
          if (v11)
          {
            v12 = *v18;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v18 != v12)
                {
                  objc_enumerationMutation(ef_flatten);
                }

                [array ef_insertObject:*(*(&v17 + 1) + 8 * j) usingComparator:v4 allowDuplicates:0];
              }

              v11 = [ef_flatten countByEnumeratingWithState:&v17 objects:v25 count:16];
            }

            while (v11);
          }
        }

        else
        {
          [array ef_insertObject:v9 usingComparator:v4 allowDuplicates:0];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)ef_map:()EmailFoundationAdditions
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  array = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  selfCopy = self;
  v8 = [selfCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = v5[2](v5, v11);
        v14 = v13;
        if (!v13)
        {
          null = [MEMORY[0x1E695DFB0] null];
          v14 = null;
        }

        [array addObject:{v14, v17}];
        if (!v13)
        {
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [selfCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)ef_mapSelector:()EmailFoundationAdditions
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__NSArray_EmailFoundationAdditions__ef_mapSelector___block_invoke;
  v5[3] = &__block_descriptor_40_e8__16__0_8l;
  v5[4] = a3;
  v3 = [self ef_map:v5];

  return v3;
}

- (id)ef_compactMap:()EmailFoundationAdditions
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(selfCopy);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = v4[2](v4, v10);
        if (v12)
        {
          [array addObject:{v12, v15}];
        }

        objc_autoreleasePoolPop(v11);
      }

      v7 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)ef_compactMapItemsInRange:()EmailFoundationAdditions usingTransform:
{
  v8 = a5;
  for (i = [MEMORY[0x1E695DF70] arrayWithCapacity:a4];
  {
    v10 = objc_autoreleasePoolPush();
    v11 = [self objectAtIndexedSubscript:a3];
    v12 = v8[2](v8, v11);
    [i ef_addOptionalObject:v12];

    objc_autoreleasePoolPop(v10);
    ++a3;
  }

  return i;
}

- (id)ef_compactMapSelector:()EmailFoundationAdditions
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__NSArray_EmailFoundationAdditions__ef_compactMapSelector___block_invoke;
  v5[3] = &__block_descriptor_40_e8__16__0_8l;
  v5[4] = a3;
  v3 = [self ef_compactMap:v5];

  return v3;
}

- (id)ef_flatMap:()EmailFoundationAdditions
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(selfCopy);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = v4[2](v4, v10);
        if (v12)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [array addObjectsFromArray:{v12, v15}];
          }
        }

        objc_autoreleasePoolPop(v11);
      }

      v7 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)ef_reduce:()EmailFoundationAdditions
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  firstObject = [self firstObject];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  ef_tail = [self ef_tail];
  v7 = [ef_tail countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      v9 = 0;
      v10 = firstObject;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(ef_tail);
        }

        firstObject = v4[2](v4, v10, *(*(&v13 + 1) + 8 * v9));

        ++v9;
        v10 = firstObject;
      }

      while (v7 != v9);
      v7 = [ef_tail countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return firstObject;
}

- (id)ef_partition:()EmailFoundationAdditions
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
  v8 = [selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if (v4[2](v4, v11))
        {
          v12 = array;
        }

        else
        {
          v12 = array2;
        }

        [v12 addObject:{v11, v16}];
      }

      v8 = [selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = [EFPair pairWithFirst:array second:array2];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)ef_groupBy:()EmailFoundationAdditions
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = self;
  v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v11 = v4[2](v4, v9);
        if (v11)
        {
          array = [dictionary objectForKeyedSubscript:v11];
          if (!array)
          {
            array = [MEMORY[0x1E695DF70] array];
            [dictionary setObject:array forKeyedSubscript:v11];
          }

          [array addObject:v9];
        }

        objc_autoreleasePoolPop(v10);
      }

      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)ef_groupByObject:()EmailFoundationAdditions
{
  v3 = [self ef_groupByObject:a3 keyOptions:0 valueOptions:0];

  return v3;
}

- (id)ef_groupByObject:()EmailFoundationAdditions keyOptions:valueOptions:
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:a4 valueOptions:a5];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self;
  v10 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v15 = v8[2](v8, v13);
        if (v15)
        {
          array = [v9 objectForKey:v15];
          if (!array)
          {
            array = [MEMORY[0x1E695DF70] array];
            [v9 setObject:array forKey:v15];
          }

          [array addObject:v13];
        }

        objc_autoreleasePoolPop(v14);
      }

      v10 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)ef_subarraysOfSize:()EmailFoundationAdditions
{
  if (a3)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(self, "count") / a3 + 1}];
    v6 = [self count];
    if (v6)
    {
      v7 = 0;
      do
      {
        if (v6 >= a3)
        {
          v8 = a3;
        }

        else
        {
          v8 = v6;
        }

        v9 = [self subarrayWithRange:{v7, v8}];
        [v5 addObject:v9];
        v7 += v8;
        v6 -= v8;
      }

      while (v6);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)ef_permutations
{
  v30[1] = *MEMORY[0x1E69E9840];
  v2 = [self count];
  v3 = v2 - 1;
  if (v2 > 1)
  {
    v4 = v2;
    if (v2 == 2)
    {
      v29[0] = self;
      v18 = [self objectAtIndexedSubscript:{1, v3}];
      v28[0] = v18;
      v5 = [self objectAtIndexedSubscript:0];
      v28[1] = v5;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
      v29[1] = v6;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    }

    else
    {
      v19 = [self subarrayWithRange:{1, v3}];
      ef_permutations = [v19 ef_permutations];
      v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
      for (i = 0; i != v4; ++i)
      {
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        obj = ef_permutations;
        v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v8)
        {
          v9 = *v24;
          do
          {
            for (j = 0; j != v8; ++j)
            {
              if (*v24 != v9)
              {
                objc_enumerationMutation(obj);
              }

              v11 = *(*(&v23 + 1) + 8 * j);
              v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v13 = [v11 subarrayWithRange:{0, i}];
              [v12 addObjectsFromArray:v13];

              firstObject = [self firstObject];
              [v12 addObject:firstObject];

              v15 = [v11 subarrayWithRange:{i, v4 + ~i}];
              [v12 addObjectsFromArray:v15];

              [v22 addObject:v12];
            }

            v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
          }

          while (v8);
        }
      }
    }
  }

  else
  {
    v30[0] = self;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)ef_reverse
{
  reverseObjectEnumerator = [self reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  return allObjects;
}

- (id)ef_longestCommonPrefix
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v6 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__NSArray_EmailFoundationAdditions__ef_longestCommonPrefix__block_invoke;
  v4[3] = &unk_1E8248F30;
  v4[4] = v5;
  v1 = [self ef_reduce:v4];
  if ([v1 length])
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  _Block_object_dispose(v5, 8);

  return v2;
}

- (id)ef_shortDescriptionStringWithLimit:()EmailFoundationAdditions
{
  v5 = [self count];
  if (a3 > 0x7FFFFFFFFFFFFFFELL || a3 < 2 || (v7 = v5 - a3, v5 <= a3))
  {
    v6 = [self description];
  }

  else
  {
    v8 = a3 - (a3 >> 1);
    v9 = [self ef_prefix:a3 >> 1];
    v10 = [self ef_suffix:v8];
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@, ...<%lu additional items>..., %@", v9, v7, v10];
  }

  return v6;
}

- (id)ef_sum
{
  v8[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC8];
  v2 = [MEMORY[0x1E696ABC8] expressionForConstantValue:self];
  v8[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v4 = [v1 expressionForFunction:@"sum:" arguments:v3];
  v5 = [v4 expressionValueWithObject:0 context:0];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)ef_min
{
  v8[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC8];
  v2 = [MEMORY[0x1E696ABC8] expressionForConstantValue:self];
  v8[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v4 = [v1 expressionForFunction:@"min:" arguments:v3];
  v5 = [v4 expressionValueWithObject:0 context:0];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)ef_max
{
  v8[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC8];
  v2 = [MEMORY[0x1E696ABC8] expressionForConstantValue:self];
  v8[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v4 = [v1 expressionForFunction:@"max:" arguments:v3];
  v5 = [v4 expressionValueWithObject:0 context:0];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)ef_mean
{
  v8[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC8];
  v2 = [MEMORY[0x1E696ABC8] expressionForConstantValue:self];
  v8[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v4 = [v1 expressionForFunction:@"average:" arguments:v3];
  v5 = [v4 expressionValueWithObject:0 context:0];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)ef_median
{
  v8[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC8];
  v2 = [MEMORY[0x1E696ABC8] expressionForConstantValue:self];
  v8[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v4 = [v1 expressionForFunction:@"median:" arguments:v3];
  v5 = [v4 expressionValueWithObject:0 context:0];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)ef_mode
{
  v8[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC8];
  v2 = [MEMORY[0x1E696ABC8] expressionForConstantValue:self];
  v8[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v4 = [v1 expressionForFunction:@"mode:" arguments:v3];
  v5 = [v4 expressionValueWithObject:0 context:0];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)ef_standardDeviation
{
  v8[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC8];
  v2 = [MEMORY[0x1E696ABC8] expressionForConstantValue:self];
  v8[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v4 = [v1 expressionForFunction:@"stddev:" arguments:v3];
  v5 = [v4 expressionValueWithObject:0 context:0];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

@end