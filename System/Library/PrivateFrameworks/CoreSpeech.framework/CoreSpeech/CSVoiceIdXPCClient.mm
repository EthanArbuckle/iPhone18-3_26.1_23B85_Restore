@interface CSVoiceIdXPCClient
+ (void)notifyImplicitUtterance:(id)utterance appContainerName:(id)name audioDeviceType:(id)type audioRecordType:(id)recordType voiceTriggerEventInfo:(id)info otherCtxt:(id)ctxt completion:(id)completion;
+ (void)notifyImplicitUtterance:(id)utterance audioDeviceType:(id)type audioRecordType:(id)recordType voiceTriggerEventInfo:(id)info otherCtxt:(id)ctxt completion:(id)completion;
- (CSVoiceIdXPCClient)init;
- (id)_decodeError:(id)error;
- (void)_handleListenerError:(id)error;
- (void)_handleListenerEvent:(id)event;
- (void)_notifyImplicitUtterance:(id)utterance appContainerName:(id)name audioDeviceType:(id)type audioRecordType:(id)recordType voiceTriggerEventInfo:(id)info otherCtxt:(id)ctxt completion:(id)completion;
- (void)_sendMessage:(id)message connection:(id)connection completion:(id)completion;
- (void)connect;
- (void)dealloc;
- (void)disconnect;
@end

@implementation CSVoiceIdXPCClient

- (id)_decodeError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy)
  {
    string = xpc_dictionary_get_string(errorCopy, "resultErrorDomain");
    if (string)
    {
      int64 = xpc_dictionary_get_int64(v4, "resultErrorCode");
      v7 = [NSString stringWithUTF8String:string];
      string = [NSError errorWithDomain:v7 code:int64 userInfo:0];
    }
  }

  else
  {
    string = 0;
  }

  return string;
}

- (void)_sendMessage:(id)message connection:(id)connection completion:(id)completion
{
  message = message;
  connectionCopy = connection;
  completionCopy = completion;
  if (message && connectionCopy)
  {
    v10 = xpc_connection_send_message_with_reply_sync(connectionCopy, message);
    v11 = v10;
    if (v10)
    {
      v12 = xpc_dictionary_get_BOOL(v10, "result");
      v13 = [(CSVoiceIdXPCClient *)self _decodeError:v11];
      if (!completionCopy)
      {
LABEL_6:

        goto LABEL_9;
      }
    }

    else
    {
      v13 = [NSError errorWithDomain:CSErrorDomain code:1251 userInfo:0];
      v12 = 0;
      if (!completionCopy)
      {
        goto LABEL_6;
      }
    }

    completionCopy[2](completionCopy, v12, v13);
    goto LABEL_6;
  }

  if (!completionCopy)
  {
    goto LABEL_10;
  }

  v11 = [NSError errorWithDomain:CSErrorDomain code:1252 userInfo:0];
  completionCopy[2](completionCopy, 0, v11);
LABEL_9:

LABEL_10:
}

- (void)_notifyImplicitUtterance:(id)utterance appContainerName:(id)name audioDeviceType:(id)type audioRecordType:(id)recordType voiceTriggerEventInfo:(id)info otherCtxt:(id)ctxt completion:(id)completion
{
  utteranceCopy = utterance;
  nameCopy = name;
  typeCopy = type;
  recordTypeCopy = recordType;
  infoCopy = info;
  ctxtCopy = ctxt;
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1001347DC;
  v39[3] = &unk_100253220;
  completionCopy = completion;
  v40 = completionCopy;
  v18 = objc_retainBlock(v39);
  v19 = [[NSDictionary alloc] initWithDictionary:infoCopy];
  *keys = *&off_100252468;
  v48 = *&off_100252478;
  v49 = "audioRecordCtx";
  _cs_xpcObject = [infoCopy _cs_xpcObject];
  if (!_cs_xpcObject)
  {
LABEL_15:
    v33 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      LODWORD(values) = 136315138;
      *(&values + 4) = "[CSVoiceIdXPCClient _notifyImplicitUtterance:appContainerName:audioDeviceType:audioRecordType:voiceTriggerEventInfo:otherCtxt:completion:]";
      _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%s Required values is nil, bailout", &values, 0xCu);
      if (!completionCopy)
      {
        goto LABEL_18;
      }
    }

    else if (!completionCopy)
    {
      goto LABEL_18;
    }

    v34 = [NSError errorWithDomain:CSErrorDomain code:1253 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v34);

    goto LABEL_18;
  }

  _cs_xpcObject2 = [ctxtCopy _cs_xpcObject];
  if (!_cs_xpcObject2)
  {
LABEL_14:

    goto LABEL_15;
  }

  xpcObject = [typeCopy xpcObject];
  if (!xpcObject)
  {

    goto LABEL_14;
  }

  xpcObject2 = [recordTypeCopy xpcObject];
  v24 = xpcObject2 == 0;

  if (v24)
  {
    goto LABEL_15;
  }

  v25 = utteranceCopy;
  *&values = xpc_string_create([utteranceCopy UTF8String]);
  *(&values + 1) = [v19 _cs_xpcObject];
  _cs_xpcObject3 = [ctxtCopy _cs_xpcObject];
  xpcObject3 = [typeCopy xpcObject];
  xpcObject4 = [recordTypeCopy xpcObject];
  v26 = xpc_dictionary_create(keys, &values, 5uLL);
  v27 = v26;
  if (nameCopy && v26)
  {
    v28 = nameCopy;
    xpc_dictionary_set_string(v27, "appContainerName", [nameCopy UTF8String]);
  }

  *v42 = *off_100252E40;
  v41[0] = xpc_int64_create(2);
  v29 = v27;
  v41[1] = v29;
  v30 = xpc_dictionary_create(v42, v41, 2uLL);
  [(CSVoiceIdXPCClient *)self _sendMessage:v30 connection:self->_xpcConnection completion:v18];

  for (i = 1; i != -1; --i)
  {
  }

  for (j = 32; j != -8; j -= 8)
  {
  }

