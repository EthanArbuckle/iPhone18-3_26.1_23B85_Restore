@interface _COAlarmManagerConnectionProvider
- (NSXPCConnection)alarmManagerServiceConnection;
@end

@implementation _COAlarmManagerConnectionProvider

- (NSXPCConnection)alarmManagerServiceConnection
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_alarmManagerServiceConnection;
  if (!v3)
  {
    if (!v2->_alarmManagerServiceConnection)
    {
      v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.coordination.alarms" options:4096];
      alarmManagerServiceConnection = v2->_alarmManagerServiceConnection;
      v2->_alarmManagerServiceConnection = v4;
    }

    objc_initWeak(&location, v2);
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __66___COAlarmManagerConnectionProvider_alarmManagerServiceConnection__block_invoke;
    v11 = &unk_278E12940;
    objc_copyWeak(&v12, &location);
    v6 = MEMORY[0x245D5F6A0](&v8);
    [(NSXPCConnection *)v2->_alarmManagerServiceConnection setInterruptionHandler:v6, v8, v9, v10, v11];
    [(NSXPCConnection *)v2->_alarmManagerServiceConnection setInvalidationHandler:v6];
    v3 = v2->_alarmManagerServiceConnection;

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(v2);

  return v3;
}

@end