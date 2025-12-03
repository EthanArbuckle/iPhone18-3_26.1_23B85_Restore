@interface NBRemoteObject
- (NBRemoteObject)initWithServiceName:(id)name andDelegate:(id)delegate andClientQueue:(id)queue;
- (id)delegate;
- (void)_messageResponseTimeout:(id)timeout;
- (void)_sendMessage:(id)message type:(unsigned __int16)type requestUUID:(id)d withTimeout:(id)timeout withResponseTimeout:(id)responseTimeout withDescription:(id)description onlyOneFor:(id)for didSend:(id)self0 andResponse:(id)self1;
- (void)_storeProtobufAction:(SEL)action messageType:(unsigned __int16)type messageSendType:(int64_t)sendType;
- (void)handleIncomingMessage:(id)message;
- (void)invalidate;
- (void)sendFileRequest:(id)request type:(unsigned __int16)type withTimeout:(id)timeout withResponseTimeout:(id)responseTimeout withDescription:(id)description onlyOneFor:(id)for didSend:(id)send andResponse:(id)self0;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context;
- (void)service:(id)service didSwitchActivePairedDevice:(id)device acknowledgementBlock:(id)block;
@end

@implementation NBRemoteObject

- (NBRemoteObject)initWithServiceName:(id)name andDelegate:(id)delegate andClientQueue:(id)queue
{
  nameCopy = name;
  delegateCopy = delegate;
  queueCopy = queue;
  v33.receiver = self;
  v33.super_class = NBRemoteObject;
  v11 = [(NBRemoteObject *)&v33 init];
  if (v11)
  {
    v12 = [nameCopy copy];
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
    v21 = dispatch_queue_create([nameCopy UTF8String], v20);
    idsQueue = v11->_idsQueue;
    v11->_idsQueue = v21;

    if (queueCopy)
    {
      v23 = queueCopy;
      clientQueue = v11->_clientQueue;
      v11->_clientQueue = v23;
    }

    else
    {
      clientQueue = [nameCopy stringByAppendingString:@".client"];
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
    [(NBRemoteObject *)v11 setDelegate:delegateCopy];
    v31 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = nameCopy;
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

- (void)handleIncomingMessage:(id)message
{
  messageCopy = message;
  v5 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    serviceName = self->_serviceName;
    v7 = v5;
    type = [messageCopy type];
    data = [messageCopy data];
    v10 = [data length];
    isResponse = [messageCopy isResponse];
    v12 = &__kCFBooleanFalse;
    if (isResponse)
    {
      v12 = &__kCFBooleanTrue;
    }

    *buf = 138413058;
    v56 = serviceName;
    v57 = 2048;
    v58 = type;
    v59 = 2048;
    v60 = v10;
    v61 = 2112;
    v62 = v12;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(%@): IDS message received type=%ld length=%ld response=%@", buf, 0x2Au);
  }

  context = [messageCopy context];
  incomingResponseIdentifier = [context incomingResponseIdentifier];

  if ([messageCopy isResponse] && incomingResponseIdentifier)
  {
    v15 = [(NSMutableDictionary *)self->_idsSendIDToTimer objectForKeyedSubscript:incomingResponseIdentifier];
    [v15 invalidate];
    [(NSMutableDictionary *)self->_idsSendIDToTimer removeObjectForKey:incomingResponseIdentifier];
    v16 = [(NSMutableDictionary *)self->_idsSendIDToResponseHandler objectForKeyedSubscript:incomingResponseIdentifier];
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
        v58 = incomingResponseIdentifier;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "(%@): matched response %{public}@, executing block", buf, 0x16u);
      }

      [(NSMutableDictionary *)self->_idsSendIDToResponseHandler removeObjectForKey:incomingResponseIdentifier];
      clientQueue = self->_clientQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100011A94;
      block[3] = &unk_10002CF00;
      v54 = v16;
      v53 = messageCopy;
      dispatch_async(clientQueue, block);
    }

    else if (v18)
    {
      v21 = self->_serviceName;
      *buf = 138412546;
      v56 = v21;
      v57 = 2114;
      v58 = incomingResponseIdentifier;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "(%@): no ack block found for response %{public}@, ignoring", buf, 0x16u);
    }
  }

  if ([messageCopy isResponse])
  {
    v22 = 0x10000;
  }

  else
  {
    v22 = 0;
  }

  v23 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v22 | [messageCopy type]);
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
    type2 = [messageCopy type];
    data2 = [messageCopy data];
    v39 = [data2 length];
    isResponse2 = [messageCopy isResponse];
    v41 = &__kCFBooleanFalse;
    if (isResponse2)
    {
      v41 = &__kCFBooleanTrue;
    }

