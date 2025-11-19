@interface CSSiriEnabledMonitor
+ (id)sharedInstance;
- (BOOL)fetchIsEnabled;
- (CSSiriEnabledMonitor)init;
- (void)_didReceiveSiriSettingChanged:(BOOL)a3;
- (void)_notifyObserver:(id)a3;
- (void)_startMonitoringWithQueue:(id)a3;
- (void)_stopMonitoring;
@end

@implementation CSSiriEnabledMonitor

+ (id)sharedInstance
{
  if (+[CSUtils isDarwinOS])
  {
    v2 = 0;
  }

  else
  {
    if (sharedInstance_onceToken_275 != -1)
    {
      dispatch_once(&sharedInstance_onceToken_275, &__block_literal_global_276);
    }

    v2 = sharedInstance__sharedInstance;
  }

  return v2;
}

- (BOOL)fetchIsEnabled
{
  result = AFPreferencesAssistantEnabled() != 0;
  self->_isSiriSettingEnabled = result;
  return result;
}

- (void)_notifyObserver:(id)a3
{
  v4 = a3;
  [(CSEventMonitor *)self notifyObserver:v4];
  if (objc_opt_respondsToSelector())
  {
    [v4 CSSiriEnabledMonitor:self didReceiveEnabled:self->_isSiriSettingEnabled];
  }
}

- (void)_didReceiveSiriSettingChanged:(BOOL)a3
{
  self->_isSiriSettingEnabled = a3;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__CSSiriEnabledMonitor__didReceiveSiriSettingChanged___block_invoke;
  v3[3] = &unk_1E865CB20;
  v3[4] = self;
  [(CSEventMonitor *)self enumerateObserversInQueue:v3];
}

- (void)_stopMonitoring
{
  v8 = *MEMORY[0x1E69E9840];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"kAFPreferencesDidChangeDarwinNotification", 0);
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSSiriEnabledMonitor _stopMonitoring]";
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : Siri setting switch", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_startMonitoringWithQueue:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _AssistantPrefsChangedNotification, @"kAFPreferencesDidChangeDarwinNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v5 = AFPreferencesAssistantEnabled();
  if (self->_isSiriSettingEnabled != (v5 != 0))
  {
    [(CSSiriEnabledMonitor *)self _didReceiveSiriSettingChanged:v5 != 0];
  }

  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_isSiriSettingEnabled)
    {
      v7 = @"Enabled";
    }

    else
    {
      v7 = @"Disabled";
    }

    v9 = 136315394;
    v10 = "[CSSiriEnabledMonitor _startMonitoringWithQueue:]";
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s Start monitoring : Siri setting switch, Siri is %{public}@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (CSSiriEnabledMonitor)init
{
  v3.receiver = self;
  v3.super_class = CSSiriEnabledMonitor;
  result = [(CSEventMonitor *)&v3 init];
  if (result)
  {
    result->_isSiriSettingEnabled = 0;
  }

  return result;
}

uint64_t __38__CSSiriEnabledMonitor_sharedInstance__block_invoke()
{
  sharedInstance__sharedInstance = objc_alloc_init(CSSiriEnabledMonitor);

  return MEMORY[0x1EEE66BB8]();
}

@end