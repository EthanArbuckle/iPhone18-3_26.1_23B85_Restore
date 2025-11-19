@interface MTTimerCache
- (BOOL)_isUpdateNeeded;
- (MTTimerCache)initWithUpdateBlock:(id)a3;
- (void)_withLock:(id)a3;
- (void)markNeedsUpdate;
@end

@implementation MTTimerCache

- (BOOL)_isUpdateNeeded
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __31__MTTimerCache__isUpdateNeeded__block_invoke;
  v4[3] = &unk_1E7B0CAC0;
  v4[4] = self;
  v4[5] = &v5;
  [(MTTimerCache *)self _withLock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (MTTimerCache)initWithUpdateBlock:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MTTimerCache;
  v5 = [(MTTimerCache *)&v12 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    orderedTimers = v5->_orderedTimers;
    v5->_orderedTimers = v6;

    nextTimer = v5->_nextTimer;
    v5->_nextTimer = 0;

    v5->_needsUpdate = 1;
    v9 = [v4 copy];
    updateBlock = v5->_updateBlock;
    v5->_updateBlock = v9;

    v5->_cacheLock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

- (void)_withLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_cacheLock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_cacheLock);
}

- (void)markNeedsUpdate
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __31__MTTimerCache_markNeedsUpdate__block_invoke;
  v2[3] = &unk_1E7B0C9D8;
  v2[4] = self;
  [(MTTimerCache *)self _withLock:v2];
}

void __61__MTTimerCache__getCachedTimersWithCompletion_doSynchronous___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = MTLogForCategory(4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __61__MTTimerCache__getCachedTimersWithCompletion_doSynchronous___block_invoke_cold_1(a1, v9, v10);
    }

    v11 = *(a1 + 40);
    if (v11)
    {
      (*(v11 + 16))(v11, 0, 0, v9);
    }
  }

  else
  {
    v12 = *(a1 + 32);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __61__MTTimerCache__getCachedTimersWithCompletion_doSynchronous___block_invoke_2;
    v14[3] = &unk_1E7B0EEF8;
    v14[4] = v12;
    v15 = v7;
    v16 = v8;
    v17 = *(a1 + 48);
    [v12 _withLock:v14];
    v13 = *(a1 + 40);
    if (v13)
    {
      (*(v13 + 16))(v13, *(*(*(a1 + 48) + 8) + 40), *(*(*(a1 + 56) + 8) + 40), 0);
    }
  }
}

void __61__MTTimerCache__getCachedTimersWithCompletion_doSynchronous___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  v5 = [*(a1 + 48) copy];
  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = v5;

  *(*(a1 + 32) + 8) = 0;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(*(a1 + 32) + 24));
  v8 = *(*(a1 + 32) + 32);
  v9 = (*(*(a1 + 64) + 8) + 40);

  objc_storeStrong(v9, v8);
}

void __61__MTTimerCache__getCachedTimersWithCompletion_doSynchronous___block_invoke_2(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 24));
  v2 = *(a1[4] + 32);
  v3 = (*(a1[6] + 8) + 40);

  objc_storeStrong(v3, v2);
}

void __61__MTTimerCache__getCachedTimersWithCompletion_doSynchronous___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_1B1F9F000, log, OS_LOG_TYPE_ERROR, "%{public}@ - Error getting timers: %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end