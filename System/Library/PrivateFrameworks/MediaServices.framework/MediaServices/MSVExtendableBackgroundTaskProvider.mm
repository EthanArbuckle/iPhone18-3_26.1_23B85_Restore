@interface MSVExtendableBackgroundTaskProvider
- (BOOL)_locked_acquireAssertion:(id)assertion;
- (BOOL)_locked_needsAssertion;
- (MSVExtendableBackgroundTaskProvider)initWithRunningRBSDomain:(id)domain name:(id)name invalidationDuration:(double)duration;
- (unint64_t)beginTaskWithName:(id)name expirationHandler:(id)handler;
- (void)_assertionInvalidated:(id)invalidated error:(id)error;
- (void)_locked_releaseAssertion;
- (void)_locked_removeAllTasksWithError:(id)error;
- (void)_taskDidTimeout:(unint64_t)timeout;
- (void)endTask:(unint64_t)task;
@end

@implementation MSVExtendableBackgroundTaskProvider

- (void)_locked_releaseAssertion
{
  if (self->_assertion)
  {
    v3 = arc4random();
    self->_assertionInvalidationNonce = v3;
    v4 = dispatch_time(0, 1000000000);
    v5 = dispatch_get_global_queue(9, 0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __63__MSVExtendableBackgroundTaskProvider__locked_releaseAssertion__block_invoke;
    v6[3] = &unk_1E79818B8;
    v6[4] = self;
    v7 = v3;
    dispatch_after(v4, v5, v6);
  }
}

uint64_t __63__MSVExtendableBackgroundTaskProvider__locked_releaseAssertion__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  os_unfair_recursive_lock_lock_with_options();
  v3 = *(a1 + 32);
  if (*(a1 + 40) == v3[14])
  {
    v4 = [v3 _locked_taskCount];
    v5 = *(a1 + 32);
    if (!v4)
    {
      if (*(v5 + 40))
      {
        [*(v5 + 40) invalidate];
        v6 = os_log_create("com.apple.amp.MediaServices", "Default");
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = *(a1 + 32);
          v8 = *(v7 + 40);
          v14 = 134218240;
          v15 = v7;
          v16 = 2048;
          v17 = v8;
          _os_log_impl(&dword_1AC81F000, v6, OS_LOG_TYPE_DEFAULT, "MSVExtendableBackgroundTaskProvider %p Invalidated RBSAssertion %p", &v14, 0x16u);
        }

        v9 = *(a1 + 32);
        v10 = *(v9 + 40);
        *(v9 + 40) = 0;

        v11 = *(a1 + 32);
      }
    }
  }

  result = os_unfair_recursive_lock_unlock();
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_locked_acquireAssertion:(id)assertion
{
  v36[1] = *MEMORY[0x1E69E9840];
  assertionCopy = assertion;
  if ([(MSVExtendableBackgroundTaskProvider *)self _locked_needsAssertion])
  {
    currentProcess = [MEMORY[0x1E69C7640] currentProcess];
    v6 = [MEMORY[0x1E69C7560] attributeWithDomain:self->_domain name:self->_name];
    v36[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];

    v8 = [objc_alloc(MEMORY[0x1E69C7548]) initWithExplanation:assertionCopy target:currentProcess attributes:v7];
    objc_initWeak(&location, self);
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy_;
    v25 = __Block_byref_object_dispose_;
    v26 = 0;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __64__MSVExtendableBackgroundTaskProvider__locked_acquireAssertion___block_invoke;
    v19[3] = &unk_1E7981890;
    objc_copyWeak(&v20, &location);
    v19[4] = &v21;
    [v8 acquireWithInvalidationHandler:v19];
    if (!v22[5])
    {
      v9 = os_log_create("com.apple.amp.MediaServices", "Default");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218754;
        selfCopy = self;
        v30 = 2048;
        v31 = v8;
        v32 = 2114;
        v33 = v7;
        v34 = 2114;
        v35 = assertionCopy;
        _os_log_impl(&dword_1AC81F000, v9, OS_LOG_TYPE_DEFAULT, "MSVExtendableBackgroundTaskProvider %p Took RBSAssertion %p %{public}@ [%{public}@]", buf, 0x2Au);
      }

      v10 = self->_assertion;
      objc_storeStrong(&self->_assertion, v8);
      date = [MEMORY[0x1E695DF00] date];
      [date timeIntervalSince1970];
      self->_assertionCreatedTime = v12;

      if (v10)
      {
        [(RBSAssertion *)v10 invalidate];
      }
    }

    if (!self->_assertion)
    {
      [(MSVExtendableBackgroundTaskProvider *)self _locked_removeAllTasksWithError:v22[5]];
    }

    explanationForExtension = self->_explanationForExtension;
    self->_explanationForExtension = 0;

    objc_destroyWeak(&v20);
    _Block_object_dispose(&v21, 8);

    objc_destroyWeak(&location);
  }

  else
  {
    v14 = [assertionCopy stringByAppendingString:@" (extension)"];
    v15 = self->_explanationForExtension;
    self->_explanationForExtension = v14;
  }

  v16 = self->_assertion != 0;

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

