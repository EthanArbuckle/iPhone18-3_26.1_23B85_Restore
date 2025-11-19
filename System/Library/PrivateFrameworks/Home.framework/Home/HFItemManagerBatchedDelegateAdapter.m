@interface HFItemManagerBatchedDelegateAdapter
- (BOOL)hasUncommittedBatchingReasons;
- (HFItemManager)itemManager;
- (HFItemManagerBatchedDelegateAdapter)initWithItemManager:(id)a3 readPolicy:(id)a4;
- (SEL)batchedSenderSelector;
- (id)_itemProvidersToReloadForInvalidationReasons:(id)a3;
- (id)commitBatchWithReason:(id)a3 senderSelector:(SEL)a4;
- (id)requestUpdateForItems:(id)a3 itemProviderInvalidationReasons:(id)a4 modifiedHome:(id)a5 senderSelector:(SEL)a6;
- (void)_executeBatch;
- (void)_reset;
- (void)beginBatchWithReason:(id)a3;
- (void)setBatchedSenderSelector:(SEL)a3;
@end

@implementation HFItemManagerBatchedDelegateAdapter

- (HFItemManagerBatchedDelegateAdapter)initWithItemManager:(id)a3 readPolicy:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = HFItemManagerBatchedDelegateAdapter;
  v8 = [(HFItemManagerBatchedDelegateAdapter *)&v23 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_itemManager, v6);
    objc_storeStrong(&v9->_readPolicy, a4);
    v10 = [MEMORY[0x277CBEB58] set];
    uncommittedBatchingReasons = v9->_uncommittedBatchingReasons;
    v9->_uncommittedBatchingReasons = v10;

    v12 = [MEMORY[0x277CBEB58] set];
    batchedItemsToUpdate = v9->_batchedItemsToUpdate;
    v9->_batchedItemsToUpdate = v12;

    v14 = [MEMORY[0x277CBEB58] set];
    batchedItemProviderInvalidationReasons = v9->_batchedItemProviderInvalidationReasons;
    v9->_batchedItemProviderInvalidationReasons = v14;

    v16 = objc_alloc_init(MEMORY[0x277D2C900]);
    startExecutingBatchFuture = v9->_startExecutingBatchFuture;
    v9->_startExecutingBatchFuture = v16;

    v18 = objc_alloc_init(MEMORY[0x277D2C900]);
    finishExecutingBatchFuture = v9->_finishExecutingBatchFuture;
    v9->_finishExecutingBatchFuture = v18;

    v20 = [[HFItemManagerMessageBatchCoordinator alloc] initWithItemManager:v6 delegateAdapter:v9];
    batchCoordinator = v9->_batchCoordinator;
    v9->_batchCoordinator = v20;
  }

  return v9;
}

- (void)beginBatchWithReason:(id)a3
{
  v5 = a3;
  v6 = [(HFItemManagerBatchedDelegateAdapter *)self uncommittedBatchingReasons];
  v7 = [v6 count];

  if (!v7)
  {
    v8 = [(HFItemManagerBatchedDelegateAdapter *)self startExecutingBatchFuture];
    objc_initWeak(&location, self);
    v9 = [MEMORY[0x277D2C938] mainThreadScheduler];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __60__HFItemManagerBatchedDelegateAdapter_beginBatchWithReason___block_invoke;
    v16 = &unk_277DF3AB8;
    objc_copyWeak(v18, &location);
    v10 = v8;
    v17 = v10;
    v18[1] = a2;
    v11 = [v9 afterDelay:&v13 performBlock:15.0];

    objc_destroyWeak(v18);
    objc_destroyWeak(&location);
  }

  v12 = [(HFItemManagerBatchedDelegateAdapter *)self uncommittedBatchingReasons:v13];
  [v12 addObject:v5];
}

