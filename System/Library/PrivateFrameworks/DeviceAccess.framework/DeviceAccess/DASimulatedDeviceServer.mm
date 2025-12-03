@interface DASimulatedDeviceServer
- (DASimulatedDeviceServer)init;
- (id)descriptionWithLevel:(int)level;
- (void)_activate;
- (void)_connectionAccept:(id)accept;
- (void)_invalidate;
- (void)_invalidated;
- (void)activate;
- (void)invalidate;
@end

@implementation DASimulatedDeviceServer

- (DASimulatedDeviceServer)init
{
  v6.receiver = self;
  v6.super_class = DASimulatedDeviceServer;
  v2 = [(DASimulatedDeviceServer *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v4 = v3;
  }

  return v3;
}

- (id)descriptionWithLevel:(int)level
{
  objc_opt_class();
  deviceBonjourServiceType = self->_deviceBonjourServiceType;
  v5 = *&self->_deviceIdentitifer;
  NSAppendPrintF();

  return 0;
}

- (void)activate
{
  if (!self->_deviceBonjourServiceType)
  {
    self->_deviceBonjourServiceType = @"_deviceaccess._udp";
  }

  if (!self->_deviceIdentitifer)
  {
    v3 = NSRandomData();
    v4 = CUPrintNSDataAddress();
    deviceIdentitifer = self->_deviceIdentitifer;
    self->_deviceIdentitifer = v4;
  }

  if (!self->_deviceName)
  {
    arc4random();
    v6 = NSPrintF();
    deviceName = self->_deviceName;
    self->_deviceName = v6;
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__DASimulatedDeviceServer_activate__block_invoke;
  block[3] = &unk_278F57CE0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __35__DASimulatedDeviceServer_activate__block_invoke(uint64_t result)
{
  v2 = (result + 32);
  v1 = *(result + 32);
  if ((*(v1 + 8) & 1) == 0)
  {
    *(v1 + 8) = 1;
    if (gLogCategory_DASimulatedDeviceServer <= 30 && (gLogCategory_DASimulatedDeviceServer != -1 || _LogCategory_Initialize()))
    {
      __35__DASimulatedDeviceServer_activate__block_invoke_cold_1(v2);
    }

    v3 = *v2;

    return [v3 _activate];
  }

  return result;
}

- (void)_activate
{
  v0 = CUPrintNSError();
  LogPrintF();
}

void *__36__DASimulatedDeviceServer__activate__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[5])
  {
    return [result _connectionAccept:a2];
  }

  return result;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__DASimulatedDeviceServer_invalidate__block_invoke;
  block[3] = &unk_278F57CE0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __37__DASimulatedDeviceServer_invalidate__block_invoke(uint64_t result)
{
  v2 = (result + 32);
  v1 = *(result + 32);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    if (gLogCategory_DASimulatedDeviceServer <= 30 && (gLogCategory_DASimulatedDeviceServer != -1 || _LogCategory_Initialize()))
    {
      __37__DASimulatedDeviceServer_invalidate__block_invoke_cold_1(v2);
    }

    v3 = *v2;

    return [v3 _invalidate];
  }

  return result;
}

- (void)_invalidate
{
  [(CUBonjourAdvertiser *)self->_bonjourAdvertiser invalidate];
  bonjourAdvertiser = self->_bonjourAdvertiser;
  self->_bonjourAdvertiser = 0;

  [(CUTCPServer *)self->_tcpServer invalidate];
  tcpServer = self->_tcpServer;
  self->_tcpServer = 0;

  [(DASimulatedDeviceServer *)self _invalidated];
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone)
  {
    self->_invalidateDone = 1;
    if (gLogCategory_DASimulatedDeviceServer <= 30 && (gLogCategory_DASimulatedDeviceServer != -1 || _LogCategory_Initialize()))
    {
      [DASimulatedDeviceServer _invalidated];
    }
  }
}

- (void)_connectionAccept:(id)accept
{
  acceptCopy = accept;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __45__DASimulatedDeviceServer__connectionAccept___block_invoke;
  v12 = &unk_278F57CB8;
  selfCopy = self;
  v5 = acceptCopy;
  v14 = v5;
  [v5 setInvalidationHandler:&v9];
  tcpConnections = self->_tcpConnections;
  if (!tcpConnections)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v8 = self->_tcpConnections;
    self->_tcpConnections = v7;

    tcpConnections = self->_tcpConnections;
  }

  [(NSMutableSet *)tcpConnections addObject:v5, v9, v10, v11, v12, selfCopy];
}

@end