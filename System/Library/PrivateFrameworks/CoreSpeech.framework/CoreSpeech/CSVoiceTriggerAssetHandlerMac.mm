@interface CSVoiceTriggerAssetHandlerMac
- (CSVoiceTriggerAssetHandlerMac)initWithVoiceTriggerAssetDownloadMonitor:(id)monitor languageCodeUpdateMonitor:(id)updateMonitor uafAssetDownloadMonitor:(id)downloadMonitor assetManager:(id)manager uafAssetManager:(id)assetManager disableOnDeviceCompilation:(BOOL)compilation;
- (void)CSLanguageCodeUpdateMonitor:(id)monitor didReceiveLanguageCodeChanged:(id)changed;
- (void)CSVoiceTriggerAssetDownloadMonitor:(id)monitor didInstallNewAsset:(BOOL)asset;
- (void)CSVoiceTriggerEnabledMonitor:(id)monitor didReceiveEnabled:(BOOL)enabled;
- (void)_checkNewAssetAvailability;
- (void)_checkNewAssetAvailabilityForEndpoint;
- (void)_getVoiceTriggerAssetFromAssetManager:(id)manager;
- (void)_getVoiceTriggerAssetFromAssetManagerWithLocale:(id)locale bundleIdentifier:(id)identifier completion:(id)completion;
- (void)_handleEndpointVoiceTriggerAsset:(id)asset completion:(id)completion;
- (void)_handleVoiceTriggerAssetWithCompletion:(id)completion;
- (void)assetDownloadMonitorDelegate:(id)delegate assetType:(unint64_t)type;
- (void)getVoiceTriggerAssetWithEndpointId:(id)id completion:(id)completion;
- (void)start;
- (void)triggerAssetRefresh;
@end

@implementation CSVoiceTriggerAssetHandlerMac

- (void)triggerAssetRefresh
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004FF4;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)CSVoiceTriggerEnabledMonitor:(id)monitor didReceiveEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  monitorCopy = monitor;
  if (enabledCopy && self->_onDeviceCompilationHandler)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000374B8;
    block[3] = &unk_100253C20;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)assetDownloadMonitorDelegate:(id)delegate assetType:(unint64_t)type
{
  delegateCopy = delegate;
  if (type)
  {
    v7 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "[CSVoiceTriggerAssetHandlerMac assetDownloadMonitorDelegate:assetType:]";
      v10 = 2048;
      typeCopy = type;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Ignore UAF asset update for type: %lu", &v8, 0x16u);
    }
  }

  else
  {
    [(CSVoiceTriggerAssetHandlerMac *)self _checkNewAssetAvailability];
    [(CSVoiceTriggerAssetHandlerMac *)self _checkNewAssetAvailabilityForEndpoint];
  }
}

- (void)CSLanguageCodeUpdateMonitor:(id)monitor didReceiveLanguageCodeChanged:(id)changed
{
  changedCopy = changed;
  v6 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSVoiceTriggerAssetHandlerMac CSLanguageCodeUpdateMonitor:didReceiveLanguageCodeChanged:]";
    v9 = 2114;
    v10 = changedCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Language Code Changed : %{public}@", &v7, 0x16u);
  }

  [(CSVoiceTriggerAssetHandlerMac *)self _checkNewAssetAvailability];
  [(CSVoiceTriggerAssetHandlerMac *)self _checkNewAssetAvailabilityForEndpoint];
}

- (void)CSVoiceTriggerAssetDownloadMonitor:(id)monitor didInstallNewAsset:(BOOL)asset
{
  v5 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSVoiceTriggerAssetHandlerMac CSVoiceTriggerAssetDownloadMonitor:didInstallNewAsset:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s new VoiceTrigger asset downloaded", &v6, 0xCu);
  }

  [(CSVoiceTriggerAssetHandlerMac *)self _checkNewAssetAvailability];
  [(CSVoiceTriggerAssetHandlerMac *)self _checkNewAssetAvailabilityForEndpoint];
}

