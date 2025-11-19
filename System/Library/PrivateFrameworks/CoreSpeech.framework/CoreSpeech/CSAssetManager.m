@interface CSAssetManager
+ (id)sharedManager;
- (BOOL)_canFetchRemoteAsset:(unint64_t)a3;
- (CSAssetManager)initWithDownloadOption:(id)a3;
- (id)allInstalledAssetsOfType:(unint64_t)a3 language:(id)a4;
- (id)assetForCurrentLanguageOfType:(unint64_t)a3;
- (id)assetOfType:(unint64_t)a3 language:(id)a4;
- (id)installedAssetForCurrentLanguageOfType:(unint64_t)a3;
- (id)installedAssetOfType:(unint64_t)a3 language:(id)a4;
- (id)installedCompactAssetOfType:(unint64_t)a3 language:(id)a4;
- (void)CSAdBlockerMetaUpdateMonitor:(id)a3 didReceiveNewAdBlockerAssetMetaData:(BOOL)a4;
- (void)CSAssetController:(id)a3 didDownloadNewAssetForType:(unint64_t)a4;
- (void)CSLanguageCodeUpdateMonitor:(id)a3 didReceiveLanguageCodeChanged:(id)a4;
- (void)CSSpeakerRecognitionAssetMetaUpdateMonitor:(id)a3 didReceiveNewSpeakerRecognitionAssetMetaData:(BOOL)a4;
- (void)CSSpeechEndpointAssetMetaUpdateMonitor:(id)a3 didReceiveNewSpeechEndpointAssetMetaData:(BOOL)a4;
- (void)CSVoiceTriggerAssetMetaUpdateMonitor:(id)a3 didReceiveNewVoiceTriggerAssetMetaData:(BOOL)a4;
- (void)_createPeriodicalDownloadTimer;
- (void)_fetchRemoteMetaData;
- (void)_startPeriodicalDownload;
- (void)_stopPeriodicalDownload;
- (void)addObserver:(id)a3 forAssetType:(unint64_t)a4;
- (void)assetForCurrentLanguageOfType:(unint64_t)a3 completion:(id)a4;
- (void)assetOfType:(unint64_t)a3 language:(id)a4 compatibilityVersion:(unint64_t)a5 completion:(id)a6;
- (void)assetOfType:(unint64_t)a3 language:(id)a4 completion:(id)a5;
- (void)assetOfType:(unint64_t)a3 providerType:(unint64_t)a4 language:(id)a5 completion:(id)a6;
- (void)installedAssetForCurrentLanguageOfType:(unint64_t)a3 completion:(id)a4;
- (void)installedAssetOfType:(unint64_t)a3 language:(id)a4 completion:(id)a5;
- (void)removeObserver:(id)a3 forAssetType:(unint64_t)a4;
- (void)setAssetDownloadingOption:(id)a3;
@end

@implementation CSAssetManager

- (void)_stopPeriodicalDownload
{
  v3 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSAssetManager _stopPeriodicalDownload]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v5, 0xCu);
  }

  if (self->_downloadTimerCount <= 0)
  {
    v4 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSAssetManager _stopPeriodicalDownload]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s No periodical downloading is scheduled, ignore request.", &v5, 0xCu);
    }
  }

  else
  {
    dispatch_suspend(self->_downloadTimer);
    --self->_downloadTimerCount;
  }
}

- (void)_startPeriodicalDownload
{
  v3 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSAssetManager _startPeriodicalDownload]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v5, 0xCu);
  }

  if (self->_downloadTimerCount < 1)
  {
    dispatch_resume(self->_downloadTimer);
    ++self->_downloadTimerCount;
  }

  else
  {
    v4 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSAssetManager _startPeriodicalDownload]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Periodical downloading is already scheduled, ignore request.", &v5, 0xCu);
    }
  }
}

