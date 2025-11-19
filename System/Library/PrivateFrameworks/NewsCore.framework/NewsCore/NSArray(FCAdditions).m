@interface NSArray(FCAdditions)
+ (id)fc_arrayByAddingObjectsFromArray:()FCAdditions toArray:;
+ (id)fc_arrayByAddingObjectsFromArray:()FCAdditions toArray:inRelativeOrder:;
+ (id)fc_arrayByAddingUniqueObjectsFromArray:()FCAdditions toArray:;
+ (id)fc_generatedArrayWithCount:()FCAdditions generator:;
+ (void)fc_array:()FCAdditions;
+ (void)fc_walkArray:()FCAdditions andArray:withBlock:;
- (BOOL)fc_containsObjectPassingTest:()FCAdditions;
- (BOOL)fc_containsObjectsWithValue:()FCAdditions forKey:;
- (BOOL)fc_isEqualToArray:()FCAdditions inRange:;
- (double)fc_cosineDistanceToArray:()FCAdditions;
- (double)fc_euclideanDistanceToArray:()FCAdditions;
- (double)fc_reduceArrayWithDouble:()FCAdditions block:;
- (id)fc_arrayByCollectingObjectsWithBlock:()FCAdditions;
- (id)fc_arrayByFlattening;
- (id)fc_arrayByMergingAdjacentObjectsWithMergePolicy:()FCAdditions mergeBlock:;
- (id)fc_arrayByRemovingFirstObject;
- (id)fc_arrayByRemovingKeysInDictionary:()FCAdditions;
- (id)fc_arrayByRemovingObject:()FCAdditions;
- (id)fc_arrayByRemovingObjectIdenticalTo:()FCAdditions;
- (id)fc_arrayByRemovingObjectsAtIndexes:()FCAdditions;
- (id)fc_arrayByRemovingObjectsInArray:()FCAdditions;
- (id)fc_arrayByRemovingObjectsInRange:()FCAdditions;
- (id)fc_arrayByRemovingObjectsPassingTest:()FCAdditions;
- (id)fc_arrayByReplacingObjectAtIndex:()FCAdditions withObject:;
- (id)fc_arrayByReplacingObjectIdenticalTo:()FCAdditions withObject:;
- (id)fc_arrayByReplacingObjectsInRange:()FCAdditions withObject:;
- (id)fc_arrayByReversingObjects;
- (id)fc_arrayByTransformingWithBlock:()FCAdditions;
- (id)fc_arrayByTransformingWithBlockWithIndex:()FCAdditions;
- (id)fc_arrayOfObjectsFailingTest:()FCAdditions;
- (id)fc_arrayOfObjectsPassingTest:()FCAdditions;
- (id)fc_arraysByExcisingRange:()FCAdditions;
- (id)fc_arraysByPartitioningOnObjectsPassingTest:()FCAdditions;
- (id)fc_arraysByPartitioningWithBudget:()FCAdditions indicesOfOverBudgetObjects:appraiser:accumulator:comparator:;
- (id)fc_dictionaryOfSortedObjectsWithKeyBlock:()FCAdditions;
- (id)fc_dictionaryOfTransformedSortedObjectsWithKeyBlock:()FCAdditions valueBlock:;
- (id)fc_dictionaryWithKeyBlock:()FCAdditions;
- (id)fc_dictionaryWithKeyBlock:()FCAdditions valueBlock:;
- (id)fc_dictionaryWithKeySelector:()FCAdditions;
- (id)fc_dictionaryWithKeySelector:()FCAdditions valueSelector:;
- (id)fc_dictionaryWithValueBlock:()FCAdditions;
- (id)fc_firstObjectFromIndex:()FCAdditions passingTest:;
- (id)fc_firstObjectOfClass:()FCAdditions;
- (id)fc_firstObjectPassingTest:()FCAdditions;
- (id)fc_firstObjectWithValue:()FCAdditions forKey:;
- (id)fc_indexesOfObjectsIdenticalTo:()FCAdditions;
- (id)fc_indexesOfObjectsPassingTest:()FCAdditions;
- (id)fc_lastObjectPassingTest:()FCAdditions;
- (id)fc_objectsOfMaxValueWithValueBlock:()FCAdditions comparator:;
- (id)fc_objectsOfMinValueWithValueBlock:()FCAdditions comparator:;
- (id)fc_onlyObject;
- (id)fc_orderedSetByTransformingWithBlock:()FCAdditions;
- (id)fc_randomObject;
- (id)fc_randomlyMergeWithArray:()FCAdditions;
- (id)fc_reduceArrayWithInitial:()FCAdditions block:;
- (id)fc_rotateElementsFromTheIndexOfSelectedItem:()FCAdditions;
- (id)fc_safeObjectAtIndex:()FCAdditions;
- (id)fc_setByCollectingObjectsWithBlock:()FCAdditions;
- (id)fc_setByTransformingWithBlock:()FCAdditions;
- (id)fc_setOfObjectsPassingTest:()FCAdditions;
- (id)fc_sortedArrayStartingWithElementsSatisfying:()FCAdditions sortedBy:;
- (id)fc_subarrayFromCount:()FCAdditions;
- (id)fc_subarrayFromIndex:()FCAdditions withMaxCount:range:;
- (id)fc_subarrayInOrder:()FCAdditions relativeToIndex:inclusive:;
- (id)fc_subarrayInOrder:()FCAdditions relativeToIndex:withMaxCount:range:;
- (id)fc_subarrayToIndex:()FCAdditions withMaxCount:range:;
- (id)fc_subarrayUpToCountInclusive:()FCAdditions;
- (id)fc_subarrayWithPercentFromBeginning:()FCAdditions;
- (id)fc_subarrayWithPercentToEnd:()FCAdditions;
- (id)fc_uniqueByValueBlock:()FCAdditions;
- (uint64_t)fc_allObjectsPassTest:()FCAdditions;
- (uint64_t)fc_containsObjectsAtBack:()FCAdditions;
- (uint64_t)fc_containsObjectsAtFront:()FCAdditions;
- (uint64_t)fc_countOfObjectsPassingTest:()FCAdditions;
- (uint64_t)fc_distanceFromArray:()FCAdditions;
- (uint64_t)fc_expandIndex:()FCAdditions toIncludeAdjacentObjectsPassingTest:;
- (uint64_t)fc_indexOfFirstObjectWithValue:()FCAdditions forKey:;
- (uint64_t)fc_isEqualToArray:()FCAdditions;
- (uint64_t)fc_safeSubarrayWithCountFromBack:()FCAdditions;
- (uint64_t)fc_safeSubarrayWithCountFromFront:()FCAdditions;
- (uint64_t)fc_subarrayWithMaxCount:()FCAdditions;
- (uint64_t)fc_uniqueCount;
- (void)fc_arrayByAddingNonContainedObjectsFromArray:()FCAdditions;
- (void)fc_enumerateIslandsOfCommonValuesForKeyBlock:()FCAdditions withBlock:;
- (void)fc_enumerateObjectsFromIndex:()FCAdditions usingBlock:;
- (void)fc_enumerateObjectsInReverse:()FCAdditions usingSkipAheadBlock:;
- (void)fc_enumerateSideBySideWithArray:()FCAdditions reverse:block:;
- (void)fc_splitArrayWithTest:()FCAdditions result:;
- (void)fc_subarrayWithCount:()FCAdditions result:;
- (void)fc_visitSubarraysWithMaxCount:()FCAdditions block:;
@end

