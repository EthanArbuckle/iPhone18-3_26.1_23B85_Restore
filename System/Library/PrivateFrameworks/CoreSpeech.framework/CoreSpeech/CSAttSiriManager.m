@interface CSAttSiriManager
- (CSAttSiriManager)initWithAudioProviderSelector:(id)a3;
- (CSAttSiriManager)initWithAudioProviderSelector:(id)a3 attSiriController:(id)a4 icRequestHandler:(id)a5 attendingUsecaseManager:(id)a6 attendingServiceListener:(id)a7 attendingStatesServiceListener:(id)a8 attendingConnectionManager:(id)a9 attendingStatesProvidingProxy:(id)a10;
- (void)_setupAttendingServiceListener;
- (void)_setupAttendingStatesServiceListener;
- (void)setupListeners;
- (void)start;
@end

@implementation CSAttSiriManager

- (void)_setupAttendingStatesServiceListener
{
  if (self->_localAttendingStatesProvidingProxy)
  {
    [(CSAttendingStatesServiceListener *)self->_attendingStatesServiceListener registerAttendingStatesProvidingProxy:?];
    attendingStatesServiceListener = self->_attendingStatesServiceListener;

    [(CSAttendingStatesServiceListener *)attendingStatesServiceListener listen];
  }
}

- (void)_setupAttendingServiceListener
{
  if (self->_attendingUsecaseManager)
  {
    [(CSAttendingServiceListener *)self->_attendingServiceListener registerAttendingUsecaseManager:?];
    [(CSAttendingServiceListener *)self->_attendingServiceListener registerAttendingStatesProvidingProxy:self->_localAttendingStatesProvidingProxy];
    [(CSAttendingServiceListener *)self->_attendingServiceListener resumeConnection];
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      attendingServiceListener = self->_attendingServiceListener;
      v5 = 136315394;
      v6 = "[CSAttSiriManager _setupAttendingServiceListener]";
      v7 = 2112;
      v8 = attendingServiceListener;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s AttendingServiceListener xpc connection started listening: _attendingServiceListener=%@", &v5, 0x16u);
    }
  }
}

- (void)start
{
  [(CSAttSiriController *)self->_attSiriController start];
  icRequestHandler = self->_icRequestHandler;

  [(CSIntuitiveConvRequestHandler *)icRequestHandler start];
}

- (void)setupListeners
{
  attSiriController = self->_attSiriController;
  if (attSiriController)
  {
    v4 = [(CSAttSiriController *)attSiriController getNodeOfType:1];
    v5 = [(CSAttSiriController *)self->_attSiriController getNodeOfType:2];
    v6 = [(CSAttSiriController *)self->_attSiriController getNodeOfType:10];
    connectionManager = self->_connectionManager;
    v8 = [(CSAttSiriController *)self->_attSiriController rcHandler];
    [(CSAttSiriConnectionManager *)connectionManager setupListenersForEndpointerNode:v4 asrNode:v5 ssrNode:v6 rcHandler:v8];
  }

  icRequestHandler = self->_icRequestHandler;
  if (icRequestHandler)
  {
    v10 = self->_connectionManager;
    v11 = [(CSIntuitiveConvRequestHandler *)icRequestHandler getEndpointerProxyObj];
    v12 = [(CSIntuitiveConvRequestHandler *)self->_icRequestHandler getAsrProxyObj];
    v13 = [(CSIntuitiveConvRequestHandler *)self->_icRequestHandler getSsrProxyObj];
    v14 = [(CSIntuitiveConvRequestHandler *)self->_icRequestHandler getRcHandlerProxyObj];
    [(CSAttSiriConnectionManager *)v10 setupListenersForEndpointerNode:v11 asrNode:v12 ssrNode:v13 rcHandler:v14];

    if (+[CSUtils supportsAudioMessage])
    {
      v15 = self->_connectionManager;
      v16 = [(CSIntuitiveConvRequestHandler *)self->_icRequestHandler getAudioMessageServiceProxyObj];
      [(CSAttSiriConnectionManager *)v15 setupAudioMessageServiceListnerWithProxy:v16];
    }
  }

  if (+[CSUtils isMedocFeatureEnabled])
  {
    [(CSAttSiriManager *)self _setupAttendingServiceListener];

    [(CSAttSiriManager *)self _setupAttendingStatesServiceListener];
  }

  else
  {
    v17 = self->_connectionManager;
    v18 = self->_attSiriController;

    [(CSAttSiriConnectionManager *)v17 setupAttSiriServiceListenerWithAttSiriController:?];
  }
}

