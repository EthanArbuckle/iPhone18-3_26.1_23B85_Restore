@interface FBInterfaceOrientationServiceServer
- (FBInterfaceOrientationServiceServer)init;
- (id)_initWithDomain:(id)domain service:(id)service;
- (id)connections;
- (id)interestedConnections;
- (id)pendingConnections;
- (id)requestActiveOrientation;
- (void)_connectionInvalidated:(id)invalidated;
- (void)_lock_noteInterfaceOrientationChanged:(int64_t)changed animationSettings:(id)settings direction:(int64_t)direction;
- (void)_lock_registerOrientationInterest:(unsigned int)interest connection:(id)connection completion:(id)completion;
- (void)_lock_sendMessageToInterestedClients:(id)clients;
- (void)invalidate;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)noteInterfaceOrientationChanged:(int64_t)changed animationSettings:(id)settings direction:(int64_t)direction;
- (void)registerOrientationInterest:(id)interest completion:(id)completion;
- (void)requestActiveOrientationCompletion:(id)completion;
- (void)startService;
@end

@implementation FBInterfaceOrientationServiceServer

- (id)requestActiveOrientation
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [objc_alloc(MEMORY[0x1E699FBA0]) initWithOrientation:self->_lock_interfaceOrientation sequenceNumber:self->_lock_sequenceNumber duration:0 rotationDirection:0.0];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (FBInterfaceOrientationServiceServer)init
{
  v14 = *MEMORY[0x1E69E9840];
  bootstrapConfiguration = [MEMORY[0x1E698F508] bootstrapConfiguration];
  v4 = [bootstrapConfiguration domainForMachName:@"com.apple.frontboard.systemappservices"];
  identifier = [MEMORY[0x1E699FB98] identifier];
  v6 = [v4 serviceForIdentifier:identifier];

  if (v6)
  {
    identifier2 = [v4 identifier];
    self = [(FBInterfaceOrientationServiceServer *)self _initWithDomain:identifier2 service:identifier];

    selfCopy = self;
  }

  else
  {
    v9 = FBLogInterfaceOrientationObserver();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = identifier;
      _os_log_impl(&dword_1A89DD000, v9, OS_LOG_TYPE_INFO, "Domain is missing %@ service, not creating interface orientation server.", &v12, 0xCu);
    }

    selfCopy = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)_initWithDomain:(id)domain service:(id)service
{
  domainCopy = domain;
  serviceCopy = service;
  v29.receiver = self;
  v29.super_class = FBInterfaceOrientationServiceServer;
  v8 = [(FBInterfaceOrientationServiceServer *)&v29 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    v10 = MEMORY[0x1E698F4D0];
    serviceQuality = [MEMORY[0x1E699FB98] serviceQuality];
    v12 = [v10 queueWithName:@"FBInterfaceOrientationServiceServer" serviceQuality:serviceQuality];
    queue = v9->_queue;
    v9->_queue = v12;

    v9->_lock_sequenceNumber = 0;
    v14 = [MEMORY[0x1E695DFA8] set];
    lock_pendingConnections = v9->_lock_pendingConnections;
    v9->_lock_pendingConnections = v14;

    v16 = [MEMORY[0x1E695DFA8] set];
    lock_interestedConnections = v9->_lock_interestedConnections;
    v9->_lock_interestedConnections = v16;

    v18 = [MEMORY[0x1E695DFA8] set];
    lock_connections = v9->_lock_connections;
    v9->_lock_connections = v18;

    v9->_lock_serviceSuspended = 1;
    v20 = MEMORY[0x1E698F4B8];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __63__FBInterfaceOrientationServiceServer__initWithDomain_service___block_invoke;
    v25[3] = &unk_1E783B440;
    v26 = domainCopy;
    v27 = serviceCopy;
    v21 = v9;
    v28 = v21;
    v22 = [v20 listenerWithConfigurator:v25];
    listener = v21->_listener;
    v21->_listener = v22;
  }

  return v9;
}

void __63__FBInterfaceOrientationServiceServer__initWithDomain_service___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setDomain:v3];
  [v4 setService:a1[5]];
  [v4 setDelegate:a1[6]];
}

