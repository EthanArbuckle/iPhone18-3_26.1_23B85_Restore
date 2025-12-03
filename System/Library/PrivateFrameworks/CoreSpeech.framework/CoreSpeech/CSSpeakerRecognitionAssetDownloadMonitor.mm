@interface CSSpeakerRecognitionAssetDownloadMonitor
+ (CSSpeakerRecognitionAssetDownloadMonitor)sharedInstance;
- (CSSpeakerRecognitionAssetDownloadMonitor)init;
- (void)_didInstalledNewAsset;
- (void)_notifyObserver:(id)observer;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)_stopMonitoring;
- (void)trialAssetDownloadMonitorDelegate:(id)delegate didInstallNewAsset:(BOOL)asset assetType:(unint64_t)type;
@end

@implementation CSSpeakerRecognitionAssetDownloadMonitor

- (void)trialAssetDownloadMonitorDelegate:(id)delegate didInstallNewAsset:(BOOL)asset assetType:(unint64_t)type
{
  assetCopy = asset;
  delegateCopy = delegate;
  if (type == 3)
  {
    if (assetCopy)
    {
      self->_lastUpdatedAssetType = 1;
      [(CSSpeakerRecognitionAssetDownloadMonitor *)self _didInstalledNewAsset];
    }
  }

  else
  {
    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[CSSpeakerRecognitionAssetDownloadMonitor trialAssetDownloadMonitorDelegate:didInstallNewAsset:assetType:]";
      v12 = 2048;
      typeCopy = type;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s ERR: Delegate received for invalid Trial assetType:%lu", &v10, 0x16u);
    }
  }
}

- (void)_notifyObserver:(id)observer
{
  observerCopy = observer;
  [(CSSpeakerRecognitionAssetDownloadMonitor *)self notifyObserver:observerCopy];
  [observerCopy CSSpeakerRecognitionAssetDownloadMonitor:self didInstallNewAsset:1 assetProviderType:self->_lastUpdatedAssetType];
}

- (void)_didInstalledNewAsset
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[CSSpeakerRecognitionAssetDownloadMonitor _didInstalledNewAsset]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s New SpeakerRecognition Assets is now installed", buf, 0xCu);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10015EC48;
  v4[3] = &unk_100253B48;
  v4[4] = self;
  [(CSSpeakerRecognitionAssetDownloadMonitor *)self enumerateObserversInQueue:v4];
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
      v6 = "[CSSpeakerRecognitionAssetDownloadMonitor _stopMonitoring]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Stop monitoring : SpeakerRecognition Assets Download", &v5, 0xCu);
    }
  }
}

- (void)_startMonitoringWithQueue:(id)queue
{
  if (self->_notifyToken == -1)
  {
    queueCopy = queue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10015EE54;
    handler[3] = &unk_1002537C0;
    handler[4] = self;
    notify_register_dispatch([(CSSpeakerRecognitionAssetDownloadMonitor *)self _notificationKey], &self->_notifyToken, queueCopy, handler);

    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v8 = "[CSSpeakerRecognitionAssetDownloadMonitor _startMonitoringWithQueue:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Start monitoring : SpeakerRecognition Asset Download", buf, 0xCu);
    }
  }
}

- (CSSpeakerRecognitionAssetDownloadMonitor)init
{
  v9.receiver = self;
  v9.super_class = CSSpeakerRecognitionAssetDownloadMonitor;
  v2 = [(CSSpeakerRecognitionAssetDownloadMonitor *)&v9 init];
  if (v2)
  {
    v3 = +[CSFPreferences sharedPreferences];
    isSpeakerRecognitionAvailable = [v3 isSpeakerRecognitionAvailable];

    if (!isSpeakerRecognitionAvailable)
    {
      v7 = 0;
      goto LABEL_6;
    }

    v2->_notifyToken = -1;
    v5 = +[CSTrialAssetDownloadMonitor sharedInstance];
    trialAssetMonitor = v2->_trialAssetMonitor;
    v2->_trialAssetMonitor = v5;

    [(CSTrialAssetDownloadMonitor *)v2->_trialAssetMonitor addObserver:v2];
    v2->_lastUpdatedAssetType = 0;
  }

  v7 = v2;
LABEL_6:

  return v7;
}

+ (CSSpeakerRecognitionAssetDownloadMonitor)sharedInstance
{
  if (qword_10029E5B0 != -1)
  {
    dispatch_once(&qword_10029E5B0, &stru_1002533E8);
  }

  v3 = qword_10029E5A8;

  return v3;
}

@end