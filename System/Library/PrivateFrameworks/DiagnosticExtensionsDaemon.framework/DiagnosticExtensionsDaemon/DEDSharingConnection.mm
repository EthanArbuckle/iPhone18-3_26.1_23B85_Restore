@interface DEDSharingConnection
+ (void)checkIn;
- (DEDSharingConnection)initWithController:(id)a3;
- (DEDSharingInboundDelegate)controller;
- (id)_existingSharingSessionForDevice:(id)a3;
- (id)blockingSharingSessionForDevice:(id)a3 fromInbound:(id)a4;
- (id)sharingOutboundForBugSessionIdentifier:(id)a3 device:(id)a4 fromInbound:(id)a5;
- (void)_handleIncomingPingingDevice:(id)a3;
- (void)_handleIncomingPongingDevice:(id)a3 fromInbound:(id)a4;
- (void)_saveDevice:(id)a3;
- (void)_verifyPairingForSession:(id)a3 holdForPIN:(BOOL)a4 completion:(id)a5;
- (void)addIncomingSFSession:(id)a3 forIdentifier:(id)a4;
- (void)checkReadinessForSFDevice:(id)a3 session:(id)a4;
- (void)configureSharingInbound:(id)a3;
- (void)createSharingSessionForSFDevice:(id)a3 holdForPIN:(BOOL)a4 fromInbound:(id)a5 completion:(id)a6;
- (void)dealloc;
- (void)discoverDevicesFromInbound:(id)a3 withCompletion:(id)a4;
- (void)getSystemInfoForDevice:(id)a3;
- (void)sharing_didStartBugSessionWithInfo:(id)a3 forCaller:(id)a4;
- (void)sharing_startBugSessionWithIdentifier:(id)a3 configuration:(id)a4 caller:(id)a5 target:(id)a6 fromInbound:(id)a7;
- (void)sharing_startPairSetupForDevice:(id)a3 fromInbound:(id)a4;
- (void)sharing_tryPIN:(id)a3 forDevice:(id)a4 fromInbound:(id)a5;
- (void)start;
- (void)startPingDiscovery;
- (void)startPingServiceWithCompletion:(id)a3;
- (void)startPongAdvertisement;
- (void)startPongDiscoveryFromInbound:(id)a3;
- (void)startWorkerService;
- (void)stopDiscovery;
- (void)stopPingDiscovery;
- (void)stopPingService;
- (void)stopPongAdvertisement;
- (void)stopPongDiscovery;
- (void)stopSession:(id)a3;
- (void)trySessionWithFoundDevice:(id)a3 fromInbound:(id)a4;
- (void)updateControllerWithDevice:(id)a3 andStatus:(int64_t)a4;
- (void)updatePongAdvertisement;
@end

@implementation DEDSharingConnection

+ (void)checkIn
{
  v2 = [MEMORY[0x277CCAC38] processInfo];
  v3 = [v2 environment];
  v4 = [v3 objectForKeyedSubscript:@"DED_UNIT_TEST"];

  v5 = Log_5();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      *v7 = 0;
      _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_INFO, "NOT checking in com.apple.diagnosticextensionsd.sharing-wakeup: DEBUG", v7, 2u);
    }
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_INFO, "checking in com.apple.diagnosticextensionsd.sharing-wakeup", buf, 2u);
    }

    if (checkIn_onceToken != -1)
    {
      +[DEDSharingConnection checkIn];
    }
  }
}

void __31__DEDSharingConnection_checkIn__block_invoke()
{
  mach_service = xpc_connection_create_mach_service("com.apple.diagnosticextensionsd.sharing-wakeup", 0, 1uLL);
  xpc_connection_set_event_handler(mach_service, &__block_literal_global_19);
  xpc_connection_resume(mach_service);
  v1 = checkIn__connection;
  checkIn__connection = mach_service;
}

void __31__DEDSharingConnection_checkIn__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2 == MEMORY[0x277D86420])
  {
    v4 = Log_5();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "XPC_ERROR_TERMINATION_IMMINENT, will not check in for sharing-wakeup";
      v6 = buf;
      v7 = v4;
      v8 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_6;
    }
  }

  else
  {
    xpc_connection_set_event_handler(v2, &__block_literal_global_22);
    xpc_connection_resume(v3);
    v4 = Log_5();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v9 = 0;
      v5 = "did check in com.apple.diagnosticextensionsd.sharing-wakeup";
      v6 = &v9;
      v7 = v4;
      v8 = OS_LOG_TYPE_INFO;
LABEL_6:
      _os_log_impl(&dword_248AD7000, v7, v8, v5, v6, 2u);
    }
  }
}

- (DEDSharingConnection)initWithController:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = DEDSharingConnection;
  v5 = [(DEDSharingConnection *)&v13 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
    [(DEDSharingConnection *)v5 setDeviceSessions:v6];

    v7 = [MEMORY[0x277CBEB38] dictionary];
    [(DEDSharingConnection *)v5 setDiscoveredDevices:v7];

    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v9 = dispatch_queue_create("com.apple.diagnosticextensionsd.sharingqueue", v8);
    [(DEDSharingConnection *)v5 setRun_queue:v9];

    [(DEDSharingConnection *)v5 setStarted:0];
    [(DEDSharingConnection *)v5 setListenForClients:0];
    [(DEDSharingConnection *)v5 setPingService:0];
    [(DEDSharingConnection *)v5 setWorkerService:0];
    [(DEDSharingConnection *)v5 setController:v4];
    v10 = dispatch_semaphore_create(5);
    [(DEDSharingConnection *)v5 setBluetoothSessionSemaphore:v10];

    v11 = Log_5();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [DEDSharingConnection initWithController:v11];
    }
  }

  return v5;
}

- (void)dealloc
{
  v3 = [(DEDSharingConnection *)self pingService];
  [v3 invalidate];

  v4 = [(DEDSharingConnection *)self workerService];
  [v4 invalidate];

  v5.receiver = self;
  v5.super_class = DEDSharingConnection;
  [(DEDSharingConnection *)&v5 dealloc];
}

- (void)configureSharingInbound:(id)a3
{
  v4 = a3;
  if (![(DEDSharingConnection *)self started])
  {
    [(DEDSharingConnection *)self setSharingInbound:v4];
  }
}

- (void)start
{
  if (![(DEDSharingConnection *)self started])
  {
    v3 = [DEDSharingInbound alloc];
    v4 = [(DEDSharingConnection *)self controller];
    v5 = [(DEDSharingInbound *)v3 initWithController:v4 sharingConnection:self];
    [(DEDSharingConnection *)self setSharingInbound:v5];

    if ([(DEDSharingConnection *)self listenForClients])
    {
      [(DEDSharingConnection *)self startPingDiscovery];

      [(DEDSharingConnection *)self startWorkerService];
    }
  }
}

