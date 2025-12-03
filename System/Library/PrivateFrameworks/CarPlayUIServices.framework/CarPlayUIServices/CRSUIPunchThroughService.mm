@interface CRSUIPunchThroughService
- (CRSUIPunchThroughService)initWithDelegate:(id)delegate;
- (CRSUIPunchThroughServiceDelegate)delegate;
- (void)_connectionQueue_addConnection:(id)connection;
- (void)_connectionQueue_removeConnection:(id)connection;
- (void)clientRequestDismissalForPunchThroughIdentifier:(id)identifier completion:(id)completion;
- (void)clientRequestPresentationForPunchThroughIdentifier:(id)identifier completion:(id)completion;
- (void)invalidate;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)punchThroughIdentifierDidDismiss:(id)dismiss;
@end

@implementation CRSUIPunchThroughService

- (CRSUIPunchThroughService)initWithDelegate:(id)delegate
{
  v26 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v23.receiver = self;
  v23.super_class = CRSUIPunchThroughService;
  v5 = [(CRSUIPunchThroughService *)&v23 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v6->_lock._os_unfair_lock_opaque = 0;
    Serial = BSDispatchQueueCreateSerial();
    connectionQueue = v6->_connectionQueue;
    v6->_connectionQueue = Serial;

    v9 = [MEMORY[0x277CCAA50] hashTableWithOptions:512];
    connections = v6->_connections;
    v6->_connections = v9;

    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    connectionToPunchThroughIdentifierMap = v6->_connectionToPunchThroughIdentifierMap;
    v6->_connectionToPunchThroughIdentifierMap = strongToStrongObjectsMapTable;

    v13 = MEMORY[0x277CF32A0];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __45__CRSUIPunchThroughService_initWithDelegate___block_invoke;
    v21[3] = &unk_278DA0B08;
    v14 = v6;
    v22 = v14;
    v15 = [v13 listenerWithConfigurator:v21];
    v16 = v14[3];
    v14[3] = v15;

    v17 = CRSUILogForCategory(5uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v14[3];
      *buf = 138412290;
      v25 = v18;
      _os_log_impl(&dword_243218000, v17, OS_LOG_TYPE_DEFAULT, "Activating listener! %@", buf, 0xCu);
    }

    [v14[3] activate];
  }

  v19 = *MEMORY[0x277D85DE8];
  return v6;
}

void __45__CRSUIPunchThroughService_initWithDelegate___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setDomain:@"com.apple.CarPlay.PunchThrough"];
  v3 = +[CRSUIPunchThroughSpecification identifier];
  [v4 setService:v3];

  [v4 setDelegate:*(a1 + 32)];
}

- (void)punchThroughIdentifierDidDismiss:(id)dismiss
{
  v23 = *MEMORY[0x277D85DE8];
  dismissCopy = dismiss;
  os_unfair_lock_lock(&self->_lock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_connectionToPunchThroughIdentifierMap;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(NSMapTable *)self->_connectionToPunchThroughIdentifierMap objectForKey:v9, v14];
        if ([v10 isEqual:dismissCopy])
        {
          v6 = v9;

          goto LABEL_11;
        }
      }

      v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v14 objects:v22 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&self->_lock);
  if (v6)
  {
    v11 = CRSUILogForCategory(5uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v19 = dismissCopy;
      v20 = 2114;
      v21 = v6;
      _os_log_impl(&dword_243218000, v11, OS_LOG_TYPE_DEFAULT, "Punch through %{public}@ dismissed by server, informing client %{public}@", buf, 0x16u);
    }

    remoteTarget = [v6 remoteTarget];
    [remoteTarget serverDismissedPunchThroughIdentifier:dismissCopy];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v3 = CRSUILogForCategory(5uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_243218000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating service", v5, 2u);
  }

  listener = [(CRSUIPunchThroughService *)self listener];
  [listener invalidate];
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  v30 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  contextCopy = context;
  v11 = CRSUILogForCategory(5uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v29 = connectionCopy;
    _os_log_impl(&dword_243218000, v11, OS_LOG_TYPE_INFO, "Received connection! %@", buf, 0xCu);
  }

  remoteProcess = [connectionCopy remoteProcess];
  v13 = [remoteProcess hasEntitlement:@"com.apple.private.CarPlayUIServices.punch-through"];

  if (v13)
  {
    objc_initWeak(&location, self);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __70__CRSUIPunchThroughService_listener_didReceiveConnection_withContext___block_invoke;
    v25[3] = &unk_278DA0CF0;
    objc_copyWeak(&v26, &location);
    [connectionCopy configureConnection:v25];
    v14 = CRSUILogForCategory(5uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = connectionCopy;
      _os_log_impl(&dword_243218000, v14, OS_LOG_TYPE_DEFAULT, "Activating connection... %@", buf, 0xCu);
    }

    connectionQueue = [(CRSUIPunchThroughService *)self connectionQueue];
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __70__CRSUIPunchThroughService_listener_didReceiveConnection_withContext___block_invoke_13;
    v22 = &unk_278DA0D18;
    selfCopy = self;
    v16 = connectionCopy;
    v24 = v16;
    dispatch_async(connectionQueue, &v19);

    [v16 activate];
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  else
  {
    v17 = CRSUILogForCategory(5uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CRSUIPunchThroughService listener:connectionCopy didReceiveConnection:v17 withContext:?];
    }

    [connectionCopy invalidate];
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __70__CRSUIPunchThroughService_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[CRSUIPunchThroughSpecification serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = +[CRSUIPunchThroughSpecification interface];
  [v3 setInterface:v5];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 setInterfaceTarget:WeakRetained];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__CRSUIPunchThroughService_listener_didReceiveConnection_withContext___block_invoke_2;
  v9[3] = &unk_278DA0B30;
  objc_copyWeak(&v10, (a1 + 32));
  [v3 setInvalidationHandler:v9];
  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v7 connectionQueue];
  [v3 setTargetQueue:v8];

  objc_destroyWeak(&v10);
}

