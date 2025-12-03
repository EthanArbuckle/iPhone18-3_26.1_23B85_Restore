@interface MRDIDSService
+ (id)sharedService;
- (BOOL)_sendMessage:(id)message device:(id)device type:(id)type destination:(id)destination session:(id)session options:(id)options priority:(int64_t)priority replyID:(id)self0 response:(id)self1;
- (MRDIDSService)initWithService:(id)service;
- (NSString)debugDescription;
- (id)_addMessageHandler:(id)handler;
- (id)_addMessageHandlerForDevice:(id)device handler:(id)handler;
- (id)addMessageHandler:(id)handler;
- (id)addMessageHandlerForDevice:(id)device handler:(id)handler;
- (unint64_t)_generateMessageID;
- (void)removeHandler:(id)handler;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
@end

@implementation MRDIDSService

+ (id)sharedService
{
  if (qword_100529260 != -1)
  {
    sub_1003A5C90();
  }

  v3 = qword_100529258;

  return v3;
}

- (MRDIDSService)initWithService:(id)service
{
  v10.receiver = self;
  v10.super_class = MRDIDSService;
  v3 = [(MRDIDSService *)&v10 init];
  if (v3)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.mediaremote.MRDIDSService", v4);
    queue = v3->_queue;
    v3->_queue = v5;

    v7 = +[IDSService mr_sharedIDSService];
    idsService = v3->_idsService;
    v3->_idsService = v7;

    [(IDSService *)v3->_idsService addDelegate:v3 queue:v3->_queue];
  }

  return v3;
}

- (NSString)debugDescription
{
  v3 = [[NSMutableString alloc] initWithFormat:@"<%@:%p {\n", objc_opt_class(), self];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  idsService = selfCopy->_idsService;
  v6 = MRCreateIndentedDebugDescriptionFromObject();
  [v3 appendFormat:@" service=%@\n", v6];

  devices = [(IDSService *)selfCopy->_idsService devices];
  v8 = MRCreateIndentedDebugDescriptionFromArray();
  [v3 appendFormat:@" devices=%@\n", v8];

  totalMessageHandlers = selfCopy->_totalMessageHandlers;
  v10 = MRCreateIndentedDebugDescriptionFromObject();
  [v3 appendFormat:@" messageHandlers = %@\n", v10];

  deviceMessageHandlers = selfCopy->_deviceMessageHandlers;
  v12 = MRCreateIndentedDebugDescriptionFromObject();
  [v3 appendFormat:@" deviceMessageHandlers = %@\n", v12];

  objc_sync_exit(selfCopy);
  [v3 appendFormat:@"}>"];

  return v3;
}

- (id)addMessageHandlerForDevice:(id)device handler:(id)handler
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007FC64;
  v9[3] = &unk_1004B8AD8;
  handlerCopy = handler;
  v6 = handlerCopy;
  v7 = [(MRDIDSService *)self _addMessageHandlerForDevice:device handler:v9];

  return v7;
}

- (id)addMessageHandler:(id)handler
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007FD24;
  v7[3] = &unk_1004B8B00;
  handlerCopy = handler;
  v4 = handlerCopy;
  v5 = [(MRDIDSService *)self _addMessageHandler:v7];

  return v5;
}

- (id)_addMessageHandlerForDevice:(id)device handler:(id)handler
{
  deviceCopy = device;
  handlerCopy = handler;
  uniqueIDOverride = [deviceCopy uniqueIDOverride];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  deviceMessageHandlers = selfCopy->_deviceMessageHandlers;
  if (!deviceMessageHandlers)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    v12 = selfCopy->_deviceMessageHandlers;
    selfCopy->_deviceMessageHandlers = v11;

    deviceMessageHandlers = selfCopy->_deviceMessageHandlers;
  }

  v13 = [(NSMutableDictionary *)deviceMessageHandlers objectForKeyedSubscript:uniqueIDOverride];
  if (!v13)
  {
    v13 = objc_alloc_init(NSMutableDictionary);
    [(NSMutableDictionary *)selfCopy->_deviceMessageHandlers setObject:v13 forKeyedSubscript:uniqueIDOverride];
  }

  v14 = [NSNumber numberWithUnsignedInt:arc4random()];
  v15 = [handlerCopy copy];
  [v13 setObject:v15 forKeyedSubscript:v14];

  objc_sync_exit(selfCopy);

  return v14;
}

