@interface NPKCompanionAgentConnectionDeferredActionHandler
+ (id)sharedDeferredActionHandler;
- (NPKCompanionAgentConnectionDeferredActionHandler)init;
- (id)deferredPaymentPassUniqueIDsForDevice:(id)a3 excludingDeactivated:(BOOL)a4;
- (id)deferredPaymentPassWithUniqueID:(id)a3 forDevice:(id)a4;
- (id)deferredPaymentPassesForDevice:(id)a3;
- (id)deferredSharedPaymentWebServiceContextForDevice:(id)a3;
- (void)_cleanUpDeferredDataForPairingID:(id)a3;
- (void)_handleCompanionAgentStarted;
- (void)_handleDeviceBecameActive:(id)a3;
- (void)_handleDevicePaired:(id)a3;
- (void)_handleDevicePairingFailure:(id)a3;
- (void)_handleDeviceUnpaired:(id)a3;
- (void)_performDeferredActions;
- (void)addDeferredPaymentPass:(id)a3 forDevice:(id)a4;
- (void)dealloc;
- (void)performActionWhenCompanionAgentIsAvailable:(id)a3 forDevice:(id)a4;
- (void)setDeferredSharedPaymentWebServiceContext:(id)a3 forDevice:(id)a4;
@end

@implementation NPKCompanionAgentConnectionDeferredActionHandler

+ (id)sharedDeferredActionHandler
{
  if (sharedDeferredActionHandler_onceToken != -1)
  {
    +[NPKCompanionAgentConnectionDeferredActionHandler sharedDeferredActionHandler];
  }

  v3 = sharedDeferredActionHandler_sharedDeferredActionHandler;

  return v3;
}

void __79__NPKCompanionAgentConnectionDeferredActionHandler_sharedDeferredActionHandler__block_invoke()
{
  v0 = objc_alloc_init(NPKCompanionAgentConnectionDeferredActionHandler);
  v1 = sharedDeferredActionHandler_sharedDeferredActionHandler;
  sharedDeferredActionHandler_sharedDeferredActionHandler = v0;
}

- (NPKCompanionAgentConnectionDeferredActionHandler)init
{
  v20.receiver = self;
  v20.super_class = NPKCompanionAgentConnectionDeferredActionHandler;
  v2 = [(NPKCompanionAgentConnectionDeferredActionHandler *)&v20 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    deferredActions = v2->_deferredActions;
    v2->_deferredActions = v3;

    v5 = [MEMORY[0x277CBEB38] dictionary];
    deferredSharedPaymentWebServiceContexts = v2->_deferredSharedPaymentWebServiceContexts;
    v2->_deferredSharedPaymentWebServiceContexts = v5;

    v7 = [MEMORY[0x277CBEB38] dictionary];
    deferredAddedPaymentPasses = v2->_deferredAddedPaymentPasses;
    v2->_deferredAddedPaymentPasses = v7;

    v9 = dispatch_queue_create("NPKCompanionAgentDeferredActionHandler", 0);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v9;

    v11 = [MEMORY[0x277D2BCF8] sharedInstance];
    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 addObserver:v2 selector:sel__handleDeviceUnpaired_ name:*MEMORY[0x277D2BC78] object:v11];
    [v12 addObserver:v2 selector:sel__handleDevicePaired_ name:*MEMORY[0x277D2BC68] object:v11];
    [v12 addObserver:v2 selector:sel__handleDeviceBecameActive_ name:*MEMORY[0x277D2BC48] object:v11];
    [v12 addObserver:v2 selector:sel__handleDevicePairingFailure_ name:*MEMORY[0x277D2BC58] object:v11];
    out_token = 0;
    objc_initWeak(&location, v2);
    v13 = [@"com.apple.NPKCompanionAgent.started" UTF8String];
    v14 = v2->_internalQueue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __56__NPKCompanionAgentConnectionDeferredActionHandler_init__block_invoke;
    handler[3] = &unk_279944F20;
    objc_copyWeak(&v17, &location);
    notify_register_dispatch(v13, &out_token, v14, handler);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __56__NPKCompanionAgentConnectionDeferredActionHandler_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleCompanionAgentStarted];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = NPKCompanionAgentConnectionDeferredActionHandler;
  [(NPKCompanionAgentConnectionDeferredActionHandler *)&v4 dealloc];
}

