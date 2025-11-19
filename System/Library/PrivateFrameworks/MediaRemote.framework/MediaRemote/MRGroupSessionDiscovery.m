@interface MRGroupSessionDiscovery
- (MRGroupSessionDiscovery)initWithDelegate:(id)a3;
- (MRGroupSessionDiscoveryDelegate)delegate;
- (MRGroupSessionInfo)activeSession;
- (NSSet)discoveredSessions;
- (id)debugDescription;
- (void)activeSessionDidChange:(id)a3;
- (void)discoveredSessionsDidChange:(id)a3;
- (void)handleDidRestoreConnectionNotification;
- (void)initializeConnection;
- (void)notifyDelegateWithActiveSession:(id)a3;
- (void)notifyDelegateWithDiscoveredSessions:(id)a3;
- (void)registerNotifications;
- (void)setConnection:(id)a3;
@end

@implementation MRGroupSessionDiscovery

- (MRGroupSessionDiscovery)initWithDelegate:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MRGroupSessionDiscovery;
  v5 = [(MRGroupSessionDiscovery *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = MRGroupSessionSubsystemGetNotificationQueue();
    v9 = dispatch_queue_create_with_target_V2("com.apple.MediaRemote.MRGroupSessionDiscovery.callbackQueue", v7, v8);
    callbackQueue = v6->_callbackQueue;
    v6->_callbackQueue = v9;

    objc_storeWeak(&v6->_delegate, v4);
    v11 = [MEMORY[0x1E695DFD8] set];
    discoveredSessions = v6->_discoveredSessions;
    v6->_discoveredSessions = v11;

    [(MRGroupSessionDiscovery *)v6 registerNotifications];
    [(MRGroupSessionDiscovery *)v6 initializeConnection];
  }

  return v6;
}

- (void)initializeConnection
{
  objc_initWeak(&location, self);
  v3 = [MRGroupSessionXPCConnection alloc];
  v4 = [MEMORY[0x1E69B14E8] proxyWithObject:self protocol:&unk_1F15A96B0];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__MRGroupSessionDiscovery_initializeConnection__block_invoke;
  v7[3] = &unk_1E769B178;
  objc_copyWeak(&v8, &location);
  v5 = [(MRGroupSessionXPCConnection *)v3 initWithClientObject:v4 invalidationHandler:v7];

  [(MRGroupSessionDiscovery *)self setConnection:v5];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__MRGroupSessionDiscovery_initializeConnection__block_invoke_8;
  v6[3] = &unk_1E76A18E0;
  v6[4] = self;
  [(MRGroupSessionXPCConnection *)v5 sendMessage:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __47__MRGroupSessionDiscovery_initializeConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = _MRLogForCategory(0xCuLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __47__MRGroupSessionDiscovery_initializeConnection__block_invoke_cold_1(WeakRetained, v2);
    }

    [WeakRetained setConnection:0];
    v3 = [MEMORY[0x1E695DFD8] set];
    [WeakRetained discoveredSessionsDidChange:v3];

    [WeakRetained activeSessionDidChange:0];
  }
}

uint64_t __47__MRGroupSessionDiscovery_initializeConnection__block_invoke_8(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47__MRGroupSessionDiscovery_initializeConnection__block_invoke_2;
  v3[3] = &unk_1E76A18B8;
  v3[4] = *(a1 + 32);
  return [a2 connectToDiscoveryWithReply:v3];
}

void __47__MRGroupSessionDiscovery_initializeConnection__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  os_unfair_lock_lock((*(a1 + 32) + 8));
  objc_storeStrong((*(a1 + 32) + 16), a2);
  objc_storeStrong((*(a1 + 32) + 24), a3);
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  v8 = _MRLogForCategory(0xCuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    v11 = 138412802;
    v12 = v9;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_INFO, "[MRGroupSessionDiscovery] %@ XPC connection initialized with state: activeSession=%@, discoveredSessions=%@", &v11, 0x20u);
  }

  [*(a1 + 32) notifyDelegateWithDiscoveredSessions:v6];
  [*(a1 + 32) notifyDelegateWithActiveSession:v7];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)registerNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel_handleDidRestoreConnectionNotification name:@"kMRMediaRemoteServiceClientDidRestoreConnectionNotification" object:0];
}

- (void)handleDidRestoreConnectionNotification
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = _MRLogForCategory(0xCuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = self;
    _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[MRGroupSessionDiscovery] %@ Daemon connection restored. Re-initializing", &v5, 0xCu);
  }

  [(MRGroupSessionDiscovery *)self initializeConnection];
  v4 = *MEMORY[0x1E69E9840];
}

- (id)debugDescription
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p - activeSession=%@, discoveredSessions=%@>", objc_opt_class(), self, self->_activeSession, self->_discoveredSessions];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setConnection:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  connection = self->_connection;
  self->_connection = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (MRGroupSessionInfo)activeSession
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_activeSession;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSSet)discoveredSessions
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_discoveredSessions;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)discoveredSessionsDidChange:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  objc_storeStrong(&self->_discoveredSessions, a3);
  os_unfair_lock_unlock(&self->_lock);
  v6 = _MRLogForCategory(0xCuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412546;
    v9 = self;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_INFO, "[MRGroupSessionDiscovery] %@ Discovered sessions changed: %@", &v8, 0x16u);
  }

  [(MRGroupSessionDiscovery *)self notifyDelegateWithDiscoveredSessions:v5];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)activeSessionDidChange:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  objc_storeStrong(&self->_activeSession, a3);
  os_unfair_lock_unlock(&self->_lock);
  v6 = _MRLogForCategory(0xCuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412546;
    v9 = self;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_INFO, "[MRGroupSessionDiscovery] %@ Active session changed: %@", &v8, 0x16u);
  }

  [(MRGroupSessionDiscovery *)self notifyDelegateWithActiveSession:v5];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)notifyDelegateWithDiscoveredSessions:(id)a3
{
  v4 = a3;
  v5 = [(MRGroupSessionDiscovery *)self delegate];
  if (v5)
  {
    v6 = [(MRGroupSessionDiscovery *)self callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__MRGroupSessionDiscovery_notifyDelegateWithDiscoveredSessions___block_invoke;
    block[3] = &unk_1E769BA00;
    v8 = v5;
    v9 = self;
    v10 = v4;
    dispatch_async(v6, block);
  }
}

- (void)notifyDelegateWithActiveSession:(id)a3
{
  v4 = a3;
  v5 = [(MRGroupSessionDiscovery *)self delegate];
  if (v5)
  {
    v6 = [(MRGroupSessionDiscovery *)self callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__MRGroupSessionDiscovery_notifyDelegateWithActiveSession___block_invoke;
    block[3] = &unk_1E769BA00;
    v8 = v5;
    v9 = self;
    v10 = v4;
    dispatch_async(v6, block);
  }
}

- (MRGroupSessionDiscoveryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __47__MRGroupSessionDiscovery_initializeConnection__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1A2860000, a2, OS_LOG_TYPE_ERROR, "[MRGroupSessionDiscovery] %@ XPC connection invalidated", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end