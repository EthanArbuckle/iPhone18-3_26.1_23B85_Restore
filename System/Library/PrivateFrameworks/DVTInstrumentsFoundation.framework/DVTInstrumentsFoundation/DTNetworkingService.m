@interface DTNetworkingService
+ (void)registerCapabilities:(id)a3;
- (DTNetworkingService)initWithChannel:(id)a3;
- (void)messageReceived:(id)a3;
- (void)setTargetPID:(id)a3;
- (void)startMonitoring;
- (void)stopMonitoring;
@end

@implementation DTNetworkingService

+ (void)registerCapabilities:(id)a3
{
  v4 = a3;
  [v4 publishCapability:@"com.apple.instruments.server.services.networking" withVersion:2 forClass:a1];
  [v4 publishCapability:@"com.apple.instruments.server.services.networking.immediate" withVersion:1 forClass:a1];
  [v4 publishCapability:@"com.apple.instruments.server.services.networking.deferred" withVersion:1 forClass:a1];
}

- (DTNetworkingService)initWithChannel:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = DTNetworkingService;
  v3 = [(DTXService *)&v20 initWithChannel:a3];
  v4 = v3;
  if (v3)
  {
    v3->_filteredToPid = -1;
    v5 = dispatch_queue_create("com.apple.dt.instruments.networking", 0);
    workQueue = v4->_workQueue;
    v4->_workQueue = v5;

    v4->_netstatMan = 0;
    v4->_isAppleInternal = +[DTInstrumentServer isAppleInternal];
    v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v8 = [v7 BOOLForKey:@"XRIncludeLoopback"];

    if ((v8 & 1) != 0 || (v19 = 0, !sub_247F6E928("lo0", &v19)))
    {
      NSLog(&cfstr_IncludingLoopb.isa);
    }

    else
    {
      v4->_hiddenInterfaces |= 1 << v19;
    }

    v19 = 0;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [&unk_285A369D8 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(&unk_285A369D8);
          }

          if (sub_247F6E928([*(*(&v15 + 1) + 8 * v12) UTF8String], &v19))
          {
            v4->_hiddenInterfaces |= 1 << v19;
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [&unk_285A369D8 countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v10);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)messageReceived:(id)a3
{
  if ([a3 errorStatus] == 2)
  {
    self->_seenInterfaces = 0;
    self->_isDisconnected = 1;

    [(DTNetworkingService *)self stopMonitoring];
  }
}

- (void)startMonitoring
{
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_247F6EBC4;
  v4[3] = &unk_278EF1238;
  objc_copyWeak(&v5, &location);
  dispatch_sync(workQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)stopMonitoring
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247F6EEFC;
  block[3] = &unk_278EF1070;
  block[4] = self;
  dispatch_sync(workQueue, block);
}

- (void)setTargetPID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 intValue];
    v7 = v6;
    if ((v6 - 1000001) < 0xFFF0BDBE)
    {
      NSLog(&cfstr_SuppliedPidToF.isa, v6);
      self->_filteredToPid = -1;
    }
  }

  else
  {
    NSLog(&cfstr_PassedANilPidF.isa);
    v7 = -1;
  }

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247F6F024;
  block[3] = &unk_278EF1260;
  block[4] = self;
  v10 = v7;
  dispatch_async(workQueue, block);
}

@end