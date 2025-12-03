@interface MTDeviceListener
+ (BOOL)_latestKeyBagValueForHasBeenUnlockedSinceBoot;
+ (BOOL)hasBeenUnlockedSinceBoot;
+ (id)sharedDeviceListener;
+ (void)_latestKeyBagValueForHasBeenUnlockedSinceBoot;
- (BOOL)_hasBeenUnlockedSinceBoot;
- (MTDeviceListener)init;
- (id)gatherDiagnostics;
- (void)handleNotification:(id)notification ofType:(int64_t)type completion:(id)completion;
- (void)printDiagnostics;
@end

@implementation MTDeviceListener

+ (id)sharedDeviceListener
{
  if (sharedDeviceListener_onceToken != -1)
  {
    +[MTDeviceListener sharedDeviceListener];
  }

  v3 = sharedDeviceListener__sharedDeviceListener;

  return v3;
}

uint64_t __40__MTDeviceListener_sharedDeviceListener__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedDeviceListener__sharedDeviceListener;
  sharedDeviceListener__sharedDeviceListener = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (MTDeviceListener)init
{
  v6.receiver = self;
  v6.super_class = MTDeviceListener;
  v2 = [(MTDeviceListener *)&v6 init];
  if (v2)
  {
    v3 = +[MTScheduler serialSchedulerWithName:priority:](MTScheduler, "serialSchedulerWithName:priority:", @"com.apple.MTDeviceUtilities.work-queue", +[MTScheduler defaultPriority]);
    workScheduler = v2->_workScheduler;
    v2->_workScheduler = v3;
  }

  return v2;
}

- (void)handleNotification:(id)notification ofType:(int64_t)type completion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = MTLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ received notification", buf, 0xCu);
  }

  workScheduler = [(MTDeviceListener *)self workScheduler];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__MTDeviceListener_handleNotification_ofType_completion___block_invoke;
  v10[3] = &unk_1E7B0C9D8;
  v10[4] = self;
  [workScheduler performBlock:v10];

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __57__MTDeviceListener_handleNotification_ofType_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() _latestKeyBagValueForHasBeenUnlockedSinceBoot];
  [*(a1 + 32) setInternalHasBeenUnlockedSinceBoot:v3];
  v4 = MTLogForCategory(0);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      *buf = 138543362;
      v12 = v6;
      v7 = "%{public}@ device has been unlocked";
LABEL_6:
      _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, v7, buf, 0xCu);
    }
  }

  else if (v5)
  {
    v8 = *(a1 + 32);
    *buf = 138543362;
    v12 = v8;
    v7 = "%{public}@ device hasn't been unlocked";
    goto LABEL_6;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__MTDeviceListener_handleNotification_ofType_completion___block_invoke_9;
  block[3] = &unk_1E7B0C9D8;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v9 = *MEMORY[0x1E69E9840];
}

void __57__MTDeviceListener_handleNotification_ofType_completion___block_invoke_9(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ posting MTDeviceHasBeenUnlockedForFirstTime notification", &v6, 0xCu);
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"MTDeviceHasBeenUnlockedForFirstTime" object:0];

  v5 = *MEMORY[0x1E69E9840];
}

+ (BOOL)hasBeenUnlockedSinceBoot
{
  sharedDeviceListener = [self sharedDeviceListener];
  _hasBeenUnlockedSinceBoot = [sharedDeviceListener _hasBeenUnlockedSinceBoot];

  return _hasBeenUnlockedSinceBoot;
}

- (BOOL)_hasBeenUnlockedSinceBoot
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v3 = dispatch_semaphore_create(0);
  workScheduler = [(MTDeviceListener *)self workScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__MTDeviceListener__hasBeenUnlockedSinceBoot__block_invoke;
  v7[3] = &unk_1E7B0CAE8;
  v7[4] = self;
  v9 = &v10;
  v5 = v3;
  v8 = v5;
  [workScheduler performBlock:v7];

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(workScheduler) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return workScheduler;
}

intptr_t __45__MTDeviceListener__hasBeenUnlockedSinceBoot__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) internalHasBeenUnlockedSinceBoot] & 1) == 0)
  {
    v2 = *(a1 + 32);
    [v2 setInternalHasBeenUnlockedSinceBoot:{objc_msgSend(objc_opt_class(), "_latestKeyBagValueForHasBeenUnlockedSinceBoot")}];
    v3 = MTLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v7 = 138543618;
      v8 = v4;
      v9 = 1024;
      v10 = [v4 internalHasBeenUnlockedSinceBoot];
      _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Found initial hasBeenUnlockedSinceBoot value of [%d]", &v7, 0x12u);
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) internalHasBeenUnlockedSinceBoot];
  result = dispatch_semaphore_signal(*(a1 + 40));
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

+ (BOOL)_latestKeyBagValueForHasBeenUnlockedSinceBoot
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getMKBDeviceUnlockedSinceBootSymbolLoc_ptr;
  v11 = getMKBDeviceUnlockedSinceBootSymbolLoc_ptr;
  if (!getMKBDeviceUnlockedSinceBootSymbolLoc_ptr)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke;
    v7[3] = &unk_1E7B0C600;
    v7[4] = &v8;
    __getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke(v7);
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    +[MTDeviceListener _latestKeyBagValueForHasBeenUnlockedSinceBoot];
  }

  v3 = v2();
  v4 = v3;
  if ((v3 & 0x80000000) == 0)
  {
    return v3 == 1;
  }

  v6 = MTLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    +[(MTDeviceListener *)v4];
  }

  return 0;
}

- (void)printDiagnostics
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(6);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6[0]) = 0;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "-----MTDeviceListener-----", v6, 2u);
  }

  v3 = MTLogForCategory(6);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    hasBeenUnlockedSinceBoot = [objc_opt_class() hasBeenUnlockedSinceBoot];
    v6[0] = 67240192;
    v6[1] = hasBeenUnlockedSinceBoot;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "Unlocked since boot: %{public}d", v6, 8u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (id)gatherDiagnostics
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"Unlocked since boot";
  hasBeenUnlockedSinceBoot = [objc_opt_class() hasBeenUnlockedSinceBoot];
  v3 = @"NO";
  if (hasBeenUnlockedSinceBoot)
  {
    v3 = @"YES";
  }

  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (void)_latestKeyBagValueForHasBeenUnlockedSinceBoot
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"int MTDeviceUnlockedSinceBoot(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"MTDeviceListener.m" lineNumber:21 description:{@"%s", dlerror()}];

  __break(1u);
}

@end