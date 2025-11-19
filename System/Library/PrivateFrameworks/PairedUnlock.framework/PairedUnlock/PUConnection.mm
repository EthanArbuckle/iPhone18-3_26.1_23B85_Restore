@interface PUConnection
+ (id)clientInterface;
+ (id)serverInterface;
- (PUConnection)initWithDelegate:(id)a3;
- (PUConnectionDelegate)delegate;
- (const)queueNameWithSuffix:(id)a3;
- (id)delegateIfRespondsToSelector:(SEL)a3;
- (id)serverConnection;
- (void)dealloc;
- (void)didDisableOnlyRemoteUnlock:(BOOL)a3 error:(id)a4;
- (void)didEnableOnlyRemoteUnlock:(BOOL)a3 error:(id)a4;
- (void)didGetRemoteDeviceState:(id)a3 error:(id)a4;
- (void)didPairForUnlock:(BOOL)a3 error:(id)a4;
- (void)didUnpairForUnlock:(BOOL)a3 error:(id)a4;
- (void)disableOnlyRemoteUnlock;
- (void)enableOnlyRemoteUnlockWithPasscode:(id)a3;
- (void)getRemoteDeviceState:(id)a3;
- (void)pairForUnlockWithPasscode:(id)a3;
- (void)queryRemoteDeviceState:(id)a3;
- (void)remoteDeviceDidCompleteRemoteAction:(BOOL)a3 remoteDeviceState:(id)a4 error:(id)a5;
- (void)remoteDeviceDidRemoveLockout:(BOOL)a3 error:(id)a4;
- (void)remoteDeviceDidUnlock;
- (void)requestRemoteDeviceRemoteAction:(int64_t)a3 type:(int64_t)a4;
- (void)requestRemoteDeviceRemoveLockout:(id)a3;
- (void)requestRemoteDeviceUnlockNotification;
- (void)setServerConnection:(id)a3;
- (void)unpairForUnlock;
@end

@implementation PUConnection

- (PUConnection)initWithDelegate:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PUConnection;
  v5 = [(PUConnection *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v7 = dispatch_queue_create([(PUConnection *)v5 queueNameWithSuffix:@"connection"], 0);
    serverConnectionQueue = v6->_serverConnectionQueue;
    v6->_serverConnectionQueue = v7;

    v9 = dispatch_queue_create([(PUConnection *)v6 queueNameWithSuffix:@"delegate"], 0);
    delegateQueue = v6->_delegateQueue;
    v6->_delegateQueue = v9;

    objc_storeWeak(&v6->_delegate, v4);
    v11 = [[PUConnectionUnlockClient alloc] initWithConnection:v6];
    unlockClient = v6->_unlockClient;
    v6->_unlockClient = v11;
  }

  return v6;
}

- (const)queueNameWithSuffix:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v3 stringWithFormat:@"%@-%@", v6, v4];

  v8 = [v7 UTF8String];
  return v8;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_serverConnection invalidate];
  v3.receiver = self;
  v3.super_class = PUConnection;
  [(PUConnection *)&v3 dealloc];
}

+ (id)serverInterface
{
  if (serverInterface_onceToken != -1)
  {
    +[PUConnection serverInterface];
  }

  v3 = serverInterface___serverInterface;

  return v3;
}

void __31__PUConnection_serverInterface__block_invoke()
{
  v0 = MEMORY[0x277CCAE90];
  v1 = &unk_286FC54C0;
  v2 = [v0 interfaceWithProtocol:v1];
  v3 = serverInterface___serverInterface;
  serverInterface___serverInterface = v2;

  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  [serverInterface___serverInterface setClasses:v6 forSelector:sel_queryRemoteDeviceState_ argumentIndex:0 ofReply:1];
}

+ (id)clientInterface
{
  if (clientInterface_onceToken != -1)
  {
    +[PUConnection clientInterface];
  }

  v3 = clientInterface___clientInterface;

  return v3;
}

void __31__PUConnection_clientInterface__block_invoke()
{
  v0 = MEMORY[0x277CCAE90];
  v1 = &unk_286FC4E78;
  v2 = [v0 interfaceWithProtocol:v1];
  v3 = clientInterface___clientInterface;
  clientInterface___clientInterface = v2;

  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  [clientInterface___clientInterface setClasses:v6 forSelector:sel_remoteDeviceDidCompleteRemoteAction_remoteDeviceState_error_ argumentIndex:1 ofReply:0];
  [clientInterface___clientInterface setClasses:v6 forSelector:sel_didGetRemoteDeviceState_error_ argumentIndex:0 ofReply:0];
}

