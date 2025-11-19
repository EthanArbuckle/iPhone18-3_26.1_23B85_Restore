@interface EDCachingMailboxPredictor
- (EDCachingMailboxPredictor)initWithPredictor:(id)a3;
- (id)_cacheKeyForMessages:(id)a3;
- (id)_propertyKeysForMessage:(id)a3;
- (id)predictMailboxIDsForMessages:(id)a3 limit:(unint64_t)a4;
- (void)_trackCacheKey:(id)a3 forPropertyKey:(id)a4;
- (void)invalidatePredictionsAffectedByMessage:(id)a3;
- (void)removeAllPredictions;
@end

@implementation EDCachingMailboxPredictor

- (EDCachingMailboxPredictor)initWithPredictor:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = EDCachingMailboxPredictor;
  v5 = [(EDCachingMailboxPredictor *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(EDCachingMailboxPredictor *)v5 setPredictor:v4];
    v7 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    [(EDCachingMailboxPredictor *)v6 setCache:v7];

    v8 = [MEMORY[0x1E695DF90] dictionary];
    [(EDCachingMailboxPredictor *)v6 setCacheKeysByProperty:v8];
  }

  return v6;
}

- (id)predictMailboxIDsForMessages:(id)a3 limit:(unint64_t)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v23 = a3;
  v6 = [(EDCachingMailboxPredictor *)self _cacheKeyForMessages:?];
  v7 = [(EDCachingMailboxPredictor *)self cache];
  v8 = [v7 objectForKey:v6];

  v24 = v8;
  if (v8)
  {
    v9 = +[EDMailboxPredictionController log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [EDCachingMailboxPredictor predictMailboxIDsForMessages:v6 limit:v9];
    }
  }

  else
  {
    v10 = +[EDMailboxPredictionController log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [EDCachingMailboxPredictor predictMailboxIDsForMessages:v6 limit:v10];
    }

    v11 = [(EDCachingMailboxPredictor *)self predictor];
    v24 = [v11 predictMailboxIDsForMessages:v23 limit:a4];

    v12 = [(EDCachingMailboxPredictor *)self cache];
    [v12 setObject:v24 forKey:v6];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = v23;
    v13 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v13)
    {
      v14 = *v30;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v29 + 1) + 8 * i);
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v17 = [(EDCachingMailboxPredictor *)self _propertyKeysForMessage:v16];
          v18 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v18)
          {
            v19 = *v26;
            do
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v26 != v19)
                {
                  objc_enumerationMutation(v17);
                }

                [(EDCachingMailboxPredictor *)self _trackCacheKey:v6 forPropertyKey:*(*(&v25 + 1) + 8 * j)];
              }

              v18 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
            }

            while (v18);
          }
        }

        v13 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v13);
    }
  }

  v21 = *MEMORY[0x1E69E9840];

  return v24;
}

- (void)invalidatePredictionsAffectedByMessage:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(EDCachingMailboxPredictor *)self _propertyKeysForMessage:a3];
  v4 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v4)
  {
    v19 = *v26;
    do
    {
      v20 = v4;
      for (i = 0; i != v20; ++i)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v7 = [(EDCachingMailboxPredictor *)self cacheKeysByProperty];
        v8 = [v7 objectForKeyedSubscript:v6];
        v9 = [v8 allObjects];

        v10 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v10)
        {
          v11 = *v22;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v22 != v11)
              {
                objc_enumerationMutation(v9);
              }

              v13 = *(*(&v21 + 1) + 8 * j);
              v14 = [(EDCachingMailboxPredictor *)self cache];
              [v14 removeObjectForKey:v13];

              v15 = [(EDCachingMailboxPredictor *)self cacheKeysByProperty];
              v16 = [v15 objectForKeyedSubscript:v6];
              [v16 removeObject:v13];
            }

            v10 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v10);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v4);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)removeAllPredictions
{
  v3 = [(EDCachingMailboxPredictor *)self cacheKeysByProperty];
  [v3 removeAllObjects];

  v4 = [(EDCachingMailboxPredictor *)self cache];
  [v4 removeAllObjects];
}

- (id)_cacheKeyForMessages:(id)a3
{
  v3 = [a3 ef_mapSelector:sel_persistentID];
  v4 = [v3 mutableCopy];

  [v4 sortUsingSelector:sel_compare_];
  v5 = [v4 componentsJoinedByString:{@", "}];

  return v5;
}

- (void)_trackCacheKey:(id)a3 forPropertyKey:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(EDCachingMailboxPredictor *)self cacheKeysByProperty];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (!v8)
  {
    v9 = [MEMORY[0x1E695DFA8] set];
    v10 = [(EDCachingMailboxPredictor *)self cacheKeysByProperty];
    [v10 setObject:v9 forKeyedSubscript:v6];

    v8 = v9;
  }

  [v8 addObject:v11];
}

- (id)_propertyKeysForMessage:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v30 = v3;
  v4 = [MEMORY[0x1E695DF70] array];
  v29 = [v3 listIDHash];
  if (v29)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v29, "int64Value")}];
    [v4 addObject:v5];
  }

  v6 = [v3 conversationID];
  if (v6)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:v6];
    [v4 addObject:v7];
  }

  v8 = [v3 to];
  v9 = [v8 ef_mapSelector:sel_ea_uncommentedAddress];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v10)
  {
    v11 = *v33;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v32 + 1) + 8 * i);
        v14 = objc_alloc(MEMORY[0x1E699B990]);
        v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"R %@", v13];
        v16 = [v14 initWithString:v15];

        v17 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v16, "int64Value")}];
        [v4 addObject:v17];
      }

      v10 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v10);
  }

  v18 = [v30 from];
  v19 = [v18 firstObject];

  if (v19)
  {
    v20 = objc_alloc(MEMORY[0x1E699B990]);
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"S %@", v19];
    v22 = [v20 initWithString:v21];

    v23 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v22, "int64Value")}];
    [v4 addObject:v23];
  }

  v24 = [v30 persistentID];
  v25 = [v24 longLongValue];

  if (v25)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithLongLong:v25];
    [v4 addObject:v26];
  }

  v27 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)predictMailboxIDsForMessages:(uint64_t)a1 limit:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_DEBUG, "Cache hit for %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)predictMailboxIDsForMessages:(uint64_t)a1 limit:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_DEBUG, "Cache miss for %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end