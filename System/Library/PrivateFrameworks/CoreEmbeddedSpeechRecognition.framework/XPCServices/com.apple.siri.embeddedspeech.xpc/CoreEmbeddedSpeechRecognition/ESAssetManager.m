@interface ESAssetManager
+ (id)sharedInstance;
- (BOOL)_geoLMCompatibleWithMainAsset:(id)a3 geoAssetConfig:(id)a4;
- (BOOL)isTrialAssetDeliveryEnabled;
- (BOOL)purgeInstalledAssetsExceptLanguages:(id)a3 assetType:(unint64_t)a4 error:(id *)a5;
- (BOOL)validateHammerConfigFile:(id)a3;
- (ESAssetManager)init;
- (id)_installedGeoLMRegionMappingForLanguage:(id)a3;
- (id)geoLMRegionIdForLocation:(id)a3;
- (id)installationStatusForLanguagesIgnoringCache:(BOOL)a3 assetType:(unint64_t)a4 withDetailedStatus:(BOOL)a5 withError:(id *)a6;
- (id)installedGeoLMRegionSpecificAssetForLanguage:(id)a3 regionId:(id)a4 mainAssetConfig:(id)a5;
- (id)installedHammerConfigFileForLanguage:(id)a3;
- (id)installedQuasarModelPathForAssetConfig:(id)a3 error:(id *)a4;
- (void)_invalidateInstallationStatusCacheForAssetType:(unint64_t)a3;
- (void)cleanupUnusedSubscriptions;
- (void)dealloc;
- (void)handlePostInstallSubscriptions;
- (void)initializeGeoLMWithLanguage:(id)a3;
- (void)purgeUnusedGeoLMAssetsForLanguage:(id)a3;
- (void)registerNotifications;
@end

@implementation ESAssetManager

- (void)purgeUnusedGeoLMAssetsForLanguage:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000106DC;
  block[3] = &unk_100055618;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

- (BOOL)_geoLMCompatibleWithMainAsset:(id)a3 geoAssetConfig:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v9 = [[_EARSpeechModelInfo alloc] initWithConfig:v5];
    v10 = [[_EARSpeechModelInfo alloc] initWithConfig:v7];
    v11 = [v9 version];
    v12 = [v10 version];
    v13 = [v11 isEqualToString:v12];

    if (v13)
    {

      v8 = 1;
    }

    else
    {
      v14 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = [v9 version];
        v17 = [v10 version];
        v18 = 136316162;
        v19 = "[ESAssetManager _geoLMCompatibleWithMainAsset:geoAssetConfig:]";
        v20 = 2112;
        v21 = v16;
        v22 = 2112;
        v23 = v17;
        v24 = 2112;
        v25 = v5;
        v26 = 2112;
        v27 = v7;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s GeoLM: model-info.version doesn't match. mainASRModelInfo.version=%@ geoLMModelInfo.version=%@ mainAssetConfig=%@ geoAssetConfig=%@", &v18, 0x34u);
      }

      v8 = 0;
    }
  }

  return v8;
}

- (id)installedGeoLMRegionSpecificAssetForLanguage:(id)a3 regionId:(id)a4 mainAssetConfig:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [[SFEntitledAssetConfig alloc] initWithLanguage:v7 assetType:5];
  v11 = +[SFEntitledAssetManager sharedInstance];
  v12 = +[NSBundle mainBundle];
  v13 = [v12 bundleIdentifier];
  v14 = [v11 installedAssetWithConfig:v10 regionId:v8 shouldSubscribe:1 subscriberId:v13 expiration:0];

  if (v14 && [v14 length])
  {
    v15 = [SFEntitledAssetManager jsonFilenameForAssetType:5];
    v16 = [v14 stringByAppendingPathComponent:v15];
    v17 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
    {
      v24 = 136315651;
      v25 = "[ESAssetManager installedGeoLMRegionSpecificAssetForLanguage:regionId:mainAssetConfig:]";
      v26 = 2113;
      v27 = v8;
      v28 = 2114;
      v29 = v16;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s GeoLM: region specific [%{private}@] geo-config json file=%{public}@", &v24, 0x20u);
    }

    v18 = +[CESRGeoLMRegionIDCache sharedInstance];
    [v18 updateGeoLMAssetsInfoDictWithRegionId:v8 language:v7];

    v19 = +[ESAssetManager sharedInstance];
    v20 = [v19 _geoLMCompatibleWithMainAsset:v9 geoAssetConfig:v16];

    if (v20)
    {

      goto LABEL_13;
    }

    v22 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_FAULT))
    {
      v24 = 136315395;
      v25 = "[ESAssetManager installedGeoLMRegionSpecificAssetForLanguage:regionId:mainAssetConfig:]";
      v26 = 2113;
      v27 = v8;
      _os_log_fault_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "%s GeoLM: geoLM region specific [%{private}@] asset exists on device, but not compatible.", &v24, 0x16u);
    }
  }

  else
  {
    v21 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      v24 = 136315651;
      v25 = "[ESAssetManager installedGeoLMRegionSpecificAssetForLanguage:regionId:mainAssetConfig:]";
      v26 = 2114;
      v27 = v7;
      v28 = 2113;
      v29 = v8;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s GeoLM: region specific asset is not found for given language=%{public}@ regionId=%{private}@", &v24, 0x20u);
    }
  }

  v16 = 0;
