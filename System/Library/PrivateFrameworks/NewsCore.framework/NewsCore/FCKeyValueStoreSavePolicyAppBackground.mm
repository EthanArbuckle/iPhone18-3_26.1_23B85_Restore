@interface FCKeyValueStoreSavePolicyAppBackground
- (FCKeyValueStoreSavePolicyAppBackground)initWithActivityMonitor:(id)monitor backgroundTaskable:(id)taskable;
- (void)_saveIfNeeded;
- (void)activityObservingApplicationDidEnterBackground;
- (void)activityObservingApplicationWillResignActiveWithSceneID:(id)d;
- (void)activityObservingApplicationWillTerminate;
- (void)scheduleSaveOnQueue:(id)queue handler:(id)handler;
@end

@implementation FCKeyValueStoreSavePolicyAppBackground

- (FCKeyValueStoreSavePolicyAppBackground)initWithActivityMonitor:(id)monitor backgroundTaskable:(id)taskable
{
  monitorCopy = monitor;
  taskableCopy = taskable;
  v14.receiver = self;
  v14.super_class = FCKeyValueStoreSavePolicyAppBackground;
  v8 = [(FCKeyValueStoreSavePolicyAppBackground *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v8->_inBackground = 1;
    objc_storeStrong(&v8->_backgroundTaskable, taskable);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __85__FCKeyValueStoreSavePolicyAppBackground_initWithActivityMonitor_backgroundTaskable___block_invoke;
    v11[3] = &unk_1E7C36C58;
    v12 = monitorCopy;
    v13 = v9;
    FCPerformBlockOnMainThread(v11);
  }

  return v9;
}

unint64_t __85__FCKeyValueStoreSavePolicyAppBackground_initWithActivityMonitor_backgroundTaskable___block_invoke(uint64_t a1)
{
  [*(a1 + 32) addObserver:*(a1 + 40)];
  v2 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    result = [*(a1 + 32) currentApplicationState];
    if (result <= 2)
    {
      *(*(a1 + 40) + 16) = 0x10100u >> (8 * result);
    }
  }

  return result;
}

- (void)scheduleSaveOnQueue:(id)queue handler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__FCKeyValueStoreSavePolicyAppBackground_scheduleSaveOnQueue_handler___block_invoke;
  v10[3] = &unk_1E7C38FF0;
  v10[4] = self;
  v11 = queueCopy;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = queueCopy;
  FCPerformBlockOnMainThread(v10);
}

void __70__FCKeyValueStoreSavePolicyAppBackground_scheduleSaveOnQueue_handler___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  v2 = _Block_copy(*(a1 + 48));
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  if (*(*(a1 + 32) + 16) == 1)
  {
    v5 = dispatch_time(0, 5000000000);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __70__FCKeyValueStoreSavePolicyAppBackground_scheduleSaveOnQueue_handler___block_invoke_2;
    v9[3] = &unk_1E7C36EA0;
    v9[4] = *(a1 + 32);
    v6 = MEMORY[0x1E69E96A0];
    v7 = v9;
  }

  else
  {
    v5 = dispatch_time(0, 60000000000);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __70__FCKeyValueStoreSavePolicyAppBackground_scheduleSaveOnQueue_handler___block_invoke_3;
    v8[3] = &unk_1E7C36EA0;
    v8[4] = *(a1 + 32);
    v6 = MEMORY[0x1E69E96A0];
    v7 = v8;
  }

  dispatch_after(v5, v6, v7);
}

- (void)activityObservingApplicationDidEnterBackground
{
  [MEMORY[0x1E696AF00] isMainThread];
  self->_inBackground = 1;

  [(FCKeyValueStoreSavePolicyAppBackground *)self _saveIfNeeded];
}

- (void)activityObservingApplicationWillResignActiveWithSceneID:(id)d
{
  [MEMORY[0x1E696AF00] isMainThread];
  self->_inBackground = 1;

  [(FCKeyValueStoreSavePolicyAppBackground *)self _saveIfNeeded];
}

- (void)activityObservingApplicationWillTerminate
{
  [MEMORY[0x1E696AF00] isMainThread];
  self->_inBackground = 1;

  [(FCKeyValueStoreSavePolicyAppBackground *)self _saveIfNeeded];
}

- (void)_saveIfNeeded
{
  [MEMORY[0x1E696AF00] isMainThread];
  v3 = self->_targetQueue;
  if (v3)
  {
    v4 = _Block_copy(self->_pendingSaveHandler);
    pendingSaveHandler = self->_pendingSaveHandler;
    self->_pendingSaveHandler = 0;

    if (v4)
    {
      v6 = [(FCBackgroundTaskable *)self->_backgroundTaskable fc_beginBackgroundTaskWithName:@"save-kvs" expirationHandler:0];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __55__FCKeyValueStoreSavePolicyAppBackground__saveIfNeeded__block_invoke_2;
      block[3] = &unk_1E7C3A700;
      block[4] = self;
      v8 = v4;
      v9 = v6;
      dispatch_async(v3, block);
    }

    if (self->_inBackground)
    {
      FCDispatchAsyncWithQualityOfService(v3, 25, &__block_literal_global_32_1);
    }
  }
}

uint64_t __55__FCKeyValueStoreSavePolicyAppBackground__saveIfNeeded__block_invoke_2(void *a1)
{
  (*(a1[5] + 16))();
  v2 = *(a1[4] + 8);
  v3 = a1[6];

  return [v2 fc_endBackgroundTask:v3];
}

@end