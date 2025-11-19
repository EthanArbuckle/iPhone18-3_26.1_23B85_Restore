@interface NTKBundleComplicationMigrationServiceClient
+ (id)sharedInstance;
- (NTKBundleComplicationMigrationServiceClient)init;
- (void)_queue_clearInvalidationTimer;
- (void)_queue_decrementTransactionCount;
- (void)_queue_incrementTransactionCount;
- (void)_queue_loadTypeLookupForDevice:(id)a3 completion:(id)a4;
- (void)_queue_resetConnection:(BOOL)a3;
- (void)_queue_serviceRequest:(id)a3 retryBudget:(unint64_t)a4;
- (void)_queue_updateInvalidationTimer;
- (void)_setupConnectionIfNeeded;
- (void)generateTypeLookupForDevice:(id)a3 completion:(id)a4;
- (void)serviceRequest:(id)a3 completion:(id)a4;
@end

@implementation NTKBundleComplicationMigrationServiceClient

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_14 != -1)
  {
    +[NTKBundleComplicationMigrationServiceClient sharedInstance];
  }

  v3 = sharedInstance__instance;

  return v3;
}

void __61__NTKBundleComplicationMigrationServiceClient_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(NTKBundleComplicationMigrationServiceClient);
  v1 = sharedInstance__instance;
  sharedInstance__instance = v0;
}

- (NTKBundleComplicationMigrationServiceClient)init
{
  v11.receiver = self;
  v11.super_class = NTKBundleComplicationMigrationServiceClient;
  v2 = [(NTKBundleComplicationMigrationServiceClient *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.nanotimekit.NTKBundleComplicationMigrationServiceClient", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_opt_new();
    requestToCompletion = v2->_requestToCompletion;
    v2->_requestToCompletion = v6;

    v8 = objc_opt_new();
    cachedResults = v2->_cachedResults;
    v2->_cachedResults = v8;
  }

  return v2;
}

- (void)serviceRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__NTKBundleComplicationMigrationServiceClient_serviceRequest_completion___block_invoke;
  block[3] = &unk_27877DC88;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __73__NTKBundleComplicationMigrationServiceClient_serviceRequest_completion___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v9 = 138543362;
    v10 = v3;
    _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_DEFAULT, "NTKBundleComplicationMigrationServiceClient: Received request %{public}@", &v9, 0xCu);
  }

  v4 = [*(*(a1 + 40) + 40) objectForKey:*(a1 + 32)];
  if (v4)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v5 = [*(*(a1 + 40) + 32) objectForKey:*(a1 + 32)];
    if (v5)
    {
      v6 = v5;
      v7 = _Block_copy(*(a1 + 48));
      [v6 addObject:v7];
    }

    else
    {
      v6 = objc_opt_new();
      v8 = _Block_copy(*(a1 + 48));
      [v6 addObject:v8];

      [*(*(a1 + 40) + 32) setObject:v6 forKey:*(a1 + 32)];
      [*(a1 + 40) _queue_serviceRequest:*(a1 + 32) retryBudget:3];
    }
  }
}

- (void)generateTypeLookupForDevice:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "Requesting type lookup...", buf, 2u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__NTKBundleComplicationMigrationServiceClient_generateTypeLookupForDevice_completion___block_invoke;
  block[3] = &unk_27877DC88;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(queue, block);
}

