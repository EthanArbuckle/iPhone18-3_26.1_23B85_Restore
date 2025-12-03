@interface IDSRateLimiter
- (BOOL)underLimitForItem:(id)item isLastBeforeLimit:(BOOL *)limit;
- (IDSRateLimiter)initWithLimit:(int64_t)limit timeLimit:(double)timeLimit;
- (double)_timeLimitForItem:(id)item;
- (double)timeToUnderLimit:(id)limit;
- (id)description;
- (int64_t)_limitForItem:(id)item;
- (void)cleanupExpiredItems;
- (void)clearAllItems;
- (void)clearItem:(id)item;
- (void)configureLimit:(int64_t)limit timeLimit:(double)timeLimit forItem:(id)item;
- (void)noteItem:(id)item;
@end

@implementation IDSRateLimiter

- (void)cleanupExpiredItems
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  os_unfair_lock_lock(&self->_lock);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  cacheMap = [(IDSRateLimiter *)self cacheMap];
  v5 = [cacheMap countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v42;
    do
    {
      v8 = 0;
      do
      {
        if (*v42 != v7)
        {
          objc_enumerationMutation(cacheMap);
        }

        v9 = *(*(&v41 + 1) + 8 * v8);
        cacheMap2 = [(IDSRateLimiter *)self cacheMap];
        v11 = [cacheMap2 objectForKeyedSubscript:v9];

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v13 = v12;
        [v11 time];
        v15 = v13 - v14;
        [(IDSRateLimiter *)self _timeLimitForItem:v9];
        if (v15 > v16)
        {
          [v3 addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [cacheMap countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v6);
  }

  v17 = [v3 count];
  encryption = [MEMORY[0x1E69A60E0] encryption];
  v19 = os_log_type_enabled(encryption, OS_LOG_TYPE_INFO);
  if (v17)
  {
    if (v19)
    {
      _unlockedDescription = [(IDSRateLimiter *)self _unlockedDescription];
      *buf = 138412546;
      v47 = v3;
      v48 = 2112;
      v49 = _unlockedDescription;
      _os_log_impl(&dword_1A7AD9000, encryption, OS_LOG_TYPE_INFO, "Cleaning expired negative items {removeItems: %@, cache: %@}", buf, 0x16u);
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v22 = v21;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v23 = v3;
    v24 = [v23 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v38;
      do
      {
        v27 = 0;
        do
        {
          if (*v38 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v37 + 1) + 8 * v27);
          cacheMap3 = [(IDSRateLimiter *)self cacheMap];
          v30 = [cacheMap3 objectForKeyedSubscript:v28];

          if (v30)
          {
            [v30 time];
            v32 = v22 - v31;
            [(IDSRateLimiter *)self _timeLimitForItem:v28];
            if (v32 > v33)
            {
              cacheMap4 = [(IDSRateLimiter *)self cacheMap];
              [cacheMap4 removeObjectForKey:v28];
            }
          }

          ++v27;
        }

        while (v25 != v27);
        v25 = [v23 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v25);
    }

    cacheMap5 = [(IDSRateLimiter *)self cacheMap];
    v36 = [cacheMap5 count];

    if (!v36)
    {
      [(IDSRateLimiter *)self setCacheMap:0];
    }
  }

  else
  {
    if (v19)
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, encryption, OS_LOG_TYPE_INFO, "No expired items to clean", buf, 2u);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (IDSRateLimiter)initWithLimit:(int64_t)limit timeLimit:(double)timeLimit
{
  v17 = *MEMORY[0x1E69E9840];
  encryption = [MEMORY[0x1E69A60E0] encryption];
  if (os_log_type_enabled(encryption, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    limitCopy = limit;
    v15 = 2048;
    timeLimitCopy = timeLimit;
    _os_log_impl(&dword_1A7AD9000, encryption, OS_LOG_TYPE_DEFAULT, "Setting up rate limiter {limit: %ld, timeLimit: %f}", buf, 0x16u);
  }

  v12.receiver = self;
  v12.super_class = IDSRateLimiter;
  v8 = [(IDSRateLimiter *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_limit = limit;
    v8->_timeLimit = timeLimit;
    cacheMap = v8->_cacheMap;
    v8->_cacheMap = 0;

    v9->_lock._os_unfair_lock_opaque = 0;
  }

  return v9;
}

- (void)configureLimit:(int64_t)limit timeLimit:(double)timeLimit forItem:(id)item
{
  itemCopy = item;
  os_unfair_lock_lock(&self->_lock);
  limitForItem = [(IDSRateLimiter *)self limitForItem];

  if (!limitForItem)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(IDSRateLimiter *)self setLimitForItem:v10];
  }

  timeLimitForItem = [(IDSRateLimiter *)self timeLimitForItem];

  if (!timeLimitForItem)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(IDSRateLimiter *)self setTimeLimitForItem:v12];
  }

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:limit];
  limitForItem2 = [(IDSRateLimiter *)self limitForItem];
  [limitForItem2 setObject:v13 forKeyedSubscript:itemCopy];

  v15 = [MEMORY[0x1E696AD98] numberWithDouble:timeLimit];
  timeLimitForItem2 = [(IDSRateLimiter *)self timeLimitForItem];
  [timeLimitForItem2 setObject:v15 forKeyedSubscript:itemCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)_limitForItem:(id)item
{
  itemCopy = item;
  os_unfair_lock_assert_owner(&self->_lock);
  limitForItem = [(IDSRateLimiter *)self limitForItem];
  v6 = [limitForItem objectForKeyedSubscript:itemCopy];

  if (v6)
  {
    limitForItem2 = [(IDSRateLimiter *)self limitForItem];
    v8 = [limitForItem2 objectForKeyedSubscript:itemCopy];
    integerValue = [v8 integerValue];
  }

  else
  {
    integerValue = [(IDSRateLimiter *)self limit];
  }

  return integerValue;
}

- (double)_timeLimitForItem:(id)item
{
  itemCopy = item;
  os_unfair_lock_assert_owner(&self->_lock);
  timeLimitForItem = [(IDSRateLimiter *)self timeLimitForItem];
  v6 = [timeLimitForItem objectForKeyedSubscript:itemCopy];

  if (v6)
  {
    timeLimitForItem2 = [(IDSRateLimiter *)self timeLimitForItem];
    v8 = [timeLimitForItem2 objectForKeyedSubscript:itemCopy];
    [v8 doubleValue];
    v10 = v9;
  }

  else
  {
    [(IDSRateLimiter *)self timeLimit];
    v10 = v11;
  }

  return v10;
}

- (BOOL)underLimitForItem:(id)item isLastBeforeLimit:(BOOL *)limit
{
  v24 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  [(IDSRateLimiter *)self cleanupExpiredItems];
  os_unfair_lock_lock(&self->_lock);
  cacheMap = [(IDSRateLimiter *)self cacheMap];
  v8 = [cacheMap objectForKeyedSubscript:itemCopy];

  if (v8)
  {
    [v8 count];
    [(IDSRateLimiter *)self limit];
    v9 = [v8 count];
    v10 = v9 < [(IDSRateLimiter *)self _limitForItem:itemCopy];
    if (!limit)
    {
      goto LABEL_7;
    }

    v11 = [v8 count] + 1;
    *limit = v11 == [(IDSRateLimiter *)self limit];
    v12 = [v8 count] + 1;
    v13 = v12 == [(IDSRateLimiter *)self _limitForItem:itemCopy];
  }

  else
  {
    v10 = 1;
    if (!limit)
    {
      goto LABEL_7;
    }

    v13 = 0;
  }

  *limit = v13;
LABEL_7:
  encryption = [MEMORY[0x1E69A60E0] encryption];
  if (os_log_type_enabled(encryption, OS_LOG_TYPE_INFO))
  {
    if (v10)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    _unlockedDescription = [(IDSRateLimiter *)self _unlockedDescription];
    v18 = 138412802;
    v19 = v15;
    v20 = 2112;
    v21 = itemCopy;
    v22 = 2112;
    v23 = _unlockedDescription;
    _os_log_impl(&dword_1A7AD9000, encryption, OS_LOG_TYPE_INFO, "Checking under limit {underLimit: %@, item: %@, cache: %@}", &v18, 0x20u);
  }

  os_unfair_lock_unlock(&self->_lock);
  return v10;
}

- (void)noteItem:(id)item
{
  v20 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  [(IDSRateLimiter *)self cleanupExpiredItems];
  os_unfair_lock_lock(&self->_lock);
  cacheMap = [(IDSRateLimiter *)self cacheMap];

  if (!cacheMap)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(IDSRateLimiter *)self setCacheMap:v6];
  }

  cacheMap2 = [(IDSRateLimiter *)self cacheMap];
  v8 = [cacheMap2 objectForKeyedSubscript:itemCopy];

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v10 = v9;
  if (v8)
  {
    v11 = [v8 count] + 1;
  }

  else
  {
    v11 = 1;
  }

  v12 = [[IDSNegativeInfo alloc] initWithTime:v11 count:v10];
  cacheMap3 = [(IDSRateLimiter *)self cacheMap];
  [cacheMap3 setObject:v12 forKeyedSubscript:itemCopy];

  encryption = [MEMORY[0x1E69A60E0] encryption];
  if (os_log_type_enabled(encryption, OS_LOG_TYPE_DEFAULT))
  {
    _unlockedDescription = [(IDSRateLimiter *)self _unlockedDescription];
    v16 = 138412546;
    v17 = itemCopy;
    v18 = 2112;
    v19 = _unlockedDescription;
    _os_log_impl(&dword_1A7AD9000, encryption, OS_LOG_TYPE_DEFAULT, "Noting item {item: %@, cache: %@}", &v16, 0x16u);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)clearItem:(id)item
{
  v14 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  os_unfair_lock_lock(&self->_lock);
  cacheMap = [(IDSRateLimiter *)self cacheMap];
  [cacheMap removeObjectForKey:itemCopy];

  cacheMap2 = [(IDSRateLimiter *)self cacheMap];
  v7 = [cacheMap2 count];

  if (!v7)
  {
    [(IDSRateLimiter *)self setCacheMap:0];
  }

  encryption = [MEMORY[0x1E69A60E0] encryption];
  if (os_log_type_enabled(encryption, OS_LOG_TYPE_DEFAULT))
  {
    _unlockedDescription = [(IDSRateLimiter *)self _unlockedDescription];
    v10 = 138412546;
    v11 = itemCopy;
    v12 = 2112;
    v13 = _unlockedDescription;
    _os_log_impl(&dword_1A7AD9000, encryption, OS_LOG_TYPE_DEFAULT, "Clearing item {item: %@, cache: %@}", &v10, 0x16u);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)clearAllItems
{
  v8 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  cacheMap = [(IDSRateLimiter *)self cacheMap];
  [cacheMap removeAllObjects];

  [(IDSRateLimiter *)self setCacheMap:0];
  encryption = [MEMORY[0x1E69A60E0] encryption];
  if (os_log_type_enabled(encryption, OS_LOG_TYPE_DEFAULT))
  {
    _unlockedDescription = [(IDSRateLimiter *)self _unlockedDescription];
    v6 = 138412290;
    v7 = _unlockedDescription;
    _os_log_impl(&dword_1A7AD9000, encryption, OS_LOG_TYPE_DEFAULT, "Clearing all items { cache: %@}", &v6, 0xCu);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (double)timeToUnderLimit:(id)limit
{
  v23 = *MEMORY[0x1E69E9840];
  limitCopy = limit;
  [(IDSRateLimiter *)self cleanupExpiredItems];
  os_unfair_lock_lock(&self->_lock);
  cacheMap = [(IDSRateLimiter *)self cacheMap];
  v6 = [cacheMap objectForKeyedSubscript:limitCopy];

  v7 = 0.0;
  if (v6)
  {
    v8 = [v6 count];
    if (v8 >= [(IDSRateLimiter *)self _limitForItem:limitCopy])
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v10 = v9;
      [(IDSRateLimiter *)self _timeLimitForItem:limitCopy];
      v12 = v11;
      [v6 time];
      v7 = fmax(v12 - (v10 - v13), 0.0);
    }
  }

  encryption = [MEMORY[0x1E69A60E0] encryption];
  if (os_log_type_enabled(encryption, OS_LOG_TYPE_INFO))
  {
    _unlockedDescription = [(IDSRateLimiter *)self _unlockedDescription];
    v17 = 134218498;
    v18 = v7;
    v19 = 2112;
    v20 = limitCopy;
    v21 = 2112;
    v22 = _unlockedDescription;
    _os_log_impl(&dword_1A7AD9000, encryption, OS_LOG_TYPE_INFO, "Checking time until {timeUntilUnder: %f, item: %@, cache: %@}", &v17, 0x20u);
  }

  os_unfair_lock_unlock(&self->_lock);
  return v7;
}

- (id)description
{
  os_unfair_lock_lock(&self->_lock);
  cacheMap = [(IDSRateLimiter *)self cacheMap];
  v4 = [cacheMap copy];

  os_unfair_lock_unlock(&self->_lock);
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p> limit: %ld timeLimit: %f map: %@", objc_opt_class(), self, self->_limit, *&self->_timeLimit, v4];

  return v5;
}

@end