@interface CSVoiceTriggerAssetMetaUpdateMonitor
+ (id)sharedInstance;
- (CSVoiceTriggerAssetMetaUpdateMonitor)init;
- (const)_asssetMetaUpdatedKey;
- (void)_didReceiveNewVoiceTriggerAssetMetaData;
- (void)_notifyObserver:(id)a3;
- (void)_startMonitoringWithQueue:(id)a3;
- (void)_stopMonitoring;
@end

@implementation CSVoiceTriggerAssetMetaUpdateMonitor

- (void)_notifyObserver:(id)a3
{
  v4 = a3;
  [(CSVoiceTriggerAssetMetaUpdateMonitor *)self notifyObserver:v4];
  if (objc_opt_respondsToSelector())
  {
    [v4 CSVoiceTriggerAssetMetaUpdateMonitor:self didReceiveNewVoiceTriggerAssetMetaData:1];
  }
}

- (void)_didReceiveNewVoiceTriggerAssetMetaData
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[CSVoiceTriggerAssetMetaUpdateMonitor _didReceiveNewVoiceTriggerAssetMetaData]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s New VoiceTrigger asset metadata is available", buf, 0xCu);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000F1D0;
  v4[3] = &unk_10001CB08;
  v4[4] = self;
  [(CSVoiceTriggerAssetMetaUpdateMonitor *)self enumerateObserversInQueue:v4];
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
      v9 = 136315138;
      v10 = "[CSVoiceTriggerAssetMetaUpdateMonitor _stopMonitoring]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : VoiceTrigger Asset meta update", &v9, 0xCu);
    }
  }

  if (CSIsGibraltarMac())
  {
    gibraltarMacNotifyToken = self->_gibraltarMacNotifyToken;
    if (gibraltarMacNotifyToken != -1)
    {
      notify_cancel(gibraltarMacNotifyToken);
      self->_gibraltarMacNotifyToken = -1;
      v6 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315138;
        v10 = "[CSVoiceTriggerAssetMetaUpdateMonitor _stopMonitoring]";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : Gibraltar VoiceTrigger Asset meta update", &v9, 0xCu);
      }
    }
  }

  if ((CSIsOSX() & 1) != 0 || CSIsIOS())
  {
    darwinNotifyToken = self->_darwinNotifyToken;
    if (darwinNotifyToken != -1)
    {
      notify_cancel(darwinNotifyToken);
      self->_darwinNotifyToken = -1;
      v8 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315138;
        v10 = "[CSVoiceTriggerAssetMetaUpdateMonitor _stopMonitoring]";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : Studio Display VoiceTrigger Asset meta update", &v9, 0xCu);
      }
    }
  }
}

- (void)_startMonitoringWithQueue:(id)a3
{
  v4 = a3;
  if (self->_notifyToken == -1)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10000F68C;
    handler[3] = &unk_10001CAE0;
    handler[4] = self;
    notify_register_dispatch([(CSVoiceTriggerAssetMetaUpdateMonitor *)self _asssetMetaUpdatedKey], &self->_notifyToken, v4, handler);
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "[CSVoiceTriggerAssetMetaUpdateMonitor _startMonitoringWithQueue:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Start monitoring : VoiceTrigger Asset meta update", buf, 0xCu);
    }
  }

  if (CSIsGibraltarMac())
  {
    if (self->_gibraltarMacNotifyToken == -1)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10000F694;
      v9[3] = &unk_10001CAE0;
      v9[4] = self;
      notify_register_dispatch("com.apple.MobileAsset.VoiceTriggerAssetsMac.ma.cached-metadata-updated", &self->_gibraltarMacNotifyToken, v4, v9);
      v6 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v12 = "[CSVoiceTriggerAssetMetaUpdateMonitor _startMonitoringWithQueue:]";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Start monitoring : Gibraltar VoiceTrigger Asset meta update", buf, 0xCu);
      }
    }
  }

  if (((CSIsOSX() & 1) != 0 || CSIsIOS()) && self->_darwinNotifyToken == -1)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000F69C;
    v8[3] = &unk_10001CAE0;
    v8[4] = self;
    notify_register_dispatch("com.apple.MobileAsset.VoiceTriggerAssetsStudioDisplay.ma.cached-metadata-updated", &self->_darwinNotifyToken, v4, v8);
    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "[CSVoiceTriggerAssetMetaUpdateMonitor _startMonitoringWithQueue:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Start monitoring : Studio Display VoiceTrigger Asset meta update", buf, 0xCu);
    }
  }
}

- (const)_asssetMetaUpdatedKey
{
  v2 = +[CSUtils supportMphAssets];
  if (CSIsIPad())
  {
    v3 = "com.apple.MobileAsset.VoiceTriggerHSAssetsIPad.ma.cached-metadata-updated";
    v4 = "com.apple.MobileAsset.VoiceTriggerAssetsIPad.ma.cached-metadata-updated";
    goto LABEL_5;
  }

  if (CSIsWatch())
  {
    v3 = "com.apple.MobileAsset.VoiceTriggerHSAssetsWatch.ma.cached-metadata-updated";
    v4 = "com.apple.MobileAsset.VoiceTriggerAssetsWatch.ma.cached-metadata-updated";
LABEL_5:
    if (v2)
    {
      return v4;
    }

    else
    {
      return v3;
    }
  }

  if (CSIsHorseman())
  {
    return "com.apple.MobileAsset.VoiceTriggerAssetsMarsh.ma.cached-metadata-updated";
  }

  if (CSIsOSX())
  {
    return "com.apple.MobileAsset.VoiceTriggerAssetsASMac.ma.cached-metadata-updated";
  }

  if (CSIsTV())
  {
    return "com.apple.MobileAsset.VoiceTriggerAssetsTV.ma.cached-metadata-updated";
  }

  v6 = CSIsIOS();
  v7 = "com.apple.MobileAsset.VoiceTriggerHSAssets.ma.cached-metadata-updated";
  if (v2)
  {
    v7 = "com.apple.MobileAsset.VoiceTriggerAssets.ma.cached-metadata-updated";
  }

  if (v6)
  {
    return v7;
  }

  else
  {
    return "com.apple.MobileAsset.VoiceTriggerAssets.ma.cached-metadata-updated";
  }
}

- (CSVoiceTriggerAssetMetaUpdateMonitor)init
{
  v3.receiver = self;
  v3.super_class = CSVoiceTriggerAssetMetaUpdateMonitor;
  result = [(CSVoiceTriggerAssetMetaUpdateMonitor *)&v3 init];
  if (result)
  {
    result->_notifyToken = -1;
    result->_gibraltarMacNotifyToken = -1;
    result->_darwinNotifyToken = -1;
  }

  return result;
}

+ (id)sharedInstance
{
  if (qword_1000229E8 != -1)
  {
    dispatch_once(&qword_1000229E8, &stru_10001CAB8);
  }

  v3 = qword_1000229E0;

  return v3;
}

@end