- (void)_createPeriodicalDownloadTimer
{
  v3 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[CSAssetManager _createPeriodicalDownloadTimer]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  self->_downloadTimerCount = 0;
  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
  downloadTimer = self->_downloadTimer;
  self->_downloadTimer = v4;

  v6 = dispatch_time(0, 0);
  dispatch_source_set_timer(self->_downloadTimer, v6, 0x4E9491800000uLL, 0);
  objc_initWeak(buf, self);
  v7 = self->_downloadTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100105D54;
  handler[3] = &unk_100253510;
  objc_copyWeak(&v9, buf);
  dispatch_source_set_event_handler(v7, handler);
  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

- (void)CSAssetController:(id)a3 didDownloadNewAssetForType:(unint64_t)a4
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100105E88;
  v5[3] = &unk_100253C98;
  v5[4] = self;
  v5[5] = a4;
  dispatch_async(queue, v5);
}

- (void)CSSpeechEndpointAssetMetaUpdateMonitor:(id)a3 didReceiveNewSpeechEndpointAssetMetaData:(BOOL)a4
{
  if (a4)
  {
    v5 = dispatch_get_global_queue(-32768, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001060A4;
    block[3] = &unk_100253C20;
    block[4] = self;
    dispatch_async(v5, block);
  }
}

- (void)CSSpeakerRecognitionAssetMetaUpdateMonitor:(id)a3 didReceiveNewSpeakerRecognitionAssetMetaData:(BOOL)a4
{
  if (a4)
  {
    v5 = dispatch_get_global_queue(-32768, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10010614C;
    block[3] = &unk_100253C20;
    block[4] = self;
    dispatch_async(v5, block);
  }
}

- (void)CSAdBlockerMetaUpdateMonitor:(id)a3 didReceiveNewAdBlockerAssetMetaData:(BOOL)a4
{
  if (a4)
  {
    v5 = dispatch_get_global_queue(-32768, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001061F4;
    block[3] = &unk_100253C20;
    block[4] = self;
    dispatch_async(v5, block);
  }
}

- (void)CSVoiceTriggerAssetMetaUpdateMonitor:(id)a3 didReceiveNewVoiceTriggerAssetMetaData:(BOOL)a4
{
  if (a4)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100106280;
    block[3] = &unk_100253C20;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)removeObserver:(id)a3 forAssetType:(unint64_t)a4
{
  v6 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001063DC;
  block[3] = &unk_1002533C8;
  v10 = v6;
  v11 = a4;
  block[4] = self;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)addObserver:(id)a3 forAssetType:(unint64_t)a4
{
  v6 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100106558;
  block[3] = &unk_1002533C8;
  v10 = v6;
  v11 = a4;
  block[4] = self;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)CSLanguageCodeUpdateMonitor:(id)a3 didReceiveLanguageCodeChanged:(id)a4
{
  v6 = a4;
  objc_storeStrong(&self->_currentLanguageCode, a4);
  v7 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    currentLanguageCode = self->_currentLanguageCode;
    v9 = 136315394;
    v10 = "[CSAssetManager CSLanguageCodeUpdateMonitor:didReceiveLanguageCodeChanged:]";
    v11 = 2114;
    v12 = currentLanguageCode;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s _currentLanguageCode changed: %{public}@", &v9, 0x16u);
  }
}

- (BOOL)_canFetchRemoteAsset:(unint64_t)a3
{
  v3 = a3;
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        downloadingOption = self->_downloadingOption;

        return [(CSAssetDownloadingOption *)downloadingOption allowEndpointAssetDownloading];
      }

      else
      {
        if (a3 != 2)
        {
LABEL_21:
          v9 = CSLogCategoryAsset;
          if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_ERROR))
          {
            v13 = 136315394;
            v14 = "[CSAssetManager _canFetchRemoteAsset:]";
            v15 = 1026;
            v16 = v3;
            _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Undefined assetType : %{public}u", &v13, 0x12u);
          }

          return 0;
        }

        v6 = self->_downloadingOption;

        return [(CSAssetDownloadingOption *)v6 allowLanguageDetectorAssetDownloading];
      }
    }

    else
    {
      v8 = self->_downloadingOption;

      return [(CSAssetDownloadingOption *)v8 allowVoiceTriggerAssetDownloading];
    }
  }

  else
  {
    if (a3 <= 4)
    {
      if (a3 == 3)
      {
        v10 = self->_downloadingOption;

        return [(CSAssetDownloadingOption *)v10 allowSpeakerRecognitionAssetDownloading];
      }

      else
      {
        v4 = self->_downloadingOption;

        return [(CSAssetDownloadingOption *)v4 allowAdBlockerAssetDownloading];
      }
    }

    if (a3 != 5)
    {
      if (a3 == 7)
      {
        v7 = self->_downloadingOption;

        return [(CSAssetDownloadingOption *)v7 allowGibraltarVoiceTriggerAssetDownloading];
      }

      goto LABEL_21;
    }

    v11 = self->_downloadingOption;

    return [(CSAssetDownloadingOption *)v11 allowVoiceTriggerAccessoryAssetDownloading];
  }
}

