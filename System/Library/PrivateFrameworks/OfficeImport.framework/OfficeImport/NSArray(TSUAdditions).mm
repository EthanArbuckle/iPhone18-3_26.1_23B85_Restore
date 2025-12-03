@interface NSArray(TSUAdditions)
+ (id)tsu_arrayWithCGFloats:()TSUAdditions count:;
+ (id)tsu_arrayWithInts:()TSUAdditions count:;
+ (id)tsu_arrayWithUIntegers:()TSUAdditions count:;
+ (uint64_t)tsu_arrayByUnioningArray:()TSUAdditions withArray:;
+ (uint64_t)tsu_arrayWithNonNilObject:()TSUAdditions;
- (id)tsu_arrayByMappingObjectsUsingBlock:()TSUAdditions;
- (id)tsu_localizedList;
- (uint64_t)tsu_arrayByRemovingFirstObject;
- (uint64_t)tsu_arrayByTransformingWithBlock:()TSUAdditions;
- (uint64_t)tsu_arrayOfObjectsPassingTest:()TSUAdditions;
- (uint64_t)tsu_containsObjectPassingTest:()TSUAdditions;
- (uint64_t)tsu_firstObjectPassingTest:()TSUAdditions;
- (uint64_t)tsu_indexOfSmallestObject;
- (uint64_t)tsu_initWithCGFloats:()TSUAdditions count:;
- (uint64_t)tsu_initWithInts:()TSUAdditions count:;
- (uint64_t)tsu_initWithUIntegers:()TSUAdditions count:;
- (uint64_t)tsu_isHomogeneousForClass:()TSUAdditions;
- (uint64_t)tsu_objectPriorToObject:()TSUAdditions;
- (uint64_t)tsu_onlyObject;
- (uint64_t)tsu_rangeCheckedObjectAtIndex:()TSUAdditions;
- (void)tsu_arrayByAddingNonContainedObjectsFromArray:()TSUAdditions;
- (void)tsu_arrayByFlattening;
- (void)tsu_arrayByRemovingObjectsIdenticalToObjectsInArray:()TSUAdditions;
- (void)tsu_arrayByReversingOrder;
- (void)tsu_arrayWithObjectsInSet:()TSUAdditions;
- (void)tsu_enumerateSnapshotObjectsUsingBlock:()TSUAdditions;
- (void)tsu_indexesOfObjects:()TSUAdditions;
- (void)tsu_intersectionWithArray:()TSUAdditions;
@end

@implementation NSArray(TSUAdditions)

- (uint64_t)tsu_initWithCGFloats:()TSUAdditions count:
{
  v12 = *MEMORY[0x277D85DE8];
  if (count < 0x11)
  {
    if (!count)
    {
      return [self initWithObjects:v11 count:0];
    }

    v7 = v11;
LABEL_5:
    v8 = 0;
    do
    {
      *&v7[8 * v8] = [MEMORY[0x277CCABB0] numberWithDouble:*(a3 + 8 * v8)];
      ++v8;
    }

    while (count != v8);
    v9 = [self initWithObjects:v7 count:count];
    if (v7 != v11)
    {
      free(v7);
    }

    return v9;
  }

  v7 = malloc_type_calloc(count, 8uLL, 0x80040B8603338uLL);
  if (v7)
  {
    goto LABEL_5;
  }

  return [self initWithObjects:0 count:count];
}

+ (id)tsu_arrayWithCGFloats:()TSUAdditions count:
{
  v4 = [[self alloc] tsu_initWithCGFloats:a3 count:a4];

  return v4;
}

- (uint64_t)tsu_initWithInts:()TSUAdditions count:
{
  v12 = *MEMORY[0x277D85DE8];
  if (count < 0x11)
  {
    if (!count)
    {
      return [self initWithObjects:v11 count:0];
    }

    v7 = v11;
LABEL_5:
    v8 = 0;
    do
    {
      *&v7[8 * v8] = [MEMORY[0x277CCABB0] numberWithInt:*(a3 + 4 * v8)];
      ++v8;
    }

    while (count != v8);
    v9 = [self initWithObjects:v7 count:count];
    if (v7 != v11)
    {
      free(v7);
    }

    return v9;
  }

  v7 = malloc_type_calloc(count, 8uLL, 0x80040B8603338uLL);
  if (v7)
  {
    goto LABEL_5;
  }

  return [self initWithObjects:0 count:count];
}

+ (id)tsu_arrayWithInts:()TSUAdditions count:
{
  v4 = [[self alloc] tsu_initWithInts:a3 count:a4];

  return v4;
}

+ (uint64_t)tsu_arrayByUnioningArray:()TSUAdditions withArray:
{
  if (a3)
  {
    return [a3 tsu_arrayByAddingNonContainedObjectsFromArray:a4];
  }

  else
  {
    return a4;
  }
}

