@interface SGFuture
+ (id)createAfter:(id)after onCreate:(id)create;
+ (id)createWithImmediateResult:(id)result error:(id)error;
+ (id)futureForObject:(id)object withKey:(void *)key onCreate:(id)create;
+ (void)waitForFuturesToComplete:(id)complete withCallback:(id)callback;
- (BOOL)_finishWithResult:(id)result orError:(id)error;
- (BOOL)completeWithResult:(id)result error:(id)error;
- (SGFuture)init;
- (id)completer;
- (id)error;
- (id)result;
- (id)wait;
- (id)waitWithTimeout:(double)timeout;
- (void)_clearTimeoutNonThreadSafe;
- (void)_wait:(id)_wait forSyncAPI:(BOOL)i;
- (void)clearTimeout;
- (void)dealloc;
- (void)disassociateFromParentObject;
- (void)setTargetQueue:(id)queue useAfterCompletion:(BOOL)completion;
- (void)setTimeout:(double)timeout;
@end

@implementation SGFuture

- (SGFuture)init
{
  v12.receiver = self;
  v12.super_class = SGFuture;
  v2 = [(SGFuture *)&v12 init];
  v3 = v2;
  if (v2)
  {
    pthread_mutex_init(&v2->_lock, 0);
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_initially_inactive(v4);
    v6 = dispatch_queue_create("SGFuture", v5);
    callbacks = v3->_callbacks;
    v3->_callbacks = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("SGFuture-workQueue", v8);
    workQueue = v3->_workQueue;
    v3->_workQueue = v9;
  }

  return v3;
}

- (void)_clearTimeoutNonThreadSafe
{
  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    dispatch_source_cancel(timeoutTimer);
    v4 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }
}

- (id)result
{
  if (!self->_isComplete)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGFuture.m" lineNumber:143 description:{@"Invalid parameter not satisfying: %@", @"_isComplete"}];
  }

  v3 = self->_result;

  return v3;
}

- (id)error
{
  if (!self->_isComplete)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGFuture.m" lineNumber:149 description:{@"Invalid parameter not satisfying: %@", @"_isComplete"}];
  }

  error = self->_error;

  return error;
}

- (void)dealloc
{
  pthread_mutex_lock(&self->_lock);
  if (self->_yoDontLeaveMeHangingBro)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGFuture.m" lineNumber:49 description:@"Tried to dealloc an SGFuture (with >0 listeners) before calling succeed: or :fail."];
  }

  if (!self->_isComplete)
  {
    [(SGFuture *)self _clearTimeoutNonThreadSafe];
    dispatch_activate(self->_callbacks);
  }

  pthread_mutex_unlock(&self->_lock);
  pthread_mutex_destroy(&self->_lock);
  v5.receiver = self;
  v5.super_class = SGFuture;
  [(SGFuture *)&v5 dealloc];
}

intptr_t __16__SGFuture_wait__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [MEMORY[0x1E69C5D98] tupleWithFirst:a2 second:a3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1 + 32);

  return dispatch_semaphore_signal(v7);
}

- (id)wait
{
  v3 = dispatch_semaphore_create(0);
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1013;
  v18 = __Block_byref_object_dispose__1014;
  v19 = 0;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __16__SGFuture_wait__block_invoke;
  v11 = &unk_1E7EFAD90;
  v13 = &v14;
  v4 = v3;
  v12 = v4;
  [(SGFuture *)self _wait:&v8 forSyncAPI:1];
  v5 = [(SGFuture *)self workQueue:v8];
  dispatch_sync(v5, &__block_literal_global);

  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  v6 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v6;
}

- (void)disassociateFromParentObject
{
  WeakRetained = objc_loadWeakRetained(&self->_parentObject);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v4 = WeakRetained;
    objc_sync_enter(v4);
    v5 = objc_getAssociatedObject(v4, self->_parentObjectKey);
    if (v5 == self)
    {
      objc_setAssociatedObject(v4, self->_parentObjectKey, 0, 1);
    }

    objc_sync_exit(v4);
    WeakRetained = v6;
  }
}

- (id)waitWithTimeout:(double)timeout
{
  v12[1] = *MEMORY[0x1E69E9840];
  v12[0] = self;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v6 = [SGFuture createAfter:v5 onCreate:&__block_literal_global_45];

  [v6 setTimeout:timeout];
  completer = [v6 completer];
  [(SGFuture *)self wait:completer];

  if (([v6 isComplete] & 1) == 0)
  {
    v8 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, &__block_literal_global_47);
    dispatch_async(self->_workQueue, v8);
    dispatch_block_wait(v8, [MEMORY[0x1E69C5D10] dispatchTimeWithSecondsFromNow:timeout]);
  }

  wait = [v6 wait];

  v10 = *MEMORY[0x1E69E9840];

  return wait;
}

