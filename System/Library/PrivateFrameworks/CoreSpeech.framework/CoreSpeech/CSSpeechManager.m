@interface CSSpeechManager
+ (id)sharedManager;
- (BOOL)_prepareForBluetoothDeviceWithDeviceType:(unint64_t)a3;
- (CSSpeechManager)init;
- (id)_getAudioRecorderWithError:(id *)a3;
- (id)_myriadSelfTriggerCoordinatorIfNeeded:(BOOL)a3;
- (id)_preMyriadCoordinatorCreateIfNeeded:(BOOL)a3;
- (id)_voiceTriggerEventNotifierCreateIfNeeded:(BOOL)a3;
- (id)_voiceTriggerFileLoggerCreateIfNeeded:(BOOL)a3;
- (id)audioProviderWithContext:(id)a3 error:(id *)a4;
- (id)audioProviderWithStreamID:(unint64_t)a3;
- (id)audioProviderWithUUID:(id)a3;
- (id)audioTapProviderWithType:(unint64_t)a3;
- (id)clientController;
- (id)fetchFallbackAudioSessionReleaseProvider;
- (void)CSAudioRouteChangeMonitor:(id)a3 didReceiveAudioRouteChangeEvent:(int64_t)a4;
- (void)_createClearLoggingFileTimer;
- (void)_getVoiceTriggerAssetIfNeeded:(id)a3;
- (void)_handleClearLoggingFileTimer;
- (void)_mapAssetToExclaveKit:(id)a3 completion:(id)a4;
- (void)_prepareRemoraDeviceWithConnectedDeviceIds:(id)a3;
- (void)_reinitializeSmartSiriVolumeWithAsset:(id)a3;
- (void)_reinitializeVoiceTriggerIfNeeded;
- (void)_reinitializeVoiceTriggerWithAsset:(id)a3;
- (void)_retryMapAssetToExclaveKit:(id)a3;
- (void)_setAssetForBuiltInVoiceTrigger:(id)a3 completion:(id)a4;
- (void)_setupForBluetoothDeviceIfNeededWithDeviceType:(unint64_t)a3 prepareCompletion:(id)a4 completion:(id)a5;
- (void)_setupForHearstIfNeededWithPrepareCompletion:(id)a3 completion:(id)a4;
- (void)_setupForJarvisIfNeededWithPrepareCompletion:(id)a3 completion:(id)a4;
- (void)_setupForRemoraIfNeededWithCompletion:(id)a3;
- (void)_setupSpeakerRecognitionWithVTAsset:(id)a3;
- (void)_setupVoiceTriggerWithCompletion:(id)a3;
- (void)_startAllClients;
- (void)_startClearLoggingFilesTimer;
- (void)_startForBluetoothDeviceWithDeviceType:(unint64_t)a3 asset:(id)a4;
- (void)_startVoiceTrigger;
- (void)_tearDownBuiltInVoiceTrigger;
- (void)_teardownForBluetoothDevice;
- (void)activationEventNotificationHandler:(id)a3 event:(id)a4 completion:(id)a5;
- (void)audioProviderInvalidated:(id)a3 streamHandleId:(unint64_t)a4;
- (void)audioRecorderWillBeDestroyed:(id)a3;
- (void)dealloc;
- (void)opportuneSpeakEventMonitor:(id)a3 didStreamStateChanged:(BOOL)a4;
- (void)registerSiriClientProxy:(id)a3;
- (void)registerSpeechController:(id)a3;
- (void)startManager;
- (void)voiceTriggerAssetHandler:(id)a3 endpointId:(id)a4 didChangeCachedAsset:(id)a5;
@end

@implementation CSSpeechManager

+ (id)sharedManager
{
  if (qword_10029E498 != -1)
  {
    dispatch_once(&qword_10029E498, &stru_100252148);
  }

  v3 = qword_10029E490;

  return v3;
}

- (id)clientController
{
  WeakRetained = objc_loadWeakRetained(&self->_clientController);

  return WeakRetained;
}

- (void)opportuneSpeakEventMonitor:(id)a3 didStreamStateChanged:(BOOL)a4
{
  v6 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012E488;
  block[3] = &unk_100253900;
  v11 = a4;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)_tearDownBuiltInVoiceTrigger
{
  [(CSSelfTriggerController *)self->_selfTriggerController unregisterObserver:self->_voiceTrigger];
  [(CSBuiltInVoiceTrigger *)self->_voiceTrigger setDelegate:0];
  voiceTrigger = self->_voiceTrigger;
  self->_voiceTrigger = 0;
}

