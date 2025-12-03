@interface CSSoftwareUpdateCheckingMonitor
+ (id)sharedInstance;
- (BOOL)_checkSoftwareUpdateCheckingState;
- (CSSoftwareUpdateCheckingMonitor)init;
- (unsigned)_softwareUpdateCheckingState;
- (void)_didReceiveSoftwareUpdateCheckingStateChanged:(BOOL)changed;
- (void)_didReceiveSoftwareUpdateCheckingStateChangedInQueue:(BOOL)queue;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)_stopMonitoring;
@end

@implementation CSSoftwareUpdateCheckingMonitor

- (void)_didReceiveSoftwareUpdateCheckingStateChanged:(BOOL)changed
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100163D6C;
  v3[3] = &unk_1002537E8;
  v3[4] = self;
  changedCopy = changed;
  [(CSSoftwareUpdateCheckingMonitor *)self enumerateObservers:v3];
}

- (void)_didReceiveSoftwareUpdateCheckingStateChangedInQueue:(BOOL)queue
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100163DF0;
  v3[3] = &unk_1002537E8;
  v3[4] = self;
  queueCopy = queue;
  [(CSSoftwareUpdateCheckingMonitor *)self enumerateObserversInQueue:v3];
}

- (unsigned)_softwareUpdateCheckingState
{
  out_token = -1;
  notify_register_check("com.apple.duetscheduler.restartCheckNotification", &out_token);
  if (out_token == -1)
  {
    return 0;
  }

  v4 = 0;
  notify_get_state(out_token, &v4);
  notify_cancel(out_token);
  if (v4)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (BOOL)_checkSoftwareUpdateCheckingState
{
  _softwareUpdateCheckingState = [(CSSoftwareUpdateCheckingMonitor *)self _softwareUpdateCheckingState];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (_softwareUpdateCheckingState == 1)
    {
      v4 = @"YES";
    }

    v6 = 136315394;
    v7 = "[CSSoftwareUpdateCheckingMonitor _checkSoftwareUpdateCheckingState]";
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Software update checking running : %{public}@", &v6, 0x16u);
  }

  return _softwareUpdateCheckingState == 1;
}

- (void)_stopMonitoring
{
  notifyToken = self->_notifyToken;
  if (notifyToken != -1)
  {
    notify_cancel(notifyToken);
    self->_notifyToken = -1;
    v4 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSSoftwareUpdateCheckingMonitor _stopMonitoring]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : Software update checking state", &v5, 0xCu);
    }
  }
}

- (void)_startMonitoringWithQueue:(id)queue
{
  queueCopy = queue;
  if (self->_notifyToken == -1)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1001641BC;
    handler[3] = &unk_1002537C0;
    handler[4] = self;
    notify_register_dispatch("com.apple.duetscheduler.restartCheckNotification", &self->_notifyToken, queueCopy, handler);
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = "[CSSoftwareUpdateCheckingMonitor _startMonitoringWithQueue:]";
      v6 = "%s Start monitoring : Software update checking state";
      goto LABEL_6;
    }
  }

  else
  {
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = "[CSSoftwareUpdateCheckingMonitor _startMonitoringWithQueue:]";
      v6 = "%s Cannot start monitoring software update checking state because it was already started";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
    }
  }

  self->_isSoftwareUpdateCheckingRunning = [(CSSoftwareUpdateCheckingMonitor *)self _checkSoftwareUpdateCheckingState];
}

- (CSSoftwareUpdateCheckingMonitor)init
{
  v3.receiver = self;
  v3.super_class = CSSoftwareUpdateCheckingMonitor;
  result = [(CSSoftwareUpdateCheckingMonitor *)&v3 init];
  if (result)
  {
    result->_notifyToken = -1;
    result->_isSoftwareUpdateCheckingRunning = 0;
  }

  return result;
}

+ (id)sharedInstance
{
  if (qword_10029E5E8 != -1)
  {
    dispatch_once(&qword_10029E5E8, &stru_100253638);
  }

  v3 = qword_10029E5E0;

  return v3;
}

@end