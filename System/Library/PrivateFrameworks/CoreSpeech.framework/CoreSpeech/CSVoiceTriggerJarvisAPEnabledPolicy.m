@interface CSVoiceTriggerJarvisAPEnabledPolicy
+ (id)sharedInstance;
- (CSVoiceTriggerJarvisAPEnabledPolicy)init;
- (void)_addVoiceTriggerHearstAPEnabledPolicy;
- (void)_subscribeEventMonitors;
- (void)siriClientBehaviorMonitor:(id)a3 activatedAudioSessionWithReason:(unint64_t)a4;
- (void)siriClientBehaviorMonitorAudioDeviceInfoUpdated:(id)a3;
- (void)siriClientBehaviorMonitorReleasedAudioSession:(id)a3;
@end

@implementation CSVoiceTriggerJarvisAPEnabledPolicy

- (void)siriClientBehaviorMonitorAudioDeviceInfoUpdated:(id)a3
{
  v4 = [a3 recordDeviceInfo];
  v5 = [v4 route];
  [(CSVoiceTriggerJarvisAPEnabledPolicy *)self setClientRecordRoute:v5];

  [(CSVoiceTriggerJarvisAPEnabledPolicy *)self notifyCallbackWithOption:0];
}

- (void)siriClientBehaviorMonitorReleasedAudioSession:(id)a3
{
  [(CSVoiceTriggerJarvisAPEnabledPolicy *)self setIsPlaybackAudioSessionActive:0];

  [(CSVoiceTriggerJarvisAPEnabledPolicy *)self notifyCallbackWithOption:0];
}

- (void)siriClientBehaviorMonitor:(id)a3 activatedAudioSessionWithReason:(unint64_t)a4
{
  if (a4 - 3 <= 1)
  {
    [(CSVoiceTriggerJarvisAPEnabledPolicy *)self setIsPlaybackAudioSessionActive:1];

    [(CSVoiceTriggerJarvisAPEnabledPolicy *)self notifyCallbackWithOption:0];
  }
}

- (void)_addVoiceTriggerHearstAPEnabledPolicy
{
  [(CSVoiceTriggerJarvisAPEnabledPolicy *)self addConditions:&stru_100252650];
  [(CSVoiceTriggerJarvisAPEnabledPolicy *)self addConditions:&stru_100252670];
  objc_initWeak(&location, self);
  v3 = _NSConcreteStackBlock;
  v4 = 3221225472;
  v5 = sub_10013A51C;
  v6 = &unk_100253870;
  objc_copyWeak(&v7, &location);
  [(CSVoiceTriggerJarvisAPEnabledPolicy *)self addConditions:&v3];
  [(CSVoiceTriggerJarvisAPEnabledPolicy *)self addConditions:&stru_100252690, v3, v4, v5, v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_subscribeEventMonitors
{
  v3 = +[CSVoiceTriggerEnabledMonitor sharedInstance];
  [(CSVoiceTriggerJarvisAPEnabledPolicy *)self subscribeEventMonitor:v3];

  v4 = +[CSOtherAppRecordingStateMonitorFactory otherAppRecordingStateMonitor];
  [(CSVoiceTriggerJarvisAPEnabledPolicy *)self subscribeEventMonitor:v4];

  v5 = +[CSAudioStreamActivityMonitor sharedInstance];
  [(CSVoiceTriggerJarvisAPEnabledPolicy *)self subscribeEventMonitor:v5];

  v6 = +[CSAudioRouteChangeMonitor sharedInstance];
  [(CSVoiceTriggerJarvisAPEnabledPolicy *)self subscribeEventMonitor:v6];

  v7 = +[CSSiriClientBehaviorMonitor sharedInstance];
  [v7 registerObserver:self];
}

- (CSVoiceTriggerJarvisAPEnabledPolicy)init
{
  v5.receiver = self;
  v5.super_class = CSVoiceTriggerJarvisAPEnabledPolicy;
  v2 = [(CSVoiceTriggerJarvisAPEnabledPolicy *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_isPlaybackAudioSessionActive = 0;
    [(CSVoiceTriggerJarvisAPEnabledPolicy *)v2 _addVoiceTriggerHearstAPEnabledPolicy];
    [(CSVoiceTriggerJarvisAPEnabledPolicy *)v3 _subscribeEventMonitors];
  }

  return v3;
}

+ (id)sharedInstance
{
  if (qword_10029E4D0 != -1)
  {
    dispatch_once(&qword_10029E4D0, &stru_100252630);
  }

  v3 = qword_10029E4C8;

  return v3;
}

@end