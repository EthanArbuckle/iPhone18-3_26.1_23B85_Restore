@interface CSAttSiriMitigationAssetHandler
+ (id)sharedHandler;
+ (id)sharedHandlerDisabledOnDeviceCompilation;
- (CSAttSiriMitigationAssetHandler)init;
- (CSAttSiriMitigationAssetHandler)initWithAssetManager:(id)a3 withUAFAssetManager:(id)a4 withUAFDownloadMonitor:(id)a5 withLanguageCodeUpdateMonitor:(id)a6 withAssetOverrideFlag:(BOOL)a7 withOverrideAssetPath:(id)a8 disableOnDeviceCompilation:(BOOL)a9;
- (CSAttSiriMitigationAssetHandler)initWithDisableOnDeviceCompilation;
- (void)CSLanguageCodeUpdateMonitor:(id)a3 didReceiveLanguageCodeChanged:(id)a4;
- (void)CSVoiceTriggerEnabledMonitor:(id)a3 didReceiveEnabled:(BOOL)a4;
- (void)_getMitigationAssetWithEndpointId:(id)a3 completion:(id)a4;
- (void)_getPreinstalledMitigationAssetForCurrentLocale:(id)a3;
- (void)_receivedNewAssetUpdate:(id)a3;
- (void)assetDownloadMonitorDelegate:(id)a3 assetType:(unint64_t)a4;
- (void)getMitigationAssetWithEndpointId:(id)a3 completion:(id)a4;
- (void)notifyObservers:(id)a3 endpointId:(id)a4;
- (void)registerObserver:(id)a3;
- (void)setCachedAssetWithOverride:(id)a3;
- (void)start;
- (void)triggerAssetRefresh;
- (void)unregisterObserver:(id)a3;
@end

@implementation CSAttSiriMitigationAssetHandler

+ (id)sharedHandler
{
  if (qword_10029E0B0 != -1)
  {
    dispatch_once(&qword_10029E0B0, &stru_10024F2D0);
  }

  v3 = qword_10029E0A8;

  return v3;
}

- (void)triggerAssetRefresh
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004BA4;
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
    block[2] = sub_10004F8B8;
    block[3] = &unk_100253C20;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)_getPreinstalledMitigationAssetForCurrentLocale:(id)a3
{
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10004FDBC;
  v24[3] = &unk_100252198;
  v4 = a3;
  v25 = v4;
  v5 = objc_retainBlock(v24);
  v6 = [(CSAttSiriMitigationAssetHandler *)self _siriLanguageCode];
  v7 = +[CSAsset fallBackAssetResourcePath];
  v8 = [v7 stringByAppendingPathComponent:@"/PreinstalledAssets/preinstalledMeta.json"];

  v9 = +[NSFileManager defaultManager];
  v10 = [v9 fileExistsAtPath:v8];

  if (v10)
  {
    v11 = [CSAsset decodeJson:v8];
    v12 = [v11 objectForKeyedSubscript:v6];
    if (v12)
    {
      CSSystemRootDirectory();
      v13 = v23 = v6;
      v26[0] = v13;
      v14 = [v12 objectForKeyedSubscript:@"resourcePath"];
      v26[1] = v14;
      v26[2] = @"mitigation";
      v15 = [NSArray arrayWithObjects:v26 count:3];
      v16 = [NSString pathWithComponents:v15];

      v17 = [v12 objectForKeyedSubscript:@"configVersion"];
      v18 = [CSAsset assetForAssetType:6 resourcePath:v16 configVersion:v17 assetProvider:0];
      (v5[2])(v5, v18, 0);

      v6 = v23;
    }

    else
    {
      v21 = CSLogCategoryAsset;
      if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v28 = "[CSAttSiriMitigationAssetHandler _getPreinstalledMitigationAssetForCurrentLocale:]";
        v29 = 2112;
        v30 = v6;
        v31 = 2112;
        v32 = v11;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s Could not find AssetMeta for current locale: %@, preinstalledAssetMeta: %@. No mitigation functionality", buf, 0x20u);
      }

      v22 = [NSError alloc];
      v16 = [v22 initWithDomain:CSErrorDomain code:1601 userInfo:0];
      (v5[2])(v5, 0, v16);
    }
  }

  else
  {
    v19 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "[CSAttSiriMitigationAssetHandler _getPreinstalledMitigationAssetForCurrentLocale:]";
      v29 = 2114;
      v30 = v8;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s Preinstalled model meta not found: %{public}@. No mitigation functionality.", buf, 0x16u);
    }

    v20 = [NSError alloc];
    v11 = [v20 initWithDomain:CSErrorDomain code:1601 userInfo:0];
    (v5[2])(v5, 0, v11);
  }
}

