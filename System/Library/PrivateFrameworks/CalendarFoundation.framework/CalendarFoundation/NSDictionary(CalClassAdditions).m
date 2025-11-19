@interface NSDictionary(CalClassAdditions)
- (id)CalDictionaryWithEmptyObjectsRemoved;
- (id)filteredDictionaryPassingTest:()CalClassAdditions;
- (uint64_t)CalHasKeyIn:()CalClassAdditions;
- (void)CalMutableRecursiveCopy;
- (void)mutableCopyWithElementsCopy;
@end

@implementation NSDictionary(CalClassAdditions)

- (void)mutableCopyWithElementsCopy
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [a1 mutableCopy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [a1 allKeys];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v2 objectForKey:v8];
        if (objc_opt_respondsToSelector())
        {
          v10 = [v9 copy];

          [v2 setObject:v10 forKey:v8];
          v9 = v10;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)CalMutableRecursiveCopy
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [a1 allKeys];
  v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [a1 objectForKey:v7];
        if (objc_opt_respondsToSelector())
        {
          v9 = [v8 CalMutableRecursiveCopy];
        }

        else if ((objc_opt_respondsToSelector() & 1) != 0 && [v8 conformsToProtocol:&unk_1F37B6050])
        {
          v9 = [v8 mutableCopy];
        }

        else
        {
          v9 = [v8 copy];
        }

        v10 = v9;
        [v2 setValue:v9 forKey:v7];
      }

      v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v2;
}

- (uint64_t)CalHasKeyIn:()CalClassAdditions
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [a1 objectForKey:{*(*(&v13 + 1) + 8 * v8), v13}];

        if (v9)
        {
          v10 = 1;
          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)filteredDictionaryPassingTest:()CalClassAdditions
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = [a1 keysOfEntriesPassingTest:v4];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
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
        v12 = [a1 objectForKey:v11];
        if (v12)
        {
          [v5 setObject:v12 forKey:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v5];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)CalDictionaryWithEmptyObjectsRemoved
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [a1 keysOfEntriesPassingTest:&__block_literal_global_7];
  if ([v2 count])
  {
    v3 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a1];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [v3 removeObjectForKey:{*(*(&v12 + 1) + 8 * i), v12}];
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    v9 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v3];
  }

  else
  {
    v9 = a1;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

@end