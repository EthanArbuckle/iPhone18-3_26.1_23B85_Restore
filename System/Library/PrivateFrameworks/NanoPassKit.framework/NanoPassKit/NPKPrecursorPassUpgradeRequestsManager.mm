@interface NPKPrecursorPassUpgradeRequestsManager
- (NPKPrecursorPassUpgradeRequestsManager)init;
- (id)descriptionForPassWithUniqueID:(id)d;
- (void)_queue_addObserver:(id)observer;
- (void)_queue_invalidateUpgradeControllerForPassWithUniqueID:(id)d;
- (void)_queue_notifyObserversDidChangeUpgradeRequestDescription:(id)description forPassWithUniqueID:(id)d;
- (void)_queue_removeObserver:(id)observer;
- (void)addObserver:(id)observer;
- (void)invalidateUpgradeControllerForPassWithUniqueID:(id)d;
- (void)loadUpgradeControllerForPass:(id)pass;
- (void)notifyObserversDidChangeUpgradeRequestDescription:(id)description forPassWithUniqueID:(id)d;
- (void)precursorPassUpgradeRequestsDidChangeForUpgradeController:(id)controller;
- (void)removeObserver:(id)observer;
@end

@implementation NPKPrecursorPassUpgradeRequestsManager

- (NPKPrecursorPassUpgradeRequestsManager)init
{
  v10.receiver = self;
  v10.super_class = NPKPrecursorPassUpgradeRequestsManager;
  v2 = [(NPKPrecursorPassUpgradeRequestsManager *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.NanoPasskit.NPKPrecursorPassUpgradeRequestsManager", MEMORY[0x277D85CD8]);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v3;

    objc_storeStrong(&v2->_observerQueue, MEMORY[0x277D85CD0]);
    v5 = objc_alloc_init(NPKObserverManager);
    observerManager = v2->_observerManager;
    v2->_observerManager = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    upgradeControllerMap = v2->_upgradeControllerMap;
    v2->_upgradeControllerMap = v7;
  }

  return v2;
}

- (void)loadUpgradeControllerForPass:(id)pass
{
  v45 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  uniqueID = [passCopy uniqueID];
  if ([passCopy npkIsPrecursorPass])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v41 = 0x3032000000;
    v42 = __Block_byref_object_copy__15;
    v43 = __Block_byref_object_dispose__15;
    v44 = 0;
    objc_initWeak(&location, self);
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__NPKPrecursorPassUpgradeRequestsManager_loadUpgradeControllerForPass___block_invoke_58;
    block[3] = &unk_279948C68;
    objc_copyWeak(&v33, &location);
    p_buf = &buf;
    v7 = uniqueID;
    v31 = v7;
    dispatch_sync(internalQueue, block);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __71__NPKPrecursorPassUpgradeRequestsManager_loadUpgradeControllerForPass___block_invoke_2;
    aBlock[3] = &unk_279948CE0;
    objc_copyWeak(&v29, &location);
    v8 = v7;
    v28 = v8;
    v9 = _Block_copy(aBlock);
    v10 = v9;
    if (*(*(&buf + 1) + 40))
    {
      (*(v9 + 2))(v9);
    }

    else
    {
      v15 = pk_General_log();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

      if (v16)
      {
        v17 = pk_General_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *v38 = 138412290;
          v39 = v8;
          _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Notice: NPKPrecursorPassUpgradeRequestsManager: Creating upgradeController for pass: %@", v38, 0xCu);
        }
      }

      v18 = [[NPKPrecursorPassUpgradeRequestController alloc] initWithPass:passCopy];
      v19 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v18;

      [*(*(&buf + 1) + 40) setDelegate:self];
      v20 = self->_internalQueue;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __71__NPKPrecursorPassUpgradeRequestsManager_loadUpgradeControllerForPass___block_invoke_62;
      v22[3] = &unk_279948D08;
      objc_copyWeak(&v26, &location);
      v25 = &buf;
      v23 = passCopy;
      v24 = v8;
      dispatch_barrier_async(v20, v22);
      v10[2](v10, *(*(&buf + 1) + 40));

      objc_destroyWeak(&v26);
    }

    objc_destroyWeak(&v29);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v11 = pk_General_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v13 = pk_General_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = uniqueID;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: NPKPrecursorPassUpgradeRequestsManager: Unable to load data; pass (%@) is not a precursor pass.", &buf, 0xCu);
      }
    }

    objc_initWeak(&buf, self);
    v14 = self->_internalQueue;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __71__NPKPrecursorPassUpgradeRequestsManager_loadUpgradeControllerForPass___block_invoke;
    v35[3] = &unk_279945240;
    objc_copyWeak(&v37, &buf);
    v36 = uniqueID;
    dispatch_async(v14, v35);

    objc_destroyWeak(&v37);
    objc_destroyWeak(&buf);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __71__NPKPrecursorPassUpgradeRequestsManager_loadUpgradeControllerForPass___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _queue_notifyObserversDidChangeUpgradeRequestDescription:0 forPassWithUniqueID:*(a1 + 32)];
  [WeakRetained _queue_invalidateUpgradeControllerForPassWithUniqueID:*(a1 + 32)];
}

