@interface CSHostDaemon
+ (id)sharedDaemon;
- (CSHostDaemon)init;
- (void)_daemonDidLaunch;
- (void)_daemonWillShutdown;
- (void)_setupNotifyHandlers;
@end

@implementation CSHostDaemon

- (void)_daemonWillShutdown
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSHostDaemon _daemonWillShutdown]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Daemon WillShutdown", &v4, 0xCu);
  }

  [(CSDarwinVoiceTriggerHandlerPool *)self->_darwinVoiceTriggerHandlerPool stop];
}

- (void)_setupNotifyHandlers
{
  queue = self->_queue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100003A08;
  handler[3] = &unk_100252758;
  handler[4] = self;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", queue, handler);
}

- (void)_daemonDidLaunch
{
  [(CSHostDaemon *)self _setupNotifyHandlers];
  [(CSHostDaemon *)self _setupDistnoteHandlers];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[CSHostDaemon _daemonDidLaunch]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s CSHostDaemon didLaunch", &v13, 0xCu);
  }

  v4 = objc_alloc_init(CSCoreSpeechDKeepAliveHandler);
  keepAliveHandler = self->_keepAliveHandler;
  self->_keepAliveHandler = v4;

  [(CSCoreSpeechDKeepAliveHandler *)self->_keepAliveHandler start];
  [(CSSpeechManager *)self->_speechManager startManager];
  [(CSAttSiriManager *)self->_attSiriManager setup];
  [(CSXPCListener *)self->_xpcListener listen];
  [(CSDeviceActivationXPCListener *)self->_activationXpcListener listen];
  [(CSVoiceIdXPCListener *)self->_voiceIdXpcListener listen];
  [(CSVoiceTriggerXPCListener *)self->_voiceTriggerXpcListener listen];
  [(CSAudioInjectionXPCListener *)self->_audioInjectionXpcListener listen];
  [(CSAttSiriManager *)self->_attSiriManager setupListeners];
  [(CSCoreSpeechServicesListener *)self->_corespeechServiceListener listen];
  [(CSBenchmarkXPCListener *)self->_benchmarkXpcListener listen];
  [(SSRRPISamplingXPCListener *)self->_samplingXPCLListener listen];
  [(CSAudioPowerServiceListener *)self->_audioPowerServiceListener listen];
  [(SSRVoiceProfileManagerXPCListener *)self->_voiceProfileManagerXPCListener listen];
  [(CSSpeechUaapXPCListener *)self->_uaapServiceListener listen];
  if (_os_feature_enabled_impl())
  {
    sub_100061E10(0, 0, 0);
  }

  [(SSRVTUITrainingListener *)self->_vtuiTrainingListener listen];
  v6 = +[CSConnectionListener createSmartSiriVolumeListener];
  v7 = +[CSCoreSpeechDaemonStateMonitor sharedInstance];
  [v7 notifyDaemonStateChanged:1];

  [(CSAttSiriManager *)self->_attSiriManager start];
  [(CSSpeechModelTrainingXPCManager *)self->_speechModelTrainingXpcManager registerXPCActivities];
  [(CESRBackgroundSystemTask *)self->_cesrBGSTScheduler registerAndSubmitBGSystemTasks];
  [(CESRSpeechProfileDispatcher *)self->_cesrSpeechProfileDispatcher setupXPCListeners];
  v8 = [CSDarwinVoiceTriggerHandlerPool alloc];
  v9 = +[CSVoiceTriggerEventsCoordinator sharedInstance];
  v10 = [(CSDarwinVoiceTriggerHandlerPool *)v8 initWithVoiceTriggerEventsCoordinator:v9];
  darwinVoiceTriggerHandlerPool = self->_darwinVoiceTriggerHandlerPool;
  self->_darwinVoiceTriggerHandlerPool = v10;

  [(CSDarwinVoiceTriggerHandlerPool *)self->_darwinVoiceTriggerHandlerPool start];
  v12 = +[CSBluetoothManager sharedInstance];
  [(CSXPCActivity *)self->_csXPCActivity registerXPCActivities];
  [(SSRSpeakerProfileEmbeddingServiceListener *)self->_speakerProfileEmbeddingServiceListener resumeConnection];
  dispatch_activate(self->_queue);
}