- (void)_checkNewAssetAvailabilityForEndpoint
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100037CC8;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_checkNewAssetAvailability
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10003834C;
  v2[3] = &unk_100252F10;
  v2[4] = self;
  [(CSVoiceTriggerAssetHandlerMac *)self _getVoiceTriggerAssetFromAssetManager:v2];
}

- (void)_getVoiceTriggerAssetFromAssetManagerWithLocale:(id)locale bundleIdentifier:(id)identifier completion:(id)completion
{
  localeCopy = locale;
  completionCopy = completion;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100038964;
  v23[3] = &unk_100252878;
  v10 = localeCopy;
  v24 = v10;
  v11 = completionCopy;
  v25 = v11;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100038A68;
  v21[3] = &unk_10024ED30;
  v21[4] = self;
  v12 = objc_retainBlock(v23);
  v22 = v12;
  v13 = objc_retainBlock(v21);
  if (identifier)
  {
    (v12[2])(v12, 0, 0);
  }

  else
  {
    v14 = [CSUtils getSiriLanguageWithFallback:@"en-US"];
    if ([v10 isEqualToString:v14] && (-[CSVoiceTriggerAssetHandler uafAssetManager](self, "uafAssetManager"), v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
    {
      uafAssetManager = [(CSVoiceTriggerAssetHandler *)self uafAssetManager];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100038B0C;
      v17[3] = &unk_10024ED58;
      v19 = v12;
      v20 = v13;
      v18 = v10;
      [uafAssetManager getInstalledAssetofType:0 forLocale:v14 completion:v17];
    }

    else
    {
      (v13[2])(v13, v10);
    }
  }
}

- (void)_getVoiceTriggerAssetFromAssetManager:(id)manager
{
  managerCopy = manager;
  v5 = [CSUtils getSiriLanguageWithFallback:@"en-US"];
  [(CSVoiceTriggerAssetHandlerMac *)self _getVoiceTriggerAssetFromAssetManagerWithLocale:v5 completion:managerCopy];
}

- (void)getVoiceTriggerAssetWithEndpointId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  if (idCopy)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100038EA4;
    block[3] = &unk_1002533A0;
    block[4] = self;
    v10 = idCopy;
    v11 = completionCopy;
    dispatch_async(queue, block);
  }

  else
  {
    [(CSVoiceTriggerAssetHandlerMac *)self _handleVoiceTriggerAssetWithCompletion:completionCopy];
  }
}

- (void)_handleEndpointVoiceTriggerAsset:(id)asset completion:(id)completion
{
  assetCopy = asset;
  completionCopy = completion;
  if (!assetCopy)
  {
    v9 = [NSError errorWithDomain:CSErrorDomain code:114 userInfo:0];
    completionCopy[2](completionCopy, 0, v9);
    goto LABEL_6;
  }

  v8 = [(NSMutableDictionary *)self->_cachedEndpointAssets objectForKeyedSubscript:assetCopy];

  if (!v8)
  {
    v10 = [CSUtils getSiriLanguageWithEndpointId:assetCopy fallbackLanguage:@"en-US"];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100039044;
    v11[3] = &unk_10024ED08;
    v11[4] = self;
    v12 = assetCopy;
    v13 = completionCopy;
    [(CSVoiceTriggerAssetHandlerMac *)self _getVoiceTriggerAssetFromAssetManagerWithLocale:v10 completion:v11];

    goto LABEL_8;
  }

  if (completionCopy)
  {
    v9 = [(NSMutableDictionary *)self->_cachedEndpointAssets objectForKeyedSubscript:assetCopy];
    (completionCopy)[2](completionCopy, v9, 0);
LABEL_6:
  }

LABEL_8:
}

- (void)_handleVoiceTriggerAssetWithCompletion:(id)completion
{
  completionCopy = completion;
  cachedAsset = [(CSVoiceTriggerAssetHandlerMac *)self cachedAsset];

  if (cachedAsset)
  {
    if (completionCopy)
    {
      cachedAsset2 = [(CSVoiceTriggerAssetHandlerMac *)self cachedAsset];
      completionCopy[2](completionCopy, cachedAsset2, 0);
    }
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000393C0;
    v7[3] = &unk_100252878;
    v7[4] = self;
    v8 = completionCopy;
    [(CSVoiceTriggerAssetHandlerMac *)self _getVoiceTriggerAssetFromAssetManager:v7];
  }
}