void __64__MSVExtendableBackgroundTaskProvider__locked_acquireAssertion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _assertionInvalidated:v6 error:v5];

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
}

- (void)_locked_removeAllTasksWithError:(id)error
{
  errorCopy = error;
  timeoutGuards = self->_timeoutGuards;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __71__MSVExtendableBackgroundTaskProvider__locked_removeAllTasksWithError___block_invoke;
  v10 = &unk_1E7981868;
  selfCopy = self;
  v12 = errorCopy;
  v6 = errorCopy;
  [(NSMutableDictionary *)timeoutGuards enumerateKeysAndObjectsUsingBlock:&v7];
  [(NSMutableDictionary *)self->_timeoutGuards removeAllObjects:v7];
  [(NSMutableDictionary *)self->_expirationHandlers removeAllObjects];
}

void __71__MSVExtendableBackgroundTaskProvider__locked_removeAllTasksWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if ([a3 disarm])
  {
    v6 = [*(*(a1 + 32) + 80) objectForKeyedSubscript:v5];
    if (v6)
    {
      v7 = os_log_create("com.apple.amp.MediaServices", "Default");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v9 = [v5 integerValue];
        v10 = *(a1 + 40);
        v12 = 134218498;
        v13 = v8;
        v14 = 2048;
        v15 = v9;
        v16 = 2114;
        v17 = v10;
        _os_log_impl(&dword_1AC81F000, v7, OS_LOG_TYPE_DEFAULT, "MSVExtendableBackgroundTaskProvider %p Task #%ld ended [%{public}@]", &v12, 0x20u);
      }

      v6[2](v6);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)_locked_needsAssertion
{
  assertion = self->_assertion;
  if (!assertion || ![(RBSAssertion *)assertion isValid])
  {
    return 1;
  }

  v4 = self->_assertionCreatedTime + self->_invalidationDuration;
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v7 = v4 - v6;

  return v7 < 5.0;
}

- (void)_assertionInvalidated:(id)invalidated error:(id)error
{
  v17 = *MEMORY[0x1E69E9840];
  invalidatedCopy = invalidated;
  errorCopy = error;
  os_unfair_recursive_lock_lock_with_options();
  v8 = os_log_create("com.apple.amp.MediaServices", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218498;
    selfCopy = self;
    v13 = 2048;
    v14 = invalidatedCopy;
    v15 = 2114;
    v16 = errorCopy;
    _os_log_impl(&dword_1AC81F000, v8, OS_LOG_TYPE_DEFAULT, "MSVExtendableBackgroundTaskProvider %p RBSAssertion %p invalidated with error: %{public}@", &v11, 0x20u);
  }

  assertion = self->_assertion;
  if (assertion == invalidatedCopy)
  {
    self->_assertion = 0;

    if ([(MSVExtendableBackgroundTaskProvider *)self _locked_taskCount]>= 1 && (!self->_explanationForExtension || ![(MSVExtendableBackgroundTaskProvider *)self _locked_acquireAssertion:?]))
    {
      [(MSVExtendableBackgroundTaskProvider *)self _locked_removeAllTasksWithError:errorCopy];
    }
  }

  os_unfair_recursive_lock_unlock();

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_taskDidTimeout:(unint64_t)timeout
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  expirationHandlers = self->_expirationHandlers;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:timeout];
  v7 = [(NSMutableDictionary *)expirationHandlers objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = os_log_create("com.apple.amp.MediaServices", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134218240;
      selfCopy = self;
      v12 = 2048;
      timeoutCopy = timeout;
      _os_log_impl(&dword_1AC81F000, v8, OS_LOG_TYPE_DEFAULT, "MSVExtendableBackgroundTaskProvider %p Task #%ld expired", &v10, 0x16u);
    }

    v7[2](v7);
  }

  os_unfair_recursive_lock_unlock();

  v9 = *MEMORY[0x1E69E9840];
}

