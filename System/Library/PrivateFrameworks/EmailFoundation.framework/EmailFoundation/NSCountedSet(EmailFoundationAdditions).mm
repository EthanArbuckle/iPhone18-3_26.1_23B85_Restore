@interface NSCountedSet(EmailFoundationAdditions)
- (id)ef_leastCommonObjects;
- (id)ef_mostCommonObjects;
@end

@implementation NSCountedSet(EmailFoundationAdditions)

- (id)ef_mostCommonObjects
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v3 countForObject:{v8, v13}];
        v10 = v9;
        if (v9 <= v5)
        {
          if (v9 == v5)
          {
            [v2 addObject:v8];
          }
        }

        else
        {
          [v2 removeAllObjects];
          [v2 addObject:v8];
          v5 = v10;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)ef_leastCommonObjects
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    v6 = -1;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v3 countForObject:{v8, v13}];
        v10 = v9;
        if (v9 >= v6)
        {
          if (v9 == v6)
          {
            [v2 addObject:v8];
          }
        }

        else
        {
          [v2 removeAllObjects];
          [v2 addObject:v8];
          v6 = v10;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v2;
}

@end