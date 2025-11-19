@interface BLTRemotePingSubscriberService
- (BLTPingSubscribing)delegate;
- (BLTRemotePingSubscriberService)initWithMachServiceName:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)_connect;
- (void)_createXPCService;
- (void)dealloc;
- (void)getWillNanoPresentNotificationForSectionID:(id)a3 completion:(id)a4;
- (void)getWillNanoPresentNotificationForSectionID:(id)a3 subsectionIDs:(id)a4 completion:(id)a5;
- (void)pingWithBulletin:(id)a3;
- (void)pingWithBulletin:(id)a3 ack:(id)a4;
- (void)pingWithRecordID:(id)a3 forSectionID:(id)a4;
- (void)pingWithRecordID:(id)a3 forSectionID:(id)a4 ack:(id)a5;
- (void)sendBulletinSummary:(id)a3;
- (void)subscribeWithMachServiceName:(id)a3;
- (void)unsubscribeFromSectionID:(id)a3;
@end

@implementation BLTRemotePingSubscriberService

- (BLTRemotePingSubscriberService)initWithMachServiceName:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = BLTRemotePingSubscriberService;
  v5 = [(BLTRemotePingSubscriberService *)&v10 init];
  if (v5)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v5, BLTDaemonRestarted, @"BLTDaemonRestartedNotification", 0, 0);
    v7 = [v4 copy];
    machServiceName = v5->_machServiceName;
    v5->_machServiceName = v7;

    [(BLTRemotePingSubscriberService *)v5 _createXPCService];
    [(BLTRemotePingSubscriberService *)v5 _connect];
  }

  return v5;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"BLTDaemonRestartedNotification", 0);
  [(NSXPCConnection *)self->_connectionToServer invalidate];
  connectionToServer = self->_connectionToServer;
  self->_connectionToServer = 0;

  [(NSXPCConnection *)self->_connectionFromServer invalidate];
  connectionFromServer = self->_connectionFromServer;
  self->_connectionFromServer = 0;

  v6.receiver = self;
  v6.super_class = BLTRemotePingSubscriberService;
  [(BLTRemotePingSubscriberService *)&v6 dealloc];
}

- (void)unsubscribeFromSectionID:(id)a3
{
  connectionToServer = self->_connectionToServer;
  v4 = a3;
  v5 = [(NSXPCConnection *)connectionToServer remoteObjectProxy];
  [v5 unsubscribeFromSectionID:v4];
}

- (void)pingWithBulletin:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pingWithBulletin:v4];
}

- (void)pingWithBulletin:(id)a3 ack:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pingWithBulletin:v7 ack:v6];
}

- (void)pingWithRecordID:(id)a3 forSectionID:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pingWithRecordID:v7 forSectionID:v6];
}

- (void)pingWithRecordID:(id)a3 forSectionID:(id)a4 ack:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pingWithRecordID:v10 forSectionID:v9 ack:v8];
}

- (void)sendBulletinSummary:(id)a3
{
  connectionToServer = self->_connectionToServer;
  v4 = a3;
  v5 = [(NSXPCConnection *)connectionToServer remoteObjectProxy];
  [v5 sendBulletinSummary:v4];
}

- (void)getWillNanoPresentNotificationForSectionID:(id)a3 completion:(id)a4
{
  connectionToServer = self->_connectionToServer;
  v6 = a4;
  v7 = a3;
  v8 = [(NSXPCConnection *)connectionToServer remoteObjectProxy];
  [v8 getWillNanoPresentNotificationForSectionID:v7 completion:v6];
}

- (void)getWillNanoPresentNotificationForSectionID:(id)a3 subsectionIDs:(id)a4 completion:(id)a5
{
  connectionToServer = self->_connectionToServer;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(NSXPCConnection *)connectionToServer remoteObjectProxy];
  [v11 getWillNanoPresentNotificationForSectionID:v10 subsectionIDs:v9 completion:v8];
}