- (void)_teardownForBluetoothDevice
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[CSSpeechManager _teardownForBluetoothDevice]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Teardown VoiceTrigger due to bluetooth device disconnection", &v8, 0xCu);
  }

  [(CSVoiceTriggerFirstPassHearst *)self->_voiceTriggerFirstPassHearst setDelegate:0];
  voiceTriggerFirstPassHearst = self->_voiceTriggerFirstPassHearst;
  self->_voiceTriggerFirstPassHearst = 0;

  [(CSVoiceTriggerFirstPassJarvis *)self->_voiceTriggerFirstPassJarvis setDelegate:0];
  voiceTriggerFirstPassJarvis = self->_voiceTriggerFirstPassJarvis;
  self->_voiceTriggerFirstPassJarvis = 0;

  [(CSVoiceTriggerFirstPassHearstAP *)self->_voiceTriggerFirstPassHearstAP setDelegate:0];
  voiceTriggerFirstPassHearstAP = self->_voiceTriggerFirstPassHearstAP;
  self->_voiceTriggerFirstPassHearstAP = 0;

  [(CSVoiceTriggerFirstPassJarvisAP *)self->_voiceTriggerFirstPassJarvisAP setDelegate:0];
  voiceTriggerFirstPassJarvisAP = self->_voiceTriggerFirstPassJarvisAP;
  self->_voiceTriggerFirstPassJarvisAP = 0;
}

- (void)_prepareRemoraDeviceWithConnectedDeviceIds:(id)a3
{
  if (!self->_voiceTriggerFirstPassRemora)
  {
    v5 = a3;
    v6 = objc_alloc_init(CSVoiceTriggerFirstPassRemora);
    voiceTriggerFirstPassRemora = self->_voiceTriggerFirstPassRemora;
    self->_voiceTriggerFirstPassRemora = v6;

    [(CSVoiceTriggerFirstPassRemora *)self->_voiceTriggerFirstPassRemora start];
    [(CSVoiceTriggerFirstPassRemora *)self->_voiceTriggerFirstPassRemora setConnectedDeviceIds:v5];

    v8 = [(CSSpeechManager *)self _preMyriadCoordinatorCreateIfNeeded:1];
    [(CSVoiceTriggerFirstPassRemora *)self->_voiceTriggerFirstPassRemora setDelegate:v8];
    [(CSVoiceTriggerFirstPassRemora *)self->_voiceTriggerFirstPassRemora setSecondPassProgressDelegate:v8];
    [v8 setRemoraSecondPassProgressProvider:self->_voiceTriggerFirstPassRemora];
  }
}

- (void)_startForBluetoothDeviceWithDeviceType:(unint64_t)a3 asset:(id)a4
{
  v6 = a4;
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v7 = 152;
    v8 = 144;
  }

  else
  {
    v7 = 168;
    v8 = 160;
  }

  v9 = v6;
  [*(&self->super.isa + v8) setAsset:v6];
  [*(&self->super.isa + v7) setAsset:v9];
  v6 = v9;
LABEL_6:
}