- (void)endTask:(unint64_t)task
{
  v18 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  timeoutGuards = self->_timeoutGuards;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:task];
  v7 = [(NSMutableDictionary *)timeoutGuards objectForKeyedSubscript:v6];

  if (v7)
  {
    [v7 disarm];
    v8 = self->_timeoutGuards;
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:task];
    [(NSMutableDictionary *)v8 setObject:0 forKeyedSubscript:v9];

    expirationHandlers = self->_expirationHandlers;
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:task];
    [(NSMutableDictionary *)expirationHandlers setObject:0 forKeyedSubscript:v11];

    v12 = os_log_create("com.apple.amp.MediaServices", "Default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134218240;
      selfCopy = self;
      v16 = 2048;
      taskCopy = task;
      _os_log_impl(&dword_1AC81F000, v12, OS_LOG_TYPE_DEFAULT, "MSVExtendableBackgroundTaskProvider %p Task #%ld ended", &v14, 0x16u);
    }

    if (![(MSVExtendableBackgroundTaskProvider *)self _locked_taskCount])
    {
      [(MSVExtendableBackgroundTaskProvider *)self _locked_releaseAssertion];
    }
  }

  os_unfair_recursive_lock_unlock();

  v13 = *MEMORY[0x1E69E9840];
}

- (unint64_t)beginTaskWithName:(id)name expirationHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  handlerCopy = handler;
  os_unfair_recursive_lock_lock_with_options();
  v8 = (self->_lastIdentifier + 1);
  self->_lastIdentifier = v8;
  if (!nameCopy)
  {
    nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"BackgroundTask#%ld", v8];
  }

  if ([(MSVExtendableBackgroundTaskProvider *)self _locked_acquireAssertion:nameCopy])
  {
    objc_initWeak(&location, self);
    v9 = [MSVBlockGuard alloc];
    invalidationDuration = self->_invalidationDuration;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __75__MSVExtendableBackgroundTaskProvider_beginTaskWithName_expirationHandler___block_invoke;
    v20[3] = &unk_1E7981840;
    objc_copyWeak(v21, &location);
    v21[1] = v8;
    v11 = [(MSVBlockGuard *)v9 initWithTimeout:v20 interruptionHandler:invalidationDuration];
    v12 = MEMORY[0x1B26EC6C0](handlerCopy);
    expirationHandlers = self->_expirationHandlers;
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
    [(NSMutableDictionary *)expirationHandlers setObject:v12 forKeyedSubscript:v14];

    timeoutGuards = self->_timeoutGuards;
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
    [(NSMutableDictionary *)timeoutGuards setObject:v11 forKeyedSubscript:v16];

    v17 = os_log_create("com.apple.amp.MediaServices", "Default");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      selfCopy = self;
      v25 = 2048;
      v26 = v8;
      v27 = 2114;
      v28 = nameCopy;
      _os_log_impl(&dword_1AC81F000, v17, OS_LOG_TYPE_DEFAULT, "MSVExtendableBackgroundTaskProvider %p Task #%ld started [%{public}@]", buf, 0x20u);
    }

    objc_destroyWeak(v21);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = 0;
  }

  os_unfair_recursive_lock_unlock();

  v18 = *MEMORY[0x1E69E9840];
  return v8;
}

void __75__MSVExtendableBackgroundTaskProvider_beginTaskWithName_expirationHandler___block_invoke(uint64_t a1, uint64_t a2)
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

- (MSVExtendableBackgroundTaskProvider)initWithRunningRBSDomain:(id)domain name:(id)name invalidationDuration:(double)duration
{
  domainCopy = domain;
  nameCopy = name;
  v18.receiver = self;
  v18.super_class = MSVExtendableBackgroundTaskProvider;
  v11 = [(MSVExtendableBackgroundTaskProvider *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_domain, domain);
    objc_storeStrong(&v12->_name, name);
    v12->_invalidationDuration = duration;
    v12->_lock = 0;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    timeoutGuards = v12->_timeoutGuards;
    v12->_timeoutGuards = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    expirationHandlers = v12->_expirationHandlers;
    v12->_expirationHandlers = dictionary2;
  }

  return v12;
}

@end