LABEL_32:
    *buf = 138413058;
    v56 = v35;
    v57 = 2048;
    v58 = type2;
    v59 = 2048;
    v60 = v39;
    v61 = 2112;
    v62 = v41;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "(%@): No selector found for type=%ld length=%ld response=%@", buf, 0x2Au);

    goto LABEL_33;
  }

  method = [v24 method];
  v27 = nb_daemon_log;
  v28 = os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT);
  if (!method)
  {
    if (!v28)
    {
      goto LABEL_33;
    }

    v35 = self->_serviceName;
    v36 = v27;
    type2 = [messageCopy type];
    data2 = [messageCopy data];
    v39 = [data2 length];
    isResponse3 = [messageCopy isResponse];
    v41 = &__kCFBooleanFalse;
    if (isResponse3)
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
    type3 = [messageCopy type];
    data3 = [messageCopy data];
    v43 = [data3 length];
    if ([messageCopy isResponse])
    {
      v30 = &__kCFBooleanTrue;
    }

    else
    {
      v30 = &__kCFBooleanFalse;
    }

    context2 = [messageCopy context];
    fromID = [context2 fromID];
    *buf = 138413570;
    v56 = v45;
    v57 = 2114;
    v58 = v29;
    v59 = 2048;
    v60 = type3;
    v61 = 2048;
    v62 = v43;
    v63 = 2112;
    v64 = v30;
    v65 = 2114;
    v66 = fromID;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "(%@): Calling selector %{public}@ for type=%ld length=%ld response=%@ messageSource=%{public}@", buf, 0x3Eu);
  }

  v33 = self->_clientQueue;
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_100011AA8;
  v48[3] = &unk_10002CF28;
  v51 = method;
  v48[4] = self;
  v49 = v25;
  v50 = messageCopy;
  dispatch_async(v33, v48);

LABEL_33:
}

- (void)_storeProtobufAction:(SEL)action messageType:(unsigned __int16)type messageSendType:(int64_t)sendType
{
  typeCopy = type;
  v10 = objc_alloc_init(NBPBSelectorItem);
  [(NBPBSelectorItem *)v10 setSelector:action];
  if (action)
  {
    [(NBPBSelectorItem *)v10 setMethod:[(NBRemoteObject *)self methodForSelector:action]];
  }

  v9 = [NSNumber numberWithInteger:typeCopy | (sendType << 16)];
  [(NSMutableDictionary *)self->_idsRequestMessageTypeToSelector setObject:v10 forKeyedSubscript:v9];
}

- (void)sendFileRequest:(id)request type:(unsigned __int16)type withTimeout:(id)timeout withResponseTimeout:(id)responseTimeout withDescription:(id)description onlyOneFor:(id)for didSend:(id)send andResponse:(id)self0
{
  requestCopy = request;
  timeoutCopy = timeout;
  responseTimeoutCopy = responseTimeout;
  descriptionCopy = description;
  forCopy = for;
  sendCopy = send;
  responseCopy = response;
  idsQueue = self->_idsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011F24;
  block[3] = &unk_10002CF50;
  block[4] = self;
  v32 = requestCopy;
  typeCopy = type;
  v33 = timeoutCopy;
  v34 = responseTimeoutCopy;
  v35 = descriptionCopy;
  v36 = forCopy;
  v37 = sendCopy;
  v38 = responseCopy;
  v24 = responseCopy;
  v25 = sendCopy;
  v26 = forCopy;
  v27 = descriptionCopy;
  v28 = responseTimeoutCopy;
  v29 = timeoutCopy;
  v30 = requestCopy;
  dispatch_async(idsQueue, block);
}

