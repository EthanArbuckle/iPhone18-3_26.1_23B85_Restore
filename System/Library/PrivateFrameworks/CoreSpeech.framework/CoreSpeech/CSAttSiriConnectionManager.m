@interface CSAttSiriConnectionManager
- (CSAttSiriConnectionManager)init;
- (void)_setupEndpointListenerWithEndpointerNode:(id)a3;
- (void)_setupRCProcessingListenerWithRCHandler:(id)a3;
- (void)_setupSSRListenerWithSSRNode:(id)a3;
- (void)setupAttSiriServiceListenerWithAttSiriController:(id)a3;
- (void)setupAudioMessageServiceListnerWithProxy:(id)a3;
- (void)setupListenersForEndpointerNode:(id)a3 asrNode:(id)a4 ssrNode:(id)a5 rcHandler:(id)a6;
- (void)setupLocalSpeechRecognitionListenerWithXPCListener:(id)a3 machService:(id)a4 asrNode:(id)a5 ssrNode:(id)a6;
@end

@implementation CSAttSiriConnectionManager

- (void)_setupRCProcessingListenerWithRCHandler:(id)a3
{
  v4 = a3;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CSRCHandlingXPCService];
  v6 = [CSUtils getSerialQueue:@"com.apple.CoreSpeech.Connection.Listener.rchandling" qualityOfService:33];
  v7 = [[CSConnectionListener alloc] initWithMachService:@"com.apple.corespeech.corespeechd.rchandling.service" withServiceInterface:v5 withServiceObject:v4 withDelegateInterface:0 queue:v6];

  rcProcessingListener = self->_rcProcessingListener;
  self->_rcProcessingListener = v7;

  [(CSConnectionListener *)self->_rcProcessingListener resumeConnection];
  v9 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[CSAttSiriConnectionManager _setupRCProcessingListenerWithRCHandler:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s RC Processing xpc connection started listening", &v10, 0xCu);
  }
}

- (void)_setupSSRListenerWithSSRNode:(id)a3
{
  v4 = a3;
  if (!CSIsCommunalDevice())
  {
LABEL_5:
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "[CSAttSiriConnectionManager _setupSSRListenerWithSSRNode:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Not setting up SSR xpc listener since its not a communal device", &v13, 0xCu);
    }

    goto LABEL_10;
  }

  if (+[CSUtils shouldDisableSpeakerRecognition])
  {
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "[CSAttSiriConnectionManager _setupSSRListenerWithSSRNode:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Overriding SSR setting for xpc listener", &v13, 0xCu);
    }

    goto LABEL_5;
  }

  v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CSSSRXPCService];
  v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CSSSRXPCServiceDelegate];
  v9 = [CSUtils getSerialQueue:@"com.apple.CoreSpeech.Connection.Listener.ssr" qualityOfService:33];
  v10 = [[CSConnectionListener alloc] initWithMachService:@"com.apple.corespeech.corespeechd.ssr.service" withServiceInterface:v7 withServiceObject:v4 withDelegateInterface:v8 queue:v9];
  ssrListener = self->_ssrListener;
  self->_ssrListener = v10;

  [v4 setSsrListener:self->_ssrListener];
  [(CSConnectionListener *)self->_ssrListener resumeConnection];
  v12 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[CSAttSiriConnectionManager _setupSSRListenerWithSSRNode:]";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s SSR xpc connection started listening", &v13, 0xCu);
  }

LABEL_10:
}

- (void)_setupEndpointListenerWithEndpointerNode:(id)a3
{
  v4 = a3;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CSEndpointerXPCService];
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CSEndpointerXPCServiceDelegate];
  v7 = [CSUtils getSerialQueue:@"com.apple.CoreSpeech.Connection.Listener.endpointer" qualityOfService:33];
  v8 = [[CSConnectionListener alloc] initWithMachService:@"com.apple.corespeech.corespeechd.endpointer.service" withServiceInterface:v5 withServiceObject:v4 withDelegateInterface:v6 queue:v7];
  endpointerListener = self->_endpointerListener;
  self->_endpointerListener = v8;

  [v4 setEndpointerListener:self->_endpointerListener];
  [(CSConnectionListener *)self->_endpointerListener resumeConnection];
  v10 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[CSAttSiriConnectionManager _setupEndpointListenerWithEndpointerNode:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Endpointer xpc connection started listening", &v11, 0xCu);
  }
}

