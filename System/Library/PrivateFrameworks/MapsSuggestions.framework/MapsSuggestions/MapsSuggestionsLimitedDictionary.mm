@interface MapsSuggestionsLimitedDictionary
- (MapsSuggestionsLimitedDictionary)initWithMaximumCapacity:(unint64_t)capacity;
- (NSString)description;
- (NSString)uniqueName;
- (double)totalHitRatio;
- (id)objectForKeyedSubscript:(id)subscript;
- (unint64_t)count;
- (unint64_t)hitsOnKey:(id)key;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
- (void)triggerFired:(id)fired;
@end

@implementation MapsSuggestionsLimitedDictionary

- (MapsSuggestionsLimitedDictionary)initWithMaximumCapacity:(unint64_t)capacity
{
  selfCopy = self;
  v25 = *MEMORY[0x1E69E9840];
  if (capacity)
  {
    v16.receiver = self;
    v16.super_class = MapsSuggestionsLimitedDictionary;
    v5 = [(MapsSuggestionsLimitedDictionary *)&v16 init];
    v6 = v5;
    if (v5)
    {
      v5->_maxCapacity = capacity;
      v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:capacity];
      dict = v6->_dict;
      v6->_dict = v7;

      v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:capacity];
      hits = v6->_hits;
      v6->_hits = v9;

      v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:capacity];
      order = v6->_order;
      v6->_order = v11;

      v6->_totalHits = 0;
      v6->_totalMisses = 0;
    }

    selfCopy = v6;
    v13 = selfCopy;
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

- (id)objectForKeyedSubscript:(id)subscript
{
  v23 = *MEMORY[0x1E69E9840];
  subscriptCopy = subscript;
  if (subscriptCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [(NSMutableDictionary *)selfCopy->_hits objectForKey:subscriptCopy];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 unsignedIntegerValue] + 1;
      hits = selfCopy->_hits;
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
      [(NSMutableDictionary *)hits setObject:v10 forKey:subscriptCopy];

      if (MapsSuggestionsLoggingIsVerbose())
      {
        v11 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          [(MapsSuggestionsLimitedDictionary *)selfCopy totalHitRatio];
          v17 = 138412802;
          v18 = subscriptCopy;
          v19 = 1024;
          *v20 = v8;
          *&v20[4] = 2048;
          *&v20[6] = v12;
          _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_DEBUG, "HIT '%@' x %u (total ratio: %.2f)", &v17, 0x1Cu);
        }
      }

      ++selfCopy->_totalHits;
      v13 = [(NSMutableDictionary *)selfCopy->_dict objectForKey:subscriptCopy];
    }

    else
    {
      if (MapsSuggestionsLoggingIsVerbose())
      {
        v14 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [(MapsSuggestionsLimitedDictionary *)selfCopy totalHitRatio];
          v17 = 138412546;
          v18 = subscriptCopy;
          v19 = 2048;
          *v20 = v15;
          _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_DEBUG, "MISSED '%@' (total ratio: %.2f)", &v17, 0x16u);
        }
      }

      v13 = 0;
      ++selfCopy->_totalMisses;
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = GEOFindOrCreateLog();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      v17 = 136446978;
      v18 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsLimitedDictionary.m";
      v19 = 1024;
      *v20 = 48;
      *&v20[4] = 2082;
      *&v20[6] = "[MapsSuggestionsLimitedDictionary objectForKeyedSubscript:]";
      v21 = 2082;
      v22 = "nil == (key)";
      _os_log_impl(&dword_1C5126000, &selfCopy->super, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a key", &v17, 0x26u);
    }

    v13 = 0;
  }

  return v13;
}

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  v20 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  subscriptCopy = subscript;
  if (!subscriptCopy)
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

  if (!objectCopy)
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

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(NSMutableArray *)selfCopy->_order indexOfObject:subscriptCopy];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)selfCopy->_order removeObjectAtIndex:v9];
  }

  if ([(NSMutableArray *)selfCopy->_order count]+ 1 > selfCopy->_maxCapacity)
  {
    firstObject = [(NSMutableArray *)selfCopy->_order firstObject];
    [(NSMutableArray *)selfCopy->_order removeObjectAtIndex:0];
    [(NSMutableDictionary *)selfCopy->_dict removeObjectForKey:firstObject];
    [(NSMutableDictionary *)selfCopy->_hits removeObjectForKey:firstObject];
  }

  [(NSMutableDictionary *)selfCopy->_dict setObject:objectCopy forKey:subscriptCopy];
  [(NSMutableDictionary *)selfCopy->_hits setObject:&unk_1F4470F78 forKey:subscriptCopy];
  [(NSMutableArray *)selfCopy->_order addObject:subscriptCopy];
  objc_sync_exit(selfCopy);

LABEL_14:
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableDictionary *)selfCopy->_dict removeObjectForKey:keyCopy];
  [(NSMutableDictionary *)selfCopy->_hits removeObjectForKey:keyCopy];
  [(NSMutableArray *)selfCopy->_order removeObject:keyCopy];
  objc_sync_exit(selfCopy);
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableDictionary *)selfCopy->_dict count];
  objc_sync_exit(selfCopy);

  return v3;
}

- (unint64_t)hitsOnKey:(id)key
{
  v18 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (keyCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [(NSMutableDictionary *)selfCopy->_hits objectForKey:keyCopy];
    unsignedIntegerValue = [v6 unsignedIntegerValue];

    objc_sync_exit(selfCopy);
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

    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (double)totalHitRatio
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  totalHits = selfCopy->_totalHits;
  v4 = selfCopy->_totalMisses + totalHits;
  if (v4)
  {
    v5 = totalHits / v4;
  }

  else
  {
    v5 = 0.0;
  }

  objc_sync_exit(selfCopy);

  return v5;
}

- (NSString)description
{
  v23 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  context = objc_autoreleasePoolPush();
  v21.receiver = selfCopy;
  v21.super_class = MapsSuggestionsLimitedDictionary;
  v3 = [(MapsSuggestionsLimitedDictionary *)&v21 description];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@"(%u){ ", -[NSMutableDictionary count](selfCopy->_dict, "count")];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = selfCopy->_order;
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
        v9 = [(NSMutableDictionary *)selfCopy->_hits objectForKeyedSubscript:v8];
        unsignedIntegerValue = [v9 unsignedIntegerValue];
        v11 = [(NSMutableDictionary *)selfCopy->_dict objectForKeyedSubscript:v8];
        [v4 appendFormat:@"'%@' (%u hits) => '%@', ", v8, unsignedIntegerValue, v11];
      }

      v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v5);
  }

  [(MapsSuggestionsLimitedDictionary *)selfCopy totalHitRatio];
  [v4 appendFormat:@"} (hit ratio: %.2f)", v12];
  v13 = [v4 copy];

  objc_autoreleasePoolPop(context);
  objc_sync_exit(selfCopy);

  return v13;
}

- (void)triggerFired:(id)fired
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [(MapsSuggestionsLimitedDictionary *)self uniqueName];
    v6 = 138412290;
    v7 = uniqueName;
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