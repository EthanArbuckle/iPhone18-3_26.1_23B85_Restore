@interface NSIndexSet(EDServerMessagePersistence)
- (__CFString)_uidQueryExpressionForRanges:()EDServerMessagePersistence andSingleUIDs:withTableName:;
- (id)_uidRangesAndSingleUIDs:()EDServerMessagePersistence;
- (id)ed_logDescription;
- (id)ed_nextRangesWithRangeCountLimit:()EDServerMessagePersistence reverseEnumeration:;
- (id)ed_uidQueryExpressionWithTableName:()EDServerMessagePersistence;
- (void)_addUIDsFromRange:()EDServerMessagePersistence toArray:;
- (void)ed_enumerateUIDsWithLimit:()EDServerMessagePersistence reverseEnumeration:queryRangeCountLimit:batchLimit:usingBlock:;
@end

@implementation NSIndexSet(EDServerMessagePersistence)

- (void)ed_enumerateUIDsWithLimit:()EDServerMessagePersistence reverseEnumeration:queryRangeCountLimit:batchLimit:usingBlock:
{
  v48 = *MEMORY[0x1E69E9840];
  v11 = a7;
  if (a3)
  {
    v12 = a3;
  }

  else
  {
    v12 = -1;
  }

  v34 = v12;
  v35 = v11;
  v13 = +[EDServerMessagePersistence log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134219264;
    selfCopy = self;
    v38 = 2048;
    v39 = [self count];
    v40 = 2048;
    v41 = v34;
    v42 = 1024;
    v43 = a4;
    v44 = 2048;
    v45 = a5;
    v46 = 2048;
    v47 = a6;
    _os_log_debug_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEBUG, "%p: fetching %llu UIDs, limit %llu, reverse %{BOOL}d, range count limit %llu, batch limit %llu.", buf, 0x3Au);
  }

  selfCopy2 = self;

  v14 = [self mutableCopy];
  v15 = 0;
  *&v16 = 134218496;
  v31 = v16;
  while ([v14 count] && v34 > v15)
  {
    v17 = objc_autoreleasePoolPush();
    if (v34 - v15 >= a6)
    {
      v18 = a6;
    }

    else
    {
      v18 = v34 - v15;
    }

    v19 = [v14 ed_nextRangesWithRangeCountLimit:a5 reverseEnumeration:a4];
    v20 = +[EDServerMessagePersistence log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      ed_logDescription = [v19 ed_logDescription];
      *buf = 134218498;
      selfCopy = selfCopy2;
      v38 = 2114;
      v39 = ed_logDescription;
      v40 = 2048;
      v41 = v18;
      _os_log_debug_impl(&dword_1C61EF000, v20, OS_LOG_TYPE_DEBUG, "%p: fetching UIDs {%{public}@} with limit %llu", buf, 0x20u);
    }

    v21 = (v35)[2](v35, v19, v18);
    v22 = +[EDServerMessagePersistence log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      ed_logDescription2 = [v21 ed_logDescription];
      *buf = 134218242;
      selfCopy = selfCopy2;
      v38 = 2114;
      v39 = ed_logDescription2;
      _os_log_debug_impl(&dword_1C61EF000, v22, OS_LOG_TYPE_DEBUG, "%p: got UIDs {%{public}@}", buf, 0x16u);
    }

    v23 = [v21 count];
    v24 = v23;
    if (v23 >= v18)
    {
      if (v23 > v18)
      {
        v25 = +[EDServerMessagePersistence log];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = v31;
          selfCopy = selfCopy2;
          v38 = 2048;
          v39 = v24;
          v40 = 2048;
          v41 = v18;
          _os_log_error_impl(&dword_1C61EF000, v25, OS_LOG_TYPE_ERROR, "%p: got more UIDs in batch (%lu) than allowed (%lu)", buf, 0x20u);
        }
      }

      if (a4)
      {
        firstIndex = [v21 firstIndex];
        [v14 removeIndexesInRange:{firstIndex, objc_msgSend(v14, "lastIndex") - firstIndex + 1}];
      }

      else
      {
        [v14 removeIndexesInRange:{0, objc_msgSend(v21, "lastIndex") + 1}];
      }
    }

    else if ([v14 isEqualToIndexSet:v19])
    {
      [v14 removeAllIndexes];
    }

    else
    {
      [v14 removeIndexes:v19];
    }

    v15 += v24;
    objc_autoreleasePoolPop(v17);
  }

  v29 = +[EDServerMessagePersistence log];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    [NSIndexSet(EDServerMessagePersistence) ed_enumerateUIDsWithLimit:selfCopy2 reverseEnumeration:v29 queryRangeCountLimit:? batchLimit:? usingBlock:?];
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (id)ed_nextRangesWithRangeCountLimit:()EDServerMessagePersistence reverseEnumeration:
{
  if ([self count])
  {
    v7 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2020000000;
    v15[3] = 0;
    if (a4)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __94__NSIndexSet_EDServerMessagePersistence__ed_nextRangesWithRangeCountLimit_reverseEnumeration___block_invoke;
    v11[3] = &unk_1E8257BB8;
    v13 = v15;
    v14 = a3;
    indexSet = v7;
    v12 = indexSet;
    [self enumerateRangesWithOptions:v8 usingBlock:v11];

    _Block_object_dispose(v15, 8);
  }

  else
  {
    indexSet = [MEMORY[0x1E696AC90] indexSet];
  }

  return indexSet;
}

