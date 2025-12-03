@interface MSPStorageTipsManager
- (MSPStorageTipsManager)init;
- (void)dealloc;
- (void)fetchProposedTipWithCompletionHandler:(id)handler;
@end

@implementation MSPStorageTipsManager

- (MSPStorageTipsManager)init
{
  v12.receiver = self;
  v12.super_class = MSPStorageTipsManager;
  v2 = [(MSPStorageTipsManager *)&v12 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = MEMORY[0x277D85CD0];
    objc_copyWeak(&v10, &location);
    v4 = *MEMORY[0x277D0EA80];
    v5 = *(MEMORY[0x277D0EA80] + 8);
    v6 = _GEOConfigAddBlockListenerForKey();
    offlineOptimizeStorageEnabledListener = v2->_offlineOptimizeStorageEnabledListener;
    v2->_offlineOptimizeStorageEnabledListener = v6;

    v8 = v2;
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  offlineOptimizeStorageEnabledListener = self->_offlineOptimizeStorageEnabledListener;
  GEOConfigRemoveBlockListener();
  v4.receiver = self;
  v4.super_class = MSPStorageTipsManager;
  [(MSPStorageTipsManager *)&v4 dealloc];
}

- (void)fetchProposedTipWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = *MEMORY[0x277D0EA80];
  v5 = *(MEMORY[0x277D0EA80] + 8);
  if (GEOConfigGetBOOL())
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__MSPStorageTipsManager_fetchProposedTipWithCompletionHandler___block_invoke;
    block[3] = &unk_2798676D0;
    v15 = handlerCopy;
    v6 = handlerCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v7 = v15;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277D0EB98]);
    global_queue = geo_get_global_queue();
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __63__MSPStorageTipsManager_fetchProposedTipWithCompletionHandler___block_invoke_2;
    v11[3] = &unk_279867FE8;
    v12 = v8;
    v13 = handlerCopy;
    v7 = v8;
    v10 = handlerCopy;
    [v7 fetchAllSubscriptionsWithCallbackQueue:global_queue completionHandler:v11];
  }
}

void __63__MSPStorageTipsManager_fetchProposedTipWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v20 = v4;
  v21 = a3;
  if (!v4)
  {
    v19 = __63__MSPStorageTipsManager_fetchProposedTipWithCompletionHandler___block_invoke_2_cold_3(a1, v50, v21, v44);
    goto LABEL_15;
  }

  if (![v4 count])
  {
    v19 = __63__MSPStorageTipsManager_fetchProposedTipWithCompletionHandler___block_invoke_2_cold_2(a1, v49, v44);
LABEL_15:
    if (v19)
    {
      goto LABEL_12;
    }

LABEL_18:

    goto LABEL_12;
  }

  v5 = [v4 _geo_filtered:&__block_literal_global_15];
  if (![v5 count])
  {
    __63__MSPStorageTipsManager_fetchProposedTipWithCompletionHandler___block_invoke_2_cold_1(a1, v48, v5, v44);
    goto LABEL_18;
  }

  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2810000000;
  v46[3] = "";
  v47 = 0;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x3032000000;
  v44[3] = __Block_byref_object_copy__5;
  v44[4] = __Block_byref_object_dispose__5;
  v45 = 0;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  v43 = 0;
  v6 = dispatch_group_create();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v38 objects:v51 count:16];
  if (v7)
  {
    v8 = *v39;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v38 + 1) + 8 * i);
        dispatch_group_enter(v6);
        v11 = *(a1 + 32);
        v12 = [v10 identifier];
        global_queue = geo_get_global_queue();
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __63__MSPStorageTipsManager_fetchProposedTipWithCompletionHandler___block_invoke_7;
        v33[3] = &unk_279867F28;
        v35 = v44;
        v36 = v46;
        v37 = v42;
        v34 = v6;
        [v11 fetchStateForSubscriptionWithIdentifier:v12 callbackQueue:global_queue completionHandler:v33];
      }

      v7 = [obj countByEnumeratingWithState:&v38 objects:v51 count:16];
    }

    while (v7);
  }

  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v32[3] = 0;
  dispatch_group_enter(v6);
  v14 = *(a1 + 32);
  v15 = geo_get_global_queue();
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __63__MSPStorageTipsManager_fetchProposedTipWithCompletionHandler___block_invoke_2_9;
  v29[3] = &unk_279867F50;
  v31 = v32;
  v16 = v6;
  v30 = v16;
  [v14 _calculateTotalSizeOfOfflineSubscriptionsWithCallbackQueue:v15 completionHandler:v29];

  v17 = geo_get_global_queue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__MSPStorageTipsManager_fetchProposedTipWithCompletionHandler___block_invoke_3_11;
  block[3] = &unk_279867FC0;
  v26 = v42;
  v27 = v32;
  v25 = *(a1 + 40);
  v28 = v44;
  dispatch_group_notify(v16, v17, block);

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(v42, 8);
  _Block_object_dispose(v44, 8);

  _Block_object_dispose(v46, 8);
