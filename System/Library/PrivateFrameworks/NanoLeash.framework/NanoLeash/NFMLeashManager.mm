@interface NFMLeashManager
- (NFMLLeashBreakDelegate)leashDelegate;
- (NFMLeashManager)init;
- (void)beginMonitoringLeash;
- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4;
- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6;
- (void)centralManager:(id)a3 didFailToConnectPeripheral:(id)a4 error:(id)a5;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)connect;
- (void)dealloc;
- (void)leashTest;
- (void)peripheralDidUpdateRSSI:(id)a3 error:(id)a4;
- (void)scalablePipeManager:(id)a3 didRegisterEndpoint:(id)a4 error:(id)a5;
- (void)scalablePipeManager:(id)a3 didUnregisterEndpoint:(id)a4;
- (void)scalablePipeManager:(id)a3 pipeDidConnect:(id)a4;
- (void)scalablePipeManager:(id)a3 pipeDidDisconnect:(id)a4 error:(id)a5;
- (void)scalablePipeManagerDidUpdateState:(id)a3;
- (void)setDelegate:(id)a3 queue:(id)a4;
- (void)setLeashIdentifier:(id)a3;
- (void)setLeashMode:(int64_t)a3;
- (void)setProximityChangeHandler:(id)a3;
- (void)setServiceUUID:(id)a3;
- (void)setTestMode:(BOOL)a3;
- (void)stopMonitoringLeash;
- (void)update:(id)a3;
@end

@implementation NFMLeashManager

- (NFMLeashManager)init
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = nfm_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v15 = 67;
    v16 = 2080;
    v17 = "[NFMLeashManager init]";
    _os_log_impl(&dword_25B17F000, v3, OS_LOG_TYPE_DEFAULT, "%d %s", buf, 0x12u);
  }

  v13.receiver = self;
  v13.super_class = NFMLeashManager;
  v4 = [(NFMLeashManager *)&v13 init];
  if (v4)
  {
    v5 = dispatch_queue_create("NFMLeashManager-CentralManagerQueue", 0);
    centralQueue = v4->_centralQueue;
    v4->_centralQueue = v5;

    objc_storeStrong(&v4->_externalQueue, MEMORY[0x277D85CD0]);
    v4->_connected = 0;
    v4->_leashMode = -1;
    v7 = [@"E20A39F4-73F5-4BC4-A12F-17D1AD07A961" copy];
    serviceUUID = v4->_serviceUUID;
    v4->_serviceUUID = v7;

    v9 = [@"FMIP-Leash" copy];
    leashIdentifier = v4->_leashIdentifier;
    v4->_leashIdentifier = v9;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)setDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  centralQueue = self->_centralQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__NFMLeashManager_setDelegate_queue___block_invoke;
  block[3] = &unk_279933730;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(centralQueue, block);
}

id __37__NFMLeashManager_setDelegate_queue___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 120), *(a1 + 40));
  v2 = *(a1 + 48);
  v3 = (*(a1 + 32) + 104);

  return objc_storeWeak(v3, v2);
}

- (void)leashTest
{
  if (self->_proximityChangeHandler)
  {
    v3 = *&count + 0.08;
    if (*&count + 0.08 > 360.0)
    {
      v3 = 0.0;
    }

    count = *&v3;
    v4 = sin(v3);
    externalQueue = self->_externalQueue;
    v6[1] = 3221225472;
    v6[0] = MEMORY[0x277D85DD0];
    v6[2] = __28__NFMLeashManager_leashTest__block_invoke;
    v6[3] = &unk_279933758;
    v6[4] = self;
    *&v6[5] = v4 * 30.0 + -60.0;
    dispatch_async(externalQueue, v6);
  }
}

