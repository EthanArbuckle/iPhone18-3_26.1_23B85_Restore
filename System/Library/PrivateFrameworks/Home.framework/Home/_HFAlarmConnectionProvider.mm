@interface _HFAlarmConnectionProvider
- (NSXPCConnection)alarmManagerServiceConnection;
@end

@implementation _HFAlarmConnectionProvider

- (NSXPCConnection)alarmManagerServiceConnection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_alarmManagerServiceConnection;
  if (!v3)
  {
    if (!selfCopy->_alarmManagerServiceConnection)
    {
      v4 = objc_alloc(MEMORY[0x277CCAE80]);
      v5 = [v4 initWithMachServiceName:*MEMORY[0x277CFCEA8] options:4096];
      alarmManagerServiceConnection = selfCopy->_alarmManagerServiceConnection;
      selfCopy->_alarmManagerServiceConnection = v5;
    }

    objc_initWeak(&location, selfCopy);
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __59___HFAlarmConnectionProvider_alarmManagerServiceConnection__block_invoke;
    v12 = &unk_277DF4460;
    objc_copyWeak(&v13, &location);
    v7 = _Block_copy(&v9);
    [(NSXPCConnection *)selfCopy->_alarmManagerServiceConnection setInterruptionHandler:v7, v9, v10, v11, v12];
    [(NSXPCConnection *)selfCopy->_alarmManagerServiceConnection setInvalidationHandler:v7];
    v3 = selfCopy->_alarmManagerServiceConnection;

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(selfCopy);

  return v3;
}

@end