@interface PUConnection
+ (id)clientInterface;
+ (id)serverInterface;
- (PUConnection)initWithDelegate:(id)delegate;
- (PUConnectionDelegate)delegate;
- (const)queueNameWithSuffix:(id)suffix;
- (id)delegateIfRespondsToSelector:(SEL)selector;
- (id)serverConnection;
- (void)dealloc;
- (void)didDisableOnlyRemoteUnlock:(BOOL)unlock error:(id)error;
- (void)didEnableOnlyRemoteUnlock:(BOOL)unlock error:(id)error;
- (void)didGetRemoteDeviceState:(id)state error:(id)error;
- (void)didPairForUnlock:(BOOL)unlock error:(id)error;
- (void)didUnpairForUnlock:(BOOL)unlock error:(id)error;
- (void)disableOnlyRemoteUnlock;
- (void)enableOnlyRemoteUnlockWithPasscode:(id)passcode;
- (void)getRemoteDeviceState:(id)state;
- (void)pairForUnlockWithPasscode:(id)passcode;
- (void)queryRemoteDeviceState:(id)state;
- (void)remoteDeviceDidCompleteRemoteAction:(BOOL)action remoteDeviceState:(id)state error:(id)error;
- (void)remoteDeviceDidRemoveLockout:(BOOL)lockout error:(id)error;
- (void)remoteDeviceDidUnlock;
- (void)requestRemoteDeviceRemoteAction:(int64_t)action type:(int64_t)type;
- (void)requestRemoteDeviceRemoveLockout:(id)lockout;
- (void)requestRemoteDeviceUnlockNotification;
- (void)setServerConnection:(id)connection;
- (void)unpairForUnlock;
@end

@implementation PUConnection

- (PUConnection)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
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

    objc_storeWeak(&v6->_delegate, delegateCopy);
    v11 = [[PUConnectionUnlockClient alloc] initWithConnection:v6];
    unlockClient = v6->_unlockClient;
    v6->_unlockClient = v11;
  }

  return v6;
}

