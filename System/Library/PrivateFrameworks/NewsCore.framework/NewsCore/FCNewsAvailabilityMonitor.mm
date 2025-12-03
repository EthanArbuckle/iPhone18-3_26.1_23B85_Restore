@interface FCNewsAvailabilityMonitor
- (BOOL)_isNewsAvailable;
- (FCNewsAvailabilityMonitor)init;
- (FCNewsAvailabilityMonitor)initWithApplicationProxy:(id)proxy queue:(id)queue;
- (FCNewsAvailabilityMonitor)initWithProcessVariant:(unint64_t)variant queue:(id)queue;
- (void)_updateAvailability;
- (void)addNotificationBlock:(id)block;
- (void)dealloc;
@end

@implementation FCNewsAvailabilityMonitor

- (FCNewsAvailabilityMonitor)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCNewsAvailabilityMonitor init]";
    v10 = 2080;
    v11 = "FCNewsAvailabilityMonitor.m";
    v12 = 1024;
    v13 = 60;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCNewsAvailabilityMonitor init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCNewsAvailabilityMonitor)initWithApplicationProxy:(id)proxy queue:(id)queue
{
  v29 = *MEMORY[0x1E69E9840];
  proxyCopy = proxy;
  queueCopy = queue;
  if (!proxyCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "applicationProxy"];
    *buf = 136315906;
    v22 = "[FCNewsAvailabilityMonitor initWithApplicationProxy:queue:]";
    v23 = 2080;
    v24 = "FCNewsAvailabilityMonitor.m";
    v25 = 1024;
    v26 = 65;
    v27 = 2114;
    v28 = v18;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (queueCopy)
    {
      goto LABEL_6;
    }
  }

  else if (queueCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "queue"];
    *buf = 136315906;
    v22 = "[FCNewsAvailabilityMonitor initWithApplicationProxy:queue:]";
    v23 = 2080;
    v24 = "FCNewsAvailabilityMonitor.m";
    v25 = 1024;
    v26 = 66;
    v27 = 2114;
    v28 = v19;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v20.receiver = self;
  v20.super_class = FCNewsAvailabilityMonitor;
  v8 = [(FCNewsAvailabilityMonitor *)&v20 init];
  if (v8)
  {
    v9 = objc_opt_new();
    blocks = v8->_blocks;
    v8->_blocks = v9;

    v11 = [proxyCopy copy];
    applicationProxy = v8->_applicationProxy;
    v8->_applicationProxy = v11;

    objc_storeStrong(&v8->_queue, queue);
    DistributedCenter = CFNotificationCenterGetDistributedCenter();
    CFNotificationCenterAddObserver(DistributedCenter, v8, applicationStateNotificationCallback, @"com.apple.LaunchServices.applicationStateChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v14 = CFNotificationCenterGetDistributedCenter();
    CFNotificationCenterAddObserver(v14, v8, applicationRegisteredAndUnregisteredNotificationCallback, @"com.apple.LaunchServices.applicationRegistered", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v15 = CFNotificationCenterGetDistributedCenter();
    CFNotificationCenterAddObserver(v15, v8, applicationRegisteredAndUnregisteredNotificationCallback, @"com.apple.LaunchServices.applicationUnregistered", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    [(FCNewsAvailabilityMonitor *)v8 _updateAvailability];
  }

  v16 = *MEMORY[0x1E69E9840];
  return v8;
}

- (FCNewsAvailabilityMonitor)initWithProcessVariant:(unint64_t)variant queue:(id)queue
{
  v25 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  if (!queueCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "queue"];
    *buf = 136315906;
    v18 = "[FCNewsAvailabilityMonitor initWithProcessVariant:queue:]";
    v19 = 2080;
    v20 = "FCNewsAvailabilityMonitor.m";
    v21 = 1024;
    v22 = 104;
    v23 = 2114;
    v24 = v16;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (variant - 1 >= 2)
  {
    if (variant)
    {
      v7 = 0;
    }

    else
    {
      v8 = objc_opt_class();
      bundleProxyForCurrentProcess = [MEMORY[0x1E6963618] bundleProxyForCurrentProcess];
      v10 = FCCheckedDynamicCast(v8, bundleProxyForCurrentProcess);

      v11 = objc_opt_class();
      containingBundle = [v10 containingBundle];
      v7 = FCCheckedDynamicCast(v11, containingBundle);
    }
  }

  else
  {
    v7 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:@"com.apple.news"];
  }

  v13 = [(FCNewsAvailabilityMonitor *)self initWithApplicationProxy:v7 queue:queueCopy];

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)dealloc
{
  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterRemoveObserver(DistributedCenter, self, 0, 0);
  v4.receiver = self;
  v4.super_class = FCNewsAvailabilityMonitor;
  [(FCNewsAvailabilityMonitor *)&v4 dealloc];
}

- (void)addNotificationBlock:(id)block
{
  v17 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (!blockCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "notificationBlock"];
    *buf = 136315906;
    v10 = "[FCNewsAvailabilityMonitor addNotificationBlock:]";
    v11 = 2080;
    v12 = "FCNewsAvailabilityMonitor.m";
    v13 = 1024;
    v14 = 162;
    v15 = 2114;
    v16 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  blocks = [(FCNewsAvailabilityMonitor *)self blocks];
  v6 = _Block_copy(blockCopy);
  [blocks addObject:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_updateAvailability
{
  v18 = *MEMORY[0x1E69E9840];
  NewsIsAvailable = self->_NewsIsAvailable;
  _isNewsAvailable = [(FCNewsAvailabilityMonitor *)self _isNewsAvailable];
  if (NewsIsAvailable != _isNewsAvailable)
  {
    self->_NewsIsAvailable = _isNewsAvailable;
    blocks = [(FCNewsAvailabilityMonitor *)self blocks];
    v6 = [blocks copy];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = v6;
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

          (*(*(*(&v13 + 1) + 8 * v11) + 16))(*(*(&v13 + 1) + 8 * v11));
          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isNewsAvailable
{
  applicationProxy = [(FCNewsAvailabilityMonitor *)self applicationProxy];
  appState = [applicationProxy appState];

  if ([appState isRestricted])
  {
    isInstalled = 0;
  }

  else
  {
    isInstalled = [appState isInstalled];
  }

  return isInstalled;
}

@end