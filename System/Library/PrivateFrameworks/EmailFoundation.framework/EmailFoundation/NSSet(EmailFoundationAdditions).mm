@interface NSSet(EmailFoundationAdditions)
- (BOOL)ef_all:()EmailFoundationAdditions;
- (BOOL)ef_any:()EmailFoundationAdditions;
- (id)ef_anyPassingTest:()EmailFoundationAdditions;
- (id)ef_compactMap:()EmailFoundationAdditions;
- (id)ef_filter:()EmailFoundationAdditions;
- (id)ef_flatMap:()EmailFoundationAdditions;
- (id)ef_flatten;
- (id)ef_notEmpty;
- (id)ef_partition:()EmailFoundationAdditions;
- (id)ef_setByRemovingObjectsFromSet:()EmailFoundationAdditions;
- (id)ef_subsets;
- (uint64_t)ef_countObjectsPassingTest:()EmailFoundationAdditions;
@end

@implementation NSSet(EmailFoundationAdditions)

- (id)ef_notEmpty
{
  if ([self count])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)ef_flatten
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFA8] set];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(selfCopy);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
          ef_flatten = [v8 ef_flatten];
          [v2 unionSet:ef_flatten];
        }

        else
        {
          [v2 addObject:{v7, v12}];
        }
      }

      v4 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)ef_subsets
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = [self count];
  if (v2 == 1)
  {
    v4 = [MEMORY[0x1E695DFD8] set];
    v15[1] = v4;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  }

  else if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{fmin(exp2(v2), 1.84467441e19)}];
    v5 = [MEMORY[0x1E695DFD8] set];
    [v3 addObject:v5];

    v6 = [self mutableCopy];
    v7 = 1;
    while ([v6 count])
    {
      anyObject = [v6 anyObject];
      [v6 removeObject:anyObject];
      if (v7)
      {
        v9 = 0;
        v10 = v7;
        while (v10 != 1 || [v6 count])
        {
          v11 = [v3 objectAtIndexedSubscript:v9];
          v12 = [v11 mutableCopy];
          [v12 addObject:anyObject];
          [v3 addObject:v12];

          ++v9;
          if (!--v10)
          {
            goto LABEL_14;
          }
        }

        [v3 addObject:self];
      }

LABEL_14:

      v7 *= 2;
    }
  }

  else
  {
    v16[0] = self;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)ef_compactMap:()EmailFoundationAdditions
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFNSSetAdditions.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"transform"}];
  }

  v6 = [MEMORY[0x1E695DFA8] set];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v8 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = v5[2](v5, *(*(&v15 + 1) + 8 * i));
        if (v11)
        {
          [v6 addObject:v11];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)ef_flatMap:()EmailFoundationAdditions
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFNSSetAdditions.m" lineNumber:77 description:{@"Invalid parameter not satisfying: %@", @"transform"}];
  }

  v6 = [MEMORY[0x1E695DFA8] set];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v8 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = v5[2](v5, *(*(&v15 + 1) + 8 * i));
        if (v11)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v6 unionSet:v11];
          }
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)ef_filter:()EmailFoundationAdditions
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFNSSetAdditions.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"test"}];
  }

  v6 = [MEMORY[0x1E695DFA8] set];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v8 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
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
        if (v5[2](v5, v11))
        {
          [v6 addObject:v11];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)ef_anyPassingTest:()EmailFoundationAdditions
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (v4[2](v4, v9))
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (BOOL)ef_any:()EmailFoundationAdditions
{
  v1 = [self ef_anyPassingTest:?];
  v2 = v1 != 0;

  return v2;
}

- (BOOL)ef_all:()EmailFoundationAdditions
{
  v4 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__NSSet_EmailFoundationAdditions__ef_all___block_invoke;
  v9[3] = &unk_1E8248E98;
  v10 = v4;
  v5 = v4;
  v6 = [self ef_anyPassingTest:v9];
  v7 = v6 == 0;

  return v7;
}

- (uint64_t)ef_countObjectsPassingTest:()EmailFoundationAdditions
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  v6 = 0;
  v7 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(selfCopy);
        }

        v6 += v4[2](v4, *(*(&v12 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)ef_partition:()EmailFoundationAdditions
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  v6 = [MEMORY[0x1E695DFA8] set];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
  v8 = [selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if (v4[2](v4, v11))
        {
          v12 = v5;
        }

        else
        {
          v12 = v6;
        }

        [v12 addObject:{v11, v16}];
      }

      v8 = [selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = [EFPair pairWithFirst:v5 second:v6];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)ef_setByRemovingObjectsFromSet:()EmailFoundationAdditions
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__NSSet_EmailFoundationAdditions__ef_setByRemovingObjectsFromSet___block_invoke;
  v8[3] = &unk_1E82487D0;
  v9 = v4;
  v5 = v4;
  v6 = [self ef_filter:v8];

  return v6;
}

@end