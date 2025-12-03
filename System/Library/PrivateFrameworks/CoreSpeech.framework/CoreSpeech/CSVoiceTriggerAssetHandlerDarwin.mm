@interface CSVoiceTriggerAssetHandlerDarwin
- (CSVoiceTriggerAssetHandlerDarwin)init;
- (void)CSLanguageCodeUpdateMonitor:(id)monitor didReceiveLanguageCodeChanged:(id)changed;
- (void)CSRemoteAssetManagerDidDownloadNewAsset:(id)asset;
- (void)_checkNewAssetAvailability;
- (void)_getVoiceTriggerAssetFromAssetManager:(id)manager;
- (void)getVoiceTriggerAssetWithEndpointId:(id)id completion:(id)completion;
- (void)start;
@end

@implementation CSVoiceTriggerAssetHandlerDarwin

- (void)CSLanguageCodeUpdateMonitor:(id)monitor didReceiveLanguageCodeChanged:(id)changed
{
  changedCopy = changed;
  v6 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[CSVoiceTriggerAssetHandlerDarwin CSLanguageCodeUpdateMonitor:didReceiveLanguageCodeChanged:]";
    v10 = 2114;
    v11 = changedCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Language Code Changed : %{public}@", &v8, 0x16u);
  }

  [(CSVoiceTriggerAssetHandlerDarwin *)self _checkNewAssetAvailability];
  v7 = +[CSVoiceTriggerAssetMetaUpdateMonitor sharedInstance];
  [v7 notifyNewVoiceTriggerAssetMetaDataUpdated];
}

- (void)CSRemoteAssetManagerDidDownloadNewAsset:(id)asset
{
  v4 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[CSVoiceTriggerAssetHandlerDarwin CSRemoteAssetManagerDidDownloadNewAsset:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s new VoiceTrigger asset downloaded", buf, 0xCu);
  }

  queue = [(CSVoiceTriggerAssetHandler *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100143C2C;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
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

- (void)_getVoiceTriggerAssetFromAssetManager:(id)manager
{
  managerCopy = manager;
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

    if (managerCopy)
    {
      managerCopy[2](managerCopy, 0, v7);
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

    if (managerCopy)
    {
      (managerCopy)[2](managerCopy, v5, 0);
    }
  }
}

- (void)getVoiceTriggerAssetWithEndpointId:(id)id completion:(id)completion
{
  completionCopy = completion;
  cachedAsset = [(CSVoiceTriggerAssetHandlerDarwin *)self cachedAsset];

  if (cachedAsset)
  {
    if (completionCopy)
    {
      cachedAsset2 = [(CSVoiceTriggerAssetHandlerDarwin *)self cachedAsset];
      completionCopy[2](completionCopy, cachedAsset2, 0);
    }
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001441E4;
    v8[3] = &unk_100252878;
    v8[4] = self;
    v9 = completionCopy;
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
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end