@implementation NSArray(FCAdditions)

- (id)fc_onlyObject
{
  v16 = *MEMORY[0x1E69E9840];
  if ([a1 count] != 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a1, "count")}];
    v7 = [v5 initWithFormat:@"expected one element; got %@", v6];
    *buf = 136315906;
    v9 = "[NSArray(FCAdditions) fc_onlyObject]";
    v10 = 2080;
    v11 = "NSArray+FCAdditions.m";
    v12 = 1024;
    v13 = 260;
    v14 = 2114;
    v15 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v2 = [a1 firstObject];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)fc_arrayByFlattening
{
  v2 = [MEMORY[0x1E695DF70] array];
  FCFlattenArrayToArray(a1, v2);

  return v2;
}

- (void)fc_enumerateObjectsInReverse:()FCAdditions usingSkipAheadBlock:
{
  v6 = a4;
  v7 = [a1 count];
  v8 = v7;
  v13 = 0;
  if (a3)
  {
    v9 = v7 - 1;
    if (v7 >= 1)
    {
      do
      {
        v10 = [a1 objectAtIndexedSubscript:v9];
        v9 -= v6[2](v6, v10, v9, &v13);
      }

      while ((v9 & 0x8000000000000000) == 0 && (v13 & 1) == 0);
    }
  }

  else if (v7 >= 1)
  {
    v11 = 0;
    do
    {
      v12 = [a1 objectAtIndexedSubscript:v11];
      v11 += v6[2](v6, v12, v11, &v13);
    }

    while (v11 < v8 && (v13 & 1) == 0);
  }
}

- (void)fc_enumerateObjectsFromIndex:()FCAdditions usingBlock:
{
  v6 = MEMORY[0x1E696AC90];
  v7 = a4;
  v8 = [v6 indexSetWithIndexesInRange:{a3, objc_msgSend(a1, "count") - a3}];
  [a1 enumerateObjectsAtIndexes:v8 options:0 usingBlock:v7];
}

- (void)fc_enumerateSideBySideWithArray:()FCAdditions reverse:block:
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    if (v8)
    {
      if (a4)
      {
        v10 = [a1 reverseObjectEnumerator];
        [v8 reverseObjectEnumerator];
      }

      else
      {
        v10 = [a1 objectEnumerator];
        [v8 objectEnumerator];
      }
      v11 = ;
      v12 = [v10 nextObject];
      v13 = [v11 nextObject];
      if (v12 | v13)
      {
        v14 = v13;
        while (1)
        {
          buf[0] = 0;
          v9[2](v9, v12, v14, buf);
          if (buf[0] == 1)
          {
            break;
          }

          v15 = [v10 nextObject];

          v16 = [v11 nextObject];

          v14 = v16;
          v12 = v15;
          if (!(v15 | v16))
          {
            goto LABEL_14;
          }
        }
      }

LABEL_14:

      goto LABEL_15;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "block != nil"];
    *buf = 136315906;
    v19 = "[NSArray(FCAdditions) fc_enumerateSideBySideWithArray:reverse:block:]";
    v20 = 2080;
    v21 = "NSArray+FCAdditions.m";
    v22 = 1024;
    v23 = 59;
    v24 = 2114;
    v25 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
LABEL_15:
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)fc_randomlyMergeWithArray:()FCAdditions
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = [v4 arrayWithCapacity:{objc_msgSend(v5, "count") + objc_msgSend(a1, "count")}];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__NSArray_FCAdditions__fc_randomlyMergeWithArray___block_invoke;
  aBlock[3] = &unk_1E7C43A30;
  v18 = v6;
  v7 = v6;
  v8 = _Block_copy(aBlock);
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __50__NSArray_FCAdditions__fc_randomlyMergeWithArray___block_invoke_2;
  v15 = &unk_1E7C43A58;
  v16 = v8;
  v9 = v8;
  [a1 fc_enumerateSideBySideWithArray:v5 reverse:0 block:&v12];

  v10 = [v7 copy];

  return v10;
}

- (id)fc_dictionaryWithKeySelector:()FCAdditions
{
  v29 = *MEMORY[0x1E69E9840];
  if (a3)
  {
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
          v12 = ([v11 methodForSelector:a3])(v11, a3);
          if (v12)
          {
            [v5 setObject:v11 forKeyedSubscript:v12];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "keySelector != NULL"];
      *buf = 136315906;
      v22 = "[NSArray(FCAdditions) fc_dictionaryWithKeySelector:]";
      v23 = 2080;
      v24 = "NSArray+FCAdditions.m";
      v25 = 1024;
      v26 = 109;
      v27 = 2114;
      v28 = v15;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v5 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)fc_dictionaryWithKeyBlock:()FCAdditions valueBlock:
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "keyBlock"];
    *buf = 136315906;
    v29 = "[NSArray(FCAdditions) fc_dictionaryWithKeyBlock:valueBlock:]";
    v30 = 2080;
    v31 = "NSArray+FCAdditions.m";
    v32 = 1024;
    v33 = 134;
    v34 = 2114;
    v35 = v20;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "valueBlock"];
    *buf = 136315906;
    v29 = "[NSArray(FCAdditions) fc_dictionaryWithKeyBlock:valueBlock:]";
    v30 = 2080;
    v31 = "NSArray+FCAdditions.m";
    v32 = 1024;
    v33 = 135;
    v34 = 2114;
    v35 = v21;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v22 = [MEMORY[0x1E695DF90] dictionary];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = a1;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = v6[2](v6, v13);
        v15 = v7[2](v7, v13);
        v16 = v15;
        if (v14)
        {
          v17 = v15 == 0;
        }

        else
        {
          v17 = 1;
        }

        if (!v17)
        {
          [v22 setObject:v15 forKeyedSubscript:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)fc_dictionaryWithKeySelector:()FCAdditions valueSelector:
{
  v35 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "keySelector != NULL"];
      *buf = 136315906;
      v28 = "[NSArray(FCAdditions) fc_dictionaryWithKeySelector:valueSelector:]";
      v29 = 2080;
      v30 = "NSArray+FCAdditions.m";
      v31 = 1024;
      v32 = 155;
      v33 = 2114;
      v34 = v20;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      if (!a4)
      {
LABEL_18:
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "valueSelector != NULL"];
          *buf = 136315906;
          v28 = "[NSArray(FCAdditions) fc_dictionaryWithKeySelector:valueSelector:]";
          v29 = 2080;
          v30 = "NSArray+FCAdditions.m";
          v31 = 1024;
          v32 = 156;
          v33 = 2114;
          v34 = v21;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }
      }
    }

    else if (!a4)
    {
      goto LABEL_18;
    }

    v7 = 0;
    goto LABEL_21;
  }

  if (!a4)
  {
    goto LABEL_18;
  }

  v7 = [MEMORY[0x1E695DF90] dictionary];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = a1;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = ([v13 methodForSelector:a3])(v13, a3);
        v15 = ([v13 methodForSelector:a4])(v13, a4);
        v16 = v15;
        if (v14)
        {
          v17 = v15 == 0;
        }

        else
        {
          v17 = 1;
        }

        if (!v17)
        {
          [v7 setObject:v15 forKeyedSubscript:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

LABEL_21:
  v18 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)fc_dictionaryWithKeyBlock:()FCAdditions
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "block"];
    *buf = 136315906;
    v22 = "[NSArray(FCAdditions) fc_dictionaryWithKeyBlock:]";
    v23 = 2080;
    v24 = "NSArray+FCAdditions.m";
    v25 = 1024;
    v26 = 184;
    v27 = 2114;
    v28 = v15;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

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
        if (v12)
        {
          [v5 setObject:v11 forKeyedSubscript:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)fc_dictionaryWithValueBlock:()FCAdditions
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "block"];
    *buf = 136315906;
    v22 = "[NSArray(FCAdditions) fc_dictionaryWithValueBlock:]";
    v23 = 2080;
    v24 = "NSArray+FCAdditions.m";
    v25 = 1024;
    v26 = 203;
    v27 = 2114;
    v28 = v15;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

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
        if (v12)
        {
          [v5 setObject:v12 forKeyedSubscript:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)fc_dictionaryOfSortedObjectsWithKeyBlock:()FCAdditions
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "keyBlock != nil"];
    *buf = 136315906;
    v10 = "[NSArray(FCAdditions) fc_dictionaryOfSortedObjectsWithKeyBlock:]";
    v11 = 2080;
    v12 = "NSArray+FCAdditions.m";
    v13 = 1024;
    v14 = 223;
    v15 = 2114;
    v16 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [a1 fc_dictionaryOfTransformedSortedObjectsWithKeyBlock:v4 valueBlock:&__block_literal_global_125];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)fc_dictionaryOfTransformedSortedObjectsWithKeyBlock:()FCAdditions valueBlock:
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "keyBlock != nil"];
    *buf = 136315906;
    v29 = "[NSArray(FCAdditions) fc_dictionaryOfTransformedSortedObjectsWithKeyBlock:valueBlock:]";
    v30 = 2080;
    v31 = "NSArray+FCAdditions.m";
    v32 = 1024;
    v33 = 233;
    v34 = 2114;
    v35 = v19;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v22 = v7;
  if (!v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "valueBlock != nil"];
    *buf = 136315906;
    v29 = "[NSArray(FCAdditions) fc_dictionaryOfTransformedSortedObjectsWithKeyBlock:valueBlock:]";
    v30 = 2080;
    v31 = "NSArray+FCAdditions.m";
    v32 = 1024;
    v33 = 234;
    v34 = 2114;
    v35 = v20;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v8 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = a1;
  v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = v6[2](v6, v13);
        if (v14)
        {
          v15 = [v8 objectForKeyedSubscript:v14];
          if (!v15)
          {
            v15 = objc_opt_new();
            [v8 setObject:v15 forKeyedSubscript:v14];
          }

          v16 = v22[2](v22, v13);
          [v15 addObject:v16];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)fc_firstObjectPassingTest:()FCAdditions
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

