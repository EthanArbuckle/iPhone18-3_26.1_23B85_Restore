@interface NSMutableArray(EmailFoundationAdditions)
- (BOOL)ef_addObjectIfAbsent:()EmailFoundationAdditions;
- (BOOL)ef_addObjectIfAbsentAccordingToEquals:()EmailFoundationAdditions;
- (id)ef_popElement;
- (id)ef_removeFirst;
- (uint64_t)ef_addObject:()EmailFoundationAdditions orPlaceholder:;
- (uint64_t)ef_insertObject:()EmailFoundationAdditions usingComparator:allowDuplicates:;
- (uint64_t)ef_insertObject:()EmailFoundationAdditions usingSortDescriptors:;
- (uint64_t)ef_insertObject:()EmailFoundationAdditions usingSortFunction:context:allowDuplicates:;
- (uint64_t)ef_removeObject:()EmailFoundationAdditions usingComparator:;
- (uint64_t)ef_removeObject:()EmailFoundationAdditions usingSortFunction:context:;
- (unint64_t)ef_insertObjectIfAbsent:()EmailFoundationAdditions usingComparator:;
- (unint64_t)ef_trimToCount:()EmailFoundationAdditions fromStart:;
- (void)ef_addAbsentObjectsFromArrayAccordingToEquals:()EmailFoundationAdditions;
- (void)ef_addOptionalObject:()EmailFoundationAdditions;
- (void)ef_insertOptionalObject:()EmailFoundationAdditions atIndex:;
- (void)ef_moveObjectAtIndex:()EmailFoundationAdditions toIndex:;
- (void)ef_reverseObjects;
@end

@implementation NSMutableArray(EmailFoundationAdditions)

- (BOOL)ef_addObjectIfAbsent:()EmailFoundationAdditions
{
  v4 = a3;
  v5 = [self indexOfObjectIdenticalTo:v4];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [self addObject:v4];
  }

  return v5 == 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)ef_addObjectIfAbsentAccordingToEquals:()EmailFoundationAdditions
{
  v4 = a3;
  v5 = [self indexOfObject:v4];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [self addObject:v4];
  }

  return v5 == 0x7FFFFFFFFFFFFFFFLL;
}

- (uint64_t)ef_addObject:()EmailFoundationAdditions orPlaceholder:
{
  if (!a3)
  {
    a3 = a4;
  }

  return [self addObject:a3];
}

- (void)ef_moveObjectAtIndex:()EmailFoundationAdditions toIndex:
{
  v8 = [self objectAtIndex:?];
  [self insertObject:? atIndex:?];
  if (a4 > a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = a3 + 1;
  }

  [self removeObjectAtIndex:v7];
}

- (void)ef_addAbsentObjectsFromArrayAccordingToEquals:()EmailFoundationAdditions
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [self ef_addObjectIfAbsentAccordingToEquals:{*(*(&v9 + 1) + 8 * v7++), v9}];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)ef_reverseObjects
{
  v2 = [self count];
  v3 = [self count];
  if (v2 >= 2)
  {
    v4 = 0;
    v5 = v2 >> 1;
    v6 = v3 - 1;
    do
    {
      v7 = [self objectAtIndexedSubscript:v4];
      v8 = [self objectAtIndexedSubscript:v6];
      [self setObject:v7 atIndexedSubscript:v6];
      [self setObject:v8 atIndexedSubscript:v4];

      ++v4;
      --v6;
    }

    while (v5 != v4);
  }
}

- (uint64_t)ef_insertObject:()EmailFoundationAdditions usingSortDescriptors:
{
  v6 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__NSMutableArray_EmailFoundationAdditions__ef_insertObject_usingSortDescriptors___block_invoke;
  aBlock[3] = &unk_1E8248F58;
  v13 = v6;
  v7 = v6;
  v8 = a3;
  v9 = _Block_copy(aBlock);
  v10 = [self ef_insertObject:v8 usingComparator:v9 allowDuplicates:1];

  return v10;
}

- (uint64_t)ef_insertObject:()EmailFoundationAdditions usingComparator:allowDuplicates:
{
  v8 = a3;
  v9 = a4;
  v10 = [self ef_indexWhereObjectWouldBeInserted:v8 usingComparator:v9];
  v11 = v10;
  if ((a5 & 1) != 0 || !v10 || v10 > [self count] || (objc_msgSend(self, "objectAtIndex:", v11 - 1), v12 = objc_claimAutoreleasedReturnValue(), v13 = v9[2](v9, v12, v8), v12, v13))
  {
    [self insertObject:v8 atIndex:v11];
  }

  else
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v11;
}

- (uint64_t)ef_insertObject:()EmailFoundationAdditions usingSortFunction:context:allowDuplicates:
{
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __102__NSMutableArray_EmailFoundationAdditions__ef_insertObject_usingSortFunction_context_allowDuplicates___block_invoke;
  v15 = &__block_descriptor_48_e11_q24__0_8_16l;
  v16 = a4;
  v17 = a5;
  v8 = a3;
  v9 = _Block_copy(&v12);
  v10 = [self ef_insertObject:v8 usingComparator:v9 allowDuplicates:{a6, v12, v13, v14, v15, v16, v17}];

  return v10;
}

- (unint64_t)ef_insertObjectIfAbsent:()EmailFoundationAdditions usingComparator:
{
  v6 = a3;
  v7 = a4;
  v8 = [self count];
  v9 = [self indexOfObject:v6 inSortedRange:0 options:v8 usingComparator:{1280, v7}];
  if (v9 < v8 && ([self objectAtIndexedSubscript:v9], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqual:", v6), v10, (v11 & 1) != 0))
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    [self insertObject:v6 atIndex:v9];
  }

  return v9;
}

- (uint64_t)ef_removeObject:()EmailFoundationAdditions usingComparator:
{
  v6 = a3;
  v7 = a4;
  v8 = [self ef_indexOfObject:v6 usingComparator:v7];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [self removeObjectAtIndex:v8];
  }

  return v8;
}

- (uint64_t)ef_removeObject:()EmailFoundationAdditions usingSortFunction:context:
{
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __86__NSMutableArray_EmailFoundationAdditions__ef_removeObject_usingSortFunction_context___block_invoke;
  v13 = &__block_descriptor_48_e11_q24__0_8_16l;
  v14 = a4;
  v15 = a5;
  v6 = a3;
  v7 = _Block_copy(&v10);
  v8 = [self ef_removeObject:v6 usingComparator:{v7, v10, v11, v12, v13, v14, v15}];

  return v8;
}

- (void)ef_addOptionalObject:()EmailFoundationAdditions
{
  v4 = a3;
  if (v4)
  {
    [self addObject:v4];
  }
}

- (void)ef_insertOptionalObject:()EmailFoundationAdditions atIndex:
{
  v6 = a3;
  if (v6)
  {
    [self insertObject:v6 atIndex:a4];
  }
}

- (unint64_t)ef_trimToCount:()EmailFoundationAdditions fromStart:
{
  result = [self count];
  if (result > a3)
  {
    if (a4)
    {
      v8 = 0;
    }

    else
    {
      v8 = a3;
    }

    return [self removeObjectsInRange:{v8, result - a3}];
  }

  return result;
}

- (id)ef_removeFirst
{
  if ([self count])
  {
    v2 = [self objectAtIndex:0];
    [self removeObjectAtIndex:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)ef_popElement
{
  v2 = [self count];
  if (v2)
  {
    v3 = [self objectAtIndex:v2 - 1];
    [self removeLastObject];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end