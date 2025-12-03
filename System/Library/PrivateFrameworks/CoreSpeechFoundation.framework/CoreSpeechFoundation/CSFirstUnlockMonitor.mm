@interface CSFirstUnlockMonitor
+ (id)sharedInstance;
- (BOOL)_checkFirstUnlocked;
- (CSFirstUnlockMonitor)init;
- (void)_didReceiveFirstUnlock:(BOOL)unlock;
- (void)_didReceiveFirstUnlockInQueue:(BOOL)queue;
- (void)_firstUnlockNotified;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)_stopMonitoring;
@end

@implementation CSFirstUnlockMonitor

+ (id)sharedInstance
{
  if (+[CSUtils isDarwinOS])
  {
    v2 = 0;
  }

  else
  {
    if (sharedInstance_onceToken_15073 != -1)
    {
      dispatch_once(&sharedInstance_onceToken_15073, &__block_literal_global_15074);
    }

    v2 = sharedInstance__sharedInstance_15075;
  }

  return v2;
}

- (CSFirstUnlockMonitor)init
{
  v3.receiver = self;
  v3.super_class = CSFirstUnlockMonitor;
  result = [(CSEventMonitor *)&v3 init];
  if (result)
  {
    result->_notifyToken = -1;
    result->_firstUnlocked = 0;
  }

  return result;
}

- (BOOL)_checkFirstUnlocked
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = MKBDeviceUnlockedSinceBoot();
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"YES";
    if (!v2)
    {
      v4 = @"NO";
    }

    v7 = 136315394;
    v8 = "[CSFirstUnlockMonitor _checkFirstUnlocked]";
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s Unlocked since boot = %{public}@", &v7, 0x16u);
  }

  result = v2 == 1;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_didReceiveFirstUnlock:(BOOL)unlock
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47__CSFirstUnlockMonitor__didReceiveFirstUnlock___block_invoke;
  v3[3] = &unk_1E865CA18;
  v3[4] = self;
  unlockCopy = unlock;
  [(CSEventMonitor *)self enumerateObservers:v3];
}

- (void)_didReceiveFirstUnlockInQueue:(BOOL)queue
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__CSFirstUnlockMonitor__didReceiveFirstUnlockInQueue___block_invoke;
  v3[3] = &unk_1E865CA18;
  v3[4] = self;
  queueCopy = queue;
  [(CSEventMonitor *)self enumerateObserversInQueue:v3];
}

- (void)_stopMonitoring
{
  v8 = *MEMORY[0x1E69E9840];
  notifyToken = self->_notifyToken;
  if (notifyToken != -1)
  {
    notify_cancel(notifyToken);
    self->_notifyToken = -1;
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[CSFirstUnlockMonitor _stopMonitoring]";
      _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : First unlock", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_firstUnlockNotified
{
  _checkFirstUnlocked = [(CSFirstUnlockMonitor *)self _checkFirstUnlocked];
  self->_firstUnlocked = _checkFirstUnlocked;

  [(CSFirstUnlockMonitor *)self _didReceiveFirstUnlock:_checkFirstUnlocked];
}

- (void)_startMonitoringWithQueue:(id)queue
{
  v11 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  if (self->_notifyToken == -1)
  {
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __50__CSFirstUnlockMonitor__startMonitoringWithQueue___block_invoke;
    handler[3] = &unk_1E865C9F0;
    handler[4] = self;
    notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &self->_notifyToken, queueCopy, handler);
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = "[CSFirstUnlockMonitor _startMonitoringWithQueue:]";
      v6 = "%s Start monitoring : First unlock";
      goto LABEL_6;
    }
  }

  else
  {
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = "[CSFirstUnlockMonitor _startMonitoringWithQueue:]";
      v6 = "%s Cannot start monitoring first unlock because it was already started";
LABEL_6:
      _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
    }
  }

  self->_firstUnlocked = [(CSFirstUnlockMonitor *)self _checkFirstUnlocked];

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __38__CSFirstUnlockMonitor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CSFirstUnlockMonitor);
  v1 = sharedInstance__sharedInstance_15075;
  sharedInstance__sharedInstance_15075 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end