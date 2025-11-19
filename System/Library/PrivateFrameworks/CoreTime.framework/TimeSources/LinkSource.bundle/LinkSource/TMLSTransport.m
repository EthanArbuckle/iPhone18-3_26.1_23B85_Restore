@interface TMLSTransport
- (TMLSTransport)initWithDelegate:(id)a3 clock:(id)a4 workloop:(id)a5;
- (id)destinationsIncludingTinker:(BOOL)a3;
- (void)dealloc;
- (void)sendData:(id)a3 localOnly:(BOOL)a4 nonWaking:(BOOL)a5 queueOne:(id)a6 withHandler:(id)a7 includeTinker:(BOOL)a8;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7;
@end

@implementation TMLSTransport

- (TMLSTransport)initWithDelegate:(id)a3 clock:(id)a4 workloop:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = TMLSTransport;
  v12 = [(TMLSTransport *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_clock, a4);
    objc_storeStrong(&v13->_delegate, a3);
    v14 = dispatch_queue_create("com.apple.timeSync.timeLink.transport", 0);
    idsQueue = v13->_idsQueue;
    v13->_idsQueue = v14;

    objc_storeStrong(&v13->_workloop, a5);
    v16 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.timesync"];
    idsService = v13->_idsService;
    v13->_idsService = v16;

    [(IDSService *)v13->_idsService addDelegate:v13 queue:v13->_idsQueue];
    v18 = [(TMLSTransport *)v13 workloop];
    xpc_set_event_stream_handler("com.apple.notifyd.matching", v18, &stru_10398);
  }

  return v13;
}

- (void)dealloc
{
  [(TMLSTransport *)self setIdsService:0];
  [(TMLSTransport *)self setIdsQueue:0];
  v3.receiver = self;
  v3.super_class = TMLSTransport;
  [(TMLSTransport *)&v3 dealloc];
}

- (id)destinationsIncludingTinker:(BOOL)a3
{
  if (a3)
  {
    v3 = 3;
  }

  else
  {
    v3 = 1;
  }

  v4 = [(TMLSTransport *)self idsService];
  v5 = [v4 linkedDevicesWithRelationship:v3];

  v6 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = IDSCopyIDForDevice();
        [v6 addObject:{v13, v15}];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return v6;
}

- (void)sendData:(id)a3 localOnly:(BOOL)a4 nonWaking:(BOOL)a5 queueOne:(id)a6 withHandler:(id)a7 includeTinker:(BOOL)a8
{
  v14 = a3;
  v15 = a6;
  v16 = a7;
  dispatch_assert_queue_not_V2(self->_idsQueue);
  v17 = [v14 objectForKey:@"kTMLSLinkMsgKey"];
  v18 = [v17 intValue];

  v19 = TIMELINK_FACILITY;
  if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_DEBUG))
  {
    sub_7C30(v18, v19);
  }

  v20 = [NSPropertyListSerialization dataWithPropertyList:v14 format:200 options:0 error:0];
  idsQueue = self->_idsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1298;
  block[3] = &unk_103E8;
  v29 = a8;
  block[4] = self;
  v26 = v20;
  v30 = a4;
  v31 = a5;
  v27 = v15;
  v28 = v16;
  v22 = v16;
  v23 = v15;
  v24 = v20;
  dispatch_async(idsQueue, block);
}

- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7
{
  v8 = a5;
  v9 = TIMELINK_FACILITY;
  if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_DEBUG))
  {
    sub_7D98(v9, v8);
  }

  v10 = [(TMLSTransport *)self workloop];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1658;
  v12[3] = &unk_10410;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  dispatch_async(v10, v12);
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = TIMELINK_FACILITY;
  if (((v15 != 0) ^ v8))
  {
    if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413314;
      v25 = v12;
      v26 = 2112;
      v27 = v13;
      v28 = 2112;
      v29 = v14;
      v30 = 1024;
      v31 = v8;
      v32 = 2112;
      v33 = v15;
      _os_log_debug_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "TMLSTransport service:%@ account:%@ identifier:%@ didSendWithSuccess:%d error:%@", buf, 0x30u);
    }
  }

  else if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_ERROR))
  {
    *buf = 138413314;
    v25 = v12;
    v26 = 2112;
    v27 = v13;
    v28 = 2112;
    v29 = v14;
    v30 = 1024;
    v31 = v8;
    v32 = 2112;
    v33 = v15;
    _os_log_error_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "TMLSTransport service:%@ account:%@ identifier:%@ didSendWithSuccess:%d error:%@", buf, 0x30u);
  }

  v17 = [(TMLSTransport *)self workloop];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_18E0;
  v20[3] = &unk_10438;
  v20[4] = self;
  v21 = v14;
  v23 = v8;
  v22 = v15;
  v18 = v15;
  v19 = v14;
  dispatch_async(v17, v20);
}

@end