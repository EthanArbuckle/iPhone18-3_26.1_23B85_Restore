@interface DSXPCServer
- (DSXPCServer)init;
- (void)_activate;
- (void)_deviceFoundHandler:(id)handler;
- (void)_deviceLostHandler:(id)handler;
- (void)_ensureAdvertiserStarted;
- (void)_ensureAdvertiserStopped;
- (void)_ensureScannerStarted;
- (void)_ensureScannerStopped;
- (void)_handleXPCConnection:(id)connection;
- (void)_invalidate;
- (void)_receivedXPCObject:(id)object;
- (void)activate;
- (void)invalidate;
- (void)removeXPCConnection:(id)connection;
- (void)updateAdvertiser;
- (void)updateScanner;
@end

@implementation DSXPCServer

- (DSXPCServer)init
{
  v7.receiver = self;
  v7.super_class = DSXPCServer;
  v2 = [(DSXPCServer *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.distributedsensingd", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;
  }

  return v2;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__DSXPCServer_activate__block_invoke;
  block[3] = &unk_278F85808;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __23__DSXPCServer_activate__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 8) & 1) == 0)
  {
    *(v1 + 8) = 1;
    return [*(result + 32) _activate];
  }

  return result;
}

- (void)_activate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (onceTokenDSXPCServer != -1)
  {
    [DSXPCServer _activate];
  }

  v3 = logObjDSXPCServer;
  if (os_log_type_enabled(logObjDSXPCServer, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_249027000, v3, OS_LOG_TYPE_DEFAULT, "Activate", buf, 2u);
  }

  if (!self->_xpcListener)
  {
    mach_service = xpc_connection_create_mach_service("com.apple.distributedsensingd", self->_dispatchQueue, 1uLL);
    xpcListener = self->_xpcListener;
    self->_xpcListener = mach_service;

    v6 = self->_xpcListener;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __24__DSXPCServer__activate__block_invoke;
    handler[3] = &unk_278F85830;
    handler[4] = self;
    xpc_connection_set_event_handler(v6, handler);
    xpc_connection_activate(self->_xpcListener);
  }

  if (!self->_myDeviceContext)
  {
    v7 = objc_alloc_init(DSDeviceContext);
    myDeviceContext = self->_myDeviceContext;
    self->_myDeviceContext = v7;

    [(DSDeviceContext *)self->_myDeviceContext setIsMe:1];
  }

  if (!self->_cohortManager)
  {
    v9 = objc_alloc_init(DSCohortManager);
    cohortManager = self->_cohortManager;
    self->_cohortManager = v9;

    [(DSCohortManager *)self->_cohortManager setDispatchQueue:self->_dispatchQueue];
    [(DSCohortManager *)self->_cohortManager setXpcDaemonServer:self];
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__DSXPCServer_invalidate__block_invoke;
  block[3] = &unk_278F85808;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  v19 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (onceTokenDSXPCServer != -1)
  {
    [DSXPCServer _activate];
  }

  v3 = logObjDSXPCServer;
  if (os_log_type_enabled(logObjDSXPCServer, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_249027000, v3, OS_LOG_TYPE_DEFAULT, "Invalidate", buf, 2u);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_xpcConnections;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v13 + 1) + 8 * i) invalidate];
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v6);
  }

  myDeviceContext = self->_myDeviceContext;
  if (myDeviceContext)
  {
    self->_myDeviceContext = 0;
  }

  cohortManager = self->_cohortManager;
  if (cohortManager)
  {
    self->_cohortManager = 0;
  }

  [(DSXPCServer *)self _ensureScannerStopped];
  [(DSXPCServer *)self _ensureAdvertiserStopped];
  [(NSMutableSet *)self->_xpcConnections removeAllObjects];
  xpcConnections = self->_xpcConnections;
  self->_xpcConnections = 0;

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_receivedXPCObject:(id)object
{
  v11 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  if (MEMORY[0x24C1EF810]() == MEMORY[0x277D86450])
  {
    [(DSXPCServer *)self _handleXPCConnection:objectCopy];
  }

  else if (objectCopy == MEMORY[0x277D863F8])
  {
    if (onceTokenDSXPCServer != -1)
    {
      [DSXPCServer _activate];
    }

    v7 = logObjDSXPCServer;
    if (os_log_type_enabled(logObjDSXPCServer, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_249027000, v7, OS_LOG_TYPE_ERROR, "XPC Listener invalidated", &v9, 2u);
    }
  }

  else
  {
    if (onceTokenDSXPCServer != -1)
    {
      [DSXPCServer _activate];
    }

    v5 = logObjDSXPCServer;
    if (os_log_type_enabled(logObjDSXPCServer, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v9 = 136315138;
      v10 = MEMORY[0x24C1EF710](objectCopy);
      _os_log_impl(&dword_249027000, v6, OS_LOG_TYPE_ERROR, "XPC Listener error, received XPC object :%s", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleXPCConnection:(id)connection
{
  dispatchQueue = self->_dispatchQueue;
  connectionCopy = connection;
  dispatch_assert_queue_V2(dispatchQueue);
  v9 = objc_alloc_init(DSXPCConnection);
  [(DSXPCConnection *)v9 setXpcDaemonServer:self];
  [(DSXPCConnection *)v9 setDispatchQueue:self->_dispatchQueue];
  [(DSXPCConnection *)v9 setPid:xpc_connection_get_pid(connectionCopy)];
  [(DSXPCConnection *)v9 setXpcConnection:connectionCopy];

  [(DSXPCConnection *)v9 activate];
  xpcConnections = self->_xpcConnections;
  if (!xpcConnections)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v8 = self->_xpcConnections;
    self->_xpcConnections = v7;

    xpcConnections = self->_xpcConnections;
  }

  [(NSMutableSet *)xpcConnections addObject:v9];
}

- (void)removeXPCConnection:(id)connection
{
  v21 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(NSMutableSet *)self->_xpcConnections removeObject:connectionCopy];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_xpcConnections;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v6)
  {

    [(DSDeviceContext *)self->_myDeviceContext setCoordinationStatus:0, v16];
    [(DSDeviceContext *)self->_myDeviceContext setTiebreaker:0];
LABEL_16:
    [(DSDeviceContext *)self->_myDeviceContext setVehicleState:0];
    [(DSDeviceContext *)self->_myDeviceContext setVehicleConfidence:0];
    goto LABEL_17;
  }

  v7 = v6;
  v8 = *v17;
  v9 = 1;
  v10 = 1;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v17 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v16 + 1) + 8 * i);
      kappaSession = [v12 kappaSession];

      if (kappaSession)
      {
        v9 = 0;
      }

      else
      {
        motionSession = [v12 motionSession];

        v10 &= motionSession == 0;
      }
    }

    v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v7);

  if (v9)
  {
    [(DSDeviceContext *)self->_myDeviceContext setCoordinationStatus:0];
    [(DSDeviceContext *)self->_myDeviceContext setTiebreaker:0];
  }

  if (v10)
  {
    goto LABEL_16;
  }