uint64_t __28__NFMLeashManager_leashTest__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(a1 + 40);
  v3.n128_f64[0] = v2 + (rand() % 50 - 25);
  v4 = *(v1 + 16);

  return v4(v1, v3);
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = nfm_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v7 = 110;
    v8 = 2080;
    v9 = "[NFMLeashManager dealloc]";
    _os_log_impl(&dword_25B17F000, v3, OS_LOG_TYPE_DEFAULT, "%d %s", buf, 0x12u);
  }

  v5.receiver = self;
  v5.super_class = NFMLeashManager;
  [(NFMLeashManager *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)setLeashMode:(int64_t)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = nfm_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v10 = 138;
    v11 = 2080;
    v12 = "[NFMLeashManager setLeashMode:]";
    v13 = 2048;
    v14 = a3;
    _os_log_impl(&dword_25B17F000, v5, OS_LOG_TYPE_DEFAULT, "%d %s - leashMode: %ld", buf, 0x1Cu);
  }

  centralQueue = self->_centralQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __32__NFMLeashManager_setLeashMode___block_invoke;
  v8[3] = &unk_279933758;
  v8[4] = self;
  v8[5] = a3;
  dispatch_async(centralQueue, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setLeashIdentifier:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = nfm_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v12 = 147;
    v13 = 2080;
    v14 = "[NFMLeashManager setLeashIdentifier:]";
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_25B17F000, v5, OS_LOG_TYPE_DEFAULT, "%d %s - leashIdentifier: %@", buf, 0x1Cu);
  }

  centralQueue = self->_centralQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__NFMLeashManager_setLeashIdentifier___block_invoke;
  v9[3] = &unk_279933780;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_async(centralQueue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setServiceUUID:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = nfm_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v13 = 156;
    v14 = 2080;
    v15 = "[NFMLeashManager setServiceUUID:]";
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_25B17F000, v5, OS_LOG_TYPE_DEFAULT, "%d %s - serviceUUID: %@", buf, 0x1Cu);
  }

  centralQueue = self->_centralQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __34__NFMLeashManager_setServiceUUID___block_invoke;
  v9[3] = &unk_279933780;
  v10 = v4;
  v11 = self;
  v7 = v4;
  dispatch_async(centralQueue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __34__NFMLeashManager_setServiceUUID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v4 = *(a1 + 40);
    v3 = a1 + 40;
    if (*(v4 + 40) == v2)
    {
      return;
    }

    v5 = [v2 copy];
    v6 = 1;
  }

  else
  {
    v5 = [@"E20A39F4-73F5-4BC4-A12F-17D1AD07A961" copy];
    v6 = 0;
    v3 = a1 + 40;
  }

  v7 = *(*v3 + 40);
  *(*v3 + 40) = v5;

  *(*v3 + 26) = v6;
}

- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = nfm_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v22[0] = 67110402;
    v22[1] = 171;
    v23 = 2080;
    v24 = "[NFMLeashManager centralManager:didDiscoverPeripheral:advertisementData:RSSI:]";
    v25 = 2112;
    v26 = v10;
    v27 = 2112;
    v28 = v11;
    v29 = 2112;
    v30 = v12;
    v31 = 2112;
    v32 = v13;
    _os_log_impl(&dword_25B17F000, v14, OS_LOG_TYPE_DEFAULT, "%d %s - central: (%@); peripheral: (%@); data: (%@), rssi: (%@)", v22, 0x3Au);
  }

  v15 = [v12 objectForKey:*MEMORY[0x277CBDD30]];
  v16 = [v15 firstObject];

  v17 = [v16 UUIDString];
  v18 = [v17 isEqualToString:self->_serviceUUID];

  if (v18)
  {
    v19 = [v11 copy];
    discoveredPeripheral = self->_discoveredPeripheral;
    self->_discoveredPeripheral = v19;

    [(CBCentralManager *)self->_centralManager connectPeripheral:self->_discoveredPeripheral options:0];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)centralManager:(id)a3 didFailToConnectPeripheral:(id)a4 error:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a5;
  v8 = nfm_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109890;
    v10[1] = 184;
    v11 = 2080;
    v12 = "[NFMLeashManager centralManager:didFailToConnectPeripheral:error:]";
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_25B17F000, v8, OS_LOG_TYPE_DEFAULT, "%d %s -- %@ / %@", v10, 0x26u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)beginMonitoringLeash
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = nfm_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v8 = 189;
    v9 = 2080;
    v10 = "[NFMLeashManager beginMonitoringLeash]";
    _os_log_impl(&dword_25B17F000, v3, OS_LOG_TYPE_DEFAULT, "%d %s", buf, 0x12u);
  }

  centralQueue = self->_centralQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__NFMLeashManager_beginMonitoringLeash__block_invoke;
  block[3] = &unk_2799337A8;
  block[4] = self;
  dispatch_async(centralQueue, block);
  v5 = *MEMORY[0x277D85DE8];
}

