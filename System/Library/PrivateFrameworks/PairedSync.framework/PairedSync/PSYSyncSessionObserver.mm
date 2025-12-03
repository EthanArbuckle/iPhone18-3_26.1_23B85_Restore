@interface PSYSyncSessionObserver
- (PSYSyncSessionObserver)init;
- (PSYSyncSessionObserverDelegate)delegate;
- (id)providerWithErrorHandler:(id)handler;
- (void)_checkin:(BOOL)_checkin;
- (void)_connectionInvalidated;
- (void)_disconnectFromPairedSync;
- (void)_queue_invalidateSyncSession:(id)session;
- (void)_queue_loadConnectionIfNeeded;
- (void)dealloc;
- (void)didBecomeActive:(id)active;
- (void)invalidateSyncSession:(id)session;
- (void)setCurrentSyncSession:(id)session;
- (void)startObservingSyncSessionsWithCompletion:(id)completion;
- (void)syncSessionWillStart:(id)start;
- (void)updateSyncSession:(id)session;
- (void)willResignActive:(id)active;
@end

@implementation PSYSyncSessionObserver

void __48__PSYSyncSessionObserver__connectionInvalidated__block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 48) & 1) == 0)
  {
    v2 = psy_log();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

    if (v3)
    {
      v4 = psy_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25DF25000, v4, OS_LOG_TYPE_DEFAULT, "PSYSyncSessionObserver clearing invalidated connection", buf, 2u);
      }
    }

    v5 = *(a1 + 32);
    if (v5[1])
    {
      [v5 _queue_invalidateSyncSession:?];
      v5 = *(a1 + 32);
    }

    v6 = v5[4];
    v5[4] = 0;

    v7 = *(a1 + 32);
    v8 = *(v7 + 16);
    *(v7 + 16) = 0;

    v9 = *(a1 + 32);
    v10 = *(v9 + 8);
    *(v9 + 8) = 0;

    v11 = *(a1 + 32);
    if (*(v11 + 40) == 1)
    {
      *(v11 + 40) = 0;
      v12 = psy_log();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

      if (v13)
      {
        v14 = psy_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v15 = 0;
          _os_log_impl(&dword_25DF25000, v14, OS_LOG_TYPE_DEFAULT, "PSYSyncSessionObserver - checking in following invalidation handler", v15, 2u);
        }
      }

      [*(a1 + 32) _checkin:0];
    }
  }
}

- (PSYSyncSessionObserver)init
{
  v19.receiver = self;
  v19.super_class = PSYSyncSessionObserver;
  v2 = [(PSYSyncSessionObserver *)&v19 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.pairedsync.syncsessionobserver", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    objc_initWeak(&location, v2);
    uTF8String = [@"com.apple.pairedsyncd.launched" UTF8String];
    v7 = v2->_queue;
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __30__PSYSyncSessionObserver_init__block_invoke;
    v16 = &unk_2799FB538;
    objc_copyWeak(&v17, &location);
    notify_register_dispatch(uTF8String, &v2->_daemonDidLaunchNotifyToken, v7, &v13);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_willResignActive_ name:@"UIApplicationWillResignActiveNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_willResignActive_ name:*MEMORY[0x277CCA0D8] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v2 selector:sel_didBecomeActive_ name:@"UIApplicationDidBecomeActiveNotification" object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:v2 selector:sel_didBecomeActive_ name:*MEMORY[0x277CCA0C0] object:0];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)_queue_loadConnectionIfNeeded
{
  if (!self->_connection)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.pairedsyncd.progress" options:4096];
    connection = self->_connection;
    self->_connection = v3;

    v5 = objc_alloc_init(PSYSyncSessionObserverExportedObject);
    exportedObject = self->_exportedObject;
    self->_exportedObject = v5;

    [(PSYSyncSessionObserverExportedObject *)self->_exportedObject setDelegate:self];
    [(NSXPCConnection *)self->_connection setExportedObject:self->_exportedObject];
    v7 = self->_connection;
    v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286FC4C50];
    [(NSXPCConnection *)v7 setExportedInterface:v8];

    v9 = self->_connection;
    v10 = PSYSyncSessionProviderXPCInterface();
    [(NSXPCConnection *)v9 setRemoteObjectInterface:v10];

    objc_initWeak(&location, self);
    v11 = self->_connection;
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __55__PSYSyncSessionObserver__queue_loadConnectionIfNeeded__block_invoke;
    v15 = &unk_2799FB6C8;
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)v11 setInvalidationHandler:&v12];
    [(NSXPCConnection *)self->_connection resume:v12];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __55__PSYSyncSessionObserver__queue_loadConnectionIfNeeded__block_invoke(uint64_t a1)
{
  v2 = psy_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = psy_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25DF25000, v4, OS_LOG_TYPE_DEFAULT, "PSYSyncSessionObserver connection invalidated", v6, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionInvalidated];
}

