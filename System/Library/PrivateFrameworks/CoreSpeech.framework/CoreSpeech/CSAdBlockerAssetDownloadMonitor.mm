@interface CSAdBlockerAssetDownloadMonitor
+ (id)sharedInstance;
- (CSAdBlockerAssetDownloadMonitor)init;
- (void)_didInstalledNewAdBlockerAsset;
- (void)_notifyObserver:(id)a3;
- (void)_startMonitoringWithQueue:(id)a3;
- (void)_stopMonitoring;
- (void)trialAssetDownloadMonitorDelegate:(id)a3 didInstallNewAsset:(BOOL)a4 assetType:(unint64_t)a5;
@end

@implementation CSAdBlockerAssetDownloadMonitor

- (void)trialAssetDownloadMonitorDelegate:(id)a3 didInstallNewAsset:(BOOL)a4 assetType:(unint64_t)a5
{
  v6 = a4;
  v8 = a3;
  if (a5 == 4)
  {
    if (v6)
    {
      self->_lastUpdatedAssetType = 1;
      [(CSAdBlockerAssetDownloadMonitor *)self _didInstalledNewAdBlockerAsset];
    }
  }

  else
  {
    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[CSAdBlockerAssetDownloadMonitor trialAssetDownloadMonitorDelegate:didInstallNewAsset:assetType:]";
      v12 = 2048;
      v13 = a5;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s ERR: Delegate received for invalid Trial assetType:%lu", &v10, 0x16u);
    }
  }
}

- (void)_notifyObserver:(id)a3
{
  v4 = a3;
  [(CSAdBlockerAssetDownloadMonitor *)self notifyObserver:v4];
  [v4 CSAdBlockerAssetDownloadMonitor:self didInstallNewAsset:1 assetProviderType:self->_lastUpdatedAssetType];
}

- (void)_didInstalledNewAdBlockerAsset
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[CSAdBlockerAssetDownloadMonitor _didInstalledNewAdBlockerAsset]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s New AdBlockerAsset is now installed", buf, 0xCu);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10012D60C;
  v4[3] = &unk_100253B48;
  v4[4] = self;
  [(CSAdBlockerAssetDownloadMonitor *)self enumerateObserversInQueue:v4];
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
      v5 = 136315138;
      v6 = "[CSAdBlockerAssetDownloadMonitor _stopMonitoring]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : AdBlocker Asset Download", &v5, 0xCu);
    }
  }
}

- (void)_startMonitoringWithQueue:(id)a3
{
  if (self->_notifyToken == -1)
  {
    v4 = a3;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10012D818;
    handler[3] = &unk_1002537C0;
    handler[4] = self;
    notify_register_dispatch([(CSAdBlockerAssetDownloadMonitor *)self _notificationKey], &self->_notifyToken, v4, handler);

    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v8 = "[CSAdBlockerAssetDownloadMonitor _startMonitoringWithQueue:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Start monitoring : AdBlocker Asset Download", buf, 0xCu);
    }
  }
}

- (CSAdBlockerAssetDownloadMonitor)init
{
  v7.receiver = self;
  v7.super_class = CSAdBlockerAssetDownloadMonitor;
  v2 = [(CSAdBlockerAssetDownloadMonitor *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_notifyToken = -1;
    v4 = +[CSTrialAssetDownloadMonitor sharedInstance];
    monitor = v3->_monitor;
    v3->_monitor = v4;

    [(CSTrialAssetDownloadMonitor *)v3->_monitor addObserver:v3];
    v3->_lastUpdatedAssetType = 0;
  }

  return v3;
}

+ (id)sharedInstance
{
  if (qword_10029E488 != -1)
  {
    dispatch_once(&qword_10029E488, &stru_100252128);
  }

  v3 = qword_10029E480;

  return v3;
}

@end