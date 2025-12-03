@interface CSAudioAlertProvidingProxy
- (CSAudioAlertProviding)audioAlertProvider;
- (CSAudioAlertProvidingProxy)initWithXPCConnection:(id)connection;
- (CSClientXPCConnection)xpcConnection;
- (void)_handleAlertProvidingRequestTypeAlertStartTimeMessage:(id)message messageBody:(id)body client:(id)client;
- (void)_handleAlertProvidingRequestTypeConfigureAlertBehavior:(id)behavior messageBody:(id)body client:(id)client;
- (void)_handleAlertProvidingRequestTypePlayAlertSoundMessage:(id)message messageBody:(id)body client:(id)client;
- (void)_handleAlertProvidingRequestTypePlayRecordStartingAlertAndResetEndpointerMessage:(id)message messageBody:(id)body client:(id)client;
- (void)_handleAlertProvidingRequestTypeSetAlertSoundMessage:(id)message messageBody:(id)body client:(id)client;
- (void)_sendDelegateMessageToClient:(id)client;
- (void)_sendReplyMessageWithResult:(BOOL)result event:(id)event client:(id)client;
- (void)audioAlertProvidingDidFinishAlertPlayback:(id)playback ofType:(int64_t)type error:(id)error;
- (void)handleXPCMessage:(id)message messageBody:(id)body client:(id)client;
@end

@implementation CSAudioAlertProvidingProxy

- (CSAudioAlertProviding)audioAlertProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_audioAlertProvider);

  return WeakRetained;
}

- (CSClientXPCConnection)xpcConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);

  return WeakRetained;
}

- (void)_sendDelegateMessageToClient:(id)client
{
  clientCopy = client;
  *keys = *off_100252E40;
  v9[0] = xpc_int64_create(7);
  v5 = clientCopy;
  v9[1] = v5;
  v6 = xpc_dictionary_create(keys, v9, 2uLL);
  xpcConnection = [(CSAudioAlertProvidingProxy *)self xpcConnection];
  [xpcConnection sendMessageToClient:v6];

  for (i = 1; i != -1; --i)
  {
  }
}

- (void)audioAlertProvidingDidFinishAlertPlayback:(id)playback ofType:(int64_t)type error:(id)error
{
  playbackCopy = playback;
  errorCopy = error;
  v10 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[CSAudioAlertProvidingProxy audioAlertProvidingDidFinishAlertPlayback:ofType:error:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  *buf = *off_100252E30;
  v15[0] = xpc_int64_create(1);
  v15[1] = xpc_int64_create(type);
  v11 = xpc_dictionary_create(buf, v15, 2uLL);
  if (errorCopy)
  {
    domain = [errorCopy domain];
    v13 = domain;
    xpc_dictionary_set_string(v11, "errorDomain", [domain UTF8String]);

    xpc_dictionary_set_int64(v11, "errorCode", [errorCopy code]);
  }

  [(CSAudioAlertProvidingProxy *)self _sendDelegateMessageToClient:v11, v15[0]];

  for (i = 1; i != -1; --i)
  {
  }
}

- (void)_sendReplyMessageWithResult:(BOOL)result event:(id)event client:(id)client
{
  clientCopy = client;
  message = xpc_dictionary_create_reply(event);
  xpc_dictionary_set_BOOL(message, "result", result);
  xpc_connection_send_message(clientCopy, message);
}

- (void)_handleAlertProvidingRequestTypeConfigureAlertBehavior:(id)behavior messageBody:(id)body client:(id)client
{
  v6 = xpc_dictionary_get_dictionary(body, "alertBehavior");
  if (v6)
  {
    v7 = [NSDictionary alloc];
    v8 = [v7 _cs_initWithXPCObject:v6];

    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315394;
      v15 = "[CSAudioAlertProvidingProxy _handleAlertProvidingRequestTypeConfigureAlertBehavior:messageBody:client:]";
      v16 = 2114;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Alert behavior : %{public}@", &v14, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_audioAlertProvider);

    if (WeakRetained)
    {
      v11 = objc_loadWeakRetained(&self->_audioAlertProvider);
      [v11 configureAlertBehavior:v8];
    }

    else
    {
      v13 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v14 = 136315138;
        v15 = "[CSAudioAlertProvidingProxy _handleAlertProvidingRequestTypeConfigureAlertBehavior:messageBody:client:]";
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s audioAlertProvider not existing", &v14, 0xCu);
      }
    }
  }

  else
  {
    v12 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315138;
      v15 = "[CSAudioAlertProvidingProxy _handleAlertProvidingRequestTypeConfigureAlertBehavior:messageBody:client:]";
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Invalid alert behavior", &v14, 0xCu);
    }
  }
}