- (void)_connectionInvalidated
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__PSYSyncSessionObserver__connectionInvalidated__block_invoke;
  block[3] = &unk_2799FB560;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  daemonDidLaunchNotifyToken = self->_daemonDidLaunchNotifyToken;
  if (daemonDidLaunchNotifyToken != -1)
  {
    notify_cancel(daemonDidLaunchNotifyToken);
  }

  v5.receiver = self;
  v5.super_class = PSYSyncSessionObserver;
  [(PSYSyncSessionObserver *)&v5 dealloc];
}

void __30__PSYSyncSessionObserver_init__block_invoke(uint64_t a1)
{
  v2 = psy_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = psy_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25DF25000, v4, OS_LOG_TYPE_DEFAULT, "PSYSyncSessionObserver _daemonStarted", v6, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDaemonStarted];
}

- (void)willResignActive:(id)active
{
  v4 = psy_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = psy_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25DF25000, v6, OS_LOG_TYPE_DEFAULT, "PairedSync Client: Will resign active! Invalidating progress connection.", buf, 2u);
    }
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__PSYSyncSessionObserver_willResignActive___block_invoke;
  block[3] = &unk_2799FB560;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)didBecomeActive:(id)active
{
  v4 = psy_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = psy_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25DF25000, v6, OS_LOG_TYPE_DEFAULT, "PairedSync Client: Did become active! Possibly reconnecting to pairedsync...", buf, 2u);
    }
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__PSYSyncSessionObserver_didBecomeActive___block_invoke;
  block[3] = &unk_2799FB560;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __42__PSYSyncSessionObserver_didBecomeActive___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 48) == 1)
  {
    *(v1 + 48) = 0;
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));

    if (WeakRetained)
    {
      v4 = *(a1 + 32);

      [v4 _reconnectToPairedSync];
    }
  }
}

- (void)_disconnectFromPairedSync
{
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;
}

- (void)setCurrentSyncSession:(id)session
{
  sessionCopy = session;
  currentSyncSession = self->_currentSyncSession;
  if (currentSyncSession != sessionCopy)
  {
    v9 = sessionCopy;
    currentSyncSession = [currentSyncSession isEqual:sessionCopy];
    sessionCopy = v9;
    if ((currentSyncSession & 1) == 0)
    {
      v6 = self->_currentSyncSession;
      if (v9)
      {
        selfCopy2 = self;
        if (!v6)
        {
          currentSyncSession = [(PSYSyncSessionObserver *)self syncSessionWillStart:v9];
          goto LABEL_9;
        }

        v8 = v9;
      }

      else
      {
        [(PSYSyncSessionObserver *)self invalidateSyncSession:v6];
        selfCopy2 = self;
        v8 = 0;
      }

      currentSyncSession = [(PSYSyncSessionObserver *)selfCopy2 updateSyncSession:v8];
LABEL_9:
      sessionCopy = v9;
    }
  }

  MEMORY[0x2821F96F8](currentSyncSession, sessionCopy);
}

- (void)startObservingSyncSessionsWithCompletion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = psy_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = psy_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = MEMORY[0x25F8A84D0](completionCopy);
      *buf = 134217984;
      v15 = v8;
      _os_log_impl(&dword_25DF25000, v7, OS_LOG_TYPE_DEFAULT, "PairedSync Client: Starting to observe sync session, completion=%p", buf, 0xCu);
    }
  }

  queue = self->_queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__PSYSyncSessionObserver_startObservingSyncSessionsWithCompletion___block_invoke;
  v12[3] = &unk_2799FB818;
  v12[4] = self;
  v13 = completionCopy;
  v10 = completionCopy;
  dispatch_async(queue, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __67__PSYSyncSessionObserver_startObservingSyncSessionsWithCompletion___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 40) = 1;
  *(*(a1 + 32) + 48) = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__PSYSyncSessionObserver_startObservingSyncSessionsWithCompletion___block_invoke_2;
  v8[3] = &unk_2799FB920;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v3;
  v4 = [v2 providerWithErrorHandler:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__PSYSyncSessionObserver_startObservingSyncSessionsWithCompletion___block_invoke_3;
  v6[3] = &unk_2799FB948;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v4 requestActiveSyncSessionWithCompletion:v6];
}

void __67__PSYSyncSessionObserver_startObservingSyncSessionsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v4 = v3[1];
    v3[1] = 0;

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [v3 setCurrentSyncSession:0];
  }
}

void __67__PSYSyncSessionObserver_startObservingSyncSessionsWithCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = psy_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = psy_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543362;
      v18 = v8;
      _os_log_impl(&dword_25DF25000, v13, OS_LOG_TYPE_DEFAULT, "Started observing sync session: %{public}@", &v17, 0xCu);
    }
  }

  v14 = [*(a1 + 32) delegate];
  [v8 setSupportsMigrationSync:objc_opt_respondsToSelector() & 1];

  v15 = *(a1 + 32);
  if (*(a1 + 40))
  {
    objc_storeStrong(v15 + 1, a2);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [v15 setCurrentSyncSession:v8];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_checkin:(BOOL)_checkin
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__PSYSyncSessionObserver__checkin___block_invoke;
  v4[3] = &unk_2799FB9B8;
  v4[4] = self;
  _checkinCopy = _checkin;
  dispatch_async(queue, v4);
}

