@interface NSSet(CalClassAdditions)
+ (id)intersectionOfSet:()CalClassAdditions withSet:;
- (id)allObjectsWithClass:()CalClassAdditions;
- (void)CalMutableRecursiveCopy;
@end

@implementation NSSet(CalClassAdditions)

- (void)CalMutableRecursiveCopy
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(a1, "count")}];
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
  v2 = [MEMORY[0x1E695DFA8] set];
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

+ (id)intersectionOfSet:()CalClassAdditions withSet:
{
  v5 = MEMORY[0x1E695DFA8];
  v6 = a4;
  v7 = [v5 setWithSet:a3];
  [v7 intersectSet:v6];

  return v7;
}

@end