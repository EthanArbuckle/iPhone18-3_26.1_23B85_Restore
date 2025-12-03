@interface CSHangUpEnabledMonitor
+ (id)sharedInstance;
- (BOOL)_checkCanUseVoiceTriggerDuringCallEnabled;
- (CSHangUpEnabledMonitor)init;
- (void)_didReceiveCanUseVoiceTriggerDuringCallSettingChangedInQueue:(BOOL)queue;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)_stopMonitoring;
- (void)_voiceTriggerDuringCallEnabledDidChange;
@end

@implementation CSHangUpEnabledMonitor

+ (id)sharedInstance
{
  if (qword_10029E230 != -1)
  {
    dispatch_once(&qword_10029E230, &stru_100250588);
  }

  v3 = qword_10029E228;

  return v3;
}

- (void)_voiceTriggerDuringCallEnabledDidChange
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AA298;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)_checkCanUseVoiceTriggerDuringCallEnabled
{
  v2 = +[VTPreferences sharedPreferences];
  canUseVoiceTriggerDuringPhoneCall = [v2 canUseVoiceTriggerDuringPhoneCall];

  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (canUseVoiceTriggerDuringPhoneCall)
    {
      v5 = @"YES";
    }

    v7 = 136315394;
    v8 = "[CSHangUpEnabledMonitor _checkCanUseVoiceTriggerDuringCallEnabled]";
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Siri Hangup enabled = %{public}@", &v7, 0x16u);
  }

  return canUseVoiceTriggerDuringPhoneCall;
}

- (void)_didReceiveCanUseVoiceTriggerDuringCallSettingChangedInQueue:(BOOL)queue
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000AA534;
  v3[3] = &unk_1002537E8;
  v3[4] = self;
  queueCopy = queue;
  [(CSHangUpEnabledMonitor *)self enumerateObserversInQueue:v3];
}

- (void)_stopMonitoring
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSHangUpEnabledMonitor _stopMonitoring]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s stop monitoring Siri Hangup settings in VTPreferences", &v5, 0xCu);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, kVTPreferencesCanUseVoiceTriggerDuringPhoneCallDidChangeDarwinNotification, 0);
}

- (void)_startMonitoringWithQueue:(id)queue
{
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSHangUpEnabledMonitor _startMonitoringWithQueue:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s start monitoring Siri Hangup settings in VTPreferences", &v6, 0xCu);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_1000AA700, kVTPreferencesCanUseVoiceTriggerDuringPhoneCallDidChangeDarwinNotification, 0, CFNotificationSuspensionBehaviorDrop);
  self->_isEnabled = [(CSHangUpEnabledMonitor *)self _checkCanUseVoiceTriggerDuringCallEnabled];
}

- (CSHangUpEnabledMonitor)init
{
  if ((+[CSUtils isDarwinOS]& 1) != 0)
  {
    selfCopy = 0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CSHangUpEnabledMonitor;
    v4 = [(CSHangUpEnabledMonitor *)&v8 init];
    if (v4)
    {
      v5 = dispatch_queue_create("CSHangUpEnabledMonitor queue", 0);
      queue = v4->_queue;
      v4->_queue = v5;

      v4->_isEnabled = 0;
    }

    self = v4;
    selfCopy = self;
  }

  return selfCopy;
}

@end