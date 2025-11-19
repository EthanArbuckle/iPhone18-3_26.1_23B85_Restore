@interface MRDIDSServiceConnection
- (BOOL)isConnected;
- (BOOL)sendMessage:(id)a3 type:(id)a4 destination:(id)a5 session:(id)a6 options:(id)a7 priority:(int64_t)a8 response:(id)a9;
- (IDSDevice)device;
- (MRDIDSServiceConnection)init;
- (MRDIDSServiceConnection)initWithDevice:(id)a3;
- (MRDIDSServiceConnection)initWithDeviceUID:(id)a3;
- (NSString)debugDescription;
- (NSString)name;
- (id)_configurationFromDestination:(id)a3 session:(id)a4;
- (unint64_t)_generateMessageID;
- (void)_maybeDeviceConnectionStatusChanged;
- (void)dealloc;
- (void)handleDidReceiveResetConnectionRequest;
- (void)handleIncomingMessage:(id)a3 type:(id)a4 destination:(id)a5 session:(id)a6 messageID:(id)a7 replyID:(id)a8;
- (void)removeMessageHandlerForType:(id)a3;
- (void)removeMessageHandlerForType:(id)a3 destination:(id)a4 session:(id)a5;
- (void)resetConnection;
- (void)setDevice:(id)a3;
- (void)setMessageHandler:(id)a3 forType:(id)a4;
- (void)setMessageHandler:(id)a3 forType:(id)a4 destination:(id)a5 session:(id)a6;
@end

@implementation MRDIDSServiceConnection

- (MRDIDSServiceConnection)init
{
  v11.receiver = self;
  v11.super_class = MRDIDSServiceConnection;
  v2 = [(MRDIDSServiceConnection *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.mediaremote.MRDIDSServiceConnection", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = +[MRDIDSService sharedService];
    mrService = v2->_mrService;
    v2->_mrService = v6;

    v8 = [(MRDIDSService *)v2->_mrService idsService];
    idsService = v2->_idsService;
    v2->_idsService = v8;

    [(IDSService *)v2->_idsService addDelegate:v2 queue:v2->_queue];
  }

  return v2;
}

- (MRDIDSServiceConnection)initWithDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueIDOverride];
  v6 = [(MRDIDSServiceConnection *)self initWithDeviceUID:v5];

  if (v6)
  {
    [(MRDIDSServiceConnection *)v6 setDevice:v4];
  }

  return v6;
}

