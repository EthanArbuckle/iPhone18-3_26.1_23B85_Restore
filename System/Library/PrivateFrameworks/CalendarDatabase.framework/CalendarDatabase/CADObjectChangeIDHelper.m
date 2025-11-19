@interface CADObjectChangeIDHelper
+ (id)makeObjectChangeEntityTypeMapToArray:(id)a3;
+ (id)makeObjectChangeEntityTypeMapToSet:(id)a3;
@end

@implementation CADObjectChangeIDHelper

+ (id)makeObjectChangeEntityTypeMapToArray:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "entityType", v17)}];
        v12 = [v4 objectForKey:v11];

        if (!v12)
        {
          v12 = [MEMORY[0x1E695DF70] array];
          v13 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "entityType")}];
          [v4 setObject:v12 forKey:v13];
        }

        v14 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v10, "changeID")}];
        [v12 addObject:v14];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)makeObjectChangeEntityTypeMapToSet:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "entityType", v17)}];
        v12 = [v4 objectForKey:v11];

        if (!v12)
        {
          v12 = [MEMORY[0x1E695DFA8] set];
          v13 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "entityType")}];
          [v4 setObject:v12 forKey:v13];
        }

        v14 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v10, "changeID")}];
        [v12 addObject:v14];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v4;
}

@end