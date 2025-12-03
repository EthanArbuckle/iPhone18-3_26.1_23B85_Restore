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
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(self, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          calMutableRecursiveCopy = [v8 CalMutableRecursiveCopy];
        }

        else if ((objc_opt_respondsToSelector() & 1) != 0 && [v8 conformsToProtocol:{&unk_1F37B6050, v13}])
        {
          calMutableRecursiveCopy = [v8 mutableCopy];
        }

        else
        {
          calMutableRecursiveCopy = [v8 copy];
        }

        v10 = calMutableRecursiveCopy;
        [v2 addObject:{calMutableRecursiveCopy, v13}];

        ++v7;
      }

      while (v5 != v7);
      v5 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v2;
}

- (id)allObjectsWithClass:()CalClassAdditions
{
  v16 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          [array addObject:{v8, v11}];
        }
      }

      v5 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];

  return array;
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
  array = [MEMORY[0x1E695DF70] array];
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

        v11 = [self valueForKey:{*(*(&v14 + 1) + 8 * i), v14}];
        if (v11)
        {
          [array addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)_CalArrayOfValueForKeyPaths:()CalClassAdditions
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  array = [MEMORY[0x1E695DF70] array];
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

        v11 = [self valueForKeyPath:{*(*(&v14 + 1) + 8 * i), v14}];
        if (v11)
        {
          [array addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)_CalStringForArrayOfValues:()CalClassAdditions
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  string = [MEMORY[0x1E696AD60] string];
  firstObject = [v3 firstObject];
  v6 = [firstObject count];

  if (v6)
  {
    v7 = 0;
    do
    {
      string2 = [MEMORY[0x1E696AD60] string];
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
            [string2 appendFormat:@"%@, ", v14];
          }

          v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v11);
      }

      [string appendFormat:@"%@\n", string2];
      ++v7;
      firstObject2 = [v9 firstObject];
      v16 = [firstObject2 count];
    }

    while (v16 > v7);
  }

  v17 = *MEMORY[0x1E69E9840];

  return string;
}

- (id)CalStringValueForKeys:()CalClassAdditions
{
  v2 = [self _CalArrayOfValueForKeys:?];
  v3 = [self _CalStringForArrayOfValues:v2];

  return v3;
}

- (id)CalStringValueForKeyPaths:()CalClassAdditions
{
  v2 = [self _CalArrayOfValueForKeyPaths:?];
  v3 = [self _CalStringForArrayOfValues:v2];

  return v3;
}

- (id)CalStringValueForKeys:()CalClassAdditions keyPaths:
{
  v6 = a4;
  v7 = [self _CalArrayOfValueForKeys:a3];
  v8 = [self _CalArrayOfValueForKeyPaths:v6];

  [v7 addObjectsFromArray:v8];
  v9 = [self _CalStringForArrayOfValues:v7];

  return v9;
}

- (id)filteredArrayUsingTest:()CalClassAdditions
{
  v2 = [self indexesOfObjectsPassingTest:?];
  v3 = [self objectsAtIndexes:v2];

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
  v6 = [self indexOfObjectPassingTest:v9];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [self objectAtIndex:v6];
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
  v6 = [self indexesOfObjectsPassingTest:v9];
  v7 = [self objectsAtIndexes:v6];

  return v7;
}

- (id)CalMap:()CalClassAdditions
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(self, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(selfCopy);
        }

        v11 = v4[2](v4, *(*(&v15 + 1) + 8 * i));
        if (v11)
        {
          [v5 addObject:v11];
        }

        else
        {
          null = [MEMORY[0x1E695DFB0] null];
          [v5 addObject:null];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(selfCopy);
        }

        v11 = v4[2](v4, *(*(&v14 + 1) + 8 * i));
        [array addObjectsFromArray:{v11, v14}];
      }

      v8 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)CalTake:()CalClassAdditions
{
  if ([self count] >= a3)
  {
    selfCopy = [self subarrayWithRange:{0, a3}];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end