- (void)discoverDevicesFromInbound:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__DEDSharingConnection_discoverDevicesFromInbound_withCompletion___block_invoke;
  v10[3] = &unk_278F66618;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(DEDSharingConnection *)self startPingServiceWithCompletion:v10];
}

void __66__DEDSharingConnection_discoverDevicesFromInbound_withCompletion___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  [v3 startPongDiscoveryFromInbound:v4];
  (*(a1[6] + 16))();
}

- (void)stopDiscovery
{
  [(DEDSharingConnection *)self stopPongDiscovery];

  [(DEDSharingConnection *)self stopPingService];
}

- (void)startPingServiceWithCompletion:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DEDSharingConnection *)self pingService];

  if (v5)
  {
    v6 = Log_5();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(DEDSharingConnection *)self pingService];
      v13 = 138412290;
      v14 = v7;
      _os_log_impl(&dword_248AD7000, v6, OS_LOG_TYPE_DEFAULT, "Ping service already initialized [%@]", &v13, 0xCu);
    }

    v4[2](v4, MEMORY[0x277CBEBF8]);
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277D54CE0]);
    [(DEDSharingConnection *)self setPingService:v8];

    v9 = Log_5();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(DEDSharingConnection *)self pingService];
      v13 = 138412290;
      v14 = v10;
      _os_log_impl(&dword_248AD7000, v9, OS_LOG_TYPE_DEFAULT, "Created new ping service [%@]", &v13, 0xCu);
    }

    v11 = [(DEDSharingConnection *)self pingService];
    [(DEDSharingConnection *)self _configureService:v11 withLabel:@"ded-ping" needsSetup:1 actionType:17 completion:v4];

    v4 = v11;
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)stopPingService
{
  v3 = Log_5();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_248AD7000, v3, OS_LOG_TYPE_DEFAULT, "Stopping ping service.", v5, 2u);
  }

  v4 = [(DEDSharingConnection *)self pingService];
  [v4 invalidate];

  [(DEDSharingConnection *)self setPingService:0];
}

- (void)updatePongAdvertisement
{
  v3 = [(DEDSharingConnection *)self visiblePingUUIDs];
  v4 = [v3 count];

  if (!v4)
  {
    [(DEDSharingConnection *)self stopPongAdvertisement];
  }

  v5 = [(DEDSharingConnection *)self visiblePingUUIDs];
  v6 = [v5 count];

  if (v6)
  {

    [(DEDSharingConnection *)self startPongAdvertisement];
  }
}

- (void)startPongAdvertisement
{
  v3 = [(DEDSharingConnection *)self workerService];
  v4 = [v3 needsSetup];

  if ((v4 & 1) == 0)
  {
    v5 = Log_5();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_DEFAULT, "Starting pong advertisement.", v8, 2u);
    }

    v6 = [(DEDSharingConnection *)self workerService];
    [v6 setNeedsSetup:1];

    v7 = [(DEDSharingConnection *)self workerService];
    [v7 setDeviceActionType:18];
  }
}

- (void)stopPongAdvertisement
{
  v3 = [(DEDSharingConnection *)self workerService];
  v4 = [v3 needsSetup];

  if (v4)
  {
    v5 = Log_5();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_DEFAULT, "Stopping pong advertisement.", v8, 2u);
    }

    v6 = [(DEDSharingConnection *)self workerService];
    [v6 setNeedsSetup:0];

    v7 = [(DEDSharingConnection *)self workerService];
    [v7 setDeviceActionType:0];
  }
}

- (void)startWorkerService
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(DEDSharingConnection *)self workerService];

  if (v3)
  {
    v4 = Log_5();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(DEDSharingConnection *)self workerService];
      *buf = 138412290;
      v21 = v5;
      v6 = "Worker service already initialized [%@]";
LABEL_6:
      _os_log_impl(&dword_248AD7000, v4, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
    }
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277D54CE0]);
    [(DEDSharingConnection *)self setWorkerService:v7];

    v18 = @"com.apple.DeviceDiagnostics";
    v8 = MEMORY[0x277CBEC38];
    v19 = MEMORY[0x277CBEC38];
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v10 = [(DEDSharingConnection *)self workerService];
    [v10 setPairSetupACL:v9];

    v16 = @"com.apple.DeviceDiagnostics";
    v17 = v8;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v12 = [(DEDSharingConnection *)self workerService];
    [v12 setPairVerifyACL:v11];

    v13 = [(DEDSharingConnection *)self workerService];
    [v13 setOverrideScreenOff:1];

    v14 = [(DEDSharingConnection *)self workerService];
    [(DEDSharingConnection *)self _configureService:v14 withLabel:@"ded-worker" needsSetup:0 actionType:0 completion:0];

    v4 = Log_5();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(DEDSharingConnection *)self workerService];
      *buf = 138412290;
      v21 = v5;
      v6 = "Started sharing worker service %@";
      goto LABEL_6;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)startPingDiscovery
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = [(DEDSharingConnection *)self pingDiscovery];

  if (v3)
  {
    v4 = Log_5();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(DEDSharingConnection *)self pingDiscovery];
      *buf = 138412290;
      v35 = v5;
      _os_log_impl(&dword_248AD7000, v4, OS_LOG_TYPE_DEFAULT, "Ping discovery already initialized %@", buf, 0xCu);
    }

    v6 = Log_5();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(DEDSharingConnection *)self visiblePingUUIDs];
      *buf = 138412290;
      v35 = v7;
      _os_log_impl(&dword_248AD7000, v6, OS_LOG_TYPE_DEFAULT, "Ping devices tracked %@", buf, 0xCu);
    }
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277D54C68]);
    [(DEDSharingConnection *)self setPingDiscovery:v8];

    v9 = Log_5();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(DEDSharingConnection *)self pingDiscovery];
      *buf = 138412290;
      v35 = v10;
      _os_log_impl(&dword_248AD7000, v9, OS_LOG_TYPE_DEFAULT, "Created ping discovery %@", buf, 0xCu);
    }

    v11 = [(DEDSharingConnection *)self pingDiscovery];
    [v11 setChangeFlags:13];

    v12 = [(DEDSharingConnection *)self pingDiscovery];
    [v12 setDiscoveryFlags:16];

    v13 = [(DEDSharingConnection *)self pingDiscovery];
    [v13 setScanRate:20];

    v14 = Log_5();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(DEDSharingConnection *)self pingDiscovery];
      *buf = 138412290;
      v35 = v15;
      _os_log_impl(&dword_248AD7000, v14, OS_LOG_TYPE_DEFAULT, "Initialized Ping discovery %@", buf, 0xCu);
    }

    v16 = [MEMORY[0x277CBEB58] set];
    [(DEDSharingConnection *)self setVisiblePingUUIDs:v16];

    objc_initWeak(buf, self);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __42__DEDSharingConnection_startPingDiscovery__block_invoke;
    v32[3] = &unk_278F66640;
    objc_copyWeak(&v33, buf);
    v17 = [(DEDSharingConnection *)self pingDiscovery];
    [v17 setDeviceFoundHandler:v32];

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __42__DEDSharingConnection_startPingDiscovery__block_invoke_44;
    v30[3] = &unk_278F66668;
    objc_copyWeak(&v31, buf);
    v18 = [(DEDSharingConnection *)self pingDiscovery];
    [v18 setDeviceChangedHandler:v30];

    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __42__DEDSharingConnection_startPingDiscovery__block_invoke_46;
    v28[3] = &unk_278F66640;
    objc_copyWeak(&v29, buf);
    v19 = [(DEDSharingConnection *)self pingDiscovery];
    [v19 setDeviceLostHandler:v28];

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __42__DEDSharingConnection_startPingDiscovery__block_invoke_47;
    v26[3] = &unk_278F65830;
    objc_copyWeak(&v27, buf);
    v20 = [(DEDSharingConnection *)self pingDiscovery];
    [v20 setInterruptionHandler:v26];

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __42__DEDSharingConnection_startPingDiscovery__block_invoke_48;
    v24[3] = &unk_278F65830;
    objc_copyWeak(&v25, buf);
    v21 = [(DEDSharingConnection *)self pingDiscovery];
    [v21 setInvalidationHandler:v24];

    v22 = [(DEDSharingConnection *)self pingDiscovery];
    [v22 activateWithCompletion:&__block_literal_global_52];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&v29);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&v33);
    objc_destroyWeak(buf);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __42__DEDSharingConnection_startPingDiscovery__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = Log_5();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __42__DEDSharingConnection_startPingDiscovery__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleIncomingPingingDevice:v3];
}