void __71__NPKPrecursorPassUpgradeRequestsManager_loadUpgradeControllerForPass___block_invoke_58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained[4] objectForKeyedSubscript:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __71__NPKPrecursorPassUpgradeRequestsManager_loadUpgradeControllerForPass___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__NPKPrecursorPassUpgradeRequestsManager_loadUpgradeControllerForPass___block_invoke_3;
  block[3] = &unk_279948CB8;
  v7 = v3;
  v5 = v3;
  objc_copyWeak(&v9, (a1 + 40));
  v8 = *(a1 + 32);
  dispatch_async(v4, block);

  objc_destroyWeak(&v9);
}

void __71__NPKPrecursorPassUpgradeRequestsManager_loadUpgradeControllerForPass___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __71__NPKPrecursorPassUpgradeRequestsManager_loadUpgradeControllerForPass___block_invoke_4;
  v3[3] = &unk_279948C90;
  objc_copyWeak(&v5, (a1 + 48));
  v4 = *(a1 + 40);
  [v2 fetchUpgradeRequestsWithCompletion:v3];

  objc_destroyWeak(&v5);
}

void __71__NPKPrecursorPassUpgradeRequestsManager_loadUpgradeControllerForPass___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained notifyObserversDidChangeUpgradeRequestDescription:v3 forPassWithUniqueID:*(a1 + 32)];
}

void __71__NPKPrecursorPassUpgradeRequestsManager_loadUpgradeControllerForPass___block_invoke_62(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(*(a1 + 48) + 8) + 40);
      v7 = [*(a1 + 32) uniqueID];
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: NPKPrecursorPassUpgradeRequestsManager: Created upgradeController (%@) for pass: %@", &v9, 0x16u);
    }
  }

  [WeakRetained[4] setObject:*(*(*(a1 + 48) + 8) + 40) forKeyedSubscript:*(a1 + 40)];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)invalidateUpgradeControllerForPassWithUniqueID:(id)d
{
  dCopy = d;
  objc_initWeak(&location, self);
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__NPKPrecursorPassUpgradeRequestsManager_invalidateUpgradeControllerForPassWithUniqueID___block_invoke;
  block[3] = &unk_279945240;
  objc_copyWeak(&v9, &location);
  v8 = dCopy;
  v6 = dCopy;
  dispatch_barrier_async(internalQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __89__NPKPrecursorPassUpgradeRequestsManager_invalidateUpgradeControllerForPassWithUniqueID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _queue_invalidateUpgradeControllerForPassWithUniqueID:*(a1 + 32)];
}