LABEL_17:
  [(DSXPCServer *)self updateScanner];
  [(DSXPCServer *)self updateAdvertiser];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)updateAdvertiser
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  *&self->_shouldAdvertiseDSInfo = 0;
  v3 = self->_myDeviceContext;
  if ([(DSDeviceContext *)v3 coordinationStatus])
  {
    self->_shouldAdvertiseDSAction = 1;
  }

  vehicleState = [(DSDeviceContext *)v3 vehicleState];

  if (vehicleState == 1)
  {
    self->_shouldAdvertiseDSInfo = 1;
  }

  if (self->_shouldAdvertiseDSAction || self->_shouldAdvertiseDSInfo)
  {

    [(DSXPCServer *)self _ensureAdvertiserStarted];
  }

  else
  {

    [(DSXPCServer *)self _ensureAdvertiserStopped];
  }
}

- (void)_ensureAdvertiserStarted
{
  if (onceTokenDSXPCServer != -1)
  {
    [DSXPCServer _activate];
  }

  v3 = logObjDSXPCServer;
  if (os_log_type_enabled(logObjDSXPCServer, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_249027000, v3, OS_LOG_TYPE_DEFAULT, "Ensure Advertiser Started", v7, 2u);
  }

  v4 = self->_advertiseManager;
  if (!v4)
  {
    v4 = objc_alloc_init(DSAdvertiseManager);
    [(DSAdvertiseManager *)v4 setDispatchQueue:self->_dispatchQueue];
    [(DSAdvertiseManager *)v4 setXpcDaemonServer:self];
    objc_storeStrong(&self->_advertiseManager, v4);
  }

  v5 = 2;
  if (!self->_shouldAdvertiseDSInfo)
  {
    v5 = 0;
  }

  if (self->_shouldAdvertiseDSAction)
  {
    v6 = v5 | 4;
  }

  else
  {
    v6 = v5;
  }

  [(DSAdvertiseManager *)v4 setDsAdvertiseFlags:v6];
  [(DSAdvertiseManager *)v4 startAdvertising];
}