void __70__CRSUIPunchThroughService_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CRSUILogForCategory(5uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __70__CRSUIClusterThemeService_listener_didReceiveConnection_withContext___block_invoke_2_cold_1(v3, v4);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionQueue_removeConnection:v3];
}

- (void)clientRequestPresentationForPunchThroughIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  connectionQueue = [(CRSUIPunchThroughService *)self connectionQueue];
  BSDispatchQueueAssert();

  os_unfair_lock_lock(&self->_lock);
  currentContext = [MEMORY[0x277CF3280] currentContext];
  connectionToPunchThroughIdentifierMap = [(CRSUIPunchThroughService *)self connectionToPunchThroughIdentifierMap];
  [connectionToPunchThroughIdentifierMap setObject:identifierCopy forKey:currentContext];

  os_unfair_lock_unlock(&self->_lock);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __90__CRSUIPunchThroughService_clientRequestPresentationForPunchThroughIdentifier_completion___block_invoke;
  v12[3] = &unk_278DA0D18;
  v12[4] = self;
  v13 = identifierCopy;
  v11 = identifierCopy;
  dispatch_async(MEMORY[0x277D85CD0], v12);
  completionCopy[2](completionCopy, 0);
}

void __90__CRSUIPunchThroughService_clientRequestPresentationForPunchThroughIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 punchThroughService:*(a1 + 32) presentPunchThroughWithIdentifier:*(a1 + 40)];
}

- (void)clientRequestDismissalForPunchThroughIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  connectionQueue = [(CRSUIPunchThroughService *)self connectionQueue];
  BSDispatchQueueAssert();

  os_unfair_lock_lock(&self->_lock);
  currentContext = [MEMORY[0x277CF3280] currentContext];
  connectionToPunchThroughIdentifierMap = [(CRSUIPunchThroughService *)self connectionToPunchThroughIdentifierMap];
  [connectionToPunchThroughIdentifierMap removeObjectForKey:currentContext];

  os_unfair_lock_unlock(&self->_lock);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __87__CRSUIPunchThroughService_clientRequestDismissalForPunchThroughIdentifier_completion___block_invoke;
  v12[3] = &unk_278DA0D18;
  v12[4] = self;
  v13 = identifierCopy;
  v11 = identifierCopy;
  dispatch_async(MEMORY[0x277D85CD0], v12);
  completionCopy[2](completionCopy, 0);
}

void __87__CRSUIPunchThroughService_clientRequestDismissalForPunchThroughIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 punchThroughService:*(a1 + 32) dismissPunchThroughWithIdentifier:*(a1 + 40)];
}

- (void)_connectionQueue_addConnection:(id)connection
{
  connectionCopy = connection;
  connections = [(CRSUIPunchThroughService *)self connections];
  [connections addObject:connectionCopy];
}

- (void)_connectionQueue_removeConnection:(id)connection
{
  connectionCopy = connection;
  connections = [(CRSUIPunchThroughService *)self connections];
  [connections removeObject:connectionCopy];

  os_unfair_lock_lock(&self->_lock);
  currentContext = [MEMORY[0x277CF3280] currentContext];
  connectionToPunchThroughIdentifierMap = [(CRSUIPunchThroughService *)self connectionToPunchThroughIdentifierMap];
  v8 = [connectionToPunchThroughIdentifierMap objectForKey:currentContext];

  if (v8)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __62__CRSUIPunchThroughService__connectionQueue_removeConnection___block_invoke;
    v9[3] = &unk_278DA0D18;
    v9[4] = self;
    v10 = v8;
    dispatch_async(MEMORY[0x277D85CD0], v9);
  }

  os_unfair_lock_unlock(&self->_lock);
}

void __62__CRSUIPunchThroughService__connectionQueue_removeConnection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 punchThroughService:*(a1 + 32) dismissPunchThroughWithIdentifier:*(a1 + 40)];
}

- (CRSUIPunchThroughServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)listener:(void *)a1 didReceiveConnection:(NSObject *)a2 withContext:.cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 remoteProcess];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_243218000, a2, OS_LOG_TYPE_ERROR, "Process does not have the required entitlement: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end