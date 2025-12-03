@interface DTTapService
+ (void)registerCapabilities:(id)capabilities forDelegateClass:(Class)class forConnection:(id)connection;
- (DTTapService)initWithChannel:(id)channel;
- (void)fetchDataNow;
- (void)handleBulkData:(const void *)data size:(unint64_t)size destructor:(id)destructor;
- (void)handleBulkData:(id)data;
- (void)messageReceived:(id)received;
- (void)pause;
- (void)sendFrameMessage:(id)message;
- (void)sendHeartbeatTime:(unint64_t)time;
- (void)setConfig:(id)config;
- (void)start;
- (void)stop;
- (void)unpause;
@end

@implementation DTTapService

+ (void)registerCapabilities:(id)capabilities forDelegateClass:(Class)class forConnection:(id)connection
{
  capabilitiesCopy = capabilities;
  connectionCopy = connection;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_247F7E5C8;
  v16[3] = &unk_278EF1B60;
  v10 = capabilitiesCopy;
  v18 = &v20;
  classCopy = class;
  v17 = v10;
  sub_247F7E514(v16);
  if ((v21[3] & 1) == 0)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_247F7E6F8;
    v11[3] = &unk_278EF1BB0;
    v12 = v10;
    classCopy2 = class;
    v13 = connectionCopy;
    selfCopy = self;
    sub_247F7E514(v11);
  }

  _Block_object_dispose(&v20, 8);
}

- (DTTapService)initWithChannel:(id)channel
{
  v36 = *MEMORY[0x277D85DE8];
  channelCopy = channel;
  v31.receiver = self;
  v31.super_class = DTTapService;
  v5 = [(DTXService *)&v31 initWithChannel:channelCopy];
  if (v5)
  {
    v6 = [[DTTapServiceMessageSender alloc] initWithChannel:channelCopy];
    messageSender = v5->_messageSender;
    v5->_messageSender = v6;

    v8 = dispatch_queue_create("com.apple.dt.tap_service", 0);
    serialQueue = v5->_serialQueue;
    v5->_serialQueue = v8;

    label = [channelCopy label];
    if (label)
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x2050000000;
      v30 = 0;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = sub_247F7EB44;
      v24[3] = &unk_278EF1BD8;
      v26 = &v27;
      v11 = label;
      v25 = v11;
      sub_247F7E514(v24);
      v12 = v28;
      v13 = v28[3];
      if (v13)
      {
        v5->_tapServiceID = atomic_fetch_add_explicit(dword_27EE84268, 1u, memory_order_relaxed) + 1;
        v14 = [objc_alloc(v12[3]) initWithMessageSender:v5->_messageSender];
        delegate = v5->_delegate;
        v5->_delegate = v14;

        p_super = sDTTapLogClient();
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_INFO))
        {
          tapServiceID = v5->_tapServiceID;
          v18 = NSStringFromClass(v28[3]);
          v19 = v18;
          uTF8String = [v18 UTF8String];
          *buf = 67109378;
          v33 = tapServiceID;
          v34 = 2080;
          v35 = uTF8String;
          _os_log_impl(&dword_247F67000, p_super, OS_LOG_TYPE_INFO, "DTTapService: (%d) Created new Tap service with delegate %s", buf, 0x12u);
        }
      }

      else
      {
        NSLog(&cfstr_DttapserviceCo.isa, v11);
        p_super = &v5->super.super;
        v5 = 0;
      }

      _Block_object_dispose(&v27, 8);
      if (v13)
      {
        goto LABEL_9;
      }
    }

    else
    {
      NSLog(&cfstr_DttapserviceRe.isa);

      v5 = 0;
    }

    v21 = 0;
    goto LABEL_11;
  }

LABEL_9:
  v5 = v5;
  v21 = v5;
LABEL_11:

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (void)messageReceived:(id)received
{
  if ([received errorStatus] == 2)
  {

    [(DTTapService *)self stop];
  }
}

- (void)setConfig:(id)config
{
  configCopy = config;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_247F7EC6C;
  v7[3] = &unk_278EF1550;
  v7[4] = self;
  v8 = configCopy;
  v6 = configCopy;
  dispatch_sync(serialQueue, v7);
}

