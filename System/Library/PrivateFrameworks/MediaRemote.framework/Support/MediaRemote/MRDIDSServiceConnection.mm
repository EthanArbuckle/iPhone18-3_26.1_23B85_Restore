@interface MRDIDSServiceConnection
- (BOOL)isConnected;
- (BOOL)sendMessage:(id)message type:(id)type destination:(id)destination session:(id)session options:(id)options priority:(int64_t)priority response:(id)response;
- (IDSDevice)device;
- (MRDIDSServiceConnection)init;
- (MRDIDSServiceConnection)initWithDevice:(id)device;
- (MRDIDSServiceConnection)initWithDeviceUID:(id)d;
- (NSString)debugDescription;
- (NSString)name;
- (id)_configurationFromDestination:(id)destination session:(id)session;
- (unint64_t)_generateMessageID;
- (void)_maybeDeviceConnectionStatusChanged;
- (void)dealloc;
- (void)handleDidReceiveResetConnectionRequest;
- (void)handleIncomingMessage:(id)message type:(id)type destination:(id)destination session:(id)session messageID:(id)d replyID:(id)iD;
- (void)removeMessageHandlerForType:(id)type;
- (void)removeMessageHandlerForType:(id)type destination:(id)destination session:(id)session;
- (void)resetConnection;
- (void)setDevice:(id)device;
- (void)setMessageHandler:(id)handler forType:(id)type;
- (void)setMessageHandler:(id)handler forType:(id)type destination:(id)destination session:(id)session;
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

    idsService = [(MRDIDSService *)v2->_mrService idsService];
    idsService = v2->_idsService;
    v2->_idsService = idsService;

    [(IDSService *)v2->_idsService addDelegate:v2 queue:v2->_queue];
  }

  return v2;
}

- (MRDIDSServiceConnection)initWithDevice:(id)device
{
  deviceCopy = device;
  uniqueIDOverride = [deviceCopy uniqueIDOverride];
  v6 = [(MRDIDSServiceConnection *)self initWithDeviceUID:uniqueIDOverride];

  if (v6)
  {
    [(MRDIDSServiceConnection *)v6 setDevice:deviceCopy];
  }

  return v6;
}

- (MRDIDSServiceConnection)initWithDeviceUID:(id)d
{
  dCopy = d;
  v6 = [(MRDIDSServiceConnection *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_deviceUID, d);
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [v3 appendFormat:@" deviceUID = %@\n", selfCopy->_deviceUID];
  device = selfCopy->_device;
  v6 = MRCreateIndentedDebugDescriptionFromObject();
  [v3 appendFormat:@" device = %@\n", v6];

  [v3 appendFormat:@" service = %@\n", selfCopy->_mrService];
  messageHandlers = selfCopy->_messageHandlers;
  v8 = MRCreateIndentedDebugDescriptionFromObject();
  [v3 appendFormat:@" messageHandlers = %@\n", v8];

  destinationMessageHandlers = selfCopy->_destinationMessageHandlers;
  v10 = MRCreateIndentedDebugDescriptionFromObject();
  [v3 appendFormat:@" destinationMessageHandlers = %@\n", v10];

  responseHandlers = selfCopy->_responseHandlers;
  v12 = MRCreateIndentedDebugDescriptionFromObject();
  [v3 appendFormat:@" responseMessageHandlers = %@\n", v12];

  [v3 appendFormat:@" deviceMessageHandler = %@\n", selfCopy->_serviceHandlerToken];
  v13 = objc_retainBlock(selfCopy->_invalidationHandler);
  [v3 appendFormat:@" invalidationHandler = %@\n", v13];

  v14 = objc_retainBlock(selfCopy->_connectionHandler);
  [v3 appendFormat:@" connectionHandler = %@\n", v14];

  objc_sync_exit(selfCopy);
  [v3 appendFormat:@"}>"];

  return v3;
}

- (void)setDevice:(id)device
{
  deviceCopy = device;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    device = [(MRDIDSServiceConnection *)self device];
    uniqueIDOverride = [device uniqueIDOverride];
    *buf = 138412802;
    selfCopy = self;
    v18 = 2112;
    v19 = uniqueIDOverride;
    v20 = 2112;
    v21 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDIDSServiceConnection] %@ Setting IDSDevice from %@ to %@", buf, 0x20u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  if (selfCopy2->_serviceHandlerToken)
  {
    [(MRDIDSService *)selfCopy2->_mrService removeHandler:?];
    serviceHandlerToken = selfCopy2->_serviceHandlerToken;
    selfCopy2->_serviceHandlerToken = 0;
  }

  if (deviceCopy)
  {
    objc_initWeak(buf, selfCopy2);
    mrService = selfCopy2->_mrService;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10018AFAC;
    v14[3] = &unk_1004C04A8;
    objc_copyWeak(&v15, buf);
    v11 = [(MRDIDSService *)mrService _addMessageHandlerForDevice:deviceCopy handler:v14];
    v12 = selfCopy2->_serviceHandlerToken;
    selfCopy2->_serviceHandlerToken = v11;

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  device = selfCopy2->_device;
  selfCopy2->_device = deviceCopy;

  objc_sync_exit(selfCopy2);
}

- (IDSDevice)device
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_device;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSString)name
{
  device = [(MRDIDSServiceConnection *)self device];
  name = [device name];

  return name;
}

