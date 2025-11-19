@interface NMSMessageCenter
- (NMSMessageCenter)initWithIDSServiceIdentifier:(id)a3;
- (NMSMessageCenterDelegate)delegate;
- (NSString)description;
- (id)_findPendingRequestByIdentifier:(id)a3;
- (void)_checkConnectedDevice;
- (void)_handleError:(id)a3 forRequest:(id)a4;
- (void)_handleError:(id)a3 forResponse:(id)a4;
- (void)_invalidateOutgoingRequest:(id)a3;
- (void)_notifyDidChangeConnectedState;
- (void)_sendResponse:(id)a3;
- (void)_setConnectedDevice:(id)a3;
- (void)dropExtantMessages;
- (void)resume;
- (void)sendRequest:(id)a3;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 connectedDevicesChanged:(id)a4;
- (void)service:(id)a3 devicesChanged:(id)a4;
@end

@implementation NMSMessageCenter

- (NMSMessageCenter)initWithIDSServiceIdentifier:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = NMSMessageCenter;
  v5 = [(NMSMessageCenter *)&v20 init];
  if (v5)
  {
    v6 = [v4 copy];
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
  v4 = [(IDSService *)self->_service devices];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
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

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:
}

- (void)_setConnectedDevice:(id)a3
{
  v5 = a3;
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

  if (self->_connectedDevice != v5)
  {
    v7 = sub_1000145AC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Connected device changed to: %@", &v8, 0xCu);
    }

    objc_storeStrong(&self->_connectedDevice, a3);
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

- (void)service:(id)a3 connectedDevicesChanged:(id)a4
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

- (void)service:(id)a3 devicesChanged:(id)a4
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

- (void)sendRequest:(id)a3
{
  v5 = a3;
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

  v8 = [v5 idsIdentifier];

  if (v8)
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
  v15 = v5;
  v16 = self;
  v17 = v10;
  v12 = v10;
  v13 = v5;
  dispatch_async(queue, block);
}

- (void)_sendResponse:(id)a3
{
  v5 = a3;
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

  v8 = [v5 request];
  v9 = [v8 idsIdentifier];

  if (!v9)
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

  if ([v5 isSent])
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

  [v5 setSent:1];
  v12 = [v5 request];
  v13 = os_transaction_create();
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015A98;
  block[3] = &unk_100034E78;
  v19 = v5;
  v20 = v12;
  v21 = self;
  v22 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v5;
  dispatch_async(queue, block);
}

- (void)_handleError:(id)a3 forRequest:(id)a4
{
  v12 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_queue);
  [v6 invalidateReplyTimer];
  v7 = [v6 idsIdentifier];

  if (v7)
  {
    pendingRequests = self->_pendingRequests;
    v9 = [v6 idsIdentifier];
    [(NSMutableDictionary *)pendingRequests removeObjectForKey:v9];
  }

  v10 = [v6 errorHandler];

  if (v10)
  {
    v11 = [v6 errorHandler];
    (v11)[2](v11, v12);
  }
}

- (void)_handleError:(id)a3 forResponse:(id)a4
{
  v12 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v7 = [v6 idsIdentifier];

  if (v7)
  {
    pendingResponses = self->_pendingResponses;
    v9 = [v6 idsIdentifier];
    [(NSMutableDictionary *)pendingResponses removeObjectForKey:v9];
  }

  v10 = [v6 errorHandler];

  if (v10)
  {
    v11 = [v6 errorHandler];
    (v11)[2](v11, v12);
  }
}

- (id)_findPendingRequestByIdentifier:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  v6 = [(NSMutableDictionary *)self->_pendingRequests objectForKey:v5];

  return v6;
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v24 = a5;
  v10 = a7;
  dispatch_assert_queue_V2(self->_queue);
  v11 = [(NSMutableDictionary *)self->_pendingRequests objectForKeyedSubscript:v24];
  v12 = v11;
  if (v11)
  {
    if (a6)
    {
      v13 = [v11 didSendHandler];

      if (v13)
      {
        v14 = [v12 didSendHandler];
        v14[2]();
      }

      v15 = [v12 responseHandler];

      if (v15)
      {
        v15 = 0;
        goto LABEL_21;
      }

      pendingRequests = self->_pendingRequests;
LABEL_20:
      [(NSMutableDictionary *)pendingRequests removeObjectForKey:v24];
      goto LABEL_21;
    }

    v15 = 0;
  }

  else
  {
    v16 = [(NSMutableDictionary *)self->_pendingResponses objectForKeyedSubscript:v24];
    v15 = v16;
    if (a6)
    {
      v17 = [v16 response];

      if (!v17)
      {
        goto LABEL_21;
      }

      v18 = [v15 response];
      v19 = [v18 didSendHandler];

      if (v19)
      {
        v20 = [v15 response];
        v21 = [v20 didSendHandler];
        v21[2]();
      }

      pendingRequests = self->_pendingResponses;
      goto LABEL_20;
    }
  }

  if (v10)
  {
    if (v12)
    {
LABEL_15:
      [(NMSMessageCenter *)self _handleError:v10 forRequest:v12];
      goto LABEL_21;
    }
  }

  else
  {
    v10 = [NSError errorWithDomain:@"NMSErrorDomain" code:3 userInfo:0];
    if (v12)
    {
      goto LABEL_15;
    }
  }

  if (v15)
  {
    v23 = [v15 response];
    [(NMSMessageCenter *)self _handleError:v10 forResponse:v23];
  }

