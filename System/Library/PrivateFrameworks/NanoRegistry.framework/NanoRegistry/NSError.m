@interface NSError
+ (uint64_t)nr_isPlistObject:(uint64_t)a1;
+ (void)nr_filteredPlistArray:(uint64_t)a1;
+ (void)nr_filteredPlistDictionary:(uint64_t)a1;
@end

@implementation NSError

+ (void)nr_filteredPlistDictionary:(uint64_t)a1
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  if (v2)
  {
    v3 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v19 = v2;
      v7 = 0;
      v8 = *v21;
      while (1)
      {
        v9 = 0;
        do
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v20 + 1) + 8 * v9);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v7 = 1;
            goto LABEL_15;
          }

          v11 = [v4 objectForKeyedSubscript:v10];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [(NSError *)MEMORY[0x1E696ABC0] nr_filteredPlistDictionary:v11];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if ([(NSError *)MEMORY[0x1E696ABC0] nr_isPlistObject:v11])
              {
                [v3 setObject:v11 forKeyedSubscript:v10];
              }

              else
              {
                v7 = 1;
              }

              goto LABEL_14;
            }

            v12 = [(NSError *)MEMORY[0x1E696ABC0] nr_filteredPlistArray:v11];
          }

          v13 = v12;
          v7 |= v12 != v11;
          [v3 setObject:v12 forKeyedSubscript:v10];

LABEL_14:
LABEL_15:
          ++v9;
        }

        while (v6 != v9);
        v14 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
        v6 = v14;
        if (!v14)
        {

          v15 = v3;
          v2 = v19;
          if (v7)
          {
            goto LABEL_26;
          }

          goto LABEL_25;
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_25:
  v15 = v3;
  v3 = v2;
LABEL_26:
  v16 = v3;

  v17 = *MEMORY[0x1E69E9840];
  return v3;
}

+ (uint64_t)nr_isPlistObject:(uint64_t)a1
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  if (qword_1ED6F0BB0 != -1)
  {
    dispatch_once(&qword_1ED6F0BB0, &__block_literal_global_17);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = _MergedGlobals_16;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v4 = 1;
          goto LABEL_13;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t __47__NSError_NRSafeDescription__nr_isPlistObject___block_invoke()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, objc_opt_class(), 0}];
  v8 = _MergedGlobals_16;
  _MergedGlobals_16 = v7;

  return MEMORY[0x1EEE66BB8](v7, v8);
}

+ (void)nr_filteredPlistArray:(uint64_t)a1
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  if (v2)
  {
    v3 = objc_opt_new();
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v18 = v2;
      v7 = 0;
      v8 = *v20;
      while (1)
      {
        v9 = 0;
        do
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v19 + 1) + 8 * v9);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = [(NSError *)MEMORY[0x1E696ABC0] nr_filteredPlistDictionary:v10];
LABEL_11:
            v12 = v11;
            v7 |= v11 != v10;
            [v3 addObject:v11];

            goto LABEL_12;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = [(NSError *)MEMORY[0x1E696ABC0] nr_filteredPlistArray:v10];
            goto LABEL_11;
          }

          if ([(NSError *)MEMORY[0x1E696ABC0] nr_isPlistObject:v10])
          {
            [v3 addObject:v10];
          }

          else
          {
            v7 = 1;
          }

LABEL_12:
          ++v9;
        }

        while (v6 != v9);
        v13 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
        v6 = v13;
        if (!v13)
        {

          v14 = v3;
          v2 = v18;
          if (v7)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_22:
  v14 = v3;
  v3 = v2;
LABEL_23:
  v15 = v3;

  v16 = *MEMORY[0x1E69E9840];
  return v3;
}

@end