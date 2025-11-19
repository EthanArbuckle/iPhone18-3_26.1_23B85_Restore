@interface NSArray(CalClassAdditions)
+ (id)arrayOfSetsBySplitting:()CalClassAdditions batchSize:;
- (id)CalFilter:()CalClassAdditions;
- (id)CalFirstObjectPassingTest:()CalClassAdditions;
- (id)CalFlatMap:()CalClassAdditions;
- (id)CalMap:()CalClassAdditions;
- (id)CalStringValueForKeyPaths:()CalClassAdditions;
- (id)CalStringValueForKeys:()CalClassAdditions;
- (id)CalStringValueForKeys:()CalClassAdditions keyPaths:;
- (id)CalTake:()CalClassAdditions;
- (id)_CalArrayOfValueForKeyPaths:()CalClassAdditions;
- (id)_CalArrayOfValueForKeys:()CalClassAdditions;
- (id)_CalStringForArrayOfValues:()CalClassAdditions;
- (id)allObjectsWithClass:()CalClassAdditions;
- (id)filteredArrayUsingTest:()CalClassAdditions;
- (void)CalMutableRecursiveCopy;
@end

@implementation NSArray(CalClassAdditions)

- (void)CalMutableRecursiveCopy
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          v9 = [v8 CalMutableRecursiveCopy];
        }

        else if ((objc_opt_respondsToSelector() & 1) != 0 && [v8 conformsToProtocol:{&unk_1F37B6050, v13}])
        {
          v9 = [v8 mutableCopy];
        }

        else
        {
          v9 = [v8 copy];
        }

        v10 = v9;
        [v2 addObject:{v9, v13}];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v2;
}

- (id)allObjectsWithClass:()CalClassAdditions
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:{v8, v11}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)arrayOfSetsBySplitting:()CalClassAdditions batchSize:
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E695DFA8] set];
  v7 = [MEMORY[0x1E695DF70] arrayWithObject:v6];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if ([v6 count] >= a4)
        {
          v14 = [MEMORY[0x1E695DFA8] set];

          [v7 addObject:v14];
          v6 = v14;
        }

        [v6 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_CalArrayOfValueForKeys:()CalClassAdditions
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
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

        v11 = [a1 valueForKey:{*(*(&v14 + 1) + 8 * i), v14}];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_CalArrayOfValueForKeyPaths:()CalClassAdditions
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
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

        v11 = [a1 valueForKeyPath:{*(*(&v14 + 1) + 8 * i), v14}];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_CalStringForArrayOfValues:()CalClassAdditions
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AD60] string];
  v5 = [v3 firstObject];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = [MEMORY[0x1E696AD60] string];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v9 = v3;
      v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v20;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [*(*(&v19 + 1) + 8 * i) objectAtIndexedSubscript:v7];
            [v8 appendFormat:@"%@, ", v14];
          }

          v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v11);
      }

      [v4 appendFormat:@"%@\n", v8];
      ++v7;
      v15 = [v9 firstObject];
      v16 = [v15 count];
    }

    while (v16 > v7);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)CalStringValueForKeys:()CalClassAdditions
{
  v2 = [a1 _CalArrayOfValueForKeys:?];
  v3 = [a1 _CalStringForArrayOfValues:v2];

  return v3;
}

- (id)CalStringValueForKeyPaths:()CalClassAdditions
{
  v2 = [a1 _CalArrayOfValueForKeyPaths:?];
  v3 = [a1 _CalStringForArrayOfValues:v2];

  return v3;
}

- (id)CalStringValueForKeys:()CalClassAdditions keyPaths:
{
  v6 = a4;
  v7 = [a1 _CalArrayOfValueForKeys:a3];
  v8 = [a1 _CalArrayOfValueForKeyPaths:v6];

  [v7 addObjectsFromArray:v8];
  v9 = [a1 _CalStringForArrayOfValues:v7];

  return v9;
}

- (id)filteredArrayUsingTest:()CalClassAdditions
{
  v2 = [a1 indexesOfObjectsPassingTest:?];
  v3 = [a1 objectsAtIndexes:v2];

  return v3;
}

- (id)CalFirstObjectPassingTest:()CalClassAdditions
{
  v4 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__NSArray_CalClassAdditions__CalFirstObjectPassingTest___block_invoke;
  v9[3] = &unk_1E7EC7228;
  v5 = v4;
  v10 = v5;
  v6 = [a1 indexOfObjectPassingTest:v9];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [a1 objectAtIndex:v6];
  }

  return v7;
}

- (id)CalFilter:()CalClassAdditions
{
  v4 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__NSArray_CalClassAdditions__CalFilter___block_invoke;
  v9[3] = &unk_1E7EC7228;
  v10 = v4;
  v5 = v4;
  v6 = [a1 indexesOfObjectsPassingTest:v9];
  v7 = [a1 objectsAtIndexes:v6];

  return v7;
}

- (id)CalMap:()CalClassAdditions
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a1, "count")}];
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
        if (v11)
        {
          [v5 addObject:v11];
        }

        else
        {
          v12 = [MEMORY[0x1E695DFB0] null];
          [v5 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)CalFlatMap:()CalClassAdditions
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
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

- (id)CalTake:()CalClassAdditions
{
  if ([a1 count] >= a3)
  {
    v5 = [a1 subarrayWithRange:{0, a3}];
  }

  else
  {
    v5 = a1;
  }

  return v5;
}

@end