- (BOOL)_prepareForBluetoothDeviceWithDeviceType:(unint64_t)a3
{
  v5 = [(CSSpeechManager *)self _voiceTriggerFileLoggerCreateIfNeeded:1];
  if (a3 == 1)
  {
    voiceTriggerFirstPassJarvis = self->_voiceTriggerFirstPassJarvis;
    LOBYTE(v7) = voiceTriggerFirstPassJarvis == 0;
    if (!voiceTriggerFirstPassJarvis)
    {
      v15 = objc_alloc_init(CSVoiceTriggerFirstPassJarvis);
      v16 = self->_voiceTriggerFirstPassJarvis;
      self->_voiceTriggerFirstPassJarvis = v15;

      [(CSVoiceTriggerFirstPassJarvis *)self->_voiceTriggerFirstPassJarvis start];
      v17 = self->_voiceTriggerFirstPassJarvis;
      v18 = [(CSSpeechManager *)self _voiceTriggerEventNotifierCreateIfNeeded:1];
      [(CSVoiceTriggerFirstPassJarvis *)v17 setDelegate:v18];
    }

    p_voiceTriggerFirstPassJarvisAP = &self->_voiceTriggerFirstPassJarvisAP;
    if (!self->_voiceTriggerFirstPassJarvisAP)
    {
      v13 = &off_10024CBF8;
      goto LABEL_12;
    }
  }

  else
  {
    if (a3)
    {
      LOBYTE(v7) = 0;
      return v7;
    }

    voiceTriggerFirstPassHearst = self->_voiceTriggerFirstPassHearst;
    v7 = voiceTriggerFirstPassHearst == 0;
    if (!voiceTriggerFirstPassHearst)
    {
      v8 = objc_alloc_init(CSVoiceTriggerFirstPassHearst);
      v9 = self->_voiceTriggerFirstPassHearst;
      self->_voiceTriggerFirstPassHearst = v8;

      [(CSVoiceTriggerFirstPassHearst *)self->_voiceTriggerFirstPassHearst start];
      v10 = self->_voiceTriggerFirstPassHearst;
      v11 = [(CSSpeechManager *)self _voiceTriggerEventNotifierCreateIfNeeded:1];
      [(CSVoiceTriggerFirstPassHearst *)v10 setDelegate:v11];
    }

    if (+[CSUtils supportOpportuneSpeakListener])
    {
      p_voiceTriggerFirstPassJarvisAP = &self->_voiceTriggerFirstPassHearstAP;
      if (!self->_voiceTriggerFirstPassHearstAP)
      {
        v13 = off_10024CBF0;
LABEL_12:
        v19 = objc_alloc_init(*v13);
        v20 = *p_voiceTriggerFirstPassJarvisAP;
        *p_voiceTriggerFirstPassJarvisAP = v19;

        [*p_voiceTriggerFirstPassJarvisAP start];
        v21 = *p_voiceTriggerFirstPassJarvisAP;
        LOBYTE(v7) = 1;
        v22 = [(CSSpeechManager *)self _voiceTriggerEventNotifierCreateIfNeeded:1];
        [v21 setDelegate:v22];
      }
    }
  }

  return v7;
}

- (void)_setupForBluetoothDeviceIfNeededWithDeviceType:(unint64_t)a3 prepareCompletion:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(CSSpeechManager *)self _prepareForBluetoothDeviceWithDeviceType:a3];
  if (v8)
  {
    v8[2](v8);
  }

  if (v10)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10012EBFC;
    v11[3] = &unk_1002523F8;
    v11[4] = self;
    v13 = a3;
    v12 = v9;
    [(CSSpeechManager *)self _getVoiceTriggerAssetIfNeeded:v11];
  }

  else if (v9)
  {
    v9[2](v9);
  }
}

- (void)_setupForRemoraIfNeededWithCompletion:(id)a3
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSSpeechManager _setupForRemoraIfNeededWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s setup VoiceTrigger due to remora connection", &v4, 0xCu);
  }
}

- (void)_setupForJarvisIfNeededWithPrepareCompletion:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[CSSpeechManager _setupForJarvisIfNeededWithPrepareCompletion:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s setup VoiceTrigger due to Jarvis connection", &v9, 0xCu);
  }

  [(CSSpeechManager *)self _setupForBluetoothDeviceIfNeededWithDeviceType:1 prepareCompletion:v6 completion:v7];
}

- (void)_setupForHearstIfNeededWithPrepareCompletion:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[CSSpeechManager _setupForHearstIfNeededWithPrepareCompletion:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s setup VoiceTrigger due to Hearst connection", &v9, 0xCu);
  }

  [(CSSpeechManager *)self _setupForBluetoothDeviceIfNeededWithDeviceType:0 prepareCompletion:v6 completion:v7];
}

- (void)CSAudioRouteChangeMonitor:(id)a3 didReceiveAudioRouteChangeEvent:(int64_t)a4
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10012F000;
  v5[3] = &unk_100253C98;
  v5[4] = self;
  v5[5] = a4;
  dispatch_async(queue, v5);
}

- (void)activationEventNotificationHandler:(id)a3 event:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10012F310;
  v15[3] = &unk_100252E58;
  v16 = v9;
  v17 = self;
  v18 = v8;
  v19 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(queue, v15);
}

- (void)_startClearLoggingFilesTimer
{
  if (self->_clearLoggingFileTimer)
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[CSSpeechManager _startClearLoggingFilesTimer]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v5, 0xCu);
    }

    if (self->_clearLoggingFileTimerCount < 1)
    {
      dispatch_resume(self->_clearLoggingFileTimer);
      ++self->_clearLoggingFileTimerCount;
    }

    else
    {
      v4 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v5 = 136315138;
        v6 = "[CSSpeechManager _startClearLoggingFilesTimer]";
        _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Clear logging file timer is already started, ignore startClearLoggingFilesTimer request.", &v5, 0xCu);
      }
    }
  }
}

