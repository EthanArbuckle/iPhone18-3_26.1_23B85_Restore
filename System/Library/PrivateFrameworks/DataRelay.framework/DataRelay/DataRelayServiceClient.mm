@interface DataRelayServiceClient
- (DataRelayServiceClient)init;
- (DataRelayServiceClient)initWithCoder:(id)a3;
- (id)_ensureXPCStarted;
- (id)description;
- (void)_activate;
- (void)_interrupted;
- (void)_invalidated;
- (void)_reportError:(id)a3;
- (void)activateWithCompletion:(id)a3;
- (void)invalidate;
- (void)sensorDataAvailable:(id)a3 dataTypes:(unint64_t)a4 completion:(id)a5;
- (void)sensorDataUnavailable:(id)a3 dataTypes:(unint64_t)a4 completion:(id)a5;
@end

@implementation DataRelayServiceClient

- (DataRelayServiceClient)initWithCoder:(id)a3
{
  v3 = [(DataRelayServiceClient *)self init];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (id)description
{
  NSAppendPrintF();

  return 0;
}

- (DataRelayServiceClient)init
{
  v6.receiver = self;
  v6.super_class = DataRelayServiceClient;
  v2 = [(DataRelayServiceClient *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v4 = v3;
  }

  return v3;
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__DataRelayServiceClient_activateWithCompletion___block_invoke;
  v7[3] = &unk_278F4E358;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __49__DataRelayServiceClient_activateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1)
  {
    v3 = *MEMORY[0x277CCA590];
    v8 = NSErrorF();
    if (gLogCategory_DataRelayServiceClient <= 90 && (gLogCategory_DataRelayServiceClient != -1 || _LogCategory_Initialize()))
    {
      __49__DataRelayServiceClient_activateWithCompletion___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    *(v2 + 8) = 1;
    v4 = MEMORY[0x24C1D4510](*(a1 + 40));
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = v4;

    v7 = *(a1 + 32);

    [v7 _activate];
  }
}

- (void)_activate
{
  if (self->_invalidateCalled)
  {
    v3 = *MEMORY[0x277CCA590];
    v8 = NSErrorF();
    if (gLogCategory_DataRelayServiceClient <= 90 && (gLogCategory_DataRelayServiceClient != -1 || _LogCategory_Initialize()))
    {
      [DataRelayServiceClient _activate];
    }

    v4 = MEMORY[0x24C1D4510](self->_activateCompletion);
    activateCompletion = self->_activateCompletion;
    self->_activateCompletion = 0;

    if (v4)
    {
      (v4)[2](v4, v8);
    }
  }

  else
  {
    v6 = [(DataRelayServiceClient *)self _ensureXPCStarted];
    v8 = v6;
    if (v6)
    {
      [(DataRelayServiceClient *)self _reportError:v6];
      goto LABEL_15;
    }

    if (gLogCategory_DataRelayServiceClient <= 30 && (gLogCategory_DataRelayServiceClient != -1 || _LogCategory_Initialize()))
    {
      [DataRelayServiceClient _activate];
    }

    v4 = MEMORY[0x24C1D4510](self->_activateCompletion);
    v7 = self->_activateCompletion;
    self->_activateCompletion = 0;

    if (v4)
    {
      v4[2](v4, 0);
    }
  }

LABEL_15:
}

- (id)_ensureXPCStarted
{
  if (!self->_xpcCnx)
  {
    v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285B1C350];
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.AudioAccessoryServices" options:0];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v4;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    objc_initWeak(&location, self);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __43__DataRelayServiceClient__ensureXPCStarted__block_invoke;
    v13[3] = &unk_278F4E380;
    objc_copyWeak(&v14, &location);
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v13];
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __43__DataRelayServiceClient__ensureXPCStarted__block_invoke_2;
    v10 = &unk_278F4E3A8;
    v11 = self;
    objc_copyWeak(&v12, &location);
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:&v7];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v3, v7, v8, v9, v10, v11];
    [(NSXPCConnection *)self->_xpcCnx resume];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return 0;
}

void __43__DataRelayServiceClient__ensureXPCStarted__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _interrupted];
}