void __60__HFItemManagerBatchedDelegateAdapter_beginBatchWithReason___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && ([*(a1 + 32) isFinished] & 1) == 0)
  {
    v3 = HFLogForCategory(0x3DuLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [WeakRetained uncommittedBatchingReasons];
      *buf = 138412290;
      v19 = v4;
      _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_INFO, "Waited 15s to start executing a batch delegate operation, but it never committed. Will recover by forcibly committing batch. Remaining uncommittedBatchingReasons: %@", buf, 0xCu);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [WeakRetained uncommittedBatchingReasons];
    v6 = [v5 copy];

    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [WeakRetained commitBatchWithReason:*(*(&v13 + 1) + 8 * v10++) senderSelector:*(a1 + 48)];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)commitBatchWithReason:(id)a3 senderSelector:(SEL)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HFItemManagerBatchedDelegateAdapter *)self uncommittedBatchingReasons];
  v8 = [v7 containsObject:v6];

  if ((v8 & 1) == 0)
  {
    v9 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412290;
      v17 = v6;
      _os_log_error_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_ERROR, "Requested to commit a HFItemManagerBatchedDelegateAdapter batch with a reason that wasn't in flight: %@", &v16, 0xCu);
    }
  }

  v10 = [(HFItemManagerBatchedDelegateAdapter *)self uncommittedBatchingReasons];
  [v10 removeObject:v6];

  v11 = [(HFItemManagerBatchedDelegateAdapter *)self finishExecutingBatchFuture];
  v12 = [(HFItemManagerBatchedDelegateAdapter *)self uncommittedBatchingReasons];
  v13 = [v12 count];

  if (!v13)
  {
    [(HFItemManagerBatchedDelegateAdapter *)self setBatchedSenderSelector:a4];
    [(HFItemManagerBatchedDelegateAdapter *)self _executeBatch];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)hasUncommittedBatchingReasons
{
  v2 = [(HFItemManagerBatchedDelegateAdapter *)self uncommittedBatchingReasons];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)requestUpdateForItems:(id)a3 itemProviderInvalidationReasons:(id)a4 modifiedHome:(id)a5 senderSelector:(SEL)a6
{
  v47 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (![v10 count] && !objc_msgSend(v11, "count"))
  {
LABEL_16:
    v20 = [MEMORY[0x277D2C900] futureWithNoResult];
    goto LABEL_17;
  }

  v13 = [(HFItemManagerBatchedDelegateAdapter *)self itemManager];
  v14 = [v13 home];

  if (!v14)
  {
    v28 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v31 = NSStringFromSelector(a6);
      v37 = 138412290;
      v38 = v31;
      _os_log_error_impl(&dword_20D9BF000, v28, OS_LOG_TYPE_ERROR, "Request to update for %@, but no home set", &v37, 0xCu);
    }

    goto LABEL_16;
  }

  if (v12)
  {
    v15 = [(HFItemManagerBatchedDelegateAdapter *)self itemManager];
    v16 = [v15 home];

    if (v16 != v12)
    {
      v17 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v32 = NSStringFromSelector(a6);
        v33 = [v12 hf_prettyDescription];
        v34 = [(HFItemManagerBatchedDelegateAdapter *)self itemManager];
        v35 = [v34 home];
        v36 = [v35 hf_prettyDescription];
        v37 = 138413314;
        v38 = self;
        v39 = 2112;
        v40 = v32;
        v41 = 2112;
        v42 = v33;
        v43 = 2112;
        v44 = v36;
        v45 = 2112;
        v46 = v10;
        _os_log_error_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_ERROR, "Request %@ to update for %@, but home does not match. modifiedHome: %@ itemManager.home: %@. itemsToUpdate: %@", &v37, 0x34u);
      }

      goto LABEL_16;
    }
  }

  v18 = [(HFItemManagerBatchedDelegateAdapter *)self batchedItemsToUpdate];
  [v18 unionSet:v10];

  v19 = [(HFItemManagerBatchedDelegateAdapter *)self batchedItemProviderInvalidationReasons];
  [v19 addObjectsFromArray:v11];

  [(HFItemManagerBatchedDelegateAdapter *)self setBatchedSenderSelector:a6];
  v20 = [(HFItemManagerBatchedDelegateAdapter *)self finishExecutingBatchFuture];
  v21 = [(HFItemManagerBatchedDelegateAdapter *)self uncommittedBatchingReasons];
  v22 = [v21 count];

  if (v22)
  {
    v23 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = NSStringFromSelector(a6);
      v25 = [(HFItemManagerBatchedDelegateAdapter *)self uncommittedBatchingReasons];
      v26 = [v25 allObjects];
      v27 = [v26 componentsJoinedByString:{@", "}];
      v37 = 138412546;
      v38 = v24;
      v39 = 2112;
      v40 = v27;
      _os_log_impl(&dword_20D9BF000, v23, OS_LOG_TYPE_DEFAULT, "Deferring update for: %@ because there are uncommitted delegate batching reasons: %@", &v37, 0x16u);
    }
  }

  else
  {
    [(HFItemManagerBatchedDelegateAdapter *)self _executeBatch];
  }

