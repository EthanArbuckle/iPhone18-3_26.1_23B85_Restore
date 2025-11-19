@interface CSSpeechEndpointAssetMetaUpdateMonitor
+ (id)sharedInstance;
- (CSSpeechEndpointAssetMetaUpdateMonitor)init;
- (void)_didReceiveNewSpeechEndpointAssetMetaData;
- (void)_notifyObserver:(id)a3;
- (void)_startMonitoringWithQueue:(id)a3;
- (void)_stopMonitoring;
@end

@implementation CSSpeechEndpointAssetMetaUpdateMonitor

- (void)_notifyObserver:(id)a3
{
  v4 = a3;
  [(CSSpeechEndpointAssetMetaUpdateMonitor *)self notifyObserver:v4];
  if (objc_opt_respondsToSelector())
  {
    [v4 CSSpeechEndpointAssetMetaUpdateMonitor:self didReceiveNewSpeechEndpointAssetMetaData:1];
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
  v4[2] = sub_1000DAD1C;
  v4[3] = &unk_100253B48;
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

- (void)_startMonitoringWithQueue:(id)a3
{
  v4 = a3;
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
    handler[2] = sub_1000DAF90;
    handler[3] = &unk_1002537C0;
    handler[4] = self;
    notify_register_dispatch(v5, &self->_notifyToken, v4, handler);
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
  if (qword_10029E320 != -1)
  {
    dispatch_once(&qword_10029E320, &stru_1002510E8);
  }

  v3 = qword_10029E318;

  return v3;
}

@end