- (id)serverConnection
{
  serverConnectionQueue = self->_serverConnectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__PUConnection_serverConnection__block_invoke;
  block[3] = &unk_2799FCCF8;
  block[4] = self;
  dispatch_sync(serverConnectionQueue, block);
  return self->_serverConnection;
}

void __32__PUConnection_serverConnection__block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 8))
  {
    v2 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.paired-unlock" options:4096];
    v3 = *(a1 + 32);
    v4 = *(v3 + 8);
    *(v3 + 8) = v2;

    v5 = *(*(a1 + 32) + 8);
    v6 = [objc_opt_class() serverInterface];
    [v5 setRemoteObjectInterface:v6];

    v7 = *(*(a1 + 32) + 8);
    v8 = [objc_opt_class() clientInterface];
    [v7 setExportedInterface:v8];

    [*(*(a1 + 32) + 8) setExportedObject:*(*(a1 + 32) + 32)];
    [*(*(a1 + 32) + 8) setInterruptionHandler:&__block_literal_global_127];
    objc_initWeak(&location, *(a1 + 32));
    v9 = *(*(a1 + 32) + 8);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __32__PUConnection_serverConnection__block_invoke_3;
    v14[3] = &unk_2799FCCA8;
    objc_copyWeak(&v15, &location);
    [v9 setInvalidationHandler:v14];
    [*(*(a1 + 32) + 8) resume];
    v10 = *(*(a1 + 32) + 8);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __32__PUConnection_serverConnection__block_invoke_4;
    v12[3] = &unk_2799FCCD0;
    objc_copyWeak(&v13, &location);
    v11 = [v10 remoteObjectProxyWithErrorHandler:v12];
    [v11 checkIn];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __32__PUConnection_serverConnection__block_invoke_3(uint64_t a1)
{
  NSLog(&cfstr_UnlockManagerC_0.isa);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setServerConnection:0];
}

void __32__PUConnection_serverConnection__block_invoke_4(uint64_t a1, uint64_t a2)
{
  NSLog(&cfstr_PairedunlockCo.isa, a2);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setServerConnection:0];
}

- (void)setServerConnection:(id)a3
{
  v4 = a3;
  serverConnectionQueue = self->_serverConnectionQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__PUConnection_setServerConnection___block_invoke;
  v7[3] = &unk_2799FCD20;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(serverConnectionQueue, v7);
}

- (void)pairForUnlockWithPasscode:(id)a3
{
  v4 = a3;
  v6 = [(PUConnection *)self serverConnection];
  v5 = [v6 remoteObjectProxy];
  [v5 pairForUnlockWithPasscode:v4];
}

- (void)unpairForUnlock
{
  v3 = [(PUConnection *)self serverConnection];
  v2 = [v3 remoteObjectProxy];
  [v2 unpairForUnlock];
}

- (void)enableOnlyRemoteUnlockWithPasscode:(id)a3
{
  v4 = a3;
  v6 = [(PUConnection *)self serverConnection];
  v5 = [v6 remoteObjectProxy];
  [v5 enableOnlyRemoteUnlockWithPasscode:v4];
}

- (void)disableOnlyRemoteUnlock
{
  v3 = [(PUConnection *)self serverConnection];
  v2 = [v3 remoteObjectProxy];
  [v2 disableOnlyRemoteUnlock];
}

- (void)requestRemoteDeviceRemoteAction:(int64_t)a3 type:(int64_t)a4
{
  v7 = [(PUConnection *)self serverConnection];
  v6 = [v7 remoteObjectProxy];
  [v6 requestRemoteDeviceRemoteAction:a3 type:a4];
}

- (void)requestRemoteDeviceUnlockNotification
{
  v3 = [(PUConnection *)self serverConnection];
  v2 = [v3 remoteObjectProxy];
  [v2 requestRemoteDeviceUnlockNotification];
}

