@interface CSCoreSpeechServicesListener
- (BOOL)_servicesListenerShouldAcceptNewConnection:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (CSCoreSpeechServicesListener)init;
- (void)clearTriggerCount:(id)a3;
- (void)getCurrentVoiceTriggerLocaleWithEndpointId:(id)a3 completion:(id)a4;
- (void)getFirstPassRunningMode:(id)a3;
- (void)getTestResponse:(id)a3;
- (void)getTriggerCount:(id)a3;
- (void)getVoiceTriggerRTModelRequestOptionsWithEndpointId:(id)a3 completion:(id)a4;
- (void)listen;
- (void)requestUpdatedSATAudio:(id)a3;
- (void)setDelayInterstitialSounds:(id)a3 level:(int64_t)a4 completion:(id)a5;
@end

@implementation CSCoreSpeechServicesListener

- (void)getFirstPassRunningMode:(id)a3
{
  v4 = a3;
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
    [(CSGibraltarVoiceTriggerHandler *)gibraltarVoiceTriggerHandler getFirstPassRunningMode:v4];
  }

  else if (v4)
  {
    v4[2](v4, -1);
  }
}

- (void)requestUpdatedSATAudio:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0);
  }
}

- (void)clearTriggerCount:(id)a3
{
  v4 = a3;
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
    [(CSGibraltarVoiceTriggerHandler *)gibraltarVoiceTriggerHandler clearTriggerCount:v4];
  }

  else if (v4)
  {
    v4[2](v4);
  }
}

- (void)getTriggerCount:(id)a3
{
  v4 = a3;
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
    [(CSGibraltarVoiceTriggerHandler *)gibraltarVoiceTriggerHandler getTriggerCount:v4];
  }

  else if (v4)
  {
    v4[2](v4, 0);
  }
}

- (void)setDelayInterstitialSounds:(id)a3 level:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
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
    [(CSGibraltarVoiceTriggerHandler *)gibraltarVoiceTriggerHandler setDelayInterstitialSounds:v8 level:a4 completion:v9];
  }

  else if (v9)
  {
    v12 = [NSError errorWithDomain:CSErrorDomain code:305 userInfo:0];
    v9[2](v9, v12);
  }
}

- (void)getVoiceTriggerRTModelRequestOptionsWithEndpointId:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000595A4;
  v11[3] = &unk_100253718;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, v11);
}

- (void)getCurrentVoiceTriggerLocaleWithEndpointId:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10005994C;
  v11[3] = &unk_100253718;
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, v11);
}

- (void)getTestResponse:(id)a3
{
  v3 = a3;
  v4 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSCoreSpeechServicesListener getTestResponse:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s get test response. return string Test", &v5, 0xCu);
  }

  v3[2](v3, @"Test");
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[CSCoreSpeechServicesListener listener:shouldAcceptNewConnection:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s ", &v12, 0xCu);
  }

  if (self->_servicesListener == v6)
  {
    v10 = [(CSCoreSpeechServicesListener *)self _servicesListenerShouldAcceptNewConnection:v7];
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

- (BOOL)_servicesListenerShouldAcceptNewConnection:(id)a3
{
  v4 = a3;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[CSCoreSpeechServicesListener _servicesListenerShouldAcceptNewConnection:]";
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Received accept request : %{public}@", &v10, 0x16u);
  }

  v6 = sub_1000EA614();
  [v4 setExportedInterface:v6];

  v7 = [CSUtils xpcConnection:v4 hasEntitlement:@"corespeech.xpc"];
  if (v7)
  {
    [v4 setExportedObject:self];
    [v4 setInterruptionHandler:&stru_10024F4A8];
    [v4 setInvalidationHandler:&stru_10024F4C8];
    [v4 resume];
  }

  else
  {
    [v4 invalidate];
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[CSCoreSpeechServicesListener _servicesListenerShouldAcceptNewConnection:]";
      v12 = 2114;
      v13 = v4;
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