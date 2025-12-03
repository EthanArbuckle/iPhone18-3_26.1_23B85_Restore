@interface GTPMController
+ (id)stateFromWeightedAverage:(double)average;
- (BOOL)serviceLaunched;
- (GTPMController)initWithGPUFamily:(id)family;
- (double)getStateOccupancy;
- (void)_initGTPM;
- (void)clearStateOccupancy;
- (void)setPerfState:(id)state;
- (void)tearDown;
@end

@implementation GTPMController

- (double)getStateOccupancy
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0xBFF0000000000000;
  if ([(GTPMController *)self serviceLaunched])
  {
    objc_initWeak(&location, self);
    sleep(1u);
    connectionToService = self->_connectionToService;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __35__GTPMController_getStateOccupancy__block_invoke;
    v11[3] = &unk_2796586B0;
    v11[4] = self;
    v4 = [(NSXPCConnection *)connectionToService remoteObjectProxyWithErrorHandler:v11];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __35__GTPMController_getStateOccupancy__block_invoke_2;
    v9[3] = &unk_279658790;
    objc_copyWeak(&v10, &location);
    v9[4] = &v13;
    [v4 getOccupancyWithReply:v9];

    semaphore = self->_semaphore;
    v6 = dispatch_time(0, 10000000000);
    dispatch_semaphore_wait(semaphore, v6);
    v7 = v14[3];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    v7 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  return v7;
}

intptr_t __35__GTPMController_getStateOccupancy__block_invoke(uint64_t a1, uint64_t a2)
{
  NSLog(&cfstr_CanTInvokeRemo.isa, a2);
  v3 = *(*(a1 + 32) + 32);

  return dispatch_semaphore_signal(v3);
}

void __35__GTPMController_getStateOccupancy__block_invoke_2(uint64_t a1, int a2, double a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (a2)
    {
      *(*(*(a1 + 32) + 8) + 24) = a3;
    }

    v7 = WeakRetained;
    dispatch_semaphore_signal(WeakRetained[4]);
    WeakRetained = v7;
  }
}

- (void)clearStateOccupancy
{
  if ([(GTPMController *)self serviceLaunched])
  {
    objc_initWeak(&location, self);
    connectionToService = self->_connectionToService;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __37__GTPMController_clearStateOccupancy__block_invoke;
    v9[3] = &unk_2796586B0;
    v9[4] = self;
    v4 = [(NSXPCConnection *)connectionToService remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __37__GTPMController_clearStateOccupancy__block_invoke_2;
    v7[3] = &unk_279658768;
    objc_copyWeak(&v8, &location);
    [v4 clearOccupancyWithReply:v7];

    semaphore = self->_semaphore;
    v6 = dispatch_time(0, 10000000000);
    dispatch_semaphore_wait(semaphore, v6);
    NSLog(&cfstr_OccupancyClear.isa);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

intptr_t __37__GTPMController_clearStateOccupancy__block_invoke(uint64_t a1, uint64_t a2)
{
  NSLog(&cfstr_CanTInvokeRemo.isa, a2);
  v3 = *(*(a1 + 32) + 32);

  return dispatch_semaphore_signal(v3);
}

void __37__GTPMController_clearStateOccupancy__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    dispatch_semaphore_signal(WeakRetained[4]);
    WeakRetained = v2;
  }
}

- (void)setPerfState:(id)state
{
  stateCopy = state;
  if (stateCopy)
  {
    if ([(GTPMController *)self serviceLaunched])
    {
      integerValue = [stateCopy integerValue];
      if (integerValue >= 1)
      {
        v6 = integerValue;
        objc_initWeak(&location, self);
        connectionToService = self->_connectionToService;
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __31__GTPMController_setPerfState___block_invoke;
        v15[3] = &unk_2796586B0;
        v15[4] = self;
        v8 = [(NSXPCConnection *)connectionToService remoteObjectProxyWithErrorHandler:v15];
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __31__GTPMController_setPerfState___block_invoke_2;
        v11[3] = &unk_279658740;
        objc_copyWeak(&v14, &location);
        v12 = stateCopy;
        selfCopy = self;
        [v8 setState:(v6 - 1) withReply:v11];

        semaphore = self->_semaphore;
        v10 = dispatch_time(0, 10000000000);
        dispatch_semaphore_wait(semaphore, v10);

        objc_destroyWeak(&v14);
        objc_destroyWeak(&location);
      }
    }
  }
}

intptr_t __31__GTPMController_setPerfState___block_invoke(uint64_t a1, uint64_t a2)
{
  NSLog(&cfstr_CanTInvokeRemo.isa, a2);
  v3 = *(*(a1 + 32) + 32);

  return dispatch_semaphore_signal(v3);
}

void __31__GTPMController_setPerfState___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [*(a1 + 32) copy];
    v4 = v5[3];
    v5[3] = v3;

    dispatch_semaphore_signal(*(*(a1 + 40) + 32));
    WeakRetained = v5;
  }
}