- (id)descriptionForPassWithUniqueID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__15;
  v16 = __Block_byref_object_dispose__15;
  v17 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__NPKPrecursorPassUpgradeRequestsManager_descriptionForPassWithUniqueID___block_invoke;
  block[3] = &unk_279948090;
  block[4] = self;
  v10 = dCopy;
  v11 = &v12;
  v6 = dCopy;
  dispatch_sync(internalQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __73__NPKPrecursorPassUpgradeRequestsManager_descriptionForPassWithUniqueID___block_invoke(void *a1)
{
  v5 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];
  v2 = [v5 upgradeRequestDescription];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  objc_initWeak(&location, self);
  observerQueue = self->_observerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__NPKPrecursorPassUpgradeRequestsManager_addObserver___block_invoke;
  block[3] = &unk_279945240;
  objc_copyWeak(&v9, &location);
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(observerQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __54__NPKPrecursorPassUpgradeRequestsManager_addObserver___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _queue_addObserver:*(a1 + 32)];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  objc_initWeak(&location, self);
  observerQueue = self->_observerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__NPKPrecursorPassUpgradeRequestsManager_removeObserver___block_invoke;
  block[3] = &unk_279945240;
  objc_copyWeak(&v9, &location);
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(observerQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __57__NPKPrecursorPassUpgradeRequestsManager_removeObserver___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _queue_removeObserver:*(a1 + 32)];
}

- (void)precursorPassUpgradeRequestsDidChangeForUpgradeController:(id)controller
{
  controllerCopy = controller;
  upgradeRequestDescription = [controllerCopy upgradeRequestDescription];
  pass = [controllerCopy pass];

  uniqueID = [pass uniqueID];
  [(NPKPrecursorPassUpgradeRequestsManager *)self notifyObserversDidChangeUpgradeRequestDescription:upgradeRequestDescription forPassWithUniqueID:uniqueID];
}

- (void)notifyObserversDidChangeUpgradeRequestDescription:(id)description forPassWithUniqueID:(id)d
{
  descriptionCopy = description;
  dCopy = d;
  objc_initWeak(&location, self);
  internalQueue = self->_internalQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __112__NPKPrecursorPassUpgradeRequestsManager_notifyObserversDidChangeUpgradeRequestDescription_forPassWithUniqueID___block_invoke;
  v11[3] = &unk_279945290;
  objc_copyWeak(&v14, &location);
  v12 = descriptionCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = descriptionCopy;
  dispatch_async(internalQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __112__NPKPrecursorPassUpgradeRequestsManager_notifyObserversDidChangeUpgradeRequestDescription_forPassWithUniqueID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _queue_notifyObserversDidChangeUpgradeRequestDescription:*(a1 + 32) forPassWithUniqueID:*(a1 + 40)];
}

- (void)_queue_invalidateUpgradeControllerForPassWithUniqueID:(id)d
{
  v11 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dispatch_assert_queue_V2(self->_internalQueue);
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = dCopy;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKPrecursorPassUpgradeRequestsManager: Invalidating upgradeController for pass: %@", &v9, 0xCu);
    }
  }

  [(NSMutableDictionary *)self->_upgradeControllerMap removeObjectForKey:dCopy];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_queue_addObserver:(id)observer
{
  observerQueue = self->_observerQueue;
  observerCopy = observer;
  dispatch_assert_queue_V2(observerQueue);
  [(NPKObserverManager *)self->_observerManager registerObserver:observerCopy];
}

- (void)_queue_removeObserver:(id)observer
{
  observerQueue = self->_observerQueue;
  observerCopy = observer;
  dispatch_assert_queue_V2(observerQueue);
  [(NPKObserverManager *)self->_observerManager unregisterObserver:observerCopy];
}

- (void)_queue_notifyObserversDidChangeUpgradeRequestDescription:(id)description forPassWithUniqueID:(id)d
{
  descriptionCopy = description;
  dCopy = d;
  dispatch_assert_queue_V2(self->_internalQueue);
  objc_initWeak(&location, self);
  observerManager = self->_observerManager;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __119__NPKPrecursorPassUpgradeRequestsManager__queue_notifyObserversDidChangeUpgradeRequestDescription_forPassWithUniqueID___block_invoke;
  v11[3] = &unk_279948D30;
  objc_copyWeak(&v14, &location);
  v9 = descriptionCopy;
  v12 = v9;
  v10 = dCopy;
  v13 = v10;
  [(NPKObserverManager *)observerManager enumerateObserversUsingBlock:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __119__NPKPrecursorPassUpgradeRequestsManager__queue_notifyObserversDidChangeUpgradeRequestDescription_forPassWithUniqueID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [v3 precursorPassRequestsManager:WeakRetained didUpdateUpgradePrequestDescription:*(a1 + 32) forPassUniqueID:*(a1 + 40)];
}

@end