- (void)_fetchRemoteMetaData
{
  if ([(CSAssetManager *)self _canFetchRemoteAsset:0])
  {
    v3 = +[CSAssetControllerFactory defaultController];
    [v3 fetchRemoteMetaOfType:0];
  }

  else
  {
    v4 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "[CSAssetManager _fetchRemoteMetaData]";
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Cannot fetch VoiceTrigger asset meta data", &v11, 0xCu);
    }
  }

  if (+[CSUtils supportHybridEndpointer]&& [(CSAssetManager *)self _canFetchRemoteAsset:1])
  {
    v5 = +[CSAssetControllerFactory defaultController];
    [v5 fetchRemoteMetaOfType:1];
  }

  if (+[CSUtils supportLanguageDetector]&& [(CSAssetManager *)self _canFetchRemoteAsset:2])
  {
    v6 = +[CSAssetControllerFactory defaultController];
    [v6 fetchRemoteMetaOfType:2];
  }

  if (+[CSUtils supportAdBlocker]&& [(CSAssetManager *)self _canFetchRemoteAsset:4])
  {
    v7 = +[CSAssetControllerFactory defaultController];
    [v7 fetchRemoteMetaOfType:4];
  }

  if (+[CSUtils supportsSpeakerRecognitionAssets]&& [(CSAssetManager *)self _canFetchRemoteAsset:3])
  {
    v8 = +[CSAssetControllerFactory defaultController];
    [v8 fetchRemoteMetaOfType:3];
  }

  if ([(CSAssetManager *)self _canFetchRemoteAsset:5])
  {
    v9 = +[CSAssetControllerFactory defaultController];
    [v9 fetchRemoteMetaOfType:5];
  }

  if ([(CSAssetManager *)self _canFetchRemoteAsset:7])
  {
    v10 = +[CSAssetControllerFactory defaultController];
    [v10 fetchRemoteMetaOfType:7];
  }
}

- (void)assetOfType:(unint64_t)a3 providerType:(unint64_t)a4 language:(id)a5 completion:(id)a6
{
  if (a4 == 1)
  {
    v8 = a6;
    v9 = a5;
    v11 = +[CSTrialAssetManager sharedInstance];
    [v11 getInstalledAssetofType:a3 forLocale:v9 completion:v8];
  }

  else
  {
    v9 = a6;
    v11 = a5;
    [CSAssetManager assetOfType:"assetOfType:language:completion:" language:a3 completion:?];
  }
}

- (void)installedAssetOfType:(unint64_t)a3 language:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = +[CSAssetControllerFactory defaultController];
  [v9 installedAssetOfType:a3 language:v8 completion:v7];
}

- (id)installedAssetOfType:(unint64_t)a3 language:(id)a4
{
  v5 = a4;
  v6 = +[CSAssetControllerFactory defaultController];
  v7 = [v6 installedAssetOfType:a3 language:v5];

  return v7;
}

