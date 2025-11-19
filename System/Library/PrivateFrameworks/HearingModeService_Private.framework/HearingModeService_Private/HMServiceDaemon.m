@interface HMServiceDaemon
+ (id)sharedHMServiceDaemon;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (HMServiceDaemon)init;
- (void)_activate;
- (void)_modifyDeviceConfig:(id)a3 identifier:(id)a4 completion:(id)a5;
- (void)_reportDeviceRecordChange:(id)a3;
- (void)_reportDeviceRecordLost:(id)a3;
- (void)_reportValidAudiograms:(id)a3 invalidAudiograms:(id)a4 error:(id)a5;
- (void)_triggerDiagnosticCheckForIdentifier:(id)a3 completion:(id)a4;
- (void)_update;
- (void)_xpcConnectionInvalidated:(id)a3;
- (void)activate;
- (void)invalidate;
- (void)reportDeviceRecordChange:(id)a3;
- (void)reportDeviceRecordLost:(id)a3;
- (void)reportDiagnosticRecordChange:(id)a3;
- (void)reportValidAudiograms:(id)a3 invalidAudiograms:(id)a4 error:(id)a5;
@end

@implementation HMServiceDaemon

- (void)_update
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_xpcConnections;
  v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (([*(*(&v9 + 1) + 8 * v6) audiogramsReported] & 1) == 0)
        {
          v7 = +[HMHealthKitUtilities sharedInstance];
          [v7 startAudiogramQuery];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

+ (id)sharedHMServiceDaemon
{
  if (sharedHMServiceDaemon_sOnce != -1)
  {
    +[HMServiceDaemon sharedHMServiceDaemon];
  }

  v3 = sharedHMServiceDaemon_sSelf;

  return v3;
}

uint64_t __40__HMServiceDaemon_sharedHMServiceDaemon__block_invoke()
{
  v0 = objc_alloc_init(HMServiceDaemon);
  v1 = sharedHMServiceDaemon_sSelf;
  sharedHMServiceDaemon_sSelf = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (HMServiceDaemon)init
{
  v8.receiver = self;
  v8.super_class = HMServiceDaemon;
  v2 = [(HMServiceDaemon *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.HMService.daemon.queue", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = v2;
  }

  return v2;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__HMServiceDaemon_activate__block_invoke;
  block[3] = &unk_2796EFEF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __27__HMServiceDaemon_activate__block_invoke(uint64_t a1)
{
  if (gLogCategory_HMServiceDaemon <= 30 && (gLogCategory_HMServiceDaemon != -1 || _LogCategory_Initialize()))
  {
    __27__HMServiceDaemon_activate__block_invoke_cold_1();
  }

  v2 = *(a1 + 32);

  return [v2 _activate];
}

- (void)_activate
{
  if (!self->_xpcListener)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.HearingModeService"];
    xpcListener = self->_xpcListener;
    self->_xpcListener = v3;

    [(NSXPCListener *)self->_xpcListener setDelegate:self];
    [(NSXPCListener *)self->_xpcListener _setQueue:self->_dispatchQueue];
    [(NSXPCListener *)self->_xpcListener resume];
  }

  v5 = +[HMDeviceManager sharedInstance];
  [v5 setDispatchQueue:self->_dispatchQueue];

  v6 = [(HMServiceDaemon *)self internalAAServicesDaemon];
  v7 = +[HMDeviceManager sharedInstance];
  [v7 setInternalAAServicesDaemon:v6];

  v8 = +[HMDeviceManager sharedInstance];
  [v8 activate];

  v9 = +[HMHealthKitUtilities sharedInstance];
  [v9 setDispatchQueue:self->_dispatchQueue];

  v10 = +[HMHealthKitUtilities sharedInstance];
  [v10 activate];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__HMServiceDaemon_invalidate__block_invoke;
  block[3] = &unk_2796EFEF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __29__HMServiceDaemon_invalidate__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = +[HMDeviceManager sharedInstance];
  [v4 invalidate];

  v5 = +[HMHealthKitUtilities sharedInstance];
  [v5 invalidate];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28643E8B0];
  v7 = objc_alloc(MEMORY[0x277CBEB98]);
  v8 = objc_opt_class();
  v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
  [v6 setClasses:v9 forSelector:sel_clientHMAvailableAudiograms_invalidAudiograms_error_ argumentIndex:0 ofReply:0];
  [v6 setClasses:v9 forSelector:sel_clientHMAvailableAudiograms_invalidAudiograms_error_ argumentIndex:1 ofReply:0];
  v10 = objc_alloc_init(HMServiceXPCConnection);
  [(HMServiceXPCConnection *)v10 setDaemon:self];
  [(HMServiceXPCConnection *)v10 setDispatchQueue:self->_dispatchQueue];
  [(HMServiceXPCConnection *)v10 setXpcCnx:v5];
  xpcConnections = self->_xpcConnections;
  if (!xpcConnections)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v13 = self->_xpcConnections;
    self->_xpcConnections = v12;

    xpcConnections = self->_xpcConnections;
  }

  [(NSMutableSet *)xpcConnections addObject:v10];
  [v5 _setQueue:self->_dispatchQueue];
  v14 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28643C700];
  [v5 setExportedInterface:v14];

  [v5 setExportedObject:v10];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __54__HMServiceDaemon_listener_shouldAcceptNewConnection___block_invoke;
  v16[3] = &unk_2796EFEC8;
  v16[4] = self;
  v16[5] = v10;
  [v5 setInvalidationHandler:v16];
  [v5 setRemoteObjectInterface:v6];
  [v5 resume];
  if (gLogCategory_HMServiceDaemon <= 20 && (gLogCategory_HMServiceDaemon != -1 || _LogCategory_Initialize()))
  {
    [HMServiceDaemon listener:v5 shouldAcceptNewConnection:?];
  }

  return 1;
}

