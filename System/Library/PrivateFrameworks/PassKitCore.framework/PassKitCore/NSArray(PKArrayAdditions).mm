@interface NSArray(PKArrayAdditions)
- (BOOL)pk_containsObjectPassingTest:()PKArrayAdditions;
- (id)pk_arrayByApplyingBlock:()PKArrayAdditions;
- (id)pk_arrayByRemovingObject:()PKArrayAdditions;
- (id)pk_arrayByRemovingObjectsInArray:()PKArrayAdditions;
- (id)pk_arrayBySafelyApplyingBlock:()PKArrayAdditions;
- (id)pk_createMutableOrderedSetByApplyingBlock:()PKArrayAdditions;
- (id)pk_createMutableSetByApplyingBlock:()PKArrayAdditions;
- (id)pk_createOrderedSetByApplyingBlock:()PKArrayAdditions;
- (id)pk_createSetByApplyingBlock:()PKArrayAdditions;
- (id)pk_createSetBySafelyApplyingBlock:()PKArrayAdditions;
- (id)pk_firstObjectPassingTest:()PKArrayAdditions;
- (id)pk_groupDictionaryByApplyingBlock:()PKArrayAdditions;
- (id)pk_indexDictionaryByApplyingBlock:()PKArrayAdditions;
- (id)pk_intersectArray:()PKArrayAdditions;
- (id)pk_lastObjectPassingTest:()PKArrayAdditions;
- (id)pk_objectsPassingTest:()PKArrayAdditions;
- (id)pk_shuffledArray;
- (uint64_t)pk_countObjectsPassingTest:()PKArrayAdditions;
- (uint64_t)pk_createArrayByApplyingBlock:()PKArrayAdditions;
- (uint64_t)pk_createArrayByRemovingObjectsPassingTest:()PKArrayAdditions;
- (uint64_t)pk_createArrayBySafelyApplyingBlock:()PKArrayAdditions;
- (void)pk_createArrayByRemovingObjectAtIndex:()PKArrayAdditions;
@end

@implementation NSArray(PKArrayAdditions)

- (id)pk_arrayByRemovingObject:()PKArrayAdditions
{
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF != %@", a3];
  v5 = [self filteredArrayUsingPredicate:v4];

  return v5;
}

- (id)pk_arrayByRemovingObjectsInArray:()PKArrayAdditions
{
  if (a3)
  {
    v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT(SELF IN %@)", a3];
    selfCopy = [self filteredArrayUsingPredicate:v4];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (void)pk_createArrayByRemovingObjectAtIndex:()PKArrayAdditions
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    v4 = [result mutableCopy];
    [v4 removeObjectAtIndex:a3];
    v5 = [v4 copy];

    return v5;
  }

  return result;
}

- (uint64_t)pk_createArrayByRemovingObjectsPassingTest:()PKArrayAdditions
{
  v4 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__NSArray_PKArrayAdditions__pk_createArrayByRemovingObjectsPassingTest___block_invoke;
  v10[3] = &unk_1E79C8B68;
  v11 = v4;
  v5 = v4;
  v6 = [self indexesOfObjectsPassingTest:v10];
  if ([v6 count])
  {
    v7 = [self mutableCopy];
    [v7 removeObjectsAtIndexes:v6];
    v8 = [v7 copy];
  }

  else
  {
    v8 = [self copy];
  }

  return v8;
}

- (uint64_t)pk_createArrayByApplyingBlock:()PKArrayAdditions
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [self count];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v5];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    selfCopy = self;
    v8 = [selfCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        v11 = 0;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(selfCopy);
          }

          v12 = *(*(&v17 + 1) + 8 * v11);
          v13 = objc_autoreleasePoolPush();
          v14 = v4[2](v4, v12);
          [v6 addObject:{v14, v17}];

          objc_autoreleasePoolPop(v13);
          ++v11;
        }

        while (v9 != v11);
        v9 = [selfCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    v15 = [v6 copy];
  }

  else
  {
    v15 = MEMORY[0x1E695E0F0];
  }

  return v15;
}

- (uint64_t)pk_createArrayBySafelyApplyingBlock:()PKArrayAdditions
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [self count];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v5];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    selfCopy = self;
    v8 = [selfCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        v11 = 0;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(selfCopy);
          }

          v12 = *(*(&v17 + 1) + 8 * v11);
          v13 = objc_autoreleasePoolPush();
          v14 = v4[2](v4, v12);
          if (v14)
          {
            [v6 addObject:{v14, v17}];
          }

          objc_autoreleasePoolPop(v13);
          ++v11;
        }

        while (v9 != v11);
        v9 = [selfCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    v15 = [v6 copy];
  }

  else
  {
    v15 = MEMORY[0x1E695E0F0];
  }

  return v15;
}

- (id)pk_arrayByApplyingBlock:()PKArrayAdditions
{
  v1 = [self pk_createArrayByApplyingBlock:?];

  return v1;
}

- (id)pk_arrayBySafelyApplyingBlock:()PKArrayAdditions
{
  v1 = [self pk_createArrayBySafelyApplyingBlock:?];

  return v1;
}

