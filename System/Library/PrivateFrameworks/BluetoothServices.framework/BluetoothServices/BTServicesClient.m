@interface BTServicesClient
- (BTServicesClient)init;
- (id)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidated;
- (void)diagnosticControl:(id)a3 completion:(id)a4;
- (void)diagnosticShow:(id)a3 completion:(id)a4;
- (void)invalidate;
- (void)showHIDConnectedBannerAperture:(id)a3 completion:(id)a4;
@end

@implementation BTServicesClient

- (BTServicesClient)init
{
  v6.receiver = self;
  v6.super_class = BTServicesClient;
  v2 = [(BTServicesClient *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v4 = v3;
  }

  return v3;
}

- (id)_ensureXPCStarted
{
  if (!self->_xpcCnx)
  {
    v3 = self->_testListenerEndpoint;
    v4 = objc_alloc(MEMORY[0x277CCAE80]);
    if (v3)
    {
      v5 = [v4 initWithListenerEndpoint:v3];
    }

    else
    {
      v5 = [v4 initWithMachServiceName:@"com.apple.BluetoothServices" options:0];
    }

    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v5;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2853D8F88];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v7];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __37__BTServicesClient__ensureXPCStarted__block_invoke;
    v11[3] = &unk_278D11830;
    v11[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v11];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __37__BTServicesClient__ensureXPCStarted__block_invoke_2;
    v10[3] = &unk_278D11830;
    v10[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v10];
    v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2853D9090];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v8];

    [(NSXPCConnection *)self->_xpcCnx resume];
  }

  return 0;
}

uint64_t __37__BTServicesClient__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (void)_interrupted
{
  if (gLogCategory_BTServicesClient <= 50 && (gLogCategory_BTServicesClient != -1 || _LogCategory_Initialize()))
  {
    [BTServicesClient _interrupted];
  }

  v3 = MEMORY[0x245CFACE0](self->_interruptionHandler);
  if (v3)
  {
    v4 = v3;
    v3[2]();
    v3 = v4;
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__BTServicesClient_invalidate__block_invoke;
  block[3] = &unk_278D11830;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __30__BTServicesClient_invalidate__block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  if ((*(v2 + 8) & 1) == 0)
  {
    v3 = result;
    *(v2 + 8) = 1;
    if ((*(*(result + 32) + 9) & 1) == 0 && gLogCategory_BTServicesClient <= 30 && (gLogCategory_BTServicesClient != -1 || _LogCategory_Initialize()))
    {
      __30__BTServicesClient_invalidate__block_invoke_cold_1();
    }

    v4 = *(v3 + 32);
    if (v4[2])
    {
      [v4[2] invalidate];
      v4 = *(v3 + 32);
    }

    return [v4 _invalidated];
  }

  return result;
}

- (void)_invalidated
{
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled && gLogCategory_BTServicesClient <= 50 && (gLogCategory_BTServicesClient != -1 || _LogCategory_Initialize()))
    {
      [BTServicesClient _invalidated];
    }

    if (!self->_xpcCnx)
    {
      v3 = MEMORY[0x245CFACE0](self->_invalidationHandler, a2);
      v4 = v3;
      if (v3)
      {
        (*(v3 + 16))(v3);
      }

      interruptionHandler = self->_interruptionHandler;
      self->_interruptionHandler = 0;

      invalidationHandler = self->_invalidationHandler;
      self->_invalidationHandler = 0;

      xpcCnx = self->_xpcCnx;
      self->_xpcCnx = 0;

      self->_invalidateDone = 1;
      if (gLogCategory_BTServicesClient <= 10 && (gLogCategory_BTServicesClient != -1 || _LogCategory_Initialize()))
      {
        [BTServicesClient _invalidated];
      }
    }
  }
}

- (void)diagnosticControl:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__BTServicesClient_diagnosticControl_completion___block_invoke;
  block[3] = &unk_278D118A8;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(dispatchQueue, block);
}

void __49__BTServicesClient_diagnosticControl_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _ensureXPCStarted];
  if (v2)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 32) + 16);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __49__BTServicesClient_diagnosticControl_completion___block_invoke_2;
    v5[3] = &unk_278D11880;
    v6 = *(a1 + 48);
    v4 = [v3 remoteObjectProxyWithErrorHandler:v5];
    [v4 diagnosticControl:*(a1 + 40) completion:*(a1 + 48)];
  }
}

- (void)diagnosticShow:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__BTServicesClient_diagnosticShow_completion___block_invoke;
  block[3] = &unk_278D118A8;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(dispatchQueue, block);
}

void __46__BTServicesClient_diagnosticShow_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _ensureXPCStarted];
  if (v2)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 32) + 16);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __46__BTServicesClient_diagnosticShow_completion___block_invoke_2;
    v5[3] = &unk_278D11880;
    v6 = *(a1 + 48);
    v4 = [v3 remoteObjectProxyWithErrorHandler:v5];
    [v4 diagnosticShow:*(a1 + 40) completion:*(a1 + 48)];
  }
}

- (void)showHIDConnectedBannerAperture:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__BTServicesClient_showHIDConnectedBannerAperture_completion___block_invoke;
  block[3] = &unk_278D118A8;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(dispatchQueue, block);
}

void __62__BTServicesClient_showHIDConnectedBannerAperture_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _ensureXPCStarted];
  if (v2)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 32) + 16);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __62__BTServicesClient_showHIDConnectedBannerAperture_completion___block_invoke_2;
    v5[3] = &unk_278D11880;
    v6 = *(a1 + 48);
    v4 = [v3 remoteObjectProxyWithErrorHandler:v5];
    [v4 showHIDConnectedBannerAperture:*(a1 + 40) completion:*(a1 + 48)];
  }
}

@end