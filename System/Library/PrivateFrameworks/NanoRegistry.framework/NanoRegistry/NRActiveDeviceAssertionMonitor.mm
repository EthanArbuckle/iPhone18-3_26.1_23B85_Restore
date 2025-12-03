@interface NRActiveDeviceAssertionMonitor
+ (id)sharedInstance;
- (BOOL)hasActiveAssertion;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
@end

@implementation NRActiveDeviceAssertionMonitor

+ (id)sharedInstance
{
  if (_MergedGlobals_11 != -1)
  {
    dispatch_once(&_MergedGlobals_11, &__block_literal_global_9);
  }

  v3 = qword_1ED6F0B18;

  return v3;
}

void __48__NRActiveDeviceAssertionMonitor_sharedInstance__block_invoke()
{
  v0 = [NRActiveDeviceAssertionMonitor alloc];
  if (v0)
  {
    v8.receiver = v0;
    v8.super_class = NRActiveDeviceAssertionMonitor;
    v1 = objc_msgSendSuper2(&v8, sel_init);
    if (v1)
    {
      v2 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v3 = v1[2];
      v1[2] = v2;

      v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v5 = dispatch_queue_create("com.apple.NanoRegistry.NRActiveDeviceAssertionMonitor", v4);
      v6 = v1[3];
      v1[3] = v5;

      *(v1 + 2) = -1;
    }
  }

  else
  {
    v1 = 0;
  }

  v7 = qword_1ED6F0B18;
  qword_1ED6F0B18 = v1;
}

- (BOOL)hasActiveAssertion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  workQueue = self->_workQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__NRActiveDeviceAssertionMonitor_hasActiveAssertion__block_invoke;
  v5[3] = &unk_1E86DAE00;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __52__NRActiveDeviceAssertionMonitor_hasActiveAssertion__block_invoke(uint64_t a1)
{
  state64[1] = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  out_token = v2;
  if (v2 != -1)
  {
    goto LABEL_8;
  }

  v3 = notify_register_check("com.apple.NanoRegistry.NRActiveDeviceAssertion", &out_token);
  if (v3)
  {
    v4 = v3;
    v5 = nr_framework_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v7 = nr_framework_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        LODWORD(state64[0]) = 67109120;
        HIDWORD(state64[0]) = v4;
        _os_log_error_impl(&dword_1E0ADF000, v7, OS_LOG_TYPE_ERROR, "Failed to register short lived token with status: (%u)", state64, 8u);
      }
    }
  }

  v2 = out_token;
  if (out_token != -1)
  {
LABEL_8:
    state64[0] = 0;
    state = notify_get_state(v2, state64);
    if (state)
    {
      v9 = state;
      v10 = nr_framework_log();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

      if (v11)
      {
        v12 = nr_framework_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v21 = v9;
          _os_log_error_impl(&dword_1E0ADF000, v12, OS_LOG_TYPE_ERROR, "Failed to query token value with status: (%u)", buf, 8u);
        }
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = state64[0] == 1;
    if (*(*(a1 + 32) + 8) == -1)
    {
      v14 = notify_cancel(out_token);
      if (v14)
      {
        v15 = v14;
        v16 = nr_framework_log();
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

        if (v17)
        {
          v18 = nr_framework_log();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v21 = v15;
            _os_log_error_impl(&dword_1E0ADF000, v18, OS_LOG_TYPE_ERROR, "Failed to unregister short lived token with status: (%u)", buf, 8u);
          }
        }
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__NRActiveDeviceAssertionMonitor_addObserver___block_invoke;
  v7[3] = &unk_1E86DAF10;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(workQueue, v7);
}

void __46__NRActiveDeviceAssertionMonitor_addObserver___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 16) addObject:*(a1 + 40)];
  if ([*(*(a1 + 32) + 16) count] == 1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      v3 = (v2 + 8);
      if (*(v2 + 8) == -1)
      {
        objc_initWeak(&location, v2);
        v4 = *(v2 + 24);
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __53__NRActiveDeviceAssertionMonitor_startObservingToken__block_invoke;
        v10[3] = &unk_1E86DB808;
        objc_copyWeak(&v11, &location);
        v5 = notify_register_dispatch("com.apple.NanoRegistry.NRActiveDeviceAssertion", v3, v4, v10);
        if (v5)
        {
          v6 = nr_framework_log();
          v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

          if (v7)
          {
            v8 = nr_framework_log();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              v14 = v5;
              _os_log_error_impl(&dword_1E0ADF000, v8, OS_LOG_TYPE_ERROR, "Failed to register observer with status: (%u)", buf, 8u);
            }
          }
        }

        objc_destroyWeak(&v11);
        objc_destroyWeak(&location);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__NRActiveDeviceAssertionMonitor_removeObserver___block_invoke;
  v7[3] = &unk_1E86DAF10;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(workQueue, v7);
}

void __49__NRActiveDeviceAssertionMonitor_removeObserver___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 16) removeObject:*(a1 + 40)];
  if (![*(*(a1 + 32) + 16) count])
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      v3 = *(v2 + 8);
      if (v3 != -1)
      {
        v4 = notify_cancel(v3);
        if (v4)
        {
          v5 = v4;
          v6 = nr_framework_log();
          v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

          if (v7)
          {
            v8 = nr_framework_log();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
            {
              v10[0] = 67109120;
              v10[1] = v5;
              _os_log_error_impl(&dword_1E0ADF000, v8, OS_LOG_TYPE_ERROR, "Failed to unregister observer with status: (%u)", v10, 8u);
            }
          }
        }

        *(v2 + 8) = -1;
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __53__NRActiveDeviceAssertionMonitor_startObservingToken__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = WeakRetained;
    v2 = WeakRetained[2];
    v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v13;
      v6 = MEMORY[0x1E69E96A0];
      do
      {
        v7 = 0;
        do
        {
          if (*v13 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v8 = *(*(&v12 + 1) + 8 * v7);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __64__NRActiveDeviceAssertionMonitor_notifyObserversWithTokenValue___block_invoke;
          block[3] = &unk_1E86DAE98;
          block[4] = v8;
          dispatch_async(v6, block);
          ++v7;
        }

        while (v4 != v7);
        v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v4);
    }

    WeakRetained = v10;
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end