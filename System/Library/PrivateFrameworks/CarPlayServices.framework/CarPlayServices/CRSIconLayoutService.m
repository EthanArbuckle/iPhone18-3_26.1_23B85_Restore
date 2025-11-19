@interface CRSIconLayoutService
- (CRSIconLayoutService)initWithDelegate:(id)a3;
- (CRSIconLayoutServiceDelegate)delegate;
- (id)_newInvalidRequestErrorDueToInvalidDataProvider;
- (id)_newInvalidRequestErrorDueToNilVehicleID;
- (void)_connectionQueue_addConnection:(id)a3;
- (void)_connectionQueue_removeConnection:(id)a3;
- (void)fetchApplicationIconInformationForBundleIdentifier:(id)a3 vehicleID:(id)a4 drawBorder:(id)a5 completion:(id)a6;
- (void)fetchIconStateForVehicleID:(id)a3 completion:(id)a4;
- (void)fetchWidgetStateForVehicleID:(id)a3 completion:(id)a4;
- (void)invalidate;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)refreshWidgetStateForVehicleID:(id)a3;
- (void)resetIconStateForVehicleID:(id)a3;
- (void)resetWidgetStateForVehicleID:(id)a3;
- (void)setIconState:(id)a3 forVehicleID:(id)a4;
- (void)setWidgetState:(id)a3 forVehicleID:(id)a4;
@end

@implementation CRSIconLayoutService

- (CRSIconLayoutService)initWithDelegate:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = CRSIconLayoutService;
  v5 = [(CRSIconLayoutService *)&v22 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = [MEMORY[0x277CF0C18] serial];
    v8 = BSDispatchQueueCreate();
    connectionQueue = v6->_connectionQueue;
    v6->_connectionQueue = v8;

    v10 = [MEMORY[0x277CCAA50] hashTableWithOptions:512];
    connections = v6->_connections;
    v6->_connections = v10;

    v12 = MEMORY[0x277CF32A0];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __41__CRSIconLayoutService_initWithDelegate___block_invoke;
    v20[3] = &unk_278D8E008;
    v13 = v6;
    v21 = v13;
    v14 = [v12 listenerWithConfigurator:v20];
    v15 = v13[2];
    v13[2] = v14;

    v16 = CRSLogForCategory(1uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = v13[2];
      *buf = 138412290;
      v24 = v17;
      _os_log_impl(&dword_242FB5000, v16, OS_LOG_TYPE_INFO, "Activating listener! %@", buf, 0xCu);
    }

    [v13[2] activate];
  }

  v18 = *MEMORY[0x277D85DE8];
  return v6;
}

void __41__CRSIconLayoutService_initWithDelegate___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setDomain:@"com.apple.CarPlay"];
  v3 = +[CRSIconLayoutServiceSpecification identifier];
  [v4 setService:v3];

  [v4 setDelegate:*(a1 + 32)];
}

- (void)invalidate
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = CRSLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(CRSIconLayoutService *)self listener];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_242FB5000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating listener! %@", &v6, 0xCu);
  }

  [(BSServiceConnectionListener *)self->_listener invalidate];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CRSLogForCategory(1uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v25 = v9;
    _os_log_impl(&dword_242FB5000, v11, OS_LOG_TYPE_INFO, "Received connection! %@", buf, 0xCu);
  }

  v12 = [v9 remoteProcess];
  v13 = [v12 hasEntitlement:@"com.apple.private.CarPlayServices.icon-layout"];

  if (v13)
  {
    objc_initWeak(&location, self);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __66__CRSIconLayoutService_listener_didReceiveConnection_withContext___block_invoke;
    v21[3] = &unk_278D8E058;
    objc_copyWeak(&v22, &location);
    [v9 configureConnection:v21];
    v14 = CRSLogForCategory(1uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = v9;
      _os_log_impl(&dword_242FB5000, v14, OS_LOG_TYPE_INFO, "Activating connection... %@", buf, 0xCu);
    }

    v15 = [(CRSIconLayoutService *)self connectionQueue];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __66__CRSIconLayoutService_listener_didReceiveConnection_withContext___block_invoke_16;
    v18[3] = &unk_278D8E080;
    objc_copyWeak(&v20, &location);
    v19 = v9;
    dispatch_async(v15, v18);

    objc_destroyWeak(&v20);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  else
  {
    v16 = CRSLogForCategory(1uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CRSIconLayoutService listener:v9 didReceiveConnection:v16 withContext:?];
    }

    [v9 invalidate];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __66__CRSIconLayoutService_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = +[CRSIconLayoutServiceSpecification serviceQuality];
    [v3 setServiceQuality:v5];

    v6 = +[CRSIconLayoutServiceSpecification interface];
    [v3 setInterface:v6];

    [v3 setInterfaceTarget:WeakRetained];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __66__CRSIconLayoutService_listener_didReceiveConnection_withContext___block_invoke_2;
    v8[3] = &unk_278D8E030;
    objc_copyWeak(&v9, (a1 + 32));
    [v3 setInvalidationHandler:v8];
    v7 = [WeakRetained connectionQueue];
    [v3 setTargetQueue:v7];

    objc_destroyWeak(&v9);
  }
}

