@interface CSJarvisTriggerModeMonitor
+ (id)sharedInstance;
+ (id)triggerModeStringDescription:(int64_t)description;
- (CSJarvisTriggerModeMonitor)init;
- (int64_t)_fetchTriggerMode;
- (int64_t)getTriggerMode;
- (void)_notifyJarvisTriggerModeDidChanged;
- (void)_notifyObserver:(id)observer withJarvisTriggerMode:(int64_t)mode;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)_stopMonitoring;
- (void)setTriggerMode:(int64_t)mode;
@end

@implementation CSJarvisTriggerModeMonitor

- (void)_notifyObserver:(id)observer withJarvisTriggerMode:(int64_t)mode
{
  observerCopy = observer;
  [(CSEventMonitor *)self notifyObserver:observerCopy];
  if (objc_opt_respondsToSelector())
  {
    [observerCopy CSJarvisTriggerModeMonitor:self didReceiveTriggerModeChanged:mode];
  }
}

- (void)_notifyJarvisTriggerModeDidChanged
{
  v11 = *MEMORY[0x1E69E9840];
  _fetchTriggerMode = [(CSJarvisTriggerModeMonitor *)self _fetchTriggerMode];
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[CSJarvisTriggerModeMonitor _notifyJarvisTriggerModeDidChanged]";
    v9 = 1026;
    v10 = _fetchTriggerMode;
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Notifying jarvis trigger mode change to %{public}d", buf, 0x12u);
  }

  self->_triggerMode = _fetchTriggerMode;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__CSJarvisTriggerModeMonitor__notifyJarvisTriggerModeDidChanged__block_invoke;
  v6[3] = &unk_1E865CA68;
  v6[4] = self;
  v6[5] = _fetchTriggerMode;
  [(CSEventMonitor *)self enumerateObserversInQueue:v6];
  v5 = *MEMORY[0x1E69E9840];
}

- (int64_t)_fetchTriggerMode
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = +[CSFPreferences sharedPreferences];
  getJarvisTriggerMode = [v2 getJarvisTriggerMode];

  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSJarvisTriggerModeMonitor _fetchTriggerMode]";
    v9 = 1026;
    v10 = getJarvisTriggerMode;
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Fetched Jarvis trigger mode : %{public}d", &v7, 0x12u);
  }

  v5 = *MEMORY[0x1E69E9840];
  return getJarvisTriggerMode;
}

- (int64_t)getTriggerMode
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    triggerMode = self->_triggerMode;
    v7 = 136315394;
    v8 = "[CSJarvisTriggerModeMonitor getTriggerMode]";
    v9 = 1026;
    v10 = triggerMode;
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s Queried Jarvis trigger mode : %{public}d", &v7, 0x12u);
  }

  result = self->_triggerMode;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setTriggerMode:(int64_t)mode
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSJarvisTriggerModeMonitor setTriggerMode:]";
    v9 = 1026;
    modeCopy = mode;
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Setting Jarvis trigger mode : %{public}d", &v7, 0x12u);
  }

  v5 = +[CSFPreferences sharedPreferences];
  [v5 setJarvisTriggerMode:mode];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_stopMonitoring
{
  v8 = *MEMORY[0x1E69E9840];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"kCSPreferencesJarvisTriggerModeDidChangeDarwinNotification", 0);
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSJarvisTriggerModeMonitor _stopMonitoring]";
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : jarvis trigger mode switch", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_startMonitoringWithQueue:(id)queue
{
  v13 = *MEMORY[0x1E69E9840];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _jarvisTriggerModeDidChange, @"kCSPreferencesJarvisTriggerModeDidChangeDarwinNotification", 0, CFNotificationSuspensionBehaviorDrop);
  _fetchTriggerMode = [(CSJarvisTriggerModeMonitor *)self _fetchTriggerMode];
  v6 = _fetchTriggerMode;
  self->_triggerMode = _fetchTriggerMode;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[CSJarvisTriggerModeMonitor _startMonitoringWithQueue:]";
    v11 = 1026;
    v12 = v6;
    _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s Start monitoring : jarvis trigger mode switch, trigger mode is set to %{public}d", &v9, 0x12u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (CSJarvisTriggerModeMonitor)init
{
  v3.receiver = self;
  v3.super_class = CSJarvisTriggerModeMonitor;
  result = [(CSEventMonitor *)&v3 init];
  if (result)
  {
    result->_triggerMode = 2;
  }

  return result;
}

+ (id)triggerModeStringDescription:(int64_t)description
{
  if ((description + 1) > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E865C8F8[description + 1];
  }
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_14529 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_14529, &__block_literal_global_14530);
  }

  v3 = sharedInstance__sharedInstance_14531;

  return v3;
}

uint64_t __44__CSJarvisTriggerModeMonitor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CSJarvisTriggerModeMonitor);
  v1 = sharedInstance__sharedInstance_14531;
  sharedInstance__sharedInstance_14531 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end