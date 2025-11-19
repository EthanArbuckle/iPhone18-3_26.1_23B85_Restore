@interface CSFallbackAudioSessionReleaseProvidingProxy
- (CSClientXPCConnection)xpcConnection;
- (CSFallbackAudioSessionReleaseProvidingProxy)initWithXPCConnection:(id)a3;
- (void)_handleDeactivateAudioSessionRequestMessage:(id)a3 messageBody:(id)a4 client:(id)a5;
- (void)_sendReply:(id)a3 client:(id)a4 result:(BOOL)a5 error:(id)a6;
- (void)handleXPCMessage:(id)a3 messageBody:(id)a4 client:(id)a5;
@end

@implementation CSFallbackAudioSessionReleaseProvidingProxy

- (CSClientXPCConnection)xpcConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);

  return WeakRetained;
}

- (void)_sendReply:(id)a3 client:(id)a4 result:(BOOL)a5 error:(id)a6
{
  connection = a4;
  v9 = a6;
  reply = xpc_dictionary_create_reply(a3);
  xpc_dictionary_set_BOOL(reply, "result", a5);
  if (v9)
  {
    v11 = [v9 domain];
    xpc_dictionary_set_string(reply, "resultErrorDomain", [v11 UTF8String]);

    xpc_dictionary_set_int64(reply, "resultErrorCode", [v9 code]);
  }

  xpc_connection_send_message(connection, reply);
}

- (void)_handleDeactivateAudioSessionRequestMessage:(id)a3 messageBody:(id)a4 client:(id)a5
{
  v8 = a5;
  v9 = a3;
  int64 = xpc_dictionary_get_int64(a4, "option");
  v11 = +[CSSpeechManager sharedManager];
  v12 = [v11 fetchFallbackAudioSessionReleaseProvider];

  if (v12)
  {
    v16 = 0;
    v13 = [v12 fallbackDeactivateAudioSession:int64 error:&v16];
    v14 = v16;
    [(CSFallbackAudioSessionReleaseProvidingProxy *)self _sendReply:v9 client:v8 result:v13 error:v14];
  }

  else
  {
    v15 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v18 = "[CSFallbackAudioSessionReleaseProvidingProxy _handleDeactivateAudioSessionRequestMessage:messageBody:client:]";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s CSFallbackAudioSessionReleaseProvider is nil from CSSpeechManager", buf, 0xCu);
    }

    [(CSFallbackAudioSessionReleaseProvidingProxy *)self _sendReply:v9 client:v8 result:0 error:0];
  }
}

- (void)handleXPCMessage:(id)a3 messageBody:(id)a4 client:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  int64 = xpc_dictionary_get_int64(v9, "type");
  if (int64 == 1)
  {
    [(CSFallbackAudioSessionReleaseProvidingProxy *)self _handleDeactivateAudioSessionRequestMessage:v8 messageBody:v9 client:v10];
  }

  else
  {
    v12 = int64;
    v13 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "[CSFallbackAudioSessionReleaseProvidingProxy handleXPCMessage:messageBody:client:]";
      v16 = 2048;
      v17 = v12;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Cannot handle unexpected message type : %lld", &v14, 0x16u);
    }
  }
}

- (CSFallbackAudioSessionReleaseProvidingProxy)initWithXPCConnection:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CSFallbackAudioSessionReleaseProvidingProxy;
  v5 = [(CSFallbackAudioSessionReleaseProvidingProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CSFallbackAudioSessionReleaseProvidingProxy *)v5 setXpcConnection:v4];
  }

  return v6;
}

@end