void __43__DataRelayServiceClient__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _invalidated];
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_DataRelayServiceClient <= 90 && (gLogCategory_DataRelayServiceClient != -1 || _LogCategory_Initialize()))
  {
    [DataRelayServiceClient _interrupted];
  }

  v3 = *MEMORY[0x277CCA590];
  v4 = NSErrorF();
  [(DataRelayServiceClient *)self _reportError:v4];

  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    v7 = *(interruptionHandler + 2);

    v7();
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__DataRelayServiceClient_invalidate__block_invoke;
  block[3] = &unk_278F4E3D0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __36__DataRelayServiceClient_invalidate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 24) & 1) == 0)
  {
    *(v2 + 24) = 1;
    if ((*(*(a1 + 32) + 25) & 1) == 0 && gLogCategory_DataRelayServiceClient <= 30 && (gLogCategory_DataRelayServiceClient != -1 || _LogCategory_Initialize()))
    {
      __36__DataRelayServiceClient_invalidate__block_invoke_cold_1();
    }

    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    if (v5)
    {
      [v5 invalidate];
      v4 = *(a1 + 32);
    }

    v10 = MEMORY[0x24C1D4510](*(v4 + 16));
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    *(v6 + 16) = 0;

    if (v10)
    {
      v8 = *MEMORY[0x277CCA590];
      v9 = NSErrorF();
      v10[2](v10, v9);
    }

    [*(a1 + 32) _invalidated];
  }
}

- (void)_invalidated
{
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled && gLogCategory_DataRelayServiceClient <= 90 && (gLogCategory_DataRelayServiceClient != -1 || _LogCategory_Initialize()))
    {
      [DataRelayServiceClient _invalidated];
    }

    if (!self->_xpcCnx)
    {
      v10 = MEMORY[0x24C1D4510](self->_activateCompletion, a2);
      activateCompletion = self->_activateCompletion;
      self->_activateCompletion = 0;

      if (v10)
      {
        v4 = *MEMORY[0x277CCA590];
        v5 = NSErrorF();
        v10[2](v10, v5);
      }

      interruptionHandler = self->_interruptionHandler;
      self->_interruptionHandler = 0;

      v7 = MEMORY[0x24C1D4510](self->_invalidationHandler);
      invalidationHandler = self->_invalidationHandler;
      self->_invalidationHandler = 0;

      if (v7)
      {
        v7[2](v7);
      }

      xpcCnx = self->_xpcCnx;
      self->_xpcCnx = 0;

      self->_invalidateDone = 1;
    }
  }
}

- (void)_reportError:(id)a3
{
  v6 = a3;
  v4 = MEMORY[0x24C1D4510](self->_activateCompletion);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (v4)
  {
    (v4)[2](v4, v6);
  }
}

- (void)sensorDataAvailable:(id)a3 dataTypes:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (self->_activateCalled)
  {
    dispatchQueue = self->_dispatchQueue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__DataRelayServiceClient_sensorDataAvailable_dataTypes_completion___block_invoke;
    v12[3] = &unk_278F4E420;
    v12[4] = self;
    v14 = v9;
    v13 = v8;
    v15 = a4;
    dispatch_async(dispatchQueue, v12);
  }

  else if (gLogCategory_DataRelayServiceClient <= 60 && (gLogCategory_DataRelayServiceClient != -1 || _LogCategory_Initialize()))
  {
    [DataRelayServiceClient sensorDataAvailable:dataTypes:completion:];
  }
}

