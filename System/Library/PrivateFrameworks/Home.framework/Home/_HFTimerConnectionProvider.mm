@interface _HFTimerConnectionProvider
- (NSXPCConnection)timerManagerServiceConnection;
@end

@implementation _HFTimerConnectionProvider

- (NSXPCConnection)timerManagerServiceConnection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_timerManagerServiceConnection;
  if (!v3)
  {
    if (!selfCopy->_timerManagerServiceConnection)
    {
      v4 = objc_alloc(MEMORY[0x277CCAE80]);
      v5 = [v4 initWithMachServiceName:*MEMORY[0x277CFD008] options:4096];
      timerManagerServiceConnection = selfCopy->_timerManagerServiceConnection;
      selfCopy->_timerManagerServiceConnection = v5;
    }

    objc_initWeak(&location, selfCopy);
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __59___HFTimerConnectionProvider_timerManagerServiceConnection__block_invoke;
    v12 = &unk_277DF4460;
    objc_copyWeak(&v13, &location);
    v7 = _Block_copy(&v9);
    [(NSXPCConnection *)selfCopy->_timerManagerServiceConnection setInterruptionHandler:v7, v9, v10, v11, v12];
    [(NSXPCConnection *)selfCopy->_timerManagerServiceConnection setInvalidationHandler:v7];
    v3 = selfCopy->_timerManagerServiceConnection;

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(selfCopy);

  return v3;
}

@end