- (void)_setupConnectionIfNeeded
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_connection)
  {
    connectionProvider = self->_connectionProvider;
    if (connectionProvider)
    {
      v4 = connectionProvider[2]();
    }

    else
    {
      v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.BundleComplicationMigrationService"];
    }

    connection = self->_connection;
    self->_connection = v4;

    v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28A85C0E0];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v6];

    objc_initWeak(&location, self);
    v7 = self->_connection;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __71__NTKBundleComplicationMigrationServiceClient__setupConnectionIfNeeded__block_invoke;
    v11[3] = &unk_27877DC58;
    objc_copyWeak(&v12, &location);
    [(NSXPCConnection *)v7 setInterruptionHandler:v11];
    v8 = self->_connection;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __71__NTKBundleComplicationMigrationServiceClient__setupConnectionIfNeeded__block_invoke_12;
    v9[3] = &unk_27877DC58;
    objc_copyWeak(&v10, &location);
    [(NSXPCConnection *)v8 setInvalidationHandler:v9];
    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __71__NTKBundleComplicationMigrationServiceClient__setupConnectionIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[6];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__NTKBundleComplicationMigrationServiceClient__setupConnectionIfNeeded__block_invoke_2;
    block[3] = &unk_27877DB10;
    block[4] = v2;
    dispatch_async(v3, block);
  }

  v4 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __71__NTKBundleComplicationMigrationServiceClient__setupConnectionIfNeeded__block_invoke_cold_1(v4);
  }
}

void __71__NTKBundleComplicationMigrationServiceClient__setupConnectionIfNeeded__block_invoke_12(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[6];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__NTKBundleComplicationMigrationServiceClient__setupConnectionIfNeeded__block_invoke_2_13;
    block[3] = &unk_27877DB10;
    block[4] = v2;
    dispatch_async(v3, block);
  }

  v4 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __71__NTKBundleComplicationMigrationServiceClient__setupConnectionIfNeeded__block_invoke_12_cold_1(v4);
  }
}

- (void)_queue_resetConnection:(BOOL)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (v3)
  {
    [(NSXPCConnection *)self->_connection invalidate];
  }

  connection = self->_connection;
  self->_connection = 0;
}

- (void)_queue_serviceRequest:(id)a3 retryBudget:(unint64_t)a4
{
  v36[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v32 = 0;
  [(NTKBundleComplicationMigrationServiceClient *)self _queue_incrementTransactionCount];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__NTKBundleComplicationMigrationServiceClient__queue_serviceRequest_retryBudget___block_invoke;
  aBlock[3] = &unk_278782988;
  aBlock[4] = self;
  v30 = v31;
  v7 = v6;
  v29 = v7;
  v8 = _Block_copy(aBlock);
  if (a4)
  {
    [(NTKBundleComplicationMigrationServiceClient *)self _setupConnectionIfNeeded];
    v9 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v34 = v7;
      _os_log_impl(&dword_22D9C5000, v9, OS_LOG_TYPE_DEFAULT, "NTKBundleComplicationMigrationServiceClient: Servicing request %{public}@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    connection = self->_connection;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __81__NTKBundleComplicationMigrationServiceClient__queue_serviceRequest_retryBudget___block_invoke_23;
    v24[3] = &unk_2787829D8;
    objc_copyWeak(v27, buf);
    v26 = v31;
    v11 = v7;
    v25 = v11;
    v27[1] = a4;
    v12 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v24];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __81__NTKBundleComplicationMigrationServiceClient__queue_serviceRequest_retryBudget___block_invoke_2;
    v21[3] = &unk_278782A00;
    objc_copyWeak(&v23, buf);
    v13 = v8;
    v22 = v13;
    [v12 processRequest:v11 completion:v21];

    v14 = dispatch_time(0, 300000000000);
    queue = self->_queue;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __81__NTKBundleComplicationMigrationServiceClient__queue_serviceRequest_retryBudget___block_invoke_4;
    v19[3] = &unk_27877E960;
    v20 = v13;
    dispatch_after(v14, queue, v19);

    objc_destroyWeak(&v23);
    objc_destroyWeak(v27);
    objc_destroyWeak(buf);
  }

  else
  {
    v16 = MEMORY[0x277CCA9B8];
    v35 = *MEMORY[0x277CCA450];
    v36[0] = @"Request exceeded maximum retry count";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v18 = [v16 errorWithDomain:@"com.apple.nanotimekit.bundleComplicationMigrationProvider" code:1 userInfo:v17];

    (*(v8 + 2))(v8, 0, v18);
  }

  _Block_object_dispose(v31, 8);
}

void __81__NTKBundleComplicationMigrationServiceClient__queue_serviceRequest_retryBudget___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 48));
  v7 = *(*(a1 + 48) + 8);
  if ((*(v7 + 24) & 1) == 0)
  {
    *(v7 + 24) = 1;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:{*(a1 + 40), 0}];
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          (*(*(*(&v13 + 1) + 8 * v12++) + 16))();
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }

    [*(*(a1 + 32) + 40) setObject:v5 forKeyedSubscript:*(a1 + 40)];
    [*(*(a1 + 32) + 32) setObject:0 forKeyedSubscript:*(a1 + 40)];
    [*(a1 + 32) _queue_decrementTransactionCount];
  }
}

