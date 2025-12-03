@interface CSFallbackAudioSessionReleaseProvidingProxy
- (CSClientXPCConnection)xpcConnection;
- (CSFallbackAudioSessionReleaseProvidingProxy)initWithXPCConnection:(id)connection;
- (void)_handleDeactivateAudioSessionRequestMessage:(id)message messageBody:(id)body client:(id)client;
- (void)_sendReply:(id)reply client:(id)client result:(BOOL)result error:(id)error;
- (void)handleXPCMessage:(id)message messageBody:(id)body client:(id)client;
@end

@implementation CSFallbackAudioSessionReleaseProvidingProxy

- (CSClientXPCConnection)xpcConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);

  return WeakRetained;
}

- (void)_sendReply:(id)reply client:(id)client result:(BOOL)result error:(id)error
{
  connection = client;
  errorCopy = error;
  reply = xpc_dictionary_create_reply(reply);
  xpc_dictionary_set_BOOL(reply, "result", result);
  if (errorCopy)
  {
    domain = [errorCopy domain];
    xpc_dictionary_set_string(reply, "resultErrorDomain", [domain UTF8String]);

    xpc_dictionary_set_int64(reply, "resultErrorCode", [errorCopy code]);
  }

  xpc_connection_send_message(connection, reply);
}

- (void)_handleDeactivateAudioSessionRequestMessage:(id)message messageBody:(id)body client:(id)client
{
  clientCopy = client;
  messageCopy = message;
  int64 = xpc_dictionary_get_int64(body, "option");
  v11 = +[CSSpeechManager sharedManager];
  fetchFallbackAudioSessionReleaseProvider = [v11 fetchFallbackAudioSessionReleaseProvider];

  if (fetchFallbackAudioSessionReleaseProvider)
  {
    v16 = 0;
    v13 = [fetchFallbackAudioSessionReleaseProvider fallbackDeactivateAudioSession:int64 error:&v16];
    v14 = v16;
    [(CSFallbackAudioSessionReleaseProvidingProxy *)self _sendReply:messageCopy client:clientCopy result:v13 error:v14];
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

    [(CSFallbackAudioSessionReleaseProvidingProxy *)self _sendReply:messageCopy client:clientCopy result:0 error:0];
  }
}

- (void)handleXPCMessage:(id)message messageBody:(id)body client:(id)client
{
  messageCopy = message;
  bodyCopy = body;
  clientCopy = client;
  int64 = xpc_dictionary_get_int64(bodyCopy, "type");
  if (int64 == 1)
  {
    [(CSFallbackAudioSessionReleaseProvidingProxy *)self _handleDeactivateAudioSessionRequestMessage:messageCopy messageBody:bodyCopy client:clientCopy];
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

- (CSFallbackAudioSessionReleaseProvidingProxy)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  v8.receiver = self;
  v8.super_class = CSFallbackAudioSessionReleaseProvidingProxy;
  v5 = [(CSFallbackAudioSessionReleaseProvidingProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CSFallbackAudioSessionReleaseProvidingProxy *)v5 setXpcConnection:connectionCopy];
  }

  return v6;
}

@end