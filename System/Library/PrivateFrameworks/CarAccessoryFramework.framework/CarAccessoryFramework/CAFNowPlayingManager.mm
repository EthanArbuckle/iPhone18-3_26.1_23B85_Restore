@interface CAFNowPlayingManager
- (CAFNowPlayingManager)initWithObserver:(id)observer;
- (void)_connectionActivated;
- (void)_connectionInterrupted;
- (void)_fetchSnapshot;
- (void)_setupConnection;
- (void)invalidate;
- (void)refreshNowPlayingSnapshot;
@end

@implementation CAFNowPlayingManager

- (CAFNowPlayingManager)initWithObserver:(id)observer
{
  observerCopy = observer;
  v13.receiver = self;
  v13.super_class = CAFNowPlayingManager;
  v5 = [(CAFNowPlayingManager *)&v13 init];
  if (v5)
  {
    v6 = CAFNowPlayingLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [CAFNowPlayingManager initWithObserver:];
    }

    serial = [MEMORY[0x277CF0C18] serial];
    v8 = BSDispatchQueueCreate();
    workQueue = v5->_workQueue;
    v5->_workQueue = v8;

    v10 = MEMORY[0x231933C60](observerCopy);
    snapshotObserver = v5->_snapshotObserver;
    v5->_snapshotObserver = v10;

    [(CAFNowPlayingManager *)v5 _setupConnection];
  }

  return v5;
}

- (void)_setupConnection
{
  p_connection = &self->_connection;
  [(BSServiceConnection *)self->_connection invalidate];
  v4 = *p_connection;
  *p_connection = 0;

  v5 = MEMORY[0x277CF3288];
  v6 = +[CAFNowPlayingServiceSpecification identifier];
  v7 = +[CAFNowPlayingServiceSpecification identifier];
  v8 = [v5 endpointForMachName:v6 service:v7 instance:0];

  if (v8)
  {
    v9 = [MEMORY[0x277CF3280] connectionWithEndpoint:v8];
    if (v9)
    {
      objc_initWeak(&location, self);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __40__CAFNowPlayingManager__setupConnection__block_invoke;
      v12[3] = &unk_27890F348;
      v12[4] = self;
      objc_copyWeak(&v13, &location);
      [v9 configureConnection:v12];
      v10 = CAFNowPlayingLogging();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [CAFNowPlayingManager _setupConnection];
      }

      objc_storeStrong(p_connection, v9);
      [v9 activate];
      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }

    else
    {
      v11 = CAFNowPlayingLogging();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CAFNowPlayingManager _setupConnection];
      }
    }
  }

  else
  {
    v9 = CAFNowPlayingLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CAFNowPlayingManager _setupConnection];
    }
  }
}

void __40__CAFNowPlayingManager__setupConnection__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CF32C8] userInitiated];
  [v3 setServiceQuality:v4];

  v5 = +[CAFNowPlayingServiceSpecification interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  v6 = [*(a1 + 32) workQueue];
  [v3 setTargetQueue:v6];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __40__CAFNowPlayingManager__setupConnection__block_invoke_2;
  v12[3] = &unk_27890F300;
  objc_copyWeak(&v13, (a1 + 40));
  [v3 setActivationHandler:v12];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __40__CAFNowPlayingManager__setupConnection__block_invoke_3;
  v10 = &unk_27890F300;
  objc_copyWeak(&v11, (a1 + 40));
  [v3 setInterruptionHandler:&v7];
  [v3 setInvalidationHandler:{&__block_literal_global_14, v7, v8, v9, v10}];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
}

void __40__CAFNowPlayingManager__setupConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _connectionActivated];
    WeakRetained = v2;
  }
}

void __40__CAFNowPlayingManager__setupConnection__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _connectionInterrupted];
    WeakRetained = v2;
  }
}

void __40__CAFNowPlayingManager__setupConnection__block_invoke_4()
{
  v0 = CAFNowPlayingLogging();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __40__CAFNowPlayingManager__setupConnection__block_invoke_4_cold_1();
  }
}

- (void)_connectionActivated
{
  v3 = CAFNowPlayingLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [CAFNowPlayingManager _connectionActivated];
  }

  [(CAFNowPlayingManager *)self _fetchSnapshot];
}

- (void)_connectionInterrupted
{
  v3 = CAFNowPlayingLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [CAFNowPlayingManager _connectionInterrupted];
  }

  lastSnapshot = self->_lastSnapshot;
  self->_lastSnapshot = 0;

  [(CAFNowPlayingManager *)self _setupConnection];
}

- (void)_fetchSnapshot
{
  v3 = CAFNowPlayingLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [CAFNowPlayingManager _fetchSnapshot];
  }

  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__CAFNowPlayingManager__fetchSnapshot__block_invoke;
  v5[3] = &unk_27890F370;
  v5[4] = self;
  [remoteTarget fetchNowPlayingSnapshotWithReply:v5];
}

void __38__CAFNowPlayingManager__fetchSnapshot__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = CAFNowPlayingLogging();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __38__CAFNowPlayingManager__fetchSnapshot__block_invoke_cold_1(v6, v8);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __38__CAFNowPlayingManager__fetchSnapshot__block_invoke_cold_2(v5, v8);
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __38__CAFNowPlayingManager__fetchSnapshot__block_invoke_28;
    v11[3] = &unk_27890D548;
    v9 = v5;
    v10 = *(a1 + 32);
    v12 = v9;
    v13 = v10;
    dispatch_async(MEMORY[0x277D85CD0], v11);
    v8 = v12;
  }
}

void __38__CAFNowPlayingManager__fetchSnapshot__block_invoke_28(uint64_t a1)
{
  if ([*(a1 + 32) isValid])
  {
    objc_storeStrong((*(a1 + 40) + 8), *(a1 + 32));
    v2 = [*(a1 + 40) snapshotObserver];

    if (v2)
    {
      v6 = [*(a1 + 40) snapshotObserver];
      v6[2](v6, *(a1 + 32));
    }
  }

  else
  {
    v3 = CAFNowPlayingLogging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __38__CAFNowPlayingManager__fetchSnapshot__block_invoke_28_cold_1();
    }

    v4 = *(a1 + 40);
    v5 = *(v4 + 8);
    *(v4 + 8) = 0;
  }
}

- (void)refreshNowPlayingSnapshot
{
  v3 = CAFNowPlayingLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [CAFNowPlayingManager refreshNowPlayingSnapshot];
  }

  [(CAFNowPlayingManager *)self _fetchSnapshot];
}

- (void)invalidate
{
  v3 = CAFNowPlayingLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [CAFNowPlayingManager invalidate];
  }

  [(BSServiceConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;

  lastSnapshot = self->_lastSnapshot;
  self->_lastSnapshot = 0;
}

void __38__CAFNowPlayingManager__fetchSnapshot__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_231618000, a2, OS_LOG_TYPE_ERROR, "Last snapshot update error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __38__CAFNowPlayingManager__fetchSnapshot__block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_231618000, a2, OS_LOG_TYPE_DEBUG, "Received updated now playing snapshot %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end