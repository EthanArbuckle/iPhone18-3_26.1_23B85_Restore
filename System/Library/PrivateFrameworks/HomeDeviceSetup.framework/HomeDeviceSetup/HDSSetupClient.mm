@interface HDSSetupClient
- (HDSSetupClient)init;
- (SetupEngineDelegate)delegate;
- (void)_activateWithCompletion:(id)completion;
- (void)activateWithCompletion:(id)completion;
- (void)invalidate;
- (void)startAdvertisingWithCompletion:(id)completion;
@end

@implementation HDSSetupClient

- (HDSSetupClient)init
{
  v6.receiver = self;
  v6.super_class = HDSSetupClient;
  v2 = [(HDSSetupClient *)&v6 init];
  if (v2)
  {
    v3 = CUMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__HDSSetupClient_activateWithCompletion___block_invoke;
  v7[3] = &unk_279714210;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_activateWithCompletion:(id)completion
{
  completionCopy = completion;
  if (gLogCategory_HDSSetupClient <= 30 && (gLogCategory_HDSSetupClient != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupClient _activateWithCompletion:];
  }

  v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.hpsetup.xpc" options:4096];
  [v5 _setQueue:MEMORY[0x277D85CD0]];
  v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2864F5D18];
  [v5 setRemoteObjectInterface:v6];

  v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2864F5D78];
  [v5 setExportedInterface:v7];

  delegate = [(HDSSetupClient *)self delegate];
  [v5 setExportedObject:delegate];

  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__HDSSetupClient__activateWithCompletion___block_invoke;
  v11[3] = &unk_279714798;
  objc_copyWeak(&v12, &location);
  [v5 setInterruptionHandler:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__HDSSetupClient__activateWithCompletion___block_invoke_2;
  v9[3] = &unk_279714798;
  objc_copyWeak(&v10, &location);
  [v5 setInvalidationHandler:v9];
  [v5 resume];
  objc_storeStrong(&self->_connection, v5);
  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

uint64_t __42__HDSSetupClient__activateWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (gLogCategory_HDSSetupClient <= 90)
  {
    v4 = WeakRetained;
    if (gLogCategory_HDSSetupClient != -1 || (WeakRetained = _LogCategory_Initialize(), v2 = v4, WeakRetained))
    {
      __42__HDSSetupClient__activateWithCompletion___block_invoke_cold_1(v2);
      v2 = v4;
    }
  }

  return MEMORY[0x2821F96F8](WeakRetained, v2);
}

uint64_t __42__HDSSetupClient__activateWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (gLogCategory_HDSSetupClient <= 90)
  {
    v4 = WeakRetained;
    if (gLogCategory_HDSSetupClient != -1 || (WeakRetained = _LogCategory_Initialize(), v2 = v4, WeakRetained))
    {
      __42__HDSSetupClient__activateWithCompletion___block_invoke_2_cold_1(v2);
      v2 = v4;
    }
  }

  return MEMORY[0x2821F96F8](WeakRetained, v2);
}

- (void)invalidate
{
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;
}

- (void)startAdvertisingWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (gLogCategory_HDSSetupClient <= 30 && (gLogCategory_HDSSetupClient != -1 || (v5 = _LogCategory_Initialize(), completionCopy = v7, v5)))
  {
    [HDSSetupClient startAdvertisingWithCompletion:];
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else if (completionCopy)
  {
LABEL_5:
    remoteObjectProxy = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    [remoteObjectProxy startAdvertisingWithCompletion:v7];

    goto LABEL_10;
  }

  if (gLogCategory_HDSSetupClient <= 90 && (gLogCategory_HDSSetupClient != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupClient startAdvertisingWithCompletion:];
  }

LABEL_10:

  MEMORY[0x2821F9730]();
}

- (SetupEngineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __42__HDSSetupClient__activateWithCompletion___block_invoke_cold_1(void *a1)
{
  v1 = [a1 connection];
  LogPrintF();
}

void __42__HDSSetupClient__activateWithCompletion___block_invoke_2_cold_1(void *a1)
{
  v1 = [a1 connection];
  LogPrintF();
}

@end