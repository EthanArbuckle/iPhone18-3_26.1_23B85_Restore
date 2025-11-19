@interface MSVSonicBackgroundTaskProvider
- (MSVSonicBackgroundTaskProvider)initWithInvalidationDuration:(double)a3;
- (unint64_t)beginTaskWithName:(id)a3 expirationHandler:(id)a4;
- (void)_taskDidTimeout:(unint64_t)a3;
- (void)endTask:(unint64_t)a3;
@end

@implementation MSVSonicBackgroundTaskProvider

- (void)_taskDidTimeout:(unint64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  expirationHandlers = self->_expirationHandlers;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v7 = [(NSMutableDictionary *)expirationHandlers objectForKeyedSubscript:v6];

  assertions = self->_assertions;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v10 = [(NSMutableDictionary *)assertions objectForKeyedSubscript:v9];

  if (v7)
  {
    v11 = os_log_create("com.apple.amp.MediaServices", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v10 name];
      v14 = 134218498;
      v15 = self;
      v16 = 2048;
      v17 = a3;
      v18 = 2114;
      v19 = v12;
      _os_log_impl(&dword_1AC81F000, v11, OS_LOG_TYPE_DEFAULT, "MSVSonicBackgroundTaskProvider %p Task #%ld [%{public}@] expired", &v14, 0x20u);
    }

    v7[2](v7);
  }

  os_unfair_recursive_lock_unlock();

  v13 = *MEMORY[0x1E69E9840];
}

- (void)endTask:(unint64_t)a3
{
  v26 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  timeoutGuards = self->_timeoutGuards;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v7 = [(NSMutableDictionary *)timeoutGuards objectForKeyedSubscript:v6];

  if (v7)
  {
    [v7 disarm];
    assertions = self->_assertions;
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v10 = [(NSMutableDictionary *)assertions objectForKeyedSubscript:v9];

    v11 = self->_timeoutGuards;
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)v11 setObject:0 forKeyedSubscript:v12];

    expirationHandlers = self->_expirationHandlers;
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)expirationHandlers setObject:0 forKeyedSubscript:v14];

    v15 = self->_assertions;
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)v15 setObject:0 forKeyedSubscript:v16];

    v17 = os_log_create("com.apple.amp.MediaServices", "Default");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v10 name];
      v20 = 134218498;
      v21 = self;
      v22 = 2048;
      v23 = a3;
      v24 = 2114;
      v25 = v18;
      _os_log_impl(&dword_1AC81F000, v17, OS_LOG_TYPE_DEFAULT, "MSVSonicBackgroundTaskProvider %p Task #%ld [%{public}@] ended", &v20, 0x20u);
    }
  }

  os_unfair_recursive_lock_unlock();

  v19 = *MEMORY[0x1E69E9840];
}

- (unint64_t)beginTaskWithName:(id)a3 expirationHandler:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v23 = a4;
  os_unfair_recursive_lock_lock_with_options();
  v7 = (self->_lastIdentifier + 1);
  self->_lastIdentifier = v7;
  if (!v6)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BackgroundTask#%ld", v7];
  }

  v8 = [[MSVSonicAssertion alloc] initWithName:v6];
  if (v8)
  {
    objc_initWeak(&location, self);
    v9 = [MSVBlockGuard alloc];
    invalidationDuration = self->_invalidationDuration;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __70__MSVSonicBackgroundTaskProvider_beginTaskWithName_expirationHandler___block_invoke;
    v26[3] = &unk_1E7981840;
    objc_copyWeak(v27, &location);
    v27[1] = v7;
    v11 = [(MSVBlockGuard *)v9 initWithTimeout:v26 interruptionHandler:invalidationDuration];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __70__MSVSonicBackgroundTaskProvider_beginTaskWithName_expirationHandler___block_invoke_2;
    v24[3] = &unk_1E7981778;
    objc_copyWeak(v25, &location);
    v25[1] = v7;
    [(MSVSonicAssertion *)v8 setInvalidationHandler:v24];
    v12 = MEMORY[0x1B26EC6C0](v23);
    expirationHandlers = self->_expirationHandlers;
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
    [(NSMutableDictionary *)expirationHandlers setObject:v12 forKeyedSubscript:v14];

    timeoutGuards = self->_timeoutGuards;
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
    [(NSMutableDictionary *)timeoutGuards setObject:v11 forKeyedSubscript:v16];

    assertions = self->_assertions;
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
    [(NSMutableDictionary *)assertions setObject:v8 forKeyedSubscript:v18];

    v19 = os_log_create("com.apple.amp.MediaServices", "Default");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v30 = self;
      v31 = 2048;
      v32 = v7;
      v33 = 2114;
      v34 = v6;
      _os_log_impl(&dword_1AC81F000, v19, OS_LOG_TYPE_DEFAULT, "MSVSonicBackgroundTaskProvider %p Task #%ld [%{public}@] started", buf, 0x20u);
    }

    objc_destroyWeak(v25);
    objc_destroyWeak(v27);
    objc_destroyWeak(&location);
  }

  else
  {
    v20 = os_log_create("com.apple.amp.MediaServices", "Default");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v30 = self;
      v31 = 2048;
      v32 = v7;
      v33 = 2114;
      v34 = v6;
      _os_log_impl(&dword_1AC81F000, v20, OS_LOG_TYPE_DEFAULT, "MSVSonicBackgroundTaskProvider %p Task #%ld [%{public}@] failed to start", buf, 0x20u);
    }

    v7 = 0;
  }

  os_unfair_recursive_lock_unlock();

  v21 = *MEMORY[0x1E69E9840];
  return v7;
}

void __70__MSVSonicBackgroundTaskProvider_beginTaskWithName_expirationHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (!a2)
  {
    [WeakRetained _taskDidTimeout:*(a1 + 40)];
    WeakRetained = v5;
  }

  [WeakRetained endTask:*(a1 + 40)];
}

void __70__MSVSonicBackgroundTaskProvider_beginTaskWithName_expirationHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _taskDidTimeout:*(a1 + 40)];
  [WeakRetained endTask:*(a1 + 40)];
}

- (MSVSonicBackgroundTaskProvider)initWithInvalidationDuration:(double)a3
{
  if (+[MSVSonicAssertion hasEntitlement])
  {
    v15.receiver = self;
    v15.super_class = MSVSonicBackgroundTaskProvider;
    v5 = [(MSVSonicBackgroundTaskProvider *)&v15 init];
    v6 = v5;
    if (v5)
    {
      v5->_invalidationDuration = a3;
      v5->_lock = 0;
      v7 = [MEMORY[0x1E695DF90] dictionary];
      timeoutGuards = v6->_timeoutGuards;
      v6->_timeoutGuards = v7;

      v9 = [MEMORY[0x1E695DF90] dictionary];
      expirationHandlers = v6->_expirationHandlers;
      v6->_expirationHandlers = v9;

      v11 = [MEMORY[0x1E695DF90] dictionary];
      assertions = v6->_assertions;
      v6->_assertions = v11;
    }

    self = v6;
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end