void __39__NFMLeashManager_beginMonitoringLeash__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (!v1[1])
  {
    __39__NFMLeashManager_beginMonitoringLeash__block_invoke_cold_1();
  }

  if (!v1[7])
  {
    v3 = [objc_alloc(MEMORY[0x277CBE088]) initWithDelegate:*(a1 + 32) queue:*(*(a1 + 32) + 16)];
    v4 = *(a1 + 32);
    v5 = *(v4 + 56);
    *(v4 + 56) = v3;

    v1 = *(a1 + 32);
  }

  if (!v1[9])
  {
    v6 = [objc_alloc(MEMORY[0x277CBDFF8]) initWithDelegate:*(a1 + 32) queue:*(*(a1 + 32) + 16)];
    v7 = *(a1 + 32);
    v8 = *(v7 + 72);
    *(v7 + 72) = v6;
  }

  v9 = nfm_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = v10[6];
    v12 = v10[7];
    v13 = v10[9];
    v14 = v10[4];
    v16[1] = 202;
    v17 = 2080;
    v16[0] = 67110402;
    v18 = "[NFMLeashManager beginMonitoringLeash]_block_invoke";
    v19 = 2112;
    v20 = v11;
    v21 = 2112;
    v22 = v12;
    v23 = 2112;
    v24 = v13;
    v25 = 2048;
    v26 = v14;
    _os_log_impl(&dword_25B17F000, v9, OS_LOG_TYPE_DEFAULT, "%d %s - _leashIdentifier (%@); _pipeManager (%@); _centralManager (%@); _leashMode (%ld)", v16, 0x3Au);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)stopMonitoringLeash
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = nfm_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v8 = 208;
    v9 = 2080;
    v10 = "[NFMLeashManager stopMonitoringLeash]";
    _os_log_impl(&dword_25B17F000, v3, OS_LOG_TYPE_DEFAULT, "%d %s", buf, 0x12u);
  }

  centralQueue = self->_centralQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__NFMLeashManager_stopMonitoringLeash__block_invoke;
  block[3] = &unk_2799337A8;
  block[4] = self;
  dispatch_async(centralQueue, block);
  v5 = *MEMORY[0x277D85DE8];
}

void __38__NFMLeashManager_stopMonitoringLeash__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  if (v3)
  {
    v4 = [v3 state];
    v2 = *(a1 + 32);
    if (v4 == 2)
    {
      [*(v2 + 72) cancelPeripheralConnection:*(v2 + 80)];
      v2 = *(a1 + 32);
    }
  }

  [*(v2 + 56) unregisterEndpoint:*(v2 + 48)];
  v5 = *(a1 + 32);
  v6 = *(v5 + 56);
  *(v5 + 56) = 0;

  *(*(a1 + 32) + 96) = 0;
  [*(*(a1 + 32) + 72) setDelegate:0];
  v7 = *(a1 + 32);
  v8 = *(v7 + 72);
  *(v7 + 72) = 0;

  [*(*(a1 + 32) + 80) setDelegate:0];
  v9 = *(a1 + 32);
  v10 = *(v9 + 80);
  *(v9 + 80) = 0;

  v11 = *(a1 + 32);
  v12 = *(v11 + 112);
  if (v12)
  {
    dispatch_source_cancel(v12);
    v13 = *(a1 + 32);
    v14 = *(v13 + 112);
    *(v13 + 112) = 0;

    v11 = *(a1 + 32);
  }

  *(v11 + 25) = 0;
}

