@interface FBInterfaceOrientationServiceServer
- (FBInterfaceOrientationServiceServer)init;
- (id)_initWithDomain:(id)a3 service:(id)a4;
- (id)connections;
- (id)interestedConnections;
- (id)pendingConnections;
- (id)requestActiveOrientation;
- (void)_connectionInvalidated:(id)a3;
- (void)_lock_noteInterfaceOrientationChanged:(int64_t)a3 animationSettings:(id)a4 direction:(int64_t)a5;
- (void)_lock_registerOrientationInterest:(unsigned int)a3 connection:(id)a4 completion:(id)a5;
- (void)_lock_sendMessageToInterestedClients:(id)a3;
- (void)invalidate;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)noteInterfaceOrientationChanged:(int64_t)a3 animationSettings:(id)a4 direction:(int64_t)a5;
- (void)registerOrientationInterest:(id)a3 completion:(id)a4;
- (void)requestActiveOrientationCompletion:(id)a3;
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
  v3 = [MEMORY[0x1E698F508] bootstrapConfiguration];
  v4 = [v3 domainForMachName:@"com.apple.frontboard.systemappservices"];
  v5 = [MEMORY[0x1E699FB98] identifier];
  v6 = [v4 serviceForIdentifier:v5];

  if (v6)
  {
    v7 = [v4 identifier];
    self = [(FBInterfaceOrientationServiceServer *)self _initWithDomain:v7 service:v5];

    v8 = self;
  }

  else
  {
    v9 = FBLogInterfaceOrientationObserver();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&dword_1A89DD000, v9, OS_LOG_TYPE_INFO, "Domain is missing %@ service, not creating interface orientation server.", &v12, 0xCu);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)_initWithDomain:(id)a3 service:(id)a4
{
  v6 = a3;
  v7 = a4;
  v29.receiver = self;
  v29.super_class = FBInterfaceOrientationServiceServer;
  v8 = [(FBInterfaceOrientationServiceServer *)&v29 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    v10 = MEMORY[0x1E698F4D0];
    v11 = [MEMORY[0x1E699FB98] serviceQuality];
    v12 = [v10 queueWithName:@"FBInterfaceOrientationServiceServer" serviceQuality:v11];
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
    v26 = v6;
    v27 = v7;
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

- (void)noteInterfaceOrientationChanged:(int64_t)a3 animationSettings:(id)a4 direction:(int64_t)a5
{
  v8 = a4;
  os_unfair_lock_lock(&self->_lock);
  [(FBInterfaceOrientationServiceServer *)self _lock_noteInterfaceOrientationChanged:a3 animationSettings:v8 direction:a5];

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

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v6 = a4;
  v7 = +[FBProcessManager sharedInstance];
  v8 = [v6 remoteToken];
  v9 = v8;
  if (v8)
  {
    [v8 realToken];
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
  [v6 configureConnection:v11];
  [(NSMutableSet *)self->_lock_connections addObject:v6];
  if (self->_lock_serviceSuspended)
  {
    [(NSMutableSet *)self->_lock_pendingConnections addObject:v6];
  }

  else
  {
    [v6 activate];
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

- (void)requestActiveOrientationCompletion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [objc_alloc(MEMORY[0x1E699FBA0]) initWithOrientation:self->_lock_interfaceOrientation sequenceNumber:self->_lock_sequenceNumber duration:0 rotationDirection:0.0];
  os_unfair_lock_unlock(&self->_lock);
  v4[2](v4, v5, 0);
}

- (void)registerOrientationInterest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 unsignedIntValue];
  os_unfair_lock_lock(&self->_lock);
  v8 = [(FBInterfaceOrientationServiceServer *)self _currentConnection];
  [(FBInterfaceOrientationServiceServer *)self _lock_registerOrientationInterest:v7 connection:v8 completion:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_connectionInvalidated:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = FBLogInterfaceOrientationObserver();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_1A89DD000, v5, OS_LOG_TYPE_DEFAULT, "Connection invalidated %{public}@", &v7, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_lock_pendingConnections removeObject:v4];
  [(NSMutableSet *)self->_lock_interestedConnections removeObject:v4];
  [(NSMutableSet *)self->_lock_connections removeObject:v4];
  os_unfair_lock_unlock(&self->_lock);
  [v4 invalidate];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_lock_noteInterfaceOrientationChanged:(int64_t)a3 animationSettings:(id)a4 direction:(int64_t)a5
{
  v29 = *MEMORY[0x1E69E9840];
  [a4 duration];
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

  if (self->_lock_interfaceOrientation != a3)
  {
    v14 = self->_lock_sequenceNumber + 1;
    self->_lock_interfaceOrientation = a3;
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

    v18 = [objc_alloc(MEMORY[0x1E699FBA0]) initWithOrientation:a3 sequenceNumber:self->_lock_sequenceNumber duration:a5 rotationDirection:v9];
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

- (void)_lock_registerOrientationInterest:(unsigned int)a3 connection:(id)a4 completion:(id)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = FBLogInterfaceOrientationObserver();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (a3)
  {
    if (v11)
    {
      v14 = 138412290;
      v15 = v8;
      _os_log_impl(&dword_1A89DD000, v10, OS_LOG_TYPE_DEFAULT, "Registering orientation interest for %@ ", &v14, 0xCu);
    }

    [(NSMutableSet *)self->_lock_interestedConnections addObject:v8];
    v12 = objc_alloc_init(MEMORY[0x1E699FBA0]);
    [v12 setOrientation:self->_lock_interfaceOrientation];
    [v12 setSequenceNumber:self->_lock_sequenceNumber];
    v9[2](v9, v12, 0);

    v9 = v12;
  }

  else
  {
    if (v11)
    {
      v14 = 138412290;
      v15 = v8;
      _os_log_impl(&dword_1A89DD000, v10, OS_LOG_TYPE_DEFAULT, "Unregistering orientation interest for %@ ", &v14, 0xCu);
    }

    [(NSMutableSet *)self->_lock_interestedConnections removeObject:v8];
    v9[2](v9, 0, 0);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_lock_sendMessageToInterestedClients:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

        v10 = [*(*(&v12 + 1) + 8 * v9) remoteTarget];
        v4[2](v4, v10);

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