- (MRDIDSServiceConnection)initWithDeviceUID:(id)a3
{
  v5 = a3;
  v6 = [(MRDIDSServiceConnection *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_deviceUID, a3);
    objc_initWeak(&location, v7);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10018AB24;
    v12[3] = &unk_1004C0480;
    objc_copyWeak(&v13, &location);
    [(MRDIDSServiceConnection *)v7 setMessageHandler:v12 forType:MRIDSServiceMessageTypeResetConnection];
    queue = v7->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10018AB64;
    block[3] = &unk_1004B6D08;
    v11 = v7;
    dispatch_async(queue, block);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v7;
}

- (void)dealloc
{
  if (self->_serviceHandlerToken)
  {
    [(MRDIDSService *)self->_mrService removeHandler:?];
    serviceHandlerToken = self->_serviceHandlerToken;
    self->_serviceHandlerToken = 0;
  }

  v4.receiver = self;
  v4.super_class = MRDIDSServiceConnection;
  [(MRDIDSServiceConnection *)&v4 dealloc];
}

- (NSString)debugDescription
{
  v3 = [[NSMutableString alloc] initWithFormat:@"<%@:%p {\n", objc_opt_class(), self];
  v4 = self;
  objc_sync_enter(v4);
  [v3 appendFormat:@" deviceUID = %@\n", v4->_deviceUID];
  device = v4->_device;
  v6 = MRCreateIndentedDebugDescriptionFromObject();
  [v3 appendFormat:@" device = %@\n", v6];

  [v3 appendFormat:@" service = %@\n", v4->_mrService];
  messageHandlers = v4->_messageHandlers;
  v8 = MRCreateIndentedDebugDescriptionFromObject();
  [v3 appendFormat:@" messageHandlers = %@\n", v8];

  destinationMessageHandlers = v4->_destinationMessageHandlers;
  v10 = MRCreateIndentedDebugDescriptionFromObject();
  [v3 appendFormat:@" destinationMessageHandlers = %@\n", v10];

  responseHandlers = v4->_responseHandlers;
  v12 = MRCreateIndentedDebugDescriptionFromObject();
  [v3 appendFormat:@" responseMessageHandlers = %@\n", v12];

  [v3 appendFormat:@" deviceMessageHandler = %@\n", v4->_serviceHandlerToken];
  v13 = objc_retainBlock(v4->_invalidationHandler);
  [v3 appendFormat:@" invalidationHandler = %@\n", v13];

  v14 = objc_retainBlock(v4->_connectionHandler);
  [v3 appendFormat:@" connectionHandler = %@\n", v14];

  objc_sync_exit(v4);
  [v3 appendFormat:@"}>"];

  return v3;
}

- (void)setDevice:(id)a3
{
  v4 = a3;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(MRDIDSServiceConnection *)self device];
    v7 = [v6 uniqueIDOverride];
    *buf = 138412802;
    v17 = self;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDIDSServiceConnection] %@ Setting IDSDevice from %@ to %@", buf, 0x20u);
  }

  v8 = self;
  objc_sync_enter(v8);
  if (v8->_serviceHandlerToken)
  {
    [(MRDIDSService *)v8->_mrService removeHandler:?];
    serviceHandlerToken = v8->_serviceHandlerToken;
    v8->_serviceHandlerToken = 0;
  }

  if (v4)
  {
    objc_initWeak(buf, v8);
    mrService = v8->_mrService;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10018AFAC;
    v14[3] = &unk_1004C04A8;
    objc_copyWeak(&v15, buf);
    v11 = [(MRDIDSService *)mrService _addMessageHandlerForDevice:v4 handler:v14];
    v12 = v8->_serviceHandlerToken;
    v8->_serviceHandlerToken = v11;

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  device = v8->_device;
  v8->_device = v4;

  objc_sync_exit(v8);
}

- (IDSDevice)device
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_device;
  objc_sync_exit(v2);

  return v3;
}

- (NSString)name
{
  v2 = [(MRDIDSServiceConnection *)self device];
  v3 = [v2 name];

  return v3;
}

- (BOOL)isConnected
{
  v2 = [(MRDIDSServiceConnection *)self device];
  v3 = v2 != 0;

  return v3;
}

- (void)resetConnection
{
  if ([(MRDIDSServiceConnection *)self isConnected])
  {
    v3 = MRIDSServiceMessageTypeResetConnection;

    [(MRDIDSServiceConnection *)self sendMessage:0 type:v3 destination:0 session:0 options:0 priority:300];
  }
}

- (BOOL)sendMessage:(id)a3 type:(id)a4 destination:(id)a5 session:(id)a6 options:(id)a7 priority:(int64_t)a8 response:(id)a9
{
  mrService = self->_mrService;
  v17 = a9;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = [(MRDIDSServiceConnection *)self device];
  LOBYTE(a8) = [(MRDIDSService *)mrService _sendMessage:v22 device:v23 type:v21 destination:v20 session:v19 options:v18 priority:a8 replyID:0 response:v17];

  return a8;
}