- (void)clearTimeout
{
  pthread_mutex_lock(&self->_lock);
  [(SGFuture *)self _clearTimeoutNonThreadSafe];

  pthread_mutex_unlock(&self->_lock);
}

- (void)setTimeout:(double)timeout
{
  pthread_mutex_lock(&self->_lock);
  if (self->_isComplete)
  {

    pthread_mutex_unlock(&self->_lock);
  }

  else
  {
    if ((*&timeout & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      timeoutTimer = self->_timeoutTimer;
      if (timeoutTimer)
      {
        dispatch_suspend(timeoutTimer);
      }

      else
      {
        v6 = dispatch_get_global_queue(-2, 0);
        v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v6);
        v8 = self->_timeoutTimer;
        self->_timeoutTimer = v7;

        objc_initWeak(&location, self);
        v9 = self->_timeoutTimer;
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __23__SGFuture_setTimeout___block_invoke;
        v12[3] = &unk_1E7EFD140;
        objc_copyWeak(&v13, &location);
        dispatch_source_set_event_handler(v9, v12);
        objc_destroyWeak(&v13);
        objc_destroyWeak(&location);
      }

      v10 = self->_timeoutTimer;
      if (timeout <= 0.0)
      {
        v11 = 0;
      }

      else if (timeout <= 9223372040.0)
      {
        v11 = dispatch_time(0, (timeout * 1000000000.0));
      }

      else
      {
        v11 = -1;
      }

      dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
      dispatch_resume(self->_timeoutTimer);
    }

    else
    {
      [(SGFuture *)self _clearTimeoutNonThreadSafe];
    }

    pthread_mutex_unlock(&self->_lock);
  }
}

void __23__SGFuture_setTimeout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SGErrorDomain" code:10 userInfo:0];
  [WeakRetained fail:v1];
}

- (BOOL)_finishWithResult:(id)result orError:(id)error
{
  resultCopy = result;
  errorCopy = error;
  v10 = errorCopy;
  if (!(resultCopy | errorCopy))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGFuture.m" lineNumber:178 description:{@"Invalid parameter not satisfying: %@", @"result || error"}];
    goto LABEL_10;
  }

  if (resultCopy && errorCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGFuture.m" lineNumber:179 description:{@"Invalid parameter not satisfying: %@", @"!(result && error)"}];
LABEL_10:
  }

  pthread_mutex_lock(&self->_lock);
  isComplete = self->_isComplete;
  if (!isComplete)
  {
    objc_storeStrong(&self->_result, result);
    objc_storeStrong(&self->_error, error);
    self->_isComplete = 1;
    [(SGFuture *)self _clearTimeoutNonThreadSafe];
    dispatch_activate(self->_callbacks);
    if (self->_yoDontLeaveMeHangingBro)
    {
      self->_yoDontLeaveMeHangingBro = 0;
      callbacks = self->_callbacks;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __38__SGFuture__finishWithResult_orError___block_invoke;
      block[3] = &unk_1E7EFD118;
      block[4] = self;
      dispatch_async(callbacks, block);
    }
  }

  pthread_mutex_unlock(&self->_lock);

  return !isComplete;
}

- (id)completer
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __21__SGFuture_completer__block_invoke;
  v4[3] = &unk_1E7EFADE0;
  v4[4] = self;
  v2 = MEMORY[0x1BFAF7240](v4, a2);

  return v2;
}

- (BOOL)completeWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  v9 = errorCopy;
  if (resultCopy && errorCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGFuture.m" lineNumber:165 description:{@"Invalid parameter not satisfying: %@", @"result == nil || error == nil"}];
  }

  v10 = [(SGFuture *)self _finishWithResult:resultCopy orError:v9];

  return v10;
}

- (void)_wait:(id)_wait forSyncAPI:(BOOL)i
{
  iCopy = i;
  _waitCopy = _wait;
  pthread_mutex_lock(&self->_lock);
  if (self->_isComplete)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self->_result;
    v9 = self->_error;
    pthread_mutex_unlock(&self->_lock);
    if (!self->_alwaysUseCallbacksQueue || iCopy)
    {
      _waitCopy[2](_waitCopy, v8, v9);
    }

    else
    {
      callbacks = self->_callbacks;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __29__SGFuture__wait_forSyncAPI___block_invoke;
      block[3] = &unk_1E7EFAF60;
      v22 = _waitCopy;
      v20 = v8;
      v21 = v9;
      dispatch_async(callbacks, block);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    self->_yoDontLeaveMeHangingBro = 1;
    objc_initWeak(&location, self);
    v11 = self->_callbacks;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __29__SGFuture__wait_forSyncAPI___block_invoke_2;
    v15[3] = &unk_1E7EFADB8;
    objc_copyWeak(&v17, &location);
    v16 = _waitCopy;
    dispatch_async(v11, v15);
    pthread_mutex_unlock(&self->_lock);
    workQueue = self->_workQueue;
    v13 = qos_class_self();
    v14 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v13, 0, &__block_literal_global_27);
    dispatch_async(workQueue, v14);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void __29__SGFuture__wait_forSyncAPI___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  pthread_mutex_lock((WeakRetained + 24));
  v2 = *(WeakRetained + 1);
  v3 = *(WeakRetained + 2);
  v4 = v2;
  pthread_mutex_unlock((WeakRetained + 24));
  (*(*(a1 + 32) + 16))();
}

