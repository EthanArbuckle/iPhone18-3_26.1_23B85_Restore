@interface CSEndpointerAssetManager
+ (id)_getFakeEndpointAsset;
+ (id)_getOEPAssetWithLanguage:(id)a3;
+ (id)sharedManager;
- (BOOL)_isOSDIncludedInAsset:(id)a3;
- (CSEndpointerAssetManager)init;
- (id)_fetchEndpointMobileAssetWithLanguage:(id)a3;
- (id)_getCurrentHEPAsset;
- (id)_getModelPathFromInstallationStatusString:(id)a3;
- (id)getCurrentEndpointerAsset;
- (id)getCurrentOSDAsset;
- (void)CSAssetManagerDidDownloadNewAsset:(id)a3;
- (void)CSLanguageCodeUpdateMonitor:(id)a3 didReceiveLanguageCodeChanged:(id)a4;
- (void)_notifyAssetsUpdate;
- (void)_notifyAssetsUpdateForObserver:(id)a3;
- (void)_registerForAssetUpdateNotifications;
- (void)_updateAssetWithCurrentLanguageForAssetType:(unint64_t)a3;
- (void)_updateAssetWithLanguage:(id)a3 assetType:(unint64_t)a4;
- (void)_updateEndpointerAssetsIfNeeded;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)removeObserver:(id)a3;
@end

@implementation CSEndpointerAssetManager

- (BOOL)_isOSDIncludedInAsset:(id)a3
{
  v3 = [a3 resourcePath];
  v4 = [v3 stringByAppendingPathComponent:@"SPG.nnet"];

  v5 = +[NSFileManager defaultManager];
  v6 = [v5 fileExistsAtPath:v4];

  return v6;
}

- (id)_getModelPathFromInstallationStatusString:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (v4)
  {
    v5 = [v4 componentsSeparatedByString:@"ModelInfo="];
    if ([v5 count] == 2)
    {
      v6 = [v5 objectAtIndexedSubscript:1];
      v7 = [v6 componentsSeparatedByString:@":"];

      if ([v7 count] >= 2)
      {
        v8 = [v7 objectAtIndexedSubscript:0];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_fetchEndpointMobileAssetWithLanguage:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = +[CSFPreferences sharedPreferences];
  v6 = [v5 isEndpointAssetOverridingEnabled];

  if (v6)
  {
    v7 = [objc_opt_class() _getFakeEndpointAsset];
  }

  else
  {
    v8 = +[NSDate date];
    v9 = +[CSAssetManager sharedManager];
    v7 = [v9 assetOfType:1 language:v4];

    v10 = +[NSDate date];
    v11 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      [v10 timeIntervalSinceDate:v8];
      v15 = 136315394;
      v16 = "[CSEndpointerAssetManager _fetchEndpointMobileAssetWithLanguage:]";
      v17 = 2050;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s Elapsed time to get HEP mobile assets: %{public}f seconds", &v15, 0x16u);
    }
  }

  return v7;
}

- (void)_notifyAssetsUpdateForObserver:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_currentOEPAsset && [(CSEndpointerAssetManager *)self _isOSDIncludedInAsset:?])
  {
    v5 = self->_currentOEPAsset;
    v6 = self->_currentOEPAsset;
  }

  else
  {
    v5 = self->_currentHEPAsset;
    v6 = self->_currentHEPAsset;
    if (v5)
    {
      currentOEPAsset = self->_currentOEPAsset;
      if (currentOEPAsset)
      {
        v8 = currentOEPAsset;

        v5 = v8;
      }
    }
  }

  v9 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315906;
    v11 = "[CSEndpointerAssetManager _notifyAssetsUpdateForObserver:]";
    v12 = 2114;
    v13 = v4;
    v14 = 2114;
    v15 = v5;
    v16 = 2114;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s observer: %{public}@, endpointAsset: %{public}@, osdAsset: %{public}@", &v10, 0x2Au);
  }

  [v4 endpointerAssetManagerDidUpdateAsset:v5];
  [v4 endpointerAssetManagerDidUpdateOSDAsset:v6];
}