- (void)performActionWhenCompanionAgentIsAvailable:(id)a3 forDevice:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 valueForProperty:*MEMORY[0x277D2BBB8]];
  v9 = pk_Payment_log();
  v10 = v9;
  if (v8)
  {
    v11 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v12 = pk_Payment_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = _Block_copy(v6);
        *buf = 138412290;
        v23 = v13;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Perform action when companion agent is available: %@", buf, 0xCu);
      }
    }

    v14 = [(NPKCompanionAgentConnectionDeferredActionHandler *)self internalQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __105__NPKCompanionAgentConnectionDeferredActionHandler_performActionWhenCompanionAgentIsAvailable_forDevice___block_invoke;
    block[3] = &unk_279945A48;
    block[4] = self;
    v20 = v8;
    v21 = v6;
    dispatch_async(v14, block);
  }

  else
  {
    v15 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

    if (v15)
    {
      v16 = pk_Payment_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = _Block_copy(v6);
        *buf = 138412546;
        v23 = v7;
        v24 = 2112;
        v25 = v17;
        _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_ERROR, "Error: Not performing action when companion agent is available because pairing ID is nil! Device: %@, action: %@", buf, 0x16u);
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __105__NPKCompanionAgentConnectionDeferredActionHandler_performActionWhenCompanionAgentIsAvailable_forDevice___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) deferredActions];
  v5 = [v2 objectForKey:*(a1 + 40)];

  if (!v5)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v3 = [*(a1 + 32) deferredActions];
    [v3 setObject:v5 forKey:*(a1 + 40)];
  }

  v4 = _Block_copy(*(a1 + 48));
  [v5 addObject:v4];
}

- (id)deferredSharedPaymentWebServiceContextForDevice:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 valueForProperty:*MEMORY[0x277D2BBB8]];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__4;
  v21 = __Block_byref_object_dispose__4;
  v22 = 0;
  v6 = [(NPKCompanionAgentConnectionDeferredActionHandler *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __100__NPKCompanionAgentConnectionDeferredActionHandler_deferredSharedPaymentWebServiceContextForDevice___block_invoke;
  block[3] = &unk_279946940;
  v16 = &v17;
  block[4] = self;
  v7 = v5;
  v15 = v7;
  dispatch_sync(v6, block);

  v8 = pk_Payment_log();
  LODWORD(v6) = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v9 = pk_Payment_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v18[5];
      *buf = 138412546;
      v24 = v10;
      v25 = 2112;
      v26 = v4;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Fetched deferred shared web service context %@ for device %@", buf, 0x16u);
    }
  }

  v11 = v18[5];

  _Block_object_dispose(&v17, 8);
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void __100__NPKCompanionAgentConnectionDeferredActionHandler_deferredSharedPaymentWebServiceContextForDevice___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) deferredSharedPaymentWebServiceContexts];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setDeferredSharedPaymentWebServiceContext:(id)a3 forDevice:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 valueForProperty:*MEMORY[0x277D2BBB8]];
  v9 = pk_Payment_log();
  v10 = v9;
  if (v8)
  {
    v11 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v12 = pk_Payment_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = v6;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Setting deferred shared web service context: %@", buf, 0xCu);
      }
    }

    v13 = [(NPKCompanionAgentConnectionDeferredActionHandler *)self internalQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __104__NPKCompanionAgentConnectionDeferredActionHandler_setDeferredSharedPaymentWebServiceContext_forDevice___block_invoke;
    block[3] = &unk_279945880;
    v18 = v6;
    v19 = self;
    v20 = v8;
    dispatch_async(v13, block);

    v14 = v18;
  }

  else
  {
    v16 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

    if (!v16)
    {
      goto LABEL_8;
    }

    v14 = pk_Payment_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v22 = v7;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_ERROR, "Error: Not setting deferred shared web service context because pairing ID is nil! Device: %@, context: %@", buf, 0x16u);
    }
  }

LABEL_8:
  v15 = *MEMORY[0x277D85DE8];
}