void __42__DEDSharingConnection_startPingDiscovery__block_invoke_44(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = Log_5();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __42__DEDSharingConnection_startPingDiscovery__block_invoke_44_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleIncomingPingingDevice:v3];
}

void __42__DEDSharingConnection_startPingDiscovery__block_invoke_46(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = Log_5();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v17 = 138412290;
    v18 = v3;
    _os_log_impl(&dword_248AD7000, v4, OS_LOG_TYPE_INFO, "Ping discovery deviceLost called for device [%@]", &v17, 0xCu);
  }

  v5 = [v3 identifier];
  v6 = [v5 UUIDString];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained visiblePingUUIDs];
  v9 = [v8 containsObject:v6];

  if (v9)
  {
    v10 = Log_5();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v3;
      _os_log_impl(&dword_248AD7000, v10, OS_LOG_TYPE_DEFAULT, "pingDiscovery.deviceLost: [%@]", &v17, 0xCu);
    }

    v11 = objc_loadWeakRetained((a1 + 32));
    v12 = [v11 visiblePingUUIDs];
    v13 = [v3 identifier];
    v14 = [v13 UUIDString];
    [v12 removeObject:v14];

    v15 = objc_loadWeakRetained((a1 + 32));
    [v15 updatePongAdvertisement];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __42__DEDSharingConnection_startPingDiscovery__block_invoke_47(uint64_t a1)
{
  v2 = Log_5();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_248AD7000, v2, OS_LOG_TYPE_DEFAULT, "Ping discovery interrupted.", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained pingDiscovery];
  [v4 invalidate];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 setPingDiscovery:0];
}

void __42__DEDSharingConnection_startPingDiscovery__block_invoke_48(uint64_t a1)
{
  v2 = Log_5();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_248AD7000, v2, OS_LOG_TYPE_DEFAULT, "Ping discovery invalidated.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPingDiscovery:0];
}

void __42__DEDSharingConnection_startPingDiscovery__block_invoke_49(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = Log_5();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __42__DEDSharingConnection_startPingDiscovery__block_invoke_49_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_248AD7000, v4, OS_LOG_TYPE_DEFAULT, "Ping discovery activated", v5, 2u);
  }
}

- (void)_handleIncomingPingingDevice:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v5 UUIDString];

  v7 = [v4 isValidDEDPingDevice];
  v8 = [(DEDSharingConnection *)self visiblePingUUIDs];
  v9 = [v8 containsObject:v6];

  if (!v7 || (v9 & 1) != 0)
  {
    if ((v7 & v9) == 1)
    {
      v12 = Log_5();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [DEDSharingConnection _handleIncomingPingingDevice:];
      }
    }

    else
    {
      v14 = v7 | v9;
      v15 = Log_5();
      v12 = v15;
      if (v14)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 138412290;
          v19 = v4;
          _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "Incoming ping discovery. known device no longer valid, will stop tracking [%@]", &v18, 0xCu);
        }

        v16 = [(DEDSharingConnection *)self visiblePingUUIDs];
        [v16 removeObject:v6];

        v12 = Log_5();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [DEDSharingConnection _handleIncomingPingingDevice:?];
        }
      }

      else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [DEDSharingConnection _handleIncomingPingingDevice:];
      }
    }
  }

  else
  {
    v10 = Log_5();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v4;
      _os_log_impl(&dword_248AD7000, v10, OS_LOG_TYPE_DEFAULT, "Incoming ping discovery. New device is valid, will track [%@]", &v18, 0xCu);
    }

    [(DEDSharingConnection *)self _saveDevice:v4];
    v11 = [(DEDSharingConnection *)self visiblePingUUIDs];
    [v11 addObject:v6];

    v12 = Log_5();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [(DEDSharingConnection *)self visiblePingUUIDs];
      v18 = 138412290;
      v19 = v13;
      _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_INFO, "Tracked DED ping devices %@", &v18, 0xCu);
    }
  }

  [(DEDSharingConnection *)self updatePongAdvertisement];
  v17 = *MEMORY[0x277D85DE8];
}