- (void)start
{
  [(CSVoiceTriggerAssetDownloadMonitor *)self->_voiceTriggerAssetDownloadMonitor addObserver:self];
  [(CSLanguageCodeUpdateMonitor *)self->_languageCodeUpdateMonitor addObserver:self];
  [(CSUAFDownloadMonitor *)self->_uafAssetDownloadMonitor addObserver:self];
  v3 = +[CSVoiceTriggerEnabledMonitor sharedInstance];
  [v3 addObserver:self];
}

- (CSVoiceTriggerAssetHandlerMac)initWithVoiceTriggerAssetDownloadMonitor:(id)monitor languageCodeUpdateMonitor:(id)updateMonitor uafAssetDownloadMonitor:(id)downloadMonitor assetManager:(id)manager uafAssetManager:(id)assetManager disableOnDeviceCompilation:(BOOL)compilation
{
  monitorCopy = monitor;
  updateMonitorCopy = updateMonitor;
  downloadMonitorCopy = downloadMonitor;
  managerCopy = manager;
  assetManagerCopy = assetManager;
  v36.receiver = self;
  v36.super_class = CSVoiceTriggerAssetHandlerMac;
  v18 = [(CSVoiceTriggerAssetHandler *)&v36 init];
  if (v18)
  {
    v19 = dispatch_queue_create("CSVoiceTriggerHandlerMacQueue", 0);
    queue = v18->_queue;
    v18->_queue = v19;

    v21 = +[NSMutableDictionary dictionary];
    cachedEndpointAssets = v18->_cachedEndpointAssets;
    v18->_cachedEndpointAssets = v21;

    objc_storeStrong(&v18->_voiceTriggerAssetDownloadMonitor, monitor);
    if (!v18->_voiceTriggerAssetDownloadMonitor)
    {
      v23 = +[CSVoiceTriggerAssetDownloadMonitor sharedInstance];
      voiceTriggerAssetDownloadMonitor = v18->_voiceTriggerAssetDownloadMonitor;
      v18->_voiceTriggerAssetDownloadMonitor = v23;
    }

    objc_storeStrong(&v18->_languageCodeUpdateMonitor, updateMonitor);
    if (!v18->_languageCodeUpdateMonitor)
    {
      v25 = +[CSLanguageCodeUpdateMonitor sharedInstance];
      languageCodeUpdateMonitor = v18->_languageCodeUpdateMonitor;
      v18->_languageCodeUpdateMonitor = v25;
    }

    objc_storeStrong(&v18->_uafAssetDownloadMonitor, downloadMonitor);
    if (!v18->_uafAssetDownloadMonitor)
    {
      v27 = +[CSUAFDownloadMonitor sharedInstance];
      uafAssetDownloadMonitor = v18->_uafAssetDownloadMonitor;
      v18->_uafAssetDownloadMonitor = v27;
    }

    objc_storeStrong(&v18->_assetManager, manager);
    if (!v18->_assetManager)
    {
      v29 = +[CSAssetManager sharedManager];
      assetManager = v18->_assetManager;
      v18->_assetManager = v29;
    }

    if (assetManagerCopy)
    {
      [(CSVoiceTriggerAssetHandler *)v18 setUafAssetManager:assetManagerCopy];
    }

    [(CSVoiceTriggerAssetHandlerMac *)v18 start];
    [(CSVoiceTriggerAssetHandlerMac *)v18 setCachedAsset:0];
    [(CSVoiceTriggerAssetHandlerMac *)v18 setCachedAssistantAsset:0];
    if (!compilation && !v18->_onDeviceCompilationHandler)
    {
      v31 = +[CSOnDeviceCompilationHandler sharedHandler];
      onDeviceCompilationHandler = v18->_onDeviceCompilationHandler;
      v18->_onDeviceCompilationHandler = v31;
    }
  }

  return v18;
}

@end