void __35__PSYSyncSessionObserver__checkin___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __35__PSYSyncSessionObserver__checkin___block_invoke_2;
  v3[3] = &unk_2799FB970;
  v4 = *(a1 + 40);
  v3[4] = v1;
  v2 = [v1 providerWithErrorHandler:v3];
  [v2 checkin:&__block_literal_global_2];
}

void __35__PSYSyncSessionObserver__checkin___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40) == 1)
  {
    v5 = [v3 domain];
    if ([v5 isEqual:*MEMORY[0x277CCA050]])
    {
      v6 = [v4 code];

      if (v6 == 4099)
      {
        v7 = psy_log();
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

        if (v8)
        {
          v9 = psy_log();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            __35__PSYSyncSessionObserver__checkin___block_invoke_2_cold_1(v9);
          }
        }

        v10 = *(a1 + 32);
        v11 = *(v10 + 24);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __35__PSYSyncSessionObserver__checkin___block_invoke_17;
        block[3] = &unk_2799FB560;
        block[4] = v10;
        dispatch_async(v11, block);
      }
    }

    else
    {
    }
  }
}

- (void)_queue_invalidateSyncSession:(id)session
{
  sessionCopy = session;
  delegate = [(PSYSyncSessionObserver *)self delegate];
  [delegate syncSessionObserver:self didInvalidateSyncSession:sessionCopy];

  sessionIdentifier = [sessionCopy sessionIdentifier];

  sessionIdentifier2 = [(PSYSyncSession *)self->_currentSyncSession sessionIdentifier];
  v8 = [sessionIdentifier isEqual:sessionIdentifier2];

  if (v8)
  {
    currentSyncSession = self->_currentSyncSession;
    self->_currentSyncSession = 0;
  }
}

- (id)providerWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  [(PSYSyncSessionObserver *)self _queue_loadConnectionIfNeeded];
  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v5;
}

- (void)syncSessionWillStart:(id)start
{
  startCopy = start;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__PSYSyncSessionObserver_syncSessionWillStart___block_invoke;
  v7[3] = &unk_2799FB588;
  v8 = startCopy;
  selfCopy = self;
  v6 = startCopy;
  dispatch_async(queue, v7);
}

void __47__PSYSyncSessionObserver_syncSessionWillStart___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 40) delegate];
  [*(a1 + 32) setSupportsMigrationSync:objc_opt_respondsToSelector() & 1];

  v3 = *(*(a1 + 40) + 8);
  if (v3 != *(a1 + 32) && ([v3 isEqual:?] & 1) == 0)
  {
    objc_storeStrong((*(a1 + 40) + 8), *(a1 + 32));
    v4 = [*(a1 + 40) delegate];
    [v4 syncSessionObserver:*(a1 + 40) receivedSyncSession:*(a1 + 32)];

    v5 = psy_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = psy_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v10 = 138543362;
        v11 = v8;
        _os_log_impl(&dword_25DF25000, v7, OS_LOG_TYPE_DEFAULT, "syncSessionWillStart: %{public}@", &v10, 0xCu);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateSyncSession:(id)session
{
  sessionCopy = session;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__PSYSyncSessionObserver_updateSyncSession___block_invoke;
  v7[3] = &unk_2799FB588;
  v8 = sessionCopy;
  selfCopy = self;
  v6 = sessionCopy;
  dispatch_async(queue, v7);
}

void __44__PSYSyncSessionObserver_updateSyncSession___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) delegate];
  [*(a1 + 32) setSupportsMigrationSync:objc_opt_respondsToSelector() & 1];

  v3 = *(*(a1 + 40) + 8);
  if (v3 != *(a1 + 32) && ([v3 isEqual:?] & 1) == 0)
  {
    v4 = [*(a1 + 32) sessionIdentifier];
    v5 = [*(*(a1 + 40) + 8) sessionIdentifier];
    v6 = [v4 isEqual:v5];

    if (v6)
    {
      v8 = [[PSYSyncSessionUpdate alloc] initWithOriginalSession:*(*(a1 + 40) + 8) updatedSession:*(a1 + 32)];
      objc_storeStrong((*(a1 + 40) + 8), *(a1 + 32));
      v7 = [*(a1 + 40) delegate];
      [v7 syncSessionObserver:*(a1 + 40) didReceiveUpdate:v8];
    }
  }
}

- (void)invalidateSyncSession:(id)session
{
  sessionCopy = session;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__PSYSyncSessionObserver_invalidateSyncSession___block_invoke;
  v7[3] = &unk_2799FB588;
  v8 = sessionCopy;
  selfCopy = self;
  v6 = sessionCopy;
  dispatch_async(queue, v7);
}

uint64_t __48__PSYSyncSessionObserver_invalidateSyncSession___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) delegate];
  [*(a1 + 32) setSupportsMigrationSync:objc_opt_respondsToSelector() & 1];

  v3 = *(a1 + 40);
  v4 = v3[1];
  if (v4)
  {
    v3[1] = 0;

    v3 = *(a1 + 40);
  }

  v5 = *(a1 + 32);

  return [v3 _queue_invalidateSyncSession:v5];
}

- (PSYSyncSessionObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end