void __81__NTKBundleComplicationMigrationServiceClient__queue_serviceRequest_retryBudget___block_invoke_23(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __81__NTKBundleComplicationMigrationServiceClient__queue_serviceRequest_retryBudget___block_invoke_23_cold_1(v3, v4);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained[6];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__NTKBundleComplicationMigrationServiceClient__queue_serviceRequest_retryBudget___block_invoke_24;
    block[3] = &unk_2787829B0;
    block[4] = WeakRetained;
    v9 = *(a1 + 32);
    v8 = v9;
    v11 = v9;
    v12 = *(a1 + 56);
    dispatch_async(v7, block);
  }
}

uint64_t __81__NTKBundleComplicationMigrationServiceClient__queue_serviceRequest_retryBudget___block_invoke_24(uint64_t a1)
{
  v1 = *(a1 + 56);
  *(*(*(a1 + 48) + 8) + 24) = 1;
  return [*(a1 + 32) _queue_serviceRequest:*(a1 + 40) retryBudget:v1 - 1];
}

void __81__NTKBundleComplicationMigrationServiceClient__queue_serviceRequest_retryBudget___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[6];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__NTKBundleComplicationMigrationServiceClient__queue_serviceRequest_retryBudget___block_invoke_3;
    block[3] = &unk_27877FF88;
    v13 = *(a1 + 32);
    v11 = v5;
    v12 = v6;
    dispatch_async(v9, block);
  }
}

void __81__NTKBundleComplicationMigrationServiceClient__queue_serviceRequest_retryBudget___block_invoke_4(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277CCA450];
  v6[0] = @"Request timed out";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v4 = [v2 errorWithDomain:@"com.apple.nanotimekit.bundleComplicationMigrationProvider" code:0 userInfo:v3];

  (*(*(a1 + 32) + 16))();
}

- (void)_queue_loadTypeLookupForDevice:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  [(NTKBundleComplicationMigrationServiceClient *)self _setupConnectionIfNeeded];
  [(NTKBundleComplicationMigrationServiceClient *)self _queue_incrementTransactionCount];
  objc_initWeak(&location, self);
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__NTKBundleComplicationMigrationServiceClient__queue_loadTypeLookupForDevice_completion___block_invoke;
  aBlock[3] = &unk_278782A28;
  v21 = v23;
  objc_copyWeak(&v22, &location);
  v8 = v7;
  v20 = v8;
  v9 = _Block_copy(aBlock);
  connection = self->_connection;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __89__NTKBundleComplicationMigrationServiceClient__queue_loadTypeLookupForDevice_completion___block_invoke_3;
  v17[3] = &unk_278782A50;
  v11 = v9;
  v18 = v11;
  v12 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v17];
  v13 = [v6 descriptor];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __89__NTKBundleComplicationMigrationServiceClient__queue_loadTypeLookupForDevice_completion___block_invoke_4;
  v15[3] = &unk_278782A50;
  v14 = v11;
  v16 = v14;
  [v12 generateComplicationTypeLookupForDevice:v13 completion:v15];

  objc_destroyWeak(&v22);
  _Block_object_dispose(v23, 8);
  objc_destroyWeak(&location);
}

