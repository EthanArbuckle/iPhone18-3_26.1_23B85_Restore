@interface NSSet(FCAdditions)
+ (id)fc_set:()FCAdditions;
+ (id)fc_unionOfSetsInArray:()FCAdditions;
- (BOOL)fc_containsObjectPassingTest:()FCAdditions;
- (id)fc_arrayByTransformingWithBlock:()FCAdditions;
- (id)fc_arrayOfObjectsPassingTest:()FCAdditions;
- (id)fc_dictionaryOfSortedSetsWithKeyBlock:()FCAdditions;
- (id)fc_diffAgainstSet:()FCAdditions;
- (id)fc_firstObjectPassingTest:()FCAdditions;
- (id)fc_mutableSetByTransformingWithBlock:()FCAdditions;
- (id)fc_onlyObject;
- (id)fc_setByIntersectingSet:()FCAdditions;
- (id)fc_setByMinusingSet:()FCAdditions;
- (id)fc_setByRemovingObject:()FCAdditions;
- (id)fc_setByTransformingWithBlock:()FCAdditions;
- (id)fc_setByUnioningSet:()FCAdditions;
- (id)fc_setOfObjectsPassingTest:()FCAdditions;
- (uint64_t)fc_containsAnyObjectInArray:()FCAdditions;
- (uint64_t)fc_countOfObjectsIntersectingSet:()FCAdditions;
- (uint64_t)fc_countOfObjectsPassingTest:()FCAdditions;
@end

@implementation NSSet(FCAdditions)

+ (id)fc_set:()FCAdditions
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DFA8] set];
  if (v3)
  {
    v3[2](v3, v4);
  }

  if (v4)
  {
    v5 = [v4 copy];
  }

  else
  {
    v5 = [MEMORY[0x1E695DFD8] set];
  }

  v6 = v5;

  return v6;
}

- (id)fc_diffAgainstSet:()FCAdditions
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = a1;
    v6 = [v4 mutableCopy];
    [v6 minusSet:v5];
    v7 = [v5 mutableCopy];

    [v7 minusSet:v4];
    v14[0] = @"FCInsertedElementsKey";
    v8 = [v7 copy];
    v14[1] = @"FCDeletedElementsKey";
    v15[0] = v8;
    v9 = [v6 copy];
    v15[1] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "left != nil"];
      *buf = 136315906;
      v17 = "[NSSet(FCAdditions) fc_diffAgainstSet:]";
      v18 = 2080;
      v19 = "NSSet+FCAdditions.m";
      v20 = 1024;
      v21 = 30;
      v22 = 2114;
      v23 = v13;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
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

- (id)fc_onlyObject
{
  v16 = *MEMORY[0x1E69E9840];
  if ([a1 count] != 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a1, "count")}];
    v7 = [v5 initWithFormat:@"expected one element; got %@", v6];
    *buf = 136315906;
    v9 = "[NSSet(FCAdditions) fc_onlyObject]";
    v10 = 2080;
    v11 = "NSSet+FCAdditions.m";
    v12 = 1024;
    v13 = 66;
    v14 = 2114;
    v15 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v2 = [a1 anyObject];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (BOOL)fc_containsObjectPassingTest:()FCAdditions
{
  v1 = [a1 fc_firstObjectPassingTest:?];
  v2 = v1 != 0;

  return v2;
}

- (id)fc_setOfObjectsPassingTest:()FCAdditions
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__NSSet_FCAdditions__fc_setOfObjectsPassingTest___block_invoke;
  v8[3] = &unk_1E7C45598;
  v9 = v4;
  v5 = v4;
  v6 = [a1 objectsPassingTest:v8];

  return v6;
}

- (id)fc_arrayOfObjectsPassingTest:()FCAdditions
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "predicate"];
    *buf = 136315906;
    v21 = "[NSSet(FCAdditions) fc_arrayOfObjectsPassingTest:]";
    v22 = 2080;
    v23 = "NSSet+FCAdditions.m";
    v24 = 1024;
    v25 = 84;
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

        v11 = *(*(&v15 + 1) + 8 * i);
        if (v4[2](v4, v11))
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
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

