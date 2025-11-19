@interface NSArray(IC)
+ (id)ic_arrayFromNonNilObject:()IC;
+ (id)ic_repeating:()IC count:;
- (BOOL)ic_allSatisfy:()IC;
- (BOOL)ic_containsObjectOfClass:()IC;
- (BOOL)ic_containsObjectPassingTest:()IC;
- (ICTuple)ic_arrayBySplittingIntoTwoArraysWithMaxPrefixCount:()IC;
- (ICTuple)ic_arrayBySplittingIntoTwoArraysWithMaxPrefixCount:()IC prefixMatchingPredicate:;
- (id)ic_arrayByAddingNonNilObject:()IC;
- (id)ic_arrayByAddingObjectsFromNonNilArray:()IC;
- (id)ic_arrayByGroupingIntoArraysWithMaxCount:()IC;
- (id)ic_compactMap:()IC;
- (id)ic_dictionaryByHashingContentWithFunction:()IC;
- (id)ic_firstObjectConformingToProtocol:()IC;
- (id)ic_firstObjectOfClass:()IC;
- (id)ic_flatMap:()IC;
- (id)ic_map:()IC;
- (id)ic_objectAfter:()IC wrap:;
- (id)ic_objectBefore:()IC wrap:;
- (id)ic_objectPassingTest:()IC;
- (id)ic_objectsConformingToProtocol:()IC;
- (id)ic_objectsOfClass:()IC;
- (id)ic_objectsPassingTest:()IC;
- (id)ic_randomObject;
- (id)ic_reduceStartingWithState:()IC usingBlock:;
- (uint64_t)ic_containsObjectMatchingPredicate:()IC;
- (uint64_t)ic_subarrayFromIndex:()IC;
- (unint64_t)ic_indexOfSortedObject:()IC insertionIndex:usingComparator:;
@end

@implementation NSArray(IC)

+ (id)ic_arrayFromNonNilObject:()IC
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7[0] = a3;
    v3 = MEMORY[0x1E695DEC8];
    v4 = a3;
    v5 = [v3 arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

+ (id)ic_repeating:()IC count:
{
  v5 = a3;
  for (i = [MEMORY[0x1E695DF70] array];
  {
    [i addObject:v5];
  }

  v7 = [i copy];

  return v7;
}

- (BOOL)ic_containsObjectOfClass:()IC
{
  v1 = [a1 ic_firstObjectOfClass:?];
  v2 = v1 != 0;

  return v2;
}

- (id)ic_randomObject
{
  v2 = [a1 count];
  if (v2)
  {
    v2 = [a1 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(a1, "count"))}];
  }

  return v2;
}

- (id)ic_objectPassingTest:()IC
{
  v2 = [a1 indexOfObjectPassingTest:?];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = [a1 objectAtIndex:v2];
  }

  return v3;
}

- (BOOL)ic_containsObjectPassingTest:()IC
{
  v1 = [a1 ic_objectPassingTest:?];
  v2 = v1 != 0;

  return v2;
}

- (uint64_t)ic_containsObjectMatchingPredicate:()IC
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__NSArray_IC__ic_containsObjectMatchingPredicate___block_invoke;
  v8[3] = &unk_1E8485498;
  v9 = v4;
  v5 = v4;
  v6 = [a1 ic_containsObjectPassingTest:v8];

  return v6;
}

- (id)ic_objectsPassingTest:()IC
{
  v2 = [a1 indexesOfObjectsPassingTest:?];
  v3 = [a1 objectsAtIndexes:v2];

  return v3;
}

- (id)ic_objectsOfClass:()IC
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__NSArray_IC__ic_objectsOfClass___block_invoke;
  v5[3] = &__block_descriptor_40_e15_B32__0_8Q16_B24lu32l8;
  v5[4] = a3;
  v3 = [a1 ic_objectsPassingTest:v5];

  return v3;
}

- (id)ic_firstObjectOfClass:()IC
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__NSArray_IC__ic_firstObjectOfClass___block_invoke;
  v5[3] = &__block_descriptor_40_e15_B32__0_8Q16_B24lu32l8;
  v5[4] = a3;
  v3 = [a1 ic_objectPassingTest:v5];

  return v3;
}

- (id)ic_objectsConformingToProtocol:()IC
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__NSArray_IC__ic_objectsConformingToProtocol___block_invoke;
  v8[3] = &unk_1E8485498;
  v9 = v4;
  v5 = v4;
  v6 = [a1 ic_objectsPassingTest:v8];

  return v6;
}

- (id)ic_firstObjectConformingToProtocol:()IC
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__NSArray_IC__ic_firstObjectConformingToProtocol___block_invoke;
  v8[3] = &unk_1E8485498;
  v9 = v4;
  v5 = v4;
  v6 = [a1 ic_objectPassingTest:v8];

  return v6;
}

- (ICTuple)ic_arrayBySplittingIntoTwoArraysWithMaxPrefixCount:()IC
{
  if ([a1 count] <= a3)
  {
    v8 = [ICTuple alloc];
    v7 = [(ICTuple *)v8 initWithFirstObject:a1 secondObject:MEMORY[0x1E695E0F0]];
  }

  else
  {
    v5 = [a1 subarrayWithRange:{0, a3}];
    v6 = [a1 subarrayWithRange:{a3, objc_msgSend(a1, "count") - a3}];
    v7 = [[ICTuple alloc] initWithFirstObject:v5 secondObject:v6];
  }

  return v7;
}

