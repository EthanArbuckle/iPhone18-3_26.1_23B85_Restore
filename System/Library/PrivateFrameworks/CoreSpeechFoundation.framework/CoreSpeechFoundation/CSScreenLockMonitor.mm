@interface CSScreenLockMonitor
+ (id)sharedInstance;
- (BOOL)_queryIsScreenLocked;
- (CSScreenLockMonitor)init;
- (void)_startMonitoringWithQueue:(id)a3;
- (void)_stopMonitoring;
- (void)dealloc;
- (void)screenLockStateChanged;
@end

@implementation CSScreenLockMonitor

- (void)screenLockStateChanged
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [(CSScreenLockMonitor *)self _queryIsScreenLocked];
  self->_isScreenLocked = v3;
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"Unlocked";
    if (v3)
    {
      v5 = @"Locked";
    }

    *buf = 136315394;
    v9 = "[CSScreenLockMonitor screenLockStateChanged]";
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Screen Lock Status Changed : %{public}@", buf, 0x16u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__CSScreenLockMonitor_screenLockStateChanged__block_invoke;
  v7[3] = &unk_1E865CB20;
  v7[4] = self;
  [(CSEventMonitor *)self enumerateObserversInQueue:v7];
  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)_queryIsScreenLocked
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"MKBUserSessionID";
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:getuid()];
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  LOBYTE(v2) = MKBGetDeviceLockState() - 1 < 2;
  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_10379 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_10379, &__block_literal_global_10380);
  }

  v3 = sharedInstance__sharedInstance_10381;

  return v3;
}

- (void)_stopMonitoring
{
  v8 = *MEMORY[0x1E69E9840];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.mobile.keybagd.lock_status", 0);
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSScreenLockMonitor _stopMonitoring]";
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : screen lock / unlock state", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_startMonitoringWithQueue:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__CSScreenLockMonitor__startMonitoringWithQueue___block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(a3, block);
}

uint64_t __49__CSScreenLockMonitor__startMonitoringWithQueue___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, *(a1 + 32), HandleDeviceLockStateChanged, @"com.apple.mobile.keybagd.lock_status", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSScreenLockMonitor _startMonitoringWithQueue:]_block_invoke";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s Start monitoring : screen lock / unlock state", &v6, 0xCu);
  }

  result = [*(a1 + 32) _queryIsScreenLocked];
  *(*(a1 + 32) + 24) = result;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CSScreenLockMonitor;
  [(CSEventMonitor *)&v2 dealloc];
}

- (CSScreenLockMonitor)init
{
  v3.receiver = self;
  v3.super_class = CSScreenLockMonitor;
  result = [(CSEventMonitor *)&v3 init];
  if (result)
  {
    result->_isScreenLocked = 0;
  }

  return result;
}

uint64_t __37__CSScreenLockMonitor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CSScreenLockMonitor);
  v1 = sharedInstance__sharedInstance_10381;
  sharedInstance__sharedInstance_10381 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end