- (void)CSLanguageCodeUpdateMonitor:(id)a3 didReceiveLanguageCodeChanged:(id)a4
{
  [(CSAttSiriMitigationAssetHandler *)self setCachedAssetWithOverride:0, a4];
  uafAssetManager = self->_uafAssetManager;
  v6 = [(CSAttSiriMitigationAssetHandler *)self _siriLanguageCode];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004FE80;
  v7[3] = &unk_100252F10;
  v7[4] = self;
  [(CSUAFAssetManager *)uafAssetManager getInstalledAssetofType:6 forLocale:v6 completion:v7];
}

- (void)assetDownloadMonitorDelegate:(id)a3 assetType:(unint64_t)a4
{
  v6 = a3;
  if (a4 == 6)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100050098;
    block[3] = &unk_100253C20;
    block[4] = self;
    dispatch_async(queue, block);
  }

  else
  {
    v8 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v11 = "[CSAttSiriMitigationAssetHandler assetDownloadMonitorDelegate:assetType:]";
      v12 = 2048;
      v13 = a4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Ignore Trial asset update for type: %lu", buf, 0x16u);
    }
  }
}

- (void)_receivedNewAssetUpdate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 assetProvider] != 2)
  {
    v10 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[CSAttSiriMitigationAssetHandler _receivedNewAssetUpdate:]";
      v7 = "%s Ignore MA asset update";
      v8 = v10;
      v9 = 12;
      goto LABEL_7;
    }
  }

  else
  {
    [(CSAttSiriMitigationAssetHandler *)self setCachedAssetWithOverride:v5];
    [(CSAttSiriMitigationAssetHandler *)self notifyObservers:v5 endpointId:0];
    v6 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "[CSAttSiriMitigationAssetHandler _receivedNewAssetUpdate:]";
      v13 = 2112;
      v14 = v5;
      v7 = "%s Updated cache with new UAF asset %@";
      v8 = v6;
      v9 = 22;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v11, v9);
    }
  }
}

- (void)_getMitigationAssetWithEndpointId:(id)a3 completion:(id)a4
{
  v5 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100050538;
  v16[3] = &unk_100252198;
  v6 = v5;
  v17 = v6;
  v7 = objc_retainBlock(v16);
  v8 = v7;
  cachedAsset = self->_cachedAsset;
  if (cachedAsset)
  {
    (v7[2])(v7, cachedAsset, 0);
  }

  else
  {
    uafAssetManager = self->_uafAssetManager;
    if (uafAssetManager)
    {
      v11 = [(CSAttSiriMitigationAssetHandler *)self _siriLanguageCode];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100050550;
      v14[3] = &unk_100252878;
      v14[4] = self;
      v15 = v8;
      [(CSUAFAssetManager *)uafAssetManager getInstalledAssetofType:6 forLocale:v11 completion:v14];
    }

    else
    {
      v12 = [NSError alloc];
      v13 = [v12 initWithDomain:CSErrorDomain code:1601 userInfo:0];
      (v8)[2](v8, 0, v13);
    }
  }
}

- (void)getMitigationAssetWithEndpointId:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000506D0;
  block[3] = &unk_1002533A0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)setCachedAssetWithOverride:(id)a3
{
  v4 = a3;
  if (self->_overrideEnabled)
  {
    v5 = +[NSFileManager defaultManager];
    v6 = [v5 fileExistsAtPath:self->_overridePath];

    if (v6)
    {
      v7 = [(NSString *)self->_overridePath stringByDeletingLastPathComponent];
      v8 = [CSAsset assetForAssetType:6 resourcePath:v7 configVersion:@"override-asset" assetProvider:2];
      v9 = qword_10029E0C8;
      qword_10029E0C8 = v8;

      v10 = CSLogCategoryAsset;
      if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v20 = "[CSAttSiriMitigationAssetHandler setCachedAssetWithOverride:]";
        v21 = 2112;
        v22 = qword_10029E0C8;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Using override asset: %@", buf, 0x16u);
      }
    }
  }

  v11 = qword_10029E0C8;
  if (!qword_10029E0C8)
  {
    v11 = v4;
  }

  v12 = v11;
  cachedAsset = self->_cachedAsset;
  self->_cachedAsset = v12;

  onDeviceCompilationHandler = self->_onDeviceCompilationHandler;
  if (onDeviceCompilationHandler)
  {
    v15 = self->_cachedAsset;
    v18 = 0;
    [(CSOnDeviceCompilationHandler *)onDeviceCompilationHandler compileAndUpdateDeviceCachesWithAsset:v15 assetType:6 endpointId:0 errOut:&v18];
    v16 = v18;
    v17 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v20 = "[CSAttSiriMitigationAssetHandler setCachedAssetWithOverride:]";
      v21 = 2112;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s Compile override Mitigation asset to onDevice CacheIr with error: %@", buf, 0x16u);
    }
  }
}