- (void)setupAudioMessageServiceListnerWithProxy:(id)a3
{
  v4 = a3;
  v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CSSiriAudioMessageRequestService];
  v5 = [CSUtils getSerialQueue:@"AudioMessageServiceListener" qualityOfService:33];
  v6 = [[CSConnectionListener alloc] initWithMachService:@"com.apple.siri.audio_message_service.xpc" withServiceInterface:v8 withServiceObject:v4 withDelegateInterface:0 queue:v5];

  audioMessageServiceListener = self->_audioMessageServiceListener;
  self->_audioMessageServiceListener = v6;

  [(CSConnectionListener *)self->_audioMessageServiceListener resumeConnection];
}

- (void)setupLocalSpeechRecognitionListenerWithXPCListener:(id)a3 machService:(id)a4 asrNode:(id)a5 ssrNode:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ((+[CSUtils supportsSpeechRecognitionOnDevice](CSUtils, "supportsSpeechRecognitionOnDevice") & 1) != 0 || (+[CSUtils supportsHybridUnderstandingOnDevice](CSUtils, "supportsHybridUnderstandingOnDevice") & 1) != 0 || (+[CSUtils supportVoiceID]& 1) != 0)
  {
    v14 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___LBLocalSpeechService];
    v15 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___LBLocalSpeechServiceDelegate];
    v16 = [CSUtils getSerialQueue:@"com.apple.CoreSpeech.Connection.Listener.asr" qualityOfService:33];
    v17 = [CSConnectionListener alloc];
    if (v10)
    {
      v18 = [(CSConnectionListener *)v17 initWithXpcListener:v10 withMachService:v11 withServiceInterface:v14 withServiceObject:v12 withDelegateInterface:v15 queue:v16];
    }

    else
    {
      v18 = [(CSConnectionListener *)v17 initWithMachService:v11 withServiceInterface:v14 withServiceObject:v12 withDelegateInterface:v15 queue:v16];
    }

    localSpeechRecognitionListener = self->_localSpeechRecognitionListener;
    self->_localSpeechRecognitionListener = v18;

    [v12 setLocalSRBridgeListener:self->_localSpeechRecognitionListener];
    [v13 setLocalSRBridgeListener:self->_localSpeechRecognitionListener];
    [(CSConnectionListener *)self->_localSpeechRecognitionListener resumeConnection];
    v20 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315138;
      v23 = "[CSAttSiriConnectionManager setupLocalSpeechRecognitionListenerWithXPCListener:machService:asrNode:ssrNode:]";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s LocalSpeechRecognition xpc connection started listening", &v22, 0xCu);
    }
  }

  else
  {
    v21 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315138;
      v23 = "[CSAttSiriConnectionManager setupLocalSpeechRecognitionListenerWithXPCListener:machService:asrNode:ssrNode:]";
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s Doesn't support ASR on Device", &v22, 0xCu);
    }
  }
}

- (void)setupAttSiriServiceListenerWithAttSiriController:(id)a3
{
  v4 = a3;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CSAttSiriServiceProtocol];
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CSAttSiriServiceDelegate];
  v7 = [[CSConnectionListener alloc] initWithMachService:@"com.apple.corespeech.corespeechd.attsiri.service" withServiceInterface:v5 withServiceObject:v4 withDelegateInterface:v6];
  attSiriSvcListener = self->_attSiriSvcListener;
  self->_attSiriSvcListener = v7;

  [v4 setAttSiriSvcListener:self->_attSiriSvcListener];
  [(CSConnectionListener *)self->_attSiriSvcListener resumeConnection];
  v9 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v10 = self->_attSiriSvcListener;
    v11 = 136315394;
    v12 = "[CSAttSiriConnectionManager setupAttSiriServiceListenerWithAttSiriController:]";
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s AttSiriServiceListener xpc connection started listening: _attSiriSvcListener=%@", &v11, 0x16u);
  }
}

- (void)setupListenersForEndpointerNode:(id)a3 asrNode:(id)a4 ssrNode:(id)a5 rcHandler:(id)a6
{
  v12 = a6;
  v10 = a5;
  v11 = a4;
  [(CSAttSiriConnectionManager *)self _setupEndpointListenerWithEndpointerNode:a3];
  [(CSAttSiriConnectionManager *)self setupLocalSpeechRecognitionListenerWithXPCListener:0 machService:LBLocalSpeechServiceName asrNode:v11 ssrNode:v10];

  [(CSAttSiriConnectionManager *)self _setupSSRListenerWithSSRNode:v10];
  [(CSAttSiriConnectionManager *)self _setupRCProcessingListenerWithRCHandler:v12];
}

- (CSAttSiriConnectionManager)init
{
  v3.receiver = self;
  v3.super_class = CSAttSiriConnectionManager;
  return [(CSAttSiriConnectionManager *)&v3 init];
}

@end