@interface MRDIDSService
+ (id)sharedService;
- (BOOL)_sendMessage:(id)a3 device:(id)a4 type:(id)a5 destination:(id)a6 session:(id)a7 options:(id)a8 priority:(int64_t)a9 replyID:(id)a10 response:(id)a11;
- (MRDIDSService)initWithService:(id)a3;
- (NSString)debugDescription;
- (id)_addMessageHandler:(id)a3;
- (id)_addMessageHandlerForDevice:(id)a3 handler:(id)a4;
- (id)addMessageHandler:(id)a3;
- (id)addMessageHandlerForDevice:(id)a3 handler:(id)a4;
- (unint64_t)_generateMessageID;
- (void)removeHandler:(id)a3;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7;
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

- (MRDIDSService)initWithService:(id)a3
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
  v4 = self;
  objc_sync_enter(v4);
  idsService = v4->_idsService;
  v6 = MRCreateIndentedDebugDescriptionFromObject();
  [v3 appendFormat:@" service=%@\n", v6];

  v7 = [(IDSService *)v4->_idsService devices];
  v8 = MRCreateIndentedDebugDescriptionFromArray();
  [v3 appendFormat:@" devices=%@\n", v8];

  totalMessageHandlers = v4->_totalMessageHandlers;
  v10 = MRCreateIndentedDebugDescriptionFromObject();
  [v3 appendFormat:@" messageHandlers = %@\n", v10];

  deviceMessageHandlers = v4->_deviceMessageHandlers;
  v12 = MRCreateIndentedDebugDescriptionFromObject();
  [v3 appendFormat:@" deviceMessageHandlers = %@\n", v12];

  objc_sync_exit(v4);
  [v3 appendFormat:@"}>"];

  return v3;
}

- (id)addMessageHandlerForDevice:(id)a3 handler:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007FC64;
  v9[3] = &unk_1004B8AD8;
  v10 = a4;
  v6 = v10;
  v7 = [(MRDIDSService *)self _addMessageHandlerForDevice:a3 handler:v9];

  return v7;
}

- (id)addMessageHandler:(id)a3
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007FD24;
  v7[3] = &unk_1004B8B00;
  v8 = a3;
  v4 = v8;
  v5 = [(MRDIDSService *)self _addMessageHandler:v7];

  return v5;
}

- (id)_addMessageHandlerForDevice:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 uniqueIDOverride];
  v9 = self;
  objc_sync_enter(v9);
  deviceMessageHandlers = v9->_deviceMessageHandlers;
  if (!deviceMessageHandlers)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    v12 = v9->_deviceMessageHandlers;
    v9->_deviceMessageHandlers = v11;

    deviceMessageHandlers = v9->_deviceMessageHandlers;
  }

  v13 = [(NSMutableDictionary *)deviceMessageHandlers objectForKeyedSubscript:v8];
  if (!v13)
  {
    v13 = objc_alloc_init(NSMutableDictionary);
    [(NSMutableDictionary *)v9->_deviceMessageHandlers setObject:v13 forKeyedSubscript:v8];
  }

  v14 = [NSNumber numberWithUnsignedInt:arc4random()];
  v15 = [v7 copy];
  [v13 setObject:v15 forKeyedSubscript:v14];

  objc_sync_exit(v9);

  return v14;
}

- (id)_addMessageHandler:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (!v5->_totalMessageHandlers)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    totalMessageHandlers = v5->_totalMessageHandlers;
    v5->_totalMessageHandlers = v6;
  }

  v8 = [NSNumber numberWithUnsignedInt:arc4random()];
  v9 = [v4 copy];
  v10 = objc_retainBlock(v9);
  [(NSMutableDictionary *)v5->_totalMessageHandlers setObject:v10 forKeyedSubscript:v8];

  objc_sync_exit(v5);

  return v8;
}

- (void)removeHandler:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  deviceMessageHandlers = v5->_deviceMessageHandlers;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008004C;
  v8[3] = &unk_1004B8B28;
  v7 = v4;
  v9 = v7;
  [(NSMutableDictionary *)deviceMessageHandlers enumerateKeysAndObjectsUsingBlock:v8];
  [(NSMutableDictionary *)v5->_totalMessageHandlers setObject:0 forKeyedSubscript:v7];

  objc_sync_exit(v5);
}

