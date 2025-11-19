@interface DASimulatedDeviceClient
- (DASimulatedDeviceClient)init;
- (id)descriptionWithLevel:(int)a3;
- (void)_invalidated;
- (void)activate;
- (void)invalidate;
@end

@implementation DASimulatedDeviceClient

- (DASimulatedDeviceClient)init
{
  v6.receiver = self;
  v6.super_class = DASimulatedDeviceClient;
  v2 = [(DASimulatedDeviceClient *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v4 = v3;
  }

  return v3;
}

- (id)descriptionWithLevel:(int)a3
{
  objc_opt_class();
  deviceBonjourServiceType = self->_deviceBonjourServiceType;
  NSAppendPrintF();

  return 0;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__DASimulatedDeviceClient_activate__block_invoke;
  block[3] = &unk_278F57CE0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __35__DASimulatedDeviceClient_activate__block_invoke(uint64_t result)
{
  if (gLogCategory_DASimulatedDeviceClient <= 30)
  {
    v1 = result;
    if (gLogCategory_DASimulatedDeviceClient != -1)
    {
      return __35__DASimulatedDeviceClient_activate__block_invoke_cold_1(v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __35__DASimulatedDeviceClient_activate__block_invoke_cold_1(v1);
    }
  }

  return result;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__DASimulatedDeviceClient_invalidate__block_invoke;
  block[3] = &unk_278F57CE0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __37__DASimulatedDeviceClient_invalidate__block_invoke(uint64_t result)
{
  v2 = (result + 32);
  v1 = *(result + 32);
  if ((*(v1 + 9) & 1) == 0)
  {
    *(v1 + 9) = 1;
    if (gLogCategory_DASimulatedDeviceClient <= 30 && (gLogCategory_DASimulatedDeviceClient != -1 || _LogCategory_Initialize()))
    {
      __37__DASimulatedDeviceClient_invalidate__block_invoke_cold_1(v2);
    }

    v3 = *v2;

    return [v3 _invalidated];
  }

  return result;
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone)
  {
    self->_invalidateDone = 1;
    if (gLogCategory_DASimulatedDeviceClient <= 30 && (gLogCategory_DASimulatedDeviceClient != -1 || _LogCategory_Initialize()))
    {
      [DASimulatedDeviceClient _invalidated];
    }
  }
}

@end