- (void)_notifyAssetsUpdate
{
  dispatch_assert_queue_V2(self->_queue);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_observers;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(CSEndpointerAssetManager *)self _notifyAssetsUpdateForObserver:*(*(&v8 + 1) + 8 * v7), v8];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_updateAssetWithLanguage:(id)a3 assetType:(unint64_t)a4
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v7 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"Invalid CSEndpointerAssetType";
    if (a4 == 1)
    {
      v8 = @"HEP";
    }

    if (!a4)
    {
      v8 = @"OEP";
    }

    v9 = v8;
    v15 = 136315650;
    v16 = "[CSEndpointerAssetManager _updateAssetWithLanguage:assetType:]";
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v6;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Updating %@ asset with language: %@", &v15, 0x20u);
  }

  if (a4 == 1)
  {
    v11 = [(CSEndpointerAssetManager *)self _fetchEndpointMobileAssetWithLanguage:v6];
    v12 = 16;
    goto LABEL_11;
  }

  if (!a4)
  {
    v11 = [objc_opt_class() _getOEPAssetWithLanguage:v6];
    v12 = 24;
LABEL_11:
    v13 = *(&self->super.isa + v12);
    *(&self->super.isa + v12) = v11;

    [(CSEndpointerAssetManager *)self _notifyAssetsUpdate];
    goto LABEL_14;
  }

  v14 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_ERROR))
  {
    v15 = 136315394;
    v16 = "[CSEndpointerAssetManager _updateAssetWithLanguage:assetType:]";
    v17 = 2048;
    v18 = a4;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Invalid CSEndpointerAssetType: %lu", &v15, 0x16u);
  }

LABEL_14:
}

- (void)_updateAssetWithCurrentLanguageForAssetType:(unint64_t)a3
{
  dispatch_assert_queue_V2(self->_queue);
  v5 = [CSUtils getSiriLanguageWithFallback:@"en-US"];
  [(CSEndpointerAssetManager *)self _updateAssetWithLanguage:v5 assetType:a3];
}

- (void)_updateEndpointerAssetsIfNeeded
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSEndpointerAssetManager _updateEndpointerAssetsIfNeeded]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Updating endpointer assets if needed...", &v4, 0xCu);
  }

  [(CSEndpointerAssetManager *)self _updateAssetWithCurrentLanguageForAssetType:1];
  [(CSEndpointerAssetManager *)self _updateAssetWithCurrentLanguageForAssetType:0];
}

- (id)_getCurrentHEPAsset
{
  dispatch_assert_queue_V2(self->_queue);
  currentHEPAsset = self->_currentHEPAsset;
  if (currentHEPAsset)
  {
LABEL_6:
    v12 = currentHEPAsset;
    goto LABEL_7;
  }

  v4 = [CSUtils getSiriLanguageWithFallback:@"en-US"];
  v5 = [(CSEndpointerAssetManager *)self _fetchEndpointMobileAssetWithLanguage:v4];
  v6 = self->_currentHEPAsset;
  self->_currentHEPAsset = v5;

  v7 = self->_currentHEPAsset;
  v8 = CSLogCategoryEP;
  v9 = os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = v8;
      v11 = [(CSAsset *)v7 path];
      v14 = 136315650;
      v15 = "[CSEndpointerAssetManager _getCurrentHEPAsset]";
      v16 = 2114;
      v17 = v7;
      v18 = 2114;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s HEP Asset: %{public}@, path: %{public}@", &v14, 0x20u);
    }

    [(CSEndpointerAssetManager *)self _notifyAssetsUpdate];
    currentHEPAsset = self->_currentHEPAsset;
    goto LABEL_6;
  }

  if (v9)
  {
    v14 = 136315138;
    v15 = "[CSEndpointerAssetManager _getCurrentHEPAsset]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Failed to get HEP asset", &v14, 0xCu);
  }

  v12 = 0;
LABEL_7:

  return v12;
}