- (id)ed_uidQueryExpressionWithTableName:()EDServerMessagePersistence
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [self _uidRangesAndSingleUIDs:v5];
  if ([v6 count] >= 0x3DF)
  {
    v7 = [v6 sortedArrayUsingComparator:&__block_literal_global_596];

    [v7 ef_suffix:{objc_msgSend(v7, "count") - 990}];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v8 = v18 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v8);
          }

          rangeValue = [*(*(&v17 + 1) + 8 * i) rangeValue];
          [self _addUIDsFromRange:rangeValue toArray:{v13, v5}];
        }

        v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    v6 = [v7 ef_prefix:990];
  }

  v14 = [self _uidQueryExpressionForRanges:v6 andSingleUIDs:v5 withTableName:{v4, v17}];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_uidRangesAndSingleUIDs:()EDServerMessagePersistence
{
  v4 = a3;
  if ([self count])
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:10];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66__NSIndexSet_EDServerMessagePersistence___uidRangesAndSingleUIDs___block_invoke;
    v9[3] = &unk_1E8257C00;
    v9[4] = self;
    v10 = v4;
    v6 = v5;
    v11 = v6;
    [self enumerateRangesUsingBlock:v9];
    ef_notEmpty = [v6 ef_notEmpty];
  }

  else
  {
    ef_notEmpty = 0;
  }

  return ef_notEmpty;
}

- (void)_addUIDsFromRange:()EDServerMessagePersistence toArray:
{
  v8 = a5;
  if (a3 < a3 + a4)
  {
    do
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", a3];
      [v8 addObject:v7];

      ++a3;
      --a4;
    }

    while (a4);
  }
}

- (__CFString)_uidQueryExpressionForRanges:()EDServerMessagePersistence andSingleUIDs:withTableName:
{
  v23[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v9)
  {
    v11 = [v9 stringByAppendingString:@".remote_id"];
  }

  else
  {
    v11 = @"remote_id";
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __99__NSIndexSet_EDServerMessagePersistence___uidQueryExpressionForRanges_andSingleUIDs_withTableName___block_invoke;
  v21[3] = &unk_1E8257C28;
  v12 = v11;
  v22 = v12;
  v13 = [v7 ef_map:v21];
  if ([v8 count])
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = [v8 componentsJoinedByString:{@", "}];
    v16 = [v14 stringWithFormat:@"(%@ IN (%@))", v12, v15];

    if (v13)
    {
      v17 = [v13 arrayByAddingObject:v16];

      v13 = v17;
    }

    else
    {
      v23[0] = v16;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    }
  }

  if ([v13 count])
  {
    if ([v13 count] == 1)
    {
      [v13 firstObject];
    }

    else
    {
      [v13 componentsJoinedByString:@" OR "];
    }
    v18 = ;
  }

  else
  {
    v18 = @"0";
  }

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)ed_logDescription
{
  v2 = objc_autoreleasePoolPush();
  array = [MEMORY[0x1E695DF70] array];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__NSIndexSet_EDServerMessagePersistence__ed_logDescription__block_invoke;
  v7[3] = &unk_1E8257C50;
  v4 = array;
  v8 = v4;
  [self enumerateRangesWithOptions:0 usingBlock:v7];
  v5 = [v4 componentsJoinedByString:{@", "}];

  objc_autoreleasePoolPop(v2);

  return v5;
}

- (void)ed_enumerateUIDsWithLimit:()EDServerMessagePersistence reverseEnumeration:queryRangeCountLimit:batchLimit:usingBlock:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_debug_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_DEBUG, "%p: done.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end