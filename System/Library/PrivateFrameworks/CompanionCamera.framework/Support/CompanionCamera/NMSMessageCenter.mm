@interface NMSMessageCenter
- (NMSMessageCenter)initWithIDSServiceIdentifier:(id)identifier;
- (NMSMessageCenterDelegate)delegate;
- (NSString)description;
- (id)_findPendingRequestByIdentifier:(id)identifier;
- (void)_checkConnectedDevice;
- (void)_handleError:(id)error forRequest:(id)request;
- (void)_handleError:(id)error forResponse:(id)response;
- (void)_invalidateOutgoingRequest:(id)request;
- (void)_notifyDidChangeConnectedState;
- (void)_sendResponse:(id)response;
- (void)_setConnectedDevice:(id)device;
- (void)dropExtantMessages;
- (void)resume;
- (void)sendRequest:(id)request;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
- (void)service:(id)service connectedDevicesChanged:(id)changed;
- (void)service:(id)service devicesChanged:(id)changed;
@end

@implementation NMSMessageCenter

- (NMSMessageCenter)initWithIDSServiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = NMSMessageCenter;
  v5 = [(NMSMessageCenter *)&v20 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    serviceIdentifier = v5->_serviceIdentifier;
    v5->_serviceIdentifier = v6;

    v8 = [NSString stringWithFormat:@"NMSQ.%@", v5->_serviceIdentifier];
    v9 = dispatch_queue_create([v8 UTF8String], 0);
    queue = v5->_queue;
    v5->_queue = v9;

    v11 = objc_alloc_init(NSMutableDictionary);
    requestHandlers = v5->_requestHandlers;
    v5->_requestHandlers = v11;

    v13 = objc_alloc_init(NSMutableDictionary);
    pendingRequests = v5->_pendingRequests;
    v5->_pendingRequests = v13;

    v15 = objc_alloc_init(NSMutableDictionary);
    pendingResponses = v5->_pendingResponses;
    v5->_pendingResponses = v15;

    v17 = objc_alloc_init(NSMutableDictionary);
    pbMapping = v5->_pbMapping;
    v5->_pbMapping = v17;
  }

  return v5;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@:%p identifier:%@>", v4, self, self->_serviceIdentifier];

  return v5;
}

- (void)resume
{
  if (self->_service)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v4 = NSStringFromSelector(a2);
      [NSException raise:@"NMSMisuseException" format:@"Cannot use %@ after using -resume", v4];
    }

    else
    {
      v5 = sub_1000145AC();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        sub_100024A08(a2);
      }
    }
  }

  v6 = [[IDSService alloc] initWithService:self->_serviceIdentifier];
  service = self->_service;
  self->_service = v6;

  [(IDSService *)self->_service addDelegate:self queue:self->_queue];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100014C2C;
  block[3] = &unk_100034898;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_checkConnectedDevice
{
  v3 = sub_1000145AC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v17 = "[NMSMessageCenter _checkConnectedDevice]";
    v18 = 2080;
    v19 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/Shared/NanoMessagingService.m";
    v20 = 1024;
    v21 = 200;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  dispatch_assert_queue_V2(self->_queue);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  devices = [(IDSService *)self->_service devices];
  v5 = [devices countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(devices);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isDefaultPairedDevice])
        {
          if ([v9 isConnected])
          {
            v10 = v9;
          }

          else
          {
            v10 = 0;
          }

          [(NMSMessageCenter *)self _setConnectedDevice:v10];
          goto LABEL_16;
        }
      }

      v6 = [devices countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:
}

- (void)_setConnectedDevice:(id)device
{
  deviceCopy = device;
  v6 = sub_1000145AC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[NMSMessageCenter _setConnectedDevice:]";
    v10 = 2080;
    v11 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/Shared/NanoMessagingService.m";
    v12 = 1024;
    v13 = 213;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v8, 0x1Cu);
  }

  if (self->_connectedDevice != deviceCopy)
  {
    v7 = sub_1000145AC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = deviceCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Connected device changed to: %@", &v8, 0xCu);
    }

    objc_storeStrong(&self->_connectedDevice, device);
    [(NMSMessageCenter *)self _notifyDidChangeConnectedState];
  }
}

