@interface CSPhraseSpotterEnabledMonitor
+ (id)sharedInstance;
- (BOOL)_checkPhraseSpotterEnabled;
- (CSPhraseSpotterEnabledMonitor)init;
- (void)_didReceivePhraseSpotterSettingChangedInQueue:(BOOL)queue;
- (void)_phraseSpotterEnabledDidChange;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)_stopMonitoring;
@end

@implementation CSPhraseSpotterEnabledMonitor

- (void)_phraseSpotterEnabledDidChange
{
  _checkPhraseSpotterEnabled = [(CSPhraseSpotterEnabledMonitor *)self _checkPhraseSpotterEnabled];
  isPhraseSpotterEnabled = self->_isPhraseSpotterEnabled;
  if (isPhraseSpotterEnabled == _checkPhraseSpotterEnabled)
  {
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v6 = @"OFF";
      if (isPhraseSpotterEnabled)
      {
        v6 = @"ON";
      }

      v7 = 136315394;
      v8 = "[CSPhraseSpotterEnabledMonitor _phraseSpotterEnabledDidChange]";
      v9 = 2114;
      v10 = v6;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s PhraseSpotter is already %{public}@, received duplicated notification!", &v7, 0x16u);
    }
  }

  else
  {
    self->_isPhraseSpotterEnabled = _checkPhraseSpotterEnabled;

    [(CSPhraseSpotterEnabledMonitor *)self _didReceivePhraseSpotterSettingChangedInQueue:_checkPhraseSpotterEnabled];
  }
}

- (BOOL)_checkPhraseSpotterEnabled
{
  v2 = +[CSFPreferences sharedPreferences];
  phraseSpotterEnabled = [v2 phraseSpotterEnabled];

  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (phraseSpotterEnabled)
    {
      v5 = @"YES";
    }

    v7 = 136315394;
    v8 = "[CSPhraseSpotterEnabledMonitor _checkPhraseSpotterEnabled]";
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s PhraseSpotter enabled = %{public}@", &v7, 0x16u);
  }

  return phraseSpotterEnabled;
}

- (void)_didReceivePhraseSpotterSettingChangedInQueue:(BOOL)queue
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10005343C;
  v3[3] = &unk_1002537E8;
  v3[4] = self;
  queueCopy = queue;
  [(CSPhraseSpotterEnabledMonitor *)self enumerateObserversInQueue:v3];
}

- (void)_stopMonitoring
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"kVTPreferencesPhraseSpotterEnabledDidChangeDarwinNotification", 0);
}

- (void)_startMonitoringWithQueue:(id)queue
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_1000534F4, @"kVTPreferencesPhraseSpotterEnabledDidChangeDarwinNotification", 0, CFNotificationSuspensionBehaviorDrop);
  self->_isPhraseSpotterEnabled = [(CSPhraseSpotterEnabledMonitor *)self _checkPhraseSpotterEnabled];
}

- (CSPhraseSpotterEnabledMonitor)init
{
  v3.receiver = self;
  v3.super_class = CSPhraseSpotterEnabledMonitor;
  result = [(CSPhraseSpotterEnabledMonitor *)&v3 init];
  if (result)
  {
    result->_isPhraseSpotterEnabled = 0;
  }

  return result;
}

+ (id)sharedInstance
{
  if (qword_10029E0E0 != -1)
  {
    dispatch_once(&qword_10029E0E0, &stru_10024F420);
  }

  v3 = qword_10029E0D8;

  return v3;
}

@end