- (void)_createClearLoggingFileTimer
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[CSSpeechManager _createClearLoggingFileTimer]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  self->_clearLoggingFileTimerCount = 0;
  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
  clearLoggingFileTimer = self->_clearLoggingFileTimer;
  self->_clearLoggingFileTimer = v4;

  v6 = dispatch_time(0, 0);
  dispatch_source_set_timer(self->_clearLoggingFileTimer, v6, 0x274A48C00000uLL, 0);
  v7 = self->_clearLoggingFileTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10012F994;
  handler[3] = &unk_100253C20;
  handler[4] = self;
  dispatch_source_set_event_handler(v7, handler);
}

- (void)_handleClearLoggingFileTimer
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[CSSpeechManager _handleClearLoggingFileTimer]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Trying to start clear logging files", &v3, 0xCu);
  }

  if (CSIsHorseman())
  {
    +[CSConfig daysBeforeRemovingLogFiles];
    [CSAudioFileManager removeLogFilesOlderThanNDays:?];
  }

  else if (CSIsIOS())
  {
    +[CSConfig daysBeforeRemovingLogFiles];
    [CSAudioFileManager removeOpportunisticAudioLoggingOlderThanNDays:?];
    +[CSConfig daysBeforeRemovingLogFiles];
    [CSAudioFileManager removeRemoteP2PLogFilesOlderThanNDays:?];
  }
}

- (void)_reinitializeSmartSiriVolumeWithAsset:(id)a3
{
  ssvManager = self->_ssvManager;
  if (ssvManager)
  {
    [(CSSmartSiriVolumeManager *)ssvManager setAsset:a3];
  }
}

- (void)_reinitializeVoiceTriggerWithAsset:(id)a3
{
  v4 = a3;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[CSSpeechManager _reinitializeVoiceTriggerWithAsset:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s new asset available, change to new model", &v7, 0xCu);
  }

  if (v4)
  {
    [(CSSpeechManager *)self _setAssetForBuiltInVoiceTrigger:v4 completion:0];
    v6 = +[CSVoiceTriggerStatistics sharedInstance];
    [v6 resetVTEstimationStatistics];

    if (+[CSUtils supportBluetoothDeviceVoiceTrigger])
    {
      [(CSVoiceTriggerFirstPassHearstAP *)self->_voiceTriggerFirstPassHearstAP setAsset:v4];
      [(CSVoiceTriggerFirstPassHearst *)self->_voiceTriggerFirstPassHearst setAsset:v4];
      [(CSVoiceTriggerFirstPassJarvis *)self->_voiceTriggerFirstPassJarvis setAsset:v4];
      [(CSVoiceTriggerFirstPassJarvisAP *)self->_voiceTriggerFirstPassJarvisAP setAsset:v4];
    }

    +[CSUtils supportRemoraVoiceTrigger];
    [(CSSelfTriggerController *)self->_selfTriggerController setAsset:v4];
    [(CSKeywordDetector *)self->_keywordDetector setAsset:v4];
    [(CSSpeechManager *)self _reinitializeSmartSiriVolumeWithAsset:v4];
    if ((CSIsCommunalDevice() & 1) == 0)
    {
      [(CSVoiceProfileRetrainManager *)self->_voiceTriggerRetrainer triggerVoiceProfileRetrainingWithAsset:v4 withSecureAsset:0];
    }
  }
}

- (void)_setAssetForBuiltInVoiceTrigger:(id)a3 completion:(id)a4
{
  v6 = a3;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10012FE00;
  v15[3] = &unk_100252368;
  v7 = a4;
  v16 = v7;
  v8 = objc_retainBlock(v15);
  if (!self->_isExclaveHardware)
  {
    goto LABEL_12;
  }

  v9 = [v6 assetProvider];
  v10 = [v6 assetVariant];
  v11 = v10;
  v13 = v9 == 2 && v10 == 2;
  v14 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v18 = "[CSSpeechManager _setAssetForBuiltInVoiceTrigger:completion:]";
    v19 = 2048;
    v20 = v9;
    v21 = 2048;
    v22 = v11;
    v23 = 1024;
    v24 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s Asset Provider:%ld, Asset Variant: %ld, attemptAssetMapping:%d", buf, 0x26u);
  }

  if (v13)
  {
    [(CSSpeechManager *)self _mapAssetToExclaveKit:v6 completion:v8];
  }

  else
  {
LABEL_12:
    [(CSBuiltInVoiceTrigger *)self->_voiceTrigger setAsset:v6];
    if (v8)
    {
      (v8[2])(v8, 0);
    }
  }
}

