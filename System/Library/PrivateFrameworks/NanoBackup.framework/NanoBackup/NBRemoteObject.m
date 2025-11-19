@interface NBRemoteObject
- (NBRemoteObject)initWithServiceName:(id)a3 andDelegate:(id)a4 andClientQueue:(id)a5;
- (id)delegate;
- (void)_messageResponseTimeout:(id)a3;
- (void)_sendMessage:(id)a3 type:(unsigned __int16)a4 requestUUID:(id)a5 withTimeout:(id)a6 withResponseTimeout:(id)a7 withDescription:(id)a8 onlyOneFor:(id)a9 didSend:(id)a10 andResponse:(id)a11;
- (void)_storeProtobufAction:(SEL)a3 messageType:(unsigned __int16)a4 messageSendType:(int64_t)a5;
- (void)handleIncomingMessage:(id)a3;
- (void)invalidate;
- (void)sendFileRequest:(id)a3 type:(unsigned __int16)a4 withTimeout:(id)a5 withResponseTimeout:(id)a6 withDescription:(id)a7 onlyOneFor:(id)a8 didSend:(id)a9 andResponse:(id)a10;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8;
- (void)service:(id)a3 didSwitchActivePairedDevice:(id)a4 acknowledgementBlock:(id)a5;
@end

@implementation NBRemoteObject

- (NBRemoteObject)initWithServiceName:(id)a3 andDelegate:(id)a4 andClientQueue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v33.receiver = self;
  v33.super_class = NBRemoteObject;
  v11 = [(NBRemoteObject *)&v33 init];
  if (v11)
  {
    v12 = [v8 copy];
    serviceName = v11->_serviceName;
    v11->_serviceName = v12;

    v14 = objc_alloc_init(NSMutableDictionary);
    idsSendIDToCompletionHandler = v11->_idsSendIDToCompletionHandler;
    v11->_idsSendIDToCompletionHandler = v14;

    v16 = objc_alloc_init(NSMutableDictionary);
    idsSendIDToResponseHandler = v11->_idsSendIDToResponseHandler;
    v11->_idsSendIDToResponseHandler = v16;

    v18 = objc_alloc_init(NSMutableDictionary);
    idsSendIDToTimer = v11->_idsSendIDToTimer;
    v11->_idsSendIDToTimer = v18;

    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_create([v8 UTF8String], v20);
    idsQueue = v11->_idsQueue;
    v11->_idsQueue = v21;

    if (v10)
    {
      v23 = v10;
      clientQueue = v11->_clientQueue;
      v11->_clientQueue = v23;
    }

    else
    {
      clientQueue = [v8 stringByAppendingString:@".client"];
      v25 = dispatch_queue_create([clientQueue UTF8String], v20);
      v26 = v11->_clientQueue;
      v11->_clientQueue = v25;
    }

    v27 = [[IDSService alloc] initWithService:v11->_serviceName];
    service = v11->_service;
    v11->_service = v27;

    v29 = objc_alloc_init(NSMutableDictionary);
    idsRequestMessageTypeToSelector = v11->_idsRequestMessageTypeToSelector;
    v11->_idsRequestMessageTypeToSelector = v29;

    [(NBRemoteObject *)v11 registerProtobufHandlers];
    [(IDSService *)v11->_service addDelegate:v11 queue:v11->_idsQueue];
    [(NBRemoteObject *)v11 setDelegate:v9];
    v31 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = v8;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Created IDS service %@", buf, 0xCu);
    }
  }

  return v11;
}

- (void)invalidate
{
  v3 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    serviceName = self->_serviceName;
    *buf = 138412290;
    v10 = serviceName;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating NRRemoteObject service %@", buf, 0xCu);
  }

  idsQueue = self->_idsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010E64;
  block[3] = &unk_10002C7D0;
  block[4] = self;
  dispatch_sync(idsQueue, block);
  v6 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    v7 = self->_serviceName;
    *buf = 138412290;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Invalidating NRRemoteObject service %@- complete", buf, 0xCu);
  }
}

