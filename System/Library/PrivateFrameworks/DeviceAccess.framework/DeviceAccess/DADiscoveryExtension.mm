@interface DADiscoveryExtension
- (id)description;
- (void)_activate;
- (void)_interrupted;
- (void)_invalidate;
- (void)_invalidated;
- (void)activate;
- (void)invalidate;
- (void)reportEvent:(id)a3;
- (void)reportEventToExtension:(id)a3;
@end

@implementation DADiscoveryExtension

- (id)description
{
  v4 = [(_EXExtensionIdentity *)self->_ekExtension bundleIdentifier];
  NSAppendPrintF();
  v2 = 0;

  return 0;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__DADiscoveryExtension_activate__block_invoke;
  block[3] = &unk_278F57CE0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  if (gLogCategory_DADiscovery <= 90 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
  {
    v0 = CUPrintNSError();
    LogPrintF();
  }
}

uint64_t __33__DADiscoveryExtension__activate__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

uint64_t __33__DADiscoveryExtension__activate__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (gLogCategory_DADiscovery <= 90)
  {
    v6 = v3;
    if (gLogCategory_DADiscovery != -1 || (v3 = _LogCategory_Initialize(), v4 = v6, v3))
    {
      __33__DADiscoveryExtension__activate__block_invoke_3_cold_1(a1, v6);
      v4 = v6;
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

uint64_t __33__DADiscoveryExtension__activate__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (gLogCategory_DADiscovery <= 90)
  {
    v6 = v3;
    if (gLogCategory_DADiscovery != -1 || (v3 = _LogCategory_Initialize(), v4 = v6, v3))
    {
      __33__DADiscoveryExtension__activate__block_invoke_4_cold_1(a1, v6);
      v4 = v6;
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (void)_interrupted
{
  if (gLogCategory_DADiscovery <= 90 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
  {
    [DADiscoveryExtension _interrupted];
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__DADiscoveryExtension_invalidate__block_invoke;
  block[3] = &unk_278F57CE0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
  {
    [DADiscoveryExtension _invalidate];
  }

  parent = self->_parent;
  self->_parent = 0;

  [(NSXPCConnection *)self->_xpcConnection invalidate];

  [(DADiscoveryExtension *)self _invalidated];
}

- (void)_invalidated
{
  if (!self->_xpcConnection)
  {
    v6 = _Block_copy(self->_invalidationHandler);
    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
    {
      [DADiscoveryExtension _invalidated];
    }

    v5 = v6;
    if (v6)
    {
      (*(v6 + 2))(v6);
      v5 = v6;
    }
  }
}

- (void)reportEventToExtension:(id)a3
{
  xpcConnection = self->_xpcConnection;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__DADiscoveryExtension_reportEventToExtension___block_invoke;
  v6[3] = &unk_278F580C0;
  v6[4] = self;
  v4 = a3;
  v5 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v6];
  [v5 didReceiveDeviceChangedEvent:v4];
}

uint64_t __47__DADiscoveryExtension_reportEventToExtension___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (gLogCategory_DADiscovery <= 90)
  {
    v6 = v3;
    if (gLogCategory_DADiscovery != -1 || (v3 = _LogCategory_Initialize(), v4 = v6, v3))
    {
      __47__DADiscoveryExtension_reportEventToExtension___block_invoke_cold_1(a1, v6);
      v4 = v6;
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (void)reportEvent:(id)a3
{
  v9 = a3;
  v4 = [(NSXPCConnection *)self->_xpcConnection cuValueForEntitlementNoCache:@"com.apple.developer.accessory-setup-discovery-extension"];
  v5 = [v4 isEqual:MEMORY[0x277CBEC38]];

  parent = self->_parent;
  if (v5)
  {
    if (parent)
    {
      if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
      {
        v7 = self;
        v8 = v9;
        LogPrintF();
      }

      [(DADiscovery *)self->_parent _reportASKEvent:v9, v7, v8];
    }
  }

  else if (parent)
  {
    if (gLogCategory_DADiscovery <= 30 && (gLogCategory_DADiscovery != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
      [(DADiscovery *)self->_parent _reportEvent:v9, self, v9];
    }

    else
    {
      [(DADiscovery *)self->_parent _reportEvent:v9, v7, v8];
    }
  }
}

void __33__DADiscoveryExtension__activate__block_invoke_3_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10(a1, a2);
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  LogPrintF();
}

void __33__DADiscoveryExtension__activate__block_invoke_4_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10(a1, a2);
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  LogPrintF();
}

void __47__DADiscoveryExtension_reportEventToExtension___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10(a1, a2);
  CUPrintNSError();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  LogPrintF();
}

@end