- (BOOL)isConnected
{
  device = [(MRDIDSServiceConnection *)self device];
  v3 = device != 0;

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

- (BOOL)sendMessage:(id)message type:(id)type destination:(id)destination session:(id)session options:(id)options priority:(int64_t)priority response:(id)response
{
  mrService = self->_mrService;
  responseCopy = response;
  optionsCopy = options;
  sessionCopy = session;
  destinationCopy = destination;
  typeCopy = type;
  messageCopy = message;
  device = [(MRDIDSServiceConnection *)self device];
  LOBYTE(priority) = [(MRDIDSService *)mrService _sendMessage:messageCopy device:device type:typeCopy destination:destinationCopy session:sessionCopy options:optionsCopy priority:priority replyID:0 response:responseCopy];

  return priority;
}

- (void)setMessageHandler:(id)handler forType:(id)type
{
  handlerCopy = handler;
  typeCopy = type;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_messageHandlers)
  {
    v9 = objc_alloc_init(NSMutableDictionary);
    messageHandlers = selfCopy->_messageHandlers;
    selfCopy->_messageHandlers = v9;
  }

  v11 = [handlerCopy copy];
  v12 = objc_retainBlock(v11);
  [(NSMutableDictionary *)selfCopy->_messageHandlers setObject:v12 forKeyedSubscript:typeCopy];

  v13 = _MRLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = selfCopy->_messageHandlers;
    v15 = 138412802;
    v16 = selfCopy;
    v17 = 2112;
    v18 = typeCopy;
    v19 = 2112;
    v20 = v14;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "[MRDIDSServiceConnection] %@ Added handler for %@ %@", &v15, 0x20u);
  }

  objc_sync_exit(selfCopy);
}

- (void)setMessageHandler:(id)handler forType:(id)type destination:(id)destination session:(id)session
{
  handlerCopy = handler;
  typeCopy = type;
  destinationCopy = destination;
  sessionCopy = session;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  destinationMessageHandlers = selfCopy->_destinationMessageHandlers;
  if (!destinationMessageHandlers)
  {
    v16 = objc_alloc_init(NSMutableDictionary);
    v17 = selfCopy->_destinationMessageHandlers;
    selfCopy->_destinationMessageHandlers = v16;

    destinationMessageHandlers = selfCopy->_destinationMessageHandlers;
  }

  v18 = [(NSMutableDictionary *)destinationMessageHandlers objectForKeyedSubscript:typeCopy];
  if (!v18)
  {
    v18 = objc_alloc_init(NSMutableDictionary);
    [(NSMutableDictionary *)selfCopy->_destinationMessageHandlers setObject:v18 forKeyedSubscript:typeCopy];
  }

  v19 = [handlerCopy copy];
  v20 = [(MRDIDSServiceConnection *)selfCopy _configurationFromDestination:destinationCopy session:sessionCopy];
  [v18 setObject:v19 forKeyedSubscript:v20];

  v21 = _MRLogForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v22 = selfCopy->_destinationMessageHandlers;
    v23 = 138413058;
    v24 = typeCopy;
    v25 = 2112;
    v26 = destinationCopy;
    v27 = 2112;
    v28 = sessionCopy;
    v29 = 2112;
    v30 = v22;
    _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "[MRDIDSServiceConnection] Added destination handler for type=%@, destination=%@, session=%@, %@", &v23, 0x2Au);
  }

  objc_sync_exit(selfCopy);
}

- (void)removeMessageHandlerForType:(id)type
{
  typeCopy = type;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_messageHandlers objectForKeyedSubscript:typeCopy];

  if (v6)
  {
    [(NSMutableDictionary *)selfCopy->_messageHandlers setObject:0 forKeyedSubscript:typeCopy];
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1003AC860(typeCopy, &selfCopy->_messageHandlers, v7);
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)removeMessageHandlerForType:(id)type destination:(id)destination session:(id)session
{
  typeCopy = type;
  destinationCopy = destination;
  sessionCopy = session;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = [(MRDIDSServiceConnection *)selfCopy _configurationFromDestination:destinationCopy session:sessionCopy];
  v13 = [(NSMutableDictionary *)selfCopy->_destinationMessageHandlers objectForKeyedSubscript:typeCopy];
  v14 = [v13 objectForKeyedSubscript:v12];

  if (v14)
  {
    v15 = [(NSMutableDictionary *)selfCopy->_destinationMessageHandlers objectForKeyedSubscript:typeCopy];
    [v15 setObject:0 forKeyedSubscript:v12];

    v16 = _MRLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      destinationMessageHandlers = selfCopy->_destinationMessageHandlers;
      v18 = 138413058;
      v19 = typeCopy;
      v20 = 2112;
      v21 = destinationCopy;
      v22 = 2112;
      v23 = sessionCopy;
      v24 = 2112;
      v25 = destinationMessageHandlers;
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "[MRDIDSServiceConnection] Remove destination handler for type=%@, destination=%@, session=%@, %@", &v18, 0x2Au);
    }
  }

  objc_sync_exit(selfCopy);
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