- (uint64_t)tsu_initWithUIntegers:()TSUAdditions count:
{
  v12 = *MEMORY[0x277D85DE8];
  if (count < 0x11)
  {
    if (!count)
    {
      return [self initWithObjects:v11 count:0];
    }

    v7 = v11;
LABEL_5:
    v8 = 0;
    do
    {
      *&v7[8 * v8] = [MEMORY[0x277CCABB0] numberWithInteger:*(a3 + 8 * v8)];
      ++v8;
    }

    while (count != v8);
    v9 = [self initWithObjects:v7 count:count];
    if (v7 != v11)
    {
      free(v7);
    }

    return v9;
  }

  v7 = malloc_type_calloc(count, 8uLL, 0x80040B8603338uLL);
  if (v7)
  {
    goto LABEL_5;
  }

  return [self initWithObjects:0 count:count];
}

+ (id)tsu_arrayWithUIntegers:()TSUAdditions count:
{
  v4 = [[self alloc] tsu_initWithUIntegers:a3 count:a4];

  return v4;
}

- (uint64_t)tsu_rangeCheckedObjectAtIndex:()TSUAdditions
{
  if ([self count] <= a3)
  {
    return 0;
  }

  return [self objectAtIndex:a3];
}

- (uint64_t)tsu_objectPriorToObject:()TSUAdditions
{
  v2 = [self indexOfObject:?];
  if (!v2 || v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return [self objectAtIndex:v2 - 1];
}

- (uint64_t)tsu_indexOfSmallestObject
{
  v2 = [self count];
  if (!v2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v3 = v2;
  v4 = 0;
  v5 = 0;
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v7 = [self objectAtIndex:v4];
    v8 = v7;
    if (!v5 || [v7 compare:v5] == -1)
    {
      v5 = v8;
      v6 = v4;
    }

    ++v4;
  }

  while (v3 != v4);
  return v6;
}

- (void)tsu_indexesOfObjects:()TSUAdditions
{
  v17 = *MEMORY[0x277D85DE8];
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = [self indexOfObject:*(*(&v12 + 1) + 8 * v9)];
        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [indexSet addIndex:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return indexSet;
}

- (void)tsu_arrayWithObjectsInSet:()TSUAdditions
{
  v17 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  if (a3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [self countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(self);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([a3 containsObject:v10])
          {
            [array addObject:v10];
          }
        }

        v7 = [self countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  return array;
}

- (void)tsu_intersectionWithArray:()TSUAdditions
{
  v17 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  if (a3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [self countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(self);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([a3 indexOfObject:v10] != 0x7FFFFFFFFFFFFFFFLL)
          {
            [array addObject:v10];
          }
        }

        v7 = [self countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  return array;
}

- (void)tsu_arrayByRemovingObjectsIdenticalToObjectsInArray:()TSUAdditions
{
  v5 = [a3 count];
  if (!v5)
  {
    return self;
  }

  v6 = v5;
  v7 = 0;
  v8 = 0;
  selfCopy = self;
  do
  {
    v10 = [a3 objectAtIndex:v7];
    v11 = [selfCopy indexOfObjectIdenticalTo:v10];
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = v11; i != 0x7FFFFFFFFFFFFFFFLL; i = [selfCopy indexOfObjectIdenticalTo:v10])
      {
        if (!v8)
        {
          v8 = [MEMORY[0x277CBEB18] arrayWithArray:self];
          selfCopy = v8;
        }

        [v8 removeObjectAtIndex:i];
      }
    }

    ++v7;
  }

  while (v7 != v6);
  return selfCopy;
}

- (void)tsu_arrayByAddingNonContainedObjectsFromArray:()TSUAdditions
{
  if (a3 && (v5 = [a3 count]) != 0)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = [a3 objectAtIndex:v8];
      if (([self containsObject:v9] & 1) == 0)
      {
        if (!v7)
        {
          v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(self, "count") + v6}];
          [v7 addObjectsFromArray:self];
        }

        [v7 addObject:v9];
      }

      ++v8;
      --v6;
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    return v7;
  }

  else
  {
    return self;
  }
}

- (void)tsu_arrayByReversingOrder
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(self, "count")}];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  reverseObjectEnumerator = [self reverseObjectEnumerator];
  v4 = [reverseObjectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        [v2 addObject:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [reverseObjectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return v2;
}

- (uint64_t)tsu_arrayByRemovingFirstObject
{
  if (![self count])
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSArray(TSUAdditions) tsu_arrayByRemovingFirstObject]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v2, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/NSArrayAdditions.m"], 231, 1, "Can't remove the first object of an empty array!");
    TSUCrash("Fatal Assertion failure: %{public}s %{public}s:%d Can't remove the first object of an empty array!", v3, v4, v5, v6, v7, v8, v9, "[NSArray(TSUAdditions) tsu_arrayByRemovingFirstObject]");
  }

  v10 = [MEMORY[0x277CBEB18] arrayWithArray:self];
  [v10 removeObjectAtIndex:0];
  v11 = objc_opt_class();

  return [v11 arrayWithArray:v10];
}

- (void)tsu_enumerateSnapshotObjectsUsingBlock:()TSUAdditions
{
  v4 = [self copy];
  [v4 enumerateObjectsUsingBlock:a3];
}

