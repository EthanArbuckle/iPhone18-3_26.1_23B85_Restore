@interface MTAgentNotificationManager
+ (double)_schedulingAssertionTimeout;
+ (double)defaultAssertionTimeOutForNotification:(id)a3 type:(int64_t)a4;
- (MTAgentNotificationManager)init;
- (void)_handleNotificationWithName:(id)a3 type:(int64_t)a4;
- (void)_registerForAlarmNotifications;
- (void)_registerForDarwinNotifications;
- (void)_registerForDistributedNotifications;
- (void)_registerForLiveDarwinNotification:(id)a3;
- (void)_registerForXPCStream:(id)a3 notificationType:(int64_t)a4;
- (void)beginListening;
- (void)dealloc;
- (void)registerListener:(id)a3;
@end

@implementation MTAgentNotificationManager

- (MTAgentNotificationManager)init
{
  v8.receiver = self;
  v8.super_class = MTAgentNotificationManager;
  v2 = [(MTAgentNotificationManager *)&v8 init];
  if (v2)
  {
    v3 = +[MTScheduler serialSchedulerWithName:priority:](MTScheduler, "serialSchedulerWithName:priority:", @"com.apple.MTNotificationManager.serialqueue", +[MTScheduler defaultPriority]);
    serializer = v2->_serializer;
    v2->_serializer = v3;

    v5 = [MEMORY[0x1E695DF70] array];
    listeners = v2->_listeners;
    v2->_listeners = v5;
  }

  return v2;
}

- (void)registerListener:(id)a3
{
  v4 = a3;
  v5 = [(MTAgentNotificationManager *)self serializer];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__MTAgentNotificationManager_registerListener___block_invoke;
  v7[3] = &unk_1E7B0C928;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

void __47__MTAgentNotificationManager_registerListener___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138543618;
    v19 = v3;
    v20 = 2114;
    v21 = v4;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ registered %{public}@", buf, 0x16u);
  }

  v5 = [*(a1 + 32) listeners];
  [v5 addObject:*(a1 + 40)];

  v6 = *(a1 + 40);
  if (objc_opt_respondsToSelector())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [*(a1 + 40) liveDarwinNotifications];
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(a1 + 32) _registerForLiveDarwinNotification:*(*(&v13 + 1) + 8 * v11++)];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)beginListening
{
  [(MTAgentNotificationManager *)self _registerForDistributedNotifications];
  [(MTAgentNotificationManager *)self _registerForDarwinNotifications];

  [(MTAgentNotificationManager *)self _registerForAlarmNotifications];
}

- (void)_registerForDistributedNotifications
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ is registering for distributed notifications", &v5, 0xCu);
  }

  [(MTAgentNotificationManager *)self _registerForXPCStream:@"com.apple.distnoted.matching" notificationType:1];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_registerForDarwinNotifications
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ is registering for darwin notifications", &v5, 0xCu);
  }

  [(MTAgentNotificationManager *)self _registerForXPCStream:@"com.apple.notifyd.matching" notificationType:0];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_registerForAlarmNotifications
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ is registering for alarm notifications", &v5, 0xCu);
  }

  [(MTAgentNotificationManager *)self _registerForXPCStream:@"com.apple.alarm" notificationType:2];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_registerForLiveDarwinNotification:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MTLogForCategory(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = self;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ is registering for darwin notification %{public}@", &v8, 0x16u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _handleLiveNotification, v4, self, CFNotificationSuspensionBehaviorDrop);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(MTAgentNotificationManager *)self listeners];
  v3 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v23;
    do
    {
      v6 = 0;
      do
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v22 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v20 = 0u;
          v21 = 0u;
          v18 = 0u;
          v19 = 0u;
          v8 = [v7 liveDarwinNotifications];
          v9 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v19;
            do
            {
              v12 = 0;
              do
              {
                if (*v19 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = *(*(&v18 + 1) + 8 * v12);
                DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
                CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, v13, 0);
                ++v12;
              }

              while (v10 != v12);
              v10 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
            }

            while (v10);
          }
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v4);
  }

  v17.receiver = self;
  v17.super_class = MTAgentNotificationManager;
  [(MTAgentNotificationManager *)&v17 dealloc];
  v15 = *MEMORY[0x1E69E9840];
}