- (void)_ensureAdvertiserStopped
{
  if (onceTokenDSXPCServer != -1)
  {
    [DSXPCServer _activate];
  }

  v3 = logObjDSXPCServer;
  if (os_log_type_enabled(logObjDSXPCServer, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_249027000, v3, OS_LOG_TYPE_DEFAULT, "Ensure Advertiser Stopped", v6, 2u);
  }

  advertiseManager = self->_advertiseManager;
  if (advertiseManager)
  {
    [(DSAdvertiseManager *)advertiseManager stopAdvertising];
    v5 = self->_advertiseManager;
    self->_advertiseManager = 0;
  }
}

- (void)updateScanner
{
  v18 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  *&self->_shouldScanDSInfo = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_xpcConnections;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        kappaSession = [v8 kappaSession];

        p_shouldScanDSAction = &self->_shouldScanDSAction;
        if (!kappaSession)
        {
          motionSession = [v8 motionSession];

          p_shouldScanDSAction = &self->_shouldScanDSInfo;
          if (!motionSession)
          {
            continue;
          }
        }

        *p_shouldScanDSAction = 1;
      }

      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  if (self->_shouldScanDSAction || self->_shouldScanDSInfo)
  {
    [(DSXPCServer *)self _ensureScannerStarted];
  }

  else
  {
    [(DSXPCServer *)self _ensureScannerStopped];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_ensureScannerStarted
{
  if (onceTokenDSXPCServer != -1)
  {
    [DSXPCServer _activate];
  }

  v3 = logObjDSXPCServer;
  if (os_log_type_enabled(logObjDSXPCServer, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_249027000, v3, OS_LOG_TYPE_DEFAULT, "Ensure Scanner Started", buf, 2u);
  }

  v4 = self->_scanManager;
  if (!v4)
  {
    v4 = objc_alloc_init(DSScanManager);
    [(DSScanManager *)v4 setDispatchQueue:self->_dispatchQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __36__DSXPCServer__ensureScannerStarted__block_invoke;
    v8[3] = &unk_278F85858;
    v8[4] = self;
    [(DSScanManager *)v4 setDeviceFoundHandler:v8];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__DSXPCServer__ensureScannerStarted__block_invoke_2;
    v7[3] = &unk_278F85858;
    v7[4] = self;
    [(DSScanManager *)v4 setDeviceLostHandler:v7];
    objc_storeStrong(&self->_scanManager, v4);
  }

  v5 = 2;
  if (!self->_shouldScanDSInfo)
  {
    v5 = 0;
  }

  if (self->_shouldScanDSAction)
  {
    v6 = v5 | 4;
  }

  else
  {
    v6 = v5;
  }

  [(DSScanManager *)v4 setDsScanFlags:v6];
  [(DSScanManager *)v4 startScanning];
}

- (void)_ensureScannerStopped
{
  if (onceTokenDSXPCServer != -1)
  {
    [DSXPCServer _activate];
  }

  v3 = logObjDSXPCServer;
  if (os_log_type_enabled(logObjDSXPCServer, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_249027000, v3, OS_LOG_TYPE_DEFAULT, "Ensure Scanner Stopped", v6, 2u);
  }

  scanManager = self->_scanManager;
  if (scanManager)
  {
    [(DSScanManager *)scanManager stopScanning];
    v5 = self->_scanManager;
    self->_scanManager = 0;
  }
}

- (void)_deviceFoundHandler:(id)handler
{
  cohortManager = self->_cohortManager;
  if (cohortManager)
  {
    [(DSCohortManager *)cohortManager deviceFound:handler];
  }
}

- (void)_deviceLostHandler:(id)handler
{
  cohortManager = self->_cohortManager;
  if (cohortManager)
  {
    [(DSCohortManager *)cohortManager deviceLost:handler];
  }
}

@end