@interface FAFamilyNotifier
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (FAFamilyNotificationDelegate)delegate;
- (FAFamilyNotifier)initWithIdentifier:(id)identifier machServiceName:(id)name;
- (id)_pendingNotificationsWithClientIdentifier:(id)identifier;
- (id)agentConnection;
- (id)pendingNotifications;
- (void)_agentConnectionFailedToBootstrap;
- (void)_agentConnectionWasInterrupted;
- (void)_agentConnectionWasInvalidated;
- (void)deliverNotification:(id)notification;
- (void)didActivateNotification:(id)notification;
- (void)didClearNotification:(id)notification;
- (void)didDismissNotification:(id)notification;
- (void)removeAllNotifications;
- (void)removeNotificationWithIdentifier:(id)identifier;
@end

@implementation FAFamilyNotifier

- (FAFamilyNotifier)initWithIdentifier:(id)identifier machServiceName:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  v9 = [(FAFamilyNotifier *)self init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    connLock = v9->_connLock;
    v9->_connLock = v10;

    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v9->_serviceName, name);
    if (v9->_serviceName)
    {
      v12 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:nameCopy];
      listener = v9->_listener;
      v9->_listener = v12;

      [(NSXPCListener *)v9->_listener setDelegate:v9];
      [(NSXPCListener *)v9->_listener resume];
    }

    v14 = v9;
  }

  return v9;
}

- (void)deliverNotification:(id)notification
{
  notificationCopy = notification;
  agentConnection = [(FAFamilyNotifier *)self agentConnection];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__FAFamilyNotifier_deliverNotification___block_invoke;
  v8[3] = &unk_278FF4B30;
  v9 = notificationCopy;
  v6 = notificationCopy;
  v7 = [agentConnection remoteObjectProxyWithErrorHandler:v8];

  [v7 deliverNotificaton:v6];
}

void __40__FAFamilyNotifier_deliverNotification___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 136315650;
    v8 = "[FAFamilyNotifier deliverNotification:]_block_invoke";
    v9 = 2112;
    v10 = v5;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_24AAE4000, v4, OS_LOG_TYPE_DEFAULT, "%s: XPC error delivering notification %@ - %@", &v7, 0x20u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeNotificationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  agentConnection = [(FAFamilyNotifier *)self agentConnection];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__FAFamilyNotifier_removeNotificationWithIdentifier___block_invoke;
  v8[3] = &unk_278FF4B30;
  v9 = identifierCopy;
  v6 = identifierCopy;
  v7 = [agentConnection remoteObjectProxyWithErrorHandler:v8];

  [v7 removeNotificationWithIdentifier:v6];
}

void __53__FAFamilyNotifier_removeNotificationWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 136315650;
    v8 = "[FAFamilyNotifier removeNotificationWithIdentifier:]_block_invoke";
    v9 = 2112;
    v10 = v5;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_24AAE4000, v4, OS_LOG_TYPE_DEFAULT, "%s: XPC error removing notification with identifier %@ - %@", &v7, 0x20u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeAllNotifications
{
  agentConnection = [(FAFamilyNotifier *)self agentConnection];
  v3 = [agentConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_0];

  [v3 removeAllNotifications];
}

void __42__FAFamilyNotifier_removeAllNotifications__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[FAFamilyNotifier removeAllNotifications]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&dword_24AAE4000, v3, OS_LOG_TYPE_DEFAULT, "%s: XPC error removing all notifications - %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (id)_pendingNotificationsWithClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = dispatch_semaphore_create(0);
  agentConnection = [(FAFamilyNotifier *)self agentConnection];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __62__FAFamilyNotifier__pendingNotificationsWithClientIdentifier___block_invoke;
  v21[3] = &unk_278FF4B30;
  v7 = v5;
  v22 = v7;
  v8 = [agentConnection remoteObjectProxyWithErrorHandler:v21];

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__FAFamilyNotifier__pendingNotificationsWithClientIdentifier___block_invoke_2;
  v12[3] = &unk_278FF4B78;
  v14 = &v15;
  v9 = v7;
  v13 = v9;
  [v8 pendingNotificationsWithIdentifier:identifierCopy replyBlock:v12];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

void __62__FAFamilyNotifier__pendingNotificationsWithClientIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[FAFamilyNotifier _pendingNotificationsWithClientIdentifier:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_24AAE4000, v4, OS_LOG_TYPE_DEFAULT, "%s: XPC error removing all notifications - %@", &v6, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 32));
  v5 = *MEMORY[0x277D85DE8];
}

void __62__FAFamilyNotifier__pendingNotificationsWithClientIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)pendingNotifications
{
  identifier = [(FAFamilyNotifier *)self identifier];
  v4 = [(FAFamilyNotifier *)self _pendingNotificationsWithClientIdentifier:identifier];

  return v4;
}

