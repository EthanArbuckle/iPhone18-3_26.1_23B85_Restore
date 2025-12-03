@interface BLTRemotePingSubscriberService
- (BLTPingSubscribing)delegate;
- (BLTRemotePingSubscriberService)initWithMachServiceName:(id)name;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)_connect;
- (void)_createXPCService;
- (void)dealloc;
- (void)getWillNanoPresentNotificationForSectionID:(id)d completion:(id)completion;
- (void)getWillNanoPresentNotificationForSectionID:(id)d subsectionIDs:(id)ds completion:(id)completion;
- (void)pingWithBulletin:(id)bulletin;
- (void)pingWithBulletin:(id)bulletin ack:(id)ack;
- (void)pingWithRecordID:(id)d forSectionID:(id)iD;
- (void)pingWithRecordID:(id)d forSectionID:(id)iD ack:(id)ack;
- (void)sendBulletinSummary:(id)summary;
- (void)subscribeWithMachServiceName:(id)name;
- (void)unsubscribeFromSectionID:(id)d;
@end

@implementation BLTRemotePingSubscriberService

- (BLTRemotePingSubscriberService)initWithMachServiceName:(id)name
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = BLTRemotePingSubscriberService;
  v5 = [(BLTRemotePingSubscriberService *)&v10 init];
  if (v5)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v5, BLTDaemonRestarted, @"BLTDaemonRestartedNotification", 0, 0);
    v7 = [nameCopy copy];
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

- (void)unsubscribeFromSectionID:(id)d
{
  connectionToServer = self->_connectionToServer;
  dCopy = d;
  remoteObjectProxy = [(NSXPCConnection *)connectionToServer remoteObjectProxy];
  [remoteObjectProxy unsubscribeFromSectionID:dCopy];
}

- (void)pingWithBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pingWithBulletin:bulletinCopy];
}

- (void)pingWithBulletin:(id)bulletin ack:(id)ack
{
  ackCopy = ack;
  bulletinCopy = bulletin;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pingWithBulletin:bulletinCopy ack:ackCopy];
}

- (void)pingWithRecordID:(id)d forSectionID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pingWithRecordID:dCopy forSectionID:iDCopy];
}

- (void)pingWithRecordID:(id)d forSectionID:(id)iD ack:(id)ack
{
  ackCopy = ack;
  iDCopy = iD;
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pingWithRecordID:dCopy forSectionID:iDCopy ack:ackCopy];
}

- (void)sendBulletinSummary:(id)summary
{
  connectionToServer = self->_connectionToServer;
  summaryCopy = summary;
  remoteObjectProxy = [(NSXPCConnection *)connectionToServer remoteObjectProxy];
  [remoteObjectProxy sendBulletinSummary:summaryCopy];
}

- (void)getWillNanoPresentNotificationForSectionID:(id)d completion:(id)completion
{
  connectionToServer = self->_connectionToServer;
  completionCopy = completion;
  dCopy = d;
  remoteObjectProxy = [(NSXPCConnection *)connectionToServer remoteObjectProxy];
  [remoteObjectProxy getWillNanoPresentNotificationForSectionID:dCopy completion:completionCopy];
}

- (void)getWillNanoPresentNotificationForSectionID:(id)d subsectionIDs:(id)ds completion:(id)completion
{
  connectionToServer = self->_connectionToServer;
  completionCopy = completion;
  dsCopy = ds;
  dCopy = d;
  remoteObjectProxy = [(NSXPCConnection *)connectionToServer remoteObjectProxy];
  [remoteObjectProxy getWillNanoPresentNotificationForSectionID:dCopy subsectionIDs:dsCopy completion:completionCopy];
}

- (void)subscribeWithMachServiceName:(id)name
{
  v4 = [name copy];
  machServiceName = self->_machServiceName;
  self->_machServiceName = v4;

  [(BLTRemotePingSubscriberService *)self _createXPCService];
  remoteObjectProxy = [(NSXPCConnection *)self->_connectionToServer remoteObjectProxy];
  [remoteObjectProxy subscribeWithMachServiceName:self->_machServiceName];
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
    exportedObject = [(NSXPCConnection *)self->_connectionToServer exportedObject];
    [exportedObject subscribeWithMachServiceName:self->_machServiceName];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  subscriptionInfos = [WeakRetained subscriptionInfos];

  v12 = [subscriptionInfos countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(subscriptionInfos);
        }

        v16 = *(*(&v21 + 1) + 8 * v15);
        remoteObjectProxy = [(NSXPCConnection *)self->_connectionToServer remoteObjectProxy];
        sectionID = [v16 sectionID];
        [remoteObjectProxy subscribeToSectionID:sectionID forFullBulletins:objc_msgSend(v16 withAck:"forBulletin") ackAllowedOnLocalConnection:{objc_msgSend(v16, "canAck"), objc_msgSend(v16, "canAckOnLocalConnection")}];

        ++v15;
      }

      while (v13 != v15);
      v13 = [subscriptionInfos countByEnumeratingWithState:&v21 objects:v25 count:16];
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

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = [connectionCopy valueForEntitlement:@"com.apple.bulletindistributor.remotepingsubscriber"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v8 BOOLValue])
  {
    objc_storeStrong(&self->_connectionFromServer, connection);
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