- (uint64_t)tsu_firstObjectPassingTest:()TSUAdditions
{
  v16 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 0;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [self countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_4:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(self);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ((*(a3 + 16))(a3, v9))
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [self countByEnumeratingWithState:&v11 objects:v15 count:16];
      v9 = 0;
      if (v6)
      {
        goto LABEL_4;
      }

      return v9;
    }
  }
}

- (uint64_t)tsu_containsObjectPassingTest:()TSUAdditions
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 0;
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  result = [self countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v10;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(self);
        }

        if ((*(a3 + 16))(a3, *(*(&v9 + 1) + 8 * i)))
        {
          return 1;
        }
      }

      v6 = [self countByEnumeratingWithState:&v9 objects:v13 count:16];
      result = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (uint64_t)tsu_isHomogeneousForClass:()TSUAdditions
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [self countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(self);
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          return 0;
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [self countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

- (uint64_t)tsu_arrayOfObjectsPassingTest:()TSUAdditions
{
  if (a3)
  {
    selfCopy = self;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __55__NSArray_TSUAdditions__tsu_arrayOfObjectsPassingTest___block_invoke;
    v10[3] = &unk_2799C6348;
    v10[4] = a3;
    v5 = [self indexesOfObjectsPassingTest:v10];
    if (!v5)
    {
      return [MEMORY[0x277CBEA60] array];
    }

    v6 = v5;
    if (![v5 count])
    {
      return [MEMORY[0x277CBEA60] array];
    }

    if ([v6 containsIndexesInRange:{0, objc_msgSend(selfCopy, "count")}])
    {
      return selfCopy;
    }

    return [selfCopy objectsAtIndexes:v6];
  }

  v9 = MEMORY[0x277CBEA60];

  return [v9 array];
}

- (uint64_t)tsu_arrayByTransformingWithBlock:()TSUAdditions
{
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(self, "count")}];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__NSArray_TSUAdditions__tsu_arrayByTransformingWithBlock___block_invoke;
  v7[3] = &unk_2799C6370;
  v7[4] = v5;
  v7[5] = a3;
  [self enumerateObjectsUsingBlock:v7];
  return v5;
}

- (id)tsu_arrayByMappingObjectsUsingBlock:()TSUAdditions
{
  v19 = *MEMORY[0x277D85DE8];
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(self, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [self countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(self);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = (*(a3 + 16))(a3, v8);
        if (v9)
        {
          [v13 addObject:v9];
        }

        else
        {
          v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSArray(TSUAdditions) tsu_arrayByMappingObjectsUsingBlock:]"];
          +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v10, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/NSArrayAdditions.m"], 335, 0, "Block returned a nil object for %@.", v8);
          +[OITSUAssertionHandler logBacktraceThrottled];
        }
      }

      v5 = [self countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  return [v13 copy];
}

- (void)tsu_arrayByFlattening
{
  array = [MEMORY[0x277CBEB18] array];
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3052000000;
  v5[3] = __Block_byref_object_copy__1;
  v5[4] = __Block_byref_object_dispose__1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__NSArray_TSUAdditions__tsu_arrayByFlattening__block_invoke;
  v4[3] = &unk_2799C6398;
  v4[4] = v5;
  v5[5] = v4;
  __46__NSArray_TSUAdditions__tsu_arrayByFlattening__block_invoke(v4, self, array);
  _Block_object_dispose(v5, 8);
  return array;
}

- (uint64_t)tsu_onlyObject
{
  if ([self count] >= 2)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSArray(TSUAdditions) tsu_onlyObject]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v2, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/NSArrayAdditions.m"], 365, 0, "As this method returns the only object in the array, it only makes sense if the array has at most one object.");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  return [self firstObject];
}

- (id)tsu_localizedList
{
  string = [MEMORY[0x277CCAB68] string];
  v3 = [self count];
  if (v3)
  {
    v4 = v3;
    v5 = 2;
    for (i = v3; i; --i)
    {
      [string appendFormat:@"%@", objc_msgSend(objc_msgSend(self, "objectAtIndexedSubscript:", v5 - 2), "description")];
      if (i < 3)
      {
        if (v4 >= 3 && i == 2)
        {
          v7 = SFUBundle();
          v8 = @"TSU_LIST_SEPARATOR_FINAL";
          v9 = @", and ";
        }

        else
        {
          if (v4 != 2 || v5 != 2)
          {
            goto LABEL_12;
          }

          v7 = SFUBundle();
          v8 = @"TSU_LIST_SEPARATOR_TWO_ITEMS";
          v9 = @" and ";
        }
      }

      else
      {
        v7 = SFUBundle();
        v8 = @"TSU_LIST_SEPARATOR";
        v9 = @", ";
      }

      [string appendFormat:@"%@", objc_msgSend(v7, "localizedStringForKey:value:table:", v8, v9, @"TSUtility"];
LABEL_12:
      ++v5;
    }
  }

  v10 = [string copy];

  return v10;
}

+ (uint64_t)tsu_arrayWithNonNilObject:()TSUAdditions
{
  v4[1] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return MEMORY[0x277CBEBF8];
  }

  v4[0] = a3;
  return [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
}

@end