- (id)agentConnection
{
  [(NSLock *)self->_connLock lock];
  if (!self->_conn)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.familynotification.agent" options:4096];
    conn = self->_conn;
    self->_conn = v3;

    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285E0C520];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    [v5 setClasses:v8 forSelector:sel_pendingNotificationsWithIdentifier_replyBlock_ argumentIndex:0 ofReply:1];

    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x3032000000;
    v21[3] = __Block_byref_object_copy_;
    v21[4] = __Block_byref_object_dispose_;
    selfCopy = self;
    v22 = selfCopy;
    v10 = self->_conn;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __35__FAFamilyNotifier_agentConnection__block_invoke;
    v20[3] = &unk_278FF4BA0;
    v20[4] = v21;
    [(NSXPCConnection *)v10 setInterruptionHandler:v20];
    v11 = self->_conn;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __35__FAFamilyNotifier_agentConnection__block_invoke_2;
    v19[3] = &unk_278FF4BA0;
    v19[4] = v21;
    [(NSXPCConnection *)v11 setInvalidationHandler:v19];
    [(NSXPCConnection *)self->_conn setRemoteObjectInterface:v5];
    v12 = self->_conn;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __35__FAFamilyNotifier_agentConnection__block_invoke_3;
    v18[3] = &unk_278FF4BC8;
    v18[4] = v21;
    v13 = [(NSXPCConnection *)v12 remoteObjectProxyWithErrorHandler:v18];
    identifier = [(FAFamilyNotifier *)selfCopy identifier];
    [v13 setClientIdentifier:identifier];

    serviceName = [(FAFamilyNotifier *)selfCopy serviceName];
    [v13 setDelegateMachServiceName:serviceName];

    [(NSXPCConnection *)self->_conn resume];
    _Block_object_dispose(v21, 8);
  }

  [(NSLock *)self->_connLock unlock];
  v16 = self->_conn;

  return v16;
}

void __35__FAFamilyNotifier_agentConnection__block_invoke_3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[FAFamilyNotifier agentConnection]_block_invoke_3";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_24AAE4000, v4, OS_LOG_TYPE_DEFAULT, "%s: XPC error bootstrapping remote client interface - %@", &v6, 0x16u);
  }

  [*(*(*(a1 + 32) + 8) + 40) _agentConnectionFailedToBootstrap];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_agentConnectionWasInterrupted
{
  v8 = *MEMORY[0x277D85DE8];
  [(NSLock *)self->_connLock lock];
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[FAFamilyNotifier _agentConnectionWasInterrupted]";
    _os_log_impl(&dword_24AAE4000, v3, OS_LOG_TYPE_DEFAULT, "%s: agent connection interrupted. Disposing of connection.", &v6, 0xCu);
  }

  conn = self->_conn;
  self->_conn = 0;

  [(NSLock *)self->_connLock unlock];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_agentConnectionWasInvalidated
{
  v8 = *MEMORY[0x277D85DE8];
  [(NSLock *)self->_connLock lock];
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[FAFamilyNotifier _agentConnectionWasInvalidated]";
    _os_log_impl(&dword_24AAE4000, v3, OS_LOG_TYPE_DEFAULT, "%s: agent connection invalidated. Disposing of connection.", &v6, 0xCu);
  }

  conn = self->_conn;
  self->_conn = 0;

  [(NSLock *)self->_connLock unlock];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_agentConnectionFailedToBootstrap
{
  v8 = *MEMORY[0x277D85DE8];
  [(NSLock *)self->_connLock lock];
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[FAFamilyNotifier _agentConnectionFailedToBootstrap]";
    _os_log_impl(&dword_24AAE4000, v3, OS_LOG_TYPE_DEFAULT, "%s: agent connection failed to bootstrap. Disposing of connection.", &v6, 0xCu);
  }

  conn = self->_conn;
  self->_conn = 0;

  [(NSLock *)self->_connLock unlock];
  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v5 = MEMORY[0x277CCAE90];
  connectionCopy = connection;
  v7 = [v5 interfaceWithProtocol:&unk_285E0B660];
  [connectionCopy setExportedInterface:v7];
  [connectionCopy setExportedObject:self];
  [connectionCopy resume];

  return 1;
}

- (void)didActivateNotification:(id)notification
{
  notificationCopy = notification;
  delegate = [(FAFamilyNotifier *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(FAFamilyNotifier *)self delegate];
    [delegate2 didActivateFamilyNotification:notificationCopy];
  }
}

- (void)didDismissNotification:(id)notification
{
  notificationCopy = notification;
  delegate = [(FAFamilyNotifier *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(FAFamilyNotifier *)self delegate];
    [delegate2 didDismissFamilyNotification:notificationCopy];
  }
}

- (void)didClearNotification:(id)notification
{
  notificationCopy = notification;
  delegate = [(FAFamilyNotifier *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(FAFamilyNotifier *)self delegate];
    [delegate2 didClearFamilyNotification:notificationCopy];
  }
}

- (FAFamilyNotificationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end