- (void)_registerForAssetUpdateNotifications
{
  v3 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v33 = "[CSEndpointerAssetManager _registerForAssetUpdateNotifications]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Registering for asset update notifications...", buf, 0xCu);
  }

  objc_initWeak(&location, self);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000C1880;
  v29[3] = &unk_100250A30;
  objc_copyWeak(&v30, &location);
  v4 = objc_retainBlock(v29);
  v5 = [NSMutableDictionary dictionaryWithCapacity:2];
  tokenForAssetUpdateNotification = self->_tokenForAssetUpdateNotification;
  self->_tokenForAssetUpdateNotification = v5;

  v39[0] = @"com.apple.siri.uaf.com.apple.siri.understanding";
  v39[1] = @"com.apple.MobileAsset.AutoAssetNotification^com.apple.MobileAsset.MAAutoAsset^STARTUP_ACTIVATED";
  [NSArray arrayWithObjects:v39 count:2];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v7 = v26 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v38 count:16];
  if (v8)
  {
    v10 = *v26;
    *&v9 = 136315650;
    v21 = v9;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        out_token = 0;
        v13 = v12;
        v14 = notify_register_dispatch([v12 UTF8String], &out_token, self->_queue, v4);
        if (v14)
        {
          v15 = CSLogCategoryEP;
          if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v21;
            v33 = "[CSEndpointerAssetManager _registerForAssetUpdateNotifications]";
            v34 = 2112;
            v35 = v12;
            v36 = 1024;
            v37 = v14;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s Failed to register for notification (%@), status: %u", buf, 0x1Cu);
          }

          out_token = -1;
          v16 = -1;
        }

        else
        {
          v16 = out_token;
        }

        v17 = self->_tokenForAssetUpdateNotification;
        v18 = [NSNumber numberWithInteger:v16, v21];
        [(NSMutableDictionary *)v17 setObject:v18 forKey:v12];
      }

      v8 = [v7 countByEnumeratingWithState:&v25 objects:v38 count:16];
    }

    while (v8);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C18EC;
  block[3] = &unk_100252CA8;
  v23 = v4;
  v20 = v4;
  dispatch_async_and_wait(queue, block);

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
}

- (void)CSAssetManagerDidDownloadNewAsset:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C1974;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)CSLanguageCodeUpdateMonitor:(id)a3 didReceiveLanguageCodeChanged:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C1AC4;
  v8[3] = &unk_100253C48;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)dealloc
{
  [(NSMutableDictionary *)self->_tokenForAssetUpdateNotification enumerateKeysAndObjectsUsingBlock:&stru_100250A08];
  v3.receiver = self;
  v3.super_class = CSEndpointerAssetManager;
  [(CSEndpointerAssetManager *)&v3 dealloc];
}

- (id)getCurrentEndpointerAsset
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000C1DD4;
  v10 = sub_1000C1DE4;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000C1DEC;
  v5[3] = &unk_100253BD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)getCurrentOSDAsset
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000C1DD4;
  v10 = sub_1000C1DE4;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000C1F8C;
  v5[3] = &unk_100253BD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C20A4;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C2148;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (CSEndpointerAssetManager)init
{
  v13.receiver = self;
  v13.super_class = CSEndpointerAssetManager;
  v2 = [(CSEndpointerAssetManager *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSEndpointerAssetManager queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = +[NSHashTable weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v5;

    [(CSEndpointerAssetManager *)v2 _registerForAssetUpdateNotifications];
    v7 = +[CSLanguageCodeUpdateMonitor sharedInstance];
    [v7 addObserver:v2];

    v8 = objc_alloc_init(CSAssetDownloadingOption);
    [(CSAssetDownloadingOption *)v8 setAllowEndpointAssetDownloading:1];
    v9 = +[CSAssetManager sharedManager];
    [v9 setAssetDownloadingOption:v8];

    v10 = +[CSAssetManager sharedManager];
    [v10 addObserver:v2 forAssetType:1];

    v11 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v15 = "[CSEndpointerAssetManager init]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
    }
  }

  return v2;
}

+ (id)_getFakeEndpointAsset
{
  v2 = +[CSFPreferences sharedPreferences];
  v3 = [v2 fakeEndpointAssetPath];

  v4 = [CSAsset assetForAssetType:1 resourcePath:v3 configVersion:@"0.0" assetProvider:1];
  v5 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "+[CSEndpointerAssetManager _getFakeEndpointAsset]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Fake endpoint asset: %@", &v7, 0x16u);
  }

  return v4;
}

