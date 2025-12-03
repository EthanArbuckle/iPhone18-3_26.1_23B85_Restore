@interface HFItemManagerBatchedDelegateAdapter
- (BOOL)hasUncommittedBatchingReasons;
- (HFItemManager)itemManager;
- (HFItemManagerBatchedDelegateAdapter)initWithItemManager:(id)manager readPolicy:(id)policy;
- (SEL)batchedSenderSelector;
- (id)_itemProvidersToReloadForInvalidationReasons:(id)reasons;
- (id)commitBatchWithReason:(id)reason senderSelector:(SEL)selector;
- (id)requestUpdateForItems:(id)items itemProviderInvalidationReasons:(id)reasons modifiedHome:(id)home senderSelector:(SEL)selector;
- (void)_executeBatch;
- (void)_reset;
- (void)beginBatchWithReason:(id)reason;
- (void)setBatchedSenderSelector:(SEL)selector;
@end

@implementation HFItemManagerBatchedDelegateAdapter

- (HFItemManagerBatchedDelegateAdapter)initWithItemManager:(id)manager readPolicy:(id)policy
{
  managerCopy = manager;
  policyCopy = policy;
  v23.receiver = self;
  v23.super_class = HFItemManagerBatchedDelegateAdapter;
  v8 = [(HFItemManagerBatchedDelegateAdapter *)&v23 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_itemManager, managerCopy);
    objc_storeStrong(&v9->_readPolicy, policy);
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

    v20 = [[HFItemManagerMessageBatchCoordinator alloc] initWithItemManager:managerCopy delegateAdapter:v9];
    batchCoordinator = v9->_batchCoordinator;
    v9->_batchCoordinator = v20;
  }

  return v9;
}

- (void)beginBatchWithReason:(id)reason
{
  reasonCopy = reason;
  uncommittedBatchingReasons = [(HFItemManagerBatchedDelegateAdapter *)self uncommittedBatchingReasons];
  v7 = [uncommittedBatchingReasons count];

  if (!v7)
  {
    startExecutingBatchFuture = [(HFItemManagerBatchedDelegateAdapter *)self startExecutingBatchFuture];
    objc_initWeak(&location, self);
    mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __60__HFItemManagerBatchedDelegateAdapter_beginBatchWithReason___block_invoke;
    v16 = &unk_277DF3AB8;
    objc_copyWeak(v18, &location);
    v10 = startExecutingBatchFuture;
    v17 = v10;
    v18[1] = a2;
    v11 = [mainThreadScheduler afterDelay:&v13 performBlock:15.0];

    objc_destroyWeak(v18);
    objc_destroyWeak(&location);
  }

  v12 = [(HFItemManagerBatchedDelegateAdapter *)self uncommittedBatchingReasons:v13];
  [v12 addObject:reasonCopy];
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

- (id)commitBatchWithReason:(id)reason senderSelector:(SEL)selector
{
  v18 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  uncommittedBatchingReasons = [(HFItemManagerBatchedDelegateAdapter *)self uncommittedBatchingReasons];
  v8 = [uncommittedBatchingReasons containsObject:reasonCopy];

  if ((v8 & 1) == 0)
  {
    v9 = HFLogForCategory(0x27uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412290;
      v17 = reasonCopy;
      _os_log_error_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_ERROR, "Requested to commit a HFItemManagerBatchedDelegateAdapter batch with a reason that wasn't in flight: %@", &v16, 0xCu);
    }
  }

  uncommittedBatchingReasons2 = [(HFItemManagerBatchedDelegateAdapter *)self uncommittedBatchingReasons];
  [uncommittedBatchingReasons2 removeObject:reasonCopy];

  finishExecutingBatchFuture = [(HFItemManagerBatchedDelegateAdapter *)self finishExecutingBatchFuture];
  uncommittedBatchingReasons3 = [(HFItemManagerBatchedDelegateAdapter *)self uncommittedBatchingReasons];
  v13 = [uncommittedBatchingReasons3 count];

  if (!v13)
  {
    [(HFItemManagerBatchedDelegateAdapter *)self setBatchedSenderSelector:selector];
    [(HFItemManagerBatchedDelegateAdapter *)self _executeBatch];
  }

  v14 = *MEMORY[0x277D85DE8];

  return finishExecutingBatchFuture;
}

- (BOOL)hasUncommittedBatchingReasons
{
  uncommittedBatchingReasons = [(HFItemManagerBatchedDelegateAdapter *)self uncommittedBatchingReasons];
  v3 = [uncommittedBatchingReasons count] != 0;

  return v3;
}

