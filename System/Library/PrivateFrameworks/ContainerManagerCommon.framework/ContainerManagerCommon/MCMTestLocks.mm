@interface MCMTestLocks
+ (id)sharedInstance;
- (BOOL)enabled;
- (MCMTestLocks)init;
- (OS_dispatch_queue)stateQueue;
- (int64_t)countOfLock:(unint64_t)a3;
- (void)_stateQueue_acquireLock:(unint64_t)a3;
- (void)_stateQueue_releaseLock:(unint64_t)a3;
- (void)_stateQueue_updateCountForLock:(unint64_t)a3 byCount:(int64_t)a4;
- (void)acquireLock:(unint64_t)a3;
- (void)releaseAllLocks;
- (void)releaseLock:(unint64_t)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setStateQueue:(id)a3;
- (void)waitOnLock:(unint64_t)a3;
@end

@implementation MCMTestLocks

- (void)setStateQueue:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_stateQueue = &self->_stateQueue;

  objc_storeStrong(p_stateQueue, a3);
}

- (OS_dispatch_queue)stateQueue
{
  result = self->_stateQueue;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)_stateQueue_releaseLock:(unint64_t)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = self->_lockSemaphore[a3];
  v4 = *MEMORY[0x1E69E9840];

  dispatch_semaphore_signal(v3);
}

- (void)_stateQueue_acquireLock:(unint64_t)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = (&self->super.isa + a3);
  v5 = v4[31];
  v6 = v4[16];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__MCMTestLocks__stateQueue_acquireLock___block_invoke;
  block[3] = &unk_1E86AF8A0;
  v11 = v5;
  v12 = a3;
  v7 = v5;
  v8 = v6;
  dispatch_barrier_async(v8, block);

  v9 = *MEMORY[0x1E69E9840];
}

void __40__MCMTestLocks__stateQueue_acquireLock___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = container_log_handle_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v7 = 134217984;
    v8 = v3;
    _os_log_impl(&dword_1DF2C3000, v2, OS_LOG_TYPE_DEFAULT, "Blocking waiters for lock: %llu", &v7, 0xCu);
  }

  dispatch_semaphore_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  v4 = container_log_handle_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v7 = 134217984;
    v8 = v5;
    _os_log_impl(&dword_1DF2C3000, v4, OS_LOG_TYPE_DEFAULT, "Unblocking waiters for lock: %llu", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_stateQueue_updateCountForLock:(unint64_t)a3 byCount:(int64_t)a4
{
  v19 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    lockCount = self->_lockCount;
    v7 = self->_lockCount[a3];
    v8 = v7 + a4;
    if (v7 + a4 < 0)
    {
      v12 = self->_lockCount[a3];
      v11 = container_log_handle_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218496;
        v14 = a3;
        v15 = 2048;
        v16 = a4;
        v17 = 2048;
        v18 = v12;
        _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "Unbalanced update to test lock: %llu by: %ld from: %ld", buf, 0x20u);
      }

      abort();
    }

    if (v7)
    {
      if (v8)
      {
LABEL_5:
        lockCount[a3] = v8;
        goto LABEL_6;
      }
    }

    else
    {
      [(MCMTestLocks *)self _stateQueue_acquireLock:a3];
      if (v8)
      {
        goto LABEL_5;
      }
    }

    [(MCMTestLocks *)self _stateQueue_releaseLock:a3];
    goto LABEL_5;
  }

LABEL_6:
  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)enabled
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  enabled = v2->_enabled;
  objc_sync_exit(v2);

  v4 = *MEMORY[0x1E69E9840];
  return enabled;
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x1E69E9840];
  v4 = self;
  objc_sync_enter(v4);
  if (v3)
  {
    if (!v4->_enabled)
    {
      v5 = container_log_handle_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 0;
        v6 = "Enabled test locks feature.";
        v7 = &v10;
LABEL_8:
        _os_log_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if (v4->_enabled)
  {
    [(MCMTestLocks *)v4 releaseAllLocks];
    v5 = container_log_handle_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 0;
      v6 = "Disabled test locks feature.";
      v7 = &v9;
      goto LABEL_8;
    }

LABEL_9:
  }

  v4->_enabled = v3;
  objc_sync_exit(v4);

  v8 = *MEMORY[0x1E69E9840];
}