- (void)_mapAssetToExclaveKit:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(CSSpeechManager *)self assetHandler];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10012FF4C;
  v11[3] = &unk_100252340;
  v11[4] = self;
  objc_copyWeak(&v14, &location);
  v9 = v6;
  v12 = v9;
  v10 = v7;
  v13 = v10;
  [v8 mapAssetToExclaveKit:v9 completion:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)_retryMapAssetToExclaveKit:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(CSSpeechManager *)self assetHandler];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001305D4;
  v7[3] = &unk_1002522F0;
  v7[4] = self;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [v5 retryMappingAssetToExclaveKit:v6 completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_reinitializeVoiceTriggerIfNeeded
{
  objc_initWeak(&location, self);
  assetQueryQueue = self->_assetQueryQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100130950;
  v4[3] = &unk_100253510;
  objc_copyWeak(&v5, &location);
  dispatch_async(assetQueryQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)voiceTriggerAssetHandler:(id)a3 endpointId:(id)a4 didChangeCachedAsset:(id)a5
{
  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[CSSpeechManager voiceTriggerAssetHandler:endpointId:didChangeCachedAsset:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Received VoiceTrigger cached asset change notification, let's reinitialize VoiceTrigger", &v7, 0xCu);
  }

  [(CSSpeechManager *)self _reinitializeVoiceTriggerIfNeeded];
}

- (void)audioRecorderWillBeDestroyed:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100130C68;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)audioProviderInvalidated:(id)a3 streamHandleId:(unint64_t)a4
{
  v6 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100130DF0;
  block[3] = &unk_1002533C8;
  v11 = self;
  v12 = a4;
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, block);
}

- (id)_getAudioRecorderWithError:(id *)a3
{
  if (self->_audioRecorder)
  {
    v5 = 0;
    if (a3)
    {
LABEL_3:
      v6 = v5;
      *a3 = v5;
    }
  }

  else
  {
    v28 = 0;
    v10 = [CSAudioRecorderFactory audioRecorderWithQueue:0 error:&v28];
    v5 = v28;
    if (!v10)
    {
      v11 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v22 = v11;
        v23 = [v5 localizedDescription];
        *buf = 136315394;
        v31 = "[CSSpeechManager _getAudioRecorderWithError:]";
        v32 = 2114;
        v33 = v23;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s Failed to create audio recorder : %{public}@", buf, 0x16u);
      }
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = [(CSSpeechManager *)self audioProviders];
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      do
      {
        v16 = 0;
        do
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v24 + 1) + 8 * v16);
          v18 = [(CSSpeechManager *)self audioProviders];
          v19 = [v18 objectForKey:v17];

          [v19 setAudioRecorder:v10];
          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v14);
    }

    [(CSFallbackAudioSessionReleaseProvider *)self->_fallbackAudioSessionReleaseProvider setAudioRecorder:v10];
    [v10 registerObserver:self];
    v20 = +[CSAudioSessionMonitor sharedInstance];
    [v10 setAudioSessionEventDelegate:v20];

    audioRecorder = self->_audioRecorder;
    self->_audioRecorder = v10;

    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = self->_audioRecorder;
  v8 = v7;

  return v7;
}

- (id)fetchFallbackAudioSessionReleaseProvider
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100131344;
  v10 = sub_100131354;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10013135C;
  v5[3] = &unk_100253BD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)audioProviderWithStreamID:(unint64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100131344;
  v11 = sub_100131354;
  v12 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001314B8;
  block[3] = &unk_100252170;
  block[5] = &v7;
  block[6] = a3;
  block[4] = self;
  dispatch_sync(queue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)audioProviderWithContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[CSSpeechManager audioProviderWithContext:error:]";
    *&buf[12] = 2114;
    *&buf[14] = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s context = %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v23 = sub_100131344;
  v24 = sub_100131354;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100131344;
  v20 = sub_100131354;
  v21 = 0;
  queue = self->_queue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100131988;
  v12[3] = &unk_100252278;
  v12[4] = self;
  v14 = &v16;
  v9 = v6;
  v13 = v9;
  v15 = buf;
  dispatch_sync(queue, v12);
  if (a4)
  {
    *a4 = v17[5];
  }

  v10 = *(*&buf[8] + 40);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(buf, 8);

  return v10;
}