- (void)setProximityChangeHandler:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = nfm_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x25F8637B0](v4);
    *buf = 67109634;
    v13 = 236;
    v14 = 2080;
    v15 = "[NFMLeashManager setProximityChangeHandler:]";
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_25B17F000, v5, OS_LOG_TYPE_DEFAULT, "%d %s - handler: (%@)", buf, 0x1Cu);
  }

  centralQueue = self->_centralQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45__NFMLeashManager_setProximityChangeHandler___block_invoke;
  v10[3] = &unk_2799337D0;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  dispatch_async(centralQueue, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void *__45__NFMLeashManager_setProximityChangeHandler___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v3 + 8) != result)
  {
    v4 = [result copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 8);
    *(v5 + 8) = v4;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (void)update:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = nfm_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    peripheral = self->_peripheral;
    v7[0] = 67109634;
    v7[1] = 249;
    v8 = 2080;
    v9 = "[NFMLeashManager update:]";
    v10 = 2112;
    v11 = peripheral;
    _os_log_impl(&dword_25B17F000, v4, OS_LOG_TYPE_DEFAULT, "%d %s - _peripheral: (%@)", v7, 0x1Cu);
  }

  [(CBPeripheral *)self->_peripheral readRSSI];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)peripheralDidUpdateRSSI:(id)a3 error:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = nfm_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    v18 = 256;
    v19 = 2080;
    v20 = "[NFMLeashManager peripheralDidUpdateRSSI:error:]";
    v21 = 2112;
    *v22 = v6;
    *&v22[8] = 2112;
    *&v22[10] = v7;
    _os_log_impl(&dword_25B17F000, v8, OS_LOG_TYPE_DEFAULT, "%d %s - peripheral (%@); error (%@)", buf, 0x26u);
  }

  if (self->_proximityChangeHandler)
  {
    if (self->_connected)
    {
      v9 = [(CBPeripheral *)self->_peripheral RSSI];
      [v9 floatValue];
      v11 = v10;
    }

    else
    {
      v11 = 2.22507386e-308;
    }

    v12 = nfm_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      connected = self->_connected;
      *buf = 67109890;
      v18 = 259;
      v19 = 2080;
      v20 = "[NFMLeashManager peripheralDidUpdateRSSI:error:]";
      v21 = 1024;
      *v22 = connected;
      *&v22[4] = 2048;
      *&v22[6] = v11;
      _os_log_impl(&dword_25B17F000, v12, OS_LOG_TYPE_DEFAULT, "%d %s - _connected (%d); rssi (%f)", buf, 0x22u);
    }

    externalQueue = self->_externalQueue;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __49__NFMLeashManager_peripheralDidUpdateRSSI_error___block_invoke;
    v16[3] = &unk_279933758;
    v16[4] = self;
    *&v16[5] = v11;
    dispatch_async(externalQueue, v16);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = nfm_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    v18 = 268;
    v19 = 2080;
    v20 = "[NFMLeashManager centralManager:didConnectPeripheral:]";
    v21 = 2112;
    v22 = *&v6;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_25B17F000, v8, OS_LOG_TYPE_DEFAULT, "%d %s - central (%@); peripheral (%@)", buf, 0x26u);
  }

  [(CBPeripheral *)self->_peripheral setDelegate:0];
  objc_storeStrong(&self->_peripheral, a4);
  [(CBPeripheral *)self->_peripheral setDelegate:self];
  self->_connected = 1;
  [(CBPeripheral *)self->_peripheral readRSSI];
  v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_centralQueue);
  leashDispatchSourceTimer = self->_leashDispatchSourceTimer;
  self->_leashDispatchSourceTimer = v9;

  v11 = self->_leashMode - 1;
  v12 = 8.0;
  if (v11 <= 2)
  {
    v12 = dbl_25B18B328[v11];
  }

  v13 = nfm_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v18 = 132;
    v19 = 2080;
    v20 = "HeatBeatTimeForMode";
    v21 = 2048;
    v22 = v12;
    _os_log_impl(&dword_25B17F000, v13, OS_LOG_TYPE_DEFAULT, "%d %s - heartBeatTime: %f", buf, 0x1Cu);
  }

  dispatch_source_set_timer(self->_leashDispatchSourceTimer, 0, (v12 * 1000000000.0), (v12 * 1000000000.0) / 0xAuLL);
  v14 = self->_leashDispatchSourceTimer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __55__NFMLeashManager_centralManager_didConnectPeripheral___block_invoke;
  handler[3] = &unk_2799337A8;
  handler[4] = self;
  dispatch_source_set_event_handler(v14, handler);
  dispatch_resume(self->_leashDispatchSourceTimer);

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __55__NFMLeashManager_centralManager_didConnectPeripheral___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = nfm_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 80);
    v6[0] = 67109634;
    v6[1] = 284;
    v7 = 2080;
    v8 = "[NFMLeashManager centralManager:didConnectPeripheral:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_25B17F000, v2, OS_LOG_TYPE_DEFAULT, "%d %s - _peripheral: (%@)", v6, 0x1Cu);
  }

  result = [*(*(a1 + 32) + 80) readRSSI];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)connect
{
  if (self->_peripheral)
  {
    centralManager = self->_centralManager;

    [CBCentralManager connectPeripheral:"connectPeripheral:options:" options:?];
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v5 = nfm_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25B17F000, v5, OS_LOG_TYPE_DEFAULT, "Warning: Tried to connect with nil peripheral", v6, 2u);
    }
  }
}