- (void)start
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_247F7F008;
  v9 = sub_247F7F018;
  v10 = 0;
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_247F7F020;
  v4[3] = &unk_278EF1890;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(serialQueue, v4);
  v3 = v6[5];
  if (v3)
  {
    [v3 waitUntilFinished];
  }

  _Block_object_dispose(&v5, 8);
}

- (void)stop
{
  v28 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_247F7F008;
  v24 = sub_247F7F018;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_247F7F008;
  serialQueue = self->_serialQueue;
  v18 = sub_247F7F018;
  v19 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247F7F4B8;
  block[3] = &unk_278EF1C28;
  block[4] = self;
  block[5] = &v20;
  block[6] = &v14;
  dispatch_sync(serialQueue, block);
  v4 = v21[5];
  if (v4 || v15[5])
  {
    [v4 waitUntilFinished];
    [v15[5] waitUntilFinished];
    v5 = sDTTapLogClient();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      tapServiceID = self->_tapServiceID;
      *buf = 67109120;
      v27 = tapServiceID;
      _os_log_impl(&dword_247F67000, v5, OS_LOG_TYPE_DEBUG, "DTTapService: (%d) Tap has been stopped and fully fetched from.", buf, 8u);
    }

    [(DTTapServiceDelegate *)self->_delegate didStop];
    v7 = objc_opt_new();
    [v7 setKind:5];
    messageSender = self->_messageSender;
    v9 = [MEMORY[0x277D03668] messageWithObject:v7];
    [(DTTapServiceMessageSender *)messageSender sendMessage:v9];

    [(DTTapServiceMessageSender *)self->_messageSender sendBarrierMessage];
    v10 = sDTTapLogClient();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = self->_tapServiceID;
      *buf = 67109120;
      v27 = v11;
      _os_log_impl(&dword_247F67000, v10, OS_LOG_TYPE_INFO, "DTTapService: (%d) All stop related messages have been sent. Stop complete", buf, 8u);
    }
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)pause
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_247F7F008;
  v9 = sub_247F7F018;
  v10 = 0;
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_247F7F6F0;
  v4[3] = &unk_278EF1890;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(serialQueue, v4);
  v3 = v6[5];
  if (v3)
  {
    [v3 waitUntilFinished];
  }

  _Block_object_dispose(&v5, 8);
}

- (void)unpause
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_247F7F008;
  v9 = sub_247F7F018;
  v10 = 0;
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_247F7F8CC;
  v4[3] = &unk_278EF1890;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(serialQueue, v4);
  v3 = v6[5];
  if (v3)
  {
    [v3 waitUntilFinished];
  }

  _Block_object_dispose(&v5, 8);
}

- (void)fetchDataNow
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_247F7F008;
  v9 = sub_247F7F018;
  v10 = 0;
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_247F7FAA8;
  v4[3] = &unk_278EF1890;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(serialQueue, v4);
  v3 = v6[5];
  if (v3)
  {
    [v3 waitUntilFinished];
  }

  _Block_object_dispose(&v5, 8);
}

- (void)handleBulkData:(const void *)data size:(unint64_t)size destructor:(id)destructor
{
  v6 = [MEMORY[0x277D03668] messageReferencingBuffer:data length:size destructor:destructor];
  [(DTTapServiceMessageSender *)self->_messageSender sendMessage:v6];
}

- (void)handleBulkData:(id)data
{
  v4 = [MEMORY[0x277D03668] messageWithData:data];
  [(DTTapServiceMessageSender *)self->_messageSender sendMessage:v4];
}

- (void)sendFrameMessage:(id)message
{
  messageSender = self->_messageSender;
  v4 = [MEMORY[0x277D03668] messageWithObject:message];
  [(DTTapServiceMessageSender *)messageSender sendMessage:v4];
}

- (void)sendHeartbeatTime:(unint64_t)time
{
  v7 = objc_opt_new();
  [v7 setHeartbeatTime:time];
  messageSender = self->_messageSender;
  v6 = [MEMORY[0x277D03668] messageWithObject:v7];
  [(DTTapServiceMessageSender *)messageSender sendMessage:v6];
}

@end