+ (id)_getOEPAssetWithLanguage:(id)a3
{
  v4 = a3;
  v5 = +[CSFPreferences sharedPreferences];
  v6 = [v5 isEndpointAssetBypassTrialEnabled];

  if (v6)
  {
    v7 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v35 = "+[CSEndpointerAssetManager _getOEPAssetWithLanguage:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Bypass Trial Asset", buf, 0xCu);
    }

    v8 = 0;
  }

  else
  {
    v9 = +[CSFPreferences sharedPreferences];
    v10 = [v9 isEndpointAssetOverridingEnabled];

    if (v10)
    {
      v8 = [a1 _getFakeEndpointAsset];
    }

    else
    {
      v11 = +[NSDate date];
      v12 = [[SFEntitledAssetConfig alloc] initWithAssetType:3 language:v4 regionId:0];
      v13 = +[SFEntitledAssetManager sharedInstance];
      v14 = [v13 installedAssetWithConfig:v12];

      if (v14)
      {
        v15 = [v14 stringByAppendingPathComponent:@"OEP"];
        v16 = +[NSFileManager defaultManager];
        v17 = [v16 fileExistsAtPath:v15];

        if (v17)
        {
          v18 = [SFModelTaskSet modelInfoVersionWithAssetPath:v14 taskHint:0];
          v19 = +[SFEntitledAssetManager sharedInstance];
          v20 = [v19 assetVersionForConfig:v12];

          v21 = CSLogCategoryEP;
          if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
          {
            v22 = v21;
            v23 = [v12 language];
            *buf = 136316162;
            v35 = "+[CSEndpointerAssetManager _getOEPAssetWithLanguage:]";
            v36 = 2112;
            v37 = v23;
            v38 = 2114;
            v39 = v15;
            v40 = 2114;
            v41 = v18;
            v42 = 2114;
            v43 = v20;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s Found OEP asset for %@ at path: %{public}@ with model version: %{public}@, UAF asset version: %{public}@", buf, 0x34u);
          }

          v24 = [CSAsset assetForAssetType:1 resourcePath:v15 configVersion:v18 assetProvider:1 assetVariant:0 identity:0 assistantLanguageCode:0 uafAssetVersion:v20];
          v25 = +[NSDate date];
          v26 = CSLogCategoryEP;
          if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
          {
            v27 = v26;
            [v25 timeIntervalSinceDate:v11];
            *buf = 136315394;
            v35 = "+[CSEndpointerAssetManager _getOEPAssetWithLanguage:]";
            v36 = 2050;
            v37 = v28;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%s Elapsed time to get OEP assets: %{public}f seconds", buf, 0x16u);
          }

          v8 = v24;
        }

        else
        {
          v30 = CSLogCategoryEP;
          if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v35 = "+[CSEndpointerAssetManager _getOEPAssetWithLanguage:]";
            v36 = 2114;
            v37 = v15;
            _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%s File does not exist: %{public}@", buf, 0x16u);
          }

          v8 = 0;
        }
      }

      else
      {
        v29 = CSLogCategoryEP;
        if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_ERROR))
        {
          v32 = v29;
          v33 = [v12 language];
          *buf = 136315394;
          v35 = "+[CSEndpointerAssetManager _getOEPAssetWithLanguage:]";
          v36 = 2112;
          v37 = v33;
          _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%s No OEP asset for %@ was found.", buf, 0x16u);
        }

        v8 = 0;
      }
    }
  }

  return v8;
}

+ (id)sharedManager
{
  if (qword_10029E288 != -1)
  {
    dispatch_once(&qword_10029E288, &stru_1002509C8);
  }

  v3 = qword_10029E280;

  return v3;
}

@end