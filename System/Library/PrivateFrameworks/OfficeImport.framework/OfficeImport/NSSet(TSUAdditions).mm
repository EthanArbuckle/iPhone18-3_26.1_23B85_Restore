@interface NSSet(TSUAdditions)
+ (id)tsu_setWithSelectors:()TSUAdditions;
+ (uint64_t)tsu_intersectionOfSets:()TSUAdditions;
+ (uint64_t)tsu_set:()TSUAdditions isEqualToSet:;
- (id)tsu_setByMappingObjectsUsingBlock:()TSUAdditions;
- (uint64_t)tsu_containsObjectIdenticalTo:()TSUAdditions;
- (uint64_t)tsu_isHomogeneousForClass:()TSUAdditions;
- (uint64_t)tsu_onlyObject;
- (uint64_t)tsu_setByIntersectingSet:()TSUAdditions;
- (uint64_t)tsu_setBySubtractingSet:()TSUAdditions;
- (uint64_t)tsu_sortedArray;
@end

@implementation NSSet(TSUAdditions)

+ (id)tsu_setWithSelectors:()TSUAdditions
{
  v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v14 = &a9;
  if (a3)
  {
    do
    {
      [v10 addObject:NSStringFromSelector(a3)];
      v11 = v14++;
      a3 = *v11;
    }

    while (*v11);
  }

  v12 = [v10 copy];

  return v12;
}

+ (uint64_t)tsu_set:()TSUAdditions isEqualToSet:
{
  if (a3 == a4)
  {
    return 1;
  }

  v11 = v5;
  v12 = v4;
  v8 = a4;
  v9 = a3;
  if (!a3)
  {
    v9 = [MEMORY[0x277CBEB98] set];
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_9:
    v8 = [MEMORY[0x277CBEB98] set];
    goto LABEL_4;
  }

  if (!a4)
  {
    goto LABEL_9;
  }

LABEL_4:

  return [v9 isEqualToSet:v8];
}

+ (uint64_t)tsu_intersectionOfSets:()TSUAdditions
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v4)
  {
    return [MEMORY[0x277CBEB58] set];
  }

  v5 = v4;
  v6 = 0;
  v7 = *v12;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(a3);
      }

      v9 = *(*(&v11 + 1) + 8 * i);
      if (v6)
      {
        [v6 intersectSet:v9];
      }

      else
      {
        v6 = [MEMORY[0x277CBEB58] setWithSet:v9];
      }
    }

    v5 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  }

  while (v5);
  if (!v6)
  {
    return [MEMORY[0x277CBEB58] set];
  }

  return v6;
}

- (uint64_t)tsu_containsObjectIdenticalTo:()TSUAdditions
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  result = [a1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v10;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(a1);
        }

        if (*(*(&v9 + 1) + 8 * v8) == a3)
        {
          return 1;
        }

        ++v8;
      }

      while (v6 != v8);
      result = [a1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v6 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (uint64_t)tsu_sortedArray
{
  v1 = [a1 allObjects];

  return [v1 sortedArrayUsingSelector:sel_compare_];
}

- (id)tsu_setByMappingObjectsUsingBlock:()TSUAdditions
{
  v19 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSSet(TSUAdditions) tsu_setByMappingObjectsUsingBlock:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/NSSetAdditions.m"], 86, 0, "Invalid parameter not satisfying: %{public}s", "block != nil");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v13 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(a1, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [a1 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(a1);
        }

        v10 = (*(a3 + 16))(a3, *(*(&v14 + 1) + 8 * i));
        if (v10)
        {
          [v13 addObject:v10];
        }

        else
        {
          v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSSet(TSUAdditions) tsu_setByMappingObjectsUsingBlock:]"];
          +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v11, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/NSSetAdditions.m"], 96, 0, "Block returned a nil object.");
          +[OITSUAssertionHandler logBacktraceThrottled];
        }
      }

      v7 = [a1 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return [v13 copy];
}

- (uint64_t)tsu_isHomogeneousForClass:()TSUAdditions
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [a1 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(a1);
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          return 0;
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [a1 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

- (uint64_t)tsu_onlyObject
{
  if ([a1 count] >= 2)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSSet(TSUAdditions) tsu_onlyObject]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v2, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/NSSetAdditions.m"], 117, 0, "As this method returns the only object in the set, it only makes sense if the set has at most one object.");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  return [a1 anyObject];
}

- (uint64_t)tsu_setByIntersectingSet:()TSUAdditions
{
  v4 = [MEMORY[0x277CBEB58] setWithSet:a1];
  [v4 intersectSet:a3];
  v5 = objc_opt_class();

  return [v5 setWithSet:v4];
}

- (uint64_t)tsu_setBySubtractingSet:()TSUAdditions
{
  v4 = [MEMORY[0x277CBEB58] setWithSet:a1];
  [v4 minusSet:a3];
  v5 = objc_opt_class();

  return [v5 setWithSet:v4];
}

@end