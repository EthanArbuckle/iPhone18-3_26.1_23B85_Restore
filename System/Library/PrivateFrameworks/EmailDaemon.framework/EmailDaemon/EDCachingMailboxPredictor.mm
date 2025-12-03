@interface EDCachingMailboxPredictor
- (EDCachingMailboxPredictor)initWithPredictor:(id)predictor;
- (id)_cacheKeyForMessages:(id)messages;
- (id)_propertyKeysForMessage:(id)message;
- (id)predictMailboxIDsForMessages:(id)messages limit:(unint64_t)limit;
- (void)_trackCacheKey:(id)key forPropertyKey:(id)propertyKey;
- (void)invalidatePredictionsAffectedByMessage:(id)message;
- (void)removeAllPredictions;
@end

@implementation EDCachingMailboxPredictor

- (EDCachingMailboxPredictor)initWithPredictor:(id)predictor
{
  predictorCopy = predictor;
  v10.receiver = self;
  v10.super_class = EDCachingMailboxPredictor;
  v5 = [(EDCachingMailboxPredictor *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(EDCachingMailboxPredictor *)v5 setPredictor:predictorCopy];
    v7 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    [(EDCachingMailboxPredictor *)v6 setCache:v7];

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(EDCachingMailboxPredictor *)v6 setCacheKeysByProperty:dictionary];
  }

  return v6;
}

- (id)predictMailboxIDsForMessages:(id)messages limit:(unint64_t)limit
{
  v35 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  v6 = [(EDCachingMailboxPredictor *)self _cacheKeyForMessages:?];
  cache = [(EDCachingMailboxPredictor *)self cache];
  v8 = [cache objectForKey:v6];

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

    predictor = [(EDCachingMailboxPredictor *)self predictor];
    v24 = [predictor predictMailboxIDsForMessages:messagesCopy limit:limit];

    cache2 = [(EDCachingMailboxPredictor *)self cache];
    [cache2 setObject:v24 forKey:v6];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = messagesCopy;
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

- (void)invalidatePredictionsAffectedByMessage:(id)message
{
  v31 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(EDCachingMailboxPredictor *)self _propertyKeysForMessage:message];
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
        cacheKeysByProperty = [(EDCachingMailboxPredictor *)self cacheKeysByProperty];
        v8 = [cacheKeysByProperty objectForKeyedSubscript:v6];
        allObjects = [v8 allObjects];

        v10 = [allObjects countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v10)
        {
          v11 = *v22;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v22 != v11)
              {
                objc_enumerationMutation(allObjects);
              }

              v13 = *(*(&v21 + 1) + 8 * j);
              cache = [(EDCachingMailboxPredictor *)self cache];
              [cache removeObjectForKey:v13];

              cacheKeysByProperty2 = [(EDCachingMailboxPredictor *)self cacheKeysByProperty];
              v16 = [cacheKeysByProperty2 objectForKeyedSubscript:v6];
              [v16 removeObject:v13];
            }

            v10 = [allObjects countByEnumeratingWithState:&v21 objects:v29 count:16];
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
  cacheKeysByProperty = [(EDCachingMailboxPredictor *)self cacheKeysByProperty];
  [cacheKeysByProperty removeAllObjects];

  cache = [(EDCachingMailboxPredictor *)self cache];
  [cache removeAllObjects];
}

- (id)_cacheKeyForMessages:(id)messages
{
  v3 = [messages ef_mapSelector:sel_persistentID];
  v4 = [v3 mutableCopy];

  [v4 sortUsingSelector:sel_compare_];
  v5 = [v4 componentsJoinedByString:{@", "}];

  return v5;
}

- (void)_trackCacheKey:(id)key forPropertyKey:(id)propertyKey
{
  keyCopy = key;
  propertyKeyCopy = propertyKey;
  cacheKeysByProperty = [(EDCachingMailboxPredictor *)self cacheKeysByProperty];
  v8 = [cacheKeysByProperty objectForKeyedSubscript:propertyKeyCopy];

  if (!v8)
  {
    v9 = [MEMORY[0x1E695DFA8] set];
    cacheKeysByProperty2 = [(EDCachingMailboxPredictor *)self cacheKeysByProperty];
    [cacheKeysByProperty2 setObject:v9 forKeyedSubscript:propertyKeyCopy];

    v8 = v9;
  }

  [v8 addObject:keyCopy];
}

- (id)_propertyKeysForMessage:(id)message
{
  v37 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v30 = messageCopy;
  array = [MEMORY[0x1E695DF70] array];
  listIDHash = [messageCopy listIDHash];
  if (listIDHash)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(listIDHash, "int64Value")}];
    [array addObject:v5];
  }

  conversationID = [messageCopy conversationID];
  if (conversationID)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:conversationID];
    [array addObject:v7];
  }

  v8 = [messageCopy to];
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
        [array addObject:v17];
      }

      v10 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v10);
  }

  from = [v30 from];
  firstObject = [from firstObject];

  if (firstObject)
  {
    v20 = objc_alloc(MEMORY[0x1E699B990]);
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"S %@", firstObject];
    v22 = [v20 initWithString:v21];

    v23 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v22, "int64Value")}];
    [array addObject:v23];
  }

  persistentID = [v30 persistentID];
  longLongValue = [persistentID longLongValue];

  if (longLongValue)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithLongLong:longLongValue];
    [array addObject:v26];
  }

  v27 = *MEMORY[0x1E69E9840];

  return array;
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