- (void)assetOfType:(unint64_t)a3 language:(id)a4 compatibilityVersion:(unint64_t)a5 completion:(id)a6
{
  v12 = a4;
  v10 = a6;
  if ([(CSAssetManager *)self _canFetchRemoteAsset:a3])
  {
    v11 = +[CSAssetControllerFactory defaultController];
    [v11 assetOfType:a3 language:v12 compatibilityVersion:a5 completion:v10];
  }

  else if (v10)
  {
    (*(v10 + 2))(v10, 0, 0);
  }
}

- (void)assetOfType:(unint64_t)a3 language:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  LODWORD(self) = [(CSAssetManager *)self _canFetchRemoteAsset:a3];
  v10 = +[CSAssetControllerFactory defaultController];
  v11 = v10;
  if (self)
  {
    [v10 assetOfType:a3 language:v9 completion:v8];
  }

  else
  {
    [v10 installedAssetOfType:a3 language:v9 completion:v8];
  }
}

- (id)assetOfType:(unint64_t)a3 language:(id)a4
{
  v6 = a4;
  v7 = [(CSAssetManager *)self _canFetchRemoteAsset:a3];
  v8 = +[CSAssetControllerFactory defaultController];
  v9 = v8;
  if (v7)
  {
    [v8 assetOfType:a3 language:v6];
  }

  else
  {
    [v8 installedAssetOfType:a3 language:v6];
  }
  v10 = ;

  return v10;
}

- (void)installedAssetForCurrentLanguageOfType:(unint64_t)a3 completion:(id)a4
{
  currentLanguageCode = self->_currentLanguageCode;
  v7 = a4;
  v8 = [CSUtils getSiriLanguageWithFallback:currentLanguageCode];
  v9 = self->_currentLanguageCode;
  self->_currentLanguageCode = v8;

  v10 = +[CSAssetControllerFactory defaultController];
  [v10 installedAssetOfType:a3 language:self->_currentLanguageCode completion:v7];
}

- (id)installedAssetForCurrentLanguageOfType:(unint64_t)a3
{
  v5 = [CSUtils getSiriLanguageWithFallback:self->_currentLanguageCode];
  currentLanguageCode = self->_currentLanguageCode;
  self->_currentLanguageCode = v5;

  v7 = +[CSAssetControllerFactory defaultController];
  v8 = [v7 installedAssetOfType:a3 language:self->_currentLanguageCode];

  return v8;
}

- (void)assetForCurrentLanguageOfType:(unint64_t)a3 completion:(id)a4
{
  currentLanguageCode = self->_currentLanguageCode;
  v7 = a4;
  v8 = [CSUtils getSiriLanguageWithFallback:currentLanguageCode];
  v9 = self->_currentLanguageCode;
  self->_currentLanguageCode = v8;

  v10 = [(CSAssetManager *)self _canFetchRemoteAsset:a3];
  v11 = +[CSAssetControllerFactory defaultController];
  v12 = self->_currentLanguageCode;
  v13 = v11;
  if (v10)
  {
    [v11 assetOfType:a3 language:v12 completion:v7];
  }

  else
  {
    [v11 installedAssetOfType:a3 language:v12 completion:v7];
  }
}

- (id)installedCompactAssetOfType:(unint64_t)a3 language:(id)a4
{
  [(CSAssetManager *)self allInstalledAssetsOfType:a3 language:a4];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 isCompactVersion])
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (id)allInstalledAssetsOfType:(unint64_t)a3 language:(id)a4
{
  v5 = a4;
  v6 = +[CSAssetControllerFactory defaultController];
  v7 = [v6 allInstalledAssetsOfType:a3 language:v5];

  return v7;
}

- (id)assetForCurrentLanguageOfType:(unint64_t)a3
{
  v5 = [CSUtils getSiriLanguageWithFallback:self->_currentLanguageCode];
  currentLanguageCode = self->_currentLanguageCode;
  self->_currentLanguageCode = v5;

  v7 = [(CSAssetManager *)self _canFetchRemoteAsset:a3];
  v8 = +[CSAssetControllerFactory defaultController];
  v9 = v8;
  v10 = self->_currentLanguageCode;
  if (v7)
  {
    [v8 assetOfType:a3 language:v10];
  }

  else
  {
    [v8 installedAssetOfType:a3 language:v10];
  }
  v11 = ;

  return v11;
}

