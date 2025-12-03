@interface CSAdBlockerAssetMetaUpdateMonitor
+ (id)sharedInstance;
- (CSAdBlockerAssetMetaUpdateMonitor)init;
- (void)_didReceiveNewAdBlockerAssetMetaData;
- (void)_notifyObserver:(id)observer;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)_stopMonitoring;
@end

@implementation CSAdBlockerAssetMetaUpdateMonitor

- (void)_notifyObserver:(id)observer
{
  observerCopy = observer;
  [(CSAdBlockerAssetMetaUpdateMonitor *)self notifyObserver:observerCopy];
  [observerCopy CSAdBlockerMetaUpdateMonitor:self didReceiveNewAdBlockerAssetMetaData:1];
}

- (void)_didReceiveNewAdBlockerAssetMetaData
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[CSAdBlockerAssetMetaUpdateMonitor _didReceiveNewAdBlockerAssetMetaData]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s New AdBlocker asset metadata is available", buf, 0xCu);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10015F344;
  v4[3] = &unk_100253B48;
  v4[4] = self;
  [(CSAdBlockerAssetMetaUpdateMonitor *)self enumerateObservers:v4];
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
      v6 = "[CSAdBlockerAssetMetaUpdateMonitor _stopMonitoring]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : AdBlocker Asset meta update", &v5, 0xCu);
    }
  }
}

- (void)_startMonitoringWithQueue:(id)queue
{
  if (self->_notifyToken == -1)
  {
    queueCopy = queue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10015F550;
    handler[3] = &unk_1002537C0;
    handler[4] = self;
    notify_register_dispatch([(CSAdBlockerAssetMetaUpdateMonitor *)self _asssetMetaUpdatedKey], &self->_notifyToken, queueCopy, handler);

    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v8 = "[CSAdBlockerAssetMetaUpdateMonitor _startMonitoringWithQueue:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Start monitoring : AdBlocker Asset meta update", buf, 0xCu);
    }
  }
}

- (CSAdBlockerAssetMetaUpdateMonitor)init
{
  v3.receiver = self;
  v3.super_class = CSAdBlockerAssetMetaUpdateMonitor;
  result = [(CSAdBlockerAssetMetaUpdateMonitor *)&v3 init];
  if (result)
  {
    result->_notifyToken = -1;
  }

  return result;
}

+ (id)sharedInstance
{
  if (qword_10029E5C0 != -1)
  {
    dispatch_once(&qword_10029E5C0, &stru_100253448);
  }

  v3 = qword_10029E5B8;

  return v3;
}

@end