- (void)subscribeWithMachServiceName:(id)a3
{
  v4 = [a3 copy];
  machServiceName = self->_machServiceName;
  self->_machServiceName = v4;

  [(BLTRemotePingSubscriberService *)self _createXPCService];
  v6 = [(NSXPCConnection *)self->_connectionToServer remoteObjectProxy];
  [v6 subscribeWithMachServiceName:self->_machServiceName];
}

- (void)_connect
{
  v26 = *MEMORY[0x277D85DE8];
  [(NSXPCConnection *)self->_connectionToServer invalidate];
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.bulletindistributord.server" options:4096];
  connectionToServer = self->_connectionToServer;
  self->_connectionToServer = v3;

  v5 = self->_connectionToServer;
  v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285454D28];
  [(NSXPCConnection *)v5 setExportedInterface:v6];

  v7 = self->_connectionToServer;
  v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28544E800];
  [(NSXPCConnection *)v7 setRemoteObjectInterface:v8];

  [(NSXPCConnection *)self->_connectionToServer setExportedObject:self];
  [(NSXPCConnection *)self->_connectionToServer resume];
  if (self->_machServiceName)
  {
    v9 = [(NSXPCConnection *)self->_connectionToServer exportedObject];
    [v9 subscribeWithMachServiceName:self->_machServiceName];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = [WeakRetained subscriptionInfos];

  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      v15 = 0;
      do
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * v15);
        v17 = [(NSXPCConnection *)self->_connectionToServer remoteObjectProxy];
        v18 = [v16 sectionID];
        [v17 subscribeToSectionID:v18 forFullBulletins:objc_msgSend(v16 withAck:"forBulletin") ackAllowedOnLocalConnection:{objc_msgSend(v16, "canAck"), objc_msgSend(v16, "canAckOnLocalConnection")}];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  v19 = objc_loadWeakRetained(&self->_delegate);
  [v19 pingSubscriberDidLoad];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_createXPCService
{
  if (self->_machServiceName)
  {
    [(NSXPCListener *)self->_listener invalidate];
    v3 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:self->_machServiceName];
    listener = self->_listener;
    self->_listener = v3;

    [(NSXPCListener *)self->_listener setDelegate:self];
    v5 = self->_listener;

    [(NSXPCListener *)v5 resume];
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 valueForEntitlement:@"com.apple.bulletindistributor.remotepingsubscriber"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v8 BOOLValue])
  {
    objc_storeStrong(&self->_connectionFromServer, a4);
    [(NSXPCConnection *)self->_connectionFromServer setExportedObject:self];
    connectionFromServer = self->_connectionFromServer;
    v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285454D28];
    [(NSXPCConnection *)connectionFromServer setExportedInterface:v10];

    v11 = self->_connectionFromServer;
    v12 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28544E800];
    [(NSXPCConnection *)v11 setRemoteObjectInterface:v12];

    objc_initWeak(&location, self);
    v13 = self->_connectionFromServer;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __69__BLTRemotePingSubscriberService_listener_shouldAcceptNewConnection___block_invoke;
    v20[3] = &unk_278D31718;
    objc_copyWeak(&v21, &location);
    [(NSXPCConnection *)v13 setInvalidationHandler:v20];
    v14 = self->_connectionFromServer;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __69__BLTRemotePingSubscriberService_listener_shouldAcceptNewConnection___block_invoke_2;
    v18[3] = &unk_278D31718;
    objc_copyWeak(&v19, &location);
    [(NSXPCConnection *)v14 setInterruptionHandler:v18];
    [(NSXPCConnection *)self->_connectionFromServer resume];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
    v15 = 1;
  }

  else
  {
    v16 = blt_general_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [BLTPingSubscriberManager listener:v16 shouldAcceptNewConnection:?];
    }

    v15 = 0;
  }

  return v15;
}

void __69__BLTRemotePingSubscriberService_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setConnectionFromServer:0];
}

void __69__BLTRemotePingSubscriberService_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setConnectionFromServer:0];
}

- (BLTPingSubscribing)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end