- (void)setAssetDownloadingOption:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001074AC;
  v7[3] = &unk_100253C48;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (CSAssetManager)initWithDownloadOption:(id)a3
{
  v5 = a3;
  v39.receiver = self;
  v39.super_class = CSAssetManager;
  v6 = [(CSAssetManager *)&v39 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_downloadingOption, a3);
    v8 = dispatch_queue_create("Serial CSAssetManager queue", 0);
    queue = v7->_queue;
    v7->_queue = v8;

    v10 = +[NSMutableDictionary dictionary];
    observers = v7->_observers;
    v7->_observers = v10;

    currentLanguageCode = v7->_currentLanguageCode;
    v7->_currentLanguageCode = @"en-US";

    v13 = [CSUtils getSiriLanguageWithFallback:v7->_currentLanguageCode];
    v14 = v7->_currentLanguageCode;
    v7->_currentLanguageCode = v13;

    v15 = +[CSLanguageCodeUpdateMonitor sharedInstance];
    [v15 addObserver:v7];

    v16 = +[CSVoiceTriggerAssetMetaUpdateMonitor sharedInstance];
    [v16 addObserver:v7];

    v17 = +[CSSpeechEndpointAssetMetaUpdateMonitor sharedInstance];
    [v17 addObserver:v7];

    v18 = +[CSAdBlockerAssetMetaUpdateMonitor sharedInstance];
    [v18 addObserver:v7];

    v19 = +[CSSpeakerRecognitionAssetMetaUpdateMonitor sharedInstance];
    [v19 addObserver:v7];

    v20 = +[CSAssetControllerFactory defaultController];
    [v20 addObserver:v7 forAssetType:0];

    v21 = +[CSAssetControllerFactory defaultController];
    [v21 addObserver:v7 forAssetType:1];

    v22 = +[CSAssetControllerFactory defaultController];
    [v22 addObserver:v7 forAssetType:4];

    v23 = +[CSAssetControllerFactory defaultController];
    [v23 addObserver:v7 forAssetType:3];

    v24 = +[CSAssetControllerFactory defaultController];
    [v24 addObserver:v7 forAssetType:5];

    v25 = +[CSAssetControllerFactory defaultController];
    [v25 addObserver:v7 forAssetType:7];

    v26 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v7->_currentLanguageCode;
      *buf = 136315394;
      v41 = "[CSAssetManager initWithDownloadOption:]";
      v42 = 2114;
      v43 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s init-_currentLanguageCode: %{public}@", buf, 0x16u);
    }

    [(CSAssetManager *)v7 _createPeriodicalDownloadTimer];
    objc_initWeak(&location, v7);
    v28 = +[CSAssetManagerEnablePolicyFactory assetManagerEnabledPolicy];
    enablePolicy = v7->_enablePolicy;
    v7->_enablePolicy = v28;

    v30 = v7->_enablePolicy;
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100107C34;
    v36[3] = &unk_100253000;
    objc_copyWeak(&v37, &location);
    [(CSPolicy *)v30 setCallback:v36];
    if ([(CSPolicy *)v7->_enablePolicy isEnabled])
    {
      v31 = CSLogCategoryAsset;
      if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v41 = "[CSAssetManager initWithDownloadOption:]";
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%s Asset Manager Policy has been enabled, start fetching meta data now", buf, 0xCu);
      }

      v32 = v7->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100107DA0;
      block[3] = &unk_100253C20;
      v35 = v7;
      dispatch_async(v32, block);
    }

    objc_destroyWeak(&v37);
    objc_destroyWeak(&location);
  }

  return v7;
}

+ (id)sharedManager
{
  if (qword_10029E388 != -1)
  {
    dispatch_once(&qword_10029E388, &stru_1002519B8);
  }

  v3 = qword_10029E380;

  return v3;
}

@end