- (void)_notifyDidChangeConnectedState
{
  v3 = sub_1000145AC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "[NMSMessageCenter _notifyDidChangeConnectedState]";
    v9 = 2080;
    v10 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/Shared/NanoMessagingService.m";
    v11 = 1024;
    v12 = 225;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v7, 0x1Cu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 messageCenter:self didChangeConnectedState:self->_connectedDevice != 0];
  }
}

- (void)service:(id)service connectedDevicesChanged:(id)changed
{
  v5 = sub_1000145AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "[NMSMessageCenter service:connectedDevicesChanged:]";
    v8 = 2080;
    v9 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/Shared/NanoMessagingService.m";
    v10 = 1024;
    v11 = 236;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v6, 0x1Cu);
  }

  [(NMSMessageCenter *)self _checkConnectedDevice];
}

- (void)service:(id)service devicesChanged:(id)changed
{
  v5 = sub_1000145AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "[NMSMessageCenter service:devicesChanged:]";
    v8 = 2080;
    v9 = "/Library/Caches/com.apple.xbs/Sources/NanoCamera/Shared/NanoMessagingService.m";
    v10 = 1024;
    v11 = 243;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v6, 0x1Cu);
  }

  [(NMSMessageCenter *)self _checkConnectedDevice];
}

- (void)sendRequest:(id)request
{
  requestCopy = request;
  if (!self->_service)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v6 = NSStringFromSelector(a2);
      [NSException raise:@"NMSMisuseException" format:@"Cannot use %@ after until -resume is used", v6];
    }

    else
    {
      v7 = sub_1000145AC();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        sub_100024B68(a2);
      }
    }
  }

  idsIdentifier = [requestCopy idsIdentifier];

  if (idsIdentifier)
  {
    if (os_variant_has_internal_diagnostics())
    {
      [NSException raise:@"NMSMisuseException" format:@"You cannot call sendRequest twice for the same request object"];
    }

    else
    {
      v9 = sub_1000145AC();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_100024C18();
      }
    }
  }

  v10 = os_transaction_create();
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001541C;
  block[3] = &unk_1000349C0;
  v15 = requestCopy;
  selfCopy = self;
  v17 = v10;
  v12 = v10;
  v13 = requestCopy;
  dispatch_async(queue, block);
}

- (void)_sendResponse:(id)response
{
  responseCopy = response;
  if (!self->_service)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v6 = NSStringFromSelector(a2);
      [NSException raise:@"NMSMisuseException" format:@"Cannot use %@ after until -resume is used", v6];
    }

    else
    {
      v7 = sub_1000145AC();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        sub_100024B68(a2);
      }
    }
  }

  request = [responseCopy request];
  idsIdentifier = [request idsIdentifier];

  if (!idsIdentifier)
  {
    if (os_variant_has_internal_diagnostics())
    {
      [NSException raise:@"NMSMisuseException" format:@"Response's request needs an idsIdentifier"];
    }

    else
    {
      v10 = sub_1000145AC();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        sub_100024CB0();
      }
    }
  }

  if ([responseCopy isSent])
  {
    if (os_variant_has_internal_diagnostics())
    {
      [NSException raise:@"NMSMisuseException" format:@"You cannot call send twice for the same response object"];
    }

    else
    {
      v11 = sub_1000145AC();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        sub_100024D48();
      }
    }
  }

  [responseCopy setSent:1];
  request2 = [responseCopy request];
  v13 = os_transaction_create();
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015A98;
  block[3] = &unk_100034E78;
  v19 = responseCopy;
  v20 = request2;
  selfCopy = self;
  v22 = v13;
  v15 = v13;
  v16 = request2;
  v17 = responseCopy;
  dispatch_async(queue, block);
}

- (void)_handleError:(id)error forRequest:(id)request
{
  errorCopy = error;
  requestCopy = request;
  dispatch_assert_queue_V2(self->_queue);
  [requestCopy invalidateReplyTimer];
  idsIdentifier = [requestCopy idsIdentifier];

  if (idsIdentifier)
  {
    pendingRequests = self->_pendingRequests;
    idsIdentifier2 = [requestCopy idsIdentifier];
    [(NSMutableDictionary *)pendingRequests removeObjectForKey:idsIdentifier2];
  }

  errorHandler = [requestCopy errorHandler];

  if (errorHandler)
  {
    errorHandler2 = [requestCopy errorHandler];
    (errorHandler2)[2](errorHandler2, errorCopy);
  }
}