- (id)fc_firstObjectFromIndex:()FCAdditions passingTest:
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "testBlock"];
    *buf = 136315906;
    *&buf[4] = "[NSArray(FCAdditions) fc_firstObjectFromIndex:passingTest:]";
    *&buf[12] = 2080;
    *&buf[14] = "NSArray+FCAdditions.m";
    *&buf[22] = 1024;
    LODWORD(v16) = 279;
    WORD2(v16) = 2114;
    *(&v16 + 6) = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&v16 = __Block_byref_object_copy__59;
  *(&v16 + 1) = __Block_byref_object_dispose__59;
  v17 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__NSArray_FCAdditions__fc_firstObjectFromIndex_passingTest___block_invoke;
  v12[3] = &unk_1E7C43990;
  v7 = v6;
  v13 = v7;
  v14 = buf;
  [a1 fc_enumerateObjectsFromIndex:a3 usingBlock:v12];
  v8 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)fc_firstObjectWithValue:()FCAdditions forKey:
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__NSArray_FCAdditions__fc_firstObjectWithValue_forKey___block_invoke;
  v12[3] = &unk_1E7C43A80;
  v13 = v7;
  v14 = v6;
  v8 = v6;
  v9 = v7;
  v10 = [a1 fc_firstObjectPassingTest:v12];

  return v10;
}

- (id)fc_firstObjectOfClass:()FCAdditions
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__NSArray_FCAdditions__fc_firstObjectOfClass___block_invoke;
  v5[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
  v5[4] = a3;
  v3 = [a1 fc_firstObjectPassingTest:v5];

  return v3;
}

- (id)fc_lastObjectPassingTest:()FCAdditions
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = a1;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (v4[2](v4, v11))
        {
          v12 = v11;

          v8 = v12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)fc_randomObject
{
  v2 = [a1 count];
  if (v2)
  {
    v2 = [a1 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(a1, "count"))}];
  }

  return v2;
}

- (BOOL)fc_containsObjectPassingTest:()FCAdditions
{
  v1 = [a1 fc_firstObjectPassingTest:?];
  v2 = v1 != 0;

  return v2;
}

- (uint64_t)fc_containsObjectsAtFront:()FCAdditions
{
  v4 = a3;
  v5 = [a1 count];
  if (v5 >= [v4 count])
  {
    v7 = [a1 fc_safeSubarrayWithCountFromFront:{objc_msgSend(v4, "count")}];
    v6 = [v7 isEqualToArray:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)fc_containsObjectsAtBack:()FCAdditions
{
  v4 = a3;
  v5 = [a1 count];
  if (v5 >= [v4 count])
  {
    v7 = [a1 fc_safeSubarrayWithCountFromBack:{objc_msgSend(v4, "count")}];
    v6 = [v7 isEqualToArray:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)fc_containsObjectsWithValue:()FCAdditions forKey:
{
  v1 = [a1 fc_firstObjectWithValue:? forKey:?];
  v2 = v1 != 0;

  return v2;
}

- (uint64_t)fc_allObjectsPassTest:()FCAdditions
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__NSArray_FCAdditions__fc_allObjectsPassTest___block_invoke;
  v7[3] = &unk_1E7C40740;
  v8 = v4;
  v5 = v4;
  LODWORD(a1) = [a1 fc_containsObjectPassingTest:v7];

  return a1 ^ 1;
}

- (id)fc_arrayByTransformingWithBlockWithIndex:()FCAdditions
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__NSArray_FCAdditions__fc_arrayByTransformingWithBlockWithIndex___block_invoke;
  v11[3] = &unk_1E7C43AC8;
  v13 = v4;
  v6 = v5;
  v12 = v6;
  v7 = v4;
  [a1 enumerateObjectsUsingBlock:v11];
  v8 = v12;
  v9 = v6;

  return v6;
}

- (id)fc_objectsOfMaxValueWithValueBlock:()FCAdditions comparator:
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E695DEC8];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__NSArray_FCAdditions__fc_objectsOfMaxValueWithValueBlock_comparator___block_invoke;
  v13[3] = &unk_1E7C43AF0;
  v13[4] = a1;
  v14 = v6;
  v15 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [v8 fc_array:v13];

  return v11;
}

- (id)fc_objectsOfMinValueWithValueBlock:()FCAdditions comparator:
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E695DEC8];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__NSArray_FCAdditions__fc_objectsOfMinValueWithValueBlock_comparator___block_invoke;
  v13[3] = &unk_1E7C43AF0;
  v13[4] = a1;
  v14 = v6;
  v15 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [v8 fc_array:v13];

  return v11;
}