- (const)queueNameWithSuffix:(id)suffix
{
  v3 = MEMORY[0x277CCACA8];
  suffixCopy = suffix;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  suffixCopy = [v3 stringWithFormat:@"%@-%@", v6, suffixCopy];

  uTF8String = [suffixCopy UTF8String];
  return uTF8String;
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

- (void)setServerConnection:(id)connection
{
  connectionCopy = connection;
  serverConnectionQueue = self->_serverConnectionQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__PUConnection_setServerConnection___block_invoke;
  v7[3] = &unk_2799FCD20;
  v7[4] = self;
  v8 = connectionCopy;
  v6 = connectionCopy;
  dispatch_async(serverConnectionQueue, v7);
}

- (void)pairForUnlockWithPasscode:(id)passcode
{
  passcodeCopy = passcode;
  serverConnection = [(PUConnection *)self serverConnection];
  remoteObjectProxy = [serverConnection remoteObjectProxy];
  [remoteObjectProxy pairForUnlockWithPasscode:passcodeCopy];
}

- (void)unpairForUnlock
{
  serverConnection = [(PUConnection *)self serverConnection];
  remoteObjectProxy = [serverConnection remoteObjectProxy];
  [remoteObjectProxy unpairForUnlock];
}

- (void)enableOnlyRemoteUnlockWithPasscode:(id)passcode
{
  passcodeCopy = passcode;
  serverConnection = [(PUConnection *)self serverConnection];
  remoteObjectProxy = [serverConnection remoteObjectProxy];
  [remoteObjectProxy enableOnlyRemoteUnlockWithPasscode:passcodeCopy];
}

- (void)disableOnlyRemoteUnlock
{
  serverConnection = [(PUConnection *)self serverConnection];
  remoteObjectProxy = [serverConnection remoteObjectProxy];
  [remoteObjectProxy disableOnlyRemoteUnlock];
}

- (void)requestRemoteDeviceRemoteAction:(int64_t)action type:(int64_t)type
{
  serverConnection = [(PUConnection *)self serverConnection];
  remoteObjectProxy = [serverConnection remoteObjectProxy];
  [remoteObjectProxy requestRemoteDeviceRemoteAction:action type:type];
}

- (void)requestRemoteDeviceUnlockNotification
{
  serverConnection = [(PUConnection *)self serverConnection];
  remoteObjectProxy = [serverConnection remoteObjectProxy];
  [remoteObjectProxy requestRemoteDeviceUnlockNotification];
}

- (void)requestRemoteDeviceRemoveLockout:(id)lockout
{
  lockoutCopy = lockout;
  objc_initWeak(&location, self);
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__PUConnection_requestRemoteDeviceRemoveLockout___block_invoke;
  block[3] = &unk_2799FCD48;
  objc_copyWeak(&v9, &location);
  v8 = lockoutCopy;
  v6 = lockoutCopy;
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

- (void)getRemoteDeviceState:(id)state
{
  stateCopy = state;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__PUConnection_getRemoteDeviceState___block_invoke;
  v6[3] = &unk_2799FCD98;
  v7 = stateCopy;
  v5 = stateCopy;
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

- (void)queryRemoteDeviceState:(id)state
{
  stateCopy = state;
  serverConnection = [(PUConnection *)self serverConnection];
  remoteObjectProxy = [serverConnection remoteObjectProxy];
  [remoteObjectProxy queryRemoteDeviceState:stateCopy];
}

- (id)delegateIfRespondsToSelector:(SEL)selector
{
  delegate = [(PUConnection *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    delegate = 0;
  }

  return delegate;
}

- (void)didPairForUnlock:(BOOL)unlock error:(id)error
{
  errorCopy = error;
  objc_initWeak(&location, self);
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__PUConnection_didPairForUnlock_error___block_invoke;
  block[3] = &unk_2799FCDC0;
  objc_copyWeak(&v11, &location);
  unlockCopy = unlock;
  block[4] = self;
  v10 = errorCopy;
  v8 = errorCopy;
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

- (void)didUnpairForUnlock:(BOOL)unlock error:(id)error
{
  errorCopy = error;
  objc_initWeak(&location, self);
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__PUConnection_didUnpairForUnlock_error___block_invoke;
  block[3] = &unk_2799FCDC0;
  objc_copyWeak(&v11, &location);
  unlockCopy = unlock;
  block[4] = self;
  v10 = errorCopy;
  v8 = errorCopy;
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

- (void)didEnableOnlyRemoteUnlock:(BOOL)unlock error:(id)error
{
  errorCopy = error;
  objc_initWeak(&location, self);
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__PUConnection_didEnableOnlyRemoteUnlock_error___block_invoke;
  block[3] = &unk_2799FCDC0;
  objc_copyWeak(&v11, &location);
  unlockCopy = unlock;
  block[4] = self;
  v10 = errorCopy;
  v8 = errorCopy;
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

- (void)didDisableOnlyRemoteUnlock:(BOOL)unlock error:(id)error
{
  errorCopy = error;
  objc_initWeak(&location, self);
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__PUConnection_didDisableOnlyRemoteUnlock_error___block_invoke;
  block[3] = &unk_2799FCDC0;
  objc_copyWeak(&v11, &location);
  unlockCopy = unlock;
  block[4] = self;
  v10 = errorCopy;
  v8 = errorCopy;
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

- (void)remoteDeviceDidCompleteRemoteAction:(BOOL)action remoteDeviceState:(id)state error:(id)error
{
  stateCopy = state;
  errorCopy = error;
  objc_initWeak(&location, self);
  delegateQueue = self->_delegateQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__PUConnection_remoteDeviceDidCompleteRemoteAction_remoteDeviceState_error___block_invoke;
  v13[3] = &unk_2799FCDE8;
  objc_copyWeak(&v16, &location);
  actionCopy = action;
  v13[4] = self;
  v14 = stateCopy;
  v15 = errorCopy;
  v11 = errorCopy;
  v12 = stateCopy;
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

- (void)didGetRemoteDeviceState:(id)state error:(id)error
{
  stateCopy = state;
  errorCopy = error;
  objc_initWeak(&location, self);
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__PUConnection_didGetRemoteDeviceState_error___block_invoke;
  block[3] = &unk_2799FCE38;
  objc_copyWeak(&v15, &location);
  v12 = errorCopy;
  selfCopy = self;
  v14 = stateCopy;
  v9 = stateCopy;
  v10 = errorCopy;
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

- (void)remoteDeviceDidRemoveLockout:(BOOL)lockout error:(id)error
{
  errorCopy = error;
  objc_initWeak(&location, self);
  delegateQueue = self->_delegateQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__PUConnection_remoteDeviceDidRemoveLockout_error___block_invoke;
  v9[3] = &unk_2799FCE60;
  objc_copyWeak(&v11, &location);
  lockoutCopy = lockout;
  v10 = errorCopy;
  v8 = errorCopy;
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