- (void)_handleError:(id)error forResponse:(id)response
{
  errorCopy = error;
  responseCopy = response;
  dispatch_assert_queue_V2(self->_queue);
  idsIdentifier = [responseCopy idsIdentifier];

  if (idsIdentifier)
  {
    pendingResponses = self->_pendingResponses;
    idsIdentifier2 = [responseCopy idsIdentifier];
    [(NSMutableDictionary *)pendingResponses removeObjectForKey:idsIdentifier2];
  }

  errorHandler = [responseCopy errorHandler];

  if (errorHandler)
  {
    errorHandler2 = [responseCopy errorHandler];
    (errorHandler2)[2](errorHandler2, errorCopy);
  }
}

- (id)_findPendingRequestByIdentifier:(id)identifier
{
  queue = self->_queue;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(queue);
  v6 = [(NSMutableDictionary *)self->_pendingRequests objectForKey:identifierCopy];

  return v6;
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_queue);
  v11 = [(NSMutableDictionary *)self->_pendingRequests objectForKeyedSubscript:identifierCopy];
  v12 = v11;
  if (v11)
  {
    if (success)
    {
      didSendHandler = [v11 didSendHandler];

      if (didSendHandler)
      {
        didSendHandler2 = [v12 didSendHandler];
        didSendHandler2[2]();
      }

      responseHandler = [v12 responseHandler];

      if (responseHandler)
      {
        responseHandler = 0;
        goto LABEL_21;
      }

      pendingRequests = self->_pendingRequests;
LABEL_20:
      [(NSMutableDictionary *)pendingRequests removeObjectForKey:identifierCopy];
      goto LABEL_21;
    }

    responseHandler = 0;
  }

  else
  {
    v16 = [(NSMutableDictionary *)self->_pendingResponses objectForKeyedSubscript:identifierCopy];
    responseHandler = v16;
    if (success)
    {
      response = [v16 response];

      if (!response)
      {
        goto LABEL_21;
      }

      response2 = [responseHandler response];
      didSendHandler3 = [response2 didSendHandler];

      if (didSendHandler3)
      {
        response3 = [responseHandler response];
        didSendHandler4 = [response3 didSendHandler];
        didSendHandler4[2]();
      }

      pendingRequests = self->_pendingResponses;
      goto LABEL_20;
    }
  }

  if (errorCopy)
  {
    if (v12)
    {
LABEL_15:
      [(NMSMessageCenter *)self _handleError:errorCopy forRequest:v12];
      goto LABEL_21;
    }
  }

  else
  {
    errorCopy = [NSError errorWithDomain:@"NMSErrorDomain" code:3 userInfo:0];
    if (v12)
    {
      goto LABEL_15;
    }
  }

  if (responseHandler)
  {
    response4 = [responseHandler response];
    [(NMSMessageCenter *)self _handleError:errorCopy forResponse:response4];
  }

