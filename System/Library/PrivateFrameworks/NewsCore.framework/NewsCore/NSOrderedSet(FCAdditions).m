@interface NSOrderedSet(FCAdditions)
+ (id)fc_orderedSet:()FCAdditions;
- (BOOL)fc_containsObjectPassingTest:()FCAdditions;
- (BOOL)fc_isEqualToOrderedSet:()FCAdditions inRange:;
- (id)fc_diffAgainstOrderedSet:()FCAdditions;
- (id)fc_diffAgainstOrderedSet:()FCAdditions withEqualityTest:identityValueProvider:;
- (id)fc_firstObjectPassingTest:()FCAdditions;
- (id)fc_indexesOfObjectsInOrderedSet:()FCAdditions;
- (id)fc_orderedSetByAddingObject:()FCAdditions;
- (id)fc_orderedSetByCollectingObjectsWithBlock:()FCAdditions;
- (id)fc_orderedSetByMinusingOrderedSet:()FCAdditions;
- (id)fc_orderedSetByTransformingWithBlock:()FCAdditions;
- (id)fc_orderedSetOfObjectsPassingTest:()FCAdditions;
- (id)fc_orderedSetWithObjectsAtIndexes:()FCAdditions;
@end

@implementation NSOrderedSet(FCAdditions)

+ (id)fc_orderedSet:()FCAdditions
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DFA0] orderedSet];
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
    v5 = [MEMORY[0x1E695DFB8] orderedSet];
  }

  v6 = v5;

  return v6;
}