- (void)handleIncomingMessage:(id)message type:(id)type destination:(id)destination session:(id)session messageID:(id)d replyID:(id)iD
{
  messageCopy = message;
  typeCopy = type;
  destinationCopy = destination;
  sessionCopy = session;
  dCopy = d;
  iDCopy = iD;
  v19 = _MRLogForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    data = [messageCopy data];
    *buf = 138413826;
    selfCopy = self;
    v54 = 2112;
    v55 = dCopy;
    v56 = 2112;
    v57 = data;
    v58 = 2112;
    v59 = typeCopy;
    v60 = 2112;
    v61 = destinationCopy;
    v62 = 2112;
    v63 = sessionCopy;
    v64 = 2112;
    v65 = iDCopy;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[MRDIDSServiceConnection] %@ Message received<%@>: data=%@ type=%@ destination=%@ session=%@ replyID=%@", buf, 0x48u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  v22 = [(NSMutableDictionary *)selfCopy2->_messageHandlers objectForKeyedSubscript:typeCopy];
  v23 = [(NSMutableDictionary *)selfCopy2->_destinationMessageHandlers objectForKeyedSubscript:typeCopy];
  v24 = [(MRDIDSServiceConnection *)selfCopy2 _configurationFromDestination:destinationCopy session:sessionCopy];
  v25 = [v23 objectForKeyedSubscript:v24];

  if (iDCopy)
  {
    v26 = [(NSMutableDictionary *)selfCopy2->_responseHandlers objectForKeyedSubscript:iDCopy];
    [(NSMutableDictionary *)selfCopy2->_responseHandlers setObject:0 forKeyedSubscript:iDCopy];
  }

  else
  {
    v26 = 0;
  }

  objc_sync_exit(selfCopy2);
  if (v26)
  {
    v37 = iDCopy;
    queue = typeCopy;
    v27 = v22;
    v28 = sessionCopy;
    v29 = destinationCopy;
    v30 = selfCopy2->_queue;
    v31 = messageCopy;
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

    messageCopy = v34;
    destinationCopy = v29;
    sessionCopy = v28;
    v22 = v27;
    iDCopy = v37;
    typeCopy = queue;

    goto LABEL_13;
  }

  if (v22)
  {
    queuea = selfCopy2->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10018BE64;
    block[3] = &unk_1004BB398;
    v48 = v22;
    v45 = messageCopy;
    v46 = destinationCopy;
    v47 = sessionCopy;
    dispatch_async(queuea, block);
  }

  if (v25)
  {
    v37 = iDCopy;
    queue = typeCopy;
    v27 = v22;
    v28 = sessionCopy;
    v29 = destinationCopy;
    v30 = selfCopy2->_queue;
    v36 = messageCopy;
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
        uniqueIDOverride = [v7 uniqueIDOverride];
        deviceUID = [(MRDIDSServiceConnection *)self deviceUID];
        v10 = [uniqueIDOverride isEqualToString:deviceUID];

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

  device = [(MRDIDSServiceConnection *)self device];
  if (v4 != device && ([v4 isEqual:device] & 1) == 0)
  {
    [(MRDIDSServiceConnection *)self setDevice:v4];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (v4)
    {
      v13 = [selfCopy->_connectionHandler copy];
      v14 = 0;
    }

    else
    {
      v14 = [selfCopy->_invalidationHandler copy];
      v13 = 0;
    }

    objc_sync_exit(selfCopy);

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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_totalOutgoingMessageCount + 1;
  selfCopy->_totalOutgoingMessageCount = v3;
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)_configurationFromDestination:(id)destination session:(id)session
{
  sessionCopy = session;
  destinationCopy = destination;
  v7 = [NSString alloc];
  v8 = @"default";
  if (destinationCopy)
  {
    v9 = destinationCopy;
  }

  else
  {
    v9 = @"default";
  }

  if (sessionCopy)
  {
    v8 = sessionCopy;
  }

  v10 = [v7 initWithFormat:@"%@-%@", v9, v8];

  return v10;
}

@end