- (void)setMessageHandler:(id)a3 forType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  if (!v8->_messageHandlers)
  {
    v9 = objc_alloc_init(NSMutableDictionary);
    messageHandlers = v8->_messageHandlers;
    v8->_messageHandlers = v9;
  }

  v11 = [v6 copy];
  v12 = objc_retainBlock(v11);
  [(NSMutableDictionary *)v8->_messageHandlers setObject:v12 forKeyedSubscript:v7];

  v13 = _MRLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = v8->_messageHandlers;
    v15 = 138412802;
    v16 = v8;
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v14;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "[MRDIDSServiceConnection] %@ Added handler for %@ %@", &v15, 0x20u);
  }

  objc_sync_exit(v8);
}

- (void)setMessageHandler:(id)a3 forType:(id)a4 destination:(id)a5 session:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  objc_sync_enter(v14);
  destinationMessageHandlers = v14->_destinationMessageHandlers;
  if (!destinationMessageHandlers)
  {
    v16 = objc_alloc_init(NSMutableDictionary);
    v17 = v14->_destinationMessageHandlers;
    v14->_destinationMessageHandlers = v16;

    destinationMessageHandlers = v14->_destinationMessageHandlers;
  }

  v18 = [(NSMutableDictionary *)destinationMessageHandlers objectForKeyedSubscript:v11];
  if (!v18)
  {
    v18 = objc_alloc_init(NSMutableDictionary);
    [(NSMutableDictionary *)v14->_destinationMessageHandlers setObject:v18 forKeyedSubscript:v11];
  }

  v19 = [v10 copy];
  v20 = [(MRDIDSServiceConnection *)v14 _configurationFromDestination:v12 session:v13];
  [v18 setObject:v19 forKeyedSubscript:v20];

  v21 = _MRLogForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v22 = v14->_destinationMessageHandlers;
    v23 = 138413058;
    v24 = v11;
    v25 = 2112;
    v26 = v12;
    v27 = 2112;
    v28 = v13;
    v29 = 2112;
    v30 = v22;
    _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "[MRDIDSServiceConnection] Added destination handler for type=%@, destination=%@, session=%@, %@", &v23, 0x2Au);
  }

  objc_sync_exit(v14);
}

- (void)removeMessageHandlerForType:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_messageHandlers objectForKeyedSubscript:v4];

  if (v6)
  {
    [(NSMutableDictionary *)v5->_messageHandlers setObject:0 forKeyedSubscript:v4];
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1003AC860(v4, &v5->_messageHandlers, v7);
    }
  }

  objc_sync_exit(v5);
}

- (void)removeMessageHandlerForType:(id)a3 destination:(id)a4 session:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  objc_sync_enter(v11);
  v12 = [(MRDIDSServiceConnection *)v11 _configurationFromDestination:v9 session:v10];
  v13 = [(NSMutableDictionary *)v11->_destinationMessageHandlers objectForKeyedSubscript:v8];
  v14 = [v13 objectForKeyedSubscript:v12];

  if (v14)
  {
    v15 = [(NSMutableDictionary *)v11->_destinationMessageHandlers objectForKeyedSubscript:v8];
    [v15 setObject:0 forKeyedSubscript:v12];

    v16 = _MRLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      destinationMessageHandlers = v11->_destinationMessageHandlers;
      v18 = 138413058;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v10;
      v24 = 2112;
      v25 = destinationMessageHandlers;
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "[MRDIDSServiceConnection] Remove destination handler for type=%@, destination=%@, session=%@, %@", &v18, 0x2Au);
    }
  }

  objc_sync_exit(v11);
}