LABEL_13:

  return v16;
}

- (id)geoLMRegionIdForLocation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v11 = AFSiriLogContextSpeech;
    if (!os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
    {
LABEL_8:
      v9 = 0;
      goto LABEL_9;
    }

    v14 = 136315138;
    v15 = "[ESAssetManager geoLMRegionIdForLocation:]";
    v12 = "%s GeoLM: location is nil.";
LABEL_13:
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, v12, &v14, 0xCu);
    goto LABEL_8;
  }

  [v4 coordinate];
  v7 = v6;
  [v5 coordinate];
  earGeoLMHelper = self->_earGeoLMHelper;
  if (!earGeoLMHelper)
  {
    v11 = AFSiriLogContextSpeech;
    if (!os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_8;
    }

    v14 = 136315138;
    v15 = "[ESAssetManager geoLMRegionIdForLocation:]";
    v12 = "%s GeoLM: _EARGeoLMHelper not initialized";
    goto LABEL_13;
  }

  v9 = [(_EARGeoLMHelper *)earGeoLMHelper regionIdForLatitude:v7 longitude:?];
  v10 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315394;
    v15 = "[ESAssetManager geoLMRegionIdForLocation:]";
    v16 = 2112;
    v17 = v9;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s GeoLM: For the given location, selected regionId=%@", &v14, 0x16u);
  }

LABEL_9:

  return v9;
}

- (void)initializeGeoLMWithLanguage:(id)a3
{
  if (a3)
  {
    v4 = [(ESAssetManager *)self _installedGeoLMRegionMappingForLanguage:?];
    if (v4)
    {
      v7 = v4;
      v5 = [[_EARGeoLMHelper alloc] initWithConfiguration:v4];
      earGeoLMHelper = self->_earGeoLMHelper;
      self->_earGeoLMHelper = v5;

      v4 = v7;
    }
  }
}

- (id)_installedGeoLMRegionMappingForLanguage:(id)a3
{
  v3 = a3;
  v4 = [[SFEntitledAssetConfig alloc] initWithLanguage:v3 assetType:4];
  v5 = +[SFEntitledAssetManager sharedInstance];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 bundleIdentifier];
  v8 = [v5 installedAssetWithConfig:v4 regionId:0 shouldSubscribe:1 subscriberId:v7 expiration:0];

  if (v8 && [v8 length])
  {
    v9 = [SFEntitledAssetManager jsonFilenameForAssetType:4];
    v10 = [v8 stringByAppendingPathComponent:v9];
    v11 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
    {
      v14 = 136315394;
      v15 = "[ESAssetManager _installedGeoLMRegionMappingForLanguage:]";
      v16 = 2112;
      v17 = v10;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s GeoLM: region mapping json file=%@", &v14, 0x16u);
    }
  }

  else
  {
    v12 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "[ESAssetManager _installedGeoLMRegionMappingForLanguage:]";
      v16 = 2112;
      v17 = v3;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s GeoLM: region mapping json file is nil Or there is no regionMapping for given language=%@", &v14, 0x16u);
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)validateHammerConfigFile:(id)a3
{
  v3 = a3;
  v4 = [[_EARSpeechModelInfo alloc] initWithConfig:v3];
  v5 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[ESAssetManager validateHammerConfigFile:]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Hammer model info=%@", &v7, 0x16u);
  }

  return 1;
}