void __66__CRSIconLayoutService_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CRSLogForCategory(1uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_242FB5000, v4, OS_LOG_TYPE_INFO, "Connection invalidated! %@", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionQueue_removeConnection:v3];

  v6 = *MEMORY[0x277D85DE8];
}

void __66__CRSIconLayoutService_listener_didReceiveConnection_withContext___block_invoke_16(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained((a1 + 40));
    [v3 _connectionQueue_addConnection:*(a1 + 32)];

    [*(a1 + 32) activate];
    WeakRetained = v4;
  }
}

- (void)fetchIconStateForVehicleID:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = CRSLogForCategory(1uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = v6;
    _os_log_impl(&dword_242FB5000, v8, OS_LOG_TYPE_DEFAULT, "Received request for icon state for vehicle: %{public}@", buf, 0xCu);
  }

  if (v7)
  {
    objc_initWeak(buf, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__CRSIconLayoutService_fetchIconStateForVehicleID_completion___block_invoke;
    block[3] = &unk_278D8E0A8;
    objc_copyWeak(&v13, buf);
    v11 = v6;
    v12 = v7;
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __62__CRSIconLayoutService_fetchIconStateForVehicleID_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (WeakRetained && *(a1 + 32))
  {
    v3 = [WeakRetained delegate];
    v4 = [v3 iconLayoutService:v6 iconLayoutDataProviderForVehicleID:*(a1 + 32)];

    [v4 getIconStateWithCompletion:*(a1 + 40)];
  }

  else
  {
    v5 = *(a1 + 40);
    v4 = [WeakRetained _newInvalidRequestErrorDueToNilVehicleID];
    (*(v5 + 16))(v5, 0, v4);
  }
}

- (void)setIconState:(id)a3 forVehicleID:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = CRSLogForCategory(1uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = v7;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_242FB5000, v8, OS_LOG_TYPE_DEFAULT, "Received request to set icon state for vehicle: %{public}@ to %@", buf, 0x16u);
  }

  if (v7)
  {
    objc_initWeak(buf, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__CRSIconLayoutService_setIconState_forVehicleID___block_invoke;
    block[3] = &unk_278D8E0D0;
    objc_copyWeak(&v14, buf);
    v12 = v7;
    v13 = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  else
  {
    v9 = CRSLogForCategory(1uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CRSIconLayoutService setIconState:forVehicleID:];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __50__CRSIconLayoutService_setIconState_forVehicleID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained delegate];
  v3 = [v2 iconLayoutService:WeakRetained iconLayoutDataProviderForVehicleID:*(a1 + 32)];

  [v3 setIconState:*(a1 + 40)];
}

- (void)resetIconStateForVehicleID:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = CRSLogForCategory(1uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = v4;
    _os_log_impl(&dword_242FB5000, v5, OS_LOG_TYPE_DEFAULT, "Received request to reset icon state for vehicle: %{public}@", buf, 0xCu);
  }

  if (v4)
  {
    objc_initWeak(buf, self);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__CRSIconLayoutService_resetIconStateForVehicleID___block_invoke;
    v8[3] = &unk_278D8E080;
    objc_copyWeak(&v10, buf);
    v9 = v4;
    dispatch_async(MEMORY[0x277D85CD0], v8);

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }

  else
  {
    v6 = CRSLogForCategory(1uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CRSIconLayoutService resetIconStateForVehicleID:];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __51__CRSIconLayoutService_resetIconStateForVehicleID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  v3 = [v2 iconLayoutService:WeakRetained iconLayoutDataProviderForVehicleID:*(a1 + 32)];

  [v3 resetIconState];
}

- (void)fetchApplicationIconInformationForBundleIdentifier:(id)a3 vehicleID:(id)a4 drawBorder:(id)a5 completion:(id)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = CRSLogForCategory(1uLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v23 = v10;
    v24 = 2114;
    v25 = v11;
    _os_log_impl(&dword_242FB5000, v14, OS_LOG_TYPE_DEFAULT, "Received request for icon information for %{public}@, vehicle: %{public}@", buf, 0x16u);
  }

  if (v13)
  {
    objc_initWeak(buf, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __107__CRSIconLayoutService_fetchApplicationIconInformationForBundleIdentifier_vehicleID_drawBorder_completion___block_invoke;
    block[3] = &unk_278D8E0F8;
    objc_copyWeak(&v21, buf);
    v17 = v11;
    v20 = v13;
    v18 = v10;
    v19 = v12;
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __107__CRSIconLayoutService_fetchApplicationIconInformationForBundleIdentifier_vehicleID_drawBorder_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v6 = WeakRetained;
  if (WeakRetained && *(a1 + 32))
  {
    v3 = [WeakRetained delegate];
    v4 = [v3 iconLayoutService:v6 iconLayoutDataProviderForVehicleID:*(a1 + 32)];

    [v4 getApplicationIconInformationForBundleID:*(a1 + 40) drawBorder:objc_msgSend(*(a1 + 48) completion:{"BOOLValue"), *(a1 + 56)}];
  }

  else
  {
    v5 = *(a1 + 56);
    v4 = [WeakRetained _newInvalidRequestErrorDueToNilVehicleID];
    (*(v5 + 16))(v5, 0, v4);
  }
}

- (void)fetchWidgetStateForVehicleID:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = CRSLogForCategory(1uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = v6;
    _os_log_impl(&dword_242FB5000, v8, OS_LOG_TYPE_DEFAULT, "Received request to fetch widget state for vehicle: %{public}@", buf, 0xCu);
  }

  if (v7)
  {
    objc_initWeak(buf, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__CRSIconLayoutService_fetchWidgetStateForVehicleID_completion___block_invoke;
    block[3] = &unk_278D8E0A8;
    objc_copyWeak(&v13, buf);
    v11 = v6;
    v12 = v7;
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __64__CRSIconLayoutService_fetchWidgetStateForVehicleID_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained && *(a1 + 32))
  {
    v3 = [WeakRetained delegate];
    v4 = [v3 iconLayoutService:v8 widgetLayoutDataProviderForVehicleID:*(a1 + 32)];

    v5 = *(a1 + 40);
    if (v4)
    {
      [v4 getWidgetStateWithCompletion:v5];
    }

    else
    {
      v7 = [v8 _newInvalidRequestErrorDueToInvalidDataProvider];
      (*(v5 + 16))(v5, 0, v7);
    }
  }

  else
  {
    v6 = *(a1 + 40);
    v4 = [WeakRetained _newInvalidRequestErrorDueToNilVehicleID];
    (*(v6 + 16))(v6, 0, v4);
  }
}

- (void)setWidgetState:(id)a3 forVehicleID:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = CRSLogForCategory(1uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = v7;
    _os_log_impl(&dword_242FB5000, v8, OS_LOG_TYPE_DEFAULT, "Received request to set widget state for vehicle: %{public}@", buf, 0xCu);
  }

  if (v7)
  {
    objc_initWeak(buf, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__CRSIconLayoutService_setWidgetState_forVehicleID___block_invoke;
    block[3] = &unk_278D8E0D0;
    objc_copyWeak(&v14, buf);
    v12 = v7;
    v13 = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  else
  {
    v9 = CRSLogForCategory(1uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CRSIconLayoutService setWidgetState:forVehicleID:];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __52__CRSIconLayoutService_setWidgetState_forVehicleID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained delegate];
  v3 = [v2 iconLayoutService:WeakRetained widgetLayoutDataProviderForVehicleID:*(a1 + 32)];

  [v3 setWidgetState:*(a1 + 40) initiatedBy:0];
}

- (void)resetWidgetStateForVehicleID:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = CRSLogForCategory(1uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = v4;
    _os_log_impl(&dword_242FB5000, v5, OS_LOG_TYPE_DEFAULT, "Received request to reset widget state for vehicle: %{public}@", buf, 0xCu);
  }

  if (v4)
  {
    objc_initWeak(buf, self);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __53__CRSIconLayoutService_resetWidgetStateForVehicleID___block_invoke;
    v8[3] = &unk_278D8E080;
    objc_copyWeak(&v10, buf);
    v9 = v4;
    dispatch_async(MEMORY[0x277D85CD0], v8);

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }

  else
  {
    v6 = CRSLogForCategory(1uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CRSIconLayoutService resetWidgetStateForVehicleID:];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __53__CRSIconLayoutService_resetWidgetStateForVehicleID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  v3 = [v2 iconLayoutService:WeakRetained widgetLayoutDataProviderForVehicleID:*(a1 + 32)];

  [v3 resetWidgetState];
}

- (void)refreshWidgetStateForVehicleID:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = CRSLogForCategory(1uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = v4;
    _os_log_impl(&dword_242FB5000, v5, OS_LOG_TYPE_DEFAULT, "Sending request to refresh widget state for vehicle: %{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  connectionQueue = self->_connectionQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__CRSIconLayoutService_refreshWidgetStateForVehicleID___block_invoke;
  v9[3] = &unk_278D8E080;
  objc_copyWeak(&v11, buf);
  v10 = v4;
  v7 = v4;
  dispatch_async(connectionQueue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
  v8 = *MEMORY[0x277D85DE8];
}

void __55__CRSIconLayoutService_refreshWidgetStateForVehicleID___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [WeakRetained connections];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * v7) remoteTarget];
        [v8 refreshWidgetStateForVehicleID:*(a1 + 32)];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_connectionQueue_addConnection:(id)a3
{
  v4 = a3;
  v5 = [(CRSIconLayoutService *)self connections];
  [v5 addObject:v4];

  v6 = [(CRSIconLayoutService *)self temporaryWatchdogMonitoringAssertion];

  if (!v6)
  {
    v8 = [MEMORY[0x277D0AB10] sharedInstance];
    v7 = [v8 assertWatchdogEnabledForLimitedDurationForReason:@"CarPlayIconLayoutService"];
    [(CRSIconLayoutService *)self setTemporaryWatchdogMonitoringAssertion:v7];
  }
}

- (void)_connectionQueue_removeConnection:(id)a3
{
  v4 = a3;
  v5 = [(CRSIconLayoutService *)self connections];
  [v5 removeObject:v4];

  v6 = [(CRSIconLayoutService *)self connections];
  v7 = [v6 count];

  if (!v7)
  {
    v8 = [(CRSIconLayoutService *)self temporaryWatchdogMonitoringAssertion];
    [v8 invalidate];

    [(CRSIconLayoutService *)self setTemporaryWatchdogMonitoringAssertion:0];
  }
}

- (id)_newInvalidRequestErrorDueToNilVehicleID
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA9B8];
  v3 = CRSIconLayoutServiceErrorDomain;
  v8 = *MEMORY[0x277CCA450];
  v9[0] = @"Invalid request for a nil vehicle ID";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v2 errorWithDomain:v3 code:1 userInfo:v4];

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)_newInvalidRequestErrorDueToInvalidDataProvider
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA9B8];
  v3 = CRSIconLayoutServiceErrorDomain;
  v8 = *MEMORY[0x277CCA450];
  v9[0] = @"Invalid request, no provider";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v2 errorWithDomain:v3 code:1 userInfo:v4];

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (CRSIconLayoutServiceDelegate)delegate
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
  _os_log_error_impl(&dword_242FB5000, a2, OS_LOG_TYPE_ERROR, "Process does not have the required entitlement: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end