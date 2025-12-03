@interface DTTap
- (DTTap)init;
- (DTTap)initWithConfig:(id)config memoHandler:(id)handler;
- (id)fetchDataNow;
- (id)pause;
- (id)start;
- (id)stop;
- (id)unpause;
- (void)resumeDataProcessing;
- (void)suspendDataProcessing;
@end

@implementation DTTap

- (DTTap)init
{
  v2 = objc_opt_class();
  NSLog(&cfstr_TheClassCannot.isa, v2);
  __assert_rtn("[DTTap init]", "DTTap.m", 26, "0");
}

- (DTTap)initWithConfig:(id)config memoHandler:(id)handler
{
  configCopy = config;
  handlerCopy = handler;
  v15.receiver = self;
  v15.super_class = DTTap;
  v9 = [(DTTap *)&v15 init];
  v10 = v9;
  if (v9)
  {
    if (!configCopy)
    {
      sub_24802F6D4();
    }

    v9->_tapID = atomic_fetch_add_explicit(&dword_27EE84374, 1u, memory_order_relaxed) + 1;
    v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v12 = dispatch_queue_create("com.apple.dt.tap", v11);
    serialQueue = v10->_serialQueue;
    v10->_serialQueue = v12;

    objc_storeStrong(&v10->_config, config);
    objc_storeStrong(&v10->_memoHandler, handler);
  }

  return v10;
}

- (id)start
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = sDTTapLogClient();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    tapID = self->_tapID;
    *buf = 67109120;
    v14 = tapID;
    _os_log_impl(&dword_247F67000, v3, OS_LOG_TYPE_INFO, "DTTap: (%d) Called start API", buf, 8u);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_247FC7200;
  v12[3] = &unk_278EF1070;
  v12[4] = self;
  v5 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v12];
  serialQueue = self->_serialQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_247FC7348;
  v10[3] = &unk_278EF1070;
  v7 = v5;
  v11 = v7;
  dispatch_async(serialQueue, v10);

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)stop
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = sDTTapLogClient();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    tapID = self->_tapID;
    *buf = 67109120;
    v14 = tapID;
    _os_log_impl(&dword_247F67000, v3, OS_LOG_TYPE_INFO, "DTTap: (%d) Called stop API", buf, 8u);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_247FC74D0;
  v12[3] = &unk_278EF1070;
  v12[4] = self;
  v5 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v12];
  serialQueue = self->_serialQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_247FC760C;
  v10[3] = &unk_278EF1070;
  v7 = v5;
  v11 = v7;
  dispatch_async(serialQueue, v10);

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)pause
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = sDTTapLogClient();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    tapID = self->_tapID;
    *buf = 67109120;
    v14 = tapID;
    _os_log_impl(&dword_247F67000, v3, OS_LOG_TYPE_INFO, "DTTap: (%d) Called pause API", buf, 8u);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_247FC7794;
  v12[3] = &unk_278EF1070;
  v12[4] = self;
  v5 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v12];
  serialQueue = self->_serialQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_247FC78A4;
  v10[3] = &unk_278EF1070;
  v7 = v5;
  v11 = v7;
  dispatch_async(serialQueue, v10);

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)unpause
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = sDTTapLogClient();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    tapID = self->_tapID;
    *buf = 67109120;
    v14 = tapID;
    _os_log_impl(&dword_247F67000, v3, OS_LOG_TYPE_INFO, "DTTap: (%d) Called unpause API", buf, 8u);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_247FC7A2C;
  v12[3] = &unk_278EF1070;
  v12[4] = self;
  v5 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v12];
  serialQueue = self->_serialQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_247FC7B3C;
  v10[3] = &unk_278EF1070;
  v7 = v5;
  v11 = v7;
  dispatch_async(serialQueue, v10);

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)fetchDataNow
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = sDTTapLogClient();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    tapID = self->_tapID;
    *buf = 67109120;
    v15 = tapID;
    _os_log_impl(&dword_247F67000, v3, OS_LOG_TYPE_INFO, "DTTap: (%d) Called fetchDataNow API", buf, 8u);
  }

  v5 = objc_opt_new();
  serialQueue = self->_serialQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_247FC7C74;
  v12[3] = &unk_278EF1550;
  v12[4] = self;
  v7 = v5;
  v13 = v7;
  dispatch_async(serialQueue, v12);
  v8 = v13;
  v9 = v7;

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)suspendDataProcessing
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = sDTTapLogClient();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    tapID = self->_tapID;
    v6[0] = 67109120;
    v6[1] = tapID;
    _os_log_impl(&dword_247F67000, v3, OS_LOG_TYPE_INFO, "DTTap: (%d) Called suspendDataProcessing API", v6, 8u);
  }

  [(DTTapMemoHandler *)self->_memoHandler suspend];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)resumeDataProcessing
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = sDTTapLogClient();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    tapID = self->_tapID;
    v6[0] = 67109120;
    v6[1] = tapID;
    _os_log_impl(&dword_247F67000, v3, OS_LOG_TYPE_INFO, "DTTap: (%d) Called resumeDataProcessing API", v6, 8u);
  }

  [(DTTapMemoHandler *)self->_memoHandler resume];
  v5 = *MEMORY[0x277D85DE8];
}

@end