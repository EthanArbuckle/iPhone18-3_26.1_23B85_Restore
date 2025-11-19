@interface IDSRateLimiter
- (BOOL)underLimitForItem:(id)a3 isLastBeforeLimit:(BOOL *)a4;
- (IDSRateLimiter)initWithLimit:(int64_t)a3 timeLimit:(double)a4;
- (double)_timeLimitForItem:(id)a3;
- (double)timeToUnderLimit:(id)a3;
- (id)description;
- (int64_t)_limitForItem:(id)a3;
- (void)cleanupExpiredItems;
- (void)clearAllItems;
- (void)clearItem:(id)a3;
- (void)configureLimit:(int64_t)a3 timeLimit:(double)a4 forItem:(id)a5;
- (void)noteItem:(id)a3;
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
  v4 = [(IDSRateLimiter *)self cacheMap];
  v5 = [v4 countByEnumeratingWithState:&v41 objects:v50 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v41 + 1) + 8 * v8);
        v10 = [(IDSRateLimiter *)self cacheMap];
        v11 = [v10 objectForKeyedSubscript:v9];

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
      v6 = [v4 countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v6);
  }

  v17 = [v3 count];
  v18 = [MEMORY[0x1E69A60E0] encryption];
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
  if (v17)
  {
    if (v19)
    {
      v20 = [(IDSRateLimiter *)self _unlockedDescription];
      *buf = 138412546;
      v47 = v3;
      v48 = 2112;
      v49 = v20;
      _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_INFO, "Cleaning expired negative items {removeItems: %@, cache: %@}", buf, 0x16u);
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
          v29 = [(IDSRateLimiter *)self cacheMap];
          v30 = [v29 objectForKeyedSubscript:v28];

          if (v30)
          {
            [v30 time];
            v32 = v22 - v31;
            [(IDSRateLimiter *)self _timeLimitForItem:v28];
            if (v32 > v33)
            {
              v34 = [(IDSRateLimiter *)self cacheMap];
              [v34 removeObjectForKey:v28];
            }
          }

          ++v27;
        }

        while (v25 != v27);
        v25 = [v23 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v25);
    }

    v35 = [(IDSRateLimiter *)self cacheMap];
    v36 = [v35 count];

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
      _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_INFO, "No expired items to clean", buf, 2u);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (IDSRateLimiter)initWithLimit:(int64_t)a3 timeLimit:(double)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E69A60E0] encryption];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v14 = a3;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "Setting up rate limiter {limit: %ld, timeLimit: %f}", buf, 0x16u);
  }

  v12.receiver = self;
  v12.super_class = IDSRateLimiter;
  v8 = [(IDSRateLimiter *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_limit = a3;
    v8->_timeLimit = a4;
    cacheMap = v8->_cacheMap;
    v8->_cacheMap = 0;

    v9->_lock._os_unfair_lock_opaque = 0;
  }

  return v9;
}

- (void)configureLimit:(int64_t)a3 timeLimit:(double)a4 forItem:(id)a5
{
  v8 = a5;
  os_unfair_lock_lock(&self->_lock);
  v9 = [(IDSRateLimiter *)self limitForItem];

  if (!v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(IDSRateLimiter *)self setLimitForItem:v10];
  }

  v11 = [(IDSRateLimiter *)self timeLimitForItem];

  if (!v11)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(IDSRateLimiter *)self setTimeLimitForItem:v12];
  }

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v14 = [(IDSRateLimiter *)self limitForItem];
  [v14 setObject:v13 forKeyedSubscript:v8];

  v15 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  v16 = [(IDSRateLimiter *)self timeLimitForItem];
  [v16 setObject:v15 forKeyedSubscript:v8];

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)_limitForItem:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [(IDSRateLimiter *)self limitForItem];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [(IDSRateLimiter *)self limitForItem];
    v8 = [v7 objectForKeyedSubscript:v4];
    v9 = [v8 integerValue];
  }

  else
  {
    v9 = [(IDSRateLimiter *)self limit];
  }

  return v9;
}

- (double)_timeLimitForItem:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [(IDSRateLimiter *)self timeLimitForItem];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [(IDSRateLimiter *)self timeLimitForItem];
    v8 = [v7 objectForKeyedSubscript:v4];
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