- (void)handleIncomingMessage:(id)a3
{
  v4 = a3;
  v5 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    serviceName = self->_serviceName;
    v7 = v5;
    v8 = [v4 type];
    v9 = [v4 data];
    v10 = [v9 length];
    v11 = [v4 isResponse];
    v12 = &__kCFBooleanFalse;
    if (v11)
    {
      v12 = &__kCFBooleanTrue;
    }

    *buf = 138413058;
    v56 = serviceName;
    v57 = 2048;
    v58 = v8;
    v59 = 2048;
    v60 = v10;
    v61 = 2112;
    v62 = v12;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(%@): IDS message received type=%ld length=%ld response=%@", buf, 0x2Au);
  }

  v13 = [v4 context];
  v14 = [v13 incomingResponseIdentifier];

  if ([v4 isResponse] && v14)
  {
    v15 = [(NSMutableDictionary *)self->_idsSendIDToTimer objectForKeyedSubscript:v14];
    [v15 invalidate];
    [(NSMutableDictionary *)self->_idsSendIDToTimer removeObjectForKey:v14];
    v16 = [(NSMutableDictionary *)self->_idsSendIDToResponseHandler objectForKeyedSubscript:v14];
    v17 = nb_daemon_log;
    v18 = os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v18)
      {
        v19 = self->_serviceName;
        *buf = 138412546;
        v56 = v19;
        v57 = 2114;
        v58 = v14;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "(%@): matched response %{public}@, executing block", buf, 0x16u);
      }

      [(NSMutableDictionary *)self->_idsSendIDToResponseHandler removeObjectForKey:v14];
      clientQueue = self->_clientQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100011A94;
      block[3] = &unk_10002CF00;
      v54 = v16;
      v53 = v4;
      dispatch_async(clientQueue, block);
    }

    else if (v18)
    {
      v21 = self->_serviceName;
      *buf = 138412546;
      v56 = v21;
      v57 = 2114;
      v58 = v14;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "(%@): no ack block found for response %{public}@, ignoring", buf, 0x16u);
    }
  }

  if ([v4 isResponse])
  {
    v22 = 0x10000;
  }

  else
  {
    v22 = 0;
  }

  v23 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v22 | [v4 type]);
  v24 = [(NSMutableDictionary *)self->_idsRequestMessageTypeToSelector objectForKeyedSubscript:v23];
  v25 = v24;
  if (!v24)
  {
    v34 = nb_daemon_log;
    if (!os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    v35 = self->_serviceName;
    v36 = v34;
    v37 = [v4 type];
    v38 = [v4 data];
    v39 = [v38 length];
    v40 = [v4 isResponse];
    v41 = &__kCFBooleanFalse;
    if (v40)
    {
      v41 = &__kCFBooleanTrue;
    }

LABEL_32:
    *buf = 138413058;
    v56 = v35;
    v57 = 2048;
    v58 = v37;
    v59 = 2048;
    v60 = v39;
    v61 = 2112;
    v62 = v41;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "(%@): No selector found for type=%ld length=%ld response=%@", buf, 0x2Au);

    goto LABEL_33;
  }

  v26 = [v24 method];
  v27 = nb_daemon_log;
  v28 = os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT);
  if (!v26)
  {
    if (!v28)
    {
      goto LABEL_33;
    }

    v35 = self->_serviceName;
    v36 = v27;
    v37 = [v4 type];
    v38 = [v4 data];
    v39 = [v38 length];
    v42 = [v4 isResponse];
    v41 = &__kCFBooleanFalse;
    if (v42)
    {
      v41 = &__kCFBooleanTrue;
    }

    goto LABEL_32;
  }

  if (v28)
  {
    v45 = self->_serviceName;
    log = v27;
    v29 = NSStringFromSelector([v25 selector]);
    v44 = [v4 type];
    v46 = [v4 data];
    v43 = [v46 length];
    if ([v4 isResponse])
    {
      v30 = &__kCFBooleanTrue;
    }

    else
    {
      v30 = &__kCFBooleanFalse;
    }

    v31 = [v4 context];
    v32 = [v31 fromID];
    *buf = 138413570;
    v56 = v45;
    v57 = 2114;
    v58 = v29;
    v59 = 2048;
    v60 = v44;
    v61 = 2048;
    v62 = v43;
    v63 = 2112;
    v64 = v30;
    v65 = 2114;
    v66 = v32;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "(%@): Calling selector %{public}@ for type=%ld length=%ld response=%@ messageSource=%{public}@", buf, 0x3Eu);
  }

  v33 = self->_clientQueue;
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_100011AA8;
  v48[3] = &unk_10002CF28;
  v51 = v26;
  v48[4] = self;
  v49 = v25;
  v50 = v4;
  dispatch_async(v33, v48);