- (void)requestRemoteDeviceRemoveLockout:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__PUConnection_requestRemoteDeviceRemoveLockout___block_invoke;
  block[3] = &unk_2799FCD48;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(delegateQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __49__PUConnection_requestRemoteDeviceRemoveLockout___block_invoke(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 40));
  v2 = [*(a1 + 32) copy];
  v3 = objc_loadWeakRetained(&to);
  [v3 setRemoteDeviceRemoveLockoutHandler:v2];

  v4 = objc_loadWeakRetained(&to);
  v5 = [v4 serverConnection];
  v6 = [v5 remoteObjectProxy];
  [v6 requestRemoteDeviceRemoveLockout];

  objc_destroyWeak(&to);
}

void __66__PUConnection_requestDeviceSetWristDetectionDisabled_completion___block_invoke(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 40));
  v2 = objc_loadWeakRetained(&to);
  v3 = [v2 serverConnection];
  v4 = [v3 remoteObjectProxy];
  [v4 requestDeviceSetWristDetectionDisabled:*(a1 + 48) completion:*(a1 + 32)];

  objc_destroyWeak(&to);
}

- (void)getRemoteDeviceState:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__PUConnection_getRemoteDeviceState___block_invoke;
  v6[3] = &unk_2799FCD98;
  v7 = v4;
  v5 = v4;
  [(PUConnection *)self queryRemoteDeviceState:v6];
}

void __37__PUConnection_getRemoteDeviceState___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v9 = a3;
    v5 = a2;
    v6 = [v5 hasPasscodeSet];
    v7 = [v5 isPasscodeLocked];
    v8 = [v5 isUnlockOnly];

    (*(v3 + 16))(v3, v6, v7, v8, v9);
  }
}

- (void)queryRemoteDeviceState:(id)a3
{
  v4 = a3;
  v6 = [(PUConnection *)self serverConnection];
  v5 = [v6 remoteObjectProxy];
  [v5 queryRemoteDeviceState:v4];
}

- (id)delegateIfRespondsToSelector:(SEL)a3
{
  v3 = [(PUConnection *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    v3 = 0;
  }

  return v3;
}

- (void)didPairForUnlock:(BOOL)a3 error:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__PUConnection_didPairForUnlock_error___block_invoke;
  block[3] = &unk_2799FCDC0;
  objc_copyWeak(&v11, &location);
  v12 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(delegateQueue, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __39__PUConnection_didPairForUnlock_error___block_invoke(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 48));
  v2 = objc_loadWeakRetained(&to);
  v3 = [v2 delegateIfRespondsToSelector:sel_unlockConnection_didPairForUnlock_error_];

  if (v3)
  {
    [v3 unlockConnection:*(a1 + 32) didPairForUnlock:*(a1 + 56) error:*(a1 + 40)];
  }

  objc_destroyWeak(&to);
}

- (void)didUnpairForUnlock:(BOOL)a3 error:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__PUConnection_didUnpairForUnlock_error___block_invoke;
  block[3] = &unk_2799FCDC0;
  objc_copyWeak(&v11, &location);
  v12 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(delegateQueue, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __41__PUConnection_didUnpairForUnlock_error___block_invoke(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 48));
  v2 = objc_loadWeakRetained(&to);
  v3 = [v2 delegateIfRespondsToSelector:sel_unlockConnection_didUnpairForUnlock_error_];

  if (v3)
  {
    [v3 unlockConnection:*(a1 + 32) didUnpairForUnlock:*(a1 + 56) error:*(a1 + 40)];
  }

  objc_destroyWeak(&to);
}

- (void)didEnableOnlyRemoteUnlock:(BOOL)a3 error:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__PUConnection_didEnableOnlyRemoteUnlock_error___block_invoke;
  block[3] = &unk_2799FCDC0;
  objc_copyWeak(&v11, &location);
  v12 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(delegateQueue, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __48__PUConnection_didEnableOnlyRemoteUnlock_error___block_invoke(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 48));
  v2 = objc_loadWeakRetained(&to);
  v3 = [v2 delegateIfRespondsToSelector:sel_unlockConnection_didEnableOnlyRemoteUnlock_error_];

  if (v3)
  {
    [v3 unlockConnection:*(a1 + 32) didEnableOnlyRemoteUnlock:*(a1 + 56) error:*(a1 + 40)];
  }

  objc_destroyWeak(&to);
}