void __104__NPKCompanionAgentConnectionDeferredActionHandler_setDeferredSharedPaymentWebServiceContext_forDevice___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) deferredSharedPaymentWebServiceContexts];
  v4 = v3;
  if (v2)
  {
    [v3 setObject:*(a1 + 32) forKey:*(a1 + 48)];
  }

  else
  {
    [v3 removeObjectForKey:*(a1 + 48)];
  }
}

- (void)addDeferredPaymentPass:(id)a3 forDevice:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 valueForProperty:*MEMORY[0x277D2BBB8]];
  v9 = pk_Payment_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = pk_Payment_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v21 = v6;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Setting deferred added payment pass: %@ for device: %@", buf, 0x16u);
    }
  }

  v12 = [(NPKCompanionAgentConnectionDeferredActionHandler *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__NPKCompanionAgentConnectionDeferredActionHandler_addDeferredPaymentPass_forDevice___block_invoke;
  block[3] = &unk_279945880;
  v17 = v6;
  v18 = v8;
  v19 = self;
  v13 = v8;
  v14 = v6;
  dispatch_async(v12, block);

  v15 = *MEMORY[0x277D85DE8];
}

void __85__NPKCompanionAgentConnectionDeferredActionHandler_addDeferredPaymentPass_forDevice___block_invoke(uint64_t a1)
{
  if (*(a1 + 32) && *(a1 + 40))
  {
    v2 = [*(a1 + 48) deferredAddedPaymentPasses];
    v3 = [v2 objectForKey:*(a1 + 40)];

    if (!v3)
    {
      v3 = [MEMORY[0x277CBEB58] set];
      v4 = [*(a1 + 48) deferredAddedPaymentPasses];
      [v4 setObject:v3 forKey:*(a1 + 40)];
    }

    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__4;
    v15 = __Block_byref_object_dispose__4;
    v16 = 0;
    v5 = MEMORY[0x277D85DD0];
    v6 = 3221225472;
    v7 = __85__NPKCompanionAgentConnectionDeferredActionHandler_addDeferredPaymentPass_forDevice___block_invoke_2;
    v8 = &unk_279946968;
    v9 = *(a1 + 32);
    v10 = &v11;
    [v3 enumerateObjectsUsingBlock:&v5];
    if (v12[5])
    {
      [v3 removeObject:{v5, v6, v7, v8}];
    }

    [v3 addObject:{*(a1 + 32), v5, v6, v7, v8}];

    _Block_object_dispose(&v11, 8);
  }
}

void __85__NPKCompanionAgentConnectionDeferredActionHandler_addDeferredPaymentPass_forDevice___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v6 = [v9 uniqueID];
  v7 = [*(a1 + 32) uniqueID];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (id)deferredPaymentPassesForDevice:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 valueForProperty:*MEMORY[0x277D2BBB8]];
  if (v5)
  {
    v6 = [(NPKCompanionAgentConnectionDeferredActionHandler *)self deferredAddedPaymentPasses];
    v7 = [v6 objectForKey:v5];
  }

  else
  {
    v7 = 0;
  }

  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = v7;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Returning deferred added payment passes: %@ for device: %@", &v13, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)deferredPaymentPassUniqueIDsForDevice:(id)a3 excludingDeactivated:(BOOL)a4
{
  v5 = [(NPKCompanionAgentConnectionDeferredActionHandler *)self deferredPaymentPassesForDevice:a3];
  v6 = [MEMORY[0x277CBEB58] set];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __111__NPKCompanionAgentConnectionDeferredActionHandler_deferredPaymentPassUniqueIDsForDevice_excludingDeactivated___block_invoke;
  v13 = &unk_279946990;
  v15 = a4;
  v14 = v6;
  v7 = v6;
  [v5 enumerateObjectsUsingBlock:&v10];
  v8 = [v7 copy];

  return v8;
}

void __111__NPKCompanionAgentConnectionDeferredActionHandler_deferredPaymentPassUniqueIDsForDevice_excludingDeactivated___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if (*(a1 + 40) != 1 || ([v8 secureElementPass], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "passActivationState"), v3, v5 = v8, v4 != 4))
  {
    v6 = *(a1 + 32);
    v7 = [v8 uniqueID];
    [v6 addObject:v7];

    v5 = v8;
  }
}