- (ICTuple)ic_arrayBySplittingIntoTwoArraysWithMaxPrefixCount:()IC prefixMatchingPredicate:
{
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:a3];
  v8 = [MEMORY[0x1E695DF70] arrayWithArray:a1];
  if ([v7 count] < a3)
  {
    while ([v8 count])
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __90__NSArray_IC__ic_arrayBySplittingIntoTwoArraysWithMaxPrefixCount_prefixMatchingPredicate___block_invoke;
      v14[3] = &unk_1E84854E0;
      v15 = v6;
      v9 = [v8 indexOfObjectPassingTest:v14];
      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {

        break;
      }

      v10 = v9;
      v11 = [v8 objectAtIndexedSubscript:v9];
      [v8 removeObjectAtIndex:v10];
      [v7 addObject:v11];

      if ([v7 count] >= a3)
      {
        break;
      }
    }
  }

  v12 = [[ICTuple alloc] initWithFirstObject:v7 secondObject:v8];

  return v12;
}

- (id)ic_arrayByGroupingIntoArraysWithMaxCount:()IC
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = a1;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v9 count];
        if (!v9 || v13 >= a3)
        {
          v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:a3];

          [v5 addObject:v14];
          v9 = v14;
        }

        [v9 addObject:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v5;
}

- (unint64_t)ic_indexOfSortedObject:()IC insertionIndex:usingComparator:
{
  v8 = a3;
  v9 = a5;
  v10 = [a1 indexOfObject:v8 inSortedRange:0 options:objc_msgSend(a1 usingComparator:{"count"), 1280, v9}];

  if (a4)
  {
    *a4 = v10;
  }

  if (v10 >= [a1 count] || (objc_msgSend(a1, "objectAtIndexedSubscript:", v10), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqual:", v8), v11, (v12 & 1) == 0))
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

- (id)ic_objectBefore:()IC wrap:
{
  v6 = [a1 indexOfObject:?];
  v7 = 0;
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = a4;
  }

  if (v6 != 0x7FFFFFFFFFFFFFFFLL && v8)
  {
    v7 = [a1 objectAtIndexedSubscript:{(v6 + objc_msgSend(a1, "count") - 1) % objc_msgSend(a1, "count")}];
  }

  return v7;
}

- (id)ic_objectAfter:()IC wrap:
{
  v6 = [a1 indexOfObject:?];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL || (v8 = v6, (a4 & 1) == 0) && v6 == [a1 count] - 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = [a1 objectAtIndexedSubscript:{(v8 + 1) % objc_msgSend(a1, "count")}];
  }

  return v7;
}

- (id)ic_arrayByAddingNonNilObject:()IC
{
  v4 = a1;
  v5 = v4;
  if (a3)
  {
    v6 = [v4 arrayByAddingObject:a3];

    v5 = v6;
  }

  return v5;
}

- (id)ic_arrayByAddingObjectsFromNonNilArray:()IC
{
  v4 = a1;
  v5 = v4;
  if (a3)
  {
    v6 = [v4 arrayByAddingObjectsFromArray:a3];

    v5 = v6;
  }

  return v5;
}

- (id)ic_compactMap:()IC
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __29__NSArray_IC__ic_compactMap___block_invoke;
  v13 = &unk_1E8485508;
  v14 = v5;
  v15 = v4;
  v6 = v5;
  v7 = v4;
  [a1 enumerateObjectsUsingBlock:&v10];
  v8 = [v6 copy];

  return v8;
}

- (id)ic_map:()IC
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __22__NSArray_IC__ic_map___block_invoke;
  v13 = &unk_1E8485508;
  v14 = v5;
  v15 = v4;
  v6 = v5;
  v7 = v4;
  [a1 enumerateObjectsUsingBlock:&v10];
  v8 = [v6 copy];

  return v8;
}

- (id)ic_flatMap:()IC
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __26__NSArray_IC__ic_flatMap___block_invoke;
  v13 = &unk_1E8485508;
  v14 = v5;
  v15 = v4;
  v6 = v5;
  v7 = v4;
  [a1 enumerateObjectsUsingBlock:&v10];
  v8 = [v6 copy];

  return v8;
}

- (id)ic_reduceStartingWithState:()IC usingBlock:
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__6;
  v19 = __Block_byref_object_dispose__6;
  v8 = v6;
  v20 = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__NSArray_IC__ic_reduceStartingWithState_usingBlock___block_invoke;
  v12[3] = &unk_1E8485530;
  v14 = &v15;
  v9 = v7;
  v13 = v9;
  [a1 enumerateObjectsUsingBlock:v12];
  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

- (uint64_t)ic_subarrayFromIndex:()IC
{
  v5 = [a1 count] - a3;

  return [a1 subarrayWithRange:{a3, v5}];
}

- (id)ic_dictionaryByHashingContentWithFunction:()IC
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(a1, "count")}];
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
        if (v12)
        {
          [v5 setObject:v11 forKeyedSubscript:{v12, v15}];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];

  return v13;
}

- (BOOL)ic_allSatisfy:()IC
{
  v2 = [a1 ic_objectsPassingTest:?];
  v3 = [v2 count];
  v4 = v3 == [a1 count];

  return v4;
}

@end