LABEL_12:

  v18 = *MEMORY[0x277D85DE8];
}

void __63__MSPStorageTipsManager_fetchProposedTipWithCompletionHandler___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    if (([v7 loadState] - 1) > 2)
    {
      goto LABEL_7;
    }

    v6 = a1 + 48;
    os_unfair_lock_lock((*(*(a1 + 48) + 8) + 32));
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  else
  {
    if (*(*(*(a1 + 40) + 8) + 40))
    {
      goto LABEL_7;
    }

    v6 = a1 + 48;
    os_unfair_lock_lock((*(*(a1 + 48) + 8) + 32));
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  os_unfair_lock_unlock((*(*v6 + 8) + 32));
LABEL_7:
  dispatch_group_leave(*(a1 + 32));
}

void __63__MSPStorageTipsManager_fetchProposedTipWithCompletionHandler___block_invoke_2_9(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  if (a2 < 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = a2;
  }

  if (a3)
  {
    v3 = -1;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  dispatch_group_leave(*(a1 + 32));
}

void __63__MSPStorageTipsManager_fetchProposedTipWithCompletionHandler___block_invoke_3_11(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v2 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.MapsSupport"];
    v3 = [v2 localizedStringForKey:@"OFFLINE_OPTIMIZE_STORAGE_TIP_MESSAGE" value:@"localized string not found" table:@"Offline"];

    v4 = [MSPStorageTip alloc];
    v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.MapsSupport"];
    v6 = [v5 localizedStringForKey:@"OFFLINE_OPTIMIZE_STORAGE_TIP_TITLE" value:@"localized string not found" table:@"Offline"];
    v7 = [(MSPStorageTip *)v4 initWithTitle:v6 message:v3 expectedSize:*(*(*(a1 + 48) + 8) + 24) enablementAction:&__block_literal_global_32];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__MSPStorageTipsManager_fetchProposedTipWithCompletionHandler___block_invoke_5_33;
    block[3] = &unk_2798674D8;
    v8 = *(a1 + 32);
    v16 = v7;
    v17 = v8;
    v9 = v7;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__MSPStorageTipsManager_fetchProposedTipWithCompletionHandler___block_invoke_6_34;
    v12[3] = &unk_279867F98;
    v10 = *(a1 + 32);
    v11 = *(a1 + 56);
    v13 = v10;
    v14 = v11;
    dispatch_async(MEMORY[0x277D85CD0], v12);
    v3 = v13;
  }
}

void __63__MSPStorageTipsManager_fetchProposedTipWithCompletionHandler___block_invoke_4_29(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x277D0EA80];
  v3 = *(MEMORY[0x277D0EA80] + 8);
  v4 = a2;
  GEOConfigSetBOOL();
  v4[2](v4, 0);
}

void __29__MSPStorageTipsManager_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = [MEMORY[0x277CCAB98] defaultCenter];
    [v1 postNotificationName:@"MSPStorageTipsManagerTipDidChangeNotification" object:WeakRetained];
  }
}

void __63__MSPStorageTipsManager_fetchProposedTipWithCompletionHandler___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a1 + 40))
  {
    OUTLINED_FUNCTION_0(a1, a2);
    v7[1] = 3221225472;
    v7[2] = __63__MSPStorageTipsManager_fetchProposedTipWithCompletionHandler___block_invoke_6;
    v7[3] = &unk_2798676D0;
    *(a2 + 32) = *(v8 + 40);
    dispatch_async(MEMORY[0x277D85CD0], a2);
  }

  *a4 = a3;
}

uint64_t __63__MSPStorageTipsManager_fetchProposedTipWithCompletionHandler___block_invoke_2_cold_2(uint64_t a1, void *a2, void *a3)
{
  if (!*(a1 + 40))
  {
    return 1;
  }

  OUTLINED_FUNCTION_0(a1, a2);
  v5[1] = 3221225472;
  v5[2] = __63__MSPStorageTipsManager_fetchProposedTipWithCompletionHandler___block_invoke_4;
  v5[3] = &unk_2798676D0;
  a2[4] = *(v6 + 40);
  dispatch_async(MEMORY[0x277D85CD0], a2);
  result = 0;
  *a3 = a2[4];
  return result;
}

uint64_t __63__MSPStorageTipsManager_fetchProposedTipWithCompletionHandler___block_invoke_2_cold_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (!*(a1 + 40))
  {
    return 1;
  }

  OUTLINED_FUNCTION_0(a1, a2);
  v7[1] = 3221225472;
  v7[2] = __63__MSPStorageTipsManager_fetchProposedTipWithCompletionHandler___block_invoke_3;
  v7[3] = &unk_2798674D8;
  *(a2 + 40) = *(v8 + 40);
  *(a2 + 32) = a3;
  dispatch_async(MEMORY[0x277D85CD0], a2);

  result = 0;
  *a4 = *(a2 + 40);
  return result;
}

@end