@interface _COTimerManagerConnectionProvider
- (NSXPCConnection)timerManagerServiceConnection;
@end

@implementation _COTimerManagerConnectionProvider

- (NSXPCConnection)timerManagerServiceConnection
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_timerManagerServiceConnection;
  if (!v3)
  {
    if (!v2->_timerManagerServiceConnection)
    {
      v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.coordination.timers" options:4096];
      timerManagerServiceConnection = v2->_timerManagerServiceConnection;
      v2->_timerManagerServiceConnection = v4;
    }

    objc_initWeak(&location, v2);
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __66___COTimerManagerConnectionProvider_timerManagerServiceConnection__block_invoke;
    v11 = &unk_278E12940;
    objc_copyWeak(&v12, &location);
    v6 = MEMORY[0x245D5F6A0](&v8);
    [(NSXPCConnection *)v2->_timerManagerServiceConnection setInterruptionHandler:v6, v8, v9, v10, v11];
    [(NSXPCConnection *)v2->_timerManagerServiceConnection setInvalidationHandler:v6];
    v3 = v2->_timerManagerServiceConnection;

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(v2);

  return v3;
}

@end