- (void)notifyObservers:(id)a3 endpointId:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000509AC;
  block[3] = &unk_100253680;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100050B6C;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100050C10;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)start
{
  [(CSUAFDownloadMonitor *)self->_uafDownloadMonitor addObserver:self];
  [(CSLanguageCodeUpdateMonitor *)self->_languageCodeUpdateMonitor addObserver:self];
  v3 = +[CSVoiceTriggerEnabledMonitor sharedInstance];
  [v3 addObserver:self];
}

- (CSAttSiriMitigationAssetHandler)initWithAssetManager:(id)a3 withUAFAssetManager:(id)a4 withUAFDownloadMonitor:(id)a5 withLanguageCodeUpdateMonitor:(id)a6 withAssetOverrideFlag:(BOOL)a7 withOverrideAssetPath:(id)a8 disableOnDeviceCompilation:(BOOL)a9
{
  v10 = a7;
  v36 = a3;
  v35 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v37.receiver = self;
  v37.super_class = CSAttSiriMitigationAssetHandler;
  v19 = [(CSAttSiriMitigationAssetHandler *)&v37 init];
  if (v19)
  {
    v20 = dispatch_queue_create("CSAttSiriMitigationAssetHandler", 0);
    queue = v19->_queue;
    v19->_queue = v20;

    objc_storeStrong(&v19->_assetManager, a3);
    if (!v19->_assetManager)
    {
      v22 = [CSAssetManager sharedManager:v35];
      assetManager = v19->_assetManager;
      v19->_assetManager = v22;
    }

    objc_storeStrong(&v19->_uafDownloadMonitor, a5);
    if (!v19->_uafDownloadMonitor)
    {
      v24 = +[CSUAFDownloadMonitor sharedInstance];
      uafDownloadMonitor = v19->_uafDownloadMonitor;
      v19->_uafDownloadMonitor = v24;
    }

    objc_storeStrong(&v19->_uafAssetManager, a4);
    if (!v19->_uafAssetManager)
    {
      v26 = +[CSUAFAssetManager sharedInstance];
      uafAssetManager = v19->_uafAssetManager;
      v19->_uafAssetManager = v26;
    }

    v19->_overrideEnabled = v10;
    if (v10)
    {
      objc_storeStrong(&v19->_overridePath, a8);
    }

    objc_storeStrong(&v19->_languageCodeUpdateMonitor, a6);
    if (v19->_languageCodeUpdateMonitor)
    {
      if (a9)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v28 = +[CSLanguageCodeUpdateMonitor sharedInstance];
      languageCodeUpdateMonitor = v19->_languageCodeUpdateMonitor;
      v19->_languageCodeUpdateMonitor = v28;

      if (a9)
      {
LABEL_16:
        [(CSAttSiriMitigationAssetHandler *)v19 setCachedAssetWithOverride:0, v35];
        [(CSAttSiriMitigationAssetHandler *)v19 start];
        v32 = +[NSHashTable weakObjectsHashTable];
        observers = v19->_observers;
        v19->_observers = v32;

        goto LABEL_17;
      }
    }

    if (!v19->_onDeviceCompilationHandler)
    {
      v30 = +[CSOnDeviceCompilationHandler sharedHandler];
      onDeviceCompilationHandler = v19->_onDeviceCompilationHandler;
      v19->_onDeviceCompilationHandler = v30;
    }

    goto LABEL_16;
  }

LABEL_17:

  return v19;
}

- (CSAttSiriMitigationAssetHandler)initWithDisableOnDeviceCompilation
{
  v3 = +[CSFPreferences sharedPreferences];
  v4 = [v3 isMitigationAssetOverridingEnabled];
  v5 = +[CSFPreferences sharedPreferences];
  v6 = [v5 fakeMitigationAssetPath];
  LOBYTE(v9) = 1;
  v7 = [(CSAttSiriMitigationAssetHandler *)self initWithAssetManager:0 withUAFAssetManager:0 withUAFDownloadMonitor:0 withLanguageCodeUpdateMonitor:0 withAssetOverrideFlag:v4 withOverrideAssetPath:v6 disableOnDeviceCompilation:v9];

  return v7;
}

- (CSAttSiriMitigationAssetHandler)init
{
  v3 = +[CSFPreferences sharedPreferences];
  v4 = [v3 isMitigationAssetOverridingEnabled];
  v5 = +[CSFPreferences sharedPreferences];
  v6 = [v5 fakeMitigationAssetPath];
  v7 = [(CSAttSiriMitigationAssetHandler *)self initWithAssetManager:0 withUAFAssetManager:0 withUAFDownloadMonitor:0 withLanguageCodeUpdateMonitor:0 withAssetOverrideFlag:v4 withOverrideAssetPath:v6];

  return v7;
}

+ (id)sharedHandlerDisabledOnDeviceCompilation
{
  if (qword_10029E0C0 != -1)
  {
    dispatch_once(&qword_10029E0C0, &stru_10024F2F0);
  }

  v3 = qword_10029E0B8;

  return v3;
}

@end