- (id)fc_arrayByTransformingWithBlock:()FCAdditions
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__NSArray_FCAdditions__fc_arrayByTransformingWithBlock___block_invoke;
  v8[3] = &unk_1E7C43B18;
  v9 = v4;
  v5 = v4;
  v6 = [a1 fc_arrayByTransformingWithBlockWithIndex:v8];

  return v6;
}

- (id)fc_setByTransformingWithBlock:()FCAdditions
{
  v4 = a3;
  v5 = objc_opt_new();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__NSArray_FCAdditions__fc_setByTransformingWithBlock___block_invoke;
  v11[3] = &unk_1E7C43AC8;
  v13 = v4;
  v6 = v5;
  v12 = v6;
  v7 = v4;
  [a1 enumerateObjectsUsingBlock:v11];
  v8 = v12;
  v9 = v6;

  return v6;
}

- (id)fc_setOfObjectsPassingTest:()FCAdditions
{
  v4 = a3;
  v5 = objc_opt_new();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__NSArray_FCAdditions__fc_setOfObjectsPassingTest___block_invoke;
  v11[3] = &unk_1E7C43AC8;
  v13 = v4;
  v6 = v5;
  v12 = v6;
  v7 = v4;
  [a1 enumerateObjectsUsingBlock:v11];
  v8 = v12;
  v9 = v6;

  return v6;
}

- (id)fc_orderedSetByTransformingWithBlock:()FCAdditions
{
  v4 = a3;
  v5 = objc_opt_new();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__NSArray_FCAdditions__fc_orderedSetByTransformingWithBlock___block_invoke;
  v11[3] = &unk_1E7C43AC8;
  v13 = v4;
  v6 = v5;
  v12 = v6;
  v7 = v4;
  [a1 enumerateObjectsUsingBlock:v11];
  v8 = v12;
  v9 = v6;

  return v6;
}

- (id)fc_arrayOfObjectsPassingTest:()FCAdditions
{
  v4 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__NSArray_FCAdditions__fc_arrayOfObjectsPassingTest___block_invoke;
  v11[3] = &unk_1E7C43B40;
  v12 = v4;
  v5 = v4;
  v6 = [a1 indexesOfObjectsPassingTest:v11];
  v7 = [v6 count];
  if (v7 == [a1 count])
  {
    v8 = [a1 copy];
  }

  else
  {
    v8 = [a1 objectsAtIndexes:v6];
  }

  v9 = v8;

  return v9;
}

- (id)fc_arrayOfObjectsFailingTest:()FCAdditions
{
  v4 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__NSArray_FCAdditions__fc_arrayOfObjectsFailingTest___block_invoke;
  v11[3] = &unk_1E7C43B40;
  v12 = v4;
  v5 = v4;
  v6 = [a1 indexesOfObjectsPassingTest:v11];
  v7 = [v6 count];
  if (v7 == [a1 count])
  {
    v8 = [a1 copy];
  }

  else
  {
    v8 = [a1 objectsAtIndexes:v6];
  }

  v9 = v8;

  return v9;
}

- (uint64_t)fc_countOfObjectsPassingTest:()FCAdditions
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
    v8 = 0;
    v9 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v8 += v4[2](v4, *(*(&v13 + 1) + 8 * i));
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)fc_arrayByRemovingObject:()FCAdditions
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = [v4 arrayWithArray:a1];
  [v6 removeObject:v5];

  return v6;
}

- (id)fc_arrayByRemovingObjectIdenticalTo:()FCAdditions
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = [v4 arrayWithArray:a1];
  [v6 removeObjectIdenticalTo:v5];

  return v6;
}

- (id)fc_arrayByRemovingObjectsInArray:()FCAdditions
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = [v4 arrayWithArray:a1];
  [v6 removeObjectsInArray:v5];

  return v6;
}

- (id)fc_arrayByRemovingKeysInDictionary:()FCAdditions
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__NSArray_FCAdditions__fc_arrayByRemovingKeysInDictionary___block_invoke;
  v8[3] = &unk_1E7C3F858;
  v9 = v4;
  v5 = v4;
  v6 = [a1 fc_arrayOfObjectsPassingTest:v8];

  return v6;
}

- (id)fc_arrayByReplacingObjectIdenticalTo:()FCAdditions withObject:
{
  v6 = a4;
  v7 = MEMORY[0x1E695DF70];
  v8 = a3;
  v9 = [v7 arrayWithArray:a1];
  v10 = [a1 indexOfObjectIdenticalTo:v8];

  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v6)
    {
      [v9 replaceObjectAtIndex:v10 withObject:v6];
    }

    else
    {
      [v9 removeObjectAtIndex:v10];
    }
  }

  return v9;
}

- (id)fc_arrayByReplacingObjectAtIndex:()FCAdditions withObject:
{
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] arrayWithArray:a1];
  v8 = v7;
  if (a3 != 0x7FFFFFFFFFFFFFFFLL && v6)
  {
    [v7 replaceObjectAtIndex:a3 withObject:v6];
  }

  return v8;
}

