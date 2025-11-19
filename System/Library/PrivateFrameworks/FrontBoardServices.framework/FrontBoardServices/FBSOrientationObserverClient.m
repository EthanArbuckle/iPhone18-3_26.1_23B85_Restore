@interface FBSOrientationObserverClient
- (FBSOrientationObserverClient)initWithDelegate:(id)a3;
- (id)_connection;
- (id)_initWithEndpoint:(id)a3 calloutQueue:(id)a4 delegate:(id)a5;
- (int64_t)activeInterfaceOrientation;
- (void)_connectionActivated:(id)a3;
- (void)_connectionInterrupted:(id)a3;
- (void)_connectionInvalidated:(id)a3;
- (void)_lock_activate;
- (void)_lock_invalidate;
- (void)_server:(id)a3 registerOrientationInterest:(unsigned int)a4;
- (void)activate;
- (void)activeInterfaceOrientationWithCompletion:(id)a3;
- (void)activeOrientationDidUpdate:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)registerOrientationInterest:(unsigned int)a3;
@end

@implementation FBSOrientationObserverClient

- (void)activate
{
  os_unfair_lock_lock(&self->_lock);
  [(FBSOrientationObserverClient *)self _lock_activate];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_activate
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot activate an invalidated client. Create a new client."];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_13();
    v8 = @"FBSOrientationObserverClient.m";
    v9 = 1024;
    v10 = 200;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  [(FBSOrientationObserverClient *)self _lock_invalidate];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_invalidate
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_lock_invalidated)
  {
    self->_lock_invalidated = 1;
    [(BSServiceConnection *)self->_lock_connection invalidate];
    lock_connection = self->_lock_connection;
    self->_lock_connection = 0;

    objc_storeWeak(&self->_delegate, 0);
  }
}

- (void)dealloc
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must be invalidated before dealloc"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_13();
    v8 = @"FBSOrientationObserverClient.m";
    v9 = 1024;
    v10 = 85;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (FBSOrientationObserverClient)initWithDelegate:(id)a3
{
  v4 = a3;
  v5 = [off_1E76BC9E0 environmentAliases];
  v6 = [off_1E76BCA30 defaultShellMachName];
  v7 = [v5 resolveMachService:v6];

  v8 = +[FBSOrientationServiceSpecification identifier];
  v9 = [off_1E76BCA30 endpointForMachName:v7 service:v8 instance:0];
  if (!v9)
  {
    v10 = FBLogInterfaceOrientationObserver();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(FBSOrientationObserverClient *)v7 initWithDelegate:v8, v10];
    }
  }

  v11 = +[FBSOrientationServiceSpecification serviceQuality];
  v12 = [off_1E76BCA48 queueWithName:@"FBSOrientationObserverClientCallout" serviceQuality:v11];

  v13 = [(FBSOrientationObserverClient *)self _initWithEndpoint:v9 calloutQueue:v12 delegate:v4];
  return v13;
}

- (id)_initWithEndpoint:(id)a3 calloutQueue:(id)a4 delegate:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    v24.receiver = self;
    v24.super_class = FBSOrientationObserverClient;
    v12 = [(FBSOrientationObserverClient *)&v24 init];
    v13 = v12;
    if (v12)
    {
      objc_storeWeak(&v12->_delegate, v11);
      v13->_lock._os_unfair_lock_opaque = 0;
      objc_storeStrong(&v13->_calloutQueue, a4);
      objc_storeStrong(&v13->_endpoint, a3);
      v14 = FBLogInterfaceOrientationObserver();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        endpoint = v13->_endpoint;
        *buf = 138412290;
        v26 = endpoint;
        _os_log_impl(&dword_1A2DBB000, v14, OS_LOG_TYPE_DEFAULT, "Creating orientation service connection with %@", buf, 0xCu);
      }

      v16 = [off_1E76BCA28 connectionWithEndpoint:v13->_endpoint];
      lock_connection = v13->_lock_connection;
      v13->_lock_connection = v16;

      v18 = v13->_lock_connection;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __72__FBSOrientationObserverClient__initWithEndpoint_calloutQueue_delegate___block_invoke;
      v21[3] = &unk_1E76BE820;
      v22 = v13;
      v23 = v10;
      [(BSServiceConnection *)v18 configureConnection:v21];
    }

    self = v13;
    v19 = self;
  }

  else
  {
    v19 = 0;
    self->_lock_invalidated = 1;
  }

  return v19;
}

void __72__FBSOrientationObserverClient__initWithEndpoint_calloutQueue_delegate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[FBSOrientationServiceSpecification interface];
  [v3 setInterface:v4];

  [v3 setInterfaceTarget:*(a1 + 32)];
  [v3 setQueue:*(a1 + 40)];
  objc_initWeak(&location, *(a1 + 32));
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__FBSOrientationObserverClient__initWithEndpoint_calloutQueue_delegate___block_invoke_2;
  v9[3] = &unk_1E76BE7F8;
  objc_copyWeak(&v10, &location);
  [v3 setInvalidationHandler:v9];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__FBSOrientationObserverClient__initWithEndpoint_calloutQueue_delegate___block_invoke_3;
  v7[3] = &unk_1E76BE7F8;
  objc_copyWeak(&v8, &location);
  [v3 setActivationHandler:v7];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__FBSOrientationObserverClient__initWithEndpoint_calloutQueue_delegate___block_invoke_4;
  v5[3] = &unk_1E76BE7F8;
  objc_copyWeak(&v6, &location);
  [v3 setInterruptionHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __72__FBSOrientationObserverClient__initWithEndpoint_calloutQueue_delegate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionInvalidated:v3];
}

