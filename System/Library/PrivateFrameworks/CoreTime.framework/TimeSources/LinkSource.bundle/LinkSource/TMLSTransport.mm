@interface TMLSTransport
- (TMLSTransport)initWithDelegate:(id)delegate clock:(id)clock workloop:(id)workloop;
- (id)destinationsIncludingTinker:(BOOL)tinker;
- (void)dealloc;
- (void)sendData:(id)data localOnly:(BOOL)only nonWaking:(BOOL)waking queueOne:(id)one withHandler:(id)handler includeTinker:(BOOL)tinker;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
@end

@implementation TMLSTransport

- (TMLSTransport)initWithDelegate:(id)delegate clock:(id)clock workloop:(id)workloop
{
  delegateCopy = delegate;
  clockCopy = clock;
  workloopCopy = workloop;
  v20.receiver = self;
  v20.super_class = TMLSTransport;
  v12 = [(TMLSTransport *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_clock, clock);
    objc_storeStrong(&v13->_delegate, delegate);
    v14 = dispatch_queue_create("com.apple.timeSync.timeLink.transport", 0);
    idsQueue = v13->_idsQueue;
    v13->_idsQueue = v14;

    objc_storeStrong(&v13->_workloop, workloop);
    v16 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.timesync"];
    idsService = v13->_idsService;
    v13->_idsService = v16;

    [(IDSService *)v13->_idsService addDelegate:v13 queue:v13->_idsQueue];
    workloop = [(TMLSTransport *)v13 workloop];
    xpc_set_event_stream_handler("com.apple.notifyd.matching", workloop, &stru_10398);
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

- (id)destinationsIncludingTinker:(BOOL)tinker
{
  if (tinker)
  {
    v3 = 3;
  }

  else
  {
    v3 = 1;
  }

  idsService = [(TMLSTransport *)self idsService];
  v5 = [idsService linkedDevicesWithRelationship:v3];

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

- (void)sendData:(id)data localOnly:(BOOL)only nonWaking:(BOOL)waking queueOne:(id)one withHandler:(id)handler includeTinker:(BOOL)tinker
{
  dataCopy = data;
  oneCopy = one;
  handlerCopy = handler;
  dispatch_assert_queue_not_V2(self->_idsQueue);
  v17 = [dataCopy objectForKey:@"kTMLSLinkMsgKey"];
  intValue = [v17 intValue];

  v19 = TIMELINK_FACILITY;
  if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_DEBUG))
  {
    sub_7C30(intValue, v19);
  }

  v20 = [NSPropertyListSerialization dataWithPropertyList:dataCopy format:200 options:0 error:0];
  idsQueue = self->_idsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1298;
  block[3] = &unk_103E8;
  tinkerCopy = tinker;
  block[4] = self;
  v26 = v20;
  onlyCopy = only;
  wakingCopy = waking;
  v27 = oneCopy;
  v28 = handlerCopy;
  v22 = handlerCopy;
  v23 = oneCopy;
  v24 = v20;
  dispatch_async(idsQueue, block);
}

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  dataCopy = data;
  v9 = TIMELINK_FACILITY;
  if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_DEBUG))
  {
    sub_7D98(v9, dataCopy);
  }

  workloop = [(TMLSTransport *)self workloop];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1658;
  v12[3] = &unk_10410;
  v12[4] = self;
  v13 = dataCopy;
  v11 = dataCopy;
  dispatch_async(workloop, v12);
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  v16 = TIMELINK_FACILITY;
  if (((errorCopy != 0) ^ successCopy))
  {
    if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413314;
      v25 = serviceCopy;
      v26 = 2112;
      v27 = accountCopy;
      v28 = 2112;
      v29 = identifierCopy;
      v30 = 1024;
      v31 = successCopy;
      v32 = 2112;
      v33 = errorCopy;
      _os_log_debug_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "TMLSTransport service:%@ account:%@ identifier:%@ didSendWithSuccess:%d error:%@", buf, 0x30u);
    }
  }

  else if (os_log_type_enabled(TIMELINK_FACILITY, OS_LOG_TYPE_ERROR))
  {
    *buf = 138413314;
    v25 = serviceCopy;
    v26 = 2112;
    v27 = accountCopy;
    v28 = 2112;
    v29 = identifierCopy;
    v30 = 1024;
    v31 = successCopy;
    v32 = 2112;
    v33 = errorCopy;
    _os_log_error_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "TMLSTransport service:%@ account:%@ identifier:%@ didSendWithSuccess:%d error:%@", buf, 0x30u);
  }

  workloop = [(TMLSTransport *)self workloop];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_18E0;
  v20[3] = &unk_10438;
  v20[4] = self;
  v21 = identifierCopy;
  v23 = successCopy;
  v22 = errorCopy;
  v18 = errorCopy;
  v19 = identifierCopy;
  dispatch_async(workloop, v20);
}

@end