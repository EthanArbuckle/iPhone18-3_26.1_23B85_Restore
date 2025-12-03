@interface MSVBackgroundTaskProvider
+ (id)sharedProvider;
- (BOOL)_locked_acquireAssertion;
- (MSVBackgroundTaskProvider)init;
- (unint64_t)beginTaskWithName:(id)name expirationHandler:(id)handler;
- (void)_locked_releaseAssertion;
- (void)endTask:(unint64_t)task;
@end

@implementation MSVBackgroundTaskProvider

- (void)endTask:(unint64_t)task
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  timeoutGuards = [(MSVBackgroundTaskProvider *)self timeoutGuards];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:task];
  v7 = [timeoutGuards objectForKeyedSubscript:v6];

  if (v7)
  {
    [v7 disarm];
    timeoutGuards2 = [(MSVBackgroundTaskProvider *)self timeoutGuards];
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:task];
    [timeoutGuards2 setObject:0 forKeyedSubscript:v9];

    [(MSVBackgroundTaskProvider *)self _locked_releaseAssertion];
    v10 = os_log_create("com.apple.amp.MediaServices", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134217984;
      taskCopy = task;
      _os_log_impl(&dword_1AC81F000, v10, OS_LOG_TYPE_DEFAULT, "[MSVBackgroundTaskProvider] Background Task #%ld ended", &v12, 0xCu);
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  v11 = *MEMORY[0x1E69E9840];
}

- (unint64_t)beginTaskWithName:(id)name expirationHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_lock);
  if ([(MSVBackgroundTaskProvider *)self _locked_acquireAssertion])
  {
    v8 = [(MSVBackgroundTaskProvider *)self lastIdentifier]+ 1;
    [(MSVBackgroundTaskProvider *)self setLastIdentifier:v8];
    if (!nameCopy)
    {
      nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"BackgroundTask#%ld", v8];
    }

    v9 = [MSVBlockGuard alloc];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __65__MSVBackgroundTaskProvider_beginTaskWithName_expirationHandler___block_invoke;
    v16[3] = &unk_1E79817C8;
    v20 = v8;
    nameCopy = nameCopy;
    v17 = nameCopy;
    selfCopy = self;
    v19 = handlerCopy;
    v10 = [(MSVBlockGuard *)v9 initWithTimeout:v16 interruptionHandler:30.0];
    timeoutGuards = [(MSVBackgroundTaskProvider *)self timeoutGuards];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
    [timeoutGuards setObject:v10 forKeyedSubscript:v12];

    v13 = os_log_create("com.apple.amp.MediaServices", "Default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v22 = v8;
      v23 = 2114;
      v24 = nameCopy;
      _os_log_impl(&dword_1AC81F000, v13, OS_LOG_TYPE_DEFAULT, "[MSVBackgroundTaskProvider] Background Task #%ld started (%{public}@)", buf, 0x16u);
    }
  }

  else
  {
    v8 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  v14 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t __65__MSVBackgroundTaskProvider_beginTaskWithName_expirationHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.amp.MediaServices", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 56);
    v6 = *(a1 + 32);
    v10 = 134218242;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_1AC81F000, v4, OS_LOG_TYPE_DEFAULT, "[MSVBackgroundTaskProvider] Background Task #%ld expired (%{public}@)", &v10, 0x16u);
  }

  if (!a2)
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      (*(v7 + 16))();
    }
  }

  result = [*(a1 + 40) endTask:*(a1 + 56)];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_locked_releaseAssertion
{
  assertionCount = self->_assertionCount;
  self->_assertionCount = assertionCount - 1;
  if (assertionCount <= 1)
  {
    v11 = v2;
    v12 = v3;
    self->_assertionCount = 0;
    v6 = arc4random();
    self->_assertionInvalidationNonce = v6;
    v7 = dispatch_time(0, 5000000000);
    v8 = dispatch_get_global_queue(9, 0);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53__MSVBackgroundTaskProvider__locked_releaseAssertion__block_invoke;
    v9[3] = &unk_1E79818B8;
    v9[4] = self;
    v10 = v6;
    dispatch_after(v7, v8, v9);
  }
}

void __53__MSVBackgroundTaskProvider__locked_releaseAssertion__block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = *(a1 + 32);
  if (*(a1 + 40) == *(v2 + 32) && *(v2 + 24) <= 0 && *(v2 + 16))
  {
    v3 = os_log_create("com.apple.amp.MediaServices", "Default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1AC81F000, v3, OS_LOG_TYPE_DEFAULT, "[MSVBackgroundTaskProvider] Invalidating Process Assertion Timeout", v6, 2u);
    }

    [*(*(a1 + 32) + 16) invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = 0;

    v2 = *(a1 + 32);
  }

  os_unfair_lock_unlock((v2 + 8));
}

- (BOOL)_locked_acquireAssertion
{
  v3 = self->_assertion;
  v4 = v3;
  if (v3)
  {
    if ([(BKSProcessAssertion *)v3 valid])
    {
      BKSProcessAssertionBackgroundTimeRemaining();
      if (v5 >= 5.0)
      {
        ++self->_assertionCount;
LABEL_13:
        v12 = 1;
        goto LABEL_14;
      }
    }
  }

  v6 = os_log_create("com.apple.amp.MediaServices", "Default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AC81F000, v6, OS_LOG_TYPE_DEFAULT, "[MSVBackgroundTaskProvider] Taking Process Assertion", buf, 2u);
  }

  v7 = [objc_alloc(MEMORY[0x1E698D038]) initWithPID:getpid() flags:1 reason:4 name:@"MSVBackgroundTaskProvider"];
  assertion = self->_assertion;
  self->_assertion = v7;

  acquire = [(BKSProcessAssertion *)self->_assertion acquire];
  if (v4)
  {
    v10 = os_log_create("com.apple.amp.MediaServices", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_1AC81F000, v10, OS_LOG_TYPE_DEFAULT, "[MSVBackgroundTaskProvider] Invalidating Existing Process Assertion", v14, 2u);
    }

    [(BKSProcessAssertion *)v4 invalidate];
  }

  ++self->_assertionCount;
  if (acquire)
  {
    goto LABEL_13;
  }

  v11 = self->_assertion;
  self->_assertion = 0;
  self->_assertionCount = 0;

  v12 = 0;
LABEL_14:

  return v12;
}

- (MSVBackgroundTaskProvider)init
{
  v6.receiver = self;
  v6.super_class = MSVBackgroundTaskProvider;
  v2 = [(MSVBackgroundTaskProvider *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(MSVBackgroundTaskProvider *)v3 setTimeoutGuards:dictionary];
  }

  return v3;
}

+ (id)sharedProvider
{
  if (sharedProvider_onceToken != -1)
  {
    dispatch_once(&sharedProvider_onceToken, &__block_literal_global_327);
  }

  v3 = sharedProvider_sharedInstance;

  return v3;
}

uint64_t __43__MSVBackgroundTaskProvider_sharedProvider__block_invoke()
{
  sharedProvider_sharedInstance = objc_alloc_init(MSVBackgroundTaskProvider);

  return MEMORY[0x1EEE66BB8]();
}

@end