- (id)fc_arrayByRemovingFirstObject
{
  if ([a1 count])
  {
    v2 = [a1 fc_arrayByRemovingObjectsInRange:{0, 1}];
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

- (id)fc_arrayByRemovingObjectsInRange:()FCAdditions
{
  v6 = [MEMORY[0x1E695DF70] arrayWithArray:a1];
  [v6 removeObjectsInRange:{a3, a4}];

  return v6;
}

- (id)fc_arrayByRemovingObjectsAtIndexes:()FCAdditions
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = [v4 arrayWithArray:a1];
  [v6 removeObjectsAtIndexes:v5];

  return v6;
}

- (id)fc_arrayByRemovingObjectsPassingTest:()FCAdditions
{
  v4 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__NSArray_FCAdditions__fc_arrayByRemovingObjectsPassingTest___block_invoke;
  v9[3] = &unk_1E7C43B40;
  v5 = v4;
  v10 = v5;
  v6 = [a1 indexesOfObjectsPassingTest:v9];
  if ([v6 count])
  {
    v7 = [MEMORY[0x1E695DF70] arrayWithArray:a1];
    [v7 removeObjectsAtIndexes:v6];
  }

  else
  {
    v7 = a1;
  }

  return v7;
}

- (id)fc_arrayByReplacingObjectsInRange:()FCAdditions withObject:
{
  v14[1] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E695DF70];
  v9 = a5;
  v10 = [v8 arrayWithArray:a1];
  v14[0] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];

  [v10 replaceObjectsInRange:a3 withObjectsFromArray:{a4, v11}];
  v12 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)fc_arraysByExcisingRange:()FCAdditions
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3 + a4;
  v7 = [a1 count];
  if (v7 < v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "maxRange <= count"];
    *buf = 136315906;
    v16 = "[NSArray(FCAdditions) fc_arraysByExcisingRange:]";
    v17 = 2080;
    v18 = "NSArray+FCAdditions.m";
    v19 = 1024;
    v20 = 673;
    v21 = 2114;
    v22 = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v8 = [a1 subarrayWithRange:{0, a3}];
  v14[0] = v8;
  if (v7 == v6)
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v9 = [a1 subarrayWithRange:{v6, v7 - v6}];
  }

  v14[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  if (v7 != v6)
  {
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)fc_arraysByPartitioningOnObjectsPassingTest:()FCAdditions
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "testBlock"];
    *buf = 136315906;
    v24 = "[NSArray(FCAdditions) fc_arraysByPartitioningOnObjectsPassingTest:]";
    v25 = 2080;
    v26 = "NSArray+FCAdditions.m";
    v27 = 1024;
    v28 = 683;
    v29 = 2114;
    v30 = v16;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = a1;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if (v4[2](v4, v12))
        {
          v21 = v12;
          v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
          [v5 addObject:v13];

          v9 = 0;
        }

        else
        {
          if (!v9)
          {
            v9 = objc_opt_new();
            [v5 addObject:v9];
          }

          [v9 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)fc_arraysByPartitioningWithBudget:()FCAdditions indicesOfOverBudgetObjects:appraiser:accumulator:comparator:
{
  v52 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  if (!v11 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "budget"];
    *buf = 136315906;
    *&buf[4] = "[NSArray(FCAdditions) fc_arraysByPartitioningWithBudget:indicesOfOverBudgetObjects:appraiser:accumulator:comparator:]";
    *&buf[12] = 2080;
    *&buf[14] = "NSArray+FCAdditions.m";
    *&buf[22] = 1024;
    LODWORD(v50) = 718;
    WORD2(v50) = 2114;
    *(&v50 + 6) = v30;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (!a4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "indicesOfOverBudgetObjectsOut"];
    *buf = 136315906;
    *&buf[4] = "[NSArray(FCAdditions) fc_arraysByPartitioningWithBudget:indicesOfOverBudgetObjects:appraiser:accumulator:comparator:]";
    *&buf[12] = 2080;
    *&buf[14] = "NSArray+FCAdditions.m";
    *&buf[22] = 1024;
    LODWORD(v50) = 719;
    WORD2(v50) = 2114;
    *(&v50 + 6) = v31;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (!v12 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "appraiser"];
    *buf = 136315906;
    *&buf[4] = "[NSArray(FCAdditions) fc_arraysByPartitioningWithBudget:indicesOfOverBudgetObjects:appraiser:accumulator:comparator:]";
    *&buf[12] = 2080;
    *&buf[14] = "NSArray+FCAdditions.m";
    *&buf[22] = 1024;
    LODWORD(v50) = 720;
    WORD2(v50) = 2114;
    *(&v50 + 6) = v32;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (!v13 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "accumulator"];
    *buf = 136315906;
    *&buf[4] = "[NSArray(FCAdditions) fc_arraysByPartitioningWithBudget:indicesOfOverBudgetObjects:appraiser:accumulator:comparator:]";
    *&buf[12] = 2080;
    *&buf[14] = "NSArray+FCAdditions.m";
    *&buf[22] = 1024;
    LODWORD(v50) = 721;
    WORD2(v50) = 2114;
    *(&v50 + 6) = v33;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (!v14 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "comparator"];
    *buf = 136315906;
    *&buf[4] = "[NSArray(FCAdditions) fc_arraysByPartitioningWithBudget:indicesOfOverBudgetObjects:appraiser:accumulator:comparator:]";
    *&buf[12] = 2080;
    *&buf[14] = "NSArray+FCAdditions.m";
    *&buf[22] = 1024;
    LODWORD(v50) = 722;
    WORD2(v50) = 2114;
    *(&v50 + 6) = v34;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v15 = objc_opt_new();
  v16 = objc_opt_new();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&v50 = __Block_byref_object_copy__59;
  *(&v50 + 1) = __Block_byref_object_dispose__59;
  v51 = 0;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x3032000000;
  v47[3] = __Block_byref_object_copy__59;
  v47[4] = __Block_byref_object_dispose__59;
  v48 = &unk_1F2E70758;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __118__NSArray_FCAdditions__fc_arraysByPartitioningWithBudget_indicesOfOverBudgetObjects_appraiser_accumulator_comparator___block_invoke;
  aBlock[3] = &unk_1E7C43B68;
  v17 = v14;
  v46 = v17;
  v18 = v11;
  v45 = v18;
  v19 = _Block_copy(aBlock);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __118__NSArray_FCAdditions__fc_arraysByPartitioningWithBudget_indicesOfOverBudgetObjects_appraiser_accumulator_comparator___block_invoke_2;
  v36[3] = &unk_1E7C43BB8;
  v20 = v12;
  v39 = v20;
  v21 = v19;
  v40 = v21;
  v22 = v15;
  v37 = v22;
  v23 = v16;
  v38 = v23;
  v42 = buf;
  v24 = v13;
  v41 = v24;
  v43 = v47;
  [a1 enumerateObjectsUsingBlock:v36];
  v25 = v22;
  *a4 = v22;
  v26 = v41;
  v27 = v23;

  _Block_object_dispose(v47, 8);
  _Block_object_dispose(buf, 8);

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

- (uint64_t)fc_indexOfFirstObjectWithValue:()FCAdditions forKey:
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__NSArray_FCAdditions__fc_indexOfFirstObjectWithValue_forKey___block_invoke;
  v12[3] = &unk_1E7C43BE0;
  v13 = v7;
  v14 = v6;
  v8 = v6;
  v9 = v7;
  v10 = [a1 indexOfObjectPassingTest:v12];

  return v10;
}

- (id)fc_indexesOfObjectsIdenticalTo:()FCAdditions
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AC70] hashTableWithOptions:512];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 addObject:*(*(&v17 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __55__NSArray_FCAdditions__fc_indexesOfObjectsIdenticalTo___block_invoke;
  v15[3] = &unk_1E7C43C08;
  v16 = v5;
  v11 = v5;
  v12 = [a1 indexesOfObjectsPassingTest:v15];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)fc_indexesOfObjectsPassingTest:()FCAdditions
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__NSArray_FCAdditions__fc_indexesOfObjectsPassingTest___block_invoke;
  v8[3] = &unk_1E7C43B40;
  v9 = v4;
  v5 = v4;
  v6 = [a1 indexesOfObjectsPassingTest:v8];

  return v6;
}

- (id)fc_arrayByCollectingObjectsWithBlock:()FCAdditions
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = a1;
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

        v11 = v4[2](v4, *(*(&v14 + 1) + 8 * i));
        [v5 addObjectsFromArray:{v11, v14}];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)fc_setByCollectingObjectsWithBlock:()FCAdditions
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "collectionBlock"];
    *buf = 136315906;
    v21 = "[NSArray(FCAdditions) fc_setByCollectingObjectsWithBlock:]";
    v22 = 2080;
    v23 = "NSArray+FCAdditions.m";
    v24 = 1024;
    v25 = 832;
    v26 = 2114;
    v27 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = objc_opt_new();
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

        v11 = v4[2](v4, *(*(&v15 + 1) + 8 * i));
        [v5 fc_safelyUnionSet:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)fc_arrayByAddingNonContainedObjectsFromArray:()FCAdditions
{
  v4 = a3;
  v5 = v4;
  if (v4 && (v6 = [v4 count]) != 0)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = [v5 objectAtIndex:v9];
      if (([a1 containsObject:v10] & 1) == 0)
      {
        if (!v8)
        {
          v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a1, "count") + v7}];
          [v8 addObjectsFromArray:a1];
        }

        [v8 addObject:v10];
      }

      ++v9;
      --v7;
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    a1 = v8;
  }

  v11 = a1;

  return a1;
}