- (void)stopPingDiscovery
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = Log_5();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(DEDSharingConnection *)self pingDiscovery];
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_248AD7000, v3, OS_LOG_TYPE_DEFAULT, "Stopping ping discovery on %@.", &v7, 0xCu);
  }

  v5 = [(DEDSharingConnection *)self pingDiscovery];
  [v5 invalidate];

  [(DEDSharingConnection *)self setPingDiscovery:0];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)startPongDiscoveryFromInbound:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DEDSharingConnection *)self pongDiscovery];

  if (v5)
  {
    v6 = Log_5();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(DEDSharingConnection *)self pongDiscovery];
      *buf = 138412290;
      v40 = v7;
      _os_log_impl(&dword_248AD7000, v6, OS_LOG_TYPE_DEFAULT, "Pong discovery already initialized %@", buf, 0xCu);
    }

    v8 = Log_5();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(DEDSharingConnection *)self pongingDevices];
      *buf = 138412290;
      v40 = v9;
      _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_DEFAULT, "Pong devices tracked %@", buf, 0xCu);
    }
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277D54C68]);
    [(DEDSharingConnection *)self setPongDiscovery:v10];

    v11 = Log_5();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(DEDSharingConnection *)self pongingDevices];
      *buf = 138412290;
      v40 = v12;
      _os_log_impl(&dword_248AD7000, v11, OS_LOG_TYPE_DEFAULT, "Created pong discovery %@", buf, 0xCu);
    }

    v13 = [(DEDSharingConnection *)self pongDiscovery];
    [v13 setChangeFlags:13];

    v14 = [(DEDSharingConnection *)self pongDiscovery];
    [v14 setDiscoveryFlags:235011984];

    v15 = [(DEDSharingConnection *)self pongDiscovery];
    [v15 setScanRate:20];

    v16 = Log_5();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(DEDSharingConnection *)self pongDiscovery];
      *buf = 138412290;
      v40 = v17;
      _os_log_impl(&dword_248AD7000, v16, OS_LOG_TYPE_DEFAULT, "Initialized Pong discovery %@", buf, 0xCu);
    }

    v18 = [MEMORY[0x277CBEB38] dictionary];
    [(DEDSharingConnection *)self setPongingDevices:v18];

    objc_initWeak(buf, self);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __54__DEDSharingConnection_startPongDiscoveryFromInbound___block_invoke;
    v36[3] = &unk_278F666B0;
    objc_copyWeak(&v38, buf);
    v19 = v4;
    v37 = v19;
    v20 = [(DEDSharingConnection *)self pongDiscovery];
    [v20 setDeviceFoundHandler:v36];

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __54__DEDSharingConnection_startPongDiscoveryFromInbound___block_invoke_53;
    v33[3] = &unk_278F666D8;
    objc_copyWeak(&v35, buf);
    v34 = v19;
    v21 = [(DEDSharingConnection *)self pongDiscovery];
    [v21 setDeviceChangedHandler:v33];

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __54__DEDSharingConnection_startPongDiscoveryFromInbound___block_invoke_54;
    v31[3] = &unk_278F66640;
    objc_copyWeak(&v32, buf);
    v22 = [(DEDSharingConnection *)self pongDiscovery];
    [v22 setDeviceLostHandler:v31];

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __54__DEDSharingConnection_startPongDiscoveryFromInbound___block_invoke_56;
    v29[3] = &unk_278F65830;
    objc_copyWeak(&v30, buf);
    v23 = [(DEDSharingConnection *)self pongDiscovery];
    [v23 setInterruptionHandler:v29];

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __54__DEDSharingConnection_startPongDiscoveryFromInbound___block_invoke_57;
    v27[3] = &unk_278F65830;
    objc_copyWeak(&v28, buf);
    v24 = [(DEDSharingConnection *)self pongDiscovery];
    [v24 setInvalidationHandler:v27];

    v25 = [(DEDSharingConnection *)self pongDiscovery];
    [v25 activateWithCompletion:&__block_literal_global_60_1];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&v32);

    objc_destroyWeak(&v35);
    objc_destroyWeak(&v38);
    objc_destroyWeak(buf);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __54__DEDSharingConnection_startPongDiscoveryFromInbound___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = Log_5();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __54__DEDSharingConnection_startPongDiscoveryFromInbound___block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleIncomingPongingDevice:v3 fromInbound:*(a1 + 32)];
}

void __54__DEDSharingConnection_startPongDiscoveryFromInbound___block_invoke_53(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = Log_5();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __54__DEDSharingConnection_startPongDiscoveryFromInbound___block_invoke_53_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleIncomingPongingDevice:v3 fromInbound:*(a1 + 32)];
}

void __54__DEDSharingConnection_startPongDiscoveryFromInbound___block_invoke_54(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = Log_5();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v16 = 138412290;
    v17 = v3;
    _os_log_impl(&dword_248AD7000, v4, OS_LOG_TYPE_INFO, "Pong discovery deviceLost called for device [%@]", &v16, 0xCu);
  }

  v5 = [v3 identifier];
  v6 = [v5 UUIDString];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained pongingDevices];
  v9 = [v8 objectForKey:v6];

  if (v9)
  {
    v10 = Log_5();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __54__DEDSharingConnection_startPongDiscoveryFromInbound___block_invoke_54_cold_1();
    }

    v11 = [DEDDevice deviceForSFDevice:v3 andStatus:4];
    v12 = objc_loadWeakRetained((a1 + 32));
    [v12 updateControllerWithDevice:v11 andStatus:4];

    v13 = objc_loadWeakRetained((a1 + 32));
    v14 = [v13 pongingDevices];
    [v14 removeObjectForKey:v6];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __54__DEDSharingConnection_startPongDiscoveryFromInbound___block_invoke_56(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained pongDiscovery];
  [v3 invalidate];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setPongDiscovery:0];

  v5 = Log_5();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_DEFAULT, "Pong discovery interrupted.", v6, 2u);
  }
}

void __54__DEDSharingConnection_startPongDiscoveryFromInbound___block_invoke_57(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPongDiscovery:0];

  v2 = Log_5();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_248AD7000, v2, OS_LOG_TYPE_INFO, "Pong discovery invalidated.", v3, 2u);
  }
}

