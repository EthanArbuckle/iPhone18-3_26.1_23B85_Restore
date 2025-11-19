@interface CSVoiceIdXPCConnection
- (CSVoiceIdXPCConnection)initWithConnection:(id)a3;
- (void)_handleClientError:(id)a3 client:(id)a4;
- (void)_handleClientEvent:(id)a3;
- (void)_handleClientMessage:(id)a3 client:(id)a4;
- (void)_handleImplicitUtteranceMessage:(id)a3 client:(id)a4;
- (void)_sendReplyMessageWithResult:(BOOL)a3 error:(id)a4 event:(id)a5 client:(id)a6;
- (void)activateConnection;
@end

@implementation CSVoiceIdXPCConnection

- (void)_sendReplyMessageWithResult:(BOOL)a3 error:(id)a4 event:(id)a5 client:(id)a6
{
  v12 = a4;
  v9 = a6;
  reply = xpc_dictionary_create_reply(a5);
  xpc_dictionary_set_BOOL(reply, "result", a3);
  if (v12)
  {
    v11 = [v12 domain];
    xpc_dictionary_set_string(reply, "resultErrorDomain", [v11 UTF8String]);

    xpc_dictionary_set_int64(reply, "resultErrorCode", [v12 code]);
  }

  xpc_connection_send_message(v9, reply);
}

- (void)_handleClientError:(id)a3 client:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5 || !v6)
  {
    v10 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v16 = 136315650;
    v17 = "[CSVoiceIdXPCConnection _handleClientError:client:]";
    v18 = 2114;
    v19 = v5;
    v20 = 2114;
    v21 = v7;
    v9 = "%s Received error %{public}@ from client %{public}@";
    v11 = v10;
    v12 = 32;
LABEL_16:
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v9, &v16, v12);
    goto LABEL_13;
  }

  if (v5 == &_xpc_error_connection_invalid || v5 == &_xpc_error_connection_interrupted)
  {
    v14 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v16 = 136315394;
    v17 = "[CSVoiceIdXPCConnection _handleClientError:client:]";
    v18 = 2050;
    v19 = v7;
    v9 = "%s Client %{public}p connection disconnected, noticing xpc listener";
    goto LABEL_15;
  }

  string = xpc_dictionary_get_string(v5, _xpc_error_key_description);
  v14 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v16 = 136315394;
    v17 = "[CSVoiceIdXPCConnection _handleClientError:client:]";
    v18 = 2082;
    v19 = string;
    v9 = "%s connection error: %{public}s";
LABEL_15:
    v11 = v14;
    v12 = 22;
    goto LABEL_16;
  }

LABEL_13:
}

- (void)_handleImplicitUtteranceMessage:(id)a3 client:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = xpc_dictionary_get_dictionary(v6, "body");
  v9 = v8;
  if (v8)
  {
    v10 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v8, "utterancePath")];
    v11 = xpc_dictionary_get_dictionary(v9, "voiceTriggerEventInfo");
    if (!v11)
    {
      v25 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v50 = "[CSVoiceIdXPCConnection _handleImplicitUtteranceMessage:client:]";
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s Null VTEI", buf, 0xCu);
      }

      goto LABEL_32;
    }

    v12 = [NSDictionary alloc];
    v13 = [v12 _cs_initWithXPCObject:v11];

    v14 = xpc_dictionary_get_dictionary(v9, "otherCtxt");
    if (!v14)
    {
      v26 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v50 = "[CSVoiceIdXPCConnection _handleImplicitUtteranceMessage:client:]";
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s Null Ctx", buf, 0xCu);
      }

      goto LABEL_31;
    }

    v39 = v10;
    v15 = [NSDictionary alloc];
    v16 = [v15 _cs_initWithXPCObject:v14];

    v17 = xpc_dictionary_get_value(v9, "recordDeviceInfo");
    if (!v17)
    {
      v27 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v50 = "[CSVoiceIdXPCConnection _handleImplicitUtteranceMessage:client:]";
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s Null deviceInfo", buf, 0xCu);
      }

      goto LABEL_30;
    }

    v36 = [[CSFAudioRecordDeviceInfo alloc] initWithXPCObject:v17];
    v38 = xpc_dictionary_get_value(v9, "audioRecordCtx");
    if (!v38)
    {
      v28 = CSLogContextFacilityCoreSpeech;
      v29 = v36;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v50 = "[CSVoiceIdXPCConnection _handleImplicitUtteranceMessage:client:]";
        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s Null audio context", buf, 0xCu);
      }

      goto LABEL_29;
    }

    v35 = v13;
    string = xpc_dictionary_get_string(v9, "appContainerName");
    if (string)
    {
      v33 = v17;
      v19 = [NSString stringWithUTF8String:string];
      v20 = +[NSFileManager defaultManager];
      v37 = v19;
      v21 = [v20 containerURLForSecurityApplicationGroupIdentifier:v19];
      v22 = [v21 path];

      if (!v22)
      {
        v31 = CSLogContextFacilityCoreSpeech;
        v29 = v36;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v50 = "[CSVoiceIdXPCConnection _handleImplicitUtteranceMessage:client:]";
          _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s Unable to access app container group", buf, 0xCu);
        }

        v17 = v33;
        v13 = v35;
        goto LABEL_28;
      }

      v23 = [v22 stringByAppendingPathComponent:v39];

      v37 = v23;
      v17 = v33;
    }

    else
    {
      v37 = v39;
    }

    v34 = [[CSAudioRecordContext alloc] initWithXPCObject:v38];
    v30 = CSLogContextFacilityCoreSpeech;
    v29 = v36;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v50 = "[CSVoiceIdXPCConnection _handleImplicitUtteranceMessage:client:]";
      v51 = 2050;
      v52 = 2;
      v53 = 2114;
      v54 = v37;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%s Received msg of type %{public}lld for utt %{public}@", buf, 0x20u);
    }

    v13 = v35;
    if (+[CSUtils platformSupportsImplicitUttAddition])
    {
      v32 = +[CSVoiceTriggerAssetHandler sharedHandler];
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_1000DBDB4;
      v40[3] = &unk_100251198;
      v41 = v37;
      v42 = v36;
      v43 = v34;
      v44 = v35;
      v45 = v16;
      v46 = self;
      v47 = v6;
      v48 = v7;
      [v32 getVoiceTriggerAssetWithEndpointId:0 completion:v40];
    }