- (void)_xpcConnectionInvalidated:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (gLogCategory_HMServiceDaemon <= 20)
  {
    if (gLogCategory_HMServiceDaemon != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      [HMServiceDaemon _xpcConnectionInvalidated:v4];
      v4 = v6;
    }
  }

  [v4 xpcConnectionInvalidated];
  [(NSMutableSet *)self->_xpcConnections removeObject:v6];
  [(HMServiceDaemon *)self _update];
}

- (void)_modifyDeviceConfig:(id)a3 identifier:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[HMDeviceManager sharedInstance];
  [v10 _modifyDeviceConfiguration:v9 identifier:v8 completion:v7];
}

- (void)reportDeviceRecordChange:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__HMServiceDaemon_reportDeviceRecordChange___block_invoke;
  v7[3] = &unk_2796EFEC8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_reportDeviceRecordChange:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_xpcConnections;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 hearingModeClient];
        if (v11)
        {
          [v10 clientReportHMDeviceRecordChanged:v4];
        }
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)reportDeviceRecordLost:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__HMServiceDaemon_reportDeviceRecordLost___block_invoke;
  v7[3] = &unk_2796EFEC8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_reportDeviceRecordLost:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_xpcConnections;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) clientReportHMDeviceRecordLost:{v4, v11}];
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)reportDiagnosticRecordChange:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_xpcConnections;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 hearingModeClient];
        v12 = [v11 internalFlags];

        if (v12)
        {
          [v10 clientReportDiagnosticRecord:v4];
        }
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)reportValidAudiograms:(id)a3 invalidAudiograms:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__HMServiceDaemon_reportValidAudiograms_invalidAudiograms_error___block_invoke;
  v15[3] = &unk_2796F0168;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(dispatchQueue, v15);
}

- (void)_reportValidAudiograms:(id)a3 invalidAudiograms:(id)a4 error:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = self->_xpcConnections;
  v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        v17 = [v16 hearingModeClient];
        if (v17)
        {
          [v16 clientReportValidAudiograms:v8 invalidAudiograms:v9 error:v10];
        }
      }

      v13 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_triggerDiagnosticCheckForIdentifier:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[HMDeviceManager sharedInstance];
  [v7 _triggerDiagnosticCheckForIdentifier:v6 completion:v5];
}

- (void)_xpcConnectionInvalidated:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 xpcCnx];
  [v1 processIdentifier];
  LogPrintF();
}

@end