LABEL_17:

  v29 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)_itemProvidersToReloadForInvalidationReasons:(id)a3
{
  v4 = a3;
  v5 = [(HFItemManagerBatchedDelegateAdapter *)self itemManager];
  v6 = [v5 itemProviders];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__HFItemManagerBatchedDelegateAdapter__itemProvidersToReloadForInvalidationReasons___block_invoke;
  v10[3] = &unk_277DF6898;
  v11 = v4;
  v7 = v4;
  v8 = [v6 na_filter:v10];

  return v8;
}

uint64_t __84__HFItemManagerBatchedDelegateAdapter__itemProvidersToReloadForInvalidationReasons___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 invalidationReasons];
  v4 = [v3 intersectsSet:*(a1 + 32)];

  return v4;
}

- (void)_executeBatch
{
  v22[2] = *MEMORY[0x277D85DE8];
  v3 = [(HFItemManagerBatchedDelegateAdapter *)self startExecutingBatchFuture];
  v4 = NAEmptyResult();
  [v3 finishWithResult:v4];

  v5 = [(HFItemManagerBatchedDelegateAdapter *)self batchedItemsToUpdate];
  v6 = [v5 copy];

  v7 = [(HFItemManagerBatchedDelegateAdapter *)self batchedItemProviderInvalidationReasons];
  v8 = [v7 copy];

  v9 = [(HFItemManagerBatchedDelegateAdapter *)self batchedSenderSelector];
  v10 = [(HFItemManagerBatchedDelegateAdapter *)self finishExecutingBatchFuture];
  [(HFItemManagerBatchedDelegateAdapter *)self _reset];
  v11 = [(HFItemManagerBatchedDelegateAdapter *)self _itemProvidersToReloadForInvalidationReasons:v8];
  if ([v11 count])
  {
    v12 = [(HFItemManagerBatchedDelegateAdapter *)self itemManager];
    v13 = [(HFItemManagerBatchedDelegateAdapter *)self readPolicy];
    v14 = [v12 _reloadItemProviders:v11 updateItems:v6 shouldUpdateExistingItems:0 senderSelector:v9 readPolicy:v13];
  }

  else
  {
    if (![v6 count])
    {
      [v10 finishWithNoResult];
      goto LABEL_6;
    }

    v12 = objc_opt_new();
    [v12 setSenderSelector:v9];
    v15 = [(HFItemManagerBatchedDelegateAdapter *)self readPolicy];
    [v12 setReadPolicy:v15];

    v21[0] = HFItemUpdateOptionFullUpdateIndicated;
    v21[1] = HFItemUpdateOptionDelegateDispatched;
    v22[0] = MEMORY[0x277CBEC38];
    v22[1] = MEMORY[0x277CBEC38];
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
    [v12 setUpdateOptions:v16];

    v13 = [(HFItemManagerBatchedDelegateAdapter *)self itemManager];
    v14 = [v13 _updateResultsForItems:v6 context:v12];
  }

  v17 = v14;
  v18 = [v10 completionHandlerAdapter];
  v19 = [v17 addCompletionBlock:v18];

LABEL_6:
  v20 = *MEMORY[0x277D85DE8];
}

- (void)_reset
{
  v3 = [(HFItemManagerBatchedDelegateAdapter *)self batchedItemsToUpdate];
  [v3 removeAllObjects];

  v4 = [(HFItemManagerBatchedDelegateAdapter *)self batchedItemProviderInvalidationReasons];
  [v4 removeAllObjects];

  [(HFItemManagerBatchedDelegateAdapter *)self setBatchedSenderSelector:0];
  v5 = objc_alloc_init(MEMORY[0x277D2C900]);
  [(HFItemManagerBatchedDelegateAdapter *)self setStartExecutingBatchFuture:v5];

  v6 = objc_alloc_init(MEMORY[0x277D2C900]);
  [(HFItemManagerBatchedDelegateAdapter *)self setFinishExecutingBatchFuture:v6];
}

- (HFItemManager)itemManager
{
  WeakRetained = objc_loadWeakRetained(&self->_itemManager);

  return WeakRetained;
}

- (SEL)batchedSenderSelector
{
  if (self->_batchedSenderSelector)
  {
    return self->_batchedSenderSelector;
  }

  else
  {
    return 0;
  }
}

- (void)setBatchedSenderSelector:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_batchedSenderSelector = v3;
}

@end