void __72__FBSOrientationObserverClient__initWithEndpoint_calloutQueue_delegate___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionActivated:v3];
}

void __72__FBSOrientationObserverClient__initWithEndpoint_calloutQueue_delegate___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionInterrupted:v3];
}

- (int64_t)activeInterfaceOrientation
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(FBSOrientationObserverClient *)self _lock_remoteTarget];
  os_unfair_lock_unlock(&self->_lock);
  v4 = [v3 requestActiveOrientation];
  v5 = [v4 orientation];

  return v5;
}

- (void)activeInterfaceOrientationWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock(&self->_lock);
    v5 = [(FBSOrientationObserverClient *)self _lock_remoteTarget];
    os_unfair_lock_unlock(&self->_lock);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __73__FBSOrientationObserverClient_activeInterfaceOrientationWithCompletion___block_invoke;
    v6[3] = &unk_1E76BE848;
    v6[4] = self;
    v7 = v4;
    [v5 requestActiveOrientationCompletion:v6];
  }
}

void __73__FBSOrientationObserverClient_activeInterfaceOrientationWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = FBLogInterfaceOrientationObserver();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __73__FBSOrientationObserverClient_activeInterfaceOrientationWithCompletion___block_invoke_cold_1(a1, v6, v7);
    }
  }

  if (!v5)
  {
    v5 = [[FBSOrientationUpdate alloc] initWithOrientation:0 sequenceNumber:0 duration:0 rotationDirection:0.0];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)registerOrientationInterest:(unsigned int)a3
{
  v3 = *&a3;
  os_unfair_lock_lock(&self->_lock);
  self->_lock_interest = v3;
  v5 = [(FBSOrientationObserverClient *)self _lock_remoteTarget];
  os_unfair_lock_unlock(&self->_lock);
  [(FBSOrientationObserverClient *)self _server:v5 registerOrientationInterest:v3];
}

- (void)activeOrientationDidUpdate:(id)a3
{
  calloutQueue = self->_calloutQueue;
  v5 = a3;
  [(BSServiceQueue *)calloutQueue assertBarrierOnQueue];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained client:self handleOrientationUpdate:v5];
}

- (id)_connection
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_connection;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_connectionInterrupted:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = FBLogInterfaceOrientationObserver();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218242;
    v10 = self;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&dword_1A2DBB000, v5, OS_LOG_TYPE_DEFAULT, "<%p> connection interrupted: %{public}@", &v9, 0x16u);
  }

  os_unfair_lock_lock(&self->_lock);
  [(FBSOrientationObserverClient *)self _lock_activate];
  lock_interest = self->_lock_interest;
  v7 = [(FBSOrientationObserverClient *)self _lock_remoteTarget];
  os_unfair_lock_unlock(&self->_lock);
  if (lock_interest == 1)
  {
    v8 = FBLogInterfaceOrientationObserver();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = self;
      _os_log_impl(&dword_1A2DBB000, v8, OS_LOG_TYPE_DEFAULT, "<%p> sending re-registration for orientation interest", &v9, 0xCu);
    }

    [(FBSOrientationObserverClient *)self _server:v7 registerOrientationInterest:1];
  }
}

- (void)_connectionInvalidated:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = FBLogInterfaceOrientationObserver();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218242;
    v8 = self;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_1A2DBB000, v5, OS_LOG_TYPE_DEFAULT, "<%p> connection invalidated: %{public}@", &v7, 0x16u);
  }

  os_unfair_lock_lock(&self->_lock);
  [v4 invalidate];
  lock_connection = self->_lock_connection;
  self->_lock_connection = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_connectionActivated:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = FBLogInterfaceOrientationObserver();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218242;
    v8 = self;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_1A2DBB000, v5, OS_LOG_TYPE_DEFAULT, "<%p> connection activated: %{public}@", &v7, 0x16u);
  }

  [(BSServiceQueue *)self->_calloutQueue assertBarrierOnQueue];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained handleOrientationResetForClient:self];
}

- (void)_server:(id)a3 registerOrientationInterest:(unsigned int)a4
{
  v4 = *&a4;
  v6 = a3;
  objc_initWeak(&location, self);
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__FBSOrientationObserverClient__server_registerOrientationInterest___block_invoke;
  v8[3] = &unk_1E76BE870;
  objc_copyWeak(&v9, &location);
  [v6 registerOrientationInterest:v7 completion:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __68__FBSOrientationObserverClient__server_registerOrientationInterest___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v4 && WeakRetained)
  {
    [WeakRetained activeOrientationDidUpdate:v4];
  }
}

- (void)initWithDelegate:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = a1;
  *&v3[12] = 2114;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_1_0(&dword_1A2DBB000, a2, a3, "Unable to create endpoint for machName %{public}@, service: %{public}@.", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

void __73__FBSOrientationObserverClient_activeInterfaceOrientationWithCompletion___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 134218242;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2114;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_1_0(&dword_1A2DBB000, a2, a3, "<%p>: activeInterfaceOrientationWithCompletion error: %{public}@", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

@end