LABEL_21:
}

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  dataCopy = data;
  contextCopy = context;
  queue = self->_queue;
  serviceCopy = service;
  dispatch_assert_queue_V2(queue);
  service = self->_service;

  if (service == serviceCopy)
  {
    self->_lastDataReceived = sub_100016724();
    incomingResponseIdentifier = [contextCopy incomingResponseIdentifier];

    v16 = [dataCopy length];
    if (incomingResponseIdentifier)
    {
      if (v16 >= 2)
      {
        v17 = *[dataCopy bytes];
        v18 = [dataCopy subdataWithRange:{2, objc_msgSend(dataCopy, "length") - 2}];
        incomingResponseIdentifier2 = [contextCopy incomingResponseIdentifier];
        v20 = [(NMSMessageCenter *)self _findPendingRequestByIdentifier:incomingResponseIdentifier2];

        v21 = sub_1000145AC();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [dataCopy length];
          incomingResponseIdentifier3 = [contextCopy incomingResponseIdentifier];
          v46 = 67109634;
          v47 = v17;
          v48 = 2048;
          v49 = v22;
          v50 = 2112;
          v51 = incomingResponseIdentifier3;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Received incoming response ID %hu of size %tu with incomingResponseIdentifer %@", &v46, 0x1Cu);
        }

        if (v20)
        {
          responseHandler = [v20 responseHandler];
          pendingRequests = self->_pendingRequests;
          incomingResponseIdentifier4 = [contextCopy incomingResponseIdentifier];
          [(NSMutableDictionary *)pendingRequests removeObjectForKey:incomingResponseIdentifier4];

          [v20 invalidateReplyTimer];
          responseHandler2 = [v20 responseHandler];

          if (responseHandler2)
          {
            (responseHandler->_messageCenter)(responseHandler, v18);
          }
        }

        else
        {
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          v40 = objc_opt_respondsToSelector();

          if ((v40 & 1) == 0)
          {
LABEL_17:

            goto LABEL_18;
          }

          responseHandler = objc_alloc_init(NMSUnpairedResponse);
          [(NMSUnpairedResponse *)responseHandler setMessageCenter:self];
          [(NMSUnpairedResponse *)responseHandler setData:v18];
          [(NMSUnpairedResponse *)responseHandler setMessageID:v17];
          incomingResponseIdentifier5 = [contextCopy incomingResponseIdentifier];
          [(NMSUnpairedResponse *)responseHandler setIdsIdentifier:incomingResponseIdentifier5];

          v42 = objc_loadWeakRetained(&self->_delegate);
          [v42 messageCenter:self didReceiveUnpairedResponse:responseHandler];
        }

        goto LABEL_17;
      }
    }

    else if (v16 >= 3)
    {
      bytes = [dataCopy bytes];
      v29 = *bytes;
      v30 = *(bytes + 2);
      v18 = objc_alloc_init(NMSIncomingRequest);
      [(NMSIncomingRequest *)v18 setMessageCenter:self];
      [(NMSIncomingRequest *)v18 setMessageID:v29];
      outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
      [(NMSIncomingRequest *)v18 setIdsIdentifier:outgoingResponseIdentifier];

      [(NMSIncomingRequest *)v18 setPriority:v30];
      -[NMSIncomingRequest setExpectsResponse:](v18, "setExpectsResponse:", [contextCopy expectsPeerResponse]);
      v32 = [dataCopy subdataWithRange:{3, objc_msgSend(dataCopy, "length") - 3}];
      [(NMSIncomingRequest *)v18 setData:v32];

      [(NMSIncomingRequest *)v18 configureResponse];
      v33 = sub_1000145AC();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [dataCopy length];
        idsIdentifier = [(NMSIncomingRequest *)v18 idsIdentifier];
        v46 = 67109634;
        v47 = v29;
        v48 = 2048;
        v49 = v34;
        v50 = 2112;
        v51 = idsIdentifier;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Received incoming request ID %hu of size %tu with outgoingResponseIdentifier %@", &v46, 0x1Cu);
      }

      requestHandlers = self->_requestHandlers;
      v37 = [NSNumber numberWithUnsignedShort:v29];
      v20 = [(NSMutableDictionary *)requestHandlers objectForKeyedSubscript:v37];

      if (v20)
      {
        target = [v20 target];
        [target performSelector:objc_msgSend(v20 withObject:{"action"), v18}];
      }

      else
      {
        v43 = objc_loadWeakRetained(&self->_delegate);
        v44 = objc_opt_respondsToSelector();

        if (v44)
        {
          v45 = objc_loadWeakRetained(&self->_delegate);
          [v45 messageCenter:self didReceiveUnknownRequest:v18];
        }

        else
        {
          [(NMSIncomingRequest *)v18 setExpectsResponse:0];
        }
      }

      goto LABEL_17;
    }
  }

LABEL_18:
}

- (void)_invalidateOutgoingRequest:(id)request
{
  requestCopy = request;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000167FC;
  v7[3] = &unk_100034580;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(queue, v7);
}

- (void)dropExtantMessages
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000168FC;
  block[3] = &unk_100034898;
  block[4] = self;
  dispatch_async(queue, block);
}

- (NMSMessageCenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end