- (id)_addMessageHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_totalMessageHandlers)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    totalMessageHandlers = selfCopy->_totalMessageHandlers;
    selfCopy->_totalMessageHandlers = v6;
  }

  v8 = [NSNumber numberWithUnsignedInt:arc4random()];
  v9 = [handlerCopy copy];
  v10 = objc_retainBlock(v9);
  [(NSMutableDictionary *)selfCopy->_totalMessageHandlers setObject:v10 forKeyedSubscript:v8];

  objc_sync_exit(selfCopy);

  return v8;
}

- (void)removeHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  deviceMessageHandlers = selfCopy->_deviceMessageHandlers;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008004C;
  v8[3] = &unk_1004B8B28;
  v7 = handlerCopy;
  v9 = v7;
  [(NSMutableDictionary *)deviceMessageHandlers enumerateKeysAndObjectsUsingBlock:v8];
  [(NSMutableDictionary *)selfCopy->_totalMessageHandlers setObject:0 forKeyedSubscript:v7];

  objc_sync_exit(selfCopy);
}

- (BOOL)_sendMessage:(id)message device:(id)device type:(id)type destination:(id)destination session:(id)session options:(id)options priority:(int64_t)priority replyID:(id)self0 response:(id)self1
{
  messageCopy = message;
  deviceCopy = device;
  typeCopy = type;
  destinationCopy = destination;
  sessionCopy = session;
  optionsCopy = options;
  dCopy = d;
  responseCopy = response;
  _generateMessageID = [(MRDIDSService *)self _generateMessageID];
  if (responseCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!selfCopy->_responseHandlers)
    {
      v21 = objc_alloc_init(NSMutableDictionary);
      responseHandlers = selfCopy->_responseHandlers;
      selfCopy->_responseHandlers = v21;
    }

    v23 = [responseCopy copy];
    v24 = objc_retainBlock(v23);
    v25 = selfCopy->_responseHandlers;
    v26 = [NSNumber numberWithUnsignedInteger:_generateMessageID];
    [(NSMutableDictionary *)v25 setObject:v24 forKeyedSubscript:v26];

    objc_sync_exit(selfCopy);
  }

  v27 = objc_alloc_init(NSMutableDictionary);
  v28 = [NSNumber numberWithUnsignedInteger:_generateMessageID];
  [v27 setObject:v28 forKeyedSubscript:@"messageid"];

  [v27 setObject:destinationCopy forKeyedSubscript:@"destination"];
  [v27 setObject:sessionCopy forKeyedSubscript:@"session"];
  [v27 setObject:messageCopy forKeyedSubscript:@"data"];
  [v27 setObject:typeCopy forKeyedSubscript:@"type"];
  [v27 setObject:dCopy forKeyedSubscript:@"replyid"];
  v29 = IDSCopyIDForDevice();
  v30 = _MRLogForCategory();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIDOverride = [deviceCopy uniqueIDOverride];
    name = [deviceCopy name];
    *buf = 138414338;
    selfCopy2 = self;
    v56 = 2048;
    v57 = _generateMessageID;
    v58 = 2112;
    v59 = v29;
    v60 = 2112;
    v61 = uniqueIDOverride;
    v62 = 2112;
    v63 = name;
    v64 = 2112;
    v65 = messageCopy;
    v66 = 2112;
    v67 = typeCopy;
    v68 = 2112;
    v69 = destinationCopy;
    v70 = 2112;
    v71 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[MRDIDSService] %@ Message Sent<%lu>: idsDestination=%@ device=%@:%@ data=%@ type=%@ destination=%@ session=%@", buf, 0x5Cu);
  }

  v33 = [[NSMutableDictionary alloc] initWithDictionary:optionsCopy];
  v34 = IDSSendMessageOptionFireAndForgetKey;
  v35 = [v33 objectForKeyedSubscript:IDSSendMessageOptionFireAndForgetKey];
  v36 = v35 == 0;

  if (v36)
  {
    [v33 setObject:&__kCFBooleanTrue forKeyedSubscript:v34];
    v37 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
    [v33 setObject:v37 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];
  }

  idsService = self->_idsService;
  optionsCopy = [NSSet setWithObject:v29, optionsCopy];
  v52 = 0;
  v53 = 0;
  v40 = [(IDSService *)idsService sendMessage:v27 toDestinations:optionsCopy priority:priority options:v33 identifier:&v53 error:&v52];
  v41 = v53;
  v42 = v52;

  if ((v40 & 1) == 0)
  {
    v43 = _MRLogForCategory();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      sub_1003A5CA4(self, v42, v43);
    }
  }

  return v40;
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  serviceCopy = service;
  accountCopy = account;
  messageCopy = message;
  dCopy = d;
  contextCopy = context;
  v34 = [messageCopy objectForKeyedSubscript:@"type"];
  v33 = [messageCopy objectForKeyedSubscript:@"destination"];
  v32 = [messageCopy objectForKeyedSubscript:@"session"];
  v38 = [messageCopy objectForKeyedSubscript:@"data"];
  v13 = [messageCopy objectForKeyedSubscript:@"messageid"];
  v14 = [messageCopy objectForKeyedSubscript:@"replyid"];
  v15 = [serviceCopy deviceForFromID:dCopy];
  v37 = [[MRDIDSServiceMessage alloc] initWithID:v13 data:v38 device:v15 service:self];
  v16 = _MRLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIDOverride = [v15 uniqueIDOverride];
    name = [v15 name];
    *buf = 138414338;
    selfCopy = self;
    v61 = 2112;
    v62 = v13;
    v63 = 2112;
    v64 = v38;
    v65 = 2112;
    v66 = uniqueIDOverride;
    v67 = 2112;
    v68 = name;
    v69 = 2112;
    v70 = v34;
    v71 = 2112;
    v72 = v33;
    v73 = 2112;
    v74 = v32;
    v75 = 2112;
    v76 = v14;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[MRDIDSService] %@ Message received<%@>: data=%@ device=%@:%@ type=%@ destination=%@ session=%@ replyID=%@", buf, 0x5Cu);
  }

  uniqueIDOverride2 = [v15 uniqueIDOverride];
  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  allValues = [(NSMutableDictionary *)selfCopy2->_totalMessageHandlers allValues];
  v21 = [(NSMutableDictionary *)selfCopy2->_deviceMessageHandlers objectForKeyedSubscript:uniqueIDOverride2];
  allValues2 = [v21 allValues];

  if (v14)
  {
    v23 = [(NSMutableDictionary *)selfCopy2->_responseHandlers objectForKeyedSubscript:v14];
  }

  else
  {
    v23 = 0;
  }

  objc_sync_exit(selfCopy2);

  if (v23)
  {
    queue = selfCopy2->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100080A90;
    block[3] = &unk_1004B8B50;
    v25 = &v58;
    v58 = v23;
    v26 = &v57;
    v57 = v37;
    dispatch_async(queue, block);
LABEL_12:

    goto LABEL_13;
  }

  if ([allValues count])
  {
    v27 = selfCopy2->_queue;
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_100080AA4;
    v47[3] = &unk_1004B8BA0;
    v48 = allValues;
    v49 = v37;
    v50 = v15;
    v51 = v34;
    v52 = v33;
    v53 = v32;
    v54 = v13;
    v55 = v14;
    dispatch_async(v27, v47);
  }

  if ([allValues2 count])
  {
    v28 = selfCopy2->_queue;
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100080BF0;
    v39[3] = &unk_1004B8BF0;
    v40 = allValues2;
    v41 = v37;
    v42 = v34;
    v43 = v33;
    v44 = v32;
    v45 = v13;
    v46 = v14;
    dispatch_async(v28, v39);

    v25 = &v40;
    v26 = &v41;
    goto LABEL_12;
  }

LABEL_13:
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

@end