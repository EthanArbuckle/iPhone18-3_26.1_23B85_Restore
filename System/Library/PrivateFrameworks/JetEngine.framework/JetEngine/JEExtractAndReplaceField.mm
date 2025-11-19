@interface JEExtractAndReplaceField
+ (id)metricsAfterExtractAndReplaceSubFieldWithConfig:(id)a3 metrics:(id)a4;
@end

@implementation JEExtractAndReplaceField

+ (id)metricsAfterExtractAndReplaceSubFieldWithConfig:(id)a3 metrics:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKey:@"extractFromLists"];
  v26 = [v5 objectForKey:@"replacementField"];
  v8 = [v5 objectForKey:@"subFieldToExtract"];
  v27 = v5;
  v35 = [v5 objectForKey:@"replacementIndexSubField"];
  v9 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v30 = v6;
  v31 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v6];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v7;
  v32 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v32)
  {
    v29 = *v41;
    do
    {
      v10 = 0;
      do
      {
        if (*v41 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v40 + 1) + 8 * v10);
        v34 = v10;
        v11 = [v30 objectForKey:?];
        v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v11, "count")}];
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v13 = v11;
        v14 = [v13 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v37;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v37 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v36 + 1) + 8 * i);
              v19 = [v18 objectForKey:v8];
              if (v19)
              {
                v20 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v18];
                if ([v9 containsObject:v19])
                {
                  v21 = MEMORY[0x1E696AD98];
                  v22 = [v9 indexOfObject:v19];
                }

                else
                {
                  [v9 addObject:v19];
                  v21 = MEMORY[0x1E696AD98];
                  v22 = [v9 count] - 1;
                }

                v23 = [v21 numberWithInteger:v22];
                [v20 setObject:v23 forKey:v35];

                [v20 removeObjectForKey:v8];
                [v12 addObject:v20];
              }

              else
              {
                [v12 addObject:v18];
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v36 objects:v44 count:16];
          }

          while (v15);
        }

        [v31 setObject:v12 forKey:v33];
        v10 = v34 + 1;
      }

      while (v34 + 1 != v32);
      v32 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v32);
  }

  if ([v9 count])
  {
    v24 = [v9 array];
    [v31 setObject:v24 forKey:v26];
  }

  return v31;
}

@end