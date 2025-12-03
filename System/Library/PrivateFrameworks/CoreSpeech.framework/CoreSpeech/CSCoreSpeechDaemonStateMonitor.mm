@interface CSCoreSpeechDaemonStateMonitor
+ (id)sharedInstance;
- (CSCoreSpeechDaemonStateMonitor)init;
- (void)_didReceiveDaemonStateChanged:(unint64_t)changed;
- (void)_notifyObserver:(id)observer withDaemonState:(unint64_t)state;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)_stopMonitoring;
- (void)notifyDaemonStateChanged:(unint64_t)changed;
@end

@implementation CSCoreSpeechDaemonStateMonitor

- (void)_notifyObserver:(id)observer withDaemonState:(unint64_t)state
{
  observerCopy = observer;
  [(CSCoreSpeechDaemonStateMonitor *)self notifyObserver:observerCopy];
  if (objc_opt_respondsToSelector())
  {
    [observerCopy coreSpeechDaemonStateMonitor:self didReceiveStateChanged:state];
  }
}

- (void)_didReceiveDaemonStateChanged:(unint64_t)changed
{
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[CSCoreSpeechDaemonStateMonitor _didReceiveDaemonStateChanged:]";
    v9 = 1026;
    changedCopy = changed;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s CoreSpeechDaemon state changed to %{public}u", buf, 0x12u);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100143608;
  v6[3] = &unk_1002539B8;
  v6[4] = self;
  v6[5] = changed;
  [(CSCoreSpeechDaemonStateMonitor *)self enumerateObservers:v6];
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
      v6 = "[CSCoreSpeechDaemonStateMonitor _stopMonitoring]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : corespeechd state", &v5, 0xCu);
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
    handler[2] = sub_100143858;
    handler[3] = &unk_1002537C0;
    handler[4] = self;
    notify_register_dispatch("com.apple.corespeech.corespeechd.launch", &self->_notifyToken, queueCopy, handler);
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = "[CSCoreSpeechDaemonStateMonitor _startMonitoringWithQueue:]";
      v6 = "%s Start monitoring : corespeechd state";
      goto LABEL_6;
    }
  }

  else
  {
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = "[CSCoreSpeechDaemonStateMonitor _startMonitoringWithQueue:]";
      v6 = "%s Cannot start monitoring corespeechd state because it was already started";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
    }
  }
}

- (void)notifyDaemonStateChanged:(unint64_t)changed
{
  if (changed == 1)
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[CSCoreSpeechDaemonStateMonitor notifyDaemonStateChanged:]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Notifying CoreSpeechDaemon launched", &v4, 0xCu);
    }

    notify_post("com.apple.corespeech.corespeechd.launch");
  }
}

- (CSCoreSpeechDaemonStateMonitor)init
{
  v3.receiver = self;
  v3.super_class = CSCoreSpeechDaemonStateMonitor;
  result = [(CSCoreSpeechDaemonStateMonitor *)&v3 init];
  if (result)
  {
    result->_notifyToken = -1;
  }

  return result;
}

+ (id)sharedInstance
{
  if (qword_10029E500 != -1)
  {
    dispatch_once(&qword_10029E500, &stru_100252850);
  }

  v3 = qword_10029E4F8;

  return v3;
}

@end