- (id)audioProviderWithUUID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100131344;
  v16 = sub_100131354;
  v17 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100131FE8;
  block[3] = &unk_100252228;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)registerSiriClientProxy:(id)a3
{
  v4 = a3;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[CSSpeechManager registerSiriClientProxy:]";
    v12 = 2050;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s xpcListener = %{public}p", buf, 0x16u);
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013224C;
  v8[3] = &unk_100253C48;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(queue, v8);
}

- (void)registerSpeechController:(id)a3
{
  v4 = a3;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSSpeechManager registerSpeechController:]";
    v9 = 2050;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s speechController = %{public}p", &v7, 0x16u);
  }

  [(CSVoiceTriggerEventsCoordinator *)self->_voiceTriggerEventsCoordinator registerObserver:v4];
  v6 = [(CSSpeechManager *)self _myriadSelfTriggerCoordinatorIfNeeded:+[CSSelfTriggerController shouldSetupSelfTrigger]];
  [v6 setDelegate:v4];
  objc_storeWeak(&self->_clientController, v4);
}

- (void)_startAllClients
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSSpeechManager _startAllClients]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Starting all clients", &v5, 0xCu);
  }

  if (+[CSUtils supportSmartVolume])
  {
    [(CSSmartSiriVolumeManager *)self->_ssvManager startSmartSiriVolumeWithAudioProviderSelector:self];
  }

  [(CSSelfTriggerController *)self->_selfTriggerController start];
  v4 = +[CSVoiceTriggerRejectReporter sharedInstance];
}

- (void)_startVoiceTrigger
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSSpeechManager _startVoiceTrigger]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s VoiceTrigger will be started", &v4, 0xCu);
  }

  [(CSVoiceTriggerAssetHandler *)self->_assetHandler registerObserver:self];
  [(CSBuiltInVoiceTrigger *)self->_voiceTrigger start];
}