- (BOOL)underLimitForItem:(id)a3 isLastBeforeLimit:(BOOL *)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(IDSRateLimiter *)self cleanupExpiredItems];
  os_unfair_lock_lock(&self->_lock);
  v7 = [(IDSRateLimiter *)self cacheMap];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (v8)
  {
    [v8 count];
    [(IDSRateLimiter *)self limit];
    v9 = [v8 count];
    v10 = v9 < [(IDSRateLimiter *)self _limitForItem:v6];
    if (!a4)
    {
      goto LABEL_7;
    }

    v11 = [v8 count] + 1;
    *a4 = v11 == [(IDSRateLimiter *)self limit];
    v12 = [v8 count] + 1;
    v13 = v12 == [(IDSRateLimiter *)self _limitForItem:v6];
  }

  else
  {
    v10 = 1;
    if (!a4)
    {
      goto LABEL_7;
    }

    v13 = 0;
  }

  *a4 = v13;
LABEL_7:
  v14 = [MEMORY[0x1E69A60E0] encryption];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    if (v10)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    v16 = [(IDSRateLimiter *)self _unlockedDescription];
    v18 = 138412802;
    v19 = v15;
    v20 = 2112;
    v21 = v6;
    v22 = 2112;
    v23 = v16;
    _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_INFO, "Checking under limit {underLimit: %@, item: %@, cache: %@}", &v18, 0x20u);
  }

  os_unfair_lock_unlock(&self->_lock);
  return v10;
}

- (void)noteItem:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(IDSRateLimiter *)self cleanupExpiredItems];
  os_unfair_lock_lock(&self->_lock);
  v5 = [(IDSRateLimiter *)self cacheMap];

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(IDSRateLimiter *)self setCacheMap:v6];
  }

  v7 = [(IDSRateLimiter *)self cacheMap];
  v8 = [v7 objectForKeyedSubscript:v4];

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
  v13 = [(IDSRateLimiter *)self cacheMap];
  [v13 setObject:v12 forKeyedSubscript:v4];

  v14 = [MEMORY[0x1E69A60E0] encryption];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(IDSRateLimiter *)self _unlockedDescription];
    v16 = 138412546;
    v17 = v4;
    v18 = 2112;
    v19 = v15;
    _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEFAULT, "Noting item {item: %@, cache: %@}", &v16, 0x16u);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)clearItem:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(IDSRateLimiter *)self cacheMap];
  [v5 removeObjectForKey:v4];

  v6 = [(IDSRateLimiter *)self cacheMap];
  v7 = [v6 count];

  if (!v7)
  {
    [(IDSRateLimiter *)self setCacheMap:0];
  }

  v8 = [MEMORY[0x1E69A60E0] encryption];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(IDSRateLimiter *)self _unlockedDescription];
    v10 = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "Clearing item {item: %@, cache: %@}", &v10, 0x16u);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)clearAllItems
{
  v8 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = [(IDSRateLimiter *)self cacheMap];
  [v3 removeAllObjects];

  [(IDSRateLimiter *)self setCacheMap:0];
  v4 = [MEMORY[0x1E69A60E0] encryption];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(IDSRateLimiter *)self _unlockedDescription];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "Clearing all items { cache: %@}", &v6, 0xCu);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (double)timeToUnderLimit:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(IDSRateLimiter *)self cleanupExpiredItems];
  os_unfair_lock_lock(&self->_lock);
  v5 = [(IDSRateLimiter *)self cacheMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = 0.0;
  if (v6)
  {
    v8 = [v6 count];
    if (v8 >= [(IDSRateLimiter *)self _limitForItem:v4])
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v10 = v9;
      [(IDSRateLimiter *)self _timeLimitForItem:v4];
      v12 = v11;
      [v6 time];
      v7 = fmax(v12 - (v10 - v13), 0.0);
    }
  }

  v14 = [MEMORY[0x1E69A60E0] encryption];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [(IDSRateLimiter *)self _unlockedDescription];
    v17 = 134218498;
    v18 = v7;
    v19 = 2112;
    v20 = v4;
    v21 = 2112;
    v22 = v15;
    _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_INFO, "Checking time until {timeUntilUnder: %f, item: %@, cache: %@}", &v17, 0x20u);
  }

  os_unfair_lock_unlock(&self->_lock);
  return v7;
}

- (id)description
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(IDSRateLimiter *)self cacheMap];
  v4 = [v3 copy];

  os_unfair_lock_unlock(&self->_lock);
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p> limit: %ld timeLimit: %f map: %@", objc_opt_class(), self, self->_limit, *&self->_timeLimit, v4];

  return v5;
}

@end