LABEL_28:
LABEL_29:

LABEL_30:
    v10 = v39;
LABEL_31:

LABEL_32:
    goto LABEL_33;
  }

  v24 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v50 = "[CSVoiceIdXPCConnection _handleImplicitUtteranceMessage:client:]";
    _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s Null msg body", buf, 0xCu);
  }

LABEL_33:
}

- (void)_handleClientMessage:(id)a3 client:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    int64 = xpc_dictionary_get_int64(v6, "type");
    v10 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "[CSVoiceIdXPCConnection _handleClientMessage:client:]";
      v14 = 2050;
      v15 = int64;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s MessageType = %{public}lld", &v12, 0x16u);
    }

    if (int64 == 2)
    {
      [(CSVoiceIdXPCConnection *)self _handleImplicitUtteranceMessage:v6 client:v8];
    }
  }

  else
  {
    v11 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      v13 = "[CSVoiceIdXPCConnection _handleClientMessage:client:]";
      v14 = 2050;
      v15 = v6;
      v16 = 2050;
      v17 = v8;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s message = %{public}p, client = %{public}p, cannot handle message", &v12, 0x20u);
    }
  }
}

- (void)_handleClientEvent:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && self->_connection)
  {
    type = xpc_get_type(v4);
    if (type == &_xpc_type_dictionary)
    {
      [(CSVoiceIdXPCConnection *)self _handleClientMessage:v5 client:self->_connection];
      goto LABEL_12;
    }

    if (type == &_xpc_type_error)
    {
      [(CSVoiceIdXPCConnection *)self _handleClientError:v5 client:self->_connection];
      goto LABEL_12;
    }

    v7 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315138;
      v14 = "[CSVoiceIdXPCConnection _handleClientEvent:]";
      v8 = "%s ignore unknown types of message";
      v9 = v7;
      v10 = 12;
LABEL_9:
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v8, &v13, v10);
    }
  }

  else
  {
    v11 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      connection = self->_connection;
      v13 = 136315650;
      v14 = "[CSVoiceIdXPCConnection _handleClientEvent:]";
      v15 = 2050;
      v16 = v5;
      v17 = 2050;
      v18 = connection;
      v8 = "%s event = %{public}p client = %{public}p cannot handle event";
      v9 = v11;
      v10 = 32;
      goto LABEL_9;
    }
  }

LABEL_12:
}

- (void)activateConnection
{
  objc_initWeak(&location, self);
  connection = self->_connection;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000DC580;
  v4[3] = &unk_100252EC8;
  objc_copyWeak(&v5, &location);
  xpc_connection_set_event_handler(connection, v4);
  xpc_connection_activate(self->_connection);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (CSVoiceIdXPCConnection)initWithConnection:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = CSVoiceIdXPCConnection;
  v6 = [(CSVoiceIdXPCConnection *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
    v8 = dispatch_queue_create("corespeechd speaker xpc connection client queue", 0);
    queue = v7->_queue;
    v7->_queue = v8;

    v10 = v7->_queue;
    v11 = dispatch_get_global_queue(33, 0);
    dispatch_set_target_queue(v10, v11);

    xpc_connection_set_target_queue(v7->_connection, v7->_queue);
    v12 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "[CSVoiceIdXPCConnection initWithConnection:]";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s Created VoiceIdXpc connection", buf, 0xCu);
    }
  }

  return v7;
}

@end