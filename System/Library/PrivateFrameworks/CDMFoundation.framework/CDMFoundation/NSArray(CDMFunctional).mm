@interface NSArray(CDMFunctional)
- (id)_cdm_filterWithBlock:()CDMFunctional;
- (id)_cdm_mapWithBlock:()CDMFunctional;
@end

@implementation NSArray(CDMFunctional)

- (id)_cdm_mapWithBlock:()CDMFunctional
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 count];
  if (v4 && v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a1, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = a1;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = v4[2](v4, *(*(&v15 + 1) + 8 * i));
          if (v12)
          {
            [v6 addObject:{v12, v15}];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = [MEMORY[0x1E695DEC8] array];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_cdm_filterWithBlock:()CDMFunctional
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 count];
  if (v4 && v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a1, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = a1;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if (v4[2](v4, v12))
          {
            [v6 addObject:{v12, v15}];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = [MEMORY[0x1E695DEC8] array];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v6;
}

@end