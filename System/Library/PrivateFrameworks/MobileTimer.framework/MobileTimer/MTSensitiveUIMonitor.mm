@interface MTSensitiveUIMonitor
+ (id)sharedMonitor;
- (BOOL)_hideSensitiveUI;
- (BOOL)_isVendorRelease;
- (MTSensitiveUIMonitor)init;
- (void)_handleNotification;
- (void)_withLock:(id)a3;
- (void)dealloc;
@end

@implementation MTSensitiveUIMonitor

+ (id)sharedMonitor
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__MTSensitiveUIMonitor_sharedMonitor__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedMonitor_onceToken != -1)
  {
    dispatch_once(&sharedMonitor_onceToken, block);
  }

  v2 = sharedMonitor_monitor;

  return v2;
}

uint64_t __37__MTSensitiveUIMonitor_sharedMonitor__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedMonitor_monitor;
  sharedMonitor_monitor = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (BOOL)_isVendorRelease
{
  if (_isVendorRelease_onceToken != -1)
  {
    [MTSensitiveUIMonitor _isVendorRelease];
  }

  return _isVendorRelease___isVendorRelease;
}

void __40__MTSensitiveUIMonitor__isVendorRelease__block_invoke()
{
  v0 = MGGetStringAnswer();
  _isVendorRelease___isVendorRelease = [@"Vendor" isEqualToString:v0];
}

- (MTSensitiveUIMonitor)init
{
  v11 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = MTSensitiveUIMonitor;
  v2 = [(MTSensitiveUIMonitor *)&v8 init];
  if (v2)
  {
    v3 = MTLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v10 = v2;
      _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "Initializing %{public}@", buf, 0xCu);
    }

    v4 = objc_opt_new();
    observers = v2->_observers;
    v2->_observers = v4;

    v2->_needPrefsUpdate = 1;
    [(MTSensitiveUIMonitor *)v2 registerForNotifications];
  }

  v6 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)dealloc
{
  [(MTSensitiveUIMonitor *)self unregisterForNotifications];
  v3.receiver = self;
  v3.super_class = MTSensitiveUIMonitor;
  [(MTSensitiveUIMonitor *)&v3 dealloc];
}

- (void)_withLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_handleNotification
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v7 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ sensitiveUIStateChanged", buf, 0xCu);
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__MTSensitiveUIMonitor__handleNotification__block_invoke;
  v5[3] = &unk_1E7B0C9D8;
  v5[4] = self;
  [(MTSensitiveUIMonitor *)self _withLock:v5];
  [(MTObserverStore *)self->_observers enumerateObserversWithBlock:&__block_literal_global_9_3];
  v4 = *MEMORY[0x1E69E9840];
}

void __43__MTSensitiveUIMonitor__handleNotification__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 sensitiveUIStateChanged];
  }
}

- (BOOL)_hideSensitiveUI
{
  if ([(MTSensitiveUIMonitor *)self _isVendorRelease])
  {
    v3 = 1;
  }

  else
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __40__MTSensitiveUIMonitor__hideSensitiveUI__block_invoke;
    v5[3] = &unk_1E7B0CA50;
    v5[4] = self;
    v5[5] = &v6;
    [(MTSensitiveUIMonitor *)self _withLock:v5];
    v3 = *(v7 + 24);
    _Block_object_dispose(&v6, 8);
  }

  return v3 & 1;
}

uint64_t __40__MTSensitiveUIMonitor__hideSensitiveUI__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 9) == 1)
  {
    *(v1 + 8) = 0;
    *(*(result + 32) + 9) = 0;
    v1 = *(result + 32);
  }

  *(*(*(result + 40) + 8) + 24) = *(v1 + 8);
  return result;
}

@end