- (void)noteInterfaceOrientationChanged:(int64_t)changed animationSettings:(id)settings direction:(int64_t)direction
{
  settingsCopy = settings;
  os_unfair_lock_lock(&self->_lock);
  [(FBInterfaceOrientationServiceServer *)self _lock_noteInterfaceOrientationChanged:changed animationSettings:settingsCopy direction:direction];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  [(BSServiceConnectionListener *)self->_listener invalidate];
  [(NSMutableSet *)self->_lock_connections removeAllObjects];
  [(NSMutableSet *)self->_lock_pendingConnections removeAllObjects];
  [(NSMutableSet *)self->_lock_interestedConnections removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)startService
{
  v18 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_serviceSuspended)
  {
    self->_lock_serviceSuspended = 0;
    v3 = FBLogInterfaceOrientationObserver();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A89DD000, v3, OS_LOG_TYPE_DEFAULT, "Service has been started.", buf, 2u);
    }

    v4 = [(NSMutableSet *)self->_lock_pendingConnections copy];
    [(NSMutableSet *)self->_lock_pendingConnections removeAllObjects];
    os_unfair_lock_unlock(&self->_lock);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v12 + 1) + 8 * i) activate];
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v7);
    }

    v10 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v11 = *MEMORY[0x1E69E9840];

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (id)pendingConnections
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableSet *)self->_lock_pendingConnections copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)interestedConnections
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableSet *)self->_lock_interestedConnections copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)connections
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableSet *)self->_lock_connections copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  connectionCopy = connection;
  v7 = +[FBProcessManager sharedInstance];
  remoteToken = [connectionCopy remoteToken];
  v9 = remoteToken;
  if (remoteToken)
  {
    [remoteToken realToken];
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  v10 = [v7 registerProcessForAuditToken:v12];

  os_unfair_lock_lock(&self->_lock);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __81__FBInterfaceOrientationServiceServer_listener_didReceiveConnection_withContext___block_invoke;
  v11[3] = &unk_1E783B490;
  v11[4] = self;
  [connectionCopy configureConnection:v11];
  [(NSMutableSet *)self->_lock_connections addObject:connectionCopy];
  if (self->_lock_serviceSuspended)
  {
    [(NSMutableSet *)self->_lock_pendingConnections addObject:connectionCopy];
  }

  else
  {
    [connectionCopy activate];
  }

  os_unfair_lock_unlock(&self->_lock);
}

void __81__FBInterfaceOrientationServiceServer_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setQueue:*(*(a1 + 32) + 16)];
  v4 = [MEMORY[0x1E699FB98] interface];
  [v3 setInterface:v4];

  [v3 setInterfaceTarget:*(a1 + 32)];
  objc_initWeak(&location, *(a1 + 32));
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __81__FBInterfaceOrientationServiceServer_listener_didReceiveConnection_withContext___block_invoke_2;
  v5[3] = &unk_1E783B468;
  objc_copyWeak(&v6, &location);
  [v3 setInvalidationHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __81__FBInterfaceOrientationServiceServer_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionInvalidated:v3];
}

- (void)requestActiveOrientationCompletion:(id)completion
{
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  v5 = [objc_alloc(MEMORY[0x1E699FBA0]) initWithOrientation:self->_lock_interfaceOrientation sequenceNumber:self->_lock_sequenceNumber duration:0 rotationDirection:0.0];
  os_unfair_lock_unlock(&self->_lock);
  completionCopy[2](completionCopy, v5, 0);
}