- (void)centralManagerDidUpdateState:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = nfm_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    v14 = 303;
    v15 = 2080;
    v16 = "[NFMLeashManager centralManagerDidUpdateState:]";
    v17 = 2112;
    v18 = v4;
    v19 = 2048;
    v20 = [v4 state];
    _os_log_impl(&dword_25B17F000, v5, OS_LOG_TYPE_DEFAULT, "%d %s - central (%@); state (%ld)", buf, 0x26u);
  }

  if ([v4 state] == 5)
  {
    centralPhase = self->_centralPhase;
    if (centralPhase == 1)
    {
      v7 = nfm_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B17F000, v7, OS_LOG_TYPE_DEFAULT, "Start Scanning", buf, 2u);
      }

      centralManager = self->_centralManager;
      v9 = [MEMORY[0x277CBE0A0] UUIDWithString:self->_serviceUUID];
      v12 = v9;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
      [(CBCentralManager *)centralManager scanForPeripheralsWithServices:v10 options:0];
    }

    else if (centralPhase == 2)
    {
      [(NFMLeashManager *)self connect];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setTestMode:(BOOL)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = nfm_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v11 = 324;
    v12 = 2080;
    v13 = "[NFMLeashManager setTestMode:]";
    _os_log_impl(&dword_25B17F000, v5, OS_LOG_TYPE_DEFAULT, "%d %s", buf, 0x12u);
  }

  centralQueue = self->_centralQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __31__NFMLeashManager_setTestMode___block_invoke;
  v8[3] = &unk_2799337F8;
  v8[4] = self;
  v9 = a3;
  dispatch_async(centralQueue, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __31__NFMLeashManager_setTestMode___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 24) = *(a1 + 40);
  v3 = *(a1 + 32);
  if (*(v3 + 24) == 1)
  {
    handler[7] = v1;
    handler[8] = v2;
    v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v3 + 16));
    dispatch_source_set_timer(v5, 0, 0x5F5E100uLL, 0x989680uLL);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __31__NFMLeashManager_setTestMode___block_invoke_2;
    handler[3] = &unk_2799337A8;
    handler[4] = *(a1 + 32);
    dispatch_source_set_event_handler(v5, handler);
    dispatch_resume(v5);
  }
}

