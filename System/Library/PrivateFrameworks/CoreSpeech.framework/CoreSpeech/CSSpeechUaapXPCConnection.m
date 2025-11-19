@interface CSSpeechUaapXPCConnection
- (BOOL)_handleRegisterMultilingualUaapApp:(id)a3 withAssetFiles:(id)a4 error:(id *)a5;
- (BOOL)_handleRegisterUaapApp:(id)a3 forLocale:(id)a4 withAssetFiles:(id)a5 error:(id *)a6;
- (CSSpeechUaapXPCConnection)initWithConnection:(id)a3;
- (void)_handleClientError:(id)a3;
- (void)_handleClientMessage:(id)a3;
- (void)_handleDatapackUpdate;
- (void)activate;
- (void)setInterruptionHandler:(id)a3;
- (void)setInvalidationHandler:(id)a3;
@end

@implementation CSSpeechUaapXPCConnection

- (void)_handleDatapackUpdate
{
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[CSSpeechUaapXPCConnection _handleDatapackUpdate]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s UaaP: processing update to main datapack", buf, 0xCu);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = nullsub_6;
  v4[3] = &unk_100253C20;
  v5 = os_transaction_create();
  v3 = v5;
  sub_100061E10(0, 1, v4);
}

- (BOOL)_handleRegisterMultilingualUaapApp:(id)a3 withAssetFiles:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_10011BAA4;
  v22 = sub_10011BAB4;
  v23 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10011BABC;
  v14[3] = &unk_100251E88;
  v16 = &v24;
  v14[4] = self;
  v10 = v8;
  v15 = v10;
  v17 = &v18;
  [v9 enumerateKeysAndObjectsUsingBlock:v14];
  if (a5)
  {
    v11 = v19[5];
    if (v11)
    {
      *a5 = v11;
    }
  }

  v12 = *(v25 + 24);

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v12;
}

- (BOOL)_handleRegisterUaapApp:(id)a3 forLocale:(id)a4 withAssetFiles:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ((+[CSUtils supportsUnderstandingOnDevice]& 1) != 0)
  {
    if (!v10)
    {
      v10 = [CSUtils getSiriLanguageWithFallback:0];
    }

    v12 = sub_100060B30(v9, v10);
    v13 = +[NSFileManager defaultManager];
    [v13 removeItemAtPath:v12 error:0];

    v14 = +[NSFileManager defaultManager];
    v53 = 0;
    v15 = [v14 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:0 error:&v53];
    v16 = v53;

    if (v15)
    {
      v49 = 0;
      v50 = &v49;
      v51 = 0x2020000000;
      v52 = 1;
      v43 = 0;
      v44 = &v43;
      v45 = 0x3032000000;
      v46 = sub_10011BAA4;
      v47 = sub_10011BAB4;
      v48 = 0;
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_10011C128;
      v38[3] = &unk_100251E60;
      v39 = v12;
      v41 = &v49;
      v17 = v9;
      v40 = v17;
      v42 = &v43;
      [v11 enumerateObjectsUsingBlock:v38];
      if (a6)
      {
        v18 = v44[5];
        if (v18)
        {
          *a6 = v18;
        }
      }

      if (_os_feature_enabled_impl())
      {
        v19 = os_transaction_create();
        v54 = v17;
        v20 = [NSArray arrayWithObjects:&v54 count:1];
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = nullsub_7;
        v36[3] = &unk_100253C20;
        v35 = v19;
        v37 = v35;
        v21 = v20;
        v22 = v10;
        v23 = v36;
        v24 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "CSSpeechUaapProcessInstall";
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s Processing UaaP app-installs", buf, 0xCu);
        }

        v25 = sub_100061320();
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_100061374;
        v60 = &unk_100252E58;
        v61 = v22;
        v62 = v21;
        v63 = v25;
        v64 = v23;
        v26 = v25;
        v27 = v21;
        v28 = v23;
        v29 = v22;
        dispatch_async(v26, buf);
      }

      v30 = *(v50 + 24);

      _Block_object_dispose(&v43, 8);
      _Block_object_dispose(&v49, 8);
      goto LABEL_19;
    }

    v31 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "[CSSpeechUaapXPCConnection _handleRegisterUaapApp:forLocale:withAssetFiles:error:]";
      *&buf[12] = 2112;
      *&buf[14] = v9;
      *&buf[22] = 2112;
      v60 = v16;
      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s Error while creating UaaP asset directory for %@: %@", buf, 0x20u);
      if (!a6)
      {
        goto LABEL_18;
      }
    }

    else if (!a6)
    {
LABEL_18:
      v30 = 0;
LABEL_19:

      goto LABEL_20;
    }

    v55 = NSLocalizedDescriptionKey;
    v32 = [NSString stringWithFormat:@"Failed to create UaaP asset directory at %@: %@", v12, v16];
    v56 = v32;
    v33 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    *a6 = [NSError errorWithDomain:@"com.apple.corespeech.uaap" code:2 userInfo:v33];

    goto LABEL_18;
  }

  if (!a6)
  {
    v30 = 0;
    goto LABEL_21;
  }

  v57 = NSLocalizedDescriptionKey;
  v58 = @"UaaP is not supported on this device";
  v12 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
  [NSError errorWithDomain:@"com.apple.corespeech.uaap" code:3 userInfo:v12];
  *a6 = v30 = 0;