void __54__DEDSharingConnection_startPongDiscoveryFromInbound___block_invoke_58(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = Log_5();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_248AD7000, v3, OS_LOG_TYPE_DEFAULT, "Pong discovery activated (error: %@).", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_handleIncomingPongingDevice:(id)a3 fromInbound:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 identifier];
  v9 = [v8 UUIDString];

  v10 = [v6 isValidDEDPongDevice];
  v11 = [(DEDSharingConnection *)self pongingDevices];
  v12 = [v11 objectForKeyedSubscript:v9];

  if (!v10 || v12)
  {
    if (v12)
    {
      v19 = v10;
    }

    else
    {
      v19 = 0;
    }

    if (v19 == 1)
    {
      v20 = Log_5();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [DEDSharingConnection _handleIncomingPongingDevice:fromInbound:];
      }
    }

    else
    {
      if (v12)
      {
        v21 = 1;
      }

      else
      {
        v21 = v10;
      }

      if (v21)
      {
        v22 = [DEDDevice deviceForSFDevice:v6 andStatus:4];
        [(DEDSharingConnection *)self updateControllerWithDevice:v22 andStatus:4];
        v23 = [(DEDSharingConnection *)self pongingDevices];
        [v23 removeObjectForKey:v9];

        goto LABEL_26;
      }

      v20 = Log_5();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [DEDSharingConnection _handleIncomingPongingDevice:fromInbound:];
      }
    }

    goto LABEL_26;
  }

  v13 = Log_5();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v6;
    _os_log_impl(&dword_248AD7000, v13, OS_LOG_TYPE_DEFAULT, "Incoming pong discovery. New device has pong action and within range, will get status [%@]", buf, 0xCu);
  }

  v14 = Log_5();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [DEDSharingConnection _handleIncomingPongingDevice:v6 fromInbound:?];
  }

  v15 = Log_5();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [DEDSharingConnection _handleIncomingPongingDevice:v6 fromInbound:?];
  }

  [(DEDSharingConnection *)self _saveDevice:v6];
  v16 = [(DEDSharingConnection *)self pongingDevices];
  [v16 setObject:v6 forKeyedSubscript:v9];

  v17 = Log_5();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [DEDSharingConnection _handleIncomingPongingDevice:? fromInbound:?];
  }

  v18 = [(DEDSharingConnection *)self run_queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__DEDSharingConnection__handleIncomingPongingDevice_fromInbound___block_invoke;
  block[3] = &unk_278F65668;
  block[4] = self;
  v26 = v6;
  v27 = v7;
  dispatch_async(v18, block);

LABEL_26:
  v24 = *MEMORY[0x277D85DE8];
}

- (void)stopPongDiscovery
{
  v3 = Log_5();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_248AD7000, v3, OS_LOG_TYPE_DEFAULT, "Stopping pong discovery.", v5, 2u);
  }

  v4 = [(DEDSharingConnection *)self pongDiscovery];
  [v4 invalidate];

  [(DEDSharingConnection *)self setPongDiscovery:0];
}

- (void)trySessionWithFoundDevice:(id)a3 fromInbound:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [DEDDevice deviceForSFDevice:v6 andStatus:3];
  v9 = [(DEDSharingConnection *)self _existingSharingSessionForDevice:v8];
  if (v9)
  {
    [(DEDSharingConnection *)self checkReadinessForSFDevice:v6 session:v9];
  }

  else
  {
    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __62__DEDSharingConnection_trySessionWithFoundDevice_fromInbound___block_invoke;
    v10[3] = &unk_278F66700;
    objc_copyWeak(&v12, &location);
    v11 = v6;
    [(DEDSharingConnection *)self createSharingSessionForSFDevice:v11 holdForPIN:0 fromInbound:v7 completion:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __62__DEDSharingConnection_trySessionWithFoundDevice_fromInbound___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (a3)
  {
    [WeakRetained checkReadinessForSFDevice:*(a1 + 32) session:v5];
  }

  else
  {
    [WeakRetained stopSession:v5];

    v7 = objc_loadWeakRetained((a1 + 40));
    v8 = [v7 run_queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__DEDSharingConnection_trySessionWithFoundDevice_fromInbound___block_invoke_2;
    block[3] = &unk_278F65880;
    objc_copyWeak(&v12, (a1 + 40));
    v11 = *(a1 + 32);
    dispatch_async(v8, block);

    objc_destroyWeak(&v12);
  }
}

void __62__DEDSharingConnection_trySessionWithFoundDevice_fromInbound___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained getSystemInfoForDevice:*(a1 + 32)];
}

- (void)getSystemInfoForDevice:(id)a3
{
  v4 = a3;
  v5 = Log_5();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DEDSharingConnection getSystemInfoForDevice:v4];
  }

  v6 = [(DEDSharingConnection *)self bluetoothSessionSemaphore];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);

  v7 = objc_alloc_init(MEMORY[0x277D54CF8]);
  v8 = objc_alloc_init(MEMORY[0x277D54C48]);
  v9 = [v4 identifier];
  [v8 setIdentifier:v9];

  [v7 setPeerDevice:v8];
  [v7 setAllowUnencrypted:1];
  [v7 activate];
  v10 = Log_5();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [DEDSharingConnection getSystemInfoForDevice:v4];
  }

  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __47__DEDSharingConnection_getSystemInfoForDevice___block_invoke;
  v20[3] = &unk_278F66728;
  v23 = v24;
  v20[4] = self;
  v11 = v4;
  v21 = v11;
  v12 = v7;
  v22 = v12;
  [v12 getSystemInfoWithCompletion:v20];
  v13 = dispatch_time(0, 18000000000);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __47__DEDSharingConnection_getSystemInfoForDevice___block_invoke_71;
  v16[3] = &unk_278F65DF0;
  v16[4] = self;
  v17 = v11;
  v18 = v12;
  v19 = v24;
  v14 = v12;
  v15 = v11;
  dispatch_after(v13, MEMORY[0x277D85CD0], v16);

  _Block_object_dispose(v24, 8);
}

void __47__DEDSharingConnection_getSystemInfoForDevice___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v7 = [*(a1 + 32) bluetoothSessionSemaphore];
    dispatch_semaphore_signal(v7);
  }

  if (!v6)
  {
    v9 = Log_5();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __47__DEDSharingConnection_getSystemInfoForDevice___block_invoke_cold_2();
    }

    [*(a1 + 32) _saveDevice:*(a1 + 40)];
    v8 = [DEDDevice deviceForSFDevice:*(a1 + 40) systemInfo:v5 andStatus:2];
    [*(a1 + 32) updateControllerWithDevice:v8 andStatus:2];
    goto LABEL_10;
  }

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v8 = Log_5();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __47__DEDSharingConnection_getSystemInfoForDevice___block_invoke_cold_1();
    }

LABEL_10:
  }

  [*(a1 + 48) invalidate];
  *(*(*(a1 + 56) + 8) + 24) = 1;
}

