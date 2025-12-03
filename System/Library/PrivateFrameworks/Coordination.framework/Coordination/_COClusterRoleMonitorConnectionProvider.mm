@interface _COClusterRoleMonitorConnectionProvider
- (NSXPCConnection)clusterRoleMonitorServiceConnection;
@end

@implementation _COClusterRoleMonitorConnectionProvider

- (NSXPCConnection)clusterRoleMonitorServiceConnection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_clusterRoleMonitorServiceConnection;
  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.coordination.role" options:4096];
    clusterRoleMonitorServiceConnection = selfCopy->_clusterRoleMonitorServiceConnection;
    selfCopy->_clusterRoleMonitorServiceConnection = v4;

    objc_initWeak(&location, selfCopy);
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __78___COClusterRoleMonitorConnectionProvider_clusterRoleMonitorServiceConnection__block_invoke;
    v11 = &unk_278E12940;
    objc_copyWeak(&v12, &location);
    v6 = MEMORY[0x245D5F6A0](&v8);
    [(NSXPCConnection *)selfCopy->_clusterRoleMonitorServiceConnection setInterruptionHandler:v6, v8, v9, v10, v11];
    [(NSXPCConnection *)selfCopy->_clusterRoleMonitorServiceConnection setInvalidationHandler:v6];
    v3 = selfCopy->_clusterRoleMonitorServiceConnection;

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(selfCopy);

  return v3;
}

@end