LABEL_18:
}

- (void)_handleListenerError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (!errorCopy)
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v13 = 136315138;
    v14 = "[CSVoiceIdXPCClient _handleListenerError:]";
    v7 = "%s cannot handle nil error";
LABEL_11:
    v8 = v6;
    v9 = 12;
LABEL_15:
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v7, &v13, v9);
    goto LABEL_13;
  }

  if (errorCopy == &_xpc_error_connection_invalid || errorCopy == &_xpc_error_connection_interrupted)
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v13 = 136315138;
    v14 = "[CSVoiceIdXPCClient _handleListenerError:]";
    v7 = "%s Listener connection disconnected";
    goto LABEL_11;
  }

  string = xpc_dictionary_get_string(errorCopy, _xpc_error_key_description);
  v11 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315394;
    v14 = "[CSVoiceIdXPCClient _handleListenerError:]";
    v15 = 2082;
    v16 = string;
    v7 = "%s connection error: %{public}s";
    v8 = v11;
    v9 = 22;
    goto LABEL_15;
  }

LABEL_13:
}

- (void)_handleListenerEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  if (eventCopy)
  {
    type = xpc_get_type(eventCopy);
    if (type == &_xpc_type_error)
    {
      [(CSVoiceIdXPCClient *)self _handleListenerError:v5];
      goto LABEL_9;
    }

    v7 = type;
    v8 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "[CSVoiceIdXPCClient _handleListenerEvent:]";
      v15 = 2114;
      v16 = v7;
      v9 = "%s ignore unknown types of message: %{public}@";
      v10 = v8;
      v11 = 22;
LABEL_7:
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v9, &v13, v11);
    }
  }

  else
  {
    v12 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315138;
      v14 = "[CSVoiceIdXPCClient _handleListenerEvent:]";
      v9 = "%s cannot handle nil event ";
      v10 = v12;
      v11 = 12;
      goto LABEL_7;
    }
  }

LABEL_9:
}

- (void)dealloc
{
  [(CSVoiceIdXPCClient *)self disconnect];
  v3.receiver = self;
  v3.super_class = CSVoiceIdXPCClient;
  [(CSVoiceIdXPCClient *)&v3 dealloc];
}

- (void)disconnect
{
  xpcConnection = self->_xpcConnection;
  if (xpcConnection)
  {
    xpc_connection_cancel(xpcConnection);
    v4 = self->_xpcConnection;
    self->_xpcConnection = 0;
  }
}

- (void)connect
{
  objc_initWeak(&location, self);
  xpcConnection = self->_xpcConnection;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100134C58;
  v4[3] = &unk_100252EC8;
  objc_copyWeak(&v5, &location);
  xpc_connection_set_event_handler(xpcConnection, v4);
  xpc_connection_activate(self->_xpcConnection);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (CSVoiceIdXPCClient)init
{
  v6.receiver = self;
  v6.super_class = CSVoiceIdXPCClient;
  v2 = [(CSVoiceIdXPCClient *)&v6 init];
  if (v2)
  {
    CSLogInitIfNeeded();
    mach_service = xpc_connection_create_mach_service("com.apple.corespeech.corespeechd.voiceid.xpc", 0, 0);
    xpcConnection = v2->_xpcConnection;
    v2->_xpcConnection = mach_service;
  }

  return v2;
}

+ (void)notifyImplicitUtterance:(id)utterance appContainerName:(id)name audioDeviceType:(id)type audioRecordType:(id)recordType voiceTriggerEventInfo:(id)info otherCtxt:(id)ctxt completion:(id)completion
{
  completionCopy = completion;
  ctxtCopy = ctxt;
  infoCopy = info;
  recordTypeCopy = recordType;
  typeCopy = type;
  nameCopy = name;
  utteranceCopy = utterance;
  v22 = objc_alloc_init(CSVoiceIdXPCClient);
  [(CSVoiceIdXPCClient *)v22 connect];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100134E7C;
  v25[3] = &unk_100253270;
  v26 = v22;
  v27 = completionCopy;
  v23 = completionCopy;
  v24 = v22;
  [(CSVoiceIdXPCClient *)v24 _notifyImplicitUtterance:utteranceCopy appContainerName:nameCopy audioDeviceType:typeCopy audioRecordType:recordTypeCopy voiceTriggerEventInfo:infoCopy otherCtxt:ctxtCopy completion:v25];
}

+ (void)notifyImplicitUtterance:(id)utterance audioDeviceType:(id)type audioRecordType:(id)recordType voiceTriggerEventInfo:(id)info otherCtxt:(id)ctxt completion:(id)completion
{
  completionCopy = completion;
  ctxtCopy = ctxt;
  infoCopy = info;
  recordTypeCopy = recordType;
  typeCopy = type;
  utteranceCopy = utterance;
  v19 = objc_alloc_init(CSVoiceIdXPCClient);
  [(CSVoiceIdXPCClient *)v19 connect];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100135024;
  v22[3] = &unk_100253270;
  v23 = v19;
  v24 = completionCopy;
  v20 = completionCopy;
  v21 = v19;
  [(CSVoiceIdXPCClient *)v21 _notifyImplicitUtterance:utteranceCopy appContainerName:0 audioDeviceType:typeCopy audioRecordType:recordTypeCopy voiceTriggerEventInfo:infoCopy otherCtxt:ctxtCopy completion:v22];
}

@end