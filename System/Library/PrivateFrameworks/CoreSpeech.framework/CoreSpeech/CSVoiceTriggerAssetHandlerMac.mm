@interface CSVoiceTriggerAssetHandlerMac
- (CSVoiceTriggerAssetHandlerMac)initWithVoiceTriggerAssetDownloadMonitor:(id)a3 languageCodeUpdateMonitor:(id)a4 uafAssetDownloadMonitor:(id)a5 assetManager:(id)a6 uafAssetManager:(id)a7 disableOnDeviceCompilation:(BOOL)a8;
- (void)CSLanguageCodeUpdateMonitor:(id)a3 didReceiveLanguageCodeChanged:(id)a4;
- (void)CSVoiceTriggerAssetDownloadMonitor:(id)a3 didInstallNewAsset:(BOOL)a4;
- (void)CSVoiceTriggerEnabledMonitor:(id)a3 didReceiveEnabled:(BOOL)a4;
- (void)_checkNewAssetAvailability;
- (void)_checkNewAssetAvailabilityForEndpoint;
- (void)_getVoiceTriggerAssetFromAssetManager:(id)a3;
- (void)_getVoiceTriggerAssetFromAssetManagerWithLocale:(id)a3 bundleIdentifier:(id)a4 completion:(id)a5;
- (void)_handleEndpointVoiceTriggerAsset:(id)a3 completion:(id)a4;
- (void)_handleVoiceTriggerAssetWithCompletion:(id)a3;
- (void)assetDownloadMonitorDelegate:(id)a3 assetType:(unint64_t)a4;
- (void)getVoiceTriggerAssetWithEndpointId:(id)a3 completion:(id)a4;
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

- (void)CSVoiceTriggerEnabledMonitor:(id)a3 didReceiveEnabled:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4 && self->_onDeviceCompilationHandler)
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

- (void)assetDownloadMonitorDelegate:(id)a3 assetType:(unint64_t)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "[CSVoiceTriggerAssetHandlerMac assetDownloadMonitorDelegate:assetType:]";
      v10 = 2048;
      v11 = a4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Ignore UAF asset update for type: %lu", &v8, 0x16u);
    }
  }

  else
  {
    [(CSVoiceTriggerAssetHandlerMac *)self _checkNewAssetAvailability];
    [(CSVoiceTriggerAssetHandlerMac *)self _checkNewAssetAvailabilityForEndpoint];
  }
}

- (void)CSLanguageCodeUpdateMonitor:(id)a3 didReceiveLanguageCodeChanged:(id)a4
{
  v5 = a4;
  v6 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSVoiceTriggerAssetHandlerMac CSLanguageCodeUpdateMonitor:didReceiveLanguageCodeChanged:]";
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Language Code Changed : %{public}@", &v7, 0x16u);
  }

  [(CSVoiceTriggerAssetHandlerMac *)self _checkNewAssetAvailability];
  [(CSVoiceTriggerAssetHandlerMac *)self _checkNewAssetAvailabilityForEndpoint];
}

- (void)CSVoiceTriggerAssetDownloadMonitor:(id)a3 didInstallNewAsset:(BOOL)a4
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

- (void)_getVoiceTriggerAssetFromAssetManagerWithLocale:(id)a3 bundleIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100038964;
  v23[3] = &unk_100252878;
  v10 = v8;
  v24 = v10;
  v11 = v9;
  v25 = v11;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100038A68;
  v21[3] = &unk_10024ED30;
  v21[4] = self;
  v12 = objc_retainBlock(v23);
  v22 = v12;
  v13 = objc_retainBlock(v21);
  if (a4)
  {
    (v12[2])(v12, 0, 0);
  }

  else
  {
    v14 = [CSUtils getSiriLanguageWithFallback:@"en-US"];
    if ([v10 isEqualToString:v14] && (-[CSVoiceTriggerAssetHandler uafAssetManager](self, "uafAssetManager"), v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
    {
      v16 = [(CSVoiceTriggerAssetHandler *)self uafAssetManager];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100038B0C;
      v17[3] = &unk_10024ED58;
      v19 = v12;
      v20 = v13;
      v18 = v10;
      [v16 getInstalledAssetofType:0 forLocale:v14 completion:v17];
    }

    else
    {
      (v13[2])(v13, v10);
    }
  }
}

- (void)_getVoiceTriggerAssetFromAssetManager:(id)a3
{
  v4 = a3;
  v5 = [CSUtils getSiriLanguageWithFallback:@"en-US"];
  [(CSVoiceTriggerAssetHandlerMac *)self _getVoiceTriggerAssetFromAssetManagerWithLocale:v5 completion:v4];
}

- (void)getVoiceTriggerAssetWithEndpointId:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100038EA4;
    block[3] = &unk_1002533A0;
    block[4] = self;
    v10 = v6;
    v11 = v7;
    dispatch_async(queue, block);
  }

  else
  {
    [(CSVoiceTriggerAssetHandlerMac *)self _handleVoiceTriggerAssetWithCompletion:v7];
  }
}

