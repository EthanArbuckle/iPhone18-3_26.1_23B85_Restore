@interface NSMutableArray(FCAdditions)
- (id)fc_popFirstObject;
- (id)fc_popLastObject;
- (id)fc_popLeadingObjectsOfCount:()FCAdditions;
- (id)fc_safelyPopFirstObject;
- (uint64_t)fc_removeFirstObject;
- (uint64_t)fc_removeObject:()FCAdditions sortedUsingSelector:;
- (uint64_t)fc_reverseObjects;
- (uint64_t)fc_safelyAddObjectsFromArray:()FCAdditions;
- (unint64_t)fc_trimFromFrontToMaxCount:()FCAdditions;
- (unint64_t)fc_trimToMaxCount:()FCAdditions;
- (void)fc_insertObject:()FCAdditions inOrderRelativeToContents:;
- (void)fc_insertObject:()FCAdditions sortedUsingSelector:;
- (void)fc_insertObjects:()FCAdditions atIndex:;
- (void)fc_insertObjects:()FCAdditions inOrderRelativeToContents:;
- (void)fc_removeObjectsPassingTest:()FCAdditions;
- (void)fc_replaceObjectIdenticalTo:()FCAdditions withObject:;
- (void)fc_replaceObjectIdenticalTo:()FCAdditions withObjects:;
- (void)fc_rotateRightWithCount:()FCAdditions;
- (void)fc_safelyAddObject:()FCAdditions;
@end

@implementation NSMutableArray(FCAdditions)

- (void)fc_insertObject:()FCAdditions sortedUsingSelector:
{
  v6 = a3;
  v7 = [a1 count];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__NSMutableArray_FCAdditions__fc_insertObject_sortedUsingSelector___block_invoke_0;
  v8[3] = &__block_descriptor_40_e11_q24__0_8_16l;
  v8[4] = a4;
  [a1 insertObject:v6 atIndex:{objc_msgSend(a1, "indexOfObject:inSortedRange:options:usingComparator:", v6, 0, v7, 1024, v8)}];
}

- (uint64_t)fc_removeObject:()FCAdditions sortedUsingSelector:
{
  v6 = a3;
  v7 = [a1 count];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__NSMutableArray_FCAdditions__fc_removeObject_sortedUsingSelector___block_invoke_0;
  v10[3] = &__block_descriptor_40_e11_q24__0_8_16l;
  v10[4] = a4;
  v8 = [a1 indexOfObject:v6 inSortedRange:0 options:v7 usingComparator:{256, v10}];

  return [a1 removeObjectAtIndex:v8];
}

- (uint64_t)fc_removeFirstObject
{
  result = [a1 count];
  if (result)
  {

    return [a1 removeObjectAtIndex:0];
  }

  return result;
}

- (id)fc_popFirstObject
{
  v2 = [a1 objectAtIndex:0];
  [a1 removeObjectAtIndex:0];

  return v2;
}

- (id)fc_safelyPopFirstObject
{
  if ([a1 count])
  {
    v2 = [a1 objectAtIndex:0];
    [a1 removeObjectAtIndex:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)fc_popLeadingObjectsOfCount:()FCAdditions
{
  v5 = [a1 count];
  if (v5 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = v5;
  }

  v7 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, v6}];
  v8 = [a1 objectsAtIndexes:v7];
  [a1 removeObjectsAtIndexes:v7];

  return v8;
}

- (id)fc_popLastObject
{
  v2 = [a1 lastObject];
  [a1 removeLastObject];

  return v2;
}

- (void)fc_removeObjectsPassingTest:()FCAdditions
{
  v7 = a3;
  v4 = [a1 count];
  if (v4)
  {
    v5 = v4 - 1;
    do
    {
      v6 = [a1 objectAtIndex:v5];
      if (v7[2](v7, v6))
      {
        [a1 removeObjectAtIndex:v5];
      }

      --v5;
    }

    while (v5 != -1);
  }
}

- (void)fc_insertObject:()FCAdditions inOrderRelativeToContents:
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "object"];
    *buf = 136315906;
    v11 = "[NSMutableArray(FCAdditions) fc_insertObject:inOrderRelativeToContents:]";
    v12 = 2080;
    v13 = "NSMutableArray+FCAdditions.m";
    v14 = 1024;
    v15 = 101;
    v16 = 2114;
    v17 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (a4 == 1)
  {
    v7 = [a1 count];
  }

  else if (a4)
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = 0;
  }

  [a1 insertObject:v6 atIndex:v7];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)fc_insertObjects:()FCAdditions inOrderRelativeToContents:
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "objects"];
    *buf = 136315906;
    v12 = "[NSMutableArray(FCAdditions) fc_insertObjects:inOrderRelativeToContents:]";
    v13 = 2080;
    v14 = "NSMutableArray+FCAdditions.m";
    v15 = 1024;
    v16 = 124;
    v17 = 2114;
    v18 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (a4 == 1)
  {
    v7 = [a1 count];
  }

  else if (a4)
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v7, objc_msgSend(v6, "count")}];
  [a1 insertObjects:v6 atIndexes:v8];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)fc_insertObjects:()FCAdditions atIndex:
{
  v6 = MEMORY[0x1E696AC90];
  v7 = a3;
  v8 = [v6 indexSetWithIndexesInRange:{a4, objc_msgSend(v7, "count")}];
  [a1 insertObjects:v7 atIndexes:v8];
}

- (unint64_t)fc_trimToMaxCount:()FCAdditions
{
  result = [a1 count];
  if (result > a3)
  {

    return [a1 removeObjectsInRange:{a3, result - a3}];
  }

  return result;
}

- (unint64_t)fc_trimFromFrontToMaxCount:()FCAdditions
{
  result = [a1 count];
  if (result > a3)
  {

    return [a1 removeObjectsInRange:{0, result - a3}];
  }

  return result;
}

- (void)fc_safelyAddObject:()FCAdditions
{
  if (a3)
  {
    return [a1 addObject:?];
  }

  return a1;
}

- (uint64_t)fc_safelyAddObjectsFromArray:()FCAdditions
{
  if (!a3)
  {
    a3 = MEMORY[0x1E695E0F0];
  }

  return [a1 addObjectsFromArray:a3];
}

- (void)fc_replaceObjectIdenticalTo:()FCAdditions withObject:
{
  v7 = a4;
  v6 = [a1 indexOfObjectIdenticalTo:a3];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a1 replaceObjectAtIndex:v6 withObject:v7];
  }
}

- (void)fc_replaceObjectIdenticalTo:()FCAdditions withObjects:
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a1 indexOfObjectIdenticalTo:a3];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v7;
    [a1 removeObjectAtIndex:v7];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [a1 insertObject:*(*(&v15 + 1) + 8 * i) atIndex:{v8++, v15}];
        }

        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (uint64_t)fc_reverseObjects
{
  result = [a1 count];
  if (result)
  {
    result = [a1 count];
    v3 = result - 1;
    if (result != 1)
    {
      v4 = 1;
      do
      {
        result = [a1 exchangeObjectAtIndex:v4 - 1 withObjectAtIndex:v3--];
      }

      while (v4++ < v3);
    }
  }

  return result;
}

- (void)fc_rotateRightWithCount:()FCAdditions
{
  if (a3)
  {
    v5 = [a1 fc_popLastObject];
    [a1 insertObject:v5 atIndex:0];
    [a1 fc_rotateRightWithCount:a3 - 1];
  }
}

@end