uint64_t __47__DEDSharingConnection_getSystemInfoForDevice___block_invoke_71(uint64_t result)
{
  if ((*(*(*(result + 56) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    v2 = [*(result + 32) bluetoothSessionSemaphore];
    dispatch_semaphore_signal(v2);

    v3 = Log_5();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __47__DEDSharingConnection_getSystemInfoForDevice___block_invoke_71_cold_1(v1);
    }

    result = [*(v1 + 48) invalidate];
    *(*(*(v1 + 56) + 8) + 24) = 1;
  }

  return result;
}

- (void)checkReadinessForSFDevice:(id)a3 session:(id)a4
{
  v13[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = Log_5();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [DEDSharingConnection checkReadinessForSFDevice:v5 session:?];
  }

  v12[0] = @"setup";
  v12[1] = @"yourIdentifier";
  v13[0] = @"ready_check";
  v8 = [v5 identifier];
  v9 = [v8 UUIDString];
  v13[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  [v6 sendWithFlags:0 object:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)sharing_startPairSetupForDevice:(id)a3 fromInbound:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = Log_5();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DEDSharingConnection sharing_startPairSetupForDevice:v6 fromInbound:?];
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__DEDSharingConnection_sharing_startPairSetupForDevice_fromInbound___block_invoke;
  v16[3] = &unk_278F66778;
  v16[4] = self;
  v9 = v6;
  v17 = v9;
  v10 = v7;
  v18 = v10;
  v11 = MEMORY[0x24C1E5320](v16);
  v12 = [(DEDSharingConnection *)self _existingSharingSessionForDevice:v9];
  if (v12)
  {
    (v11)[2](v11, v12);
  }

  else
  {
    v13 = [v9 sfDevice];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __68__DEDSharingConnection_sharing_startPairSetupForDevice_fromInbound___block_invoke_82;
    v14[3] = &unk_278F667A0;
    v15 = v11;
    [(DEDSharingConnection *)self createSharingSessionForSFDevice:v13 holdForPIN:1 fromInbound:v10 completion:v14];
  }
}

void __68__DEDSharingConnection_sharing_startPairSetupForDevice_fromInbound___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__DEDSharingConnection_sharing_startPairSetupForDevice_fromInbound___block_invoke_2;
  v6[3] = &unk_278F66750;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v4;
  v8 = *(a1 + 48);
  v9 = v3;
  v5 = v3;
  [v5 pairSetupWithFlags:8 completion:v6];
}

void __68__DEDSharingConnection_sharing_startPairSetupForDevice_fromInbound___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = Log_5();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __68__DEDSharingConnection_sharing_startPairSetupForDevice_fromInbound___block_invoke_2_cold_1(v4);
  }

  if (v3)
  {
    if ([v3 code] != -6723)
    {
      v5 = Log_5();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        __68__DEDSharingConnection_sharing_startPairSetupForDevice_fromInbound___block_invoke_2_cold_2();
      }

      [*(a1 + 32) sharing_startPairSetupForDevice:*(a1 + 40) fromInbound:*(a1 + 48)];
    }
  }

  else
  {
    v6 = [*(a1 + 32) controller];
    [v6 sharingInbound_successPINForDevice:*(a1 + 40) fromInbound:*(a1 + 48)];

    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) sfDevice];
    [v7 checkReadinessForSFDevice:v8 session:*(a1 + 56)];
  }
}

- (void)sharing_tryPIN:(id)a3 forDevice:(id)a4 fromInbound:(id)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = Log_5();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = v8;
    _os_log_impl(&dword_248AD7000, v9, OS_LOG_TYPE_DEFAULT, "trying pin for device [%{public}@]", &v14, 0xCu);
  }

  v10 = [(DEDSharingConnection *)self _existingSharingSessionForDevice:v8];
  v11 = v10;
  if (v10)
  {
    [v10 pairSetupTryPIN:v7];
  }

  else
  {
    v12 = Log_5();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [DEDSharingConnection sharing_tryPIN:forDevice:fromInbound:];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)sharingOutboundForBugSessionIdentifier:(id)a3 device:(id)a4 fromInbound:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(DEDSharingConnection *)self _existingSharingSessionForDevice:v9];
  if (v11 || ([(DEDSharingConnection *)self blockingSharingSessionForDevice:v9 fromInbound:v10], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v11;
    v13 = [[DEDSharingOutbound alloc] initWithID:v8 withSFSession:v11 connection:self];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)sharing_startBugSessionWithIdentifier:(id)a3 configuration:(id)a4 caller:(id)a5 target:(id)a6 fromInbound:(id)a7
{
  v24[5] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [(DEDSharingConnection *)self blockingSharingSessionForDevice:v15 fromInbound:a7];
  if (v16)
  {
    v17 = Log_5();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [DEDSharingConnection sharing_startBugSessionWithIdentifier:v15 configuration:? caller:? target:? fromInbound:?];
    }

    v18 = [v13 secureArchive];
    if (!v18)
    {
      v18 = [MEMORY[0x277CBEA90] data];
    }

    v23[0] = @"setup";
    v23[1] = @"sessionID";
    v24[0] = @"start_session";
    v24[1] = v12;
    v24[2] = v18;
    v23[2] = @"config";
    v23[3] = @"callingDevice";
    v19 = [v14 serialize];
    v24[3] = v19;
    v23[4] = @"targetDevice";
    v20 = [v15 serialize];
    v24[4] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:5];

    [v16 sendWithFlags:0 object:v21];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)sharing_didStartBugSessionWithInfo:(id)a3 forCaller:(id)a4
{
  v8 = a3;
  v6 = [(DEDSharingConnection *)self _existingSharingSessionForDevice:a4];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v8];
    [v7 setObject:@"did_start_session" forKeyedSubscript:@"setup"];
    [v6 sendWithFlags:0 object:v7];
  }
}

- (void)updateControllerWithDevice:(id)a3 andStatus:(int64_t)a4
{
  v14 = a3;
  v6 = [(DEDSharingConnection *)self deviceStatusCallback];

  if (v6)
  {
    [v14 setStatus:a4];
    v7 = [(DEDSharingConnection *)self deviceStatusCallback];
    (v7)[2](v7, v14, a4);
  }

  v8 = [(DEDSharingConnection *)self deviceSessions];
  v9 = [v14 address];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = [(DEDSharingConnection *)self deviceSessions];
    v12 = [v14 address];
    v13 = [v11 objectForKeyedSubscript:v12];
    [(DEDSharingConnection *)self stopSession:v13];
  }
}

- (void)_saveDevice:(id)a3
{
  v4 = a3;
  v7 = [(DEDSharingConnection *)self discoveredDevices];
  v5 = [v4 identifier];
  v6 = [v5 UUIDString];
  [v7 setObject:v4 forKey:v6];
}

void __85__DEDSharingConnection__configureService_withLabel_needsSetup_actionType_completion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];

  v3 = Log_5();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_248AD7000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ service interrupted.", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __85__DEDSharingConnection__configureService_withLabel_needsSetup_actionType_completion___block_invoke_103(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = Log_5();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_248AD7000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ service invalidated.", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __85__DEDSharingConnection__configureService_withLabel_needsSetup_actionType_completion___block_invoke_104(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained sharingInbound];
  [v8 handleObject:v6 forSFSession:v7];
}

void __85__DEDSharingConnection__configureService_withLabel_needsSetup_actionType_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v5 = Log_5();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v4 == 1)
  {
    if (v6)
    {
      __85__DEDSharingConnection__configureService_withLabel_needsSetup_actionType_completion___block_invoke_2_cold_2(a1);
    }
  }

  else if (v6)
  {
    __85__DEDSharingConnection__configureService_withLabel_needsSetup_actionType_completion___block_invoke_2_cold_1(a1);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, MEMORY[0x277CBEBF8]);
  }
}