- (void)_handleAlertProvidingRequestTypeAlertStartTimeMessage:(id)message messageBody:(id)body client:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_10014EB74;
  v20 = &unk_100252E10;
  v9 = messageCopy;
  v21 = v9;
  v10 = clientCopy;
  v22 = v10;
  v11 = objc_retainBlock(&v17);
  WeakRetained = objc_loadWeakRetained(&self->_audioAlertProvider);

  if (WeakRetained)
  {
    v13 = objc_loadWeakRetained(&self->_audioAlertProvider);
    alertStartTime = [v13 alertStartTime];

    v15 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v24 = "[CSAudioAlertProvidingProxy _handleAlertProvidingRequestTypeAlertStartTimeMessage:messageBody:client:]";
      v25 = 2050;
      v26 = alertStartTime;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s alertStartTime = %{public}llu", buf, 0x16u);
    }

    (v11[2])(v11, 1, alertStartTime);
  }

  else
  {
    v16 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v24 = "[CSAudioAlertProvidingProxy _handleAlertProvidingRequestTypeAlertStartTimeMessage:messageBody:client:]";
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s audioAlertProvider not existing", buf, 0xCu);
    }

    (v11[2])(v11, 0, 0);
  }
}

- (void)_handleAlertProvidingRequestTypePlayRecordStartingAlertAndResetEndpointerMessage:(id)message messageBody:(id)body client:(id)client
{
  bodyCopy = body;
  clientCopy = client;
  messageCopy = message;
  WeakRetained = objc_loadWeakRetained(&self->_audioAlertProvider);

  if (WeakRetained)
  {
    int64 = xpc_dictionary_get_int64(bodyCopy, "startAlertOverride");
    v13 = objc_loadWeakRetained(&self->_audioAlertProvider);
    v14 = [v13 playRecordStartingAlertAndResetEndpointerWithAlertOverride:int64];

    v15 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v16 = @"NO";
      *&v18[4] = "[CSAudioAlertProvidingProxy _handleAlertProvidingRequestTypePlayRecordStartingAlertAndResetEndpointerMessage:messageBody:client:]";
      *v18 = 136315650;
      if (v14)
      {
        v16 = @"YES";
      }

      *&v18[12] = 2048;
      *&v18[14] = int64;
      v19 = 2114;
      v20 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s playRecordStartingAlertAndResetEndpointerWithAlertOverride %lu successful ? %{public}@", v18, 0x20u);
    }
  }

  else
  {
    v17 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *v18 = 136315138;
      *&v18[4] = "[CSAudioAlertProvidingProxy _handleAlertProvidingRequestTypePlayRecordStartingAlertAndResetEndpointerMessage:messageBody:client:]";
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s audioAlertProvider not existing", v18, 0xCu);
    }

    v14 = 0;
  }

  [(CSAudioAlertProvidingProxy *)self _sendReplyMessageWithResult:v14 event:messageCopy client:clientCopy, *v18];
}

- (void)_handleAlertProvidingRequestTypePlayAlertSoundMessage:(id)message messageBody:(id)body client:(id)client
{
  messageCopy = message;
  clientCopy = client;
  int64 = xpc_dictionary_get_int64(body, "alertType");
  v11 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315394;
    v19 = "[CSAudioAlertProvidingProxy _handleAlertProvidingRequestTypePlayAlertSoundMessage:messageBody:client:]";
    v20 = 1026;
    LODWORD(v21) = int64;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s AlertType = %{public}d", &v18, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_audioAlertProvider);

  if (WeakRetained)
  {
    v13 = objc_loadWeakRetained(&self->_audioAlertProvider);
    v14 = [v13 playAlertSoundForType:int64];

    v15 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v16 = @"NO";
      if (v14)
      {
        v16 = @"YES";
      }

      v18 = 136315394;
      v19 = "[CSAudioAlertProvidingProxy _handleAlertProvidingRequestTypePlayAlertSoundMessage:messageBody:client:]";
      v20 = 2114;
      v21 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s Play alert sound successful ? %{public}@", &v18, 0x16u);
    }
  }

  else
  {
    v17 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315138;
      v19 = "[CSAudioAlertProvidingProxy _handleAlertProvidingRequestTypePlayAlertSoundMessage:messageBody:client:]";
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s audioAlertProvider not existing", &v18, 0xCu);
    }

    v14 = 0;
  }

  [(CSAudioAlertProvidingProxy *)self _sendReplyMessageWithResult:v14 event:messageCopy client:clientCopy];
}