- (id)deferredPaymentPassWithUniqueID:(id)a3 forDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NPKCompanionAgentConnectionDeferredActionHandler *)self deferredPaymentPassesForDevice:v7];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__4;
  v19 = __Block_byref_object_dispose__4;
  v20 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __94__NPKCompanionAgentConnectionDeferredActionHandler_deferredPaymentPassWithUniqueID_forDevice___block_invoke;
  v12[3] = &unk_279946968;
  v9 = v6;
  v13 = v9;
  v14 = &v15;
  [v8 enumerateObjectsUsingBlock:v12];
  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

void __94__NPKCompanionAgentConnectionDeferredActionHandler_deferredPaymentPassWithUniqueID_forDevice___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 uniqueID];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (void)_performDeferredActions
{
  v3 = [(NPKCompanionAgentConnectionDeferredActionHandler *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Performing deferred actions…", buf, 2u);
    }
  }

  v7 = objc_alloc_init(NPKCompanionAgentConnection);
  [(NPKCompanionAgentConnection *)v7 setQueueAppropriateFailedActions:1];
  v8 = [(NPKCompanionAgentConnectionDeferredActionHandler *)self deferredActions];
  v9 = [v8 copy];

  v10 = [(NPKCompanionAgentConnectionDeferredActionHandler *)self deferredSharedPaymentWebServiceContexts];
  v11 = [v10 copy];

  v12 = [(NPKCompanionAgentConnectionDeferredActionHandler *)self deferredActions];
  [v12 removeAllObjects];

  v13 = [(NPKCompanionAgentConnectionDeferredActionHandler *)self deferredSharedPaymentWebServiceContexts];
  [v13 removeAllObjects];

  [v11 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_77];
  [v9 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_81];
  v14 = dispatch_get_global_queue(0, 0);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __75__NPKCompanionAgentConnectionDeferredActionHandler__performDeferredActions__block_invoke_82;
  v17[3] = &unk_2799454E0;
  v18 = v9;
  v19 = v7;
  v15 = v7;
  v16 = v9;
  dispatch_async(v14, v17);
}

void __75__NPKCompanionAgentConnectionDeferredActionHandler__performDeferredActions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = pk_Payment_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Payment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = v4;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Pairing ID %@: shared web service context %@", &v10, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __75__NPKCompanionAgentConnectionDeferredActionHandler__performDeferredActions__block_invoke_78(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = pk_Payment_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Payment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = v4;
      v12 = 1024;
      v13 = [v5 count];
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Pairing ID %@: %u actions", &v10, 0x12u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __75__NPKCompanionAgentConnectionDeferredActionHandler__performDeferredActions__block_invoke_82(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __75__NPKCompanionAgentConnectionDeferredActionHandler__performDeferredActions__block_invoke_2;
  v2[3] = &unk_279946A20;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 enumerateKeysAndObjectsUsingBlock:v2];
}

void __75__NPKCompanionAgentConnectionDeferredActionHandler__performDeferredActions__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __75__NPKCompanionAgentConnectionDeferredActionHandler__performDeferredActions__block_invoke_3;
  v4[3] = &unk_2799469F8;
  v5 = *(a1 + 32);
  [a3 enumerateObjectsUsingBlock:v4];
}

- (void)_cleanUpDeferredDataForPairingID:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NPKCompanionAgentConnectionDeferredActionHandler *)self internalQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(NPKCompanionAgentConnectionDeferredActionHandler *)self deferredActions];
  v7 = [v6 objectForKey:v4];

  v8 = [(NPKCompanionAgentConnectionDeferredActionHandler *)self deferredSharedPaymentWebServiceContexts];
  v9 = [v8 objectForKey:v4];

  v10 = pk_Payment_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_Payment_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412802;
      v17 = v4;
      v18 = 1024;
      v19 = [v7 count];
      v20 = 2112;
      v21 = v9;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Removing deferred data for pairing ID %@ (deferred action count %u deferred shared context %@)", &v16, 0x1Cu);
    }
  }

  v13 = [(NPKCompanionAgentConnectionDeferredActionHandler *)self deferredActions];
  [v13 removeObjectForKey:v4];

  v14 = [(NPKCompanionAgentConnectionDeferredActionHandler *)self deferredSharedPaymentWebServiceContexts];
  [v14 removeObjectForKey:v4];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_handleCompanionAgentStarted
{
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Deferred action handler: companion agent started", v6, 2u);
    }
  }

  [(NPKCompanionAgentConnectionDeferredActionHandler *)self _performDeferredActions];
}