- (void)_setupVoiceTriggerWithCompletion:(id)a3
{
  v4 = a3;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[CSSpeechManager _setupVoiceTriggerWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  if (+[CSUtils isLocalVoiceTriggerAvailable])
  {
    if (CSIsWatch())
    {
      if (+[CSUtils supportsDispatchWorkloop])
      {
        voiceTriggerQueue = self->_voiceTriggerQueue;
        self->_voiceTriggerQueue = 0;
      }

      else
      {
        v10 = [CSUtils rootQueueWithFixedPriority:kCSDefaultSecondPassFixedPriorityWatch];
        voiceTriggerQueue = self->_voiceTriggerQueue;
        self->_voiceTriggerQueue = v10;
      }
    }

    else
    {
      v7 = dispatch_queue_create("VoiceTrigger Queue", 0);
      v8 = self->_voiceTriggerQueue;
      self->_voiceTriggerQueue = v7;

      v9 = self->_voiceTriggerQueue;
      voiceTriggerQueue = dispatch_get_global_queue(33, 0);
      dispatch_set_target_queue(v9, voiceTriggerQueue);
    }

    v11 = [[CSBuiltInVoiceTrigger alloc] initWithTargetQueue:self->_voiceTriggerQueue withSpeechManager:self];
    voiceTrigger = self->_voiceTrigger;
    self->_voiceTrigger = v11;

    if (+[CSUtils supportHomeKitAccessory])
    {
      v13 = [(CSSpeechManager *)self _preMyriadCoordinatorCreateIfNeeded:1];
      [(CSBuiltInVoiceTrigger *)self->_voiceTrigger setDelegate:v13];
      [v13 setBuiltInSeconPassProgressProvider:self->_voiceTrigger];
    }

    else
    {
      v14 = self->_voiceTrigger;
      v13 = [(CSSpeechManager *)self _voiceTriggerEventNotifierCreateIfNeeded:1];
      [(CSBuiltInVoiceTrigger *)v14 setDelegate:v13];
    }

    v15 = +[CSVoiceTriggerXPCServiceProxy sharedInstance];
    [v15 registerObserver:self->_voiceTrigger];
  }

  [(CSSpeechManager *)self _startVoiceTrigger];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001327CC;
  v17[3] = &unk_100252878;
  v17[4] = self;
  v18 = v4;
  v16 = v4;
  [(CSSpeechManager *)self _getVoiceTriggerAssetIfNeeded:v17];
}

- (void)_setupSpeakerRecognitionWithVTAsset:(id)a3
{
  v4 = a3;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[CSSpeechManager _setupSpeakerRecognitionWithVTAsset:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v6 = +[CSUtils supportsPersonalizedHeySiri];
  if (v4 && v6)
  {
    [(CSVoiceProfileRetrainManager *)self->_voiceTriggerRetrainer triggerVoiceProfileRetrainingWithAsset:v4 withSecureAsset:0];
  }

  else
  {
    v7 = [CSUtils getSiriLanguageWithFallback:0];
    v8 = +[CSVoiceProfileRetrainManager sharedInstance];
    voiceTriggerRetrainer = self->_voiceTriggerRetrainer;
    self->_voiceTriggerRetrainer = v8;

    if (+[CSUtils needRetrainingForExclaveOnly])
    {
      v10 = objc_alloc_init(SSRSecureAssetProvider);
      v11 = [v10 fetchSecureAssetForLocale:v7 withAsset:0];
      [(CSVoiceProfileRetrainManager *)self->_voiceTriggerRetrainer triggerVoiceProfileRetrainingWithAsset:0 withSecureAsset:v11];
    }

    else
    {
      v12 = +[SSRAssetManager sharedManager];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1001332F8;
      v13[3] = &unk_100252F10;
      v13[4] = self;
      [v12 getSpeakerRecognitionAssetWithLanguage:v7 completion:v13];
    }
  }
}

- (id)_myriadSelfTriggerCoordinatorIfNeeded:(BOOL)a3
{
  if (a3 && !self->_myriadSelfTriggerCoordinator)
  {
    v4 = objc_alloc_init(CSMyriadSelfTriggerCoordinator);
    myriadSelfTriggerCoordinator = self->_myriadSelfTriggerCoordinator;
    self->_myriadSelfTriggerCoordinator = v4;
  }

  v6 = self->_myriadSelfTriggerCoordinator;

  return v6;
}

- (id)_voiceTriggerFileLoggerCreateIfNeeded:(BOOL)a3
{
  if (a3 && !self->_voiceTriggerFileLogger)
  {
    v4 = objc_alloc_init(CSVoiceTriggerFileLogger);
    voiceTriggerFileLogger = self->_voiceTriggerFileLogger;
    self->_voiceTriggerFileLogger = v4;

    v6 = [(CSSpeechManager *)self _voiceTriggerEventNotifierCreateIfNeeded:1];
    [v6 registerObserver:self->_voiceTriggerFileLogger];
  }

  v7 = self->_voiceTriggerFileLogger;

  return v7;
}

- (id)_preMyriadCoordinatorCreateIfNeeded:(BOOL)a3
{
  if (a3 && !self->_preMyriadCoordinator)
  {
    v4 = objc_alloc_init(CSPreMyriadCoordinator);
    preMyriadCoordinator = self->_preMyriadCoordinator;
    self->_preMyriadCoordinator = v4;

    v6 = self->_preMyriadCoordinator;
    v7 = [(CSSpeechManager *)self _voiceTriggerEventNotifierCreateIfNeeded:1];
    [(CSPreMyriadCoordinator *)v6 setDelegate:v7];
  }

  v8 = self->_preMyriadCoordinator;

  return v8;
}

- (id)_voiceTriggerEventNotifierCreateIfNeeded:(BOOL)a3
{
  if (a3 && !self->_voiceTriggerEventsCoordinator)
  {
    v4 = +[CSVoiceTriggerEventsCoordinator sharedInstance];
    voiceTriggerEventsCoordinator = self->_voiceTriggerEventsCoordinator;
    self->_voiceTriggerEventsCoordinator = v4;

    [(CSVoiceTriggerEventsCoordinator *)self->_voiceTriggerEventsCoordinator start];
    v6 = self->_voiceTriggerEventsCoordinator;
    v7 = +[CSVoiceTriggerStatistics sharedInstance];
    [(CSVoiceTriggerEventsCoordinator *)v6 registerObserver:v7];

    WeakRetained = objc_loadWeakRetained(&self->_clientController);
    if (WeakRetained)
    {
      v9 = self->_voiceTriggerEventsCoordinator;
      v10 = objc_loadWeakRetained(&self->_clientController);
      [(CSVoiceTriggerEventsCoordinator *)v9 registerObserver:v10];
    }
  }

  v11 = self->_voiceTriggerEventsCoordinator;

  return v11;
}

- (void)_getVoiceTriggerAssetIfNeeded:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100133708;
  v6[3] = &unk_100252198;
  v3 = a3;
  v7 = v3;
  v4 = objc_retainBlock(v6);
  if ((+[CSUtils isLocalVoiceTriggerAvailable](CSUtils, "isLocalVoiceTriggerAvailable") & 1) != 0 || +[CSUtils supportBluetoothDeviceVoiceTrigger])
  {
    v5 = +[CSVoiceTriggerAssetHandler sharedHandler];
    [v5 getVoiceTriggerAssetWithEndpointId:0 completion:v4];
  }

  else
  {
    (v4[2])(v4, 0, 0);
  }
}

- (id)audioTapProviderWithType:(unint64_t)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_100131344;
  v13 = sub_100131354;
  v14 = 0;
  if (a3 < 2)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001338AC;
    block[3] = &unk_100252170;
    block[5] = &v9;
    block[6] = a3;
    block[4] = self;
    dispatch_sync(queue, block);
  }

  else
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v4 = 0;
      goto LABEL_6;
    }

    *buf = 136315138;
    v16 = "[CSSpeechManager audioTapProviderWithType:]";
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Requested invalid AudioTapProvider type", buf, 0xCu);
  }

  v4 = v10[5];
