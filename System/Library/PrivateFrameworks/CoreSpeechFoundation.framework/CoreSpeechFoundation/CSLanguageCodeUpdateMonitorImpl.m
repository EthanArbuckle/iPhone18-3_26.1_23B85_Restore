@interface CSLanguageCodeUpdateMonitorImpl
- (BOOL)isLanguageCodeCurrent:(id)a3;
- (CSLanguageCodeUpdateMonitorImpl)init;
- (void)_didReceiveLanguageCodeUpdate;
- (void)_notifyObserver:(id)a3 withLanguageCode:(id)a4;
- (void)_startMonitoringWithQueue:(id)a3;
- (void)_stopMonitoring;
@end

@implementation CSLanguageCodeUpdateMonitorImpl

- (CSLanguageCodeUpdateMonitorImpl)init
{
  v3.receiver = self;
  v3.super_class = CSLanguageCodeUpdateMonitorImpl;
  result = [(CSEventMonitor *)&v3 init];
  if (result)
  {
    result->_notifyToken = -1;
  }

  return result;
}

- (BOOL)isLanguageCodeCurrent:(id)a3
{
  v3 = a3;
  v4 = [CSUtils getSiriLanguageWithFallback:@"en-US"];
  v5 = [v4 isEqualToString:v3];

  return v5;
}

- (void)_notifyObserver:(id)a3 withLanguageCode:(id)a4
{
  v7 = a3;
  v6 = a4;
  [(CSEventMonitor *)self notifyObserver:v7];
  if (objc_opt_respondsToSelector())
  {
    [v7 CSLanguageCodeUpdateMonitor:self didReceiveLanguageCodeChanged:v6];
  }
}

- (void)_didReceiveLanguageCodeUpdate
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [CSUtils getSiriLanguageWithFallback:@"en-US"];
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[CSLanguageCodeUpdateMonitorImpl _didReceiveLanguageCodeUpdate]";
    v11 = 2114;
    v12 = v3;
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Siri language changed to : %{public}@", buf, 0x16u);
  }

  if (v3)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __64__CSLanguageCodeUpdateMonitorImpl__didReceiveLanguageCodeUpdate__block_invoke;
    v7[3] = &unk_1E865B4E8;
    v7[4] = self;
    v8 = v3;
    [(CSEventMonitor *)self enumerateObserversInQueue:v7];
  }

  else
  {
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v10 = "[CSLanguageCodeUpdateMonitorImpl _didReceiveLanguageCodeUpdate]";
      _os_log_error_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_ERROR, "%s Ignore notifying change of language code, since it is nil", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_stopMonitoring
{
  v8 = *MEMORY[0x1E69E9840];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x1E698D070], 0);
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSLanguageCodeUpdateMonitorImpl _stopMonitoring]";
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : Siri language code", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_startMonitoringWithQueue:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _AFLanguageDidChangeCallback, *MEMORY[0x1E698D070], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[CSLanguageCodeUpdateMonitorImpl _startMonitoringWithQueue:]";
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s Start monitoring : Siri language code", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

@end