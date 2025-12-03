@interface CSCommandControlStreamEventMonitor
+ (id)sharedInstance;
- (BOOL)isStreaming;
- (CSCommandControlStreamEventMonitor)init;
- (void)_notifyStopCommandControl;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)_stopMonitoring;
- (void)commandControlBehaviorMonitor:(id)monitor didStartStreamWithContext:(id)context successfully:(BOOL)successfully option:(id)option;
@end

@implementation CSCommandControlStreamEventMonitor

+ (id)sharedInstance
{
  if (qword_10029E540 != -1)
  {
    dispatch_once(&qword_10029E540, &stru_100252C60);
  }

  v3 = qword_10029E538;

  return v3;
}

- (BOOL)isStreaming
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    isCommandControlStreaming = self->_isCommandControlStreaming;
    v6 = 136315394;
    v7 = "[CSCommandControlStreamEventMonitor isStreaming]";
    v8 = 1024;
    v9 = isCommandControlStreaming;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Fetching CommandControl Listening State: %d", &v6, 0x12u);
  }

  return self->_isCommandControlStreaming;
}

- (void)_notifyStopCommandControl
{
  if (self->_isCommandControlStreaming)
  {
    v4[5] = v2;
    v4[6] = v3;
    self->_isCommandControlStreaming = 0;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10014AC40;
    v4[3] = &unk_100253B48;
    v4[4] = self;
    [(CSCommandControlStreamEventMonitor *)self enumerateObserversInQueue:v4];
  }
}

- (void)commandControlBehaviorMonitor:(id)monitor didStartStreamWithContext:(id)context successfully:(BOOL)successfully option:(id)option
{
  if (successfully)
  {
    self->_isCommandControlStreaming = 1;
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10014ACD4;
  v6[3] = &unk_100253B48;
  v6[4] = self;
  [(CSCommandControlStreamEventMonitor *)self enumerateObserversInQueue:v6, context];
}

- (void)_stopMonitoring
{
  v3 = +[CSCommandControlBehaviorMonitor sharedInstance];
  [v3 unregisterObserver:self];

  self->_isCommandControlStreaming = 0;
}

- (void)_startMonitoringWithQueue:(id)queue
{
  v4 = +[CSCommandControlBehaviorMonitor sharedInstance];
  [v4 registerObserver:self];

  self->_isCommandControlStreaming = 0;
}

- (CSCommandControlStreamEventMonitor)init
{
  v3.receiver = self;
  v3.super_class = CSCommandControlStreamEventMonitor;
  result = [(CSCommandControlStreamEventMonitor *)&v3 init];
  if (result)
  {
    result->_isCommandControlStreaming = 0;
  }

  return result;
}

@end