- (void)_registerForXPCStream:(id)a3 notificationType:(int64_t)a4
{
  v7 = a3;
  v8 = [a3 UTF8String];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__MTAgentNotificationManager__registerForXPCStream_notificationType___block_invoke;
  v9[3] = &unk_1E7B0CCE8;
  v9[4] = self;
  v9[5] = a4;
  xpc_set_event_stream_handler(v8, MEMORY[0x1E69E96A0], v9);
}

void __69__MTAgentNotificationManager__registerForXPCStream_notificationType___block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithCString:xpc_dictionary_get_string(xdict encoding:{*MEMORY[0x1E69E9E40]), 1}];
  v4 = MTLogForCategory(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ received notification %{public}@", &v7, 0x16u);
  }

  [*(a1 + 32) _handleNotificationWithName:v3 type:*(a1 + 40)];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_handleNotificationWithName:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  v7 = [(MTAgentNotificationManager *)self serializer];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__MTAgentNotificationManager__handleNotificationWithName_type___block_invoke;
  v9[3] = &unk_1E7B0CD10;
  v9[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  [v7 performBlock:v9];
}

void __63__MTAgentNotificationManager__handleNotificationWithName_type___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [*(a1 + 32) listeners];
  v2 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v18;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v17 + 1) + 8 * i);
        if ([v6 handlesNotification:*(a1 + 40) ofType:*(a1 + 48)])
        {
          if ((objc_opt_respondsToSelector() & 1) == 0 || ([v6 assertionTimeOutForNotification:*(a1 + 40) ofType:*(a1 + 48)], v7 == 0.0))
          {
            v8 = *(a1 + 32);
            [objc_opt_class() defaultAssertionTimeOutForNotification:*(a1 + 40) type:*(a1 + 48)];
          }

          v9 = [MTAgentNotification notificationWithType:*(a1 + 48) name:*(a1 + 40) powerAssertionTimeout:?];
          v10 = *(a1 + 40);
          v11 = *(a1 + 48);
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __63__MTAgentNotificationManager__handleNotificationWithName_type___block_invoke_2;
          v15[3] = &unk_1E7B0C9D8;
          v16 = v9;
          v12 = v9;
          [v6 handleNotification:v10 ofType:v11 completion:v15];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v3);
  }

  v13 = *MEMORY[0x1E69E9840];
}

+ (double)defaultAssertionTimeOutForNotification:(id)a3 type:(int64_t)a4
{
  if (a4 != 2)
  {
    return 0.0;
  }

  [a1 _schedulingAssertionTimeout];
  return result;
}

+ (double)_schedulingAssertionTimeout
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__MTAgentNotificationManager__schedulingAssertionTimeout__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_schedulingAssertionTimeout_onceToken != -1)
  {
    dispatch_once(&_schedulingAssertionTimeout_onceToken, block);
  }

  return *&_schedulingAssertionTimeout_assertionTimeout;
}

void __57__MTAgentNotificationManager__schedulingAssertionTimeout__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = +[MTUserDefaults sharedUserDefaults];
  v3 = MTIntegerIsPositive();
  *&_schedulingAssertionTimeout_assertionTimeout = [v2 integerForKey:@"SchedulingAssertionTimeout" isValid:v3 defaultValue:*&_schedulingAssertionTimeout_assertionTimeout];

  v4 = MTLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138543618;
    v8 = v5;
    v9 = 1026;
    v10 = *&_schedulingAssertionTimeout_assertionTimeout;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Using a scheduling power assertion timeout of %{public}d", &v7, 0x12u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

@end