LABEL_33:
}

- (void)_storeProtobufAction:(SEL)a3 messageType:(unsigned __int16)a4 messageSendType:(int64_t)a5
{
  v6 = a4;
  v10 = objc_alloc_init(NBPBSelectorItem);
  [(NBPBSelectorItem *)v10 setSelector:a3];
  if (a3)
  {
    [(NBPBSelectorItem *)v10 setMethod:[(NBRemoteObject *)self methodForSelector:a3]];
  }

  v9 = [NSNumber numberWithInteger:v6 | (a5 << 16)];
  [(NSMutableDictionary *)self->_idsRequestMessageTypeToSelector setObject:v10 forKeyedSubscript:v9];
}

- (void)sendFileRequest:(id)a3 type:(unsigned __int16)a4 withTimeout:(id)a5 withResponseTimeout:(id)a6 withDescription:(id)a7 onlyOneFor:(id)a8 didSend:(id)a9 andResponse:(id)a10
{
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  idsQueue = self->_idsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011F24;
  block[3] = &unk_10002CF50;
  block[4] = self;
  v32 = v16;
  v39 = a4;
  v33 = v17;
  v34 = v18;
  v35 = v19;
  v36 = v20;
  v37 = v21;
  v38 = v22;
  v24 = v22;
  v25 = v21;
  v26 = v20;
  v27 = v19;
  v28 = v18;
  v29 = v17;
  v30 = v16;
  dispatch_async(idsQueue, block);
}

- (void)_sendMessage:(id)a3 type:(unsigned __int16)a4 requestUUID:(id)a5 withTimeout:(id)a6 withResponseTimeout:(id)a7 withDescription:(id)a8 onlyOneFor:(id)a9 didSend:(id)a10 andResponse:(id)a11
{
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  dispatch_assert_queue_not_V2(self->_idsQueue);
  idsQueue = self->_idsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012294;
  block[3] = &unk_10002CF78;
  block[4] = self;
  v35 = v16;
  v43 = a4;
  v36 = v17;
  v37 = v18;
  v38 = v19;
  v39 = v20;
  v40 = v21;
  v41 = v22;
  v42 = v23;
  v25 = v23;
  v26 = v22;
  v27 = v21;
  v28 = v20;
  v29 = v19;
  v30 = v18;
  v31 = v17;
  v32 = v16;
  dispatch_async(idsQueue, block);
}

- (void)_messageResponseTimeout:(id)a3
{
  v4 = a3;
  idsQueue = self->_idsQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100012374;
  v7[3] = &unk_10002C768;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(idsQueue, v7);
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v10 = a5;
  v11 = a7;
  v12 = [(NSMutableDictionary *)self->_idsSendIDToCompletionHandler objectForKeyedSubscript:v10];
  if (v12)
  {
    [(NSMutableDictionary *)self->_idsSendIDToCompletionHandler removeObjectForKey:v10];
    clientQueue = self->_clientQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100013060;
    block[3] = &unk_10002CF00;
    v32 = v12;
    v31 = v11;
    dispatch_async(clientQueue, block);
  }

  if (!v11 && a6)
  {
    v14 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v34 = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "IDS success sending request: %{public}@", buf, 0xCu);
    }

    goto LABEL_18;
  }

  v15 = IDSErrorDomain;
  v16 = [v11 domain];
  if ([v15 isEqual:v16])
  {
    v17 = [v11 code];

    if (v17 == 24)
    {
      v18 = nb_daemon_log;
      if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v34 = v10;
        v19 = "IDS message %{public}@ was replaced by another message";
        v20 = v18;
        v21 = 12;
LABEL_14:
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
        goto LABEL_15;
      }

      goto LABEL_15;
    }
  }

  else
  {
  }

  v22 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v34 = v11;
    v35 = 2114;
    v36 = v10;
    v19 = "IDS error sending request: %{public}@ %{public}@";
    v20 = v22;
    v21 = 22;
    goto LABEL_14;
  }

