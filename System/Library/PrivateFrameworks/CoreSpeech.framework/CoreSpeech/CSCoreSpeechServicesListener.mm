@interface CSCoreSpeechServicesListener
- (BOOL)_servicesListenerShouldAcceptNewConnection:(id)connection;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CSCoreSpeechServicesListener)init;
- (void)clearTriggerCount:(id)count;
- (void)getCurrentVoiceTriggerLocaleWithEndpointId:(id)id completion:(id)completion;
- (void)getFirstPassRunningMode:(id)mode;
- (void)getTestResponse:(id)response;
- (void)getTriggerCount:(id)count;
- (void)getVoiceTriggerRTModelRequestOptionsWithEndpointId:(id)id completion:(id)completion;
- (void)listen;
- (void)requestUpdatedSATAudio:(id)audio;
- (void)setDelayInterstitialSounds:(id)sounds level:(int64_t)level completion:(id)completion;
@end

@implementation CSCoreSpeechServicesListener

- (void)getFirstPassRunningMode:(id)mode
{
  modeCopy = mode;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[CSCoreSpeechServicesListener getFirstPassRunningMode:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Get FirstPass running mode", &v7, 0xCu);
  }

  gibraltarVoiceTriggerHandler = self->_gibraltarVoiceTriggerHandler;
  if (gibraltarVoiceTriggerHandler)
  {
    [(CSGibraltarVoiceTriggerHandler *)gibraltarVoiceTriggerHandler getFirstPassRunningMode:modeCopy];
  }

  else if (modeCopy)
  {
    modeCopy[2](modeCopy, -1);
  }
}

- (void)requestUpdatedSATAudio:(id)audio
{
  if (audio)
  {
    (*(audio + 2))(audio, 0);
  }
}

- (void)clearTriggerCount:(id)count
{
  countCopy = count;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[CSCoreSpeechServicesListener clearTriggerCount:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Clear Trigger Count", &v7, 0xCu);
  }

  gibraltarVoiceTriggerHandler = self->_gibraltarVoiceTriggerHandler;
  if (gibraltarVoiceTriggerHandler)
  {
    [(CSGibraltarVoiceTriggerHandler *)gibraltarVoiceTriggerHandler clearTriggerCount:countCopy];
  }

  else if (countCopy)
  {
    countCopy[2](countCopy);
  }
}

- (void)getTriggerCount:(id)count
{
  countCopy = count;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[CSCoreSpeechServicesListener getTriggerCount:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Get Trigger Count", &v7, 0xCu);
  }

  gibraltarVoiceTriggerHandler = self->_gibraltarVoiceTriggerHandler;
  if (gibraltarVoiceTriggerHandler)
  {
    [(CSGibraltarVoiceTriggerHandler *)gibraltarVoiceTriggerHandler getTriggerCount:countCopy];
  }

  else if (countCopy)
  {
    countCopy[2](countCopy, 0);
  }
}

- (void)setDelayInterstitialSounds:(id)sounds level:(int64_t)level completion:(id)completion
{
  soundsCopy = sounds;
  completionCopy = completion;
  v10 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[CSCoreSpeechServicesListener setDelayInterstitialSounds:level:completion:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Setting Delay Interstitial Sound", &v13, 0xCu);
  }

  gibraltarVoiceTriggerHandler = self->_gibraltarVoiceTriggerHandler;
  if (gibraltarVoiceTriggerHandler)
  {
    [(CSGibraltarVoiceTriggerHandler *)gibraltarVoiceTriggerHandler setDelayInterstitialSounds:soundsCopy level:level completion:completionCopy];
  }

  else if (completionCopy)
  {
    v12 = [NSError errorWithDomain:CSErrorDomain code:305 userInfo:0];
    completionCopy[2](completionCopy, v12);
  }
}

- (void)getVoiceTriggerRTModelRequestOptionsWithEndpointId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000595A4;
  v11[3] = &unk_100253718;
  v12 = idCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = idCopy;
  dispatch_async(queue, v11);
}

- (void)getCurrentVoiceTriggerLocaleWithEndpointId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10005994C;
  v11[3] = &unk_100253718;
  v12 = idCopy;
  v13 = completionCopy;
  v9 = idCopy;
  v10 = completionCopy;
  dispatch_async(queue, v11);
}

- (void)getTestResponse:(id)response
{
  responseCopy = response;
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSCoreSpeechServicesListener getTestResponse:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s get test response. return string Test", &v5, 0xCu);
  }

  responseCopy[2](responseCopy, @"Test");
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[CSCoreSpeechServicesListener listener:shouldAcceptNewConnection:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s ", &v12, 0xCu);
  }

  if (self->_servicesListener == listenerCopy)
  {
    v10 = [(CSCoreSpeechServicesListener *)self _servicesListenerShouldAcceptNewConnection:connectionCopy];
  }

  else
  {
    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "[CSCoreSpeechServicesListener listener:shouldAcceptNewConnection:]";
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s we got unknown types of XPC connection request", &v12, 0xCu);
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)_servicesListenerShouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[CSCoreSpeechServicesListener _servicesListenerShouldAcceptNewConnection:]";
    v12 = 2114;
    v13 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Received accept request : %{public}@", &v10, 0x16u);
  }

  v6 = sub_1000EA614();
  [connectionCopy setExportedInterface:v6];

  v7 = [CSUtils xpcConnection:connectionCopy hasEntitlement:@"corespeech.xpc"];
  if (v7)
  {
    [connectionCopy setExportedObject:self];
    [connectionCopy setInterruptionHandler:&stru_10024F4A8];
    [connectionCopy setInvalidationHandler:&stru_10024F4C8];
    [connectionCopy resume];
  }

  else
  {
    [connectionCopy invalidate];
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[CSCoreSpeechServicesListener _servicesListenerShouldAcceptNewConnection:]";
      v12 = 2114;
      v13 = connectionCopy;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Connectin request %{public}@ rejected due to missing entitlement", &v10, 0x16u);
    }
  }

  return v7;
}

- (void)listen
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSCoreSpeechServicesListener listen]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Register CoreSpeech Services", &v6, 0xCu);
  }

  v4 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.corespeech.corespeechservices"];
  servicesListener = self->_servicesListener;
  self->_servicesListener = v4;

  [(NSXPCListener *)self->_servicesListener setDelegate:self];
  [(NSXPCListener *)self->_servicesListener resume];
}

- (CSCoreSpeechServicesListener)init
{
  v6.receiver = self;
  v6.super_class = CSCoreSpeechServicesListener;
  v2 = [(CSCoreSpeechServicesListener *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSCoreSpeechServicesListener", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

@end