- (id)fc_subarrayUpToCountInclusive:()FCAdditions
{
  if ([a1 count] <= a3)
  {
    v5 = [a1 copy];
  }

  else
  {
    v5 = [a1 subarrayWithRange:{0, a3}];
  }

  return v5;
}

- (uint64_t)fc_subarrayWithMaxCount:()FCAdditions
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

  return [a1 fc_subarrayUpToCountInclusive:v6];
}

- (id)fc_subarrayFromCount:()FCAdditions
{
  if ([a1 count] <= a3)
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v5 = [a1 subarrayWithRange:{a3, objc_msgSend(a1, "count") - a3}];
  }

  return v5;
}

- (id)fc_subarrayInOrder:()FCAdditions relativeToIndex:inclusive:
{
  if (a3 == 1)
  {
    v5 = [a1 fc_subarrayFromIndex:a4 inclusive:a5];
  }

  else if (a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [a1 fc_subarrayUpToIndex:a4 inclusive:a5];
  }

  return v5;
}

- (id)fc_subarrayInOrder:()FCAdditions relativeToIndex:withMaxCount:range:
{
  if (a3 == 1)
  {
    v6 = [a1 fc_subarrayFromIndex:a4 withMaxCount:a5 range:a6];
  }

  else if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [a1 fc_subarrayToIndex:a4 withMaxCount:a5 range:a6];
  }

  return v6;
}

- (id)fc_subarrayFromIndex:()FCAdditions withMaxCount:range:
{
  v24 = *MEMORY[0x1E69E9840];
  v9 = [a1 count];
  v10 = v9 - a3;
  if (v9 <= a3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "index < count"];
    *buf = 136315906;
    v17 = "[NSArray(FCAdditions) fc_subarrayFromIndex:withMaxCount:range:]";
    v18 = 2080;
    v19 = "NSArray+FCAdditions.m";
    v20 = 1024;
    v21 = 938;
    v22 = 2114;
    v23 = v15;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (v10 >= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = v10;
  }

  if (a5)
  {
    *a5 = a3;
    a5[1] = v11;
  }

  v12 = [a1 subarrayWithRange:{a3, v11}];
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)fc_subarrayToIndex:()FCAdditions withMaxCount:range:
{
  v23 = *MEMORY[0x1E69E9840];
  if ([a1 count] <= a3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "index < count"];
    *buf = 136315906;
    v16 = "[NSArray(FCAdditions) fc_subarrayToIndex:withMaxCount:range:]";
    v17 = 2080;
    v18 = "NSArray+FCAdditions.m";
    v19 = 1024;
    v20 = 953;
    v21 = 2114;
    v22 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (a3 + 1 >= a4)
  {
    v9 = a3 + 1 - a4;
  }

  else
  {
    v9 = 0;
  }

  v10 = a3 - v9 + 1;
  if (a5)
  {
    *a5 = v9;
    a5[1] = v10;
  }

  v11 = [a1 subarrayWithRange:{v9, v10}];
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)fc_arrayByMergingAdjacentObjectsWithMergePolicy:()FCAdditions mergeBlock:
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "policy"];
    *buf = 136315906;
    *&buf[4] = "[NSArray(FCAdditions) fc_arrayByMergingAdjacentObjectsWithMergePolicy:mergeBlock:]";
    *&buf[12] = 2080;
    *&buf[14] = "NSArray+FCAdditions.m";
    *&buf[22] = 1024;
    LODWORD(v24) = 969;
    WORD2(v24) = 2114;
    *(&v24 + 6) = v16;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (!v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "mergeBlock"];
    *buf = 136315906;
    *&buf[4] = "[NSArray(FCAdditions) fc_arrayByMergingAdjacentObjectsWithMergePolicy:mergeBlock:]";
    *&buf[12] = 2080;
    *&buf[14] = "NSArray+FCAdditions.m";
    *&buf[22] = 1024;
    LODWORD(v24) = 970;
    WORD2(v24) = 2114;
    *(&v24 + 6) = v17;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v8 = objc_opt_new();
  v9 = [a1 count];
  if (v9)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&v24 = __Block_byref_object_copy__59;
    *(&v24 + 1) = __Block_byref_object_dispose__59;
    v25 = [a1 firstObject];
    v10 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{1, v9 - 1}];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __83__NSArray_FCAdditions__fc_arrayByMergingAdjacentObjectsWithMergePolicy_mergeBlock___block_invoke;
    v18[3] = &unk_1E7C43C30;
    v20 = v6;
    v22 = buf;
    v21 = v7;
    v11 = v8;
    v19 = v11;
    [a1 enumerateObjectsAtIndexes:v10 options:0 usingBlock:v18];

    v12 = *(*&buf[8] + 40);
    v13 = [v11 lastObject];
    LOBYTE(v12) = v12 == v13;

    if ((v12 & 1) == 0)
    {
      [v11 addObject:*(*&buf[8] + 40)];
    }

    _Block_object_dispose(buf, 8);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)fc_safeObjectAtIndex:()FCAdditions
{
  if ([a1 count] <= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [a1 objectAtIndex:a3];
  }

  return v5;
}

- (uint64_t)fc_safeSubarrayWithCountFromFront:()FCAdditions
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

  return [a1 subarrayWithRange:{0, v6}];
}

- (uint64_t)fc_safeSubarrayWithCountFromBack:()FCAdditions
{
  v5 = [a1 count];
  if (v5 < a3)
  {
    a3 = v5;
  }

  v6 = [a1 count] - a3;

  return [a1 subarrayWithRange:{v6, a3}];
}

- (void)fc_subarrayWithCount:()FCAdditions result:
{
  v11 = a4;
  if ([a1 count])
  {
    v6 = [a1 count];
    if (v6 < a3)
    {
      a3 = v6;
    }

    if (a3 >= [a1 count])
    {
      v7 = 0;
      v8 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = [a1 count] - a3;
      v8 = a3;
    }

    v9 = [a1 subarrayWithRange:{0, a3}];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11[2](v11, v9, MEMORY[0x1E695E0F0]);
    }

    else
    {
      v10 = [a1 subarrayWithRange:{v8, v7}];
      (v11)[2](v11, v9, v10);
    }
  }

  else
  {
    v11[2](v11, MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F0]);
  }
}

- (id)fc_subarrayWithPercentFromBeginning:()FCAdditions
{
  v3 = fmin(a2, 1.0);
  if (v3 >= 0.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = [a1 count];
  if (v4 == 0.0 || v5 == 0)
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v8 = round(v4 * [a1 count]);
    v9 = [a1 count];
    v10 = v9;
    if (v8 < v9)
    {
      v10 = v8;
    }

    v7 = [a1 subarrayWithRange:{0, v10}];
  }

  return v7;
}