- (id)fc_setByTransformingWithBlock:()FCAdditions
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "transformBlock"];
    *buf = 136315906;
    v10 = "[NSSet(FCAdditions) fc_setByTransformingWithBlock:]";
    v11 = 2080;
    v12 = "NSSet+FCAdditions.m";
    v13 = 1024;
    v14 = 115;
    v15 = 2114;
    v16 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [a1 fc_mutableSetByTransformingWithBlock:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)fc_mutableSetByTransformingWithBlock:()FCAdditions
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "transformBlock"];
    *buf = 136315906;
    v17 = "[NSSet(FCAdditions) fc_mutableSetByTransformingWithBlock:]";
    v18 = 2080;
    v19 = "NSSet+FCAdditions.m";
    v20 = 1024;
    v21 = 122;
    v22 = 2114;
    v23 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = objc_opt_new();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__NSSet_FCAdditions__fc_mutableSetByTransformingWithBlock___block_invoke;
  v13[3] = &unk_1E7C455C0;
  v15 = v4;
  v6 = v5;
  v14 = v6;
  v7 = v4;
  [a1 enumerateObjectsUsingBlock:v13];
  v8 = v14;
  v9 = v6;

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)fc_arrayByTransformingWithBlock:()FCAdditions
{
  v4 = a3;
  v5 = [a1 allObjects];
  v6 = [v5 fc_arrayByTransformingWithBlock:v4];

  return v6;
}

- (uint64_t)fc_containsAnyObjectInArray:()FCAdditions
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__NSSet_FCAdditions__fc_containsAnyObjectInArray___block_invoke;
  v7[3] = &unk_1E7C455E8;
  v7[4] = a1;
  v7[5] = &v8;
  [v4 enumerateObjectsUsingBlock:v7];
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)fc_dictionaryOfSortedSetsWithKeyBlock:()FCAdditions
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "block != nil"];
    *buf = 136315906;
    v23 = "[NSSet(FCAdditions) fc_dictionaryOfSortedSetsWithKeyBlock:]";
    v24 = 2080;
    v25 = "NSSet+FCAdditions.m";
    v26 = 1024;
    v27 = 154;
    v28 = 2114;
    v29 = v16;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = a1;
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

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = v4[2](v4, v11);
        if (v12)
        {
          v13 = [v5 objectForKeyedSubscript:v12];
          if (!v13)
          {
            v13 = objc_opt_new();
            [v5 setObject:v13 forKeyedSubscript:v12];
          }

          [v13 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

- (uint64_t)fc_countOfObjectsIntersectingSet:()FCAdditions
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__NSSet_FCAdditions__fc_countOfObjectsIntersectingSet___block_invoke;
  v8[3] = &unk_1E7C3F858;
  v9 = v4;
  v5 = v4;
  v6 = [a1 fc_countOfObjectsPassingTest:v8];

  return v6;
}

- (id)fc_setByIntersectingSet:()FCAdditions
{
  v4 = a3;
  v5 = [a1 mutableCopy];
  [v5 fc_safelyIntersectSet:v4];

  return v5;
}

- (id)fc_setByMinusingSet:()FCAdditions
{
  v4 = a3;
  v5 = [a1 mutableCopy];
  [v5 fc_safelyMinusSet:v4];

  v6 = [v5 copy];

  return v6;
}

- (id)fc_setByUnioningSet:()FCAdditions
{
  v4 = a3;
  v5 = [a1 mutableCopy];
  [v5 fc_safelyUnionSet:v4];

  v6 = [v5 copy];

  return v6;
}

- (id)fc_setByRemovingObject:()FCAdditions
{
  v4 = a3;
  v5 = [a1 mutableCopy];
  [v5 fc_safelyRemoveObject:v4];

  v6 = [v5 copy];

  return v6;
}

+ (id)fc_unionOfSetsInArray:()FCAdditions
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 fc_reduceArrayWithInitial:v4 block:&__block_literal_global_154];

  return v5;
}

@end