- (void)handleDidReceiveResetConnectionRequest
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018B934;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)handleIncomingMessage:(id)a3 type:(id)a4 destination:(id)a5 session:(id)a6 messageID:(id)a7 replyID:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v40 = a7;
  v18 = a8;
  v19 = _MRLogForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v14 data];
    *buf = 138413826;
    v53 = self;
    v54 = 2112;
    v55 = v40;
    v56 = 2112;
    v57 = v20;
    v58 = 2112;
    v59 = v15;
    v60 = 2112;
    v61 = v16;
    v62 = 2112;
    v63 = v17;
    v64 = 2112;
    v65 = v18;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[MRDIDSServiceConnection] %@ Message received<%@>: data=%@ type=%@ destination=%@ session=%@ replyID=%@", buf, 0x48u);
  }

  v21 = self;
  objc_sync_enter(v21);
  v22 = [(NSMutableDictionary *)v21->_messageHandlers objectForKeyedSubscript:v15];
  v23 = [(NSMutableDictionary *)v21->_destinationMessageHandlers objectForKeyedSubscript:v15];
  v24 = [(MRDIDSServiceConnection *)v21 _configurationFromDestination:v16 session:v17];
  v25 = [v23 objectForKeyedSubscript:v24];

  if (v18)
  {
    v26 = [(NSMutableDictionary *)v21->_responseHandlers objectForKeyedSubscript:v18];
    [(NSMutableDictionary *)v21->_responseHandlers setObject:0 forKeyedSubscript:v18];
  }

  else
  {
    v26 = 0;
  }

  objc_sync_exit(v21);
  if (v26)
  {
    v37 = v18;
    queue = v15;
    v27 = v22;
    v28 = v17;
    v29 = v16;
    v30 = v21->_queue;
    v31 = v14;
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_10018BE50;
    v49[3] = &unk_1004B8B50;
    v32 = &v51;
    v51 = v26;
    v33 = &v50;
    v34 = v31;
    v50 = v31;
    v35 = v49;
LABEL_12:
    dispatch_async(v30, v35);

    v14 = v34;
    v16 = v29;
    v17 = v28;
    v22 = v27;
    v18 = v37;
    v15 = queue;

    goto LABEL_13;
  }

  if (v22)
  {
    queuea = v21->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10018BE64;
    block[3] = &unk_1004BB398;
    v48 = v22;
    v45 = v14;
    v46 = v16;
    v47 = v17;
    dispatch_async(queuea, block);
  }

  if (v25)
  {
    v37 = v18;
    queue = v15;
    v27 = v22;
    v28 = v17;
    v29 = v16;
    v30 = v21->_queue;
    v36 = v14;
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_10018BE7C;
    v41[3] = &unk_1004B8B50;
    v32 = &v43;
    v43 = v25;
    v33 = &v42;
    v34 = v36;
    v42 = v36;
    v35 = v41;
    goto LABEL_12;
  }

LABEL_13:
}

- (void)_maybeDeviceConnectionStatusChanged
{
  dispatch_assert_queue_V2(self->_queue);
  [(IDSService *)self->_idsService devices];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v3 = v20 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = *v20;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v8 = [v7 uniqueIDOverride];
        v9 = [(MRDIDSServiceConnection *)self deviceUID];
        v10 = [v8 isEqualToString:v9];

        if (v10)
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = [(MRDIDSServiceConnection *)self device];
  if (v4 != v11 && ([v4 isEqual:v11] & 1) == 0)
  {
    [(MRDIDSServiceConnection *)self setDevice:v4];
    v12 = self;
    objc_sync_enter(v12);
    if (v4)
    {
      v13 = [v12->_connectionHandler copy];
      v14 = 0;
    }

    else
    {
      v14 = [v12->_invalidationHandler copy];
      v13 = 0;
    }

    objc_sync_exit(v12);

    if (v13 | v14)
    {
      queue = self->_queue;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10018C104;
      v16[3] = &unk_1004C04D0;
      v17 = v13;
      v18 = v14;
      dispatch_async(queue, v16);
    }
  }
}

- (unint64_t)_generateMessageID
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_totalOutgoingMessageCount + 1;
  v2->_totalOutgoingMessageCount = v3;
  objc_sync_exit(v2);

  return v3;
}

- (id)_configurationFromDestination:(id)a3 session:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [NSString alloc];
  v8 = @"default";
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = @"default";
  }

  if (v5)
  {
    v8 = v5;
  }

  v10 = [v7 initWithFormat:@"%@-%@", v9, v8];

  return v10;
}

@end