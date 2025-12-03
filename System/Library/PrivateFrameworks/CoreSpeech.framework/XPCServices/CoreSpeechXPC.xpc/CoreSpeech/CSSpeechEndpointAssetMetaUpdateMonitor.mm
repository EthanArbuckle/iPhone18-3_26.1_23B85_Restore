@interface CSSpeechEndpointAssetMetaUpdateMonitor
+ (id)sharedInstance;
- (CSSpeechEndpointAssetMetaUpdateMonitor)init;
- (void)_didReceiveNewSpeechEndpointAssetMetaData;
- (void)_notifyObserver:(id)observer;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)_stopMonitoring;
@end

@implementation CSSpeechEndpointAssetMetaUpdateMonitor

- (void)_notifyObserver:(id)observer
{
  observerCopy = observer;
  [(CSSpeechEndpointAssetMetaUpdateMonitor *)self notifyObserver:observerCopy];
  if (objc_opt_respondsToSelector())
  {
    [observerCopy CSSpeechEndpointAssetMetaUpdateMonitor:self didReceiveNewSpeechEndpointAssetMetaData:1];
  }
}

- (void)_didReceiveNewSpeechEndpointAssetMetaData
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[CSSpeechEndpointAssetMetaUpdateMonitor _didReceiveNewSpeechEndpointAssetMetaData]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s New speech endpoint asset is available", buf, 0xCu);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000EA70;
  v4[3] = &unk_10001CB08;
  v4[4] = self;
  [(CSSpeechEndpointAssetMetaUpdateMonitor *)self enumerateObservers:v4];
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
      v6 = "[CSSpeechEndpointAssetMetaUpdateMonitor _stopMonitoring]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : speech endpoint asset meta update", &v5, 0xCu);
    }
  }
}

- (void)_startMonitoringWithQueue:(id)queue
{
  queueCopy = queue;
  if (self->_notifyToken == -1)
  {
    if (CSIsWatch())
    {
      v5 = "com.apple.MobileAsset.SpeechEndpointAssetsWatch.ma.cached-metadata-updated";
    }

    else if (CSIsTV())
    {
      v5 = "com.apple.MobileAsset.SpeechEndpointAssetsTV.ma.cached-metadata-updated";
    }

    else if (CSIsOSX())
    {
      v5 = "com.apple.MobileAsset.SpeechEndpointMacOSAssets.ma.cached-metadata-updated";
    }

    else if (+[CSUtils shouldUseHorsemanSpeechEndpointAssets])
    {
      v5 = "com.apple.MobileAsset.SpeechEndpointMarshAssets.ma.cached-metadata-updated";
    }

    else
    {
      v5 = "com.apple.MobileAsset.SpeechEndpointAssets.ma.cached-metadata-updated";
    }

    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10000ECE4;
    handler[3] = &unk_10001CAE0;
    handler[4] = self;
    notify_register_dispatch(v5, &self->_notifyToken, queueCopy, handler);
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v9 = "[CSSpeechEndpointAssetMetaUpdateMonitor _startMonitoringWithQueue:]";
      v10 = 2080;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Start monitoring : speech endpoint asset meta update with key %s", buf, 0x16u);
    }
  }
}

- (CSSpeechEndpointAssetMetaUpdateMonitor)init
{
  v3.receiver = self;
  v3.super_class = CSSpeechEndpointAssetMetaUpdateMonitor;
  result = [(CSSpeechEndpointAssetMetaUpdateMonitor *)&v3 init];
  if (result)
  {
    result->_notifyToken = -1;
  }

  return result;
}

+ (id)sharedInstance
{
  if (qword_1000229D8 != -1)
  {
    dispatch_once(&qword_1000229D8, &stru_10001CA78);
  }

  v3 = qword_1000229D0;

  return v3;
}

@end