LABEL_20:

LABEL_21:
  return v30 & 1;
}

- (void)_handleClientMessage:(id)a3
{
  v4 = a3;
  uint64 = xpc_dictionary_get_uint64(v4, "messageType");
  if (uint64 - 1 < 2)
  {
    v7 = xpc_dictionary_get_value(v4, "message");
    if (v7)
    {
      v8 = v7;
      string = xpc_dictionary_get_string(v7, "bundleId");
      if (string)
      {
        v10 = [NSString stringWithUTF8String:string];
        v11 = xpc_dictionary_get_string(v8, "locale");
        if (v11)
        {
          v12 = [NSString stringWithUTF8String:v11];
        }

        else
        {
          v12 = 0;
        }

        v15 = xpc_dictionary_get_array(v8, "assetFiles");
        v28 = +[NSMutableArray array];
        if (v15)
        {
          for (i = 0; i < xpc_array_get_count(v15); ++i)
          {
            v30 = [NSString stringWithUTF8String:xpc_array_get_string(v15, i)];
            [v28 addObject:v30];
          }
        }

        v31 = xpc_dictionary_get_remote_connection(v4);
        reply = xpc_dictionary_create_reply(v4);
        v41 = 0;
        v33 = [(CSSpeechUaapXPCConnection *)self _handleRegisterUaapApp:v10 forLocale:v12 withAssetFiles:v28 error:&v41];
        v34 = v41;
        v35 = v34;
        if ((v33 & 1) == 0)
        {
          v36 = [v34 domain];
          xpc_dictionary_set_string(reply, "errorDomain", [v36 UTF8String]);

          xpc_dictionary_set_int64(reply, "errorCode", [v35 code]);
          v37 = [v35 localizedDescription];
          xpc_dictionary_set_string(reply, "errorMessage", [v37 UTF8String]);
        }

        xpc_connection_send_message(v31, reply);

        goto LABEL_31;
      }

      v27 = CSLogContextFacilityCoreSpeech;
      if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
LABEL_32:

        goto LABEL_33;
      }

LABEL_35:
      *buf = 136315394;
      v43 = "[CSSpeechUaapXPCConnection _handleClientMessage:]";
      v44 = 2080;
      v45 = "bundleId";
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s UaaP XPC message was malformed (missing %s)", buf, 0x16u);
      goto LABEL_32;
    }

    v26 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

LABEL_21:
    *buf = 136315394;
    v43 = "[CSSpeechUaapXPCConnection _handleClientMessage:]";
    v44 = 2112;
    v45 = v4;
    v24 = "%s UaaP XPC connection received an invalid message: %@";
    v25 = v26;
    goto LABEL_22;
  }

  v6 = uint64;
  if (uint64 == 3)
  {
    v13 = xpc_dictionary_get_value(v4, "message");
    if (v13)
    {
      v8 = v13;
      v14 = xpc_dictionary_get_string(v13, "bundleId");
      if (v14)
      {
        v10 = [NSString stringWithUTF8String:v14];
        v12 = xpc_dictionary_get_dictionary(v8, "assetFiles");
        +[NSMutableDictionary dictionary];
        applier[0] = _NSConcreteStackBlock;
        applier[1] = 3221225472;
        applier[2] = sub_10011C950;
        v15 = applier[3] = &unk_100251E38;
        v40 = v15;
        xpc_dictionary_apply(v12, applier);
        v16 = xpc_dictionary_get_remote_connection(v4);
        v17 = xpc_dictionary_create_reply(v4);
        v38 = 0;
        v18 = [(CSSpeechUaapXPCConnection *)self _handleRegisterMultilingualUaapApp:v10 withAssetFiles:v15 error:&v38];
        v19 = v38;
        v20 = v19;
        if ((v18 & 1) == 0)
        {
          v21 = [v19 domain];
          xpc_dictionary_set_string(v17, "errorDomain", [v21 UTF8String]);

          xpc_dictionary_set_int64(v17, "errorCode", [v20 code]);
          v22 = [v20 localizedDescription];
          xpc_dictionary_set_string(v17, "errorMessage", [v22 UTF8String]);
        }

        xpc_connection_send_message(v16, v17);

LABEL_31:
        goto LABEL_32;
      }

      v27 = CSLogContextFacilityCoreSpeech;
      if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }

      goto LABEL_35;
    }

    v26 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    goto LABEL_21;
  }

  if (uint64 != 4)
  {
    v23 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    *buf = 136315394;
    v43 = "[CSSpeechUaapXPCConnection _handleClientMessage:]";
    v44 = 2048;
    v45 = v6;
    v24 = "%s UaaP XPC connection received an invalid message: %llu";
    v25 = v23;
LABEL_22:
    _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, v24, buf, 0x16u);
    goto LABEL_33;
  }

  [(CSSpeechUaapXPCConnection *)self _handleDatapackUpdate];
