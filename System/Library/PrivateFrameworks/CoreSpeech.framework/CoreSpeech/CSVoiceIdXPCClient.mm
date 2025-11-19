@interface CSVoiceIdXPCClient
+ (void)notifyImplicitUtterance:(id)a3 appContainerName:(id)a4 audioDeviceType:(id)a5 audioRecordType:(id)a6 voiceTriggerEventInfo:(id)a7 otherCtxt:(id)a8 completion:(id)a9;
+ (void)notifyImplicitUtterance:(id)a3 audioDeviceType:(id)a4 audioRecordType:(id)a5 voiceTriggerEventInfo:(id)a6 otherCtxt:(id)a7 completion:(id)a8;
- (CSVoiceIdXPCClient)init;
- (id)_decodeError:(id)a3;
- (void)_handleListenerError:(id)a3;
- (void)_handleListenerEvent:(id)a3;
- (void)_notifyImplicitUtterance:(id)a3 appContainerName:(id)a4 audioDeviceType:(id)a5 audioRecordType:(id)a6 voiceTriggerEventInfo:(id)a7 otherCtxt:(id)a8 completion:(id)a9;
- (void)_sendMessage:(id)a3 connection:(id)a4 completion:(id)a5;
- (void)connect;
- (void)dealloc;
- (void)disconnect;
@end

@implementation CSVoiceIdXPCClient

- (id)_decodeError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    string = xpc_dictionary_get_string(v3, "resultErrorDomain");
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

- (void)_sendMessage:(id)a3 connection:(id)a4 completion:(id)a5
{
  message = a3;
  v8 = a4;
  v9 = a5;
  if (message && v8)
  {
    v10 = xpc_connection_send_message_with_reply_sync(v8, message);
    v11 = v10;
    if (v10)
    {
      v12 = xpc_dictionary_get_BOOL(v10, "result");
      v13 = [(CSVoiceIdXPCClient *)self _decodeError:v11];
      if (!v9)
      {
LABEL_6:

        goto LABEL_9;
      }
    }

    else
    {
      v13 = [NSError errorWithDomain:CSErrorDomain code:1251 userInfo:0];
      v12 = 0;
      if (!v9)
      {
        goto LABEL_6;
      }
    }

    v9[2](v9, v12, v13);
    goto LABEL_6;
  }

  if (!v9)
  {
    goto LABEL_10;
  }

  v11 = [NSError errorWithDomain:CSErrorDomain code:1252 userInfo:0];
  v9[2](v9, 0, v11);
LABEL_9:

LABEL_10:
}

- (void)_notifyImplicitUtterance:(id)a3 appContainerName:(id)a4 audioDeviceType:(id)a5 audioRecordType:(id)a6 voiceTriggerEventInfo:(id)a7 otherCtxt:(id)a8 completion:(id)a9
{
  v37 = a3;
  v36 = a4;
  v14 = a5;
  v38 = a6;
  v15 = a7;
  v16 = a8;
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1001347DC;
  v39[3] = &unk_100253220;
  v17 = a9;
  v40 = v17;
  v18 = objc_retainBlock(v39);
  v19 = [[NSDictionary alloc] initWithDictionary:v15];
  *keys = *&off_100252468;
  v48 = *&off_100252478;
  v49 = "audioRecordCtx";
  v20 = [v15 _cs_xpcObject];
  if (!v20)
  {
LABEL_15:
    v33 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      LODWORD(values) = 136315138;
      *(&values + 4) = "[CSVoiceIdXPCClient _notifyImplicitUtterance:appContainerName:audioDeviceType:audioRecordType:voiceTriggerEventInfo:otherCtxt:completion:]";
      _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%s Required values is nil, bailout", &values, 0xCu);
      if (!v17)
      {
        goto LABEL_18;
      }
    }

    else if (!v17)
    {
      goto LABEL_18;
    }

    v34 = [NSError errorWithDomain:CSErrorDomain code:1253 userInfo:0];
    (*(v17 + 2))(v17, 0, v34);

    goto LABEL_18;
  }

  v21 = [v16 _cs_xpcObject];
  if (!v21)
  {
LABEL_14:

    goto LABEL_15;
  }

  v22 = [v14 xpcObject];
  if (!v22)
  {

    goto LABEL_14;
  }

  v23 = [v38 xpcObject];
  v24 = v23 == 0;

  if (v24)
  {
    goto LABEL_15;
  }

  v25 = v37;
  *&values = xpc_string_create([v37 UTF8String]);
  *(&values + 1) = [v19 _cs_xpcObject];
  v44 = [v16 _cs_xpcObject];
  v45 = [v14 xpcObject];
  v46 = [v38 xpcObject];
  v26 = xpc_dictionary_create(keys, &values, 5uLL);
  v27 = v26;
  if (v36 && v26)
  {
    v28 = v36;
    xpc_dictionary_set_string(v27, "appContainerName", [v36 UTF8String]);
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

- (void)_handleListenerError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
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

  if (v3 == &_xpc_error_connection_invalid || v3 == &_xpc_error_connection_interrupted)
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

  string = xpc_dictionary_get_string(v3, _xpc_error_key_description);
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

- (void)_handleListenerEvent:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    type = xpc_get_type(v4);
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

+ (void)notifyImplicitUtterance:(id)a3 appContainerName:(id)a4 audioDeviceType:(id)a5 audioRecordType:(id)a6 voiceTriggerEventInfo:(id)a7 otherCtxt:(id)a8 completion:(id)a9
{
  v15 = a9;
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v22 = objc_alloc_init(CSVoiceIdXPCClient);
  [(CSVoiceIdXPCClient *)v22 connect];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100134E7C;
  v25[3] = &unk_100253270;
  v26 = v22;
  v27 = v15;
  v23 = v15;
  v24 = v22;
  [(CSVoiceIdXPCClient *)v24 _notifyImplicitUtterance:v21 appContainerName:v20 audioDeviceType:v19 audioRecordType:v18 voiceTriggerEventInfo:v17 otherCtxt:v16 completion:v25];
}

+ (void)notifyImplicitUtterance:(id)a3 audioDeviceType:(id)a4 audioRecordType:(id)a5 voiceTriggerEventInfo:(id)a6 otherCtxt:(id)a7 completion:(id)a8
{
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = objc_alloc_init(CSVoiceIdXPCClient);
  [(CSVoiceIdXPCClient *)v19 connect];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100135024;
  v22[3] = &unk_100253270;
  v23 = v19;
  v24 = v13;
  v20 = v13;
  v21 = v19;
  [(CSVoiceIdXPCClient *)v21 _notifyImplicitUtterance:v18 appContainerName:0 audioDeviceType:v17 audioRecordType:v16 voiceTriggerEventInfo:v15 otherCtxt:v14 completion:v22];
}

@end