- (id)fc_subarrayWithPercentToEnd:()FCAdditions
{
  v3 = fmin(a2, 1.0);
  if (v3 >= 0.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = [a1 count];
  if (v4 == 0.0 || v5 == 0)
  {
    goto LABEL_12;
  }

  v7 = round(v4 * [a1 count]);
  v8 = [a1 count];
  if (v7 < v8)
  {
    v8 = v7;
  }

  v9 = v8;
  if ([a1 count] <= v8)
  {
LABEL_12:
    v10 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v10 = [a1 subarrayWithRange:{v9, objc_msgSend(a1, "count") - v9}];
  }

  return v10;
}

- (void)fc_visitSubarraysWithMaxCount:()FCAdditions block:
{
  v12 = a4;
  if (a3)
  {
    v6 = [a1 count];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      do
      {
        v9 = objc_autoreleasePoolPush();
        if (v7 - v8 >= a3)
        {
          v10 = a3;
        }

        else
        {
          v10 = v7 - v8;
        }

        if (v12)
        {
          v11 = [a1 subarrayWithRange:{v8, v10}];
          v12[2](v12, v11);
        }

        v8 += v10;
        objc_autoreleasePoolPop(v9);
      }

      while (v8 < v7);
    }
  }
}

- (id)fc_reduceArrayWithInitial:()FCAdditions block:
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = a1;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  v11 = v8;
  if (v10)
  {
    v12 = v10;
    v13 = *v19;
    v11 = v8;
    do
    {
      v14 = 0;
      v15 = v11;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v11 = v7[2](v7, v15, *(*(&v18 + 1) + 8 * v14));

        ++v14;
        v15 = v11;
      }

      while (v12 != v14);
      v12 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v11;
}

- (double)fc_reduceArrayWithDouble:()FCAdditions block:
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = a1;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        a2 = v6[2](v6, *(*(&v14 + 1) + 8 * v11++), a2);
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
  return a2;
}

+ (id)fc_arrayByAddingObjectsFromArray:()FCAdditions toArray:
{
  v5 = MEMORY[0x1E695DF70];
  v6 = a4;
  v7 = a3;
  v8 = [v5 array];
  [v8 addObjectsFromArray:v6];

  [v8 addObjectsFromArray:v7];

  return v8;
}

+ (id)fc_arrayByAddingObjectsFromArray:()FCAdditions toArray:inRelativeOrder:
{
  v8 = a3;
  v9 = a4;
  if (!a5)
  {
    v10 = a1;
    v11 = v9;
    v12 = v8;
    goto LABEL_5;
  }

  if (a5 == 1)
  {
    v10 = a1;
    v11 = v8;
    v12 = v9;
LABEL_5:
    v13 = [v10 fc_arrayByAddingObjectsFromArray:v11 toArray:v12];
    goto LABEL_7;
  }

  v13 = 0;
LABEL_7:

  return v13;
}

+ (id)fc_arrayByAddingUniqueObjectsFromArray:()FCAdditions toArray:
{
  v5 = MEMORY[0x1E695DFA8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 set];
  [v8 addObjectsFromArray:v6];

  [v8 addObjectsFromArray:v7];
  v9 = [v8 allObjects];

  return v9;
}

+ (void)fc_array:()FCAdditions
{
  v3 = a3;
  v4 = objc_opt_new();
  if (v3)
  {
    v3[2](v3, v4);
  }

  v5 = [v4 copy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = v7;

  return v7;
}

+ (id)fc_generatedArrayWithCount:()FCAdditions generator:
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "generator"];
    *buf = 136315906;
    v13 = "+[NSArray(FCAdditions) fc_generatedArrayWithCount:generator:]";
    v14 = 2080;
    v15 = "NSArray+FCAdditions.m";
    v16 = 1024;
    v17 = 1162;
    v18 = 2114;
    v19 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:a3];
  if (a3)
  {
    v7 = 0;
    do
    {
      v8 = v5[2](v5, v7);
      [v6 setObject:v8 atIndexedSubscript:v7];

      ++v7;
    }

    while (a3 != v7);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)fc_arrayByReversingObjects
{
  v1 = [a1 reverseObjectEnumerator];
  v2 = [v1 allObjects];

  return v2;
}

- (uint64_t)fc_uniqueCount
{
  v1 = [MEMORY[0x1E695DFD8] setWithArray:a1];
  v2 = [v1 count];

  return v2;
}

- (uint64_t)fc_distanceFromArray:()FCAdditions
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = [v4 setWithArray:a1];
  v7 = [MEMORY[0x1E695DFD8] setWithArray:v5];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __45__NSArray_FCAdditions__fc_distanceFromArray___block_invoke;
  v15[3] = &unk_1E7C3F858;
  v16 = v7;
  v8 = v7;
  v9 = [a1 fc_countOfObjectsPassingTest:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __45__NSArray_FCAdditions__fc_distanceFromArray___block_invoke_2;
  v13[3] = &unk_1E7C3F858;
  v14 = v6;
  v10 = v6;
  v11 = [v5 fc_countOfObjectsPassingTest:v13];

  return v11 + v9;
}

- (id)fc_uniqueByValueBlock:()FCAdditions
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__NSArray_FCAdditions__fc_uniqueByValueBlock___block_invoke;
  v10[3] = &unk_1E7C43C58;
  v11 = v5;
  v12 = v4;
  v6 = v5;
  v7 = v4;
  v8 = [a1 fc_arrayOfObjectsPassingTest:v10];

  return v8;
}

+ (void)fc_walkArray:()FCAdditions andArray:withBlock:
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 count];
  if (v10 != [v8 count] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't walk side-by-side arrays with different counts"];
    v19 = 136315906;
    v20 = "+[NSArray(FCAdditions) fc_walkArray:andArray:withBlock:]";
    v21 = 2080;
    v22 = "NSArray+FCAdditions.m";
    v23 = 1024;
    v24 = 1215;
    v25 = 2114;
    v26 = v18;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v19, 0x26u);

    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else if (!v9)
  {
    goto LABEL_8;
  }

  v11 = [v7 count];
  if (v11 == [v8 count])
  {
    v12 = [v7 count];
    if (v12)
    {
      v13 = v12;
      for (i = 0; i != v13; ++i)
      {
        v15 = [v7 objectAtIndexedSubscript:i];
        v16 = [v8 objectAtIndexedSubscript:i];
        v9[2](v9, v15, v16, i);
      }
    }
  }

LABEL_8:

  v17 = *MEMORY[0x1E69E9840];
}

- (uint64_t)fc_expandIndex:()FCAdditions toIncludeAdjacentObjectsPassingTest:
{
  v6 = a4;
  if (v6)
  {
    v7 = 1;
    v8 = a3;
    do
    {
      v9 = v8;
      v10 = v7;
      if (!v8)
      {
        break;
      }

      --v8;
      v11 = [a1 objectAtIndexedSubscript:v9 - 1];
      v12 = v6[2](v6, v11);

      v7 = v10 + 1;
    }

    while ((v12 & 1) != 0);
    v13 = [a1 count];
    v14 = a3 + 1;
    do
    {
      if (v14 >= v13)
      {
        break;
      }

      v15 = [a1 objectAtIndexedSubscript:v14];
      v16 = v6[2](v6, v15);

      ++v10;
      ++v14;
    }

    while ((v16 & 1) != 0);
    a3 = v9;
  }

  return a3;
}

- (void)fc_splitArrayWithTest:()FCAdditions result:
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__NSArray_FCAdditions__fc_splitArrayWithTest_result___block_invoke;
  v13[3] = &unk_1E7C43C80;
  v15 = v8;
  v16 = v6;
  v14 = v9;
  v10 = v8;
  v11 = v9;
  v12 = v6;
  [a1 enumerateObjectsUsingBlock:v13];
  v7[2](v7, v10, v11);
}