LABEL_33:
}

- (void)_handleClientError:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4 == &_xpc_error_connection_invalid)
  {
    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "[CSSpeechUaapXPCConnection _handleClientError:]";
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s CSSpeechUaapXPCConnection invalidated", &v11, 0xCu);
    }

    invalidationHandler = self->_invalidationHandler;
    goto LABEL_12;
  }

  v6 = CSLogContextFacilityCoreSpeech;
  v7 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR);
  if (v5 == &_xpc_error_connection_interrupted)
  {
    if (v7)
    {
      v11 = 136315138;
      v12 = "[CSSpeechUaapXPCConnection _handleClientError:]";
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s CSSpeechUaapXPCConnection interrupted", &v11, 0xCu);
    }

    invalidationHandler = self->_interruptionHandler;
LABEL_12:
    invalidationHandler[2]();
    goto LABEL_13;
  }

  if (v7)
  {
    v8 = v6;
    v11 = 136315394;
    v12 = "[CSSpeechUaapXPCConnection _handleClientError:]";
    v13 = 2080;
    string = xpc_dictionary_get_string(v5, _xpc_error_key_description);
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s CSSpeechUaapXPCConnection error: %s", &v11, 0x16u);
  }

LABEL_13:
}

- (void)setInterruptionHandler:(id)a3
{
  v4 = objc_retainBlock(a3);
  interruptionHandler = self->_interruptionHandler;
  self->_interruptionHandler = v4;
}

- (void)setInvalidationHandler:(id)a3
{
  v4 = objc_retainBlock(a3);
  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = v4;
}

- (void)activate
{
  objc_initWeak(&location, self);
  connection = self->_connection;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10011CD58;
  v4[3] = &unk_100252EC8;
  objc_copyWeak(&v5, &location);
  xpc_connection_set_event_handler(connection, v4);
  xpc_connection_activate(self->_connection);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (CSSpeechUaapXPCConnection)initWithConnection:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CSSpeechUaapXPCConnection;
  v6 = [(CSSpeechUaapXPCConnection *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
    v8 = dispatch_queue_create("com.apple.corespeechd.uaap-connection", 0);
    queue = v7->_queue;
    v7->_queue = v8;

    xpc_connection_set_target_queue(v7->_connection, v7->_queue);
  }

  return v7;
}

@end