- (int64_t)countOfLock:(unint64_t)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = -1;
  if ([(MCMTestLocks *)self enabled])
  {
    v5 = [(MCMTestLocks *)self stateQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __28__MCMTestLocks_countOfLock___block_invoke;
    v9[3] = &unk_1E86B0708;
    v9[4] = self;
    v9[5] = &v10;
    v9[6] = a3;
    dispatch_sync(v5, v9);
  }

  v6 = v11[3];
  _Block_object_dispose(&v10, 8);
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

void *__28__MCMTestLocks_countOfLock___block_invoke(void *result)
{
  v2 = *MEMORY[0x1E69E9840];
  *(*(result[5] + 8) + 24) = *(result[4] + 8 * result[6] + 8);
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)waitOnLock:(unint64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(MCMTestLocks *)self enabled])
  {
    v5 = self->_lockQueue[a3];
    v6 = [MEMORY[0x1E696AFB0] UUID];
    v7 = [v6 UUIDString];

    v8 = container_log_handle_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = [v7 UTF8String];
      v16 = 2048;
      v17 = a3;
      _os_log_impl(&dword_1DF2C3000, v8, OS_LOG_TYPE_DEFAULT, "[%s] Waiting on lock: %llu", buf, 0x16u);
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __27__MCMTestLocks_waitOnLock___block_invoke;
    v11[3] = &unk_1E86AF8A0;
    v12 = v7;
    v13 = a3;
    v9 = v7;
    dispatch_sync(v5, v11);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __27__MCMTestLocks_waitOnLock___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = container_log_handle_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) UTF8String];
    v4 = *(a1 + 40);
    v6 = 136315394;
    v7 = v3;
    v8 = 2048;
    v9 = v4;
    _os_log_impl(&dword_1DF2C3000, v2, OS_LOG_TYPE_DEFAULT, "[%s] No longer waiting on lock: %llu", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)releaseAllLocks
{
  v5[5] = *MEMORY[0x1E69E9840];
  v3 = [(MCMTestLocks *)self stateQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__MCMTestLocks_releaseAllLocks__block_invoke;
  v5[3] = &unk_1E86B0E08;
  v5[4] = self;
  dispatch_sync(v3, v5);

  v4 = *MEMORY[0x1E69E9840];
}

void __31__MCMTestLocks_releaseAllLocks__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  for (i = 1; i != 16; ++i)
  {
    [*(a1 + 32) _stateQueue_updateCountForLock:i - 1 byCount:-*(*(a1 + 32) + 8 * i)];
  }

  v3 = container_log_handle_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1DF2C3000, v3, OS_LOG_TYPE_DEFAULT, "Released all test locks.", v5, 2u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)releaseLock:(unint64_t)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  v5 = [(MCMTestLocks *)self stateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__MCMTestLocks_releaseLock___block_invoke;
  block[3] = &unk_1E86AF8A0;
  block[4] = self;
  block[5] = a3;
  dispatch_sync(v5, block);

  v6 = *MEMORY[0x1E69E9840];
}

void __28__MCMTestLocks_releaseLock___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _stateQueue_updateCountForLock:*(a1 + 40) byCount:-1];
  v2 = container_log_handle_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 8 * v3 + 8);
    v6 = 134218240;
    v7 = v3;
    v8 = 2048;
    v9 = v4;
    _os_log_impl(&dword_1DF2C3000, v2, OS_LOG_TYPE_DEFAULT, "Released test lock: %llu; count: %ld", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)acquireLock:(unint64_t)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  v5 = [(MCMTestLocks *)self stateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__MCMTestLocks_acquireLock___block_invoke;
  block[3] = &unk_1E86AF8A0;
  block[4] = self;
  block[5] = a3;
  dispatch_sync(v5, block);

  v6 = *MEMORY[0x1E69E9840];
}

void __28__MCMTestLocks_acquireLock___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _stateQueue_updateCountForLock:*(a1 + 40) byCount:1];
  v2 = container_log_handle_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 8 * v3 + 8);
    v6 = 134218240;
    v7 = v3;
    v8 = 2048;
    v9 = v4;
    _os_log_impl(&dword_1DF2C3000, v2, OS_LOG_TYPE_DEFAULT, "Acquired test lock: %llu; count: %ld", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (MCMTestLocks)init
{
  v16 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = MCMTestLocks;
  v2 = [(MCMTestLocks *)&v15 init];
  v3 = v2;
  if (v2)
  {
    v2->_enabled = 0;
    v4 = dispatch_queue_create("com.apple.containermanagerd.MCMTestLocks.stateQueue", 0);
    stateQueue = v3->_stateQueue;
    v3->_stateQueue = v4;

    lockSemaphore = v3->_lockSemaphore;
    v7 = 15;
    v8 = MEMORY[0x1E69E96A8];
    do
    {
      v9 = dispatch_queue_create("com.apple.containermanagerd.MCMTestLocks.lockQueue", v8);
      v10 = *(lockSemaphore - 15);
      *(lockSemaphore - 15) = v9;

      v11 = dispatch_semaphore_create(0);
      v12 = *lockSemaphore;
      *lockSemaphore++ = v11;

      --v7;
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v3;
}

+ (id)sharedInstance
{
  v5 = *MEMORY[0x1E69E9840];
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global);
  }

  v2 = sharedInstance_singleton;
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

uint64_t __30__MCMTestLocks_sharedInstance__block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  sharedInstance_singleton = objc_opt_new();
  v0 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE66BB8]();
}

@end