- (id)_existingSharingSessionForDevice:(id)a3
{
  v4 = [a3 address];
  v5 = [(DEDSharingConnection *)self deviceSessions];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = Log_5();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [DEDSharingConnection _existingSharingSessionForDevice:];
    }

    v8 = [(DEDSharingConnection *)self deviceSessions];
    v9 = [v8 objectForKeyedSubscript:v4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)blockingSharingSessionForDevice:(id)a3 fromInbound:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = Log_5();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [DEDSharingConnection blockingSharingSessionForDevice:v6 fromInbound:?];
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__4;
  v25 = __Block_byref_object_dispose__4;
  v26 = 0;
  v9 = [(DEDSharingConnection *)self _existingSharingSessionForDevice:v6];
  v10 = v22[5];
  v22[5] = v9;

  v11 = v22[5];
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v13 = dispatch_semaphore_create(0);
    v14 = [v6 sfDevice];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __68__DEDSharingConnection_blockingSharingSessionForDevice_fromInbound___block_invoke;
    v18[3] = &unk_278F66818;
    v20 = &v21;
    v15 = v13;
    v19 = v15;
    [(DEDSharingConnection *)self createSharingSessionForSFDevice:v14 holdForPIN:0 fromInbound:v7 completion:v18];

    v16 = dispatch_time(0, 2000000000);
    dispatch_semaphore_wait(v15, v16);
    v12 = v22[5];
  }

  _Block_object_dispose(&v21, 8);

  return v12;
}

void __68__DEDSharingConnection_blockingSharingSessionForDevice_fromInbound___block_invoke(uint64_t a1, void *a2, int a3)
{
  v6 = a2;
  if (a3)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)createSharingSessionForSFDevice:(id)a3 holdForPIN:(BOOL)a4 fromInbound:(id)a5 completion:(id)a6
{
  v55[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__4;
  v52 = __Block_byref_object_dispose__4;
  v53 = objc_alloc_init(MEMORY[0x277D54CE8]);
  [v49[5] setServiceIdentifier:*MEMORY[0x277D54D60]];
  [v49[5] setPeerDevice:v10];
  v54 = @"com.apple.DeviceDiagnostics";
  v55[0] = MEMORY[0x277CBEC38];
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:&v54 count:1];
  [v49[5] setPairSetupACL:v13];

  [v49[5] setLabel:@"ded-session"];
  objc_initWeak(&location, v49[5]);
  objc_initWeak(&from, self);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke;
  v44[3] = &unk_278F661A8;
  v14 = v10;
  v45 = v14;
  [v49[5] setErrorHandler:v44];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke_110;
  v40[3] = &unk_278F66840;
  v15 = v14;
  v41 = v15;
  objc_copyWeak(&v42, &from);
  objc_copyWeak(&v43, &location);
  [v49[5] setInterruptionHandler:v40];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke_111;
  v36[3] = &unk_278F66840;
  v16 = v15;
  v37 = v16;
  objc_copyWeak(&v38, &from);
  objc_copyWeak(&v39, &location);
  [v49[5] setInvalidationHandler:v36];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke_112;
  v32[3] = &unk_278F66868;
  v17 = v16;
  v33 = v17;
  objc_copyWeak(&v35, &from);
  v18 = v11;
  v34 = v18;
  [v49[5] setPromptForPINHandler:v32];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke_2;
  v29[3] = &unk_278F66890;
  objc_copyWeak(&v30, &from);
  objc_copyWeak(&v31, &location);
  [v49[5] setReceivedObjectHandler:v29];
  v19 = v49[5];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke_3;
  v23[3] = &unk_278F668B8;
  v26 = &v48;
  v20 = v17;
  v24 = v20;
  objc_copyWeak(&v27, &from);
  v28 = a4;
  v21 = v12;
  v25 = v21;
  [v19 activateWithCompletion:v23];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&v31);
  objc_destroyWeak(&v30);

  objc_destroyWeak(&v35);
  objc_destroyWeak(&v39);
  objc_destroyWeak(&v38);

  objc_destroyWeak(&v43);
  objc_destroyWeak(&v42);

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v48, 8);

  v22 = *MEMORY[0x277D85DE8];
}

void __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = Log_5();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke_cold_1();
  }
}

void __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke_110(uint64_t a1)
{
  v2 = Log_5();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke_110_cold_1(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained deviceSessions];
  v5 = objc_loadWeakRetained((a1 + 48));
  v6 = [v5 peerDevice];
  v7 = [v6 identifier];
  v8 = [v7 UUIDString];
  [v4 removeObjectForKey:v8];
}

void __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke_111(uint64_t a1)
{
  v2 = Log_5();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke_111_cold_1(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained deviceSessions];
  v5 = objc_loadWeakRetained((a1 + 48));
  v6 = [v5 peerDevice];
  v7 = [v6 identifier];
  v8 = [v7 UUIDString];
  [v4 removeObjectForKey:v8];
}

void __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke_112(uint64_t a1)
{
  v4 = [DEDDevice deviceForSFDevice:*(a1 + 32) andStatus:2];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained controller];
  [v3 sharingInbound_promptPINForDevice:v4 fromInbound:*(a1 + 40)];
}

void __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained sharingInbound];
  v6 = objc_loadWeakRetained((a1 + 40));
  [v5 handleObject:v4 forSFSession:v6];
}

void __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = Log_5();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke_3_cold_1();
  }

  if (v3)
  {
    v5 = Log_5();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke_3_cold_2();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = *(*(*(a1 + 48) + 8) + 40);
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v8 = [WeakRetained deviceSessions];
    v9 = [*(a1 + 32) identifier];
    v10 = [v9 UUIDString];
    [v8 setObject:v6 forKeyedSubscript:v10];

    v11 = objc_loadWeakRetained((a1 + 56));
    [v11 _verifyPairingForSession:*(*(*(a1 + 48) + 8) + 40) holdForPIN:*(a1 + 64) completion:*(a1 + 40)];
  }
}