- (void)registerOrientationInterest:(id)interest completion:(id)completion
{
  completionCopy = completion;
  unsignedIntValue = [interest unsignedIntValue];
  os_unfair_lock_lock(&self->_lock);
  _currentConnection = [(FBInterfaceOrientationServiceServer *)self _currentConnection];
  [(FBInterfaceOrientationServiceServer *)self _lock_registerOrientationInterest:unsignedIntValue connection:_currentConnection completion:completionCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_connectionInvalidated:(id)invalidated
{
  v9 = *MEMORY[0x1E69E9840];
  invalidatedCopy = invalidated;
  v5 = FBLogInterfaceOrientationObserver();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = invalidatedCopy;
    _os_log_impl(&dword_1A89DD000, v5, OS_LOG_TYPE_DEFAULT, "Connection invalidated %{public}@", &v7, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_lock_pendingConnections removeObject:invalidatedCopy];
  [(NSMutableSet *)self->_lock_interestedConnections removeObject:invalidatedCopy];
  [(NSMutableSet *)self->_lock_connections removeObject:invalidatedCopy];
  os_unfair_lock_unlock(&self->_lock);
  [invalidatedCopy invalidate];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_lock_noteInterfaceOrientationChanged:(int64_t)changed animationSettings:(id)settings direction:(int64_t)direction
{
  v29 = *MEMORY[0x1E69E9840];
  [settings duration];
  v9 = v8;
  v10 = FBLogInterfaceOrientationObserver();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    lock_interfaceOrientation = self->_lock_interfaceOrientation;
    v12 = BSInterfaceOrientationDescription();
    v13 = BSInterfaceOrientationDescription();
    *buf = 138543874;
    v24 = v12;
    v25 = 2114;
    v26 = v13;
    v27 = 2048;
    v28 = v9;
    _os_log_impl(&dword_1A89DD000, v10, OS_LOG_TYPE_DEFAULT, "Received active interface orientation did change from %{public}@ to %{public}@ with duration %.1f", buf, 0x20u);
  }

  if (self->_lock_interfaceOrientation != changed)
  {
    v14 = self->_lock_sequenceNumber + 1;
    self->_lock_interfaceOrientation = changed;
    self->_lock_sequenceNumber = v14;
  }

  if ([(NSMutableSet *)self->_lock_interestedConnections count])
  {
    v15 = FBLogInterfaceOrientationObserver();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = BSInterfaceOrientationDescription();
      lock_sequenceNumber = self->_lock_sequenceNumber;
      *buf = 138543618;
      v24 = v16;
      v25 = 2048;
      v26 = lock_sequenceNumber;
      _os_log_impl(&dword_1A89DD000, v15, OS_LOG_TYPE_DEFAULT, "Broadcasting active interface orientation (%{public}@) change to registered clients with sequence #: %lu.", buf, 0x16u);
    }

    v18 = [objc_alloc(MEMORY[0x1E699FBA0]) initWithOrientation:changed sequenceNumber:self->_lock_sequenceNumber duration:direction rotationDirection:v9];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __105__FBInterfaceOrientationServiceServer__lock_noteInterfaceOrientationChanged_animationSettings_direction___block_invoke;
    v21[3] = &unk_1E783B4B8;
    v22 = v18;
    v19 = v18;
    [(FBInterfaceOrientationServiceServer *)self _lock_sendMessageToInterestedClients:v21];
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_lock_registerOrientationInterest:(unsigned int)interest connection:(id)connection completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  completionCopy = completion;
  v10 = FBLogInterfaceOrientationObserver();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (interest)
  {
    if (v11)
    {
      v14 = 138412290;
      v15 = connectionCopy;
      _os_log_impl(&dword_1A89DD000, v10, OS_LOG_TYPE_DEFAULT, "Registering orientation interest for %@ ", &v14, 0xCu);
    }

    [(NSMutableSet *)self->_lock_interestedConnections addObject:connectionCopy];
    v12 = objc_alloc_init(MEMORY[0x1E699FBA0]);
    [v12 setOrientation:self->_lock_interfaceOrientation];
    [v12 setSequenceNumber:self->_lock_sequenceNumber];
    completionCopy[2](completionCopy, v12, 0);

    completionCopy = v12;
  }

  else
  {
    if (v11)
    {
      v14 = 138412290;
      v15 = connectionCopy;
      _os_log_impl(&dword_1A89DD000, v10, OS_LOG_TYPE_DEFAULT, "Unregistering orientation interest for %@ ", &v14, 0xCu);
    }

    [(NSMutableSet *)self->_lock_interestedConnections removeObject:connectionCopy];
    completionCopy[2](completionCopy, 0, 0);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_lock_sendMessageToInterestedClients:(id)clients
{
  v17 = *MEMORY[0x1E69E9840];
  clientsCopy = clients;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_lock_interestedConnections;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        remoteTarget = [*(*(&v12 + 1) + 8 * v9) remoteTarget];
        clientsCopy[2](clientsCopy, remoteTarget);

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end