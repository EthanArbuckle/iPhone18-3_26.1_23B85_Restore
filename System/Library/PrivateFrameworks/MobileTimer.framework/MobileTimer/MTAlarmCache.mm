@interface MTAlarmCache
- (BOOL)_isUpdateNeeded;
- (MTAlarmCache)initWithUpdateBlock:(id)block;
- (void)_withLock:(id)lock;
- (void)markNeedsUpdate;
@end

@implementation MTAlarmCache

- (BOOL)_isUpdateNeeded
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __31__MTAlarmCache__isUpdateNeeded__block_invoke;
  v4[3] = &unk_1E7B0CAC0;
  v4[4] = self;
  v4[5] = &v5;
  [(MTAlarmCache *)self _withLock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (MTAlarmCache)initWithUpdateBlock:(id)block
{
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = MTAlarmCache;
  v5 = [(MTAlarmCache *)&v14 init];
  if (v5)
  {
    array = [MEMORY[0x1E695DF70] array];
    orderedAlarms = v5->_orderedAlarms;
    v5->_orderedAlarms = array;

    array2 = [MEMORY[0x1E695DF70] array];
    sleepAlarms = v5->_sleepAlarms;
    v5->_sleepAlarms = array2;

    nextAlarm = v5->_nextAlarm;
    v5->_nextAlarm = 0;

    v5->_needsUpdate = 1;
    v11 = [blockCopy copy];
    updateBlock = v5->_updateBlock;
    v5->_updateBlock = v11;

    v5->_cacheLock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_cacheLock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_cacheLock);
}

- (void)markNeedsUpdate
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __31__MTAlarmCache_markNeedsUpdate__block_invoke;
  v2[3] = &unk_1E7B0C9D8;
  v2[4] = self;
  [(MTAlarmCache *)self _withLock:v2];
}

void __61__MTAlarmCache__getCachedAlarmsWithCompletion_doSynchronous___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
    v13 = MTLogForCategory(3);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __61__MTAlarmCache__getCachedAlarmsWithCompletion_doSynchronous___block_invoke_cold_1(a1, v12, v13);
    }

    v14 = *(a1 + 40);
    if (v14)
    {
      (*(v14 + 16))(v14, 0, 0, 0, v12);
    }
  }

  else
  {
    v15 = *(a1 + 32);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __61__MTAlarmCache__getCachedAlarmsWithCompletion_doSynchronous___block_invoke_2;
    v17[3] = &unk_1E7B0DF88;
    v17[4] = v15;
    v18 = v9;
    v19 = v10;
    v20 = v11;
    v21 = *(a1 + 48);
    v22 = *(a1 + 64);
    [v15 _withLock:v17];
    v16 = *(a1 + 40);
    if (v16)
    {
      (*(v16 + 16))(v16, *(*(*(a1 + 48) + 8) + 40), *(*(*(a1 + 56) + 8) + 40), *(*(*(a1 + 64) + 8) + 40), 0);
    }
  }
}

void __61__MTAlarmCache__getCachedAlarmsWithCompletion_doSynchronous___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  v5 = [*(a1 + 48) copy];
  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = v5;

  v8 = [*(a1 + 56) copy];
  v9 = *(a1 + 32);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  *(*(a1 + 32) + 8) = 0;
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(*(a1 + 32) + 24));
  objc_storeStrong((*(*(a1 + 72) + 8) + 40), *(*(a1 + 32) + 32));
  v11 = *(*(a1 + 32) + 40);
  v12 = (*(*(a1 + 80) + 8) + 40);

  objc_storeStrong(v12, v11);
}

void __61__MTAlarmCache__getCachedAlarmsWithCompletion_doSynchronous___block_invoke_2(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 24));
  objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 32));
  v2 = *(a1[4] + 40);
  v3 = (*(a1[7] + 8) + 40);

  objc_storeStrong(v3, v2);
}

- (void)_getCachedAlarmsWithCompletion:(uint64_t)a1 doSynchronous:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1B1F9F000, a2, OS_LOG_TYPE_DEBUG, "%@ - Cache Miss", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __61__MTAlarmCache__getCachedAlarmsWithCompletion_doSynchronous___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_1B1F9F000, log, OS_LOG_TYPE_ERROR, "%{public}@ - Error getting alarms: %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end