@interface MapsSuggestionsLimitedDictionary
- (MapsSuggestionsLimitedDictionary)initWithMaximumCapacity:(unint64_t)a3;
- (NSString)description;
- (NSString)uniqueName;
- (double)totalHitRatio;
- (id)objectForKeyedSubscript:(id)a3;
- (unint64_t)count;
- (unint64_t)hitsOnKey:(id)a3;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)setObject:(id)a3 forKeyedSubscript:(id)a4;
- (void)triggerFired:(id)a3;
@end

@implementation MapsSuggestionsLimitedDictionary

- (MapsSuggestionsLimitedDictionary)initWithMaximumCapacity:(unint64_t)a3
{
  v3 = self;
  v25 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v16.receiver = self;
    v16.super_class = MapsSuggestionsLimitedDictionary;
    v5 = [(MapsSuggestionsLimitedDictionary *)&v16 init];
    v6 = v5;
    if (v5)
    {
      v5->_maxCapacity = a3;
      v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:a3];
      dict = v6->_dict;
      v6->_dict = v7;

      v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:a3];
      hits = v6->_hits;
      v6->_hits = v9;

      v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a3];
      order = v6->_order;
      v6->_order = v11;

      v6->_totalHits = 0;
      v6->_totalMisses = 0;
    }

    v3 = v6;
    v13 = v3;
  }

  else
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v18 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsLimitedDictionary.m";
      v19 = 1024;
      v20 = 32;
      v21 = 2082;
      v22 = "[MapsSuggestionsLimitedDictionary initWithMaximumCapacity:]";
      v23 = 2082;
      v24 = "0u == maxCapacity";
      _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. This collection won't grow, so zero doens't make any sense.", buf, 0x26u);
    }

    v13 = 0;
  }

  return v13;
}

- (id)objectForKeyedSubscript:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(NSMutableDictionary *)v5->_hits objectForKey:v4];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 unsignedIntegerValue] + 1;
      hits = v5->_hits;
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
      [(NSMutableDictionary *)hits setObject:v10 forKey:v4];

      if (MapsSuggestionsLoggingIsVerbose())
      {
        v11 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          [(MapsSuggestionsLimitedDictionary *)v5 totalHitRatio];
          v17 = 138412802;
          v18 = v4;
          v19 = 1024;
          *v20 = v8;
          *&v20[4] = 2048;
          *&v20[6] = v12;
          _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_DEBUG, "HIT '%@' x %u (total ratio: %.2f)", &v17, 0x1Cu);
        }
      }

      ++v5->_totalHits;
      v13 = [(NSMutableDictionary *)v5->_dict objectForKey:v4];
    }

    else
    {
      if (MapsSuggestionsLoggingIsVerbose())
      {
        v14 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [(MapsSuggestionsLimitedDictionary *)v5 totalHitRatio];
          v17 = 138412546;
          v18 = v4;
          v19 = 2048;
          *v20 = v15;
          _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_DEBUG, "MISSED '%@' (total ratio: %.2f)", &v17, 0x16u);
        }
      }

      v13 = 0;
      ++v5->_totalMisses;
    }

    objc_sync_exit(v5);
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
    {
      v17 = 136446978;
      v18 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsLimitedDictionary.m";
      v19 = 1024;
      *v20 = 48;
      *&v20[4] = 2082;
      *&v20[6] = "[MapsSuggestionsLimitedDictionary objectForKeyedSubscript:]";
      v21 = 2082;
      v22 = "nil == (key)";
      _os_log_impl(&dword_1C5126000, &v5->super, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a key", &v17, 0x26u);
    }

    v13 = 0;
  }

  return v13;
}

- (void)setObject:(id)a3 forKeyedSubscript:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsLimitedDictionary.m";
      v14 = 1024;
      v15 = 73;
      v16 = 2082;
      v17 = "[MapsSuggestionsLimitedDictionary setObject:forKeyedSubscript:]";
      v18 = 2082;
      v19 = "nil == (key)";
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a key", &v12, 0x26u);
    }

    goto LABEL_13;
  }

  if (!v6)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsLimitedDictionary.m";
      v14 = 1024;
      v15 = 74;
      v16 = 2082;
      v17 = "[MapsSuggestionsLimitedDictionary setObject:forKeyedSubscript:]";
      v18 = 2082;
      v19 = "nil == (obj)";
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an object", &v12, 0x26u);
    }