- (BOOL)_sendMessage:(id)a3 device:(id)a4 type:(id)a5 destination:(id)a6 session:(id)a7 options:(id)a8 priority:(int64_t)a9 replyID:(id)a10 response:(id)a11
{
  v48 = a3;
  v17 = a4;
  v49 = a5;
  v50 = a6;
  v51 = a7;
  v45 = a8;
  v47 = a10;
  v18 = a11;
  v19 = [(MRDIDSService *)self _generateMessageID];
  if (v18)
  {
    v20 = self;
    objc_sync_enter(v20);
    if (!v20->_responseHandlers)
    {
      v21 = objc_alloc_init(NSMutableDictionary);
      responseHandlers = v20->_responseHandlers;
      v20->_responseHandlers = v21;
    }

    v23 = [v18 copy];
    v24 = objc_retainBlock(v23);
    v25 = v20->_responseHandlers;
    v26 = [NSNumber numberWithUnsignedInteger:v19];
    [(NSMutableDictionary *)v25 setObject:v24 forKeyedSubscript:v26];

    objc_sync_exit(v20);
  }

  v27 = objc_alloc_init(NSMutableDictionary);
  v28 = [NSNumber numberWithUnsignedInteger:v19];
  [v27 setObject:v28 forKeyedSubscript:@"messageid"];

  [v27 setObject:v50 forKeyedSubscript:@"destination"];
  [v27 setObject:v51 forKeyedSubscript:@"session"];
  [v27 setObject:v48 forKeyedSubscript:@"data"];
  [v27 setObject:v49 forKeyedSubscript:@"type"];
  [v27 setObject:v47 forKeyedSubscript:@"replyid"];
  v29 = IDSCopyIDForDevice();
  v30 = _MRLogForCategory();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [v17 uniqueIDOverride];
    v32 = [v17 name];
    *buf = 138414338;
    v55 = self;
    v56 = 2048;
    v57 = v19;
    v58 = 2112;
    v59 = v29;
    v60 = 2112;
    v61 = v31;
    v62 = 2112;
    v63 = v32;
    v64 = 2112;
    v65 = v48;
    v66 = 2112;
    v67 = v49;
    v68 = 2112;
    v69 = v50;
    v70 = 2112;
    v71 = v51;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[MRDIDSService] %@ Message Sent<%lu>: idsDestination=%@ device=%@:%@ data=%@ type=%@ destination=%@ session=%@", buf, 0x5Cu);
  }

  v33 = [[NSMutableDictionary alloc] initWithDictionary:v45];
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
  v39 = [NSSet setWithObject:v29, v45];
  v52 = 0;
  v53 = 0;
  v40 = [(IDSService *)idsService sendMessage:v27 toDestinations:v39 priority:a9 options:v33 identifier:&v53 error:&v52];
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

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7
{
  v35 = a3;
  v29 = a4;
  v12 = a5;
  v36 = a6;
  v30 = a7;
  v34 = [v12 objectForKeyedSubscript:@"type"];
  v33 = [v12 objectForKeyedSubscript:@"destination"];
  v32 = [v12 objectForKeyedSubscript:@"session"];
  v38 = [v12 objectForKeyedSubscript:@"data"];
  v13 = [v12 objectForKeyedSubscript:@"messageid"];
  v14 = [v12 objectForKeyedSubscript:@"replyid"];
  v15 = [v35 deviceForFromID:v36];
  v37 = [[MRDIDSServiceMessage alloc] initWithID:v13 data:v38 device:v15 service:self];
  v16 = _MRLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v15 uniqueIDOverride];
    v18 = [v15 name];
    *buf = 138414338;
    v60 = self;
    v61 = 2112;
    v62 = v13;
    v63 = 2112;
    v64 = v38;
    v65 = 2112;
    v66 = v17;
    v67 = 2112;
    v68 = v18;
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

  v19 = [v15 uniqueIDOverride];
  v20 = self;
  objc_sync_enter(v20);
  v31 = [(NSMutableDictionary *)v20->_totalMessageHandlers allValues];
  v21 = [(NSMutableDictionary *)v20->_deviceMessageHandlers objectForKeyedSubscript:v19];
  v22 = [v21 allValues];

  if (v14)
  {
    v23 = [(NSMutableDictionary *)v20->_responseHandlers objectForKeyedSubscript:v14];
  }

  else
  {
    v23 = 0;
  }

  objc_sync_exit(v20);

  if (v23)
  {
    queue = v20->_queue;
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

  if ([v31 count])
  {
    v27 = v20->_queue;
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_100080AA4;
    v47[3] = &unk_1004B8BA0;
    v48 = v31;
    v49 = v37;
    v50 = v15;
    v51 = v34;
    v52 = v33;
    v53 = v32;
    v54 = v13;
    v55 = v14;
    dispatch_async(v27, v47);
  }

  if ([v22 count])
  {
    v28 = v20->_queue;
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100080BF0;
    v39[3] = &unk_1004B8BF0;
    v40 = v22;
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_totalOutgoingMessageCount + 1;
  v2->_totalOutgoingMessageCount = v3;
  objc_sync_exit(v2);

  return v3;
}

@end