LABEL_6:
  v6 = v4;
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)startManager
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[CSSpeechManager startManager]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100133D3C;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_sync(queue, block);
  [(CSSpeechManager *)self _startClearLoggingFilesTimer];
  if (+[CSUtils supportHearstVoiceTrigger])
  {
    v5 = +[CSDeviceActivationEventNotificationHandler sharedInstance];
    [v5 setDelegate:self forType:2];

    v6 = +[CSDeviceActivationEventNotificationHandler sharedInstance];
    [v6 setDelegate:self forType:3];
  }

  if (+[CSUtils supportRemoraVoiceTrigger])
  {
    v7 = +[CSDeviceActivationEventNotificationHandler sharedInstance];
    [v7 setDelegate:self forType:8];
  }

  if (+[CSUtils supportJarvisVoiceTrigger])
  {
    v8 = +[CSDeviceActivationEventNotificationHandler sharedInstance];
    [v8 setDelegate:self forType:6];
  }

  v9 = +[CSOpportuneSpeakEventMonitor sharedInstance];
  [v9 addObserver:self];

  v10 = +[CSAudioServerCrashMonitor sharedInstance];
  [v10 addObserver:self];

  +[CSAudioRecorder createSharedAudioSession];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CSSpeechManager;
  [(CSSpeechManager *)&v4 dealloc];
}

- (CSSpeechManager)init
{
  kdebug_trace();
  v19.receiver = self;
  v19.super_class = CSSpeechManager;
  v3 = [(CSSpeechManager *)&v19 init];
  if (v3)
  {
    CSLogInitIfNeeded();
    v4 = [objc_opt_class() description];
    v5 = [v4 UTF8String];
    v6 = dispatch_get_global_queue(33, 0);
    v7 = dispatch_queue_create_with_target_V2(v5, 0, v6);
    queue = v3->_queue;
    v3->_queue = v7;

    v9 = dispatch_queue_create("CSSpeechManager Asset Query Queue", 0);
    assetQueryQueue = v3->_assetQueryQueue;
    v3->_assetQueryQueue = v9;

    if ((CSIsHorseman() & 1) != 0 || CSIsIOS())
    {
      [(CSSpeechManager *)v3 _createClearLoggingFileTimer];
    }

    v11 = +[NSMutableDictionary dictionary];
    audioProviders = v3->_audioProviders;
    v3->_audioProviders = v11;

    v13 = +[NSMutableDictionary dictionary];
    audioTapProviders = v3->_audioTapProviders;
    v3->_audioTapProviders = v13;

    selfTriggerController = v3->_selfTriggerController;
    v3->_selfTriggerController = 0;

    v16 = +[CSPostBuildInstallService sharedService];
    postBuildInstallService = v3->_postBuildInstallService;
    v3->_postBuildInstallService = v16;

    [(CSPostBuildInstallService *)v3->_postBuildInstallService registerPostBuildInstallService];
    v3->_isExclaveHardware = +[CSUtils isExclaveHardware];
    v3->_assetHandler = +[CSVoiceTriggerAssetHandler sharedHandler];
  }

  kdebug_trace();
  return v3;
}

@end