- (void)scalablePipeManagerDidUpdateState:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = nfm_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109890;
    v7[1] = 349;
    v8 = 2080;
    v9 = "[NFMLeashManager scalablePipeManagerDidUpdateState:]";
    v10 = 2112;
    v11 = v4;
    v12 = 2048;
    v13 = [v4 state];
    _os_log_impl(&dword_25B17F000, v5, OS_LOG_TYPE_DEFAULT, "%d %s - pipeManager: (%@); state: %ld", v7, 0x26u);
  }

  if ([v4 state] == 5)
  {
    [(CBScalablePipeManager *)self->_pipeManager registerEndpoint:self->_leashIdentifier type:1 priority:2];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)scalablePipeManager:(id)a3 didRegisterEndpoint:(id)a4 error:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = nfm_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67110146;
    v12[1] = 357;
    v13 = 2080;
    v14 = "[NFMLeashManager scalablePipeManager:didRegisterEndpoint:error:]";
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&dword_25B17F000, v10, OS_LOG_TYPE_DEFAULT, "%d %s - pipeManager: (%@); identifier (%@); error: (%@)", v12, 0x30u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)scalablePipeManager:(id)a3 didUnregisterEndpoint:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = nfm_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109890;
    v9[1] = 362;
    v10 = 2080;
    v11 = "[NFMLeashManager scalablePipeManager:didUnregisterEndpoint:]";
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_25B17F000, v7, OS_LOG_TYPE_DEFAULT, "%d %s - pipeManager: (%@); identifier (%@)", v9, 0x26u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)scalablePipeManager:(id)a3 pipeDidConnect:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = nfm_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    v21 = 367;
    v22 = 2080;
    v23 = "[NFMLeashManager scalablePipeManager:pipeDidConnect:]";
    v24 = 2112;
    v25 = v6;
    v26 = 2112;
    v27 = v7;
    _os_log_impl(&dword_25B17F000, v8, OS_LOG_TYPE_DEFAULT, "%d %s - pipeManager: (%@); pipe (%@)", buf, 0x26u);
  }

  objc_storeStrong(&self->_pipe, a4);
  v9 = [(CBScalablePipe *)self->_pipe central];
  v10 = [v9 identifier];
  centralManager = self->_centralManager;
  v19 = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
  v13 = [(CBCentralManager *)centralManager retrievePeripheralsWithIdentifiers:v12];

  if ([v13 count])
  {
    v14 = [v13 firstObject];
    peripheral = self->_peripheral;
    self->_peripheral = v14;

    [(CBCentralManager *)self->_centralManager connectPeripheral:self->_peripheral options:0];
  }

  self->_connected = 1;
  externalQueue = self->_externalQueue;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __54__NFMLeashManager_scalablePipeManager_pipeDidConnect___block_invoke;
  v18[3] = &unk_2799337A8;
  v18[4] = self;
  dispatch_async(externalQueue, v18);

  v17 = *MEMORY[0x277D85DE8];
}

void __54__NFMLeashManager_scalablePipeManager_pipeDidConnect___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = nfm_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109378;
    v5[1] = 383;
    v6 = 2080;
    v7 = "[NFMLeashManager scalablePipeManager:pipeDidConnect:]_block_invoke";
    _os_log_impl(&dword_25B17F000, v2, OS_LOG_TYPE_DEFAULT, "%d %s - Leashed", v5, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 104));
  [WeakRetained leashed];

  v4 = *MEMORY[0x277D85DE8];
}

- (void)scalablePipeManager:(id)a3 pipeDidDisconnect:(id)a4 error:(id)a5
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = nfm_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v12 = 390;
    v13 = 2080;
    v14 = "[NFMLeashManager scalablePipeManager:pipeDidDisconnect:error:]";
    _os_log_impl(&dword_25B17F000, v6, OS_LOG_TYPE_DEFAULT, "%d %s", buf, 0x12u);
  }

  pipe = self->_pipe;
  self->_pipe = 0;

  self->_connected = 0;
  externalQueue = self->_externalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__NFMLeashManager_scalablePipeManager_pipeDidDisconnect_error___block_invoke;
  block[3] = &unk_2799337A8;
  block[4] = self;
  dispatch_async(externalQueue, block);
  v9 = *MEMORY[0x277D85DE8];
}

void __63__NFMLeashManager_scalablePipeManager_pipeDidDisconnect_error___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = nfm_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109378;
    v5[1] = 396;
    v6 = 2080;
    v7 = "[NFMLeashManager scalablePipeManager:pipeDidDisconnect:error:]_block_invoke";
    _os_log_impl(&dword_25B17F000, v2, OS_LOG_TYPE_DEFAULT, "%d %s - Leash broke", v5, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 104));
  [WeakRetained leashBroke];

  v4 = *MEMORY[0x277D85DE8];
}

- (NFMLLeashBreakDelegate)leashDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_leashDelegate);

  return WeakRetained;
}

@end