LABEL_15:
  v23 = [(NSMutableDictionary *)self->_idsSendIDToResponseHandler objectForKeyedSubscript:v10];
  v24 = v23;
  if (v23)
  {
    idsSendIDToResponseHandler = self->_idsSendIDToResponseHandler;
    v26 = objc_retainBlock(v23);
    [(NSMutableDictionary *)idsSendIDToResponseHandler removeObjectForKey:v26];

    v27 = self->_clientQueue;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100013074;
    v28[3] = &unk_10002CED8;
    v29 = v24;
    dispatch_async(v27, v28);
  }

LABEL_18:
}

- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8
{
  v46 = a3;
  v45 = a4;
  v48 = a5;
  v14 = a6;
  v47 = a7;
  v42 = a8;
  v15 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "incomingResourceAtURL called", buf, 2u);
  }

  v44 = v14;
  v16 = [v14 objectForKeyedSubscript:{@"MessageType", v42}];
  v17 = [v16 shortValue];

  v18 = NSTemporaryDirectory();
  v19 = +[NSUUID UUID];
  v20 = [v19 UUIDString];
  v21 = [v18 stringByAppendingPathComponent:v20];
  v22 = [NSURL fileURLWithPath:v21];

  v23 = +[NSFileManager defaultManager];
  v54 = 0;
  v24 = v48;
  [v23 linkItemAtURL:v48 toURL:v22 error:&v54];
  v25 = v54;

  if (v25)
  {
    v26 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v56 = v25;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Failed to hardlink url, this will cause a failure eventually: %@", buf, 0xCu);
    }
  }

  v27 = [NSNumber numberWithInteger:8];
  v28 = [(NSMutableDictionary *)self->_idsRequestMessageTypeToSelector objectForKeyedSubscript:v27];
  v29 = v28;
  if (!v28)
  {
    v38 = nb_daemon_log;
    v37 = v43;
    if (!os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    serviceName = self->_serviceName;
    *buf = 138412802;
    v56 = serviceName;
    v57 = 2048;
    v58 = v17;
    v59 = 2112;
    v60 = v22;
    v40 = v38;
LABEL_15:
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "(%@): No selector found for type=%ld length=%@", buf, 0x20u);
    goto LABEL_16;
  }

  v30 = [v28 method];
  v31 = nb_daemon_log;
  v32 = os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT);
  if (!v30)
  {
    v37 = v43;
    if (!v32)
    {
      goto LABEL_16;
    }

    v41 = self->_serviceName;
    *buf = 138412802;
    v56 = v41;
    v57 = 2048;
    v58 = v17;
    v59 = 2112;
    v60 = v22;
    v40 = v31;
    goto LABEL_15;
  }

  if (v32)
  {
    v33 = self->_serviceName;
    v34 = v31;
    v35 = NSStringFromSelector([v29 selector]);
    *buf = 138413314;
    v56 = v33;
    v57 = 2114;
    v58 = v35;
    v59 = 2048;
    v60 = v17;
    v61 = 2112;
    v62 = v22;
    v63 = 2114;
    v24 = v48;
    v64 = v47;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "(%@): Calling selector %{public}@ for type=%ld url=%@ messageSource=%{public}@", buf, 0x34u);
  }

  clientQueue = self->_clientQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013510;
  block[3] = &unk_10002CFA0;
  v53 = v30;
  block[4] = self;
  v50 = v29;
  v51 = v22;
  v37 = v43;
  v52 = v43;
  dispatch_async(clientQueue, block);

LABEL_16:
}

- (void)service:(id)a3 didSwitchActivePairedDevice:(id)a4 acknowledgementBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_service == v8)
  {
    v11 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "executing IDS acknowledgementBlock", v12, 2u);
    }

    v10[2](v10);
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end