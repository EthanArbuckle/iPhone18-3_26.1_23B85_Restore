@interface CSTrialAssetDownloadMonitor
+ (CSTrialAssetDownloadMonitor)sharedInstance;
- (BOOL)_handleSiriAttAssetTrailDownloadForNamespace:(id)namespace;
- (BOOL)_validateDownloadedAssetForAssetType:(unint64_t)type;
- (CSTrialAssetDownloadMonitor)init;
- (id)_trailStageDirectoryForAsset:(id)asset;
- (void)_notifyTrialAssetDownloadForAssetType:(unint64_t)type;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)downloadAndNotifyTrialAssetsUpdateForNamespace:(id)namespace onQueue:(id)queue;
@end

@implementation CSTrialAssetDownloadMonitor

- (id)_trailStageDirectoryForAsset:(id)asset
{
  assetCopy = asset;
  v4 = +[NSFileManager defaultManager];
  v5 = +[CSFPreferences sharedPreferences];
  trialBaseAssetDirectory = [v5 trialBaseAssetDirectory];

  v7 = [trialBaseAssetDirectory stringByAppendingPathComponent:assetCopy];

  if ([v4 fileExistsAtPath:v7])
  {
    v21 = 0;
    v8 = [v4 removeItemAtPath:v7 error:&v21];
    v9 = v21;
    if ((v8 & 1) == 0)
    {
      v10 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v18 = v10;
        localizedDescription = [v9 localizedDescription];
        *buf = 136315650;
        v23 = "[CSTrialAssetDownloadMonitor _trailStageDirectoryForAsset:]";
        v24 = 2112;
        v25 = v7;
        v26 = 2114;
        v27 = localizedDescription;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s Failed to delete dir at %@ with err: %{public}@", buf, 0x20u);
      }

      v11 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v9 = 0;
  }

  v12 = v9;
  v20 = v9;
  v13 = [v4 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:&v20];
  v9 = v20;

  if ((v13 & 1) == 0)
  {
    v14 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v16 = v14;
      localizedDescription2 = [v9 localizedDescription];
      *buf = 136315650;
      v23 = "[CSTrialAssetDownloadMonitor _trailStageDirectoryForAsset:]";
      v24 = 2114;
      v25 = v7;
      v26 = 2114;
      v27 = localizedDescription2;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Couldn't create voice trigger audio logging directory at path %{public}@ %{public}@", buf, 0x20u);
    }

    v7 = 0;
  }

  v7 = v7;
  v11 = v7;
LABEL_12:

  return v11;
}

- (BOOL)_validateDownloadedAssetForAssetType:(unint64_t)type
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = +[CSTrialAssetManager sharedInstance];
  v5 = [CSUtils getSiriLanguageWithFallback:@"en-US"];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10016AC4C;
  v7[3] = &unk_100253A30;
  v7[4] = &v8;
  v7[5] = type;
  [v4 getInstalledAssetofType:type forLocale:v5 completion:v7];

  LOBYTE(type) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return type;
}

- (void)_notifyTrialAssetDownloadForAssetType:(unint64_t)type
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10016B064;
  v3[3] = &unk_1002539B8;
  v3[4] = self;
  v3[5] = type;
  [(CSTrialAssetDownloadMonitor *)self enumerateObserversInQueue:v3];
}

- (void)downloadAndNotifyTrialAssetsUpdateForNamespace:(id)namespace onQueue:(id)queue
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10016B160;
  v7[3] = &unk_100253C48;
  namespaceCopy = namespace;
  selfCopy = self;
  v6 = namespaceCopy;
  dispatch_async(queue, v7);
}

- (BOOL)_handleSiriAttAssetTrailDownloadForNamespace:(id)namespace
{
  namespaceCopy = namespace;
  v5 = [(NSDictionary *)self->_trialClientDict objectForKeyedSubscript:namespaceCopy];
  [v5 refresh];
  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315138;
    v18 = "[CSTrialAssetDownloadMonitor _handleSiriAttAssetTrailDownloadForNamespace:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Got Trial experiment/rollout notification", &v17, 0xCu);
  }

  v7 = [v5 levelForFactor:@"com.apple.siri.sp.invocation" withNamespaceName:namespaceCopy];
  directoryValue = [v7 directoryValue];
  path = [directoryValue path];

  if (path)
  {
    [(CSTrialAssetDownloadMonitor *)self _notifyTrialAssetDownloadForAssetType:0];
    v10 = [v5 levelForFactor:@"com.apple.siri.sp.mitigation" withNamespaceName:namespaceCopy];

    directoryValue2 = [v10 directoryValue];
    path2 = [directoryValue2 path];

    if (path2)
    {
      [(CSTrialAssetDownloadMonitor *)self _notifyTrialAssetDownloadForAssetType:6];
      v13 = 1;
    }

    else
    {
      v15 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v17 = 136315394;
        v18 = "[CSTrialAssetDownloadMonitor _handleSiriAttAssetTrailDownloadForNamespace:]";
        v19 = 2114;
        v20 = @"com.apple.siri.sp.mitigation";
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s ERR: null file download path for factor: %{public}@", &v17, 0x16u);
      }

      path2 = +[CSDiagnosticReporter sharedInstance];
      [path2 submitTrialIssueReport:kCSDiagnosticReporterTrialDownloadFailed];
      v13 = 0;
    }

    v7 = v10;
  }

  else
  {
    v14 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315394;
      v18 = "[CSTrialAssetDownloadMonitor _handleSiriAttAssetTrailDownloadForNamespace:]";
      v19 = 2114;
      v20 = @"com.apple.siri.sp.invocation";
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s ERR: null file download path for factor: %{public}@", &v17, 0x16u);
    }

    path2 = +[CSDiagnosticReporter sharedInstance];
    [path2 submitTrialIssueReport:kCSDiagnosticReporterTrialDownloadFailed];
    v13 = 0;
  }

  return v13;
}

- (void)_startMonitoringWithQueue:(id)queue
{
  queueCopy = queue;
  v4 = +[NSMutableDictionary dictionary];
  if (+[CSUtils supportTrialMitigationAssets])
  {
    [NSArray arrayWithObjects:&off_10025E918, &off_10025E930, 0];
  }

  else
  {
    [NSArray arrayWithObjects:&off_10025E948, &off_10025E960, 0];
  }
  v5 = ;
  objc_initWeak(&location, self);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v6)
  {
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        unsignedIntegerValue = [*(*(&v17 + 1) + 8 * i) unsignedIntegerValue];
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_10016BB90;
        v13[3] = &unk_100253990;
        v14 = v4;
        objc_copyWeak(&v16, &location);
        v15 = queueCopy;
        [CSUtils getTrialIdsForAssetType:unsignedIntegerValue withCompletion:v13];

        objc_destroyWeak(&v16);
      }

      v6 = [obj countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v6);
  }

  trialClientDict = self->_trialClientDict;
  self->_trialClientDict = v4;

  objc_destroyWeak(&location);
}

- (CSTrialAssetDownloadMonitor)init
{
  if ((+[CSUtils isDarwinOS]& 1) != 0)
  {
    selfCopy = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CSTrialAssetDownloadMonitor;
    self = [(CSTrialAssetDownloadMonitor *)&v5 init];
    selfCopy = self;
  }

  return selfCopy;
}

+ (CSTrialAssetDownloadMonitor)sharedInstance
{
  if (qword_10029E630 != -1)
  {
    dispatch_once(&qword_10029E630, &stru_100253940);
  }

  v3 = qword_10029E628;

  return v3;
}

@end