- (void)_handleDeviceBecameActive:(id)a3
{
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Deferred action handler: device became active", buf, 2u);
    }
  }

  v7 = [(NPKCompanionAgentConnectionDeferredActionHandler *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__NPKCompanionAgentConnectionDeferredActionHandler__handleDeviceBecameActive___block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(v7, block);
}

- (void)_handleDevicePaired:(id)a3
{
  v4 = [(NPKCompanionAgentConnectionDeferredActionHandler *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__NPKCompanionAgentConnectionDeferredActionHandler__handleDevicePaired___block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(v4, block);
}

uint64_t __72__NPKCompanionAgentConnectionDeferredActionHandler__handleDevicePaired___block_invoke(uint64_t a1)
{
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: Deferred action handler: device paired", v6, 2u);
    }
  }

  return [*(a1 + 32) _performDeferredActions];
}

- (void)_handleDeviceUnpaired:(id)a3
{
  v4 = a3;
  v5 = [(NPKCompanionAgentConnectionDeferredActionHandler *)self internalQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__NPKCompanionAgentConnectionDeferredActionHandler__handleDeviceUnpaired___block_invoke;
  v7[3] = &unk_2799454E0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __74__NPKCompanionAgentConnectionDeferredActionHandler__handleDeviceUnpaired___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKey:*MEMORY[0x277D2BC38]];

  v4 = [v3 valueForProperty:*MEMORY[0x277D2BBB8]];
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Deferred action handler: device unpaired (pairing ID %@)", &v9, 0xCu);
    }
  }

  if (v4)
  {
    [*(a1 + 40) _cleanUpDeferredDataForPairingID:v4];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleDevicePairingFailure:(id)a3
{
  v4 = [(NPKCompanionAgentConnectionDeferredActionHandler *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__NPKCompanionAgentConnectionDeferredActionHandler__handleDevicePairingFailure___block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(v4, block);
}

void __80__NPKCompanionAgentConnectionDeferredActionHandler__handleDevicePairingFailure___block_invoke(uint64_t a1)
{
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: Deferred action handler: device pairing failure", buf, 2u);
    }
  }

  v5 = [MEMORY[0x277D2BCF8] sharedInstance];
  v6 = [MEMORY[0x277CBEB58] set];
  v7 = [v5 getPairedDevices];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __80__NPKCompanionAgentConnectionDeferredActionHandler__handleDevicePairingFailure___block_invoke_84;
  v18[3] = &unk_279946A48;
  v19 = v6;
  v8 = v6;
  [v7 enumerateObjectsUsingBlock:v18];
  v9 = MEMORY[0x277CBEB58];
  v10 = [*(a1 + 32) deferredActions];
  v11 = [v10 allKeys];
  v12 = [v9 setWithArray:v11];

  v13 = MEMORY[0x277CBEB98];
  v14 = [*(a1 + 32) deferredActions];
  v15 = [v14 allKeys];
  v16 = [v13 setWithArray:v15];
  [v12 unionSet:v16];

  [v12 minusSet:v8];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __80__NPKCompanionAgentConnectionDeferredActionHandler__handleDevicePairingFailure___block_invoke_2;
  v17[3] = &unk_279946A70;
  v17[4] = *(a1 + 32);
  [v12 enumerateObjectsUsingBlock:v17];
}

void __80__NPKCompanionAgentConnectionDeferredActionHandler__handleDevicePairingFailure___block_invoke_84(uint64_t a1, void *a2)
{
  v3 = [a2 valueForProperty:*MEMORY[0x277D2BBB8]];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

@end