- (void)_verifyPairingForSession:(id)a3 holdForPIN:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__DEDSharingConnection__verifyPairingForSession_holdForPIN_completion___block_invoke;
  v12[3] = &unk_278F668E0;
  v10 = v8;
  v13 = v10;
  v16 = a4;
  objc_copyWeak(&v15, &location);
  v11 = v9;
  v14 = v11;
  [v10 pairVerifyWithFlags:8 completion:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __71__DEDSharingConnection__verifyPairingForSession_holdForPIN_completion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = Log_5();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [*(a1 + 32) peerDevice];
      v7 = [v6 identifier];
      v15 = 138412546;
      v16 = v7;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_248AD7000, v4, OS_LOG_TYPE_DEFAULT, "verifyPairing (%@) error: %@ ", &v15, 0x16u);
    }

    if ((*(a1 + 56) & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 48));
      [WeakRetained stopSession:*(a1 + 32)];
    }

    v9 = *(a1 + 32);
    v10 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (v5)
    {
      v11 = [*(a1 + 32) peerDevice];
      v12 = [v11 identifier];
      v15 = 138412290;
      v16 = v12;
      _os_log_impl(&dword_248AD7000, v4, OS_LOG_TYPE_DEFAULT, "verifyPairing (%@) success!", &v15, 0xCu);
    }

    v13 = *(a1 + 32);
    v10 = *(*(a1 + 40) + 16);
  }

  v10();

  v14 = *MEMORY[0x277D85DE8];
}

- (void)stopSession:(id)a3
{
  v8 = a3;
  v4 = [(DEDSharingConnection *)self deviceSessions];
  v5 = [v8 peerDevice];
  v6 = [v5 identifier];
  v7 = [v6 UUIDString];
  [v4 removeObjectForKey:v7];

  [v8 invalidate];
}

- (void)addIncomingSFSession:(id)a3 forIdentifier:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__DEDSharingConnection_addIncomingSFSession_forIdentifier___block_invoke;
  v15[3] = &unk_278F66908;
  v8 = v7;
  v16 = v8;
  objc_copyWeak(&v17, &location);
  [v6 setInvalidationHandler:v15];
  v9 = Log_5();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v8;
    _os_log_impl(&dword_248AD7000, v9, OS_LOG_TYPE_DEFAULT, "Incoming SFSession added for %@", buf, 0xCu);
  }

  v10 = [(DEDSharingConnection *)self deviceSessions];
  v11 = [v10 objectForKeyedSubscript:v8];
  v12 = v11 == 0;

  if (v12)
  {
    v13 = [(DEDSharingConnection *)self deviceSessions];
    [v13 setObject:v6 forKeyedSubscript:v8];
  }

  objc_destroyWeak(&v17);

  objc_destroyWeak(&location);
  v14 = *MEMORY[0x277D85DE8];
}

void __59__DEDSharingConnection_addIncomingSFSession_forIdentifier___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = Log_5();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_248AD7000, v2, OS_LOG_TYPE_INFO, "Incoming SFSession Invalidated for %@", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained deviceSessions];
  [v5 removeObjectForKey:*(a1 + 32)];

  v6 = *MEMORY[0x277D85DE8];
}

- (DEDSharingInboundDelegate)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

void __42__DEDSharingConnection_startPingDiscovery__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_4(&dword_248AD7000, v0, v1, "Ping discovery deviceFound called for device [%@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __42__DEDSharingConnection_startPingDiscovery__block_invoke_44_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void __42__DEDSharingConnection_startPingDiscovery__block_invoke_49_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(&dword_248AD7000, v0, OS_LOG_TYPE_ERROR, "Ping discovery activated with error [%@]", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_handleIncomingPingingDevice:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_4(&dword_248AD7000, v0, v1, "Incoming ping discovery. New device not valid, ignoring [%@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleIncomingPingingDevice:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 visiblePingUUIDs];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleIncomingPingingDevice:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_4(&dword_248AD7000, v0, v1, "Incoming ping discovery. Already tracking device [%@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __54__DEDSharingConnection_startPongDiscoveryFromInbound___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_4(&dword_248AD7000, v0, v1, "Pong discovery deviceFound called for device [%@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __54__DEDSharingConnection_startPongDiscoveryFromInbound___block_invoke_53_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_4(&dword_248AD7000, v0, v1, "Pong discovery deviceChangedHandler called for device [%@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __54__DEDSharingConnection_startPongDiscoveryFromInbound___block_invoke_54_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_4(&dword_248AD7000, v0, v1, "pongDiscovery.deviceLost: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleIncomingPongingDevice:(void *)a1 fromInbound:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [a1 name];
  v3 = [a1 model];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleIncomingPongingDevice:(void *)a1 fromInbound:.cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 needsSetup];
  [a1 systemPairState];
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleIncomingPongingDevice:(void *)a1 fromInbound:.cold.3(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 pongingDevices];
  v2 = [v1 allKeys];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleIncomingPongingDevice:fromInbound:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_4(&dword_248AD7000, v0, v1, "Incoming pong discovery. New device is not valid, will ignore [%@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleIncomingPongingDevice:fromInbound:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_4(&dword_248AD7000, v0, v1, "Incoming pong discovery. Already tracking device [%@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getSystemInfoForDevice:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)getSystemInfoForDevice:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __47__DEDSharingConnection_getSystemInfoForDevice___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_2();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(v0 + 40) identifier];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __47__DEDSharingConnection_getSystemInfoForDevice___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5_2();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(v0 + 40) identifier];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __47__DEDSharingConnection_getSystemInfoForDevice___block_invoke_71_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 40) identifier];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)checkReadinessForSFDevice:(void *)a1 session:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)sharing_startPairSetupForDevice:(void *)a1 fromInbound:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [a1 address];
  v3 = [a1 name];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __68__DEDSharingConnection_sharing_startPairSetupForDevice_fromInbound___block_invoke_2_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_4(&dword_248AD7000, v0, v1, "--- error, retrying setup (error:%@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)sharing_tryPIN:forDevice:fromInbound:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(&dword_248AD7000, v0, OS_LOG_TYPE_ERROR, "no session for pin attempt for device [%{public}@]", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)sharing_startBugSessionWithIdentifier:(void *)a1 configuration:caller:target:fromInbound:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 name];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __85__DEDSharingConnection__configureService_withLabel_needsSetup_actionType_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_2_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __85__DEDSharingConnection__configureService_withLabel_needsSetup_actionType_completion___block_invoke_2_cold_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 49);
  if (v1 <= 0x66)
  {
    v2 = off_278F66928[v1];
  }

  v9 = *(a1 + 32);
  OUTLINED_FUNCTION_2_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_existingSharingSessionForDevice:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_4(&dword_248AD7000, v0, v1, "Got sharingSession for device address: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)blockingSharingSessionForDevice:(void *)a1 fromInbound:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 address];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_2();
  v0 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_6_1(v1) identifier];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke_110_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_6_1(a1) identifier];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

void __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke_111_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_6_1(a1) identifier];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

void __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_5_2();
  v1 = v0;
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(*(*(v0 + 48) + 8) + 40) identifier];
  v3 = [*(v1 + 32) identifier];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

void __90__DEDSharingConnection_createSharingSessionForSFDevice_holdForPIN_fromInbound_completion___block_invoke_3_cold_2()
{
  OUTLINED_FUNCTION_5_2();
  v0 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_6_1(v1) identifier];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

@end