- (id)installedHammerConfigFileForLanguage:(id)a3
{
  v3 = a3;
  v4 = [[SFEntitledAssetConfig alloc] initWithLanguage:v3 assetType:1];

  v5 = +[SFEntitledAssetManager sharedInstance];
  v6 = [v5 installedAssetWithConfig:v4 regionId:0 shouldSubscribe:0 subscriberId:0 expiration:0];

  if (v6 && [v6 length])
  {
    v7 = [SFEntitledAssetManager jsonFilenameForAssetType:1];
    v8 = [v6 stringByAppendingPathComponent:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isTrialAssetDeliveryEnabled
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.internal.ck"];
  v3 = [v2 objectForKey:@"disableTrialAssetDelivery"];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "[ESAssetManager isTrialAssetDeliveryEnabled]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Trial asset delivery is explicitly disabled!", &v9, 0xCu);
    }

    v6 = 0;
  }

  else
  {
    v7 = [v2 objectForKey:@"enableTrialAssetDelivery"];
    if ([v7 BOOLValue])
    {
      v6 = 1;
    }

    else
    {
      v6 = +[AFFeatureFlags isSiriXEnabled];
    }
  }

  return v6;
}

- (void)cleanupUnusedSubscriptions
{
  v2 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[ESAssetManager cleanupUnusedSubscriptions]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Cleaning up unused subscriptions.", &v8, 0xCu);
  }

  v3 = +[NSMutableSet set];
  v4 = +[AFPreferences sharedPreferences];
  if ([v4 dictationIsEnabled])
  {
    v5 = [v4 activeDictationLanguages];
    [v3 addObjectsFromArray:v5];
  }

  v6 = +[SFEntitledAssetManager subscriberIdForDictationAssets];
  v7 = [SFEntitledAssetManager unsubscribeFromAssetsWithAssetType:3 exceptLanguages:v3 subscriberId:v6];
}

- (void)handlePostInstallSubscriptions
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 dictationIsEnabled];

  if (v3)
  {
    v4 = +[SFEntitledAssetManager sharedInstance];
    v5 = [v4 installationStatusForLanguagesWithAssetType:3];

    [v5 enumerateKeysAndObjectsUsingBlock:&stru_100054EE8];
  }
}

- (BOOL)purgeInstalledAssetsExceptLanguages:(id)a3 assetType:(unint64_t)a4 error:(id *)a5
{
  v7 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000118AC;
  block[3] = &unk_100055548;
  v13 = self;
  v14 = a4;
  v12 = v7;
  v9 = v7;
  dispatch_async(queue, block);

  return 1;
}

- (id)installedQuasarModelPathForAssetConfig:(id)a3 error:(id *)a4
{
  v4 = [(ESAssetManager *)self installedModelInfoForAssetConfig:a3 error:a4];
  v5 = [v4 objectForKey:@"quasarModelPath"];

  return v5;
}

- (void)_invalidateInstallationStatusCacheForAssetType:(unint64_t)a3
{
  dispatch_assert_queue_V2(self->_queue);
  v5 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "[ESAssetManager _invalidateInstallationStatusCacheForAssetType:]";
    v13 = 2048;
    v14 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Invalidating installation status cache for %lu", &v11, 0x16u);
  }

  if (!-[ESAssetManager isTrialAssetDeliveryEnabled](self, "isTrialAssetDeliveryEnabled") || (v6 = objc_alloc_init(SFEntitledAssetManager), [v6 installationStatusForLanguagesWithAssetType:a3], v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    v8 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "[ESAssetManager _invalidateInstallationStatusCacheForAssetType:]";
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Language installation status query failed.", &v11, 0xCu);
    }

    v7 = 0;
  }

  languageInstallationCache = self->_languageInstallationCache;
  v10 = [NSNumber numberWithUnsignedInteger:a3];
  [(NSMutableDictionary *)languageInstallationCache setObject:v7 forKeyedSubscript:v10];
}

