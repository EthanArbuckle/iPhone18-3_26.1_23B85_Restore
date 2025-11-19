@interface CSVoiceTriggerHearstAPEnabledPolicy
+ (id)sharedInstance;
- (BOOL)_isOtherStreamsActiveOnDoAPRoute;
- (CSVoiceTriggerHearstAPEnabledPolicy)init;
- (void)_addVoiceTriggerHearstAPEnabledPolicy;
- (void)_subscribeEventMonitors;
@end

@implementation CSVoiceTriggerHearstAPEnabledPolicy

- (BOOL)_isOtherStreamsActiveOnDoAPRoute
{
  v2 = +[CSAudioStreamActivityMonitor sharedInstance];
  v3 = [v2 hasNonVoiceTriggerStreamsOrStreamHoldersActive];

  v4 = +[CSAudioRouteChangeMonitor sharedInstance];
  v5 = [v4 hearstRouteStatus];

  if (v5 == 1)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (void)_addVoiceTriggerHearstAPEnabledPolicy
{
  [(CSVoiceTriggerHearstAPEnabledPolicy *)self addConditions:&stru_10024EA28];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10002CFB0;
  v3[3] = &unk_10024F600;
  v3[4] = self;
  [(CSVoiceTriggerHearstAPEnabledPolicy *)self addConditions:v3];
  [(CSVoiceTriggerHearstAPEnabledPolicy *)self addConditions:&stru_10024EA48];
  [(CSVoiceTriggerHearstAPEnabledPolicy *)self addConditions:&stru_10024EA68];
}

- (void)_subscribeEventMonitors
{
  v3 = +[CSVoiceTriggerEnabledMonitor sharedInstance];
  [(CSVoiceTriggerHearstAPEnabledPolicy *)self subscribeEventMonitor:v3];

  v4 = +[CSOpportuneSpeakEventMonitor sharedInstance];
  [(CSVoiceTriggerHearstAPEnabledPolicy *)self subscribeEventMonitor:v4];

  v5 = +[CSPhoneCallStateMonitorFactory phoneCallStateMonitor];
  [(CSVoiceTriggerHearstAPEnabledPolicy *)self subscribeEventMonitor:v5];

  v6 = +[CSOtherAppRecordingStateMonitorFactory otherAppRecordingStateMonitor];
  [(CSVoiceTriggerHearstAPEnabledPolicy *)self subscribeEventMonitor:v6];

  v7 = +[CSAudioStreamActivityMonitor sharedInstance];
  [(CSVoiceTriggerHearstAPEnabledPolicy *)self subscribeEventMonitor:v7];

  v8 = +[CSAudioRouteChangeMonitor sharedInstance];
  [(CSVoiceTriggerHearstAPEnabledPolicy *)self subscribeEventMonitor:v8];
}

- (CSVoiceTriggerHearstAPEnabledPolicy)init
{
  v5.receiver = self;
  v5.super_class = CSVoiceTriggerHearstAPEnabledPolicy;
  v2 = [(CSVoiceTriggerHearstAPEnabledPolicy *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CSVoiceTriggerHearstAPEnabledPolicy *)v2 _addVoiceTriggerHearstAPEnabledPolicy];
    [(CSVoiceTriggerHearstAPEnabledPolicy *)v3 _subscribeEventMonitors];
  }

  return v3;
}

+ (id)sharedInstance
{
  if (qword_10029E020 != -1)
  {
    dispatch_once(&qword_10029E020, &stru_10024EA08);
  }

  v3 = qword_10029E018;

  return v3;
}

@end