void __89__NTKBundleComplicationMigrationServiceClient__queue_loadTypeLookupForDevice_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 40) + 8);
  if ((*(v4 + 24) & 1) == 0)
  {
    *(v4 + 24) = 1;
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v6 = WeakRetained;
    if (WeakRetained)
    {
      v7 = WeakRetained[6];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __89__NTKBundleComplicationMigrationServiceClient__queue_loadTypeLookupForDevice_completion___block_invoke_2;
      block[3] = &unk_27877DB10;
      block[4] = v6;
      dispatch_async(v7, block);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __89__NTKBundleComplicationMigrationServiceClient__queue_loadTypeLookupForDevice_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __89__NTKBundleComplicationMigrationServiceClient__queue_loadTypeLookupForDevice_completion___block_invoke_4_cold_1(v3, v4);
    }

    v5 = *(*(a1 + 32) + 16);
  }

  else
  {
    v5 = *(*(a1 + 32) + 16);
  }

  v5();
}

- (void)_queue_updateInvalidationTimer
{
  dispatch_assert_queue_V2(self->_queue);
  [(NTKBundleComplicationMigrationServiceClient *)self _queue_clearInvalidationTimer];
  if (!self->_transactionCount)
  {
    v3 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "NTKBundleComplicationMigrationServiceClient: Beginning invalidation timer", buf, 2u);
    }

    objc_initWeak(buf, self);
    v4 = MEMORY[0x277CBEBB8];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __77__NTKBundleComplicationMigrationServiceClient__queue_updateInvalidationTimer__block_invoke;
    v8[3] = &unk_278782A78;
    objc_copyWeak(&v9, buf);
    v5 = [v4 timerWithTimeInterval:0 repeats:v8 block:30.0];
    [(NSTimer *)v5 setTolerance:3.0];
    v6 = [MEMORY[0x277CBEB88] mainRunLoop];
    [v6 addTimer:v5 forMode:*MEMORY[0x277CBE738]];

    invalidationTimer = self->_invalidationTimer;
    self->_invalidationTimer = v5;

    objc_destroyWeak(&v9);
    objc_destroyWeak(buf);
  }
}

void __77__NTKBundleComplicationMigrationServiceClient__queue_updateInvalidationTimer__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v9 = 30;
    _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_DEFAULT, "NTKBundleComplicationMigrationServiceClient: Connection has been inactive for %lus, closing connection", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[2];
    WeakRetained[2] = 0;

    v6 = v4[6];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__NTKBundleComplicationMigrationServiceClient__queue_updateInvalidationTimer__block_invoke_30;
    block[3] = &unk_27877DB10;
    block[4] = v4;
    dispatch_async(v6, block);
  }
}

- (void)_queue_clearInvalidationTimer
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_invalidationTimer)
  {
    v3 = _NTKLoggingObjectForDomain(56, "NTKLoggingDomainBundleComplicationMigration");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "NTKBundleComplicationMigrationServiceClient: Cancelled invalidation timer", v5, 2u);
    }

    [(NSTimer *)self->_invalidationTimer invalidate];
    invalidationTimer = self->_invalidationTimer;
    self->_invalidationTimer = 0;
  }
}

- (void)_queue_incrementTransactionCount
{
  dispatch_assert_queue_V2(self->_queue);
  ++self->_transactionCount;

  [(NTKBundleComplicationMigrationServiceClient *)self _queue_clearInvalidationTimer];
}

- (void)_queue_decrementTransactionCount
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = self->_transactionCount - 1;
  self->_transactionCount = v3;
  if (!v3)
  {

    [(NTKBundleComplicationMigrationServiceClient *)self _queue_updateInvalidationTimer];
  }
}

void __81__NTKBundleComplicationMigrationServiceClient__queue_serviceRequest_retryBudget___block_invoke_23_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "NTKBundleComplicationMigrationServiceClient: Remote object proxy error %@", &v2, 0xCu);
}

void __89__NTKBundleComplicationMigrationServiceClient__queue_loadTypeLookupForDevice_completion___block_invoke_4_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_FAULT, "Request to generate type lookup failed: %@", &v2, 0xCu);
}

@end