void __67__DataRelayServiceClient_sensorDataAvailable_dataTypes_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[24] == 1)
  {
    v3 = *MEMORY[0x277CCA590];
    v4 = NSErrorF();
    v12 = v4;
    if (gLogCategory_DataRelayServiceClient <= 90)
    {
      if (gLogCategory_DataRelayServiceClient != -1 || (v10 = _LogCategory_Initialize(), v4 = v12, v10))
      {
        v11 = *(a1 + 32);
        LogPrintF();
        v4 = v12;
      }
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), v4);
  }

  else
  {
    v5 = [v2 _ensureXPCStarted];
    if (v5)
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      if (gLogCategory_DataRelayServiceClient <= 40 && (gLogCategory_DataRelayServiceClient != -1 || _LogCategory_Initialize()))
      {
        __67__DataRelayServiceClient_sensorDataAvailable_dataTypes_completion___block_invoke_cold_1(a1);
      }

      v6 = *(*(a1 + 32) + 32);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __67__DataRelayServiceClient_sensorDataAvailable_dataTypes_completion___block_invoke_2;
      v15[3] = &unk_278F4E3F8;
      v16 = *(a1 + 48);
      v7 = [v6 remoteObjectProxyWithErrorHandler:v15];
      v8 = *(a1 + 56);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __67__DataRelayServiceClient_sensorDataAvailable_dataTypes_completion___block_invoke_3;
      v13[3] = &unk_278F4E3F8;
      v9 = *(a1 + 40);
      v14 = *(a1 + 48);
      [v7 informDRClientSensorDataAvailable:v9 dataTypes:v8 completion:v13];
    }
  }
}

- (void)sensorDataUnavailable:(id)a3 dataTypes:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (self->_activateCalled)
  {
    dispatchQueue = self->_dispatchQueue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __69__DataRelayServiceClient_sensorDataUnavailable_dataTypes_completion___block_invoke;
    v12[3] = &unk_278F4E420;
    v12[4] = self;
    v14 = v9;
    v13 = v8;
    v15 = a4;
    dispatch_async(dispatchQueue, v12);
  }

  else if (gLogCategory_DataRelayServiceClient <= 60 && (gLogCategory_DataRelayServiceClient != -1 || _LogCategory_Initialize()))
  {
    [DataRelayServiceClient sensorDataUnavailable:dataTypes:completion:];
  }
}

void __69__DataRelayServiceClient_sensorDataUnavailable_dataTypes_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[24] == 1)
  {
    v3 = *MEMORY[0x277CCA590];
    v4 = NSErrorF();
    v12 = v4;
    if (gLogCategory_DataRelayServiceClient <= 90)
    {
      if (gLogCategory_DataRelayServiceClient != -1 || (v10 = _LogCategory_Initialize(), v4 = v12, v10))
      {
        v11 = *(a1 + 32);
        LogPrintF();
        v4 = v12;
      }
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), v4);
  }

  else
  {
    v5 = [v2 _ensureXPCStarted];
    if (v5)
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      if (gLogCategory_DataRelayServiceClient <= 40 && (gLogCategory_DataRelayServiceClient != -1 || _LogCategory_Initialize()))
      {
        __69__DataRelayServiceClient_sensorDataUnavailable_dataTypes_completion___block_invoke_cold_1(a1);
      }

      v6 = *(*(a1 + 32) + 32);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __69__DataRelayServiceClient_sensorDataUnavailable_dataTypes_completion___block_invoke_2;
      v15[3] = &unk_278F4E3F8;
      v16 = *(a1 + 48);
      v7 = [v6 remoteObjectProxyWithErrorHandler:v15];
      v8 = *(a1 + 56);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __69__DataRelayServiceClient_sensorDataUnavailable_dataTypes_completion___block_invoke_3;
      v13[3] = &unk_278F4E3F8;
      v9 = *(a1 + 40);
      v14 = *(a1 + 48);
      [v7 informDRClientSensorDataUnavailable:v9 dataTypes:v8 completion:v13];
    }
  }
}

void __67__DataRelayServiceClient_sensorDataAvailable_dataTypes_completion___block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    v4 = v3;
    if (v2)
    {
      [v3 addObject:@"WxDM6"];
    }

    if ((v2 & 2) != 0)
    {
      [v4 addObject:@"WxHRM"];
    }

    v5 = [v4 componentsJoinedByString:{@", "}];
  }

  else
  {
    v5 = @"None";
  }

  LogPrintF();
}

void __69__DataRelayServiceClient_sensorDataUnavailable_dataTypes_completion___block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    v4 = v3;
    if (v2)
    {
      [v3 addObject:@"WxDM6"];
    }

    if ((v2 & 2) != 0)
    {
      [v4 addObject:@"WxHRM"];
    }

    v5 = [v4 componentsJoinedByString:{@", "}];
  }

  else
  {
    v5 = @"None";
  }

  LogPrintF();
}

@end