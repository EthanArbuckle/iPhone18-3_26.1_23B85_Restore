@interface NSOrderedSet(EmailFoundationAdditions)
- (BOOL)ef_all:()EmailFoundationAdditions;
- (BOOL)ef_any:()EmailFoundationAdditions;
- (id)ef_anyPassingTest:()EmailFoundationAdditions;
- (id)ef_compactMap:()EmailFoundationAdditions;
- (id)ef_filter:()EmailFoundationAdditions;
- (id)ef_flatMap:()EmailFoundationAdditions;
- (id)ef_flatten;
- (id)ef_objectAfterObject:()EmailFoundationAdditions;
- (id)ef_objectBeforeObject:()EmailFoundationAdditions;
- (id)ef_partition:()EmailFoundationAdditions;
- (id)ef_prefix:()EmailFoundationAdditions;
- (id)ef_subarrayWithRange:()EmailFoundationAdditions;
- (id)ef_subsetWithRange:()EmailFoundationAdditions;
- (id)ef_suffix:()EmailFoundationAdditions;
- (uint64_t)ef_countObjectsPassingTest:()EmailFoundationAdditions;
@end

@implementation NSOrderedSet(EmailFoundationAdditions)

- (id)ef_flatten
{
  v17 = *MEMORY[0x1E69E9840];
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
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
          [orderedSet unionOrderedSet:ef_flatten];
        }

        else
        {
          [orderedSet addObject:{v7, v12}];
        }
      }

      v4 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x1E69E9840];

  return orderedSet;
}

- (id)ef_compactMap:()EmailFoundationAdditions
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFNSOrderedSetAdditions.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"transform"}];
  }

  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
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
          [orderedSet addObject:v11];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return orderedSet;
}

- (id)ef_flatMap:()EmailFoundationAdditions
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFNSOrderedSetAdditions.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"transform"}];
  }

  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
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
            [orderedSet unionOrderedSet:v11];
          }
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return orderedSet;
}

- (id)ef_filter:()EmailFoundationAdditions
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFNSOrderedSetAdditions.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"test"}];
  }

  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
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
          [orderedSet addObject:v11];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return orderedSet;
}

- (id)ef_prefix:()EmailFoundationAdditions
{
  if ([self count] <= a3)
  {
    v5 = [self copy];
  }

  else
  {
    v5 = [self ef_subsetWithRange:{0, a3}];
  }

  return v5;
}

- (id)ef_suffix:()EmailFoundationAdditions
{
  if ([self count] <= a3)
  {
    v5 = [self copy];
  }

  else
  {
    v5 = [self ef_subsetWithRange:{objc_msgSend(self, "count") - a3, a3}];
  }

  return v5;
}

- (id)ef_subsetWithRange:()EmailFoundationAdditions
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (a4 > 0xC80000)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[NSOrderedSet(EmailFoundationAdditions) ef_subsetWithRange:]"];
    [currentHandler handleFailureInFunction:v16 file:@"EFNSOrderedSetAdditions.m" lineNumber:82 description:{@"Temporary buffer too large or with a negative count (%zu).", a4}];
  }

  if (a4 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = a4;
  }

  MEMORY[0x1EEE9AC00]();
  v9 = v17 - v8;
  bzero(v17 - v8, v10);
  if (a4 > 0x100)
  {
    v9 = malloc_type_calloc(v7, 8uLL, 0x80040B8603338uLL);
    v11 = v9;
  }

  else
  {
    bzero(v9, 8 * v7);
    v11 = 0;
  }

  [self getObjects:v9 range:{a3, a4}];
  v12 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithObjects:v9 count:a4];
  free(v11);
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)ef_subarrayWithRange:()EmailFoundationAdditions
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (a4 > 0xC80000)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[NSOrderedSet(EmailFoundationAdditions) ef_subarrayWithRange:]"];
    [currentHandler handleFailureInFunction:v16 file:@"EFNSOrderedSetAdditions.m" lineNumber:88 description:{@"Temporary buffer too large or with a negative count (%zu).", a4}];
  }

  if (a4 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = a4;
  }

  MEMORY[0x1EEE9AC00]();
  v9 = v17 - v8;
  bzero(v17 - v8, v10);
  if (a4 > 0x100)
  {
    v9 = malloc_type_calloc(v7, 8uLL, 0x80040B8603338uLL);
    v11 = v9;
  }

  else
  {
    bzero(v9, 8 * v7);
    v11 = 0;
  }

  [self getObjects:v9 range:{a3, a4}];
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:a4];
  free(v11);
  v13 = *MEMORY[0x1E69E9840];

  return v12;
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
  v9[2] = __49__NSOrderedSet_EmailFoundationAdditions__ef_all___block_invoke;
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
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet2 = [MEMORY[0x1E695DFA0] orderedSet];
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
          v12 = orderedSet;
        }

        else
        {
          v12 = orderedSet2;
        }

        [v12 addObject:{v11, v16}];
      }

      v8 = [selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = [EFPair pairWithFirst:orderedSet second:orderedSet2];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)ef_objectBeforeObject:()EmailFoundationAdditions
{
  v4 = a3;
  v5 = [self indexOfObject:v4];
  v6 = 0;
  if (v5 && v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [self objectAtIndex:v5 - 1];
  }

  return v6;
}

- (id)ef_objectAfterObject:()EmailFoundationAdditions
{
  v4 = a3;
  v5 = [self indexOfObject:v4];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL || v5 >= [self count] - 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = [self objectAtIndex:v5 + 1];
  }

  return v6;
}

@end