- (void)didDisableOnlyRemoteUnlock:(BOOL)a3 error:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__PUConnection_didDisableOnlyRemoteUnlock_error___block_invoke;
  block[3] = &unk_2799FCDC0;
  objc_copyWeak(&v11, &location);
  v12 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(delegateQueue, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __49__PUConnection_didDisableOnlyRemoteUnlock_error___block_invoke(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 48));
  v2 = objc_loadWeakRetained(&to);
  v3 = [v2 delegateIfRespondsToSelector:sel_unlockConnection_didDisableOnlyRemoteUnlock_error_];

  if (v3)
  {
    [v3 unlockConnection:*(a1 + 32) didDisableOnlyRemoteUnlock:*(a1 + 56) error:*(a1 + 40)];
  }

  objc_destroyWeak(&to);
}

- (void)remoteDeviceDidCompleteRemoteAction:(BOOL)a3 remoteDeviceState:(id)a4 error:(id)a5
{
  v8 = a4;
  v9 = a5;
  objc_initWeak(&location, self);
  delegateQueue = self->_delegateQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__PUConnection_remoteDeviceDidCompleteRemoteAction_remoteDeviceState_error___block_invoke;
  v13[3] = &unk_2799FCDE8;
  objc_copyWeak(&v16, &location);
  v17 = a3;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(delegateQueue, v13);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __76__PUConnection_remoteDeviceDidCompleteRemoteAction_remoteDeviceState_error___block_invoke(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 56));
  v2 = objc_loadWeakRetained(&to);
  v3 = [v2 delegateIfRespondsToSelector:sel_unlockConnection_remoteDeviceDidCompleteRemoteAction_remoteDeviceState_error_];

  if (v3)
  {
    [v3 unlockConnection:*(a1 + 32) remoteDeviceDidCompleteRemoteAction:*(a1 + 64) remoteDeviceState:*(a1 + 40) error:*(a1 + 48)];
  }

  objc_destroyWeak(&to);
}

- (void)remoteDeviceDidUnlock
{
  objc_initWeak(&location, self);
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__PUConnection_remoteDeviceDidUnlock__block_invoke;
  block[3] = &unk_2799FCE10;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(delegateQueue, block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __37__PUConnection_remoteDeviceDidUnlock__block_invoke(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 40));
  v2 = objc_loadWeakRetained(&to);
  v3 = [v2 delegateIfRespondsToSelector:sel_unlockConnectionRemoteDeviceDidUnlock_];

  if (v3)
  {
    [v3 unlockConnectionRemoteDeviceDidUnlock:*(a1 + 32)];
  }

  objc_destroyWeak(&to);
}

- (void)didGetRemoteDeviceState:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__PUConnection_didGetRemoteDeviceState_error___block_invoke;
  block[3] = &unk_2799FCE38;
  objc_copyWeak(&v15, &location);
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(delegateQueue, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __46__PUConnection_didGetRemoteDeviceState_error___block_invoke(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 56));
  v2 = objc_loadWeakRetained(&to);
  v3 = [v2 delegateIfRespondsToSelector:sel_unlockConnection_remoteDeviceDidNotifyState_];

  if (!*(a1 + 32) && v3)
  {
    [v3 unlockConnection:*(a1 + 40) remoteDeviceDidNotifyState:*(a1 + 48)];
  }

  objc_destroyWeak(&to);
}

- (void)remoteDeviceDidRemoveLockout:(BOOL)a3 error:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  delegateQueue = self->_delegateQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__PUConnection_remoteDeviceDidRemoveLockout_error___block_invoke;
  v9[3] = &unk_2799FCE60;
  objc_copyWeak(&v11, &location);
  v12 = a3;
  v10 = v6;
  v8 = v6;
  dispatch_async(delegateQueue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __51__PUConnection_remoteDeviceDidRemoveLockout_error___block_invoke(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 40));
  v2 = objc_loadWeakRetained(&to);
  v3 = [v2 remoteDeviceRemoveLockoutHandler];

  if (v3)
  {
    v4 = objc_loadWeakRetained(&to);
    v5 = [v4 remoteDeviceRemoveLockoutHandler];
    v5[2](v5, *(a1 + 48), *(a1 + 32));

    v6 = objc_loadWeakRetained(&to);
    [v6 setRemoteDeviceRemoveLockoutHandler:0];
  }

  objc_destroyWeak(&to);
}

- (PUConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end