- (void)_handleEndpointVoiceTriggerAsset:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v9 = [NSError errorWithDomain:CSErrorDomain code:114 userInfo:0];
    v7[2](v7, 0, v9);
    goto LABEL_6;
  }

  v8 = [(NSMutableDictionary *)self->_cachedEndpointAssets objectForKeyedSubscript:v6];

  if (!v8)
  {
    v10 = [CSUtils getSiriLanguageWithEndpointId:v6 fallbackLanguage:@"en-US"];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100039044;
    v11[3] = &unk_10024ED08;
    v11[4] = self;
    v12 = v6;
    v13 = v7;
    [(CSVoiceTriggerAssetHandlerMac *)self _getVoiceTriggerAssetFromAssetManagerWithLocale:v10 completion:v11];

    goto LABEL_8;
  }

  if (v7)
  {
    v9 = [(NSMutableDictionary *)self->_cachedEndpointAssets objectForKeyedSubscript:v6];
    (v7)[2](v7, v9, 0);
LABEL_6:
  }

LABEL_8:
}

- (void)_handleVoiceTriggerAssetWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CSVoiceTriggerAssetHandlerMac *)self cachedAsset];

  if (v5)
  {
    if (v4)
    {
      v6 = [(CSVoiceTriggerAssetHandlerMac *)self cachedAsset];
      v4[2](v4, v6, 0);
    }
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000393C0;
    v7[3] = &unk_100252878;
    v7[4] = self;
    v8 = v4;
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

- (CSVoiceTriggerAssetHandlerMac)initWithVoiceTriggerAssetDownloadMonitor:(id)a3 languageCodeUpdateMonitor:(id)a4 uafAssetDownloadMonitor:(id)a5 assetManager:(id)a6 uafAssetManager:(id)a7 disableOnDeviceCompilation:(BOOL)a8
{
  v35 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
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

    objc_storeStrong(&v18->_voiceTriggerAssetDownloadMonitor, a3);
    if (!v18->_voiceTriggerAssetDownloadMonitor)
    {
      v23 = +[CSVoiceTriggerAssetDownloadMonitor sharedInstance];
      voiceTriggerAssetDownloadMonitor = v18->_voiceTriggerAssetDownloadMonitor;
      v18->_voiceTriggerAssetDownloadMonitor = v23;
    }

    objc_storeStrong(&v18->_languageCodeUpdateMonitor, a4);
    if (!v18->_languageCodeUpdateMonitor)
    {
      v25 = +[CSLanguageCodeUpdateMonitor sharedInstance];
      languageCodeUpdateMonitor = v18->_languageCodeUpdateMonitor;
      v18->_languageCodeUpdateMonitor = v25;
    }

    objc_storeStrong(&v18->_uafAssetDownloadMonitor, a5);
    if (!v18->_uafAssetDownloadMonitor)
    {
      v27 = +[CSUAFDownloadMonitor sharedInstance];
      uafAssetDownloadMonitor = v18->_uafAssetDownloadMonitor;
      v18->_uafAssetDownloadMonitor = v27;
    }

    objc_storeStrong(&v18->_assetManager, a6);
    if (!v18->_assetManager)
    {
      v29 = +[CSAssetManager sharedManager];
      assetManager = v18->_assetManager;
      v18->_assetManager = v29;
    }

    if (v17)
    {
      [(CSVoiceTriggerAssetHandler *)v18 setUafAssetManager:v17];
    }

    [(CSVoiceTriggerAssetHandlerMac *)v18 start];
    [(CSVoiceTriggerAssetHandlerMac *)v18 setCachedAsset:0];
    [(CSVoiceTriggerAssetHandlerMac *)v18 setCachedAssistantAsset:0];
    if (!a8 && !v18->_onDeviceCompilationHandler)
    {
      v31 = +[CSOnDeviceCompilationHandler sharedHandler];
      onDeviceCompilationHandler = v18->_onDeviceCompilationHandler;
      v18->_onDeviceCompilationHandler = v31;
    }
  }

  return v18;
}

@end