- (id)requestUpdateForItems:(id)items itemProviderInvalidationReasons:(id)reasons modifiedHome:(id)home senderSelector:(SEL)selector
{
  v47 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  reasonsCopy = reasons;
  homeCopy = home;
  if (![itemsCopy count] && !objc_msgSend(reasonsCopy, "count"))
  {
LABEL_16:
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
    goto LABEL_17;
  }

  itemManager = [(HFItemManagerBatchedDelegateAdapter *)self itemManager];
  home = [itemManager home];

  if (!home)
  {
    v28 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v31 = NSStringFromSelector(selector);
      v37 = 138412290;
      selfCopy = v31;
      _os_log_error_impl(&dword_20D9BF000, v28, OS_LOG_TYPE_ERROR, "Request to update for %@, but no home set", &v37, 0xCu);
    }

    goto LABEL_16;
  }

  if (homeCopy)
  {
    itemManager2 = [(HFItemManagerBatchedDelegateAdapter *)self itemManager];
    home2 = [itemManager2 home];

    if (home2 != homeCopy)
    {
      v17 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v32 = NSStringFromSelector(selector);
        hf_prettyDescription = [homeCopy hf_prettyDescription];
        itemManager3 = [(HFItemManagerBatchedDelegateAdapter *)self itemManager];
        home3 = [itemManager3 home];
        hf_prettyDescription2 = [home3 hf_prettyDescription];
        v37 = 138413314;
        selfCopy = self;
        v39 = 2112;
        v40 = v32;
        v41 = 2112;
        v42 = hf_prettyDescription;
        v43 = 2112;
        v44 = hf_prettyDescription2;
        v45 = 2112;
        v46 = itemsCopy;
        _os_log_error_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_ERROR, "Request %@ to update for %@, but home does not match. modifiedHome: %@ itemManager.home: %@. itemsToUpdate: %@", &v37, 0x34u);
      }

      goto LABEL_16;
    }
  }

  batchedItemsToUpdate = [(HFItemManagerBatchedDelegateAdapter *)self batchedItemsToUpdate];
  [batchedItemsToUpdate unionSet:itemsCopy];

  batchedItemProviderInvalidationReasons = [(HFItemManagerBatchedDelegateAdapter *)self batchedItemProviderInvalidationReasons];
  [batchedItemProviderInvalidationReasons addObjectsFromArray:reasonsCopy];

  [(HFItemManagerBatchedDelegateAdapter *)self setBatchedSenderSelector:selector];
  futureWithNoResult = [(HFItemManagerBatchedDelegateAdapter *)self finishExecutingBatchFuture];
  uncommittedBatchingReasons = [(HFItemManagerBatchedDelegateAdapter *)self uncommittedBatchingReasons];
  v22 = [uncommittedBatchingReasons count];

  if (v22)
  {
    v23 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = NSStringFromSelector(selector);
      uncommittedBatchingReasons2 = [(HFItemManagerBatchedDelegateAdapter *)self uncommittedBatchingReasons];
      allObjects = [uncommittedBatchingReasons2 allObjects];
      v27 = [allObjects componentsJoinedByString:{@", "}];
      v37 = 138412546;
      selfCopy = v24;
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

  return futureWithNoResult;
}

- (id)_itemProvidersToReloadForInvalidationReasons:(id)reasons
{
  reasonsCopy = reasons;
  itemManager = [(HFItemManagerBatchedDelegateAdapter *)self itemManager];
  itemProviders = [itemManager itemProviders];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__HFItemManagerBatchedDelegateAdapter__itemProvidersToReloadForInvalidationReasons___block_invoke;
  v10[3] = &unk_277DF6898;
  v11 = reasonsCopy;
  v7 = reasonsCopy;
  v8 = [itemProviders na_filter:v10];

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
  startExecutingBatchFuture = [(HFItemManagerBatchedDelegateAdapter *)self startExecutingBatchFuture];
  v4 = NAEmptyResult();
  [startExecutingBatchFuture finishWithResult:v4];

  batchedItemsToUpdate = [(HFItemManagerBatchedDelegateAdapter *)self batchedItemsToUpdate];
  v6 = [batchedItemsToUpdate copy];

  batchedItemProviderInvalidationReasons = [(HFItemManagerBatchedDelegateAdapter *)self batchedItemProviderInvalidationReasons];
  v8 = [batchedItemProviderInvalidationReasons copy];

  batchedSenderSelector = [(HFItemManagerBatchedDelegateAdapter *)self batchedSenderSelector];
  finishExecutingBatchFuture = [(HFItemManagerBatchedDelegateAdapter *)self finishExecutingBatchFuture];
  [(HFItemManagerBatchedDelegateAdapter *)self _reset];
  v11 = [(HFItemManagerBatchedDelegateAdapter *)self _itemProvidersToReloadForInvalidationReasons:v8];
  if ([v11 count])
  {
    itemManager = [(HFItemManagerBatchedDelegateAdapter *)self itemManager];
    readPolicy = [(HFItemManagerBatchedDelegateAdapter *)self readPolicy];
    v14 = [itemManager _reloadItemProviders:v11 updateItems:v6 shouldUpdateExistingItems:0 senderSelector:batchedSenderSelector readPolicy:readPolicy];
  }

  else
  {
    if (![v6 count])
    {
      [finishExecutingBatchFuture finishWithNoResult];
      goto LABEL_6;
    }

    itemManager = objc_opt_new();
    [itemManager setSenderSelector:batchedSenderSelector];
    readPolicy2 = [(HFItemManagerBatchedDelegateAdapter *)self readPolicy];
    [itemManager setReadPolicy:readPolicy2];

    v21[0] = HFItemUpdateOptionFullUpdateIndicated;
    v21[1] = HFItemUpdateOptionDelegateDispatched;
    v22[0] = MEMORY[0x277CBEC38];
    v22[1] = MEMORY[0x277CBEC38];
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
    [itemManager setUpdateOptions:v16];

    readPolicy = [(HFItemManagerBatchedDelegateAdapter *)self itemManager];
    v14 = [readPolicy _updateResultsForItems:v6 context:itemManager];
  }

  v17 = v14;
  completionHandlerAdapter = [finishExecutingBatchFuture completionHandlerAdapter];
  v19 = [v17 addCompletionBlock:completionHandlerAdapter];

LABEL_6:
  v20 = *MEMORY[0x277D85DE8];
}

- (void)_reset
{
  batchedItemsToUpdate = [(HFItemManagerBatchedDelegateAdapter *)self batchedItemsToUpdate];
  [batchedItemsToUpdate removeAllObjects];

  batchedItemProviderInvalidationReasons = [(HFItemManagerBatchedDelegateAdapter *)self batchedItemProviderInvalidationReasons];
  [batchedItemProviderInvalidationReasons removeAllObjects];

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

- (void)setBatchedSenderSelector:(SEL)selector
{
  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  self->_batchedSenderSelector = selectorCopy;
}

@end