LABEL_13:

    goto LABEL_14;
  }

  v8 = self;
  objc_sync_enter(v8);
  v9 = [(NSMutableArray *)v8->_order indexOfObject:v7];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)v8->_order removeObjectAtIndex:v9];
  }

  if ([(NSMutableArray *)v8->_order count]+ 1 > v8->_maxCapacity)
  {
    v10 = [(NSMutableArray *)v8->_order firstObject];
    [(NSMutableArray *)v8->_order removeObjectAtIndex:0];
    [(NSMutableDictionary *)v8->_dict removeObjectForKey:v10];
    [(NSMutableDictionary *)v8->_hits removeObjectForKey:v10];
  }

  [(NSMutableDictionary *)v8->_dict setObject:v6 forKey:v7];
  [(NSMutableDictionary *)v8->_hits setObject:&unk_1F4470F78 forKey:v7];
  [(NSMutableArray *)v8->_order addObject:v7];
  objc_sync_exit(v8);

LABEL_14:
}

- (void)removeObjectForKey:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSMutableDictionary *)v4->_dict removeObjectForKey:v5];
  [(NSMutableDictionary *)v4->_hits removeObjectForKey:v5];
  [(NSMutableArray *)v4->_order removeObject:v5];
  objc_sync_exit(v4);
}

- (void)removeAllObjects
{
  obj = self;
  objc_sync_enter(obj);
  [(NSMutableDictionary *)obj->_dict removeAllObjects];
  [(NSMutableArray *)obj->_order removeAllObjects];
  obj->_totalHits = 0;
  obj->_totalMisses = 0;
  objc_sync_exit(obj);
}

- (unint64_t)count
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_dict count];
  objc_sync_exit(v2);

  return v3;
}

- (unint64_t)hitsOnKey:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(NSMutableDictionary *)v5->_hits objectForKey:v4];
    v7 = [v6 unsignedIntegerValue];

    objc_sync_exit(v5);
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446978;
      v11 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsLimitedDictionary.m";
      v12 = 1024;
      v13 = 127;
      v14 = 2082;
      v15 = "[MapsSuggestionsLimitedDictionary hitsOnKey:]";
      v16 = 2082;
      v17 = "nil == (key)";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a key", &v10, 0x26u);
    }

    v7 = 0;
  }

  return v7;
}

- (double)totalHitRatio
{
  v2 = self;
  objc_sync_enter(v2);
  totalHits = v2->_totalHits;
  v4 = v2->_totalMisses + totalHits;
  if (v4)
  {
    v5 = totalHits / v4;
  }

  else
  {
    v5 = 0.0;
  }

  objc_sync_exit(v2);

  return v5;
}

- (NSString)description
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  context = objc_autoreleasePoolPush();
  v21.receiver = v2;
  v21.super_class = MapsSuggestionsLimitedDictionary;
  v3 = [(MapsSuggestionsLimitedDictionary *)&v21 description];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@"(%u){ ", -[NSMutableDictionary count](v2->_dict, "count")];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = v2->_order;
  v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v5)
  {
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)v2->_hits objectForKeyedSubscript:v8];
        v10 = [v9 unsignedIntegerValue];
        v11 = [(NSMutableDictionary *)v2->_dict objectForKeyedSubscript:v8];
        [v4 appendFormat:@"'%@' (%u hits) => '%@', ", v8, v10, v11];
      }

      v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v5);
  }

  [(MapsSuggestionsLimitedDictionary *)v2 totalHitRatio];
  [v4 appendFormat:@"} (hit ratio: %.2f)", v12];
  v13 = [v4 copy];

  objc_autoreleasePoolPop(context);
  objc_sync_exit(v2);

  return v13;
}

- (void)triggerFired:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [(MapsSuggestionsLimitedDictionary *)self uniqueName];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "Throwing away all content for %@", &v6, 0xCu);
  }

  [(MapsSuggestionsLimitedDictionary *)self removeAllObjects];
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

@end