@interface CSVoiceTriggerEnabledMonitor
+ (id)sharedInstance;
- (BOOL)_checkVoiceTriggerEnabled;
- (CSVoiceTriggerEnabledMonitor)init;
- (void)_didReceiveVoiceTriggerSettingChanged:(BOOL)a3;
- (void)_didReceiveVoiceTriggerSettingChangedInQueue:(BOOL)a3;
- (void)_startMonitoringWithQueue:(id)a3;
- (void)_stopMonitoring;
@end

@implementation CSVoiceTriggerEnabledMonitor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_7249 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_7249, &__block_literal_global_7250);
  }

  v3 = sharedInstance__sharedInstance_7251;

  return v3;
}

uint64_t __46__CSVoiceTriggerEnabledMonitor_sharedInstance__block_invoke()
{
  sharedInstance__sharedInstance_7251 = objc_alloc_init(CSVoiceTriggerEnabledMonitor);

  return MEMORY[0x1EEE66BB8]();
}

- (CSVoiceTriggerEnabledMonitor)init
{
  v3.receiver = self;
  v3.super_class = CSVoiceTriggerEnabledMonitor;
  result = [(CSEventMonitor *)&v3 init];
  if (result)
  {
    result->_notifyToken = -1;
    result->_isVoiceTriggerEnabled = 0;
  }

  return result;
}

- (BOOL)_checkVoiceTriggerEnabled
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = +[CSFPreferences sharedPreferences];
  v3 = [v2 voiceTriggerEnabled];

  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (v3)
    {
      v5 = @"YES";
    }

    v8 = 136315394;
    v9 = "[CSVoiceTriggerEnabledMonitor _checkVoiceTriggerEnabled]";
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s VoiceTrigger enabled = %{public}@", &v8, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)_didReceiveVoiceTriggerSettingChanged:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __70__CSVoiceTriggerEnabledMonitor__didReceiveVoiceTriggerSettingChanged___block_invoke;
  v3[3] = &unk_1E865CA18;
  v3[4] = self;
  v4 = a3;
  [(CSEventMonitor *)self enumerateObservers:v3];
}

- (void)_didReceiveVoiceTriggerSettingChangedInQueue:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __77__CSVoiceTriggerEnabledMonitor__didReceiveVoiceTriggerSettingChangedInQueue___block_invoke;
  v3[3] = &unk_1E865CA18;
  v3[4] = self;
  v4 = a3;
  [(CSEventMonitor *)self enumerateObserversInQueue:v3];
}

- (void)_stopMonitoring
{
  v8 = *MEMORY[0x1E69E9840];
  notifyToken = self->_notifyToken;
  if (notifyToken != -1)
  {
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[CSVoiceTriggerEnabledMonitor _stopMonitoring]";
      _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Stop monitring : VoiceTrigger setting switch", &v6, 0xCu);
      notifyToken = self->_notifyToken;
    }

    notify_cancel(notifyToken);
    self->_notifyToken = -1;
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_startMonitoringWithQueue:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_notifyToken == -1)
  {
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __58__CSVoiceTriggerEnabledMonitor__startMonitoringWithQueue___block_invoke;
    handler[3] = &unk_1E865C9F0;
    handler[4] = self;
    notify_register_dispatch("com.apple.coreaudio.BorealisToggled", &self->_notifyToken, v4, handler);
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = "[CSVoiceTriggerEnabledMonitor _startMonitoringWithQueue:]";
      v6 = "%s Start monitring : VoiceTrigger setting switch";
      goto LABEL_6;
    }
  }

  else
  {
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = "[CSVoiceTriggerEnabledMonitor _startMonitoringWithQueue:]";
      v6 = "%s Cannot start monitoring VoiceTrigger setting switch because it was already started";
LABEL_6:
      _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
    }
  }

  self->_isVoiceTriggerEnabled = [(CSVoiceTriggerEnabledMonitor *)self _checkVoiceTriggerEnabled];

  v7 = *MEMORY[0x1E69E9840];
}

void __58__CSVoiceTriggerEnabledMonitor__startMonitoringWithQueue___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2[28];
  if (v3 == [v2 _checkVoiceTriggerEnabled])
  {
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      if (*(*(a1 + 32) + 28))
      {
        v9 = @"ON";
      }

      else
      {
        v9 = @"OFF";
      }

      v10 = 136315394;
      v11 = "[CSVoiceTriggerEnabledMonitor _startMonitoringWithQueue:]_block_invoke";
      v12 = 2114;
      v13 = v9;
      _os_log_error_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_ERROR, "%s VoiceTrigger is already %{public}@, received duplicated notification!", &v10, 0x16u);
    }

    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    *(*(a1 + 32) + 28) = [*(a1 + 32) _checkVoiceTriggerEnabled];
    v6 = *(a1 + 32);
    v7 = v6[28];
    v8 = *MEMORY[0x1E69E9840];

    [v6 _didReceiveVoiceTriggerSettingChanged:v7];
  }
}

@end