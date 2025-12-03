@interface CAMTimerCache
- (BOOL)isRunningTimerForKey:(id)key;
- (CAMTimerCache)init;
- (CAMTimerCacheDelegate)delegate;
- (void)_handleTimer:(id)timer forKey:(id)key;
- (void)cancelAllTimers;
- (void)cancelTimerForKey:(id)key;
- (void)startTimerForKey:(id)key duration:(double)duration;
@end

@implementation CAMTimerCache

- (CAMTimerCache)init
{
  v6.receiver = self;
  v6.super_class = CAMTimerCache;
  v2 = [(CAMTimerCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    timersByType = v2->__timersByType;
    v2->__timersByType = v3;
  }

  return v2;
}

- (void)startTimerForKey:(id)key duration:(double)duration
{
  keyCopy = key;
  _timersByType = [(CAMTimerCache *)self _timersByType];
  v8 = [_timersByType objectForKeyedSubscript:keyCopy];
  if (v8)
  {
    v9 = v8;
    dispatch_suspend(v8);
  }

  else
  {
    objc_initWeak(&location, self);
    v10 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __43__CAMTimerCache_startTimerForKey_duration___block_invoke;
    v13[3] = &unk_1E76FAD38;
    objc_copyWeak(&v16, &location);
    v9 = v10;
    v14 = v9;
    v15 = keyCopy;
    dispatch_source_set_event_handler(v9, v13);

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  v11 = duration * 1000000000.0;
  v12 = dispatch_time(0, v11);
  dispatch_source_set_timer(v9, v12, 0xFFFFFFFFFFFFFFFFLL, (v11 * 0.1));
  [_timersByType setObject:v9 forKeyedSubscript:keyCopy];
  dispatch_resume(v9);
}

void __43__CAMTimerCache_startTimerForKey_duration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleTimer:*(a1 + 32) forKey:*(a1 + 40)];
}

- (void)_handleTimer:(id)timer forKey:(id)key
{
  source = timer;
  keyCopy = key;
  _timersByType = [(CAMTimerCache *)self _timersByType];
  v8 = [_timersByType objectForKeyedSubscript:keyCopy];

  v9 = source;
  if (v8 == source)
  {
    [_timersByType setObject:0 forKeyedSubscript:keyCopy];
    delegate = [(CAMTimerCache *)self delegate];
    [delegate timerCache:self timerDidFireForKey:keyCopy];

    v9 = source;
  }

  dispatch_source_cancel(v9);
}

- (void)cancelTimerForKey:(id)key
{
  keyCopy = key;
  _timersByType = [(CAMTimerCache *)self _timersByType];
  v5 = [_timersByType objectForKeyedSubscript:keyCopy];
  v6 = v5;
  if (v5)
  {
    dispatch_source_cancel(v5);
    [_timersByType setObject:0 forKeyedSubscript:keyCopy];
  }
}

- (void)cancelAllTimers
{
  v13 = *MEMORY[0x1E69E9840];
  _timersByType = [(CAMTimerCache *)self _timersByType];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [_timersByType allValues];
  v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        dispatch_source_cancel(*(*(&v8 + 1) + 8 * v7++));
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [_timersByType removeAllObjects];
}

- (BOOL)isRunningTimerForKey:(id)key
{
  keyCopy = key;
  _timersByType = [(CAMTimerCache *)self _timersByType];
  v6 = [_timersByType objectForKeyedSubscript:keyCopy];

  return v6 != 0;
}

- (CAMTimerCacheDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end