- (id)fc_orderedSetByTransformingWithBlock:()FCAdditions
{
  v4 = a3;
  v5 = objc_opt_new();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__NSOrderedSet_FCAdditions__fc_orderedSetByTransformingWithBlock___block_invoke;
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

- (id)fc_diffAgainstOrderedSet:()FCAdditions withEqualityTest:identityValueProvider:
{
  v45 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "left"];
    *buf = 136315906;
    v38 = "[NSOrderedSet(FCAdditions) fc_diffAgainstOrderedSet:withEqualityTest:identityValueProvider:]";
    v39 = 2080;
    v40 = "NSOrderedSet+FCAdditions.m";
    v41 = 1024;
    v42 = 65;
    v43 = 2114;
    v44 = v25;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v9)
    {
      goto LABEL_6;
    }
  }

  else if (v9)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "equalityTest"];
    *buf = 136315906;
    v38 = "[NSOrderedSet(FCAdditions) fc_diffAgainstOrderedSet:withEqualityTest:identityValueProvider:]";
    v39 = 2080;
    v40 = "NSOrderedSet+FCAdditions.m";
    v41 = 1024;
    v42 = 66;
    v43 = 2114;
    v44 = v26;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!v10 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "identityValueProvider"];
    *buf = 136315906;
    v38 = "[NSOrderedSet(FCAdditions) fc_diffAgainstOrderedSet:withEqualityTest:identityValueProvider:]";
    v39 = 2080;
    v40 = "NSOrderedSet+FCAdditions.m";
    v41 = 1024;
    v42 = 67;
    v43 = 2114;
    v44 = v27;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__NSOrderedSet_FCAdditions__fc_diffAgainstOrderedSet_withEqualityTest_identityValueProvider___block_invoke;
  aBlock[3] = &unk_1E7C44378;
  v36 = v10;
  v28 = v10;
  v11 = _Block_copy(aBlock);
  v12 = [v8 fc_orderedSetByTransformingWithBlock:v11];
  v13 = [a1 fc_orderedSetByTransformingWithBlock:v11];
  v14 = [v13 fc_diffAgainstOrderedSet:v12];
  v15 = [v14 mutableCopy];

  v16 = objc_opt_new();
  v17 = [v15 objectForKeyedSubscript:@"deletedIndices"];
  v18 = [v15 objectForKeyedSubscript:@"movedIndices"];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __93__NSOrderedSet_FCAdditions__fc_diffAgainstOrderedSet_withEqualityTest_identityValueProvider___block_invoke_2;
  v29[3] = &unk_1E7C443A0;
  v30 = v17;
  v31 = v18;
  v33 = v16;
  v34 = v9;
  v32 = a1;
  v19 = v16;
  v20 = v9;
  v21 = v18;
  v22 = v17;
  [v8 enumerateObjectsUsingBlock:v29];
  [v15 setObject:v19 forKeyedSubscript:@"updatedIndices"];

  v23 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)fc_diffAgainstOrderedSet:()FCAdditions
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = a1;
    v28 = [v4 set];
    v27 = [v5 set];
    v6 = [v27 fc_diffAgainstSet:v28];
    v7 = [v6 objectForKeyedSubscript:@"FCInsertedElementsKey"];
    v8 = [v6 objectForKeyedSubscript:@"FCDeletedElementsKey"];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __54__NSOrderedSet_FCAdditions__fc_diffAgainstOrderedSet___block_invoke;
    aBlock[3] = &unk_1E7C3F858;
    v42 = v8;
    v26 = v8;
    v9 = _Block_copy(aBlock);
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __54__NSOrderedSet_FCAdditions__fc_diffAgainstOrderedSet___block_invoke_2;
    v39[3] = &unk_1E7C3F858;
    v40 = v7;
    v25 = v7;
    v10 = _Block_copy(v39);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __54__NSOrderedSet_FCAdditions__fc_diffAgainstOrderedSet___block_invoke_3;
    v37[3] = &unk_1E7C43B40;
    v11 = v9;
    v38 = v11;
    v12 = [v4 indexesOfObjectsPassingTest:v37];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __54__NSOrderedSet_FCAdditions__fc_diffAgainstOrderedSet___block_invoke_4;
    v35[3] = &unk_1E7C43B40;
    v13 = v10;
    v36 = v13;
    v14 = [v5 indexesOfObjectsPassingTest:v35];
    v15 = objc_opt_new();
    v16 = objc_opt_new();
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __54__NSOrderedSet_FCAdditions__fc_diffAgainstOrderedSet___block_invoke_5;
    v29[3] = &unk_1E7C443C8;
    v33 = v13;
    v34 = v11;
    v30 = v4;
    v31 = v15;
    v32 = v16;
    v17 = v16;
    v18 = v15;
    v19 = v11;
    v20 = v13;
    [v5 enumerateObjectsUsingBlock:v29];

    v43[0] = @"insertedIndices";
    v43[1] = @"deletedIndices";
    v44[0] = v14;
    v44[1] = v12;
    v43[2] = @"movedIndices";
    v43[3] = @"unmovedIndices";
    v44[2] = v18;
    v44[3] = v17;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:4];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "left"];
      *buf = 136315906;
      v46 = "[NSOrderedSet(FCAdditions) fc_diffAgainstOrderedSet:]";
      v47 = 2080;
      v48 = "NSOrderedSet+FCAdditions.m";
      v49 = 1024;
      v50 = 112;
      v51 = 2114;
      v52 = v24;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v21 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)fc_indexesOfObjectsInOrderedSet:()FCAdditions
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AD50] indexSet];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
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

        v11 = [a1 indexOfObject:{*(*(&v14 + 1) + 8 * i), v14}];
        if (v11 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v5 addIndex:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)fc_firstObjectPassingTest:()FCAdditions
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "testBlock"];
    *buf = 136315906;
    v11 = "[NSOrderedSet(FCAdditions) fc_firstObjectPassingTest:]";
    v12 = 2080;
    v13 = "NSOrderedSet+FCAdditions.m";
    v14 = 1024;
    v15 = 192;
    v16 = 2114;
    v17 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [a1 objectEnumerator];
  v6 = [v5 fc_firstObjectPassingTest:v4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)fc_containsObjectPassingTest:()FCAdditions
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "testBlock"];
    *buf = 136315906;
    v11 = "[NSOrderedSet(FCAdditions) fc_containsObjectPassingTest:]";
    v12 = 2080;
    v13 = "NSOrderedSet+FCAdditions.m";
    v14 = 1024;
    v15 = 199;
    v16 = 2114;
    v17 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [a1 fc_firstObjectPassingTest:v4];
  v6 = v5 != 0;

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)fc_orderedSetOfObjectsPassingTest:()FCAdditions
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "testBlock"];
    *buf = 136315906;
    v21 = "[NSOrderedSet(FCAdditions) fc_orderedSetOfObjectsPassingTest:]";
    v22 = 2080;
    v23 = "NSOrderedSet+FCAdditions.m";
    v24 = 1024;
    v25 = 206;
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

- (id)fc_orderedSetWithObjectsAtIndexes:()FCAdditions
{
  v1 = MEMORY[0x1E695DFB8];
  v2 = [a1 objectsAtIndexes:?];
  v3 = [v1 orderedSetWithArray:v2];

  return v3;
}

- (id)fc_orderedSetByMinusingOrderedSet:()FCAdditions
{
  v4 = MEMORY[0x1E695DFA0];
  v5 = a3;
  v6 = [v4 orderedSetWithOrderedSet:a1];
  [v6 minusOrderedSet:v5];

  return v6;
}

- (id)fc_orderedSetByCollectingObjectsWithBlock:()FCAdditions
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
        v12 = [v11 array];
        [v5 addObjectsFromArray:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)fc_orderedSetByAddingObject:()FCAdditions
{
  v4 = a3;
  v5 = [a1 mutableCopy];
  [v5 addObject:v4];

  return v5;
}

- (BOOL)fc_isEqualToOrderedSet:()FCAdditions inRange:
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

@end