- (id)pk_createSetByApplyingBlock:()PKArrayAdditions
{
  v4 = a3;
  if ([self count])
  {
    v5 = [self pk_createMutableSetByApplyingBlock:v4];
    v6 = [v5 copy];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  }

  return v6;
}

- (id)pk_createSetBySafelyApplyingBlock:()PKArrayAdditions
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [self count];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v5];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    selfCopy = self;
    v8 = [selfCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        v11 = 0;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(selfCopy);
          }

          v12 = *(*(&v17 + 1) + 8 * v11);
          v13 = objc_autoreleasePoolPush();
          v14 = v4[2](v4, v12);
          if (v14)
          {
            [v6 addObject:{v14, v17}];
          }

          objc_autoreleasePoolPop(v13);
          ++v11;
        }

        while (v9 != v11);
        v9 = [selfCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    v15 = [v6 copy];
  }

  else
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  }

  return v15;
}

- (id)pk_createMutableSetByApplyingBlock:()PKArrayAdditions
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [self count];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v5];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    selfCopy = self;
    v8 = [selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(selfCopy);
          }

          v12 = *(*(&v16 + 1) + 8 * v11);
          v13 = objc_autoreleasePoolPush();
          v14 = v4[2](v4, v12);
          [v6 addObject:{v14, v16}];

          objc_autoreleasePoolPop(v13);
          ++v11;
        }

        while (v9 != v11);
        v9 = [selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  return v6;
}

- (id)pk_createOrderedSetByApplyingBlock:()PKArrayAdditions
{
  v4 = a3;
  if ([self count])
  {
    v5 = [self pk_createMutableOrderedSetByApplyingBlock:v4];
    v6 = [v5 copy];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFB8]);
  }

  return v6;
}

- (id)pk_createMutableOrderedSetByApplyingBlock:()PKArrayAdditions
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [self count];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:v5];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    selfCopy = self;
    v8 = [selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(selfCopy);
          }

          v12 = *(*(&v16 + 1) + 8 * v11);
          v13 = objc_autoreleasePoolPush();
          v14 = v4[2](v4, v12);
          [v6 addObject:{v14, v16}];

          objc_autoreleasePoolPop(v13);
          ++v11;
        }

        while (v9 != v11);
        v9 = [selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  }

  return v6;
}

- (id)pk_shuffledArray
{
  v2 = [self count];
  if (v2 < 2)
  {
    v8 = [self copy];
  }

  else
  {
    v3 = v2;
    v4 = [self mutableCopy];
    v5 = 0;
    do
    {
      if (v3 >= 0xFFFFFFFF)
      {
        v6 = -1;
      }

      else
      {
        v6 = v3;
      }

      v7 = arc4random_uniform(v6);
      if (v7)
      {
        [v4 exchangeObjectAtIndex:v5 withObjectAtIndex:v5 + v7];
      }

      ++v5;
      --v3;
    }

    while (v3);
    v8 = [v4 copy];
  }

  return v8;
}

- (id)pk_objectsPassingTest:()PKArrayAdditions
{
  v2 = [self indexesOfObjectsPassingTest:?];
  v3 = [self objectsAtIndexes:v2];

  return v3;
}

- (uint64_t)pk_countObjectsPassingTest:()PKArrayAdditions
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__NSArray_PKArrayAdditions__pk_countObjectsPassingTest___block_invoke;
  v8[3] = &unk_1E79C8B90;
  v10 = &v11;
  v5 = v4;
  v9 = v5;
  [self enumerateObjectsUsingBlock:v8];
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

- (id)pk_indexDictionaryByApplyingBlock:()PKArrayAdditions
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
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
        v12 = v4[2](v4, v11);
        if (v12)
        {
          [v5 setObject:v11 forKey:{v12, v14}];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)pk_groupDictionaryByApplyingBlock:()PKArrayAdditions
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(selfCopy);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = v4[2](v4, v11);
        v13 = [v5 objectForKey:{v12, v15}];
        if (!v13)
        {
          v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [v5 setObject:v13 forKey:v12];
        }

        [v13 addObject:v11];
      }

      v8 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)pk_intersectArray:()PKArrayAdditions
{
  v4 = MEMORY[0x1E695DFA0];
  v5 = a3;
  v6 = [[v4 alloc] initWithArray:self];
  v7 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:v5];

  [v6 intersectOrderedSet:v7];
  array = [v6 array];

  return array;
}

- (BOOL)pk_containsObjectPassingTest:()PKArrayAdditions
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__NSArray_PKArrayAdditions__pk_containsObjectPassingTest___block_invoke;
    v8[3] = &unk_1E79C8B68;
    v9 = v4;
    v6 = [self indexOfObjectPassingTest:v8] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)pk_firstObjectPassingTest:()PKArrayAdditions
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55__NSArray_PKArrayAdditions__pk_firstObjectPassingTest___block_invoke;
    v9[3] = &unk_1E79C8B68;
    v10 = v4;
    v6 = [self indexOfObjectPassingTest:v9];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0;
    }

    else
    {
      v7 = [self objectAtIndex:v6];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)pk_lastObjectPassingTest:()PKArrayAdditions
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    reverseObjectEnumerator = [self reverseObjectEnumerator];
    v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          if (v4[2](v4, v9))
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end