- (CSHostDaemon)init
{
  v52.receiver = self;
  v52.super_class = CSHostDaemon;
  v2 = [(CSHostDaemon *)&v52 init];
  if (v2)
  {
    CSLogInitIfNeeded();
    signal(15, 1);
    v3 = dispatch_get_global_queue(25, 0);
    v4 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v3);
    v5 = *(v2 + 18);
    *(v2 + 18) = v4;

    v6 = *(v2 + 18);
    if (v6)
    {
      dispatch_source_set_event_handler(v6, &stru_100252710);
      dispatch_resume(*(v2 + 18));
    }

    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v8 = dispatch_queue_attr_make_initially_inactive(v7);

    v9 = dispatch_queue_create("CSHostDaemon", v8);
    v10 = *(v2 + 17);
    *(v2 + 17) = v9;

    v11 = +[CSSpeechManager sharedManager];
    v12 = *(v2 + 1);
    *(v2 + 1) = v11;

    v13 = objc_alloc_init(CSXPCListener);
    v14 = *(v2 + 2);
    *(v2 + 2) = v13;

    v15 = objc_alloc_init(CSDeviceActivationXPCListener);
    v16 = *(v2 + 3);
    *(v2 + 3) = v15;

    v17 = objc_alloc_init(CSVoiceIdXPCListener);
    v18 = *(v2 + 4);
    *(v2 + 4) = v17;

    v19 = objc_alloc_init(CSVoiceTriggerXPCListener);
    v20 = *(v2 + 5);
    *(v2 + 5) = v19;

    v21 = objc_alloc_init(CSAudioInjectionXPCListener);
    v22 = *(v2 + 6);
    *(v2 + 6) = v21;

    v23 = [[CSAttSiriManager alloc] initWithAudioProviderSelector:*(v2 + 1)];
    v24 = *(v2 + 7);
    *(v2 + 7) = v23;

    v25 = objc_alloc_init(CSCoreSpeechServicesListener);
    v26 = *(v2 + 8);
    *(v2 + 8) = v25;

    v27 = objc_alloc_init(CSSpeechModelTrainingXPCManager);
    v28 = *(v2 + 11);
    *(v2 + 11) = v27;

    v29 = objc_alloc_init(CSBenchmarkXPCListener);
    v30 = *(v2 + 12);
    *(v2 + 12) = v29;

    if (CSIsIOS())
    {
      v31 = objc_alloc_init(SSRRPISamplingXPCListener);
      v32 = *(v2 + 15);
      *(v2 + 15) = v31;
    }

    v33 = objc_alloc_init(CSAudioPowerServiceListener);
    v34 = *(v2 + 9);
    *(v2 + 9) = v33;

    v35 = objc_alloc_init(SSRVoiceProfileManagerXPCListener);
    v36 = *(v2 + 16);
    *(v2 + 16) = v35;

    v37 = objc_alloc_init(CSSpeechUaapXPCListener);
    v38 = *(v2 + 10);
    *(v2 + 10) = v37;

    if (+[CSUtils isExclaveHardware])
    {
      v39 = [[SSRVTUITrainingMessageHandler alloc] initWithAudioProvidingSelector:*(v2 + 1)];
      v40 = *(v2 + 23);
      *(v2 + 23) = v39;

      v41 = [[SSRVTUITrainingListener alloc] initWithMessageHandler:*(v2 + 23)];
      v42 = *(v2 + 13);
      *(v2 + 13) = v41;
    }

    v43 = objc_alloc_init(CESRBackgroundSystemTask);
    v44 = *(v2 + 20);
    *(v2 + 20) = v43;

    v45 = objc_alloc_init(CSXPCActivity);
    v46 = *(v2 + 21);
    *(v2 + 21) = v45;

    v47 = +[CESRSpeechProfileDispatcher sharedDispatcher];
    v48 = *(v2 + 22);
    *(v2 + 22) = v47;

    v49 = objc_alloc_init(CSAssetDownloadingOption);
    [(CSAssetDownloadingOption *)v49 setAllowVoiceTriggerAssetDownloading:1];
    [(CSAssetDownloadingOption *)v49 setAllowVoiceTriggerAccessoryAssetDownloading:1];
    v50 = +[CSAssetManager sharedManager];
    [v50 setAssetDownloadingOption:v49];
  }

  return v2;
}

+ (id)sharedDaemon
{
  if (qword_10029E4E0 != -1)
  {
    dispatch_once(&qword_10029E4E0, &stru_1002526F0);
  }

  v3 = qword_10029E4D8;

  return v3;
}

@end