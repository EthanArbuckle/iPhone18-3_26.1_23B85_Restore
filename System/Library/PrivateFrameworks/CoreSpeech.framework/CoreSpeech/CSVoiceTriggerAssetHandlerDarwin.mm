@interface CSVoiceTriggerAssetHandlerDarwin
- (CSVoiceTriggerAssetHandlerDarwin)init;
- (void)CSLanguageCodeUpdateMonitor:(id)a3 didReceiveLanguageCodeChanged:(id)a4;
- (void)CSRemoteAssetManagerDidDownloadNewAsset:(id)a3;
- (void)_checkNewAssetAvailability;
- (void)_getVoiceTriggerAssetFromAssetManager:(id)a3;
- (void)getVoiceTriggerAssetWithEndpointId:(id)a3 completion:(id)a4;
- (void)start;
@end

@implementation CSVoiceTriggerAssetHandlerDarwin

- (void)CSLanguageCodeUpdateMonitor:(id)a3 didReceiveLanguageCodeChanged:(id)a4
{
  v5 = a4;
  v6 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[CSVoiceTriggerAssetHandlerDarwin CSLanguageCodeUpdateMonitor:didReceiveLanguageCodeChanged:]";
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Language Code Changed : %{public}@", &v8, 0x16u);
  }

  [(CSVoiceTriggerAssetHandlerDarwin *)self _checkNewAssetAvailability];
  v7 = +[CSVoiceTriggerAssetMetaUpdateMonitor sharedInstance];
  [v7 notifyNewVoiceTriggerAssetMetaDataUpdated];
}

- (void)CSRemoteAssetManagerDidDownloadNewAsset:(id)a3
{
  v4 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[CSVoiceTriggerAssetHandlerDarwin CSRemoteAssetManagerDidDownloadNewAsset:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s new VoiceTrigger asset downloaded", buf, 0xCu);
  }

  v5 = [(CSVoiceTriggerAssetHandler *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100143C2C;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)_checkNewAssetAvailability
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100143CA0;
  v2[3] = &unk_100252F10;
  v2[4] = self;
  [(CSVoiceTriggerAssetHandlerDarwin *)self _getVoiceTriggerAssetFromAssetManager:v2];
}

- (void)_getVoiceTriggerAssetFromAssetManager:(id)a3
{
  v3 = a3;
  v4 = +[CSRemoteAssetManagerFactory remoteAssetManager];
  v5 = [v4 assetForCurrentLanguageOfType:0];

  v6 = +[CSOnDeviceCompilationHandler sharedHandler];
  v10 = 0;
  [v6 compileAndUpdateDeviceCachesWithAsset:v5 assetType:5 endpointId:0 errOut:&v10];
  v7 = v10;

  v8 = CSLogCategoryAsset;
  v9 = os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *buf = 136315394;
      v12 = "[CSVoiceTriggerAssetHandlerDarwin _getVoiceTriggerAssetFromAssetManager:]";
      v13 = 2114;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Fetching CSVoiceTriggerAsset failed with error error %{public}@", buf, 0x16u);
    }

    if (v3)
    {
      v3[2](v3, 0, v7);
    }
  }

  else
  {
    if (v9)
    {
      *buf = 136315394;
      v12 = "[CSVoiceTriggerAssetHandlerDarwin _getVoiceTriggerAssetFromAssetManager:]";
      v13 = 2114;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s CSVoiceTriggerAsset found: %{public}@", buf, 0x16u);
    }

    if (v3)
    {
      (v3)[2](v3, v5, 0);
    }
  }
}

- (void)getVoiceTriggerAssetWithEndpointId:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [(CSVoiceTriggerAssetHandlerDarwin *)self cachedAsset];

  if (v6)
  {
    if (v5)
    {
      v7 = [(CSVoiceTriggerAssetHandlerDarwin *)self cachedAsset];
      v5[2](v5, v7, 0);
    }
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001441E4;
    v8[3] = &unk_100252878;
    v8[4] = self;
    v9 = v5;
    [(CSVoiceTriggerAssetHandlerDarwin *)self _getVoiceTriggerAssetFromAssetManager:v8];
  }
}

- (void)start
{
  v3 = +[CSRemoteAssetManagerFactory remoteAssetManager];
  [v3 addObserver:self forAssetType:0];

  v4 = +[CSLanguageCodeUpdateMonitor sharedInstance];
  [v4 addObserver:self];
}

- (CSVoiceTriggerAssetHandlerDarwin)init
{
  if (+[CSUtils isDarwinOS])
  {
    v7.receiver = self;
    v7.super_class = CSVoiceTriggerAssetHandlerDarwin;
    v3 = [(CSVoiceTriggerAssetHandler *)&v7 init];
    v4 = v3;
    if (v3)
    {
      [(CSVoiceTriggerAssetHandlerDarwin *)v3 start];
      [(CSVoiceTriggerAssetHandlerDarwin *)v4 setCachedAsset:0];
    }

    self = v4;
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end