LABEL_21:
}

- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a5;
  v11 = a7;
  queue = self->_queue;
  v13 = a3;
  dispatch_assert_queue_V2(queue);
  service = self->_service;

  if (service == v13)
  {
    self->_lastDataReceived = sub_100016724();
    v15 = [v11 incomingResponseIdentifier];

    v16 = [v10 length];
    if (v15)
    {
      if (v16 >= 2)
      {
        v17 = *[v10 bytes];
        v18 = [v10 subdataWithRange:{2, objc_msgSend(v10, "length") - 2}];
        v19 = [v11 incomingResponseIdentifier];
        v20 = [(NMSMessageCenter *)self _findPendingRequestByIdentifier:v19];

        v21 = sub_1000145AC();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [v10 length];
          v23 = [v11 incomingResponseIdentifier];
          v46 = 67109634;
          v47 = v17;
          v48 = 2048;
          v49 = v22;
          v50 = 2112;
          v51 = v23;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Received incoming response ID %hu of size %tu with incomingResponseIdentifer %@", &v46, 0x1Cu);
        }

        if (v20)
        {
          v24 = [v20 responseHandler];
          pendingRequests = self->_pendingRequests;
          v26 = [v11 incomingResponseIdentifier];
          [(NSMutableDictionary *)pendingRequests removeObjectForKey:v26];

          [v20 invalidateReplyTimer];
          v27 = [v20 responseHandler];

          if (v27)
          {
            (v24->_messageCenter)(v24, v18);
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

          v24 = objc_alloc_init(NMSUnpairedResponse);
          [(NMSUnpairedResponse *)v24 setMessageCenter:self];
          [(NMSUnpairedResponse *)v24 setData:v18];
          [(NMSUnpairedResponse *)v24 setMessageID:v17];
          v41 = [v11 incomingResponseIdentifier];
          [(NMSUnpairedResponse *)v24 setIdsIdentifier:v41];

          v42 = objc_loadWeakRetained(&self->_delegate);
          [v42 messageCenter:self didReceiveUnpairedResponse:v24];
        }

        goto LABEL_17;
      }
    }

    else if (v16 >= 3)
    {
      v28 = [v10 bytes];
      v29 = *v28;
      v30 = *(v28 + 2);
      v18 = objc_alloc_init(NMSIncomingRequest);
      [(NMSIncomingRequest *)v18 setMessageCenter:self];
      [(NMSIncomingRequest *)v18 setMessageID:v29];
      v31 = [v11 outgoingResponseIdentifier];
      [(NMSIncomingRequest *)v18 setIdsIdentifier:v31];

      [(NMSIncomingRequest *)v18 setPriority:v30];
      -[NMSIncomingRequest setExpectsResponse:](v18, "setExpectsResponse:", [v11 expectsPeerResponse]);
      v32 = [v10 subdataWithRange:{3, objc_msgSend(v10, "length") - 3}];
      [(NMSIncomingRequest *)v18 setData:v32];

      [(NMSIncomingRequest *)v18 configureResponse];
      v33 = sub_1000145AC();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [v10 length];
        v35 = [(NMSIncomingRequest *)v18 idsIdentifier];
        v46 = 67109634;
        v47 = v29;
        v48 = 2048;
        v49 = v34;
        v50 = 2112;
        v51 = v35;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Received incoming request ID %hu of size %tu with outgoingResponseIdentifier %@", &v46, 0x1Cu);
      }

      requestHandlers = self->_requestHandlers;
      v37 = [NSNumber numberWithUnsignedShort:v29];
      v20 = [(NSMutableDictionary *)requestHandlers objectForKeyedSubscript:v37];

      if (v20)
      {
        v38 = [v20 target];
        [v38 performSelector:objc_msgSend(v20 withObject:{"action"), v18}];
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

- (void)_invalidateOutgoingRequest:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000167FC;
  v7[3] = &unk_100034580;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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