- (void)fc_enumerateIslandsOfCommonValuesForKeyBlock:()FCAdditions withBlock:
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "keyBlock"];
    *buf = 136315906;
    v25 = "[NSArray(FCAdditions) fc_enumerateIslandsOfCommonValuesForKeyBlock:withBlock:]";
    v26 = 2080;
    v27 = "NSArray+FCAdditions.m";
    v28 = 1024;
    v29 = 1280;
    v30 = 2114;
    v31 = v19;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "block"];
    *buf = 136315906;
    v25 = "[NSArray(FCAdditions) fc_enumerateIslandsOfCommonValuesForKeyBlock:withBlock:]";
    v26 = 2080;
    v27 = "NSArray+FCAdditions.m";
    v28 = 1024;
    v29 = 1281;
    v30 = 2114;
    v31 = v20;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v8 = [a1 count];
  v9 = 0;
  do
  {
    if (v9 >= v8)
    {
      break;
    }

    v10 = [a1 objectAtIndexedSubscript:v9];
    v11 = v6[2](v6, v10);

    v12 = v9 + 1;
    if (v8 <= v9 + 1)
    {
      v15 = v9;
    }

    else
    {
      v13 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v9 + 1, v8 - (v9 + 1)}];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __79__NSArray_FCAdditions__fc_enumerateIslandsOfCommonValuesForKeyBlock_withBlock___block_invoke;
      v21[3] = &unk_1E7C43CA8;
      v23 = v6;
      v22 = v11;
      v14 = [a1 indexOfObjectAtIndexes:v13 options:0 passingTest:v21];

      v12 = v14 == 0x7FFFFFFFFFFFFFFFLL ? v8 : v14;
      v15 = v12 - 1;
    }

    v16 = v15 - v9;
    v17 = [a1 subarrayWithRange:{v9, v15 - v9 + 1}];
    buf[0] = 0;
    v7[2](v7, v17, v11, v9, v16 + 1, buf);
    LODWORD(v16) = buf[0];

    v9 = v12;
  }

  while (v16 != 1);

  v18 = *MEMORY[0x1E69E9840];
}

- (id)fc_sortedArrayStartingWithElementsSatisfying:()FCAdditions sortedBy:
{
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = &__block_literal_global_54_0;
  }

  v6 = a4;
  v7 = _Block_copy(v5);
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &__block_literal_global_57_0;
  }

  v9 = _Block_copy(v8);

  v10 = MEMORY[0x1E695DEC8];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78__NSArray_FCAdditions__fc_sortedArrayStartingWithElementsSatisfying_sortedBy___block_invoke_3;
  v15[3] = &unk_1E7C43AF0;
  v15[4] = a1;
  v16 = v7;
  v17 = v9;
  v11 = v9;
  v12 = v7;
  v13 = [v10 fc_array:v15];

  return v13;
}

- (id)fc_rotateElementsFromTheIndexOfSelectedItem:()FCAdditions
{
  v21 = *MEMORY[0x1E69E9840];
  if ([a1 count] <= a3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"indexOfSelectedItem must be within range of array length"];
    v13 = 136315906;
    v14 = "[NSArray(FCAdditions) fc_rotateElementsFromTheIndexOfSelectedItem:]";
    v15 = 2080;
    v16 = "NSArray+FCAdditions.m";
    v17 = 1024;
    v18 = 1351;
    v19 = 2114;
    v20 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v13, 0x26u);
  }

  if ([a1 count] <= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E695DF70] array];
    if ([a1 count] > a3)
    {
      v6 = a3;
      do
      {
        v7 = [a1 objectAtIndexedSubscript:v6];
        [v5 addObject:v7];

        ++v6;
      }

      while (v6 < [a1 count]);
    }

    if (a3)
    {
      v8 = 0;
      do
      {
        v9 = [a1 objectAtIndexedSubscript:v8];
        [v5 addObject:v9];

        ++v8;
      }

      while (a3 != v8);
    }
  }

  v10 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)fc_isEqualToArray:()FCAdditions inRange:
{
  v8 = a3;
  v18 = a1;
  v9 = [a1 count];
  v10 = [v8 count];
  v11 = a4 + a5;
  if (a4 >= a4 + a5)
  {
    v13 = 1;
  }

  else
  {
    v12 = v10;
    v13 = 0;
    do
    {
      if (a4 >= v9)
      {
        v14 = 0;
      }

      else
      {
        v14 = [v18 objectAtIndexedSubscript:a4];
      }

      if (a4 >= v12)
      {
        v15 = 0;
      }

      else
      {
        v15 = [v8 objectAtIndexedSubscript:a4];
      }

      v16 = [MEMORY[0x1E69E58C0] nf_object:v14 isEqualToObject:v15];

      if ((v16 & 1) == 0)
      {
        break;
      }

      v13 = ++a4 >= v11;
      --a5;
    }

    while (a5);
  }

  return v13;
}

- (uint64_t)fc_isEqualToArray:()FCAdditions
{
  v4 = a3;
  v5 = [a1 count];
  if (v5 == [v4 count])
  {
    v6 = [a1 fc_isEqualToArray:v4 inRange:{0, v5}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (double)fc_euclideanDistanceToArray:()FCAdditions
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 count];
  if (v5 != [v4 count] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Lengths of vectors should be the same when computing euclidean distance."];
    v16 = 136315906;
    v17 = "[NSArray(FCAdditions) fc_euclideanDistanceToArray:]";
    v18 = 2080;
    v19 = "NSArray+FCAdditions.m";
    v20 = 1024;
    v21 = 1404;
    v22 = 2114;
    v23 = v15;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v16, 0x26u);
  }

  if ([a1 count])
  {
    v6 = 0;
    v7 = 0.0;
    do
    {
      v8 = [a1 objectAtIndexedSubscript:v6];
      [v8 doubleValue];
      v10 = v9;
      v11 = [v4 objectAtIndexedSubscript:v6];
      [v11 doubleValue];
      v7 = v7 + (v10 - v12) * (v10 - v12);

      ++v6;
    }

    while ([a1 count] > v6);
  }

  else
  {
    v7 = 0.0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return sqrt(v7);
}

- (double)fc_cosineDistanceToArray:()FCAdditions
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 count];
  if (v5 != [v4 count] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Lengths of vectors should be the same when computing cosine distance."];
    v21 = 136315906;
    v22 = "[NSArray(FCAdditions) fc_cosineDistanceToArray:]";
    v23 = 2080;
    v24 = "NSArray+FCAdditions.m";
    v25 = 1024;
    v26 = 1415;
    v27 = 2114;
    v28 = v20;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v21, 0x26u);
  }

  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  if ([a1 count])
  {
    v9 = 0;
    do
    {
      v10 = [a1 objectAtIndexedSubscript:v9];
      [v10 doubleValue];
      v12 = v11;

      v13 = [v4 objectAtIndexedSubscript:v9];
      [v13 doubleValue];
      v15 = v14;

      v8 = v8 + v12 * v15;
      v7 = v7 + v12 * v12;
      ++v9;
      v6 = v6 + v15 * v15;
    }

    while ([a1 count] > v9);
  }

  v16 = sqrt(v6) * sqrt(v7);
  if (v16 <= 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v8 / v16;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

@end