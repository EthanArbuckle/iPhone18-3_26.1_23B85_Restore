@interface CalDeviceLockObserver
+ (BOOL)hasBeenUnlockedSinceBoot;
+ (void)hasBeenUnlockedSinceBoot;
- (BOOL)hasBeenUnlockedSinceBoot;
- (CalDeviceLockObserver)initWithStateChangedCallback:(id)a3;
- (void)_notificationReceived;
@end

@implementation CalDeviceLockObserver

- (CalDeviceLockObserver)initWithStateChangedCallback:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CalDeviceLockObserver;
  v5 = [(CalDeviceLockObserver *)&v16 init];
  v6 = v5;
  if (v5)
  {
    [(CalDeviceLockObserver *)v5 setStateChangedCallback:v4];
    v7 = objc_opt_class();
    v8 = CalGenerateQualifiedIdentifierWithClassAndSubdomain(v7, @"work");
    v9 = [v8 UTF8String];

    v10 = dispatch_queue_create(v9, 0);
    [(CalDeviceLockObserver *)v6 setWorkQueue:v10];

    v11 = objc_opt_class();
    v12 = CalGenerateQualifiedIdentifierWithClassAndSubdomain(v11, @"callback");
    v13 = [v12 UTF8String];

    v14 = dispatch_queue_create(v13, MEMORY[0x1E69E96A8]);
    [(CalDeviceLockObserver *)v6 setCallbackQueue:v14];
  }

  return v6;
}

- (void)_notificationReceived
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 notificationListener];
  v8 = [v1 notificationName];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __46__CalDeviceLockObserver__notificationReceived__block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  v3 = [objc_opt_class() hasBeenUnlockedSinceBoot];
  [*v2 setInternalHasBeenUnlockedSinceBoot:v3];
  if (v3)
  {
    v4 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __46__CalDeviceLockObserver__notificationReceived__block_invoke_cold_1(v2);
    }

    v5 = [*v2 notificationListener];

    if (v5)
    {
      v6 = [*v2 notificationListener];
      [v6 deactivate];

      [*v2 setNotificationListener:0];
    }
  }

  v7 = [*v2 stateChangedCallback];
  if (v7)
  {
    v8 = [*v2 callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__CalDeviceLockObserver__notificationReceived__block_invoke_5;
    block[3] = &unk_1E7EC64B8;
    v10 = v7;
    dispatch_async(v8, block);
  }
}

- (BOOL)hasBeenUnlockedSinceBoot
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(CalDeviceLockObserver *)self workQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__CalDeviceLockObserver_hasBeenUnlockedSinceBoot__block_invoke;
  v5[3] = &unk_1E7EC6ED8;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __49__CalDeviceLockObserver_hasBeenUnlockedSinceBoot__block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if (([*(a1 + 32) internalHasBeenUnlockedSinceBoot] & 1) == 0)
  {
    v3 = [*v2 notificationListener];

    if (!v3)
    {
      v4 = *v2;
      v5 = [objc_opt_class() hasBeenUnlockedSinceBoot];
      v6 = +[CalFoundationLogSubsystem defaultCategory];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        __49__CalDeviceLockObserver_hasBeenUnlockedSinceBoot__block_invoke_cold_1(v2, v5);
      }

      [*v2 setInternalHasBeenUnlockedSinceBoot:v5];
      if ((v5 & 1) == 0)
      {
        v7 = +[CalFoundationLogSubsystem defaultCategory];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          __49__CalDeviceLockObserver_hasBeenUnlockedSinceBoot__block_invoke_cold_2(v2, v7);
        }

        objc_initWeak(&location, *v2);
        v8 = [CalDarwinNotificationListener alloc];
        v9 = *v2;
        v10 = [objc_opt_class() stateChangedNotificationName];
        v14 = MEMORY[0x1E69E9820];
        v15 = 3221225472;
        v16 = __49__CalDeviceLockObserver_hasBeenUnlockedSinceBoot__block_invoke_7;
        v17 = &unk_1E7EC69C0;
        objc_copyWeak(&v18, &location);
        v11 = [(CalDarwinNotificationListener *)v8 initWithNotificationName:v10 callback:&v14];
        [*v2 setNotificationListener:{v11, v14, v15, v16, v17}];

        v12 = [*v2 notificationListener];
        [v12 activate];

        objc_destroyWeak(&v18);
        objc_destroyWeak(&location);
      }
    }
  }

  result = [*(a1 + 32) internalHasBeenUnlockedSinceBoot];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __49__CalDeviceLockObserver_hasBeenUnlockedSinceBoot__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notificationReceived];
}

+ (BOOL)hasBeenUnlockedSinceBoot
{
  v2 = MKBDeviceUnlockedSinceBoot();
  v3 = v2;
  if ((v2 & 0x80000000) == 0)
  {
    return v2 == 1;
  }

  v5 = +[CalFoundationLogSubsystem defaultCategory];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    +[(CalDeviceLockObserver *)v3];
  }

  return 0;
}

void __46__CalDeviceLockObserver__notificationReceived__block_invoke_cold_1(uint64_t *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v2 = CalBooleanAsString(1);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __49__CalDeviceLockObserver_hasBeenUnlockedSinceBoot__block_invoke_cold_1(uint64_t *a1, char a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = CalBooleanAsString(a2 & 1);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __49__CalDeviceLockObserver_hasBeenUnlockedSinceBoot__block_invoke_cold_2(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_1B990D000, a2, OS_LOG_TYPE_DEBUG, "Starting up [%@]'s listener in order to find out when the value of 'hasBeenUnlockedSinceBoot' should change.", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

+ (void)hasBeenUnlockedSinceBoot
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:a1];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1B990D000, a2, OS_LOG_TYPE_ERROR, "Received an error when calling MKBDeviceUnlockedSinceBoot().  Error code: [%@]", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end