- (void)_sendMessage:(id)message type:(unsigned __int16)type requestUUID:(id)d withTimeout:(id)timeout withResponseTimeout:(id)responseTimeout withDescription:(id)description onlyOneFor:(id)for didSend:(id)self0 andResponse:(id)self1
{
  messageCopy = message;
  dCopy = d;
  timeoutCopy = timeout;
  responseTimeoutCopy = responseTimeout;
  descriptionCopy = description;
  forCopy = for;
  sendCopy = send;
  responseCopy = response;
  dispatch_assert_queue_not_V2(self->_idsQueue);
  idsQueue = self->_idsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012294;
  block[3] = &unk_10002CF78;
  block[4] = self;
  v35 = messageCopy;
  typeCopy = type;
  v36 = dCopy;
  v37 = timeoutCopy;
  v38 = responseTimeoutCopy;
  v39 = descriptionCopy;
  v40 = forCopy;
  v41 = sendCopy;
  v42 = responseCopy;
  v25 = responseCopy;
  v26 = sendCopy;
  v27 = forCopy;
  v28 = descriptionCopy;
  v29 = responseTimeoutCopy;
  v30 = timeoutCopy;
  v31 = dCopy;
  v32 = messageCopy;
  dispatch_async(idsQueue, block);
}

- (void)_messageResponseTimeout:(id)timeout
{
  timeoutCopy = timeout;
  idsQueue = self->_idsQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100012374;
  v7[3] = &unk_10002C768;
  v8 = timeoutCopy;
  selfCopy = self;
  v6 = timeoutCopy;
  dispatch_async(idsQueue, v7);
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  v12 = [(NSMutableDictionary *)self->_idsSendIDToCompletionHandler objectForKeyedSubscript:identifierCopy];
  if (v12)
  {
    [(NSMutableDictionary *)self->_idsSendIDToCompletionHandler removeObjectForKey:identifierCopy];
    clientQueue = self->_clientQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100013060;
    block[3] = &unk_10002CF00;
    v32 = v12;
    v31 = errorCopy;
    dispatch_async(clientQueue, block);
  }

  if (!errorCopy && success)
  {
    v14 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v34 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "IDS success sending request: %{public}@", buf, 0xCu);
    }

    goto LABEL_18;
  }

  v15 = IDSErrorDomain;
  domain = [errorCopy domain];
  if ([v15 isEqual:domain])
  {
    code = [errorCopy code];

    if (code == 24)
    {
      v18 = nb_daemon_log;
      if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v34 = identifierCopy;
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
    v34 = errorCopy;
    v35 = 2114;
    v36 = identifierCopy;
    v19 = "IDS error sending request: %{public}@ %{public}@";
    v20 = v22;
    v21 = 22;
    goto LABEL_14;
  }

LABEL_15:
  v23 = [(NSMutableDictionary *)self->_idsSendIDToResponseHandler objectForKeyedSubscript:identifierCopy];
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

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context
{
  serviceCopy = service;
  accountCopy = account;
  lCopy = l;
  metadataCopy = metadata;
  dCopy = d;
  contextCopy = context;
  v15 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "incomingResourceAtURL called", buf, 2u);
  }

  v44 = metadataCopy;
  v16 = [metadataCopy objectForKeyedSubscript:{@"MessageType", contextCopy}];
  shortValue = [v16 shortValue];

  v18 = NSTemporaryDirectory();
  v19 = +[NSUUID UUID];
  uUIDString = [v19 UUIDString];
  v21 = [v18 stringByAppendingPathComponent:uUIDString];
  v22 = [NSURL fileURLWithPath:v21];

  v23 = +[NSFileManager defaultManager];
  v54 = 0;
  v24 = lCopy;
  [v23 linkItemAtURL:lCopy toURL:v22 error:&v54];
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
    v58 = shortValue;
    v59 = 2112;
    v60 = v22;
    v40 = v38;
LABEL_15:
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "(%@): No selector found for type=%ld length=%@", buf, 0x20u);
    goto LABEL_16;
  }

  method = [v28 method];
  v31 = nb_daemon_log;
  v32 = os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT);
  if (!method)
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
    v58 = shortValue;
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
    v60 = shortValue;
    v61 = 2112;
    v62 = v22;
    v63 = 2114;
    v24 = lCopy;
    v64 = dCopy;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "(%@): Calling selector %{public}@ for type=%ld url=%@ messageSource=%{public}@", buf, 0x34u);
  }

  clientQueue = self->_clientQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013510;
  block[3] = &unk_10002CFA0;
  v53 = method;
  block[4] = self;
  v50 = v29;
  v51 = v22;
  v37 = v43;
  v52 = v43;
  dispatch_async(clientQueue, block);

LABEL_16:
}

- (void)service:(id)service didSwitchActivePairedDevice:(id)device acknowledgementBlock:(id)block
{
  serviceCopy = service;
  deviceCopy = device;
  blockCopy = block;
  if (self->_service == serviceCopy)
  {
    v11 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "executing IDS acknowledgementBlock", v12, 2u);
    }

    blockCopy[2](blockCopy);
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end