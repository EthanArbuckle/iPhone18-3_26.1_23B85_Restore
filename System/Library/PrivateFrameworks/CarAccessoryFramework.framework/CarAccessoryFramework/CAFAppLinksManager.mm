@interface CAFAppLinksManager
- (CAFAppLinksManager)initWithChangeBlock:(id)block;
- (void)_connectionActivated;
- (void)_connectionInterrupted;
- (void)_fetchSnapshot;
- (void)_setupConnection;
- (void)invalidate;
- (void)refreshAppLinksSnapshot;
@end

@implementation CAFAppLinksManager

- (CAFAppLinksManager)initWithChangeBlock:(id)block
{
  blockCopy = block;
  v15.receiver = self;
  v15.super_class = CAFAppLinksManager;
  v5 = [(CAFAppLinksManager *)&v15 init];
  if (v5)
  {
    v6 = CAFAppLinksLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_231618000, v6, OS_LOG_TYPE_DEFAULT, "Initializing appLinks manager", v14, 2u);
    }

    v7 = +[CAFAppLinksServiceSpecification identifier];
    serial = [MEMORY[0x277CF0C18] serial];
    v9 = BSDispatchQueueCreate();
    workQueue = v5->_workQueue;
    v5->_workQueue = v9;

    v11 = MEMORY[0x231933C60](blockCopy);
    snapshotChangeBlock = v5->_snapshotChangeBlock;
    v5->_snapshotChangeBlock = v11;

    [(CAFAppLinksManager *)v5 _setupConnection];
  }

  return v5;
}

- (void)_setupConnection
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = +[CAFAppLinksServiceSpecification identifier];
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_231618000, self, OS_LOG_TYPE_ERROR, "Failed to create appLinks endpoint! This process can't look up the machport. (%@)", &v4, 0xCu);

  v3 = *MEMORY[0x277D85DE8];
}

void __38__CAFAppLinksManager__setupConnection__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CF32C8] userInitiated];
  [v3 setServiceQuality:v4];

  v5 = +[CAFAppLinksServiceSpecification interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  v6 = [*(a1 + 32) workQueue];
  [v3 setTargetQueue:v6];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __38__CAFAppLinksManager__setupConnection__block_invoke_2;
  v12[3] = &unk_27890F300;
  objc_copyWeak(&v13, (a1 + 40));
  [v3 setActivationHandler:v12];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __38__CAFAppLinksManager__setupConnection__block_invoke_3;
  v10 = &unk_27890F300;
  objc_copyWeak(&v11, (a1 + 40));
  [v3 setInterruptionHandler:&v7];
  [v3 setInvalidationHandler:{&__block_literal_global_15, v7, v8, v9, v10}];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
}

void __38__CAFAppLinksManager__setupConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _connectionActivated];
    WeakRetained = v2;
  }
}

void __38__CAFAppLinksManager__setupConnection__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _connectionInterrupted];
    WeakRetained = v2;
  }
}

void __38__CAFAppLinksManager__setupConnection__block_invoke_4()
{
  v0 = CAFAppLinksLogging();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_231618000, v0, OS_LOG_TYPE_DEFAULT, "AppLinks connection invalidated", v1, 2u);
  }
}

- (void)_connectionActivated
{
  v3 = CAFAppLinksLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_231618000, v3, OS_LOG_TYPE_DEFAULT, "AppLinks connection activated", v4, 2u);
  }

  [(CAFAppLinksManager *)self _fetchSnapshot];
}

- (void)_connectionInterrupted
{
  v3 = CAFAppLinksLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_231618000, v3, OS_LOG_TYPE_DEFAULT, "AppLinks connection interrupted", v4, 2u);
  }

  [(CAFAppLinksManager *)self _setupConnection];
}

- (void)_fetchSnapshot
{
  v3 = CAFAppLinksLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231618000, v3, OS_LOG_TYPE_DEFAULT, "Fetching latest appLinks snapshot", buf, 2u);
  }

  remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__CAFAppLinksManager__fetchSnapshot__block_invoke;
  v5[3] = &unk_27890F398;
  v5[4] = self;
  [remoteTarget fetchAppLinksSnapshotWithReply:v5];
}

void __36__CAFAppLinksManager__fetchSnapshot__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = CAFAppLinksLogging();
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
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&dword_231618000, v8, OS_LOG_TYPE_DEFAULT, "Received updated appLinks snapshot %@", buf, 0xCu);
    }

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __36__CAFAppLinksManager__fetchSnapshot__block_invoke_6;
    v10[3] = &unk_27890D548;
    v10[4] = *(a1 + 32);
    v11 = v5;
    dispatch_async(MEMORY[0x277D85CD0], v10);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __36__CAFAppLinksManager__fetchSnapshot__block_invoke_6(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 8), *(a1 + 40));
  v2 = [*(a1 + 32) snapshotChangeBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) snapshotChangeBlock];
    v3[2](v3, *(a1 + 40));
  }
}

- (void)refreshAppLinksSnapshot
{
  v3 = CAFAppLinksLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_231618000, v3, OS_LOG_TYPE_DEFAULT, "Refreshing appLinks snapshot", v4, 2u);
  }

  [(CAFAppLinksManager *)self _fetchSnapshot];
}

- (void)invalidate
{
  v3 = CAFAppLinksLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_231618000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating appLinks connection", v5, 2u);
  }

  [(BSServiceConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;
}

@end