- (CSAttSiriManager)initWithAudioProviderSelector:(id)a3
{
  v4 = a3;
  if ((+[CSUtils isAttentiveSiriEnabled]& 1) != 0)
  {
    self = [(CSAttSiriManager *)self initWithAudioProviderSelector:v4 attSiriController:0 icRequestHandler:0 attendingUsecaseManager:0 attendingServiceListener:0 attendingStatesServiceListener:0 attendingConnectionManager:0 attendingStatesProvidingProxy:0];
    v5 = self;
  }

  else
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = "[CSAttSiriManager initWithAudioProviderSelector:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Attentive Siri not supported on device", buf, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

- (CSAttSiriManager)initWithAudioProviderSelector:(id)a3 attSiriController:(id)a4 icRequestHandler:(id)a5 attendingUsecaseManager:(id)a6 attendingServiceListener:(id)a7 attendingStatesServiceListener:(id)a8 attendingConnectionManager:(id)a9 attendingStatesProvidingProxy:(id)a10
{
  v16 = a3;
  v51 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v52.receiver = self;
  v52.super_class = CSAttSiriManager;
  v23 = [(CSAttSiriManager *)&v52 init];
  if (v23)
  {
    CSLogInitIfNeeded();
    if (+[CSUtils isMedocFeatureEnabled])
    {
      v24 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v54 = "[CSAttSiriManager initWithAudioProviderSelector:attSiriController:icRequestHandler:attendingUsecaseManager:attendingServiceListener:attendingStatesServiceListener:attendingConnectionManager:attendingStatesProvidingProxy:]";
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s Medoc feature flag is Enabled, swtich to new request handler", buf, 0xCu);
      }

      if (v18)
      {
        v25 = v18;
      }

      else
      {
        v25 = objc_alloc_init(CSAttendingUsecaseManager);
      }

      attendingUsecaseManager = v23->_attendingUsecaseManager;
      v23->_attendingUsecaseManager = v25;

      v27 = [CSLocalAttendingInitiator alloc];
      v28 = [(CSAttendingUsecaseManager *)v23->_attendingUsecaseManager usecaseForType:0 audioProviderSelector:v16];
      v29 = [(CSLocalAttendingInitiator *)v27 initWithAttendingUsecase:v28];
      localAttendingInitiator = v23->_localAttendingInitiator;
      v23->_localAttendingInitiator = v29;

      v31 = [[CSLocalAttendingHintProvider alloc] initWithAttendingIniting:v23->_localAttendingInitiator];
      v32 = objc_alloc_init(CSAttendingStatesMessageHandler);
      attendingStatesMessageHandler = v23->_attendingStatesMessageHandler;
      v23->_attendingStatesMessageHandler = v32;

      if (v22)
      {
        v34 = v22;
      }

      else
      {
        v34 = objc_alloc_init(CSAttendingStatesProvidingProxy);
      }

      localAttendingStatesProvidingProxy = v23->_localAttendingStatesProvidingProxy;
      v23->_localAttendingStatesProvidingProxy = v34;

      [(CSAttendingStatesProvidingProxy *)v23->_localAttendingStatesProvidingProxy registerAttendingHintProvider:v31];
      [(CSAttendingStatesMessageHandler *)v23->_attendingStatesMessageHandler setDelegate:v23->_localAttendingStatesProvidingProxy];
      [(CSLocalAttendingInitiator *)v23->_localAttendingInitiator setDelegate:v23->_attendingStatesMessageHandler];
      v39 = +[CSSiriClientBehaviorMonitor sharedInstance];
      [v39 registerObserver:v23->_localAttendingInitiator];

      v40 = +[CSIntuitiveConvAudioCaptureMonitor sharedInstance];
      [v40 registerObserver:v23->_localAttendingInitiator];

      if (v17)
      {
        v41 = v17;
      }

      else
      {
        v41 = objc_alloc_init(CSIntuitiveConvRequestHandler);
      }

      icRequestHandler = v23->_icRequestHandler;
      v23->_icRequestHandler = v41;

      [(CSIntuitiveConvRequestHandler *)v23->_icRequestHandler setHintProvider:v31];
      [(CSIntuitiveConvRequestHandler *)v23->_icRequestHandler setAttendingStatesMessageHandler:v23->_attendingStatesMessageHandler];
      [(CSAttendingStatesProvidingProxy *)v23->_localAttendingStatesProvidingProxy addDismissUpdateReceiver:v23->_icRequestHandler];
      [(CSAttendingStatesProvidingProxy *)v23->_localAttendingStatesProvidingProxy addSiriPromptUpdateReceiver:v23->_icRequestHandler];
      [(CSAttendingStatesProvidingProxy *)v23->_localAttendingStatesProvidingProxy addDismissUpdateReceiver:v23->_attendingStatesMessageHandler];
      if (v19)
      {
        v43 = v19;
      }

      else
      {
        v43 = [[CSAttendingServiceListener alloc] initWithAudioProviderSelector:v16];
      }

      attendingServiceListener = v23->_attendingServiceListener;
      v23->_attendingServiceListener = v43;

      if (v20)
      {
        v45 = v20;
      }

      else
      {
        v45 = objc_alloc_init(CSAttendingStatesServiceListener);
      }

      attendingStatesServiceListener = v23->_attendingStatesServiceListener;
      v23->_attendingStatesServiceListener = v45;
    }

    else if (v51)
    {
      objc_storeStrong(&v23->_attSiriController, a4);
    }

    else
    {
      v35 = [[CSAttSiriController alloc] initWithAudioProviderSelector:v16];
      attSiriController = v23->_attSiriController;
      v23->_attSiriController = v35;

      v37 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v54 = "[CSAttSiriManager initWithAudioProviderSelector:attSiriController:icRequestHandler:attendingUsecaseManager:attendingServiceListener:attendingStatesServiceListener:attendingConnectionManager:attendingStatesProvidingProxy:]";
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%s Intuitive Conversation Disabled, fallback to attsiri controller", buf, 0xCu);
      }
    }

    if (v21)
    {
      v47 = v21;
    }

    else
    {
      v47 = objc_alloc_init(CSAttSiriConnectionManager);
    }

    connectionManager = v23->_connectionManager;
    v23->_connectionManager = v47;

    v49 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v54 = "[CSAttSiriManager initWithAudioProviderSelector:attSiriController:icRequestHandler:attendingUsecaseManager:attendingServiceListener:attendingStatesServiceListener:attendingConnectionManager:attendingStatesProvidingProxy:]";
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
    }
  }

  return v23;
}

@end