- (void)_handleAlertProvidingRequestTypeSetAlertSoundMessage:(id)message messageBody:(id)body client:(id)client
{
  messageCopy = message;
  clientCopy = client;
  bodyCopy = body;
  string = xpc_dictionary_get_string(bodyCopy, "soundPath");
  if (string)
  {
    v12 = [NSString stringWithUTF8String:string];
    v13 = [NSURL URLWithString:v12];
  }

  else
  {
    v13 = 0;
  }

  int64 = xpc_dictionary_get_int64(bodyCopy, "alertType");
  v15 = xpc_dictionary_get_BOOL(bodyCopy, "forceSetAlert");

  v16 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v17 = @"NO";
    *v24 = 136315906;
    *&v24[4] = "[CSAudioAlertProvidingProxy _handleAlertProvidingRequestTypeSetAlertSoundMessage:messageBody:client:]";
    *&v24[12] = 2114;
    *&v24[14] = v13;
    if (v15)
    {
      v17 = @"YES";
    }

    *&v24[22] = 1026;
    v25 = int64;
    v26 = 2114;
    v27 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s Alert sound url : %{public}@, alertType = %{public}d, force = %{public}@", v24, 0x26u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_audioAlertProvider);

  if (WeakRetained)
  {
    v19 = objc_loadWeakRetained(&self->_audioAlertProvider);
    v20 = [v19 setAlertSoundFromURL:v13 forType:int64 force:v15];

    v21 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v22 = @"NO";
      if (v20)
      {
        v22 = @"YES";
      }

      *v24 = 136315394;
      *&v24[4] = "[CSAudioAlertProvidingProxy _handleAlertProvidingRequestTypeSetAlertSoundMessage:messageBody:client:]";
      *&v24[12] = 2114;
      *&v24[14] = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s Set alert sound successful ? %{public}@", v24, 0x16u);
    }
  }

  else
  {
    v23 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *v24 = 136315138;
      *&v24[4] = "[CSAudioAlertProvidingProxy _handleAlertProvidingRequestTypeSetAlertSoundMessage:messageBody:client:]";
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s audioAlertProvider not existing", v24, 0xCu);
    }

    v20 = 0;
  }

  [(CSAudioAlertProvidingProxy *)self _sendReplyMessageWithResult:v20 event:messageCopy client:clientCopy, *v24, *&v24[16]];
}

- (void)handleXPCMessage:(id)message messageBody:(id)body client:(id)client
{
  messageCopy = message;
  bodyCopy = body;
  clientCopy = client;
  int64 = xpc_dictionary_get_int64(bodyCopy, "type");
  v12 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[CSAudioAlertProvidingProxy handleXPCMessage:messageBody:client:]";
    v16 = 2050;
    v17 = int64;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s Alert Providing Request Message has arrived : %{public}lld", &v14, 0x16u);
  }

  if (int64 <= 2)
  {
    if (int64 == 1)
    {
      [(CSAudioAlertProvidingProxy *)self _handleAlertProvidingRequestTypeSetAlertSoundMessage:messageCopy messageBody:bodyCopy client:clientCopy];
      goto LABEL_16;
    }

    if (int64 == 2)
    {
      [(CSAudioAlertProvidingProxy *)self _handleAlertProvidingRequestTypePlayAlertSoundMessage:messageCopy messageBody:bodyCopy client:clientCopy];
      goto LABEL_16;
    }
  }

  else
  {
    switch(int64)
    {
      case 3:
        [(CSAudioAlertProvidingProxy *)self _handleAlertProvidingRequestTypePlayRecordStartingAlertAndResetEndpointerMessage:messageCopy messageBody:bodyCopy client:clientCopy];
        goto LABEL_16;
      case 4:
        [(CSAudioAlertProvidingProxy *)self _handleAlertProvidingRequestTypeAlertStartTimeMessage:messageCopy messageBody:bodyCopy client:clientCopy];
        goto LABEL_16;
      case 5:
        [(CSAudioAlertProvidingProxy *)self _handleAlertProvidingRequestTypeConfigureAlertBehavior:messageCopy messageBody:bodyCopy client:clientCopy];
        goto LABEL_16;
    }
  }

  v13 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v14 = 136315394;
    v15 = "[CSAudioAlertProvidingProxy handleXPCMessage:messageBody:client:]";
    v16 = 2050;
    v17 = int64;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Unexpected XPC alert providing request : %{public}lld", &v14, 0x16u);
  }

LABEL_16:
}

- (CSAudioAlertProvidingProxy)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  v8.receiver = self;
  v8.super_class = CSAudioAlertProvidingProxy;
  v5 = [(CSAudioAlertProvidingProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CSAudioAlertProvidingProxy *)v5 setXpcConnection:connectionCopy];
  }

  return v6;
}

@end