- (void)setTargetQueue:(id)queue useAfterCompletion:(BOOL)completion
{
  queue = queue;
  pthread_mutex_lock(&self->_lock);
  if (self->_isComplete)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGFuture.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"!_isComplete"}];
  }

  if (self->_timeoutTimer)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGFuture.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"!_timeoutTimer"}];
  }

  dispatch_set_target_queue(self->_callbacks, queue);
  self->_alwaysUseCallbacksQueue = completion;
  pthread_mutex_unlock(&self->_lock);
}

+ (void)waitForFuturesToComplete:(id)complete withCallback:(id)callback
{
  v27 = *MEMORY[0x1E69E9840];
  completeCopy = complete;
  callbackCopy = callback;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v14 = completeCopy;
  v25 = [completeCopy count];
  if (atomic_load(v23 + 3))
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = completeCopy;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v9)
    {
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __50__SGFuture_waitForFuturesToComplete_withCallback___block_invoke;
          v15[3] = &unk_1E7EFAE50;
          v17 = &v22;
          v16 = callbackCopy;
          [v12 wait:v15];
        }

        v9 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v9);
    }
  }

  else
  {
    callbackCopy[2](callbackCopy);
  }

  _Block_object_dispose(&v22, 8);

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __50__SGFuture_waitForFuturesToComplete_withCallback___block_invoke(uint64_t result)
{
  if (atomic_fetch_add((*(*(result + 40) + 8) + 24), 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

+ (id)createWithImmediateResult:(id)result error:(id)error
{
  errorCopy = error;
  resultCopy = result;
  v7 = objc_opt_new();
  [v7 completeWithResult:resultCopy error:errorCopy];

  return v7;
}

+ (id)createAfter:(id)after onCreate:(id)create
{
  afterCopy = after;
  createCopy = create;
  v7 = objc_opt_new();
  workQueue = [v7 workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__SGFuture_createAfter_onCreate___block_invoke;
  block[3] = &unk_1E7EFAF60;
  v16 = afterCopy;
  v18 = createCopy;
  v9 = v7;
  v17 = v9;
  v10 = createCopy;
  v11 = afterCopy;
  dispatch_sync(workQueue, block);

  v12 = v17;
  v13 = v9;

  return v9;
}

void __33__SGFuture_createAfter_onCreate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __33__SGFuture_createAfter_onCreate___block_invoke_2;
  v3[3] = &unk_1E7EFAF10;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  [SGFuture waitForFuturesToComplete:v2 withCallback:v3];
}

+ (id)futureForObject:(id)object withKey:(void *)key onCreate:(id)create
{
  objectCopy = object;
  createCopy = create;
  v9 = objectCopy;
  objc_sync_enter(v9);
  v10 = objc_getAssociatedObject(v9, key);
  if (v10)
  {
    objc_sync_exit(v9);
  }

  else
  {
    v11 = objc_opt_new();
    objc_storeWeak((v11 + 112), v9);
    *(v11 + 120) = key;
    objc_setAssociatedObject(v9, key, v11, 1);
    objc_initWeak(&location, v9);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __45__SGFuture_futureForObject_withKey_onCreate___block_invoke;
    v17[3] = &unk_1E7EFAE28;
    objc_copyWeak(&v18, &location);
    [v11 wait:v17];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
    objc_sync_exit(v9);

    workQueue = [v11 workQueue];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __45__SGFuture_futureForObject_withKey_onCreate___block_invoke_49;
    v14[3] = &unk_1E7EFAF10;
    v16 = createCopy;
    v10 = v11;
    v15 = v10;
    dispatch_sync(workQueue, v14);
  }

  return v10;
}

void __45__SGFuture_futureForObject_withKey_onCreate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained == v5)
  {
    v8 = sgLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *v9 = 0;
      _os_log_fault_impl(&dword_1BA729000, v8, OS_LOG_TYPE_FAULT, "+[SGFuture futureForObject:withKey:onCreate:] future result is pointer-equivalent to object, which creates a circular reference", v9, 2u);
    }

    if (_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      abort();
    }
  }
}

@end