@interface CHUISKeybag
+ (id)sharedInstance;
- (BOOL)isEffectivelyLocked:(int64_t)a3;
- (CHUISKeybag)init;
- (void)_queue_evaluateState;
- (void)_queue_handleKeybagStatusChanged;
- (void)addObserver:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation CHUISKeybag

- (void)_queue_evaluateState
{
  v21[1] = *MEMORY[0x1E69E9840];
  v20 = @"ExtendedDeviceLockState";
  v21[0] = MEMORY[0x1E695E118];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v4 = MKBGetDeviceLockStateInfo();
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69B1A40]];
  v6 = [v5 integerValue];

  v7 = v6 < 7;
  v8 = v7 & (0x46u >> v6);
  queue_isEffectivelyLocked = self->_queue_isEffectivelyLocked;
  v10 = v7 & (6u >> v6);
  if (!BSEqualBools() || (queue_isEffectivelyLockedAuthentic = self->_queue_isEffectivelyLockedAuthentic, (BSEqualBools() & 1) == 0))
  {
    self->_queue_isEffectivelyLocked = v8;
    self->_queue_isEffectivelyLockedAuthentic = v10;
    v12 = CHUISLogKeybag();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = @"NO";
      if (self->_queue_isEffectivelyLocked)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      if (self->_queue_isEffectivelyLockedAuthentic)
      {
        v13 = @"YES";
      }

      v16 = 138543618;
      v17 = v14;
      v18 = 2114;
      v19 = v13;
      _os_log_impl(&dword_1D928E000, v12, OS_LOG_TYPE_DEFAULT, "Keybag state changed - locked default policy? %{public}@, locked authentic policy? %{public}@", &v16, 0x16u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

+ (id)sharedInstance
{
  if (sharedInstance___once != -1)
  {
    +[CHUISKeybag sharedInstance];
  }

  v3 = sharedInstance___keybag;

  return v3;
}

void __29__CHUISKeybag_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CHUISKeybag);
  v1 = sharedInstance___keybag;
  sharedInstance___keybag = v0;
}

- (CHUISKeybag)init
{
  v18.receiver = self;
  v18.super_class = CHUISKeybag;
  v2 = [(CHUISKeybag *)&v18 init];
  if (v2)
  {
    v3 = BSDispatchQueueCreateWithQualityOfService();
    calloutQueue = v2->_calloutQueue;
    v2->_calloutQueue = v3;

    v5 = BSDispatchQueueCreateWithQualityOfService();
    queue = v2->_queue;
    v2->_queue = v5;

    objc_initWeak(&location, v2);
    v7 = v2->_queue;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __19__CHUISKeybag_init__block_invoke;
    v15 = &unk_1E85754A8;
    objc_copyWeak(&v16, &location);
    v2->_mkbRegistrationToken = MKBEventsRegister();
    v8 = v2->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __19__CHUISKeybag_init__block_invoke_2;
    block[3] = &unk_1E85754D0;
    v11 = v2;
    dispatch_sync(v8, block);

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)_queue_handleKeybagStatusChanged
{
  queue = self->_queue;
  BSDispatchQueueAssert();
  [(CHUISKeybag *)self _queue_evaluateState];
  v4 = [(NSHashTable *)self->_queue_observers copy];
  if ([v4 count])
  {
    calloutQueue = self->_calloutQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __47__CHUISKeybag__queue_handleKeybagStatusChanged__block_invoke;
    v6[3] = &unk_1E8575520;
    v7 = v4;
    v8 = self;
    dispatch_async(calloutQueue, v6);
  }
}

void __19__CHUISKeybag_init__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a2 == 1 && WeakRetained)
  {
    [WeakRetained _queue_handleKeybagStatusChanged];
  }
}

- (BOOL)isEffectivelyLocked:(int64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__CHUISKeybag_isEffectivelyLocked___block_invoke;
  block[3] = &unk_1E85754F8;
  block[5] = &v7;
  block[6] = a3;
  block[4] = self;
  dispatch_sync(queue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void *__35__CHUISKeybag_isEffectivelyLocked___block_invoke(void *result)
{
  v1 = 40;
  if (result[6])
  {
    v1 = 41;
  }

  *(*(result[5] + 8) + 24) = *(result[4] + v1);
  return result;
}

- (void)addObserver:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"CHUISKeybag.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"observer"}];
  }

  queue = self->_queue;
  BSDispatchQueueAssertNot();
  v7 = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__CHUISKeybag_addObserver___block_invoke;
  block[3] = &unk_1E8575520;
  block[4] = self;
  v11 = v5;
  v8 = v5;
  dispatch_sync(v7, block);
}

uint64_t __27__CHUISKeybag_addObserver___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;

    v2 = *(*(a1 + 32) + 24);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

- (void)removeObserver:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"CHUISKeybag.m" lineNumber:102 description:{@"Invalid parameter not satisfying: %@", @"observer"}];
  }

  queue = self->_queue;
  BSDispatchQueueAssertNot();
  v7 = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__CHUISKeybag_removeObserver___block_invoke;
  block[3] = &unk_1E8575520;
  block[4] = self;
  v11 = v5;
  v8 = v5;
  dispatch_sync(v7, block);
}

void __47__CHUISKeybag__queue_handleKeybagStatusChanged__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * v5);
        if (objc_opt_respondsToSelector())
        {
          [v6 keybagStateDidChange:{*(a1 + 40), v8}];
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end