- (id)installationStatusForLanguagesIgnoringCache:(BOOL)a3 assetType:(unint64_t)a4 withDetailedStatus:(BOOL)a5 withError:(id *)a6
{
  v8 = a3;
  v10 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v11 = @"NO";
    if (v8)
    {
      v11 = @"YES";
    }

    *buf = 136315394;
    *&buf[4] = "[ESAssetManager installationStatusForLanguagesIgnoringCache:assetType:withDetailedStatus:withError:]";
    *&buf[12] = 2112;
    *&buf[14] = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Installation status for languages (ignoring cache: %@)", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v19 = sub_10001229C;
  v20 = sub_1000122AC;
  v21 = 0;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000122B4;
  v15[3] = &unk_100054EA8;
  v15[4] = self;
  v15[5] = buf;
  v15[6] = a4;
  v16 = v8;
  v17 = a5;
  dispatch_sync(queue, v15);
  v13 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  return v13;
}

- (void)dealloc
{
  [(NSMutableDictionary *)self->_tokenForAssetUpdateNotification enumerateKeysAndObjectsUsingBlock:&stru_100054E80];
  v3.receiver = self;
  v3.super_class = ESAssetManager;
  [(ESAssetManager *)&v3 dealloc];
}

- (void)registerNotifications
{
  objc_initWeak(&location, self);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100012884;
  v21[3] = &unk_100054E40;
  objc_copyWeak(&v22, &location);
  v3 = objc_retainBlock(v21);
  v31[0] = @"com.apple.trial.NamespaceUpdate.SIRI_UNDERSTANDING_ASR_ASSISTANT";
  v31[1] = @"com.apple.siri.uaf.com.apple.siri.understanding";
  v31[2] = @"com.apple.MobileAsset.AutoAssetNotification^com.apple.MobileAsset.MAAutoAsset^STARTUP_ACTIVATED";
  [NSArray arrayWithObjects:v31 count:3];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v4 = v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v30 count:16];
  if (v5)
  {
    v7 = *v18;
    *&v6 = 136315650;
    v15 = v6;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        out_token = 0;
        v10 = v9;
        v11 = notify_register_dispatch([v9 UTF8String], &out_token, self->_queue, v3);
        if (v11)
        {
          v12 = AFSiriLogContextSpeech;
          if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
          {
            *buf = v15;
            v25 = "[ESAssetManager registerNotifications]";
            v26 = 2112;
            v27 = v9;
            v28 = 1024;
            v29 = v11;
            _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Failed to register for %@ update notifications: %u", buf, 0x1Cu);
          }

          out_token = -1;
          v13 = -1;
        }

        else
        {
          v13 = out_token;
        }

        v14 = [NSNumber numberWithInteger:v13, v15];
        [(NSMutableDictionary *)self->_tokenForAssetUpdateNotification setObject:v14 forKeyedSubscript:v9];
      }

      v5 = [v4 countByEnumeratingWithState:&v17 objects:v30 count:16];
    }

    while (v5);
  }

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (ESAssetManager)init
{
  v14.receiver = self;
  v14.super_class = ESAssetManager;
  v2 = [(ESAssetManager *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.siri.embeddedspeech.ESAssetManager", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = +[NSMutableDictionary dictionary];
    tokenForAssetUpdateNotification = v2->_tokenForAssetUpdateNotification;
    v2->_tokenForAssetUpdateNotification = v5;

    [(ESAssetManager *)v2 registerNotifications];
    v7 = +[NSMutableDictionary dictionary];
    recognizerAssetPathsInUse = v2->_recognizerAssetPathsInUse;
    v2->_recognizerAssetPathsInUse = v7;

    v9 = +[NSMutableDictionary dictionary];
    profileAssetPathsInUse = v2->_profileAssetPathsInUse;
    v2->_profileAssetPathsInUse = v9;

    v11 = +[NSMutableDictionary dictionary];
    languageInstallationCache = v2->_languageInstallationCache;
    v2->_languageInstallationCache = v11;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_1000615F8 != -1)
  {
    dispatch_once(&qword_1000615F8, &stru_100054E18);
  }

  v3 = qword_1000615F0;

  return v3;
}

@end