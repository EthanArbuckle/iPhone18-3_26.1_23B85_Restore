@interface MIBUReaderService
- (MIBUReaderService)initWithDelegate:(id)delegate;
- (void)run;
- (void)start;
- (void)terminate;
@end

@implementation MIBUReaderService

- (MIBUReaderService)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = MIBUReaderService;
  v5 = [(MIBUReaderService *)&v13 init];
  v6 = v5;
  if (v5)
  {
    [(MIBUReaderService *)v5 setDelegate:delegateCopy];
    [(MIBUReaderService *)v6 setRunLoop:0];
    v7 = objc_alloc_init(MIBUDeviceNFC);
    [(MIBUReaderService *)v6 setDevice:v7];

    v8 = objc_alloc_init(MEMORY[0x277CCABD8]);
    [(MIBUReaderService *)v6 setServiceQueue:v8];

    serviceQueue = [(MIBUReaderService *)v6 serviceQueue];
    [serviceQueue setMaxConcurrentOperationCount:1];

    serviceQueue2 = [(MIBUReaderService *)v6 serviceQueue];
    [serviceQueue2 setName:@"com.apple.mobileinboxupdate.service_queue"];

    v11 = dispatch_queue_create("com.apple.mibu_device_queue", MEMORY[0x277D85CD8]);
    [(MIBUReaderService *)v6 setDeviceQueue:v11];
  }

  return v6;
}

- (void)start
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  serviceQueue = [(MIBUReaderService *)selfCopy serviceQueue];
  operationCount = [serviceQueue operationCount];

  if (operationCount)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUReaderService start];
    }

    v5 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_259ABF000, v5, OS_LOG_TYPE_DEFAULT, "MIBUService thread already running, ignoring start call...", v8, 2u);
    }
  }

  else
  {
    serviceQueue2 = [(MIBUReaderService *)selfCopy serviceQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __26__MIBUReaderService_start__block_invoke;
    v9[3] = &unk_2798E6708;
    v9[4] = selfCopy;
    v7 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v9];
    [serviceQueue2 addOperation:v7];
  }

  objc_sync_exit(selfCopy);
}

void __26__MIBUReaderService_start__block_invoke_2()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)terminate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  serviceQueue = [(MIBUReaderService *)selfCopy serviceQueue];
  operationCount = [serviceQueue operationCount];

  if (operationCount)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUReaderService terminate];
    }

    v5 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_259ABF000, v5, OS_LOG_TYPE_DEFAULT, "Terminating MobileInBoxUpdate service thread...", buf, 2u);
    }

    runLoop = [(MIBUReaderService *)selfCopy runLoop];
    CFRunLoopStop(runLoop);

    device = [(MIBUReaderService *)selfCopy device];
    [device endSession];

    serviceQueue2 = [(MIBUReaderService *)selfCopy serviceQueue];
    [serviceQueue2 waitUntilAllOperationsAreFinished];
  }

  else
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUReaderService terminate];
    }

    v9 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_259ABF000, v9, OS_LOG_TYPE_DEFAULT, "MIBUService thread not running, ignoring termination call...", v10, 2u);
    }
  }

  objc_sync_exit(selfCopy);
}

void __30__MIBUReaderService_terminate__block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __30__MIBUReaderService_terminate__block_invoke_27()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)run
{
  objc_initWeak(&location, self);
  if (MIBUOnceToken != -1)
  {
    [MIBUReaderService run];
  }

  v3 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_259ABF000, v3, OS_LOG_TYPE_DEFAULT, "MobileInBoxUpdate service thread started", buf, 2u);
  }

  deviceQueue = [(MIBUReaderService *)self deviceQueue];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __24__MIBUReaderService_run__block_invoke_32;
  v11 = &unk_2798E6730;
  objc_copyWeak(&v13, &location);
  selfCopy = self;
  dispatch_async(deviceQueue, &v8);

  if (MIBUOnceToken != -1)
  {
    [MIBUReaderService run];
  }

  v5 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_259ABF000, v5, OS_LOG_TYPE_DEFAULT, "Starting run loop", buf, 2u);
  }

  currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
  [(MIBUReaderService *)self setRunLoop:currentRunLoop];

  runLoop = [(MIBUReaderService *)self runLoop];
  [runLoop run];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __24__MIBUReaderService_run__block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __24__MIBUReaderService_run__block_invoke_32(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) device];
  v4 = [v3 startSession];

  if (v4)
  {
    v5 = [WeakRetained delegate];
    v6 = [*(a1 + 32) device];
    [v5 deviceDidConnect:v6];
  }

  else
  {
    if (MIBUOnceToken != -1)
    {
      __24__MIBUReaderService_run__block_invoke_32_cold_1();
    }

    v7 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      __24__MIBUReaderService_run__block_invoke_32_cold_2(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    v15 = [WeakRetained delegate];
    [v15 deviceDidNotConnect];
  }
}

void __24__MIBUReaderService_run__block_invoke_2()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __24__MIBUReaderService_run__block_invoke_35()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

@end