@interface CSSiriInCallEnabledMonitor
+ (id)sharedInstance;
- (BOOL)_checkSiriInCallEnabled;
- (CSSiriInCallEnabledMonitor)init;
- (void)_didReceiveSiriInCallChangedInQueue:(BOOL)queue;
- (void)_siriInCallEnabledDidChangeEnabledDidChange;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)_stopMonitoring;
@end

@implementation CSSiriInCallEnabledMonitor

+ (id)sharedInstance
{
  if (qword_10029E458 != -1)
  {
    dispatch_once(&qword_10029E458, &stru_100251FD8);
  }

  v3 = qword_10029E450;

  return v3;
}

- (void)_siriInCallEnabledDidChangeEnabledDidChange
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100123AFC;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)_checkSiriInCallEnabled
{
  if (AFSupportsSiriInCall())
  {
    v2 = +[AFPreferences sharedPreferences];
    siriInCallEnabled = [v2 siriInCallEnabled];
  }

  else
  {
    siriInCallEnabled = 0;
  }

  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (siriInCallEnabled)
    {
      v5 = @"YES";
    }

    v7 = 136315394;
    v8 = "[CSSiriInCallEnabledMonitor _checkSiriInCallEnabled]";
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Siri in Call enabled = %{public}@", &v7, 0x16u);
  }

  return siriInCallEnabled;
}

- (void)_didReceiveSiriInCallChangedInQueue:(BOOL)queue
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100123DA8;
  v3[3] = &unk_1002537E8;
  v3[4] = self;
  queueCopy = queue;
  [(CSSiriInCallEnabledMonitor *)self enumerateObserversInQueue:v3];
}

- (void)_stopMonitoring
{
  if (AFDeviceSupportsFullSiriUOD() && +[AFFeatureFlags isBlushingPhantomEnabled])
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSSiriInCallEnabledMonitor _stopMonitoring]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s stop monitoring Siri Hangup settings in AFPreferences", &v5, 0xCu);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, kAFPreferencesDidChangeDarwinNotification, 0);
  }
}

- (void)_startMonitoringWithQueue:(id)queue
{
  if (AFDeviceSupportsFullSiriUOD() && +[AFFeatureFlags isBlushingPhantomEnabled])
  {
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[CSSiriInCallEnabledMonitor _startMonitoringWithQueue:]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s start monitoring Siri in Call settings in AFPreferences", &v6, 0xCu);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_100123FA4, kAFPreferencesDidChangeDarwinNotification, 0, CFNotificationSuspensionBehaviorDrop);
  }

  self->_isEnabled = [(CSSiriInCallEnabledMonitor *)self _checkSiriInCallEnabled];
}

- (CSSiriInCallEnabledMonitor)init
{
  if ((+[CSUtils isDarwinOS]& 1) != 0)
  {
    selfCopy = 0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CSSiriInCallEnabledMonitor;
    v4 = [(CSSiriInCallEnabledMonitor *)&v8 init];
    if (v4)
    {
      v5 = dispatch_queue_create("CSSiriInCallEnabledMonitor queue", 0);
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