- (void)tearDown
{
  if (self && self->_connected)
  {
    self->_connected = 0;
    v3 = [(NSXPCConnection *)self->_connectionToService remoteObjectProxyWithErrorHandler:&__block_literal_global_6935];
    [v3 setControlMode:0 withReply:&__block_literal_global_82];
  }
}

- (BOOL)serviceLaunched
{
  if (self->_connected)
  {
    return 1;
  }

  else if (self->_initialized)
  {
    return 0;
  }

  else
  {
    [(GTPMController *)self _initGTPM];
    return self->_connected;
  }
}

- (void)_initGTPM
{
  self->_initialized = 1;
  if (self)
  {
    if (self->_connectionToService)
    {
      objc_initWeak(&location, self);
      connectionToService = self->_connectionToService;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __27__GTPMController__initGTPM__block_invoke;
      v10[3] = &unk_2796586B0;
      v10[4] = self;
      v4 = [(NSXPCConnection *)connectionToService remoteObjectProxyWithErrorHandler:v10];
      gpuFamily = self->_gpuFamily;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __27__GTPMController__initGTPM__block_invoke_2;
      v8[3] = &unk_2796586D8;
      objc_copyWeak(&v9, &location);
      [v4 initGPU:gpuFamily withReply:v8];

      semaphore = self->_semaphore;
      v7 = dispatch_time(0, 10000000000);
      dispatch_semaphore_wait(semaphore, v7);
      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
    }
  }
}

intptr_t __27__GTPMController__initGTPM__block_invoke(uint64_t a1, uint64_t a2)
{
  NSLog(&cfstr_CanTInvokeRemo.isa, a2);
  v3 = *(*(a1 + 32) + 32);

  return dispatch_semaphore_signal(v3);
}

void __27__GTPMController__initGTPM__block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (a2 && ([WeakRetained[1] containsString:@"Intel"] && (objc_msgSend(v7, "containsString:", @"IG") & 1) != 0 || objc_msgSend(v6[1], "containsString:", @"AMD") && objc_msgSend(v7, "containsString:", @"EG")))
    {
      *(v6 + 21) = 1;
    }

    dispatch_semaphore_signal(v6[4]);
  }
}

- (GTPMController)initWithGPUFamily:(id)family
{
  familyCopy = family;
  v23.receiver = self;
  v23.super_class = GTPMController;
  v5 = [(GTPMController *)&v23 init];
  if (v5)
  {
    v6 = [familyCopy copy];
    gpuFamily = v5->_gpuFamily;
    v5->_gpuFamily = v6;

    if (([familyCopy containsString:@"Intel"] & 1) != 0 || objc_msgSend(familyCopy, "containsString:", @"AMD"))
    {
      if ([familyCopy containsString:@"Intel"])
      {
        v8 = 1;
        v9 = &protocolRef_GTPMServiceProtocol;
        v10 = @"com.apple.gputools.GTPMService";
      }

      else
      {
        if (![familyCopy containsString:@"AMD"])
        {
LABEL_9:
          objc_initWeak(&location, v5);
          v17 = MEMORY[0x277D85DD0];
          v18 = 3221225472;
          v19 = __36__GTPMController_initWithGPUFamily___block_invoke;
          v20 = &unk_279658688;
          objc_copyWeak(&v21, &location);
          [(NSXPCConnection *)v5->_connectionToService setInterruptionHandler:&v17];
          [(NSXPCConnection *)v5->_connectionToService resume:v17];
          v14 = dispatch_semaphore_create(0);
          semaphore = v5->_semaphore;
          v5->_semaphore = v14;

          objc_destroyWeak(&v21);
          objc_destroyWeak(&location);
          goto LABEL_10;
        }

        v8 = 2;
        v9 = &protocolRef_GTAMDPMServiceProtocol;
        v10 = @"com.apple.gputools.GTAMDPMService";
      }

      v11 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:v10];
      connectionToService = v5->_connectionToService;
      v5->_connectionToService = v11;

      v13 = [MEMORY[0x277CCAE90] interfaceWithProtocol:*v9];
      [(NSXPCConnection *)v5->_connectionToService setRemoteObjectInterface:v13];

      v5->_gpuVendor = v8;
      goto LABEL_9;
    }
  }

LABEL_10:

  return v5;
}

void __36__GTPMController_initWithGPUFamily___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  NSLog(&cfstr_ServiceCrashed.isa, WeakRetained);

  v3 = objc_loadWeakRetained((a1 + 32));
  if (v3)
  {
    v3[10] = 0;
  }
}

+ (id)stateFromWeightedAverage:(double)average
{
  if (average < -2.22044605e-16 || vabdd_f64(average, floor(average)) > 2.22044605e-16)
  {
    return @"mixed";
  }

  v4 = (average + 2.22044605e-16);
  if (v4 > 2)
  {
    return @"none";
  }

  else
  {
    return off_279658980[v4];
  }
}

@end