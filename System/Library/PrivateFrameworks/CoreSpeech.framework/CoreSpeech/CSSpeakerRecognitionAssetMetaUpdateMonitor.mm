@interface CSSpeakerRecognitionAssetMetaUpdateMonitor
+ (id)sharedInstance;
- (CSSpeakerRecognitionAssetMetaUpdateMonitor)init;
- (void)_didReceiveSpeakerRecognitionAssetMetaData;
- (void)_notifyObserver:(id)a3;
- (void)_startMonitoringWithQueue:(id)a3;
- (void)_stopMonitoring;
@end

@implementation CSSpeakerRecognitionAssetMetaUpdateMonitor

- (void)_notifyObserver:(id)a3
{
  v4 = a3;
  [(CSSpeakerRecognitionAssetMetaUpdateMonitor *)self notifyObserver:v4];
  [v4 CSSpeakerRecognitionAssetMetaUpdateMonitor:self didReceiveNewSpeakerRecognitionAssetMetaData:1];
}

- (void)_didReceiveSpeakerRecognitionAssetMetaData
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[CSSpeakerRecognitionAssetMetaUpdateMonitor _didReceiveSpeakerRecognitionAssetMetaData]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s New Speaker Recognition asset metadata is available", buf, 0xCu);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100018470;
  v4[3] = &unk_100253B48;
  v4[4] = self;
  [(CSSpeakerRecognitionAssetMetaUpdateMonitor *)self enumerateObservers:v4];
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
      v6 = "[CSSpeakerRecognitionAssetMetaUpdateMonitor _stopMonitoring]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : SpeakerRecognition Asset meta update", &v5, 0xCu);
    }
  }
}

- (void)_startMonitoringWithQueue:(id)a3
{
  if (self->_notifyToken == -1)
  {
    v4 = a3;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10001867C;
    handler[3] = &unk_1002537C0;
    handler[4] = self;
    notify_register_dispatch([(CSSpeakerRecognitionAssetMetaUpdateMonitor *)self _asssetMetaUpdatedKey], &self->_notifyToken, v4, handler);

    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v8 = "[CSSpeakerRecognitionAssetMetaUpdateMonitor _startMonitoringWithQueue:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Start monitoring : SpeakerRecognition Asset meta update", buf, 0xCu);
    }
  }
}

- (CSSpeakerRecognitionAssetMetaUpdateMonitor)init
{
  v3.receiver = self;
  v3.super_class = CSSpeakerRecognitionAssetMetaUpdateMonitor;
  result = [(CSSpeakerRecognitionAssetMetaUpdateMonitor *)&v3 init];
  if (result)
  {
    result->_notifyToken = -1;
  }

  return result;
}

+ (id)sharedInstance
{
  if (qword_10029DF40 != -1)
  {
    dispatch_once(&qword_10029DF40, &stru_10024E5F0);
  }

  v3 = qword_10029DF38;

  return v3;
}

@end