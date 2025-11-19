@interface BRScreenLockMonitor
+ (id)sharedScreenLockMonitor;
- (BOOL)_getScreenLockedStateFromToken;
- (BRScreenLockMonitor)init;
- (void)_getScreenLockedStateFromToken;
- (void)_invalidateScreenLockManager;
- (void)_setScreenLocked:(BOOL)a3;
- (void)addObserver:(id)a3;
- (void)init;
- (void)removeObserver:(id)a3;
@end

@implementation BRScreenLockMonitor

uint64_t __27__BRScreenLockMonitor_init__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _getScreenLockedStateFromToken];

  return [v1 _setScreenLocked:v2];
}

- (BOOL)_getScreenLockedStateFromToken
{
  v5 = 0;
  if (brc_notify_get_state(self->_screenLockedUnlockedNotifyToken, &v5, [@"com.apple.springboard.lockstate" UTF8String]))
  {
    v2 = brc_bread_crumbs("[BRScreenLockMonitor _getScreenLockedStateFromToken]", 111);
    v3 = brc_default_log(0, 0);
    if (os_log_type_enabled(v3, 0x90u))
    {
      [(BRScreenLockMonitor *)v2 _getScreenLockedStateFromToken];
    }
  }

  return v5 != 0;
}

+ (id)sharedScreenLockMonitor
{
  if (sharedScreenLockMonitor_onceToken != -1)
  {
    +[BRScreenLockMonitor sharedScreenLockMonitor];
  }

  v3 = sharedScreenLockMonitor_monitor;

  return v3;
}

uint64_t __46__BRScreenLockMonitor_sharedScreenLockMonitor__block_invoke()
{
  sharedScreenLockMonitor_monitor = objc_alloc_init(BRScreenLockMonitor);

  return MEMORY[0x1EEE66BB8]();
}

- (BRScreenLockMonitor)init
{
  v19.receiver = self;
  v19.super_class = BRScreenLockMonitor;
  v2 = [(BRScreenLockMonitor *)&v19 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(v3, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.br.screen-lock-monitor", v4);

    notificationQueue = v2->_notificationQueue;
    v2->_notificationQueue = v5;

    v2->_screenLockedUnlockedNotifyToken = -1;
    v7 = [@"com.apple.springboard.lockstate" UTF8String];
    v8 = v2->_notificationQueue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __27__BRScreenLockMonitor_init__block_invoke;
    handler[3] = &unk_1E7A15E58;
    v9 = v2;
    v18 = v9;
    v10 = notify_register_dispatch(v7, &v2->_screenLockedUnlockedNotifyToken, v8, handler);
    if (v10)
    {
      v11 = v10;
      v12 = brc_bread_crumbs("[BRScreenLockMonitor init]", 66);
      v13 = brc_default_log(0, 0);
      if (os_log_type_enabled(v13, 0x90u))
      {
        [(BRScreenLockMonitor *)v12 init];
      }
    }

    v9->_screenLocked = [(BRScreenLockMonitor *)v9 _getScreenLockedStateFromToken];
    v14 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    screenLockObservers = v9->_screenLockObservers;
    v9->_screenLockObservers = v14;
  }

  return v2;
}

- (void)_invalidateScreenLockManager
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = brc_bread_crumbs("[BRScreenLockMonitor _invalidateScreenLockManager]", 124);
  v4 = brc_default_log(1, 0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = [@"com.apple.springboard.lockstate" UTF8String];
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1AE2A9000, v4, OS_LOG_TYPE_DEFAULT, "[NOTICE] Unregister for %s%@", &v8, 0x16u);
  }

  screenLockedUnlockedNotifyToken = self->_screenLockedUnlockedNotifyToken;
  if (screenLockedUnlockedNotifyToken != -1)
  {
    notify_cancel(screenLockedUnlockedNotifyToken);
    self->_screenLockedUnlockedNotifyToken = -1;
  }

  screenLockObservers = self->_screenLockObservers;
  self->_screenLockObservers = 0;

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_setScreenLocked:(BOOL)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__BRScreenLockMonitor__setScreenLocked___block_invoke;
  v5[3] = &unk_1E7A15768;
  v5[4] = self;
  v6 = a3;
  v4 = MEMORY[0x1B26FEA90](v5, a2);
  dispatch_assert_queue_V2(self->_notificationQueue);
  v4[2](v4);
}

void __40__BRScreenLockMonitor__setScreenLocked___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 20) != v2)
  {
    *(v1 + 20) = v2;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = *(*(a1 + 32) + 24);
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v10 + 1) + 8 * v8++) screenLockChanged:{*(a1 + 40), v10}];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  notificationQueue = self->_notificationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__BRScreenLockMonitor_addObserver___block_invoke;
  v7[3] = &unk_1E7A14A08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(notificationQueue, v7);
}

uint64_t __35__BRScreenLockMonitor_addObserver___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 20);

  return [v2 screenLockChanged:v3];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  notificationQueue = self->_notificationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__BRScreenLockMonitor_removeObserver___block_invoke;
  v7[3] = &unk_1E7A14A08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(notificationQueue, v7);
}

- (void)init
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 67109378;
  v4[1] = a2;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_1AE2A9000, log, 0x90u, "[ERROR] can't register to screen lock/unlock changes. error: %d%@", v4, 0x12u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_getScreenLockedStateFromToken
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1AE2A9000, a2, 0x90u, "[ERROR] Failed to query whether screen is locked%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end