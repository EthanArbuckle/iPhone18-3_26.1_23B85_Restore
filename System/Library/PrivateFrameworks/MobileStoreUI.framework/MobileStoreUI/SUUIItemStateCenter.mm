@interface SUUIItemStateCenter
+ (id)defaultCenter;
- (ASDSoftwareUpdatesStore)appstoredUpdatesStore;
- (BOOL)_gratisStateIsValid;
- (BOOL)_isPurchaseForOffDeviceContent:(id)content;
- (BOOL)isApplicationInstallRestricted;
- (BOOL)isGratisEligible;
- (BOOL)isRunningInStoreDemoMode;
- (SUUIItemStateCenter)init;
- (id)_addState:(unint64_t)state forItemIdentifier:(id)identifier;
- (id)_appstoredUpdatesStore;
- (id)_copyItemsStatesForLibraryItems:(id)items;
- (id)_downloadPhaseForJobPhase:(int64_t)phase;
- (id)_jobManager;
- (id)_newPurchaseWithItem:(id)item offer:(id)offer;
- (id)_newPurchasesForSoftwareWithBundleItem:(id)item bundleOffer:(id)offer;
- (id)_newPurchasesWithBundleItem:(id)item bundleOffer:(id)offer;
- (id)_newPurchasesWithItems:(id)items;
- (id)_newSoftwarePurchaseWithItem:(id)item offer:(id)offer;
- (id)_purchaseHistoryDatabase;
- (id)_removeState:(unint64_t)state forItemIdentifier:(id)identifier;
- (id)_setStateFlag:(unint64_t)flag forItemsWithIdentifiers:(id)identifiers sendNotification:(BOOL)notification;
- (id)_setStateFlag:(unint64_t)flag forOnlyItemsWithIdentifiers:(id)identifiers sendNotification:(BOOL)notification;
- (id)gratisEligibleItemIdentifiers;
- (id)metricsActionTypeForItem:(id)item;
- (id)performActionForItem:(id)item clientContext:(id)context;
- (id)performActionForItem:(id)item clientContext:(id)context completionBlock:(id)block;
- (id)performActionForItem:(id)item offer:(id)offer clientContext:(id)context completionBlock:(id)block;
- (id)performActionForSoftwareItem:(id)item offer:(id)offer clientContext:(id)context completionBlock:(id)block;
- (id)stateForItemWithIdentifier:(int64_t)identifier;
- (id)stateForItemWithStoreIdentifier:(id)identifier;
- (int64_t)parentalControlsRank;
- (void)_enumerateAvailableItemsForLibraryItems:(id)items usingBlock:(id)block;
- (void)_fireFinishLoadBlocksIfNecessary;
- (void)_mediaLibraryDidChangeNotification:(id)notification;
- (void)_notifyObserversOfMediaLibraryChange;
- (void)_notifyObserversOfPurchasesResponses:(id)responses;
- (void)_notifyObserversOfRestrictionsChange;
- (void)_notifyObserversOfSoftwarePurchasesResponses:(id)responses;
- (void)_notifyObserversOfStateChange:(id)change;
- (void)_notifyObserversOfStateChanges:(id)changes;
- (void)_performPurchases:(id)purchases hasBundlePurchase:(BOOL)purchase withClientContext:(id)context completionBlock:(id)block;
- (void)_performSoftwarePurchases:(id)purchases withClientContext:(id)context completionBlock:(id)block;
- (void)_reloadAppUpdatesStore;
- (void)_reloadDownloadManager;
- (void)_reloadJobManager;
- (void)_reloadMediaLibraryStateForItems:(id)items;
- (void)_reloadPurchaseHistory;
- (void)_reloadSoftwareLibrary;
- (void)_reloadStateForObservedMediaLibraryItems;
- (void)_removePurchasingItemsForPurchases:(id)purchases;
- (void)_replacePurchasingItem:(id)item withDownloadIDs:(id)ds;
- (void)_restrictionsChangedNotification:(id)notification;
- (void)_setAvailableAppstoredUpdatesWithUpdates:(id)updates decrementLoadCount:(BOOL)count;
- (void)_setDownloads:(id)downloads;
- (void)_setFirstPartyRemovableItemsIdentifiers:(id)identifiers;
- (void)_setGratisIdentifiers:(id)identifiers error:(id)error;
- (void)_setInstalledItems:(id)items;
- (void)_setJobs:(id)jobs;
- (void)_setPurchaseHistoryItemsWithIdentifiers:(id)identifiers;
- (void)_setPurchaseHistoryVPPItemsWithIdentifiers:(id)identifiers;
- (void)_storefrontDidChangeNotification:(id)notification;
- (void)_updatesSoftwarePurchasingItemsForPurchases:(id)purchases purchaseWasSuccessful:(BOOL)successful;
- (void)addManifestDownloadWithURL:(id)l placeholderMetadata:(id)metadata;
- (void)addMediaLibrary:(id)library;
- (void)addObserver:(id)observer;
- (void)addRelationshipForParentAdamId:(id)id withChildAdamIds:(id)ids;
- (void)beginObservingLibraryItems:(id)items;
- (void)cancelDownloadForItemWithIdentifier:(int64_t)identifier;
- (void)dealloc;
- (void)downloadManager:(id)manager downloadStatesDidChange:(id)change;
- (void)downloadQueue:(id)queue downloadStates:(id)states didCompleteWithError:(id)error;
- (void)downloadQueue:(id)queue downloadStatesDidChange:(id)change;
- (void)endObservingLibraryItems:(id)items;
- (void)evaluatePurchaseResponseForRentals:(id)rentals;
- (void)findLibraryItemsForContentIdentifiers:(id)identifiers options:(id)options completionBlock:(id)block;
- (void)finishLoadingWithCompletionBlock:(id)block;
- (void)getSoftwareUpdatesWithCompletionBlock:(id)block;
- (void)jobManager:(id)manager completedJobs:(id)jobs;
- (void)jobManager:(id)manager updatedProgressOfJobs:(id)jobs;
- (void)jobManager:(id)manager updatedStateOfJobs:(id)jobs;
- (void)performActionForLibraryItem:(id)item;
- (void)purchaseItem:(id)item offer:(id)offer clientContext:(id)context completionBlock:(id)block;
- (void)purchaseItems:(id)items withClientContext:(id)context completionBlock:(id)block;
- (void)purchaseSoftwareItem:(id)item offer:(id)offer clientContext:(id)context completionBlock:(id)block;
- (void)purchaseTone:(id)tone withProperties:(id)properties clientContext:(id)context completionBlock:(id)block;
- (void)reloadGratisEligibilityWithBundleIdentifiers:(id)identifiers clientContext:(id)context;
- (void)reloadMediaLibrary:(id)library;
- (void)reloadSoftwareUpdatesFromServerWithCompletionBlock:(id)block;
- (void)removeMediaLibrary:(id)library;
- (void)removeObserver:(id)observer;
- (void)removeRelationshipsForParentAdamId:(id)id;
@end

@implementation SUUIItemStateCenter

- (SUUIItemStateCenter)init
{
  v34[1] = *MEMORY[0x277D85DE8];
  v32.receiver = self;
  v32.super_class = SUUIItemStateCenter;
  v2 = [(SUUIItemStateCenter *)&v32 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.iTunesStoreUI.SUUIItemStateCenter.access", 0);
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    v5 = dispatch_queue_create("com.apple.iTunesStoreUI.SUUIItemStateCenter.observers", 0);
    v6 = *(v2 + 15);
    *(v2 + 15) = v5;

    v7 = dispatch_queue_create("com.apple.iTunesStoreUI.SUUIItemStateCenter.mediaLibrary", 0);
    v8 = *(v2 + 12);
    *(v2 + 12) = v7;

    v9 = *(v2 + 12);
    v10 = dispatch_get_global_queue(0, 0);
    dispatch_set_target_queue(v9, v10);

    v11 = objc_alloc_init(SUUIMediaLibraryInterface);
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v13 = *(v2 + 13);
    *(v2 + 13) = v12;

    [*(v2 + 13) addObject:v11];
    *(v2 + 16) = -1;
    *(v2 + 20) = -1;
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v15 = *(v2 + 11);
    *(v2 + 11) = v14;

    *(v2 + 17) = -1;
    *(v2 + 160) = -1;
    v16 = objc_alloc_init(SUUIStoreItemRelationshipCounsellor);
    v17 = *(v2 + 19);
    *(v2 + 19) = v16;

    v18 = objc_alloc_init(MEMORY[0x277D69AC8]);
    allStoreDownloadKinds = [MEMORY[0x277D69AB8] allStoreDownloadKinds];
    [v18 setDownloadKinds:allStoreDownloadKinds];

    v34[0] = *MEMORY[0x277D69E90];
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
    [v18 setPrefetchedDownloadExternalProperties:v20];

    v21 = *MEMORY[0x277D69FC8];
    v33[0] = *MEMORY[0x277D6A080];
    v33[1] = v21;
    v22 = *MEMORY[0x277D69FF8];
    v33[2] = *MEMORY[0x277D69FE0];
    v33[3] = v22;
    v33[4] = *MEMORY[0x277D6A008];
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:5];
    [v18 setPrefetchedDownloadProperties:v23];

    v24 = [objc_alloc(MEMORY[0x277D69AB8]) initWithManagerOptions:v18];
    v25 = *(v2 + 6);
    *(v2 + 6) = v24;

    [*(v2 + 6) addObserver:v2];
    _jobManager = [v2 _jobManager];
    v27 = *(v2 + 4);
    *(v2 + 4) = _jobManager;

    mEMORY[0x277CF32D8] = [MEMORY[0x277CF32D8] sharedInstance];
    [mEMORY[0x277CF32D8] addObserver:v2];

    [v2 _reloadAppUpdatesStore];
    [v2 _reloadDownloadManager];
    [v2 _reloadJobManager];
    [v2 _reloadPurchaseHistory];
    [v2 _reloadSoftwareLibrary];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__restrictionsChangedNotification_ name:*MEMORY[0x277D25CA0] object:0];
    [defaultCenter addObserver:v2 selector:sel__storefrontDidChangeNotification_ name:*MEMORY[0x277D69D70] object:0];
    DistributedCenter = CFNotificationCenterGetDistributedCenter();
    CFNotificationCenterAddObserver(DistributedCenter, v2, __SoftwareLibraryChangeNotification, @"com.apple.LaunchServices.applicationRegistered", 0, CFNotificationSuspensionBehaviorCoalesce);
    CFNotificationCenterAddObserver(DistributedCenter, v2, __SoftwareLibraryChangeNotification, @"com.apple.LaunchServices.applicationUnregistered", 0, CFNotificationSuspensionBehaviorCoalesce);
  }

  return v2;
}

- (id)_jobManager
{
  jobManager = self->_jobManager;
  if (!jobManager)
  {
    v4 = objc_opt_new();
    [v4 setShouldFilterExternalOriginatedDownloads:0];
    [v4 setShouldReportDownloadProgress:1];
    v5 = [objc_alloc(MEMORY[0x277CEC3D8]) initWithOptions:v4];
    v6 = self->_jobManager;
    self->_jobManager = v5;

    [(ASDJobManager *)self->_jobManager addJobObserver:self];
    jobManager = self->_jobManager;
  }

  return jobManager;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D25CA0] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D69D70] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CEC310] object:0];
  v4 = SUUIMediaPlayerFramework();
  v5 = *SUUIWeakLinkedSymbolForString("MPMediaLibraryDidChangeNotification", v4);
  [defaultCenter removeObserver:self name:v5 object:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277D69D78], 0);
  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterRemoveObserver(DistributedCenter, self, @"com.apple.LaunchServices.applicationRegistered", 0);
  CFNotificationCenterRemoveObserver(DistributedCenter, self, @"com.apple.LaunchServices.applicationUnregistered", 0);
  [(SSDownloadManager *)self->_downloadManager removeObserver:self];

  v8.receiver = self;
  v8.super_class = SUUIItemStateCenter;
  [(SUUIItemStateCenter *)&v8 dealloc];
}

+ (id)defaultCenter
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__SUUIItemStateCenter_defaultCenter__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultCenter_sOnce_0 != -1)
  {
    dispatch_once(&defaultCenter_sOnce_0, block);
  }

  v2 = defaultCenter_sCenter_0;

  return v2;
}

uint64_t __36__SUUIItemStateCenter_defaultCenter__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = defaultCenter_sCenter_0;
  defaultCenter_sCenter_0 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (void)addMediaLibrary:(id)library
{
  libraryCopy = library;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__SUUIItemStateCenter_addMediaLibrary___block_invoke;
  v7[3] = &unk_2798F5AF8;
  v7[4] = self;
  v8 = libraryCopy;
  v6 = libraryCopy;
  dispatch_async(accessQueue, v7);
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__SUUIItemStateCenter_addObserver___block_invoke;
  v7[3] = &unk_2798F5AF8;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(accessQueue, v7);
}

uint64_t __35__SUUIItemStateCenter_addObserver___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 128);
  if (!v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:0];
    v4 = *(a1 + 32);
    v5 = *(v4 + 128);
    *(v4 + 128) = v3;

    v2 = *(*(a1 + 32) + 128);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

- (void)cancelDownloadForItemWithIdentifier:(int64_t)identifier
{
  v5 = [SUUIStoreIdentifier alloc];
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:identifier];
  v7 = [(SUUIStoreIdentifier *)v5 initWithNumber:v6];

  v8 = [(NSMutableDictionary *)self->_itemStates objectForKey:v7];
  if ([v8 mediaCategory] == 1)
  {
    objc_initWeak(&location, self->_jobManager);
    objc_initWeak(&from, self);
    jobManager = self->_jobManager;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __59__SUUIItemStateCenter_cancelDownloadForItemWithIdentifier___block_invoke;
    v17[3] = &unk_2798FE108;
    v20[1] = identifier;
    objc_copyWeak(&v19, &location);
    objc_copyWeak(v20, &from);
    v17[4] = self;
    v18 = v8;
    [(ASDJobManager *)jobManager getJobsUsingBlock:v17];

    objc_destroyWeak(v20);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else
  {
    objc_initWeak(&location, self->_downloadManager);
    downloadManager = self->_downloadManager;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __59__SUUIItemStateCenter_cancelDownloadForItemWithIdentifier___block_invoke_42;
    v14[3] = &unk_2798FE130;
    v16[1] = identifier;
    v15 = v8;
    objc_copyWeak(v16, &location);
    [(SSDownloadManager *)downloadManager getDownloadsUsingBlock:v14];
    objc_destroyWeak(v16);

    objc_destroyWeak(&location);
    accessQueue = self->_accessQueue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __59__SUUIItemStateCenter_cancelDownloadForItemWithIdentifier___block_invoke_2_43;
    v12[3] = &unk_2798F5AF8;
    v12[4] = self;
    v13 = v7;
    dispatch_async(accessQueue, v12);
  }
}

void __59__SUUIItemStateCenter_cancelDownloadForItemWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        if ([v8 storeItemID] == *(a1 + 64))
        {
          WeakRetained = objc_loadWeakRetained((a1 + 48));
          v15 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v8, "persistentID")}];
          v25 = v15;
          v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
          [WeakRetained cancelJobsWithIDs:v16 completionBlock:&__block_literal_global_67];

          v9 = v3;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = objc_loadWeakRetained((a1 + 56));
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = *(v11 + 8);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __59__SUUIItemStateCenter_cancelDownloadForItemWithIdentifier___block_invoke_3;
  v17[3] = &unk_2798FE0E0;
  v13 = *(a1 + 64);
  v17[4] = v11;
  v20 = v13;
  v18 = v10;
  v19 = v9;
  dispatch_async(v12, v17);

LABEL_11:
}

void __59__SUUIItemStateCenter_cancelDownloadForItemWithIdentifier___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D69B38] sharedConfig];
  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 OSLogObject];
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = objc_opt_class();
  v7 = *(a1 + 56);
  *v12 = 138412546;
  *&v12[4] = v6;
  *&v12[12] = 2048;
  *&v12[14] = v7;
  v8 = v6;
  LODWORD(v11) = 22;
  v9 = _os_log_send_and_compose_impl();

  if (v9)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithCString:v9 encoding:{4, v12, v11, *v12, *&v12[16]}];
    free(v9);
    SSFileLog();
LABEL_9:
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [*(a1 + 40) setState:{objc_msgSend(*(a1 + 40), "state") & 0xFFFFFFFFFFFFFFFCLL}];
  [v10 addObject:*(a1 + 40)];
  if (*(a1 + 48) && [v10 count])
  {
    [*(a1 + 48) _notifyObserversOfStateChanges:v10];
  }
}

void __59__SUUIItemStateCenter_cancelDownloadForItemWithIdentifier___block_invoke_42(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    v7 = *MEMORY[0x277D6A080];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 valueForProperty:v7];
        v11 = [v10 longLongValue];
        v12 = *(a1 + 48);

        if (v11 != v12)
        {
          v13 = [*(a1 + 32) downloadIdentifiers];
          v14 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v9, "persistentIdentifier")}];
          v15 = [v13 containsObject:v14];

          if (!v15)
          {
            continue;
          }
        }

        WeakRetained = objc_loadWeakRetained((a1 + 40));
        v22 = v9;
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
        [WeakRetained cancelDownloads:v17 completionBlock:0];
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v5);
  }
}

void __59__SUUIItemStateCenter_cancelDownloadForItemWithIdentifier___block_invoke_2_43(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 104) copy];
  v3 = [*(*(a1 + 32) + 152) familyForItem:*(a1 + 40)];
  v4 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = SUUILibraryItemForStoreIdentifier(*(*(&v15 + 1) + 8 * v9));
        [v4 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v11 = *(*(a1 + 32) + 96);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __59__SUUIItemStateCenter_cancelDownloadForItemWithIdentifier___block_invoke_3_44;
    v12[3] = &unk_2798F5AF8;
    v13 = v2;
    v14 = v4;
    dispatch_async(v11, v12);
  }
}

void __59__SUUIItemStateCenter_cancelDownloadForItemWithIdentifier___block_invoke_3_44(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 removeMediaItemsForLibraryItems:{*(a1 + 40), v8}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)finishLoadingWithCompletionBlock:(id)block
{
  blockCopy = block;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__SUUIItemStateCenter_finishLoadingWithCompletionBlock___block_invoke;
  v7[3] = &unk_2798F6030;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(accessQueue, v7);
}

void __56__SUUIItemStateCenter_finishLoadingWithCompletionBlock___block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 56))
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v3 = *(a1 + 32);
    v4 = *(v3 + 56);
    *(v3 + 56) = v2;
  }

  v7 = [*(a1 + 40) copy];
  v5 = *(*(a1 + 32) + 56);
  v6 = _Block_copy(v7);
  [v5 addObject:v6];

  [*(a1 + 32) _fireFinishLoadBlocksIfNecessary];
}

- (BOOL)isApplicationInstallRestricted
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__SUUIItemStateCenter_isApplicationInstallRestricted__block_invoke;
  v5[3] = &unk_2798FD278;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __53__SUUIItemStateCenter_isApplicationInstallRestricted__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (v2 == 255)
  {
    v3 = [MEMORY[0x277D262A0] sharedConnection];
    v4 = [v3 isOnDeviceAppInstallationAllowed];

    *(*(a1 + 32) + 16) = v4 ^ 1;
    v2 = *(*(a1 + 32) + 16);
  }

  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

- (BOOL)isGratisEligible
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__SUUIItemStateCenter_isGratisEligible__block_invoke;
  v5[3] = &unk_2798FD278;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __39__SUUIItemStateCenter_isGratisEligible__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 88);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __39__SUUIItemStateCenter_isGratisEligible__block_invoke_2;
  v3[3] = &unk_2798FE158;
  v3[4] = *(a1 + 40);
  return [v1 enumerateKeysAndObjectsUsingBlock:v3];
}

uint64_t __39__SUUIItemStateCenter_isGratisEligible__block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 state];
  if ((result & 0x10) != 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (BOOL)isRunningInStoreDemoMode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__SUUIItemStateCenter_isRunningInStoreDemoMode__block_invoke;
  v5[3] = &unk_2798FD278;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __47__SUUIItemStateCenter_isRunningInStoreDemoMode__block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(*(result + 32) + 160);
  if (v2 == 255)
  {
    result = [MEMORY[0x277D75128] isRunningInStoreDemoMode];
    *(*(v1 + 32) + 160) = result;
    v2 = *(*(v1 + 32) + 160);
  }

  *(*(*(v1 + 40) + 8) + 24) = v2 != 0;
  return result;
}

- (id)metricsActionTypeForItem:(id)item
{
  itemCopy = item;
  v5 = -[SUUIItemStateCenter stateForItemWithIdentifier:](self, "stateForItemWithIdentifier:", [itemCopy itemIdentifier]);
  state = [v5 state];
  if ((state & 2) != 0)
  {
    v9 = MEMORY[0x277D6A440];
LABEL_6:
    v8 = *v9;
    goto LABEL_13;
  }

  if ((state & 0x24) == 4)
  {
    bundleIdentifier = [itemCopy bundleIdentifier];
    if (bundleIdentifier)
    {
      v8 = *MEMORY[0x277D6A450];
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_13;
  }

  if ((state & 1) == 0)
  {
    if ((state & 8) != 0)
    {
      v9 = MEMORY[0x277D6A448];
    }

    else
    {
      v9 = MEMORY[0x277D6A438];
    }

    goto LABEL_6;
  }

  v8 = 0;
LABEL_13:

  return v8;
}

- (int64_t)parentalControlsRank
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1000;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__SUUIItemStateCenter_parentalControlsRank__block_invoke;
  v5[3] = &unk_2798FD278;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __43__SUUIItemStateCenter_parentalControlsRank__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 136);
  if (v2 == -1)
  {
    v3 = [MEMORY[0x277D262A0] sharedConnection];
    v4 = [v3 effectiveValueForSetting:*MEMORY[0x277D25F70]];

    if (v4)
    {
      v5 = [v4 integerValue];
    }

    else
    {
      v5 = 1000;
    }

    *(*(a1 + 32) + 136) = v5;

    v2 = *(*(a1 + 32) + 136);
  }

  *(*(*(a1 + 40) + 8) + 24) = v2;
}

- (id)performActionForItem:(id)item clientContext:(id)context completionBlock:(id)block
{
  blockCopy = block;
  contextCopy = context;
  itemCopy = item;
  primaryItemOffer = [itemCopy primaryItemOffer];
  v12 = [(SUUIItemStateCenter *)self performActionForItem:itemCopy offer:primaryItemOffer clientContext:contextCopy completionBlock:blockCopy];

  return v12;
}

- (id)performActionForItem:(id)item clientContext:(id)context
{
  contextCopy = context;
  itemCopy = item;
  v8 = SUUIItemStateCenterUseAppstoredPurchases(itemCopy);
  primaryItemOffer = [itemCopy primaryItemOffer];
  if (v8)
  {
    [(SUUIItemStateCenter *)self performActionForSoftwareItem:itemCopy offer:primaryItemOffer clientContext:contextCopy completionBlock:0];
  }

  else
  {
    [(SUUIItemStateCenter *)self performActionForItem:itemCopy offer:primaryItemOffer clientContext:contextCopy completionBlock:0];
  }
  v10 = ;

  return v10;
}

- (id)performActionForItem:(id)item offer:(id)offer clientContext:(id)context completionBlock:(id)block
{
  itemCopy = item;
  offerCopy = offer;
  contextCopy = context;
  blockCopy = block;
  v14 = [(SUUIItemStateCenter *)self metricsActionTypeForItem:itemCopy];
  if (([v14 isEqualToString:*MEMORY[0x277D6A438]] & 1) != 0 || objc_msgSend(v14, "isEqualToString:", *MEMORY[0x277D6A448]))
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __80__SUUIItemStateCenter_performActionForItem_offer_clientContext_completionBlock___block_invoke;
    v22[3] = &unk_2798FE180;
    v15 = &v23;
    v23 = blockCopy;
    [(SUUIItemStateCenter *)self purchaseItem:itemCopy offer:offerCopy clientContext:contextCopy completionBlock:v22];
    v16 = -[SUUIItemStateCenter stateForItemWithIdentifier:](self, "stateForItemWithIdentifier:", [itemCopy itemIdentifier]);
LABEL_4:

    goto LABEL_5;
  }

  if ([v14 isEqualToString:*MEMORY[0x277D6A450]])
  {
    bundleIdentifier = [itemCopy bundleIdentifier];
    SUUIMetricsLaunchApplicationWithIdentifier(bundleIdentifier, 0);
    CFRelease(bundleIdentifier);
  }

  else if ([v14 isEqualToString:*MEMORY[0x277D6A440]])
  {
    -[SUUIItemStateCenter cancelDownloadForItemWithIdentifier:](self, "cancelDownloadForItemWithIdentifier:", [itemCopy itemIdentifier]);
  }

  if (blockCopy)
  {
    observerQueue = self->_observerQueue;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __80__SUUIItemStateCenter_performActionForItem_offer_clientContext_completionBlock___block_invoke_2;
    v20[3] = &unk_2798F8B98;
    v15 = &v21;
    v21 = blockCopy;
    dispatch_async(observerQueue, v20);
    v16 = 0;
    goto LABEL_4;
  }

  v16 = 0;
LABEL_5:

  return v16;
}

uint64_t __80__SUUIItemStateCenter_performActionForItem_offer_clientContext_completionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)performActionForSoftwareItem:(id)item offer:(id)offer clientContext:(id)context completionBlock:(id)block
{
  itemCopy = item;
  offerCopy = offer;
  contextCopy = context;
  blockCopy = block;
  v14 = [(SUUIItemStateCenter *)self metricsActionTypeForItem:itemCopy];
  if (([v14 isEqualToString:*MEMORY[0x277D6A438]] & 1) != 0 || objc_msgSend(v14, "isEqualToString:", *MEMORY[0x277D6A448]))
  {
    if (SUUIItemStateCenterUseAppstoredPurchases(itemCopy))
    {
      v15 = v24;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v16 = __88__SUUIItemStateCenter_performActionForSoftwareItem_offer_clientContext_completionBlock___block_invoke;
    }

    else
    {
      v15 = v23;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v16 = __88__SUUIItemStateCenter_performActionForSoftwareItem_offer_clientContext_completionBlock___block_invoke_2;
    }

    v15[2] = v16;
    v15[3] = &unk_2798FE1A8;
    v15[4] = blockCopy;
    [(SUUIItemStateCenter *)self purchaseSoftwareItem:itemCopy offer:offerCopy clientContext:contextCopy completionBlock:v15];

    v17 = -[SUUIItemStateCenter stateForItemWithIdentifier:](self, "stateForItemWithIdentifier:", [itemCopy itemIdentifier]);
  }

  else
  {
    if ([v14 isEqualToString:*MEMORY[0x277D6A450]])
    {
      bundleIdentifier = [itemCopy bundleIdentifier];
      SUUIMetricsLaunchApplicationWithIdentifier(bundleIdentifier, 0);
      CFRelease(bundleIdentifier);
    }

    else if ([v14 isEqualToString:*MEMORY[0x277D6A440]])
    {
      -[SUUIItemStateCenter cancelDownloadForItemWithIdentifier:](self, "cancelDownloadForItemWithIdentifier:", [itemCopy itemIdentifier]);
    }

    if (blockCopy)
    {
      observerQueue = self->_observerQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __88__SUUIItemStateCenter_performActionForSoftwareItem_offer_clientContext_completionBlock___block_invoke_3;
      block[3] = &unk_2798F8B98;
      v22 = blockCopy;
      dispatch_async(observerQueue, block);
    }

    v17 = 0;
  }

  return v17;
}

uint64_t __88__SUUIItemStateCenter_performActionForSoftwareItem_offer_clientContext_completionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __88__SUUIItemStateCenter_performActionForSoftwareItem_offer_clientContext_completionBlock___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)purchaseItem:(id)item offer:(id)offer clientContext:(id)context completionBlock:(id)block
{
  itemCopy = item;
  offerCopy = offer;
  contextCopy = context;
  blockCopy = block;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__SUUIItemStateCenter_purchaseItem_offer_clientContext_completionBlock___block_invoke;
  block[3] = &unk_2798FE1F8;
  v20 = itemCopy;
  selfCopy = self;
  v23 = contextCopy;
  v24 = blockCopy;
  v22 = offerCopy;
  v15 = contextCopy;
  v16 = blockCopy;
  v17 = offerCopy;
  v18 = itemCopy;
  dispatch_async(accessQueue, block);
}

void __72__SUUIItemStateCenter_purchaseItem_offer_clientContext_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) itemKind];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  if (v2 == 17)
  {
    v6 = [v3 _newPurchasesWithBundleItem:v4 bundleOffer:v5];
  }

  else
  {
    v7 = [v3 _newPurchaseWithItem:v4 offer:v5];
    if (v7)
    {
      v6 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v7, 0}];
    }

    else
    {
      v6 = 0;
    }
  }

  if ([v6 count])
  {
    v8 = *(a1 + 40);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __72__SUUIItemStateCenter_purchaseItem_offer_clientContext_completionBlock___block_invoke_3;
    v13[3] = &unk_2798FE1D0;
    v9 = &v14;
    v10 = *(a1 + 56);
    v14 = *(a1 + 64);
    [v8 _performPurchases:v6 hasBundlePurchase:v2 == 17 withClientContext:v10 completionBlock:v13];
LABEL_11:

    goto LABEL_12;
  }

  v11 = *(a1 + 64);
  if (v11)
  {
    v12 = *(*(a1 + 40) + 120);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__SUUIItemStateCenter_purchaseItem_offer_clientContext_completionBlock___block_invoke_2;
    block[3] = &unk_2798F8B98;
    v9 = &v16;
    v16 = v11;
    dispatch_async(v12, block);
    goto LABEL_11;
  }

LABEL_12:
}

void __72__SUUIItemStateCenter_purchaseItem_offer_clientContext_completionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v5 = v3;
    if ([v3 count] == 1)
    {
      v4 = [v5 objectAtIndex:0];
    }

    else
    {
      v4 = 0;
    }

    (*(*(a1 + 32) + 16))();

    v3 = v5;
  }
}

- (void)purchaseSoftwareItem:(id)item offer:(id)offer clientContext:(id)context completionBlock:(id)block
{
  itemCopy = item;
  offerCopy = offer;
  contextCopy = context;
  blockCopy = block;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__SUUIItemStateCenter_purchaseSoftwareItem_offer_clientContext_completionBlock___block_invoke;
  block[3] = &unk_2798FE1F8;
  v20 = itemCopy;
  selfCopy = self;
  v23 = contextCopy;
  v24 = blockCopy;
  v22 = offerCopy;
  v15 = contextCopy;
  v16 = blockCopy;
  v17 = offerCopy;
  v18 = itemCopy;
  dispatch_async(accessQueue, block);
}

void __80__SUUIItemStateCenter_purchaseSoftwareItem_offer_clientContext_completionBlock___block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) itemKind] == 17)
  {
    v2 = [*(a1 + 40) _newPurchasesForSoftwareWithBundleItem:*(a1 + 32) bundleOffer:*(a1 + 48)];
  }

  else if ([*(a1 + 32) itemKind] == 12)
  {
    v3 = [*(a1 + 40) _newSoftwarePurchaseWithItem:*(a1 + 32) offer:*(a1 + 48)];
    v4 = v3;
    if (v3)
    {
      v13[0] = v3;
      v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  if (![v2 count])
  {
    v5 = *(a1 + 64);
    if (v5)
    {
      v6 = *(*(a1 + 40) + 120);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __80__SUUIItemStateCenter_purchaseSoftwareItem_offer_clientContext_completionBlock___block_invoke_2;
      block[3] = &unk_2798F8B98;
      v12 = v5;
      dispatch_async(v6, block);
    }
  }

  if ([v2 count])
  {
    v7 = *(a1 + 40);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __80__SUUIItemStateCenter_purchaseSoftwareItem_offer_clientContext_completionBlock___block_invoke_3;
    v9[3] = &unk_2798FE220;
    v8 = *(a1 + 56);
    v10 = *(a1 + 64);
    [v7 _performSoftwarePurchases:v2 withClientContext:v8 completionBlock:v9];
  }
}

void __80__SUUIItemStateCenter_purchaseSoftwareItem_offer_clientContext_completionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v3 = [a2 items];
    v4 = [v3 firstObject];

    (*(*(a1 + 32) + 16))();
  }
}

- (void)purchaseItems:(id)items withClientContext:(id)context completionBlock:(id)block
{
  itemsCopy = items;
  contextCopy = context;
  blockCopy = block;
  accessQueue = self->_accessQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__SUUIItemStateCenter_purchaseItems_withClientContext_completionBlock___block_invoke;
  v15[3] = &unk_2798FE248;
  v15[4] = self;
  v16 = itemsCopy;
  v17 = contextCopy;
  v18 = blockCopy;
  v12 = blockCopy;
  v13 = contextCopy;
  v14 = itemsCopy;
  dispatch_async(accessQueue, v15);
}

void __71__SUUIItemStateCenter_purchaseItems_withClientContext_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _newPurchasesWithItems:*(a1 + 40)];
  if ([v2 count])
  {
    [*(a1 + 32) _performPurchases:v2 hasBundlePurchase:0 withClientContext:*(a1 + 48) completionBlock:*(a1 + 56)];
  }

  else
  {
    v3 = *(a1 + 56);
    if (v3)
    {
      v4 = *(*(a1 + 32) + 120);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __71__SUUIItemStateCenter_purchaseItems_withClientContext_completionBlock___block_invoke_2;
      block[3] = &unk_2798F8B98;
      v6 = v3;
      dispatch_async(v4, block);
    }
  }
}

- (void)reloadGratisEligibilityWithBundleIdentifiers:(id)identifiers clientContext:(id)context
{
  identifiersCopy = identifiers;
  contextCopy = context;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__SUUIItemStateCenter_reloadGratisEligibilityWithBundleIdentifiers_clientContext___block_invoke;
  block[3] = &unk_2798F5BC0;
  block[4] = self;
  v12 = identifiersCopy;
  v13 = contextCopy;
  v9 = contextCopy;
  v10 = identifiersCopy;
  dispatch_async(accessQueue, block);
}

void __82__SUUIItemStateCenter_reloadGratisEligibilityWithBundleIdentifiers_clientContext___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) _gratisStateIsValid] & 1) == 0)
  {
    *(*(a1 + 32) + 64) = 1;
    ++*(*(a1 + 32) + 80);
    v2 = [[SUUILoadGratisEligibilityOperation alloc] initWithBundleIdentifiers:*(a1 + 40) clientContext:*(a1 + 48)];
    objc_initWeak(&location, *(a1 + 32));
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __82__SUUIItemStateCenter_reloadGratisEligibilityWithBundleIdentifiers_clientContext___block_invoke_2;
    v7[3] = &unk_2798FE270;
    objc_copyWeak(&v8, &location);
    v7[4] = *(a1 + 32);
    [(SUUILoadGratisEligibilityOperation *)v2 setOutputBlock:v7];
    v3 = dispatch_get_global_queue(0, 0);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __82__SUUIItemStateCenter_reloadGratisEligibilityWithBundleIdentifiers_clientContext___block_invoke_3;
    v5[3] = &unk_2798F5BE8;
    v6 = v2;
    v4 = v2;
    dispatch_async(v3, v5);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __82__SUUIItemStateCenter_reloadGratisEligibilityWithBundleIdentifiers_clientContext___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [MEMORY[0x277CBEB98] setWithArray:v6];

  [WeakRetained _setGratisIdentifiers:v8 error:v5];
  if (v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = [MEMORY[0x277CBEAA8] date];
  }

  v10 = v9;
  objc_storeStrong((*(a1 + 32) + 72), v9);
  if (!v5)
  {
  }
}

- (void)reloadMediaLibrary:(id)library
{
  libraryCopy = library;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__SUUIItemStateCenter_reloadMediaLibrary___block_invoke;
  v7[3] = &unk_2798F5AF8;
  v7[4] = self;
  v8 = libraryCopy;
  v6 = libraryCopy;
  dispatch_async(accessQueue, v7);
}

uint64_t __42__SUUIItemStateCenter_reloadMediaLibrary___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 104) containsObject:*(a1 + 40)];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _reloadStateForObservedMediaLibraryItems];
  }

  return result;
}

- (void)removeMediaLibrary:(id)library
{
  libraryCopy = library;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__SUUIItemStateCenter_removeMediaLibrary___block_invoke;
  v7[3] = &unk_2798F5AF8;
  v7[4] = self;
  v8 = libraryCopy;
  v6 = libraryCopy;
  dispatch_async(accessQueue, v7);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__SUUIItemStateCenter_removeObserver___block_invoke;
  v7[3] = &unk_2798F5AF8;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(accessQueue, v7);
}

- (id)stateForItemWithIdentifier:(int64_t)identifier
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__103;
  v11 = __Block_byref_object_dispose__103;
  v12 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SUUIItemStateCenter_stateForItemWithIdentifier___block_invoke;
  block[3] = &unk_2798F5B70;
  block[5] = &v7;
  block[6] = identifier;
  block[4] = self;
  dispatch_sync(accessQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __50__SUUIItemStateCenter_stateForItemWithIdentifier___block_invoke(void *a1)
{
  v6 = [[SUUIStoreIdentifier alloc] initWithLongLong:a1[6]];
  v2 = [*(a1[4] + 88) objectForKey:v6];
  v3 = [v2 copy];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)stateForItemWithStoreIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__103;
  v16 = __Block_byref_object_dispose__103;
  v17 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SUUIItemStateCenter_stateForItemWithStoreIdentifier___block_invoke;
  block[3] = &unk_2798F5B98;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(accessQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __55__SUUIItemStateCenter_stateForItemWithStoreIdentifier___block_invoke(void *a1)
{
  v5 = [*(a1[4] + 88) objectForKey:a1[5]];
  v2 = [v5 copy];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)addManifestDownloadWithURL:(id)l placeholderMetadata:(id)metadata
{
  metadataCopy = metadata;
  v7 = MEMORY[0x277D69AD8];
  lCopy = l;
  v9 = [v7 alloc];
  v10 = [MEMORY[0x277CBABA0] requestWithURL:lCopy];

  v11 = [v9 initWithURLRequest:v10];
  [v11 setManifestFormat:1];
  v12 = -[SUUIStoreIdentifier initWithLongLong:]([SUUIStoreIdentifier alloc], "initWithLongLong:", [metadataCopy itemIdentifier]);
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__SUUIItemStateCenter_addManifestDownloadWithURL_placeholderMetadata___block_invoke;
  block[3] = &unk_2798F5BC0;
  block[4] = self;
  v14 = v12;
  v20 = v14;
  v21 = metadataCopy;
  v15 = metadataCopy;
  dispatch_async(accessQueue, block);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __70__SUUIItemStateCenter_addManifestDownloadWithURL_placeholderMetadata___block_invoke_2;
  v17[3] = &unk_2798FE298;
  v17[4] = self;
  v18 = v14;
  v16 = v14;
  [v11 startWithManifestResponseBlock:v17];
}

void __70__SUUIItemStateCenter_addManifestDownloadWithURL_placeholderMetadata___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _addState:1 forItemIdentifier:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    if ([*(a1 + 48) isSample])
    {
      [v3 setDownloadContentFlags:1];
    }

    [*(a1 + 32) _notifyObserversOfStateChange:v3];
    v2 = v3;
  }
}

void __70__SUUIItemStateCenter_addManifestDownloadWithURL_placeholderMetadata___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__SUUIItemStateCenter_addManifestDownloadWithURL_placeholderMetadata___block_invoke_3;
  block[3] = &unk_2798F5BC0;
  block[4] = v5;
  v9 = v4;
  v10 = v3;
  v7 = v3;
  dispatch_async(v6, block);
}

void __70__SUUIItemStateCenter_addManifestDownloadWithURL_placeholderMetadata___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _removeState:1 forItemIdentifier:*(a1 + 40)];
  if (v2)
  {
    v6 = v2;
    v3 = [*(a1 + 48) validDownloads];
    v4 = [v3 firstObject];

    if (v4)
    {
      v5 = [*(a1 + 32) _addState:2 forItemIdentifier:*(a1 + 40)];
    }

    else
    {
      [v6 setDownloadContentFlags:0];
    }

    [*(a1 + 32) _notifyObserversOfStateChange:v6];

    v2 = v6;
  }
}

- (ASDSoftwareUpdatesStore)appstoredUpdatesStore
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__103;
  v10 = __Block_byref_object_dispose__103;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__SUUIItemStateCenter_appstoredUpdatesStore__block_invoke;
  v5[3] = &unk_2798F5B48;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __44__SUUIItemStateCenter_appstoredUpdatesStore__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _appstoredUpdatesStore];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)beginObservingLibraryItems:(id)items
{
  itemsCopy = items;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__SUUIItemStateCenter_beginObservingLibraryItems___block_invoke;
  v7[3] = &unk_2798F5AF8;
  v7[4] = self;
  v8 = itemsCopy;
  v6 = itemsCopy;
  dispatch_async(accessQueue, v7);
}

void __50__SUUIItemStateCenter_beginObservingLibraryItems___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 112))
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = *(a1 + 40);
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          if (![*(*(a1 + 32) + 112) countForObject:{v9, v14}])
          {
            [v3 addObject:v9];
          }

          [*(*(a1 + 32) + 112) addObject:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v6);
    }

    [*(a1 + 32) _reloadMediaLibraryStateForItems:v3];
  }

  else
  {
    v10 = *(v2 + 96);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__SUUIItemStateCenter_beginObservingLibraryItems___block_invoke_2;
    block[3] = &unk_2798F5BE8;
    block[4] = v2;
    dispatch_async(v10, block);
    v11 = [objc_alloc(MEMORY[0x277CCA940]) initWithSet:*(a1 + 40)];
    v12 = *(a1 + 32);
    v13 = *(v12 + 112);
    *(v12 + 112) = v11;

    [*(a1 + 32) _reloadMediaLibraryStateForItems:*(a1 + 40)];
  }
}

void __50__SUUIItemStateCenter_beginObservingLibraryItems___block_invoke_2(uint64_t a1)
{
  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  v2 = SUUIMediaPlayerFramework();
  v3 = SUUIWeakLinkedClassForString(&cfstr_Mpmedialibrary.isa, v2);
  v4 = [v3 defaultMediaLibrary];
  [v4 beginGeneratingLibraryChangeNotifications];

  v5 = SUUIMediaPlayerFramework();
  v6 = SUUIWeakLinkedSymbolForString("MPMediaLibraryDidChangeNotification", v5);
  v7 = *(a1 + 32);
  v8 = *v6;
  v9 = [v3 defaultMediaLibrary];
  [v10 addObserver:v7 selector:sel__mediaLibraryDidChangeNotification_ name:v8 object:v9];
}

- (void)evaluatePurchaseResponseForRentals:(id)rentals
{
  rentalsCopy = rentals;
  if (rentalsCopy)
  {
    v5 = MEMORY[0x277CBEBC0];
    v23 = rentalsCopy;
    purchase = [rentalsCopy purchase];
    buyParameters = [purchase buyParameters];
    v8 = [v5 copyDictionaryForQueryString:buyParameters unescapedValues:1];

    purchase2 = [v23 purchase];
    v10 = [purchase2 valueForDownloadProperty:*MEMORY[0x277D6A080]];

    if (!v10 || ![v10 unsignedLongLongValue])
    {
      v11 = [v8 valueForKey:@"salableAdamId"];
      if (objc_opt_respondsToSelector())
      {
        v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v11, "longLongValue")}];

        v10 = v12;
      }
    }

    v13 = [[SUUIStoreIdentifier alloc] initWithNumber:v10];
    purchase3 = [v23 purchase];
    v15 = [purchase3 valueForDownloadProperty:*MEMORY[0x277D69FF8]];
    bOOLValue = [v15 BOOLValue];

    v17 = [v8 valueForKey:@"rental"];
    bOOLValue2 = [v17 BOOLValue];

    error = [v23 error];
    if (error || ([v23 cancelsPurchaseBatch] & 1) != 0)
    {
    }

    else if ((bOOLValue | bOOLValue2))
    {
      v20 = [MEMORY[0x277CBEB98] setWithObject:v13];
      v22 = [(SUUIItemStateCenter *)self _setStateFlag:2048 forItemsWithIdentifiers:v20 sendNotification:1];
LABEL_12:

      rentalsCopy = v23;
      goto LABEL_13;
    }

    v20 = [(SUUIItemStateCenter *)self stateForItemWithStoreIdentifier:v13];
    if (([v20 state] & 0x800) != 0)
    {
      v21 = [(SUUIItemStateCenter *)self _removeState:2048 forItemIdentifier:v13];
    }

    goto LABEL_12;
  }

LABEL_13:
}

- (void)endObservingLibraryItems:(id)items
{
  itemsCopy = items;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__SUUIItemStateCenter_endObservingLibraryItems___block_invoke;
  v7[3] = &unk_2798F5AF8;
  v8 = itemsCopy;
  selfCopy = self;
  v6 = itemsCopy;
  dispatch_async(accessQueue, v7);
}

void __48__SUUIItemStateCenter_endObservingLibraryItems___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [*(*(a1 + 40) + 112) countForObject:{v7, v13}];
        if (v8 == 1)
        {
          v9 = [SUUIStoreIdentifier alloc];
          v10 = [v7 storeItemIdentifier];
          v11 = [(SUUIStoreIdentifier *)v9 initWithNumber:v10];

          v12 = [*(a1 + 40) _removeState:64 forItemIdentifier:v11];
        }

        else if (v8 < 1)
        {
          continue;
        }

        [*(*(a1 + 40) + 112) removeObject:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

- (void)getSoftwareUpdatesWithCompletionBlock:(id)block
{
  blockCopy = block;
  appstoredUpdatesStore = [(SUUIItemStateCenter *)self appstoredUpdatesStore];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__SUUIItemStateCenter_getSoftwareUpdatesWithCompletionBlock___block_invoke;
  v7[3] = &unk_2798FE2C0;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [appstoredUpdatesStore getUpdatesWithCompletionBlock:v7];
}

void __61__SUUIItemStateCenter_getSoftwareUpdatesWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _setAvailableAppstoredUpdatesWithUpdates:v4 decrementLoadCount:0];
  (*(*(a1 + 40) + 16))();
}

- (void)performActionForLibraryItem:(id)item
{
  itemCopy = item;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__SUUIItemStateCenter_performActionForLibraryItem___block_invoke;
  v7[3] = &unk_2798F5AF8;
  v7[4] = self;
  v8 = itemCopy;
  v6 = itemCopy;
  dispatch_async(accessQueue, v7);
}

void __51__SUUIItemStateCenter_performActionForLibraryItem___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 104) copy];
  v3 = *(*(a1 + 32) + 96);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SUUIItemStateCenter_performActionForLibraryItem___block_invoke_2;
  block[3] = &unk_2798F5BC0;
  v8 = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v9 = v4;
  v10 = v5;
  v6 = v2;
  dispatch_async(v3, block);
}

void __51__SUUIItemStateCenter_performActionForLibraryItem___block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        v8 = [v7 stateForLibraryItem:*(a1 + 40)];
        if ([v8 availability])
        {
          [v7 performActionForLibraryItem:*(a1 + 40)];
LABEL_20:

          goto LABEL_21;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(*(a1 + 48) + 104);
  v9 = [v2 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    while (2)
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v2);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = MEMORY[0x277CCACA8];
          v14 = [*(a1 + 40) storeItemIdentifier];
          v8 = [v13 stringWithFormat:@"ibooks://assetid/%@", v14];

          v15 = [MEMORY[0x277CBEBC0] URLWithString:v8];
          v16 = [MEMORY[0x277D75128] sharedApplication];
          [v16 openURL:v15 options:MEMORY[0x277CBEC10] completionHandler:0];

          goto LABEL_20;
        }
      }

      v10 = [v2 countByEnumeratingWithState:&v17 objects:v25 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:
}

- (void)reloadSoftwareUpdatesFromServerWithCompletionBlock:(id)block
{
  blockCopy = block;
  appstoredUpdatesStore = [(SUUIItemStateCenter *)self appstoredUpdatesStore];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__SUUIItemStateCenter_reloadSoftwareUpdatesFromServerWithCompletionBlock___block_invoke;
  v7[3] = &unk_2798FE2E8;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [appstoredUpdatesStore reloadFromServerWithCompletionBlock:v7];
}

void __74__SUUIItemStateCenter_reloadSoftwareUpdatesFromServerWithCompletionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (!v5)
  {
    [*(a1 + 32) _setAvailableAppstoredUpdatesWithUpdates:v6 decrementLoadCount:0];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)findLibraryItemsForContentIdentifiers:(id)identifiers options:(id)options completionBlock:(id)block
{
  identifiersCopy = identifiers;
  optionsCopy = options;
  blockCopy = block;
  accessQueue = self->_accessQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__SUUIItemStateCenter_findLibraryItemsForContentIdentifiers_options_completionBlock___block_invoke;
  v15[3] = &unk_2798FE248;
  v16 = optionsCopy;
  selfCopy = self;
  v18 = identifiersCopy;
  v19 = blockCopy;
  v12 = blockCopy;
  v13 = identifiersCopy;
  v14 = optionsCopy;
  dispatch_async(accessQueue, v15);
}

void __85__SUUIItemStateCenter_findLibraryItemsForContentIdentifiers_options_completionBlock___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectForKey:@"kinds"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v2];
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = *(*(a1 + 40) + 104);
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = [v10 exposedPlatformItemKinds];
        v12 = v11;
        if (!v3 || !v11 || [v3 intersectsSet:v11])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v7);
  }

  v13 = objc_alloc_init(SUUISoftwareLibraryInterface);
  v14 = v13;
  if (!v3 || (-[SUUISoftwareLibraryInterface exposedPlatformItemKinds](v13, "exposedPlatformItemKinds"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v3 intersectsSet:v15], v15, v16))
  {
    [v4 addObject:v14];
  }

  v17 = *(*(a1 + 40) + 96);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__SUUIItemStateCenter_findLibraryItemsForContentIdentifiers_options_completionBlock___block_invoke_2;
  block[3] = &unk_2798FE338;
  v22 = *(a1 + 48);
  v23 = v4;
  v18 = *(a1 + 40);
  v24 = v3;
  v25 = v18;
  v26 = *(a1 + 56);
  v19 = v3;
  v20 = v4;
  dispatch_async(v17, block);
}

void __85__SUUIItemStateCenter_findLibraryItemsForContentIdentifiers_options_completionBlock___block_invoke_2(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v24 = a1;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v36;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v36 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v35 + 1) + 8 * i);
        v8 = objc_alloc_init(SUUILibraryItem);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v7;
        }

        else
        {
          v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:{objc_msgSend(v7, "longLongValue")}];
        }

        v10 = v9;
        v11 = [[SUUIStoreIdentifier alloc] initWithNumber:v9];
        [(SUUILibraryItem *)v8 setStoreIdentifier:v11];

        [v2 addObject:v8];
      }

      v4 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v4);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = *(a1 + 40);
  v13 = [v12 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v32;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v31 + 1) + 8 * j);
        v18 = objc_autoreleasePoolPush();
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __85__SUUIItemStateCenter_findLibraryItemsForContentIdentifiers_options_completionBlock___block_invoke_3;
        v28[3] = &unk_2798FE310;
        v29 = *(v24 + 48);
        v30 = v23;
        [v17 enumerateStatesForLibraryItems:v2 usingBlock:v28];

        objc_autoreleasePoolPop(v18);
      }

      v14 = [v12 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v14);
  }

  v19 = *(*(v24 + 56) + 120);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__SUUIItemStateCenter_findLibraryItemsForContentIdentifiers_options_completionBlock___block_invoke_4;
  block[3] = &unk_2798F5D58;
  v20 = *(v24 + 64);
  v26 = v23;
  v27 = v20;
  v21 = v23;
  dispatch_async(v19, block);
}

void __85__SUUIItemStateCenter_findLibraryItemsForContentIdentifiers_options_completionBlock___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if ([v5 availability] == 2)
  {
    v6 = [v5 storePlatformKind];
    if (!v6 || (v7 = *(a1 + 32)) == 0 || [v7 containsObject:v6])
    {
      v8 = [v5 newJavaScriptRepresentation];
      v9 = [v11 storeItemIdentifier];
      v10 = [v9 stringValue];

      [v8 setObject:v10 forKey:0x286AF1240];
      [*(a1 + 40) setObject:v8 forKey:v10];
    }
  }
}

- (id)gratisEligibleItemIdentifiers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__103;
  v11 = __Block_byref_object_dispose__103;
  array = [MEMORY[0x277CBEB18] array];
  accessQueue = self->_accessQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__SUUIItemStateCenter_gratisEligibleItemIdentifiers__block_invoke;
  v6[3] = &unk_2798FD278;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(accessQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __52__SUUIItemStateCenter_gratisEligibleItemIdentifiers__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 88);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__SUUIItemStateCenter_gratisEligibleItemIdentifiers__block_invoke_2;
  v3[3] = &unk_2798FE158;
  v3[4] = *(a1 + 40);
  return [v1 enumerateKeysAndObjectsUsingBlock:v3];
}

void __52__SUUIItemStateCenter_gratisEligibleItemIdentifiers__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (([v6 state] & 0x10) != 0)
  {
    v4 = *(*(*(a1 + 32) + 8) + 40);
    v5 = [v6 itemIdentifier];
    [v4 addObject:v5];
  }
}

- (void)purchaseTone:(id)tone withProperties:(id)properties clientContext:(id)context completionBlock:(id)block
{
  toneCopy = tone;
  propertiesCopy = properties;
  contextCopy = context;
  blockCopy = block;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__SUUIItemStateCenter_purchaseTone_withProperties_clientContext_completionBlock___block_invoke;
  block[3] = &unk_2798FE360;
  block[4] = self;
  v20 = toneCopy;
  v22 = contextCopy;
  v23 = blockCopy;
  v21 = propertiesCopy;
  v15 = contextCopy;
  v16 = propertiesCopy;
  v17 = blockCopy;
  v18 = toneCopy;
  dispatch_async(accessQueue, block);
}

void __81__SUUIItemStateCenter_purchaseTone_withProperties_clientContext_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v3 primaryItemOffer];
  v5 = [v2 _newPurchaseWithItem:v3 offer:v4];

  if (v5)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = [v6 assigneeIdentifier];
      [v5 setAssigneeIdentifier:v7];

      v8 = [*(a1 + 48) assigneeContactIdentifier];
      [v5 setAssigneeContactIdentifier:v8];

      v9 = [*(a1 + 48) assigneeToneStyle];
      [v5 setAssigneeToneStyle:v9];

      [v5 setShouldMakeDefaultRingtone:{objc_msgSend(*(a1 + 48), "shouldMakeDefaultRingtone")}];
      [v5 setShouldMakeDefaultTextTone:{objc_msgSend(*(a1 + 48), "shouldMakeDefaultTextTone")}];
    }

    v10 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v5, 0}];
    v11 = *(a1 + 32);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __81__SUUIItemStateCenter_purchaseTone_withProperties_clientContext_completionBlock___block_invoke_3;
    v15[3] = &unk_2798FE1D0;
    v12 = *(a1 + 56);
    v16 = *(a1 + 64);
    [v11 _performPurchases:v10 hasBundlePurchase:0 withClientContext:v12 completionBlock:v15];

    goto LABEL_7;
  }

  v13 = *(a1 + 64);
  if (v13)
  {
    v14 = *(*(a1 + 32) + 120);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__SUUIItemStateCenter_purchaseTone_withProperties_clientContext_completionBlock___block_invoke_2;
    block[3] = &unk_2798F8B98;
    v18 = v13;
    dispatch_async(v14, block);
    v10 = v18;
LABEL_7:
  }
}

void __81__SUUIItemStateCenter_purchaseTone_withProperties_clientContext_completionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v5 = v3;
    if ([v3 count] == 1)
    {
      v4 = [v5 objectAtIndex:0];
    }

    else
    {
      v4 = 0;
    }

    (*(*(a1 + 32) + 16))();

    v3 = v5;
  }
}

- (void)addRelationshipForParentAdamId:(id)id withChildAdamIds:(id)ids
{
  idCopy = id;
  idsCopy = ids;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__SUUIItemStateCenter_addRelationshipForParentAdamId_withChildAdamIds___block_invoke;
  block[3] = &unk_2798F5BC0;
  v12 = idCopy;
  v13 = idsCopy;
  selfCopy = self;
  v9 = idsCopy;
  v10 = idCopy;
  dispatch_async(accessQueue, block);
}

void __71__SUUIItemStateCenter_addRelationshipForParentAdamId_withChildAdamIds___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [[SUUIStoreIdentifier alloc] initWithNumber:*(a1 + 32)];
  v3 = [MEMORY[0x277CBEB58] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = [SUUIStoreIdentifier alloc];
        v11 = [(SUUIStoreIdentifier *)v10 initWithNumber:v9, v12];
        [v3 addObject:v11];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [*(*(a1 + 48) + 152) addChildren:v3 forParent:v2];
}

- (void)removeRelationshipsForParentAdamId:(id)id
{
  idCopy = id;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__SUUIItemStateCenter_removeRelationshipsForParentAdamId___block_invoke;
  v7[3] = &unk_2798F5AF8;
  v8 = idCopy;
  selfCopy = self;
  v6 = idCopy;
  dispatch_async(accessQueue, v7);
}

void __58__SUUIItemStateCenter_removeRelationshipsForParentAdamId___block_invoke(uint64_t a1)
{
  v2 = [[SUUIStoreIdentifier alloc] initWithNumber:*(a1 + 32)];
  [*(*(a1 + 40) + 152) removeAllRelationshipsForItem:v2];
}

- (void)jobManager:(id)manager completedJobs:(id)jobs
{
  jobsCopy = jobs;
  accessQueue = self->_accessQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__SUUIItemStateCenter_jobManager_completedJobs___block_invoke;
  v8[3] = &unk_2798F5AF8;
  v9 = jobsCopy;
  selfCopy = self;
  v7 = jobsCopy;
  dispatch_async(accessQueue, v8);
}

void __48__SUUIItemStateCenter_jobManager_completedJobs___block_invoke(uint64_t a1)
{
  v75 = *MEMORY[0x277D85DE8];
  v50 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = *(a1 + 32);
  v57 = [obj countByEnumeratingWithState:&v62 objects:v74 count:16];
  if (v57)
  {
    v56 = *v63;
    v48 = a1;
    do
    {
      for (i = 0; i != v57; ++i)
      {
        if (*v63 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v62 + 1) + 8 * i);
        v4 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "storeItemID", v46)}];
        v5 = [[SUUIStoreIdentifier alloc] initWithNumber:v4];
        v6 = [*(*(a1 + 40) + 88) objectForKey:v5];
        v7 = [v3 phase];
        if (!v6)
        {
          v59 = v5;
          v19 = [MEMORY[0x277D69B38] sharedConfig];
          v20 = [v19 shouldLog];
          if ([v19 shouldLogToDisk])
          {
            v20 |= 2u;
          }

          v21 = [v19 OSLogObject];
          if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            v20 &= 2u;
          }

          if (v20)
          {
LABEL_27:
            v23 = a1;
            v24 = v4;
            v25 = objc_opt_class();
            v26 = v25;
            v27 = [v3 bundleID];
            v66 = 138412546;
            v67 = v25;
            v4 = v24;
            v68 = 2112;
            v69 = v27;
            LODWORD(v47) = 22;
            v46 = &v66;
            v28 = _os_log_send_and_compose_impl();

            if (v28)
            {
              v21 = [MEMORY[0x277CCACA8] stringWithCString:v28 encoding:{4, &v66, v47}];
              free(v28);
              v46 = v21;
              SSFileLog();
              goto LABEL_30;
            }

LABEL_31:

            a1 = v23;
            v5 = v59;
            goto LABEL_59;
          }

LABEL_29:
          v23 = a1;
LABEL_30:

          goto LABEL_31;
        }

        v8 = v7;
        v9 = [v6 state];
        if ((v9 & 0x23) == 0)
        {
          v59 = v5;
          v19 = [MEMORY[0x277D69B38] sharedConfig];
          v22 = [v19 shouldLog];
          if ([v19 shouldLogToDisk])
          {
            v22 |= 2u;
          }

          v21 = [v19 OSLogObject];
          if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            v22 &= 2u;
          }

          if (v22)
          {
            goto LABEL_27;
          }

          goto LABEL_29;
        }

        v10 = v9;
        if (!v8)
        {
          v29 = [MEMORY[0x277D69B38] sharedConfig];
          v30 = [v29 shouldLog];
          if ([v29 shouldLogToDisk])
          {
            v30 |= 2u;
          }

          v31 = [v29 OSLogObject];
          if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            v30 &= 2u;
          }

          if (v30)
          {
            v60 = v5;
            v32 = a1;
            v33 = v4;
            v34 = objc_opt_class();
            v55 = v34;
            v35 = [v3 bundleID];
            v66 = 138412546;
            v67 = v34;
            v4 = v33;
            a1 = v32;
            v5 = v60;
            v68 = 2112;
            v69 = v35;
            LODWORD(v47) = 22;
            v46 = &v66;
            v36 = _os_log_send_and_compose_impl();

            if (v36)
            {
              v31 = [MEMORY[0x277CCACA8] stringWithCString:v36 encoding:{4, &v66, v47}];
              free(v36);
              v46 = v31;
              SSFileLog();
              goto LABEL_39;
            }
          }

          else
          {
LABEL_39:
          }

          v37 = v10 & 0xFFFFFFFFFFFFFFFCLL;
          goto LABEL_58;
        }

        v53 = v4;
        v51 = v9;
        v11 = v9 & 0xFFFFFFFFFFFFFFDCLL;
        v12 = [MEMORY[0x277D69B38] sharedConfig];
        v13 = [v12 shouldLog];
        if ([v12 shouldLogToDisk])
        {
          v13 |= 2u;
        }

        v14 = [v12 OSLogObject];
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v13 &= 2u;
        }

        v54 = v11;
        if (!v13)
        {
          v18 = v51;
          goto LABEL_42;
        }

        v15 = objc_opt_class();
        v49 = v15;
        [v3 bundleID];
        v16 = v58 = v5;
        v66 = 138413058;
        v67 = v15;
        v68 = 2112;
        v69 = v16;
        v70 = 2048;
        v71 = v8;
        v72 = 2048;
        v73 = v11;
        LODWORD(v47) = 42;
        v46 = &v66;
        v17 = _os_log_send_and_compose_impl();

        v5 = v58;
        v18 = v51;
        if (v17)
        {
          v14 = [MEMORY[0x277CCACA8] stringWithCString:v17 encoding:{4, &v66, v47}];
          free(v17);
          v46 = v14;
          SSFileLog();
LABEL_42:
        }

        if (v8 != 4)
        {
          a1 = v48;
          v4 = v53;
          goto LABEL_57;
        }

        a1 = v48;
        v4 = v53;
        v37 = v54;
        if ((v18 & 4) == 0)
        {
          v38 = v54 | 4;
          v39 = [MEMORY[0x277D69B38] sharedConfig];
          v40 = [v39 shouldLog];
          if ([v39 shouldLogToDisk])
          {
            v40 |= 2u;
          }

          v41 = [v39 OSLogObject];
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
          {
            v42 = v40;
          }

          else
          {
            v42 = v40 & 2;
          }

          v54 |= 4uLL;
          if (v42)
          {
            v43 = objc_opt_class();
            v61 = v43;
            v44 = [v3 bundleID];
            v66 = 138413058;
            v67 = v43;
            v68 = 2112;
            v69 = v44;
            v70 = 2048;
            v71 = 4;
            v72 = 2048;
            v73 = v38;
            LODWORD(v47) = 42;
            v46 = &v66;
            v45 = _os_log_send_and_compose_impl();

            v4 = v53;
            if (v45)
            {
              v41 = [MEMORY[0x277CCACA8] stringWithCString:v45 encoding:{4, &v66, v47}];
              free(v45);
              v46 = v41;
              SSFileLog();
              goto LABEL_55;
            }
          }

          else
          {
            v4 = v53;
LABEL_55:
          }

LABEL_57:
          v37 = v54;
        }

LABEL_58:
        [v6 setDownloadProgress:{0.0, v46}];
        [v6 setState:v37];
        [v50 addObject:v6];
LABEL_59:
      }

      v57 = [obj countByEnumeratingWithState:&v62 objects:v74 count:16];
    }

    while (v57);
  }

  if ([v50 count])
  {
    [*(a1 + 40) _notifyObserversOfStateChanges:v50];
  }
}

- (void)jobManager:(id)manager updatedProgressOfJobs:(id)jobs
{
  jobsCopy = jobs;
  accessQueue = self->_accessQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__SUUIItemStateCenter_jobManager_updatedProgressOfJobs___block_invoke;
  v8[3] = &unk_2798F5AF8;
  v9 = jobsCopy;
  selfCopy = self;
  v7 = jobsCopy;
  dispatch_async(accessQueue, v8);
}

void __56__SUUIItemStateCenter_jobManager_updatedProgressOfJobs___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v23 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v26 = a1;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v28;
    v6 = 0x277CCA000uLL;
    v7 = off_2798F4000;
    v24 = *v28;
    do
    {
      v8 = 0;
      v25 = v4;
      do
      {
        if (*v28 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v27 + 1) + 8 * v8);
        v10 = [*(v6 + 2992) numberWithLongLong:{objc_msgSend(v9, "storeItemID", v23)}];
        if (!v10)
        {
          v11 = 0;
LABEL_17:
          v13 = 0;
          goto LABEL_18;
        }

        v11 = [objc_alloc(v7[91]) initWithNumber:v10];
        if (!v11)
        {
          goto LABEL_17;
        }

        v12 = [*(*(v26 + 40) + 88) objectForKey:v11];
        v13 = v12;
        if (v12)
        {
          v14 = v2;
          v15 = [v12 state];
          v16 = ~v15;
          v17 = [v9 phase];
          [v9 percentComplete];
          v19 = v18;
          if (v17 == 5)
          {
            v20 = 1.0;
          }

          else
          {
            v20 = v19;
          }

          if (v15 != (v16 & 2 | v15 & 0xFFFFFFFFFFFFFFFELL) || ([v13 downloadProgress], v20 != v21))
          {
            [v13 setState:v16 & 2 | v15 & 0xFFFFFFFFFFFFFFFELL];
            *&v22 = v20;
            [v13 setDownloadProgress:v22];
            [v23 addObject:v13];
          }

          v2 = v14;
          v5 = v24;
          v4 = v25;
          v6 = 0x277CCA000;
          v7 = off_2798F4000;
        }

LABEL_18:

        ++v8;
      }

      while (v4 != v8);
      v4 = [v2 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v4);
  }

  if ([v23 count])
  {
    [*(v26 + 40) _notifyObserversOfStateChanges:v23];
  }
}

- (void)jobManager:(id)manager updatedStateOfJobs:(id)jobs
{
  jobsCopy = jobs;
  accessQueue = self->_accessQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__SUUIItemStateCenter_jobManager_updatedStateOfJobs___block_invoke;
  v8[3] = &unk_2798F5AF8;
  v9 = jobsCopy;
  selfCopy = self;
  v7 = jobsCopy;
  dispatch_async(accessQueue, v8);
}

void __53__SUUIItemStateCenter_jobManager_updatedStateOfJobs___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v30 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v34 = a1;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v36;
    v6 = 0x277CCA000uLL;
    v28 = *v36;
    v29 = v2;
    do
    {
      v7 = 0;
      v31 = v4;
      do
      {
        if (*v36 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v35 + 1) + 8 * v7);
        v9 = [*(v6 + 2992) numberWithLongLong:{objc_msgSend(v8, "storeItemID", v26)}];
        if (!v9)
        {
          v10 = 0;
          goto LABEL_22;
        }

        v10 = [[SUUIStoreIdentifier alloc] initWithNumber:v9];
        if (v10)
        {
          v11 = [*(*(v34 + 40) + 88) objectForKey:v10];
          if (v11)
          {
            v12 = v11;
            v13 = [v8 phase];
            v14 = [MEMORY[0x277D69B38] sharedConfig];
            v15 = [v14 shouldLog];
            if ([v14 shouldLogToDisk])
            {
              v16 = v15 | 2;
            }

            else
            {
              v16 = v15;
            }

            v17 = [v14 OSLogObject];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              v18 = v16;
            }

            else
            {
              v18 = v16 & 2;
            }

            if (v18)
            {
              v19 = objc_opt_class();
              v33 = v19;
              [v8 bundleID];
              v20 = v32 = v13;
              v21 = [v12 state];
              v39 = 138413058;
              v40 = v19;
              v41 = 2112;
              v42 = v20;
              v22 = v20;
              v43 = 2048;
              v44 = v32;
              v45 = 2048;
              v46 = v21;
              LODWORD(v27) = 42;
              v26 = &v39;
              v23 = _os_log_send_and_compose_impl();

              v5 = v28;
              if (v23)
              {
                v17 = [MEMORY[0x277CCACA8] stringWithCString:v23 encoding:{4, &v39, v27}];
                free(v23);
                v26 = v17;
                SSFileLog();
                goto LABEL_20;
              }
            }

            else
            {
              v5 = v28;
LABEL_20:
            }

            v24 = [*(v34 + 40) _downloadPhaseForJobPhase:{objc_msgSend(v8, "phase")}];
            [v12 setDownloadPhase:v24];

            [v8 percentComplete];
            *&v25 = v25;
            [v12 setDownloadProgress:v25];
            [v30 addObject:v12];

            v2 = v29;
            v6 = 0x277CCA000;
            v4 = v31;
          }
        }

LABEL_22:

        ++v7;
      }

      while (v4 != v7);
      v4 = [v2 countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v4);
  }

  [*(v34 + 40) _notifyObserversOfStateChanges:v30];
}

- (void)downloadManager:(id)manager downloadStatesDidChange:(id)change
{
  changeCopy = change;
  accessQueue = self->_accessQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__SUUIItemStateCenter_downloadManager_downloadStatesDidChange___block_invoke;
  v8[3] = &unk_2798F5AF8;
  v9 = changeCopy;
  selfCopy = self;
  v7 = changeCopy;
  dispatch_async(accessQueue, v8);
}

void __63__SUUIItemStateCenter_downloadManager_downloadStatesDidChange___block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v38 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v3)
  {
    v4 = v3;
    v34 = 0;
    v5 = *v45;
    v6 = *MEMORY[0x277D6A018];
    v7 = *MEMORY[0x277D69EA8];
    v40 = *MEMORY[0x277D6A080];
    v33 = *MEMORY[0x277D69F30];
    v41 = *MEMORY[0x277D69EA8];
    v42 = a1;
    v39 = v2;
    while (1)
    {
      v8 = 0;
      v43 = v4;
      do
      {
        if (*v45 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v44 + 1) + 8 * v8);
        v10 = [v9 valueForProperty:{v6, v33}];
        v11 = [v10 isEqualToString:v7];

        if ((v11 & 1) == 0)
        {
          v12 = v6;
          v13 = [v9 valueForProperty:v40];
          if (v13)
          {
            v14 = [[SUUIStoreIdentifier alloc] initWithNumber:v13];
            if (v14)
            {
              [*(*(a1 + 40) + 88) objectForKey:v14];
              v16 = v15 = a1;
              if (v16 && ([v9 downloadPhaseIdentifier], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "setDownloadPhase:", v17), v17, objc_msgSend(v16, "downloadProgress"), v19 = v18, objc_msgSend(v9, "percentComplete"), *&v20 = v20, objc_msgSend(v16, "setDownloadProgress:", v20), objc_msgSend(v38, "addObject:", v16), objc_msgSend(*(*(v15 + 40) + 152), "itemHasParent:", v14)))
              {
                v21 = [*(*(v15 + 40) + 152) parentItemForItem:v14];
                v22 = [*(*(v15 + 40) + 88) objectForKey:v21];
                if (!v22)
                {
                  v22 = objc_alloc_init(SUUIItemState);
                  [v21 itemIdentifier];
                  v23 = v36 = v21;
                  [(SUUIItemState *)v22 setItemIdentifier:v23];

                  [(SUUIItemState *)v22 setStoreIdentifier:v36];
                  v24 = [v16 downloadPhase];
                  [(SUUIItemState *)v22 setDownloadPhase:v24];

                  v21 = v36;
                  -[SUUIItemState setDownloadContentFlags:](v22, "setDownloadContentFlags:", [v16 downloadContentFlags]);
                  [*(*(v15 + 40) + 88) setObject:v22 forKey:v36];
                }

                v25 = [*(*(v15 + 40) + 152) siblingItemsForItem:v14];
                [(SUUIItemState *)v22 downloadProgress];
                v27 = v26;
                v35 = v25;
                v28 = [v25 count];
                if ((v27 - (v19 / v28)) >= 0.0)
                {
                  v29 = v27 - (v19 / v28);
                }

                else
                {
                  v29 = (v19 / v28) + (v27 - (v19 / v28));
                }

                [v16 downloadProgress];
                *&v30 = (*&v30 / v28) + v29;
                if (*&v30 > 1.0)
                {
                  *&v30 = 1.0;
                }

                [(SUUIItemState *)v22 setDownloadProgress:v30];
                if (([v34 isEqual:v33] & 1) == 0)
                {
                  [v9 downloadPhaseIdentifier];
                  v31 = v37 = v21;
                  [(SUUIItemState *)v22 setDownloadPhase:v31];

                  v21 = v37;
                  v32 = [v9 downloadPhaseIdentifier];

                  v34 = v32;
                }

                v2 = v39;
                [v38 addObject:v22];
              }

              else
              {
                v2 = v39;
              }

              goto LABEL_24;
            }
          }

          else
          {
            v14 = 0;
          }

          v16 = 0;
LABEL_24:

          v6 = v12;
          a1 = v42;
          v4 = v43;
          v7 = v41;
        }

        ++v8;
      }

      while (v4 != v8);
      v4 = [v2 countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (!v4)
      {
        goto LABEL_29;
      }
    }
  }

  v34 = 0;
LABEL_29:

  [*(a1 + 40) _notifyObserversOfStateChanges:v38];
}

- (void)downloadQueue:(id)queue downloadStatesDidChange:(id)change
{
  changeCopy = change;
  accessQueue = self->_accessQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__SUUIItemStateCenter_downloadQueue_downloadStatesDidChange___block_invoke;
  v8[3] = &unk_2798F5AF8;
  v9 = changeCopy;
  selfCopy = self;
  v7 = changeCopy;
  dispatch_async(accessQueue, v8);
}

void __61__SUUIItemStateCenter_downloadQueue_downloadStatesDidChange___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = *(a1 + 32);
  v30 = [v3 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v30)
  {
    v29 = *v32;
    v27 = *MEMORY[0x277D69F30];
    v26 = *MEMORY[0x277D69F50];
    v25 = v3;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v32 != v29)
        {
          objc_enumerationMutation(v3);
        }

        v5 = *(*(&v31 + 1) + 8 * i);
        v6 = [v5 storeID];
        v7 = [v6 stringValue];
        if (![v7 length])
        {
          v8 = MEMORY[0x277CBEBC0];
          v9 = [v5 permLink];
          v10 = [v8 URLWithString:v9];

          if (v10)
          {
            v11 = [v10 identifierFromPermlink];

            if (v11)
            {
              [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "integerValue")}];
              v6 = v7 = v6;
              goto LABEL_13;
            }
          }

          else
          {
            v11 = 0;
LABEL_13:
          }

          v7 = v11;
          if (!v6)
          {
            goto LABEL_31;
          }

          goto LABEL_15;
        }

        if (!v6)
        {
          goto LABEL_31;
        }

LABEL_15:
        v12 = [[SUUIStoreIdentifier alloc] initWithNumber:v6];
        if (v12)
        {
          v13 = [*(*(a1 + 40) + 88) objectForKey:v12];
          if (v13)
          {
            goto LABEL_26;
          }
        }

        v28 = v12;
        v14 = [MEMORY[0x277D69B38] sharedConfig];
        v15 = [v14 shouldLog];
        if ([v14 shouldLogToDisk])
        {
          v15 |= 2u;
        }

        v16 = [v14 OSLogObject];
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v15 &= 2u;
        }

        if (!v15)
        {
          goto LABEL_24;
        }

        v17 = objc_opt_class();
        v35 = 138412290;
        v36 = v17;
        v18 = v2;
        v19 = a1;
        v20 = v17;
        LODWORD(v24) = 12;
        v23 = &v35;
        v21 = _os_log_send_and_compose_impl();

        a1 = v19;
        v2 = v18;
        v3 = v25;

        if (v21)
        {
          v16 = [MEMORY[0x277CCACA8] stringWithCString:v21 encoding:{4, &v35, v24}];
          free(v21);
          v23 = v16;
          SSFileLog();
LABEL_24:
        }

        v12 = v28;
        v13 = [*(a1 + 40) _addState:2 forItemIdentifier:v28];
LABEL_26:
        [v13 setMediaCategory:{3, v23}];
        [v13 setDownloadPhase:v27];
        if ([v5 downloadPhase] == 8)
        {
          [v13 setDownloadPhase:v26];
        }

        v22 = [v5 percentComplete];
        [v22 floatValue];
        [v13 setDownloadProgress:?];

        [v13 setState:{objc_msgSend(v13, "state") | 2}];
        [v13 setState:{objc_msgSend(v13, "state") & 0xFFFFFFFFFFFFFFFELL}];
        if ([v5 isSample])
        {
          [v13 setDownloadContentFlags:1];
        }

        [v2 addObject:v13];

LABEL_31:
      }

      v30 = [v3 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v30);
  }

  [*(a1 + 40) _notifyObserversOfStateChanges:v2];
}

- (void)downloadQueue:(id)queue downloadStates:(id)states didCompleteWithError:(id)error
{
  statesCopy = states;
  accessQueue = self->_accessQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__SUUIItemStateCenter_downloadQueue_downloadStates_didCompleteWithError___block_invoke;
  v9[3] = &unk_2798F5AF8;
  v10 = statesCopy;
  selfCopy = self;
  v8 = statesCopy;
  dispatch_async(accessQueue, v9);
}

void __73__SUUIItemStateCenter_downloadQueue_downloadStates_didCompleteWithError___block_invoke(uint64_t a1)
{
  v59 = *MEMORY[0x277D85DE8];
  v41 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v51 objects:v58 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v52;
    v40 = *MEMORY[0x277D69F50];
    v36 = *v52;
    v37 = a1;
    do
    {
      v5 = 0;
      v38 = v3;
      do
      {
        if (*v52 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v51 + 1) + 8 * v5);
        v7 = [v6 storeID];
        v8 = [v7 stringValue];
        if ([v8 length])
        {
          if (v7)
          {
            goto LABEL_8;
          }

          goto LABEL_38;
        }

        v23 = MEMORY[0x277CBEBC0];
        v24 = [v6 permLink];
        v25 = [v23 URLWithString:v24];

        if (v25)
        {
          v26 = [v25 identifierFromPermlink];

          if (!v26)
          {
            goto LABEL_37;
          }

          [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v26, "integerValue")}];
          v7 = v8 = v7;
        }

        else
        {
          v26 = 0;
        }

LABEL_37:
        v8 = v26;
        if (v7)
        {
LABEL_8:
          v44 = v6;
          v9 = [[SUUIStoreIdentifier alloc] initWithNumber:v7];
          if (!v9 || ([*(*(a1 + 40) + 88) objectForKey:v9], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            v10 = [*(a1 + 40) _addState:2 forItemIdentifier:v9];
          }

          v45 = v9;
          [v10 setMediaCategory:3];
          [v10 setDownloadPhase:v40];
          LODWORD(v11) = 1.0;
          [v10 setDownloadProgress:v11];
          [v10 setState:[v10 state]& 0xFFFFFFFFFFFFFFFDLL];
          v46 = v10;
          [v10 setState:[v10 state]& 0xFFFFFFFFFFFFFFFELL];
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v12 = *(*(a1 + 40) + 104);
          v13 = [v12 countByEnumeratingWithState:&v47 objects:v55 count:16];
          if (v13)
          {
            v14 = v13;
            v42 = v8;
            v43 = v5;
            v15 = v7;
            v16 = 0;
            v17 = *v48;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v48 != v17)
                {
                  objc_enumerationMutation(v12);
                }

                v19 = *(*(&v47 + 1) + 8 * i);
                if (objc_opt_respondsToSelector())
                {
                  v20 = objc_alloc_init(SUUILibraryItem);
                  v21 = [[SUUIStoreIdentifier alloc] initWithNumber:v15];
                  [(SUUILibraryItem *)v20 setStoreIdentifier:v21];

                  v22 = [v19 stateForLibraryItemAfterLibraryIntegration:v20];
                  if ([v22 availability] == 2)
                  {
                    [v46 setState:[v46 state]| 0x40];
                    v16 = 1;
                  }
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v47 objects:v55 count:16];
            }

            while (v14);

            v4 = v36;
            a1 = v37;
            v3 = v38;
            v7 = v15;
            v8 = v42;
            v5 = v43;
            v10 = v46;
            if (v16)
            {
              goto LABEL_29;
            }
          }

          else
          {
          }

          [v10 setState:[v10 state]| 0x40];
LABEL_29:
          [v10 setLibraryContentFlags:0];
          v27 = v45;
          if ([v44 isSample])
          {
            [v10 setDownloadContentFlags:1];
            [v10 setLibraryContentFlags:1];
          }

          [v41 addObject:v10];
          goto LABEL_32;
        }

LABEL_38:
        v27 = [MEMORY[0x277D69B38] sharedConfig];
        v28 = [v27 shouldLog];
        if ([v27 shouldLogToDisk])
        {
          v28 |= 2u;
        }

        v10 = [v27 OSLogObject];
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v28 &= 2u;
        }

        if (!v28)
        {
          goto LABEL_32;
        }

        v29 = objc_opt_class();
        v56 = 138412290;
        v57 = v29;
        v30 = v10;
        v31 = v29;
        LODWORD(v35) = 12;
        v34 = &v56;
        v32 = _os_log_send_and_compose_impl();

        if (v32)
        {
          v10 = [MEMORY[0x277CCACA8] stringWithCString:v32 encoding:{4, &v56, v35}];
          free(v32);
          v34 = v10;
          SSFileLog();
LABEL_32:
        }

        ++v5;
      }

      while (v5 != v3);
      v33 = [obj countByEnumeratingWithState:&v51 objects:v58 count:16];
      v3 = v33;
    }

    while (v33);
  }

  [*(a1 + 40) _notifyObserversOfStateChanges:v41];
}

- (void)_reloadStateForObservedMediaLibraryItems
{
  v33 = *MEMORY[0x277D85DE8];
  if ([(NSCountedSet *)self->_observedLibraryItems count])
  {
    v3 = [(NSCountedSet *)self->_observedLibraryItems copy];
    v4 = [v3 mutableCopy];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v3;
    v5 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v28;
      do
      {
        v8 = 0;
        do
        {
          if (*v28 != v7)
          {
            objc_enumerationMutation(obj);
          }

          relationshipCouncellor = self->_relationshipCouncellor;
          storeIdentifier = [*(*(&v27 + 1) + 8 * v8) storeIdentifier];
          v11 = [(SUUIStoreItemRelationshipCounsellor *)relationshipCouncellor childItemsForItem:storeIdentifier];

          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v12 = v11;
          v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v24;
            do
            {
              v16 = 0;
              do
              {
                if (*v24 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = SUUILibraryItemForStoreIdentifier(*(*(&v23 + 1) + 8 * v16));
                [v4 addObject:v17];

                ++v16;
              }

              while (v14 != v16);
              v14 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
            }

            while (v14);
          }

          ++v8;
        }

        while (v8 != v6);
        v6 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v6);
    }

    mediaLibraryQueue = self->_mediaLibraryQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__SUUIItemStateCenter__reloadStateForObservedMediaLibraryItems__block_invoke;
    block[3] = &unk_2798F5AF8;
    block[4] = self;
    v22 = v4;
    v19 = v4;
    dispatch_async(mediaLibraryQueue, block);
  }
}

void __63__SUUIItemStateCenter__reloadStateForObservedMediaLibraryItems__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _copyItemsStatesForLibraryItems:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__SUUIItemStateCenter__reloadStateForObservedMediaLibraryItems__block_invoke_2;
  v6[3] = &unk_2798F5AF8;
  v6[4] = v3;
  v7 = v2;
  v5 = v2;
  dispatch_async(v4, v6);
}

void __63__SUUIItemStateCenter__reloadStateForObservedMediaLibraryItems__block_invoke_2(uint64_t a1)
{
  v80 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v64 = [MEMORY[0x277CBEB58] set];
  v3 = [*(*(a1 + 32) + 88) mutableCopy];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v73 objects:v79 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v74;
    v54 = v4;
    v55 = v2;
    v53 = *v74;
    do
    {
      v8 = 0;
      v63 = v6;
      do
      {
        if (*v74 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v73 + 1) + 8 * v8);
        v10 = [v9 storeIdentifier];

        if (v10)
        {
          v11 = [v9 storeIdentifier];
          v12 = [v11 copy];
        }

        else
        {
          v13 = v8;
          v14 = [SUUIStoreIdentifier alloc];
          v11 = [v9 storeItemIdentifier];
          v15 = v14;
          v8 = v13;
          v12 = [(SUUIStoreIdentifier *)v15 initWithNumber:v11];
        }

        v16 = v12;

        if (([v64 containsObject:v16] & 1) == 0)
        {
          v17 = [*(*(a1 + 32) + 88) objectForKey:v16];
          v18 = [*(a1 + 40) objectForKey:v9];
          if (v17)
          {
            v19 = v7;
            v20 = v2;
            v21 = v4;
            v22 = v17;
            v23 = [v17 state];
            v24 = [v18 state] | v23 & 0xFFFFFFFFFFFFFFBFLL;
            v25 = v23 == v24;
            v17 = v22;
            v4 = v21;
            v2 = v20;
            v7 = v19;
            if (!v25)
            {
              v26 = v24;
              [v17 setLibraryContentFlags:{objc_msgSend(v18, "libraryContentFlags")}];
              [v17 setMediaCategory:{objc_msgSend(v18, "mediaCategory")}];
              [v17 setState:v26];
              v27 = [v18 variantIdentifier];
              [v17 setVariantIdentifier:v27];

              v28 = v2;
              v29 = v17;
              goto LABEL_14;
            }
          }

          else
          {
            [*(*(a1 + 32) + 88) setObject:v18 forKey:v16];
            v28 = v2;
            v29 = v18;
LABEL_14:
            [v28 addObject:v29];
          }

          if ([*(*(a1 + 32) + 152) itemHasParent:v16])
          {
            v30 = [*(*(a1 + 32) + 152) parentItemForItem:v16];
            if (([v64 containsObject:v30] & 1) == 0)
            {
              v60 = v8;
              v31 = [*(*(a1 + 32) + 152) siblingItemsForItem:v16];
              v32 = v30;
              v33 = v31;
              v62 = v32;
              v61 = [*(*(a1 + 32) + 88) objectForKey:?];
              if (!v61)
              {
                v57 = v33;
                v34 = objc_alloc_init(SUUIItemState);
                v35 = [v62 numberValue];
                [(SUUIItemState *)v34 setItemIdentifier:v35];

                [(SUUIItemState *)v34 setStoreIdentifier:v62];
                [(SUUIItemState *)v34 setState:0];
                v61 = v34;
                v36 = v34;
                v33 = v57;
                [*(*(a1 + 32) + 88) setObject:v36 forKey:v62];
              }

              v56 = v18;
              v58 = v17;
              v71 = 0u;
              v72 = 0u;
              v69 = 0u;
              v70 = 0u;
              v37 = v33;
              v38 = [v37 countByEnumeratingWithState:&v69 objects:v78 count:16];
              v59 = v16;
              if (v38)
              {
                v39 = v38;
                v40 = *v70;
                v41 = 64;
                do
                {
                  for (i = 0; i != v39; ++i)
                  {
                    if (*v70 != v40)
                    {
                      objc_enumerationMutation(v37);
                    }

                    v43 = *(*(&v69 + 1) + 8 * i);
                    v44 = SUUILibraryItemForStoreIdentifier(v43);
                    v45 = [*(a1 + 40) objectForKey:v44];
                    v41 &= [v45 state];
                    [v64 addObject:v43];
                    [v3 removeObjectForKey:v43];
                  }

                  v39 = [v37 countByEnumeratingWithState:&v69 objects:v78 count:16];
                }

                while (v39);
              }

              else
              {
                v41 = 64;
              }

              [v61 setState:{objc_msgSend(v61, "state") | v41}];
              v2 = v55;
              [v55 addObject:v61];
              [v64 addObject:v62];
              [v3 removeObjectForKey:v62];

              v30 = v62;
              v7 = v53;
              v4 = v54;
              v16 = v59;
              v8 = v60;
              v18 = v56;
              v17 = v58;
            }
          }

          [v3 removeObjectForKey:v16];

          v6 = v63;
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [v4 countByEnumeratingWithState:&v73 objects:v79 count:16];
    }

    while (v6);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v46 = v3;
  v47 = [v46 countByEnumeratingWithState:&v65 objects:v77 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v66;
    do
    {
      for (j = 0; j != v48; ++j)
      {
        if (*v66 != v49)
        {
          objc_enumerationMutation(v46);
        }

        v51 = [*(a1 + 32) _removeState:64 forItemIdentifier:*(*(&v65 + 1) + 8 * j)];
        v52 = v51;
        if (v51)
        {
          [v51 setLibraryContentFlags:0];
          [v2 addObject:v52];
        }
      }

      v48 = [v46 countByEnumeratingWithState:&v65 objects:v77 count:16];
    }

    while (v48);
  }

  if ([v2 count])
  {
    [*(a1 + 32) _notifyObserversOfStateChanges:v2];
  }

  [*(a1 + 32) _notifyObserversOfMediaLibraryChange];
}

- (void)_mediaLibraryDidChangeNotification:(id)notification
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__SUUIItemStateCenter__mediaLibraryDidChangeNotification___block_invoke;
  block[3] = &unk_2798F5BE8;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)_restrictionsChangedNotification:(id)notification
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SUUIItemStateCenter__restrictionsChangedNotification___block_invoke;
  block[3] = &unk_2798F5BE8;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

uint64_t __56__SUUIItemStateCenter__restrictionsChangedNotification___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 16) == 255)
  {
    v4 = *(v1 + 136);
    v3 = (v1 + 136);
    if (v4 == -1)
    {
      return result;
    }
  }

  else
  {
    *(v1 + 16) = -1;
    v2 = *(result + 32);
    v3 = v2 + 17;
    if (v2[17] == -1)
    {
      return [v2 _notifyObserversOfRestrictionsChange];
    }
  }

  *v3 = -1;
  v2 = *(result + 32);
  return [v2 _notifyObserversOfRestrictionsChange];
}

- (void)_storefrontDidChangeNotification:(id)notification
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SUUIItemStateCenter__storefrontDidChangeNotification___block_invoke;
  block[3] = &unk_2798F5BE8;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

uint64_t __56__SUUIItemStateCenter__storefrontDidChangeNotification___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 64) != 1)
  {
    *(v1 + 64) = 0;
  }

  return result;
}

- (id)_addState:(unint64_t)state forItemIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = [(NSMutableDictionary *)self->_itemStates objectForKey:identifierCopy];
  if (v7)
  {
    mEMORY[0x277D69B38] = v7;
    state = [(SUUIItemState *)v7 state];
    if ((state & state) == 0)
    {
      [(SUUIItemState *)mEMORY[0x277D69B38] setState:state | state];
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (identifierCopy)
  {
    mEMORY[0x277D69B38] = objc_alloc_init(SUUIItemState);
    numberValue = [identifierCopy numberValue];
    [(SUUIItemState *)mEMORY[0x277D69B38] setItemIdentifier:numberValue];

    [(SUUIItemState *)mEMORY[0x277D69B38] setStoreIdentifier:identifierCopy];
    [(SUUIItemState *)mEMORY[0x277D69B38] setState:state];
    [(NSMutableDictionary *)self->_itemStates setObject:mEMORY[0x277D69B38] forKey:identifierCopy];
    goto LABEL_16;
  }

  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  shouldLog = [(SUUIItemState *)mEMORY[0x277D69B38] shouldLog];
  if ([(SUUIItemState *)mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v12 = shouldLog | 2;
  }

  else
  {
    v12 = shouldLog;
  }

  oSLogObject = [(SUUIItemState *)mEMORY[0x277D69B38] OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v12 &= 2u;
  }

  if (!v12)
  {
    goto LABEL_14;
  }

  LODWORD(v18) = 138412290;
  *(&v18 + 4) = objc_opt_class();
  v14 = *(&v18 + 4);
  LODWORD(v17) = 12;
  v15 = _os_log_send_and_compose_impl();

  if (v15)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v15 encoding:{4, &v18, v17, v18}];
    free(v15);
    SSFileLog();
LABEL_14:
  }

LABEL_15:

  mEMORY[0x277D69B38] = 0;
LABEL_16:

  return mEMORY[0x277D69B38];
}

- (id)_appstoredUpdatesStore
{
  if (!self->_appstoredUpdatesStore)
  {
    v3 = objc_alloc_init(MEMORY[0x277CEC490]);
    appstoredUpdatesStore = self->_appstoredUpdatesStore;
    self->_appstoredUpdatesStore = v3;

    if ([(ASDSoftwareUpdatesStore *)self->_appstoredUpdatesStore hasEntitlement])
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:self selector:sel__appstoredUpdatesStoreChangeNotification_ name:*MEMORY[0x277CEC310] object:self->_appstoredUpdatesStore];
    }
  }

  v6 = self->_appstoredUpdatesStore;

  return v6;
}

- (id)_copyItemsStatesForLibraryItems:(id)items
{
  v4 = MEMORY[0x277CCAB00];
  itemsCopy = items;
  v6 = [[v4 alloc] initWithKeyOptions:0 valueOptions:0 capacity:0];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__SUUIItemStateCenter__copyItemsStatesForLibraryItems___block_invoke;
  v9[3] = &unk_2798FE388;
  v7 = v6;
  v10 = v7;
  [(SUUIItemStateCenter *)self _enumerateAvailableItemsForLibraryItems:itemsCopy usingBlock:v9];

  return v7;
}

void __55__SUUIItemStateCenter__copyItemsStatesForLibraryItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  v6 = objc_alloc_init(SUUIItemState);
  v7 = [v18 storeItemIdentifier];
  [(SUUIItemState *)v6 setItemIdentifier:v7];

  v8 = [v18 storeIdentifier];
  [(SUUIItemState *)v6 setStoreIdentifier:v8];

  v9 = [v5 isPreview];
  v10 = [v5 availability];
  v11 = 64;
  v12 = 8;
  if (v10 != 1)
  {
    v12 = 0;
  }

  if (v10 != 2)
  {
    v11 = v12;
  }

  if (v10 == 3)
  {
    v13 = v9 | 2;
  }

  else
  {
    v13 = v9;
  }

  if (v10 == 3)
  {
    v14 = 64;
  }

  else
  {
    v14 = v11;
  }

  [(SUUIItemState *)v6 setLibraryContentFlags:v13];
  [(SUUIItemState *)v6 setState:v14];
  v15 = [v5 itemStateVariantIdentifier];
  [(SUUIItemState *)v6 setVariantIdentifier:v15];

  v16 = [v5 AVTypes];
  if ((v16 & 2) != 0)
  {
    v17 = 3;
  }

  else if ((v16 & 4) != 0)
  {
    v17 = 4;
  }

  else if (v16)
  {
    v17 = 2;
  }

  else
  {
    if ((v16 & 8) == 0)
    {
      goto LABEL_20;
    }

    v17 = 5;
  }

  [(SUUIItemState *)v6 setMediaCategory:v17];
LABEL_20:
  [*(a1 + 32) setObject:v6 forKey:v18];
}

- (void)_enumerateAvailableItemsForLibraryItems:(id)items usingBlock:(id)block
{
  v27 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  blockCopy = block;
  v8 = itemsCopy;
  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_mediaLibraries;
  v10 = [(NSMutableArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  v17 = v8;
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      v13 = 0;
      v14 = v8;
      do
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v22 + 1) + 8 * v13);
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __74__SUUIItemStateCenter__enumerateAvailableItemsForLibraryItems_usingBlock___block_invoke;
        v19[3] = &unk_2798FE3B0;
        v16 = v9;
        v20 = v16;
        v21 = blockCopy;
        [v15 enumerateStatesForLibraryItems:v14 usingBlock:{v19, v17}];
        v8 = v16;

        v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
        ++v13;
        v14 = v8;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }
}

void __74__SUUIItemStateCenter__enumerateAvailableItemsForLibraryItems_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  v5 = a2;
  if ([v6 availability])
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [*(a1 + 32) addObject:v5];
  }
}

- (void)_fireFinishLoadBlocksIfNecessary
{
  if (!self->_loadCount)
  {
    v10 = v2;
    v11 = v3;
    if ([(NSMutableArray *)self->_finishLoadBlocks count])
    {
      v5 = [(NSMutableArray *)self->_finishLoadBlocks copy];
      [(NSMutableArray *)self->_finishLoadBlocks removeAllObjects];
      observerQueue = self->_observerQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __55__SUUIItemStateCenter__fireFinishLoadBlocksIfNecessary__block_invoke;
      block[3] = &unk_2798F5BE8;
      v9 = v5;
      v7 = v5;
      dispatch_async(observerQueue, block);
    }
  }
}

void __55__SUUIItemStateCenter__fireFinishLoadBlocksIfNecessary__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (BOOL)_gratisStateIsValid
{
  if (!self->_gratisState || !self->_gratisStateLastUpdate)
  {
    return 0;
  }

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceDate:self->_gratisStateLastUpdate];
  v5 = v4 <= 604800.0;

  return v5;
}

- (id)_downloadPhaseForJobPhase:(int64_t)phase
{
  if (phase > 6)
  {
    v3 = MEMORY[0x277D69F68];
  }

  else
  {
    v3 = qword_2798FE538[phase];
  }

  return *v3;
}

- (id)_newPurchaseWithItem:(id)item offer:(id)offer
{
  v41[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  offerCopy = offer;
  actionParameters = [offerCopy actionParameters];
  if (!actionParameters)
  {
    v10 = 0;
    goto LABEL_39;
  }

  v9 = objc_opt_class();
  if (SUUIItemKindIsToneKind([itemCopy itemKind]))
  {
    v9 = objc_opt_class();
  }

  v10 = objc_alloc_init(v9);
  [v10 setBuyParameters:actionParameters];
  [v10 setExpectedDownloadFileSize:{objc_msgSend(offerCopy, "fileSize")}];
  requiredCapabilities = [itemCopy requiredCapabilities];
  [v10 setRequiredDeviceCapabilities:requiredCapabilities];

  [v10 setUsesLocalRedownloadParametersIfPossible:1];
  bundleIdentifier = [itemCopy bundleIdentifier];
  [v10 setValue:bundleIdentifier forDownloadProperty:*MEMORY[0x277D69F88]];
  v13 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:{objc_msgSend(itemCopy, "itemIdentifier")}];
  [v10 setValue:v13 forDownloadProperty:*MEMORY[0x277D6A080]];
  artistName = [itemCopy artistName];
  [v10 setValue:artistName forDownloadProperty:*MEMORY[0x277D69F70]];

  _downloadKind = [itemCopy _downloadKind];
  [v10 setValue:_downloadKind forDownloadProperty:*MEMORY[0x277D6A018]];

  title = [itemCopy title];
  [v10 setValue:title forDownloadProperty:*MEMORY[0x277D6A0E0]];

  if ([itemCopy isNewsstandApp])
  {
    [v10 setValue:*MEMORY[0x277D6A0F0] forDownloadProperty:*MEMORY[0x277D6A050]];
  }

  if ([itemCopy hasPrerenderedArtwork])
  {
    v17 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v10 setValue:v17 forDownloadProperty:*MEMORY[0x277D69F78]];
  }

  variantIdentifier = [offerCopy variantIdentifier];
  v19 = [variantIdentifier isEqualToString:@"HD"];

  if (v19)
  {
    [v10 setValue:MEMORY[0x277CBEC38] forDownloadProperty:*MEMORY[0x277D69FE0]];
  }

  if ([itemCopy itemKind] == 18)
  {
    [v10 setEnabledServiceType:&unk_286BBE520];
  }

  if ([(SUUIItemStateCenter *)self _isPurchaseForOffDeviceContent:itemCopy])
  {
    [v10 setCreatesDownloads:0];
    [v10 setCreatesJobs:0];
  }

  offerType = [offerCopy offerType];
  if (offerType == 3)
  {
    v21 = *MEMORY[0x277D69FF8];
    v23 = MEMORY[0x277CBEC38];
    v22 = v10;
    goto LABEL_19;
  }

  if (offerType == 2)
  {
    v21 = *MEMORY[0x277D6A090];
    v22 = v10;
    v23 = v13;
LABEL_19:
    [v22 setValue:v23 forDownloadProperty:v21];
  }

  v24 = [[SUUIStoreIdentifier alloc] initWithNumber:v13];
  v25 = [(NSMutableDictionary *)self->_itemStates objectForKey:v24];
  v26 = v25;
  if (v25)
  {
    state = [v25 state];
    v28 = state;
    if ((state & 8) != 0)
    {
      [v10 setValue:MEMORY[0x277CBEC38] forDownloadProperty:*MEMORY[0x277D69FF0]];
    }

    else if ((state & 0x10) != 0)
    {
      if (bundleIdentifier)
      {
        v41[0] = bundleIdentifier;
        v29 = MEMORY[0x277CBEA60];
        v30 = v41;
      }

      else
      {
        v40 = v13;
        v29 = MEMORY[0x277CBEA60];
        v30 = &v40;
      }

      v31 = [v29 arrayWithObjects:v30 count:1];
      [v10 setGratisIdentifiers:v31];
    }

    if ((~v28 & 0x24) == 0)
    {
      requestProperties = [v10 requestProperties];
      v33 = [requestProperties mutableCopy];

      if (!v33)
      {
        v33 = objc_alloc_init(MEMORY[0x277D69BD0]);
      }

      [v33 setURLBagKey:@"updateProduct"];
      [v10 setRequestProperties:v33];
    }
  }

  if ([itemCopy hasMessagesExtension] && objc_msgSend(offerCopy, "shouldEnableMessagesExtension"))
  {
    [v10 setValue:&unk_286BBE538 forDownloadProperty:*MEMORY[0x277D69FD0]];
  }

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  if (v35 <= 1.0)
  {
    v36 = 64;
  }

  else
  {
    v36 = 128;
  }

  v37 = [itemCopy artworkURLForSize:v36];
  absoluteString = [v37 absoluteString];
  [v10 setValue:absoluteString forDownloadProperty:*MEMORY[0x277D6A0D0]];

LABEL_39:
  return v10;
}

- (id)_newSoftwarePurchaseWithItem:(id)item offer:(id)offer
{
  v38[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  offerCopy = offer;
  actionParameters = [offerCopy actionParameters];
  if (actionParameters)
  {
    v9 = objc_alloc_init(MEMORY[0x277CEC400]);
    [v9 setBuyParameters:actionParameters];
    requiredCapabilities = [itemCopy requiredCapabilities];

    if (requiredCapabilities)
    {
      requiredCapabilities2 = [itemCopy requiredCapabilities];
      [v9 setRequiredCapabilities:requiredCapabilities2];
    }

    bundleIdentifier = [itemCopy bundleIdentifier];
    [v9 setBundleID:bundleIdentifier];
    v13 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:{objc_msgSend(itemCopy, "itemIdentifier")}];
    [v9 setItemID:v13];
    artistName = [itemCopy artistName];
    [v9 setVendorName:artistName];

    title = [itemCopy title];
    [v9 setItemName:title];

    if ([(SUUIItemStateCenter *)self _isPurchaseForOffDeviceContent:itemCopy])
    {
      [v9 setCreatesJobs:0];
    }

    v16 = [[SUUIStoreIdentifier alloc] initWithNumber:v13];
    v17 = [(NSMutableDictionary *)self->_itemStates objectForKey:v16];
    v18 = v17;
    if (v17)
    {
      state = [v17 state];
      v20 = state;
      if ((state & 8) != 0)
      {
        [v9 setIsRedownload:1];
      }

      else if ((state & 0x10) != 0)
      {
        if (bundleIdentifier)
        {
          v38[0] = bundleIdentifier;
          v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
          [v9 setGratisIdentifiers:v21];
        }

        else
        {
          mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
          shouldLog = [mEMORY[0x277D69B38] shouldLog];
          shouldLogToDisk = [mEMORY[0x277D69B38] shouldLogToDisk];
          v24 = shouldLog | 2;
          if (!shouldLogToDisk)
          {
            v24 = shouldLog;
          }

          v30 = v24;
          oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
          v25 = os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG);
          v26 = v30 & 2;
          if (v25)
          {
            v26 = v30;
          }

          if (v26)
          {
            v36 = 138412290;
            v37 = objc_opt_class();
            v29 = v37;
            LODWORD(v28) = 12;
            v27 = &v36;
            v31 = _os_log_send_and_compose_impl();

            if (v31)
            {
              v34 = [MEMORY[0x277CCACA8] stringWithCString:v31 encoding:{4, &v36, v28}];
              free(v31);
              v27 = v34;
              SSFileLog();
            }
          }

          else
          {
          }
        }
      }

      if ((~v20 & 0x24) == 0)
      {
        [v9 setBagKey:@"updateProduct"];
      }
    }

    if ([itemCopy hasMessagesExtension] && objc_msgSend(offerCopy, "shouldEnableMessagesExtension"))
    {
      [v9 setExtensionsToEnable:1];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_newPurchasesWithBundleItem:(id)item bundleOffer:(id)offer
{
  v39 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  offerCopy = offer;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  childItemIdentifiers = [itemCopy childItemIdentifiers];
  v11 = [childItemIdentifiers count];

  loadedChildItems = [itemCopy loadedChildItems];
  if ([loadedChildItems count] == v11)
  {
    v29 = v11;
    v30 = loadedChildItems;
    v31 = offerCopy;
    v32 = v8;
    v33 = itemCopy;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v13 = loadedChildItems;
    v14 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v17 = *v35;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v35 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v34 + 1) + 8 * i);
          itemStates = self->_itemStates;
          storeIdentifier = [v19 storeIdentifier];
          v22 = [(NSMutableDictionary *)itemStates objectForKey:storeIdentifier];

          state = [v22 state];
          if ((state & 1) == 0)
          {
            if ((state & 6) != 0)
            {
              ++v16;
            }

            else if ((state & 8) != 0)
            {
              primaryItemOffer = [v19 primaryItemOffer];
              v25 = [(SUUIItemStateCenter *)self _newPurchaseWithItem:v19 offer:primaryItemOffer];

              if (v25)
              {
                [v9 addObject:v25];
              }
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v15);
    }

    else
    {
      v16 = 0;
    }

    v8 = v32;
    itemCopy = v33;
    loadedChildItems = v30;
    offerCopy = v31;
    v11 = v29;
  }

  else
  {
    v16 = 0;
  }

  if (v11 >= 1 && [v9 count] + v16 == v11)
  {
    [v8 addObjectsFromArray:v9];
  }

  else
  {
    v26 = [(SUUIItemStateCenter *)self _newPurchaseWithItem:itemCopy offer:offerCopy];
    v27 = v26;
    if (v26)
    {
      [v26 setValue:MEMORY[0x277CBEC38] forDownloadProperty:*MEMORY[0x277D6A040]];
      [v8 addObject:v27];
    }
  }

  return v8;
}

- (id)_newPurchasesForSoftwareWithBundleItem:(id)item bundleOffer:(id)offer
{
  v39 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  offerCopy = offer;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  childItemIdentifiers = [itemCopy childItemIdentifiers];
  v11 = [childItemIdentifiers count];

  loadedChildItems = [itemCopy loadedChildItems];
  if ([loadedChildItems count] == v11)
  {
    v29 = v11;
    v30 = loadedChildItems;
    v31 = offerCopy;
    v32 = v8;
    v33 = itemCopy;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v13 = loadedChildItems;
    v14 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v17 = *v35;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v35 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v34 + 1) + 8 * i);
          itemStates = self->_itemStates;
          storeIdentifier = [v19 storeIdentifier];
          v22 = [(NSMutableDictionary *)itemStates objectForKey:storeIdentifier];

          state = [v22 state];
          if ((state & 1) == 0)
          {
            if ((state & 6) != 0)
            {
              ++v16;
            }

            else if ((state & 8) != 0)
            {
              primaryItemOffer = [v19 primaryItemOffer];
              v25 = [(SUUIItemStateCenter *)self _newSoftwarePurchaseWithItem:v19 offer:primaryItemOffer];

              if (v25)
              {
                [v9 addObject:v25];
              }
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v15);
    }

    else
    {
      v16 = 0;
    }

    v8 = v32;
    itemCopy = v33;
    loadedChildItems = v30;
    offerCopy = v31;
    v11 = v29;
  }

  else
  {
    v16 = 0;
  }

  if (v11 >= 1 && [v9 count] + v16 == v11)
  {
    [v8 addObjectsFromArray:v9];
  }

  else
  {
    v26 = [(SUUIItemStateCenter *)self _newSoftwarePurchaseWithItem:itemCopy offer:offerCopy];
    v27 = v26;
    if (v26)
    {
      [v26 setShouldCancelForInstalledBundleItems:1];
      [v8 addObject:v27];
    }
  }

  return v8;
}

- (id)_newPurchasesWithItems:(id)items
{
  v22 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = itemsCopy;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        itemKind = [v11 itemKind];
        primaryItemOffer = [v11 primaryItemOffer];
        if (itemKind == 17)
        {
          v15 = [(SUUIItemStateCenter *)self _newPurchasesWithBundleItem:v11 bundleOffer:primaryItemOffer];

          if (v15)
          {
            [v5 addObjectsFromArray:v15];
          }
        }

        else
        {
          v15 = [(SUUIItemStateCenter *)self _newPurchaseWithItem:v11 offer:primaryItemOffer];

          if (v15)
          {
            [v5 addObject:v15];
          }
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)_notifyObserversOfMediaLibraryChange
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_observers;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v3 addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    observerQueue = self->_observerQueue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__SUUIItemStateCenter__notifyObserversOfMediaLibraryChange__block_invoke;
    v11[3] = &unk_2798F5AF8;
    v12 = v3;
    selfCopy = self;
    dispatch_async(observerQueue, v11);
  }
}

void __59__SUUIItemStateCenter__notifyObserversOfMediaLibraryChange__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) itemStateCenterMediaLibrariesDidChange:{*(a1 + 40), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_notifyObserversOfStateChange:(id)change
{
  v4 = MEMORY[0x277CBEB58];
  changeCopy = change;
  v6 = [[v4 alloc] initWithObjects:{changeCopy, 0}];

  [(SUUIItemStateCenter *)self _notifyObserversOfStateChanges:v6];
}

- (void)_notifyObserversOfRestrictionsChange
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_observers;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v3 addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    observerQueue = self->_observerQueue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__SUUIItemStateCenter__notifyObserversOfRestrictionsChange__block_invoke;
    v11[3] = &unk_2798F5AF8;
    v12 = v3;
    selfCopy = self;
    dispatch_async(observerQueue, v11);
  }
}

void __59__SUUIItemStateCenter__notifyObserversOfRestrictionsChange__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) itemStateCenterRestrictionsChanged:{*(a1 + 40), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_notifyObserversOfStateChanges:(id)changes
{
  v22 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  if ([changesCopy count])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = self->_observers;
    v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        v10 = 0;
        do
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            [v5 addObject:v11];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    if ([v5 count])
    {
      observerQueue = self->_observerQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__SUUIItemStateCenter__notifyObserversOfStateChanges___block_invoke;
      block[3] = &unk_2798F5BC0;
      v14 = v5;
      selfCopy = self;
      v16 = changesCopy;
      dispatch_async(observerQueue, block);
    }
  }
}

void __54__SUUIItemStateCenter__notifyObserversOfStateChanges___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) itemStateCenter:*(a1 + 40) itemStatesChanged:{*(a1 + 48), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_notifyObserversOfPurchasesResponses:(id)responses
{
  responsesCopy = responses;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__SUUIItemStateCenter__notifyObserversOfPurchasesResponses___block_invoke;
  v7[3] = &unk_2798F5AF8;
  v8 = responsesCopy;
  selfCopy = self;
  v6 = responsesCopy;
  dispatch_async(accessQueue, v7);
}

void __60__SUUIItemStateCenter__notifyObserversOfPurchasesResponses___block_invoke(int8x16_t *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if ([a1[2].i64[0] count])
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v3 = *(a1[2].i64[1] + 128);
    v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v16;
      do
      {
        v7 = 0;
        do
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v15 + 1) + 8 * v7);
          if (objc_opt_respondsToSelector())
          {
            [v2 addObject:v8];
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v5);
    }

    if ([v2 count])
    {
      v9 = *(a1[2].i64[1] + 120);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__SUUIItemStateCenter__notifyObserversOfPurchasesResponses___block_invoke_2;
      block[3] = &unk_2798F5BC0;
      v13 = v2;
      v11 = a1[2];
      v10 = v11.i64[0];
      v14 = vextq_s8(v11, v11, 8uLL);
      dispatch_async(v9, block);
    }
  }
}

void __60__SUUIItemStateCenter__notifyObserversOfPurchasesResponses___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) itemStateCenter:*(a1 + 40) didFinishPurchases:{*(a1 + 48), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_notifyObserversOfSoftwarePurchasesResponses:(id)responses
{
  responsesCopy = responses;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__SUUIItemStateCenter__notifyObserversOfSoftwarePurchasesResponses___block_invoke;
  v7[3] = &unk_2798F5AF8;
  v8 = responsesCopy;
  selfCopy = self;
  v6 = responsesCopy;
  dispatch_async(accessQueue, v7);
}

void __68__SUUIItemStateCenter__notifyObserversOfSoftwarePurchasesResponses___block_invoke(int8x16_t *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if ([a1[2].i64[0] count])
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v3 = *(a1[2].i64[1] + 128);
    v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v16;
      do
      {
        v7 = 0;
        do
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v15 + 1) + 8 * v7);
          if (objc_opt_respondsToSelector())
          {
            [v2 addObject:v8];
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v5);
    }

    if ([v2 count])
    {
      v9 = *(a1[2].i64[1] + 120);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __68__SUUIItemStateCenter__notifyObserversOfSoftwarePurchasesResponses___block_invoke_2;
      block[3] = &unk_2798F5BC0;
      v13 = v2;
      v11 = a1[2];
      v10 = v11.i64[0];
      v14 = vextq_s8(v11, v11, 8uLL);
      dispatch_async(v9, block);
    }
  }
}

void __68__SUUIItemStateCenter__notifyObserversOfSoftwarePurchasesResponses___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) itemStateCenter:*(a1 + 40) didFinishSoftwarePurchases:{*(a1 + 48), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_performPurchases:(id)purchases hasBundlePurchase:(BOOL)purchase withClientContext:(id)context completionBlock:(id)block
{
  v75 = *MEMORY[0x277D85DE8];
  purchasesCopy = purchases;
  contextCopy = context;
  blockCopy = block;
  v45 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = purchasesCopy;
  v9 = [obj countByEnumeratingWithState:&v70 objects:v74 count:16];
  if (v9)
  {
    v48 = *v71;
    v10 = *MEMORY[0x277D6A080];
    v44 = *MEMORY[0x277D69FE0];
    v43 = *MEMORY[0x277D69FF8];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v71 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v70 + 1) + 8 * i);
        v13 = [v12 valueForDownloadProperty:v10];
        if (v13)
        {
          v14 = [[SUUIStoreIdentifier alloc] initWithNumber:v13];
          v15 = [(SUUIItemStateCenter *)self _addState:1 forItemIdentifier:v14];
          if (v15)
          {
            v16 = v12;
            v17 = [v16 valueForDownloadProperty:v44];
            bOOLValue = [v17 BOOLValue];

            v19 = [v16 valueForDownloadProperty:v43];

            bOOLValue2 = [v19 BOOLValue];
            v21 = @"buy";
            if (bOOLValue2)
            {
              v21 = @"rent";
            }

            v22 = @"buy_HD";
            if (bOOLValue2)
            {
              v22 = @"rent_HD";
            }

            if (bOOLValue)
            {
              v23 = v22;
            }

            else
            {
              v23 = v21;
            }

            [v15 setVariantIdentifier:v23];
            [v45 addObject:v15];
          }
        }

        [contextCopy customizePurchase:v12];
      }

      v9 = [obj countByEnumeratingWithState:&v70 objects:v74 count:16];
    }

    while (v9);
  }

  if ([v45 count])
  {
    [(SUUIItemStateCenter *)self _notifyObserversOfStateChanges:v45];
  }

  if ([obj count] == 1)
  {
    lastObject = [obj lastObject];
    v25 = [lastObject valueForDownloadProperty:*MEMORY[0x277D69FF8]];
    [v25 BOOLValue];
  }

  if ([obj count] == 1)
  {
    lastObject2 = [obj lastObject];
    v27 = [lastObject2 valueForDownloadProperty:*MEMORY[0x277D6A018]];
    IsSoftwareKind = SSDownloadKindIsSoftwareKind();
    if (IsSoftwareKind)
    {
      v29 = [lastObject2 createsJobs] ^ 1;
    }

    else
    {
      v29 = 0;
    }

    if (SSDownloadKindIsEBookKind())
    {
      v31 = [lastObject2 valueForDownloadProperty:*MEMORY[0x277D6A090]];
      v30 = v31 == 0;
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v29 = 0;
    IsSoftwareKind = 0;
    v30 = 0;
  }

  v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v33 = [MEMORY[0x277D69D50] weakReferenceWithObject:self];
  v34 = [objc_alloc(MEMORY[0x277D69C20]) initWithPurchases:obj];
  v35 = v34;
  if (IsSoftwareKind)
  {
    [v34 setCreatesDownloads:0];
  }

  if (v29)
  {
    [v35 setCreatesJobs:0];
  }

  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x2020000000;
  v69 = 0;
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __93__SUUIItemStateCenter__performPurchases_hasBundlePurchase_withClientContext_completionBlock___block_invoke;
  v60[3] = &unk_2798FE3D8;
  v61 = v33;
  v63 = v68;
  v64 = IsSoftwareKind;
  v65 = v30;
  purchaseCopy = purchase;
  v67 = v29;
  v62 = v32;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __93__SUUIItemStateCenter__performPurchases_hasBundlePurchase_withClientContext_completionBlock___block_invoke_2;
  v50[3] = &unk_2798FE400;
  v36 = v30;
  v37 = v61;
  v51 = v37;
  v38 = obj;
  v52 = v38;
  v39 = v62;
  v53 = v39;
  v40 = blockCopy;
  v56 = IsSoftwareKind;
  v57 = v36;
  purchaseCopy2 = purchase;
  v59 = v29;
  v54 = v40;
  v55 = v68;
  [v35 startWithPurchaseResponseBlock:v60 completionBlock:v50];

  _Block_object_dispose(v68, 8);
}

void __93__SUUIItemStateCenter__performPurchases_hasBundlePurchase_withClientContext_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(a1 + 32) object];
  v4 = [v9 purchase];
  v5 = [v4 valueForDownloadProperty:*MEMORY[0x277D6A080]];

  if (v5)
  {
    v6 = [[SUUIStoreIdentifier alloc] initWithNumber:v5];
    v7 = [v9 error];

    if (v7)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    if ((*(a1 + 56) & 1) == 0 && *(a1 + 57) != 1 || (*(a1 + 58) & 1) != 0 || *(a1 + 59) == 1)
    {
      v8 = [v9 downloadIdentifiers];
      [v3 _replacePurchasingItem:v6 withDownloadIDs:v8];
    }

    [v3 evaluatePurchaseResponseForRentals:v9];
  }

  [*(a1 + 40) addObject:v9];
}

void __93__SUUIItemStateCenter__performPurchases_hasBundlePurchase_withClientContext_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) object];
  if (![*(a1 + 40) count])
  {
    v4 = objc_alloc_init(MEMORY[0x277D69C28]);
    [v4 setError:v6];
    [*(a1 + 48) addObject:v4];
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    (*(v5 + 16))(v5, *(a1 + 48));
  }

  [v3 _notifyObserversOfPurchasesResponses:*(a1 + 48)];
  if ((*(a1 + 72) & 1) == 0 && *(a1 + 73) != 1 || (*(a1 + 74) & 1) != 0 || (*(a1 + 75) & 1) != 0 || *(a1 + 72) && (*(*(*(a1 + 64) + 8) + 24) & 1) != 0 || *(a1 + 73) == 1 && *(*(*(a1 + 64) + 8) + 24) == 1)
  {
    [v3 _removePurchasingItemsForPurchases:*(a1 + 40)];
  }
}

- (void)_performSoftwarePurchases:(id)purchases withClientContext:(id)context completionBlock:(id)block
{
  v34 = *MEMORY[0x277D85DE8];
  purchasesCopy = purchases;
  contextCopy = context;
  blockCopy = block;
  v22 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = purchasesCopy;
  v10 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v10)
  {
    v11 = *v30;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        itemID = [v13 itemID];
        if (itemID)
        {
          v15 = [[SUUIStoreIdentifier alloc] initWithNumber:itemID];
          v16 = [(SUUIItemStateCenter *)self _addState:1 forItemIdentifier:v15];
          if (v16)
          {
            [v22 addObject:v16];
          }
        }

        [contextCopy customizeSoftwarePurchase:v13];
      }

      v10 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v10);
  }

  if ([v22 count])
  {
    [(SUUIItemStateCenter *)self _notifyObserversOfStateChanges:v22];
  }

  v17 = [objc_alloc(MEMORY[0x277CEC438]) initWithPurchases:obj];
  v18 = [objc_alloc(MEMORY[0x277CEC430]) initWithOptions:v17];
  objc_initWeak(&location, self);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __83__SUUIItemStateCenter__performSoftwarePurchases_withClientContext_completionBlock___block_invoke;
  v24[3] = &unk_2798FE428;
  objc_copyWeak(&v27, &location);
  v19 = blockCopy;
  v26 = v19;
  v20 = obj;
  v25 = v20;
  [v18 startWithCompletionBlock:v24];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

void __83__SUUIItemStateCenter__performSoftwarePurchases_withClientContext_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v16 = v7;
  v10 = [v16 items];
  v11 = [v10 count];

  v12 = v16;
  if (!v11)
  {
    v13 = objc_alloc(MEMORY[0x277CEC440]);
    v12 = [v13 initWithPurchaseResponseItems:MEMORY[0x277CBEBF8]];

    [v16 setError:v8];
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    (*(v14 + 16))(v14, v12);
  }

  v15 = [v16 items];
  [WeakRetained _notifyObserversOfSoftwarePurchasesResponses:v15];

  [WeakRetained _updatesSoftwarePurchasingItemsForPurchases:*(a1 + 32) purchaseWasSuccessful:a2];
}

- (id)_purchaseHistoryDatabase
{
  canAccessPurchaseHistory = self->_canAccessPurchaseHistory;
  if (canAccessPurchaseHistory == 255)
  {
    databasePath = [MEMORY[0x277D69A30] databasePath];
    stringByDeletingLastPathComponent = [databasePath stringByDeletingLastPathComponent];
    self->_canAccessPurchaseHistory = SSFileIsLocalWritable();

    canAccessPurchaseHistory = self->_canAccessPurchaseHistory;
  }

  if (canAccessPurchaseHistory && !self->_purchaseHistoryDatabase)
  {
    newDefaultInstance = [MEMORY[0x277D69A28] newDefaultInstance];
    purchaseHistoryDatabase = self->_purchaseHistoryDatabase;
    self->_purchaseHistoryDatabase = newDefaultInstance;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, __PurchaseHistoryChangeNotification, *MEMORY[0x277D69D78], 0, CFNotificationSuspensionBehaviorCoalesce);
  }

  v9 = self->_purchaseHistoryDatabase;

  return v9;
}

- (void)_reloadAppUpdatesStore
{
  objc_initWeak(&location, self);
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SUUIItemStateCenter__reloadAppUpdatesStore__block_invoke;
  block[3] = &unk_2798F7CA0;
  block[4] = self;
  objc_copyWeak(&v5, &location);
  dispatch_async(accessQueue, block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __45__SUUIItemStateCenter__reloadAppUpdatesStore__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _appstoredUpdatesStore];
  if ([v2 hasEntitlement])
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __45__SUUIItemStateCenter__reloadAppUpdatesStore__block_invoke_2;
    v3[3] = &unk_2798FE450;
    objc_copyWeak(&v4, (a1 + 40));
    [v2 getUpdatesWithCompletionBlock:v3];
    ++*(*(a1 + 32) + 80);
    objc_destroyWeak(&v4);
  }
}

void __45__SUUIItemStateCenter__reloadAppUpdatesStore__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setAvailableAppstoredUpdatesWithUpdates:v3 decrementLoadCount:1];
}

- (void)_reloadDownloadManager
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SUUIItemStateCenter__reloadDownloadManager__block_invoke;
  block[3] = &unk_2798F5BE8;
  block[4] = self;
  dispatch_async(accessQueue, block);
  objc_initWeak(&location, self);
  downloadManager = self->_downloadManager;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__SUUIItemStateCenter__reloadDownloadManager__block_invoke_2;
  v5[3] = &unk_2798FE450;
  objc_copyWeak(&v6, &location);
  [(SSDownloadManager *)downloadManager getDownloadsUsingBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __45__SUUIItemStateCenter__reloadDownloadManager__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setDownloads:v3];
}

- (void)_reloadJobManager
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__SUUIItemStateCenter__reloadJobManager__block_invoke;
  block[3] = &unk_2798F5BE8;
  block[4] = self;
  dispatch_async(accessQueue, block);
  objc_initWeak(&location, self);
  jobManager = self->_jobManager;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__SUUIItemStateCenter__reloadJobManager__block_invoke_2;
  v5[3] = &unk_2798FE450;
  objc_copyWeak(&v6, &location);
  [(ASDJobManager *)jobManager getJobsUsingBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __40__SUUIItemStateCenter__reloadJobManager__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setJobs:v3];
}

- (void)_reloadMediaLibraryStateForItems:(id)items
{
  itemsCopy = items;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__SUUIItemStateCenter__reloadMediaLibraryStateForItems___block_invoke;
  v7[3] = &unk_2798F5AF8;
  v8 = itemsCopy;
  selfCopy = self;
  v6 = itemsCopy;
  dispatch_async(accessQueue, v7);
}

void __56__SUUIItemStateCenter__reloadMediaLibraryStateForItems___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) mutableCopy];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v27;
    do
    {
      v6 = 0;
      do
      {
        if (*v27 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(a1 + 40) + 152);
        v8 = [*(*(&v26 + 1) + 8 * v6) storeIdentifier];
        v9 = [v7 childItemsForItem:v8];

        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v23;
          do
          {
            v14 = 0;
            do
            {
              if (*v23 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = SUUILibraryItemForStoreIdentifier(*(*(&v22 + 1) + 8 * v14));
              [v2 addObject:v15];

              ++v14;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v12);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v4);
  }

  v16 = *(a1 + 40);
  v17 = *(v16 + 96);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SUUIItemStateCenter__reloadMediaLibraryStateForItems___block_invoke_2;
  block[3] = &unk_2798F5AF8;
  block[4] = v16;
  v21 = v2;
  v18 = v2;
  dispatch_async(v17, block);
}

void __56__SUUIItemStateCenter__reloadMediaLibraryStateForItems___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _copyItemsStatesForLibraryItems:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__SUUIItemStateCenter__reloadMediaLibraryStateForItems___block_invoke_3;
  v6[3] = &unk_2798F5AF8;
  v7 = v2;
  v8 = v3;
  v5 = v2;
  dispatch_async(v4, v6);
}

void __56__SUUIItemStateCenter__reloadMediaLibraryStateForItems___block_invoke_3(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v30 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v40;
    v28 = *v40;
    do
    {
      v5 = 0;
      v29 = v3;
      do
      {
        if (*v40 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v39 + 1) + 8 * v5);
        if ([*(*(a1 + 40) + 112) containsObject:v6])
        {
          v7 = [v6 storeIdentifier];

          if (v7)
          {
            v8 = [v6 storeIdentifier];
            v9 = [v8 copy];
          }

          else
          {
            v10 = [SUUIStoreIdentifier alloc];
            v8 = [v6 storeItemIdentifier];
            v9 = [(SUUIStoreIdentifier *)v10 initWithNumber:v8];
          }

          v11 = v9;

          v12 = [*(*(a1 + 40) + 88) objectForKey:v11];
          v13 = [*(a1 + 32) objectForKey:v6];
          v14 = [*(*(a1 + 40) + 152) childItemsForItem:v11];
          if ([v14 count])
          {
            v33 = v12;
            v34 = v11;
            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            v32 = v14;
            v15 = v14;
            v16 = [v15 countByEnumeratingWithState:&v35 objects:v43 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v36;
              v19 = 64;
              do
              {
                for (i = 0; i != v17; ++i)
                {
                  if (*v36 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v21 = SUUILibraryItemForStoreIdentifier(*(*(&v35 + 1) + 8 * i));
                  v22 = [*(a1 + 32) objectForKey:v21];
                  v19 &= [v22 state];
                }

                v17 = [v15 countByEnumeratingWithState:&v35 objects:v43 count:16];
              }

              while (v17);
            }

            else
            {
              v19 = 64;
            }

            [v13 setState:{objc_msgSend(v13, "state") | v19}];
            v4 = v28;
            v3 = v29;
            v12 = v33;
            v11 = v34;
            v14 = v32;
          }

          if (v12)
          {
            v23 = [v12 state];
            v24 = [v13 state] | v23 & 0xFFFFFFFFFFFFFFBFLL;
            if (v23 != v24)
            {
              [v12 setLibraryContentFlags:{objc_msgSend(v13, "libraryContentFlags")}];
              [v12 setMediaCategory:{objc_msgSend(v13, "mediaCategory")}];
              [v12 setState:v24];
              v25 = [v13 variantIdentifier];
              [v12 setVariantIdentifier:v25];

              v26 = v30;
              v27 = v12;
              goto LABEL_25;
            }
          }

          else
          {
            [*(*(a1 + 40) + 88) setObject:v13 forKey:v11];
            v26 = v30;
            v27 = v13;
LABEL_25:
            [v26 addObject:v27];
          }
        }

        ++v5;
      }

      while (v5 != v3);
      v3 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v3);
  }

  [*(a1 + 40) _notifyObserversOfStateChanges:v30];
}

- (void)_reloadPurchaseHistory
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SUUIItemStateCenter__reloadPurchaseHistory__block_invoke;
  block[3] = &unk_2798F5BE8;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

void __45__SUUIItemStateCenter__reloadPurchaseHistory__block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = objc_alloc_init(MEMORY[0x277D69C68]);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__SUUIItemStateCenter__reloadPurchaseHistory__block_invoke_2;
  v3[3] = &unk_2798FE4A0;
  v3[4] = *(a1 + 32);
  objc_copyWeak(&v4, &location);
  [v2 getRemovableSytemApplicationsWithCompletionBlock:v3];
  objc_destroyWeak(&v4);

  objc_destroyWeak(&location);
}

void __45__SUUIItemStateCenter__reloadPurchaseHistory__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v23 = a3;
  v27 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v25 = v4;
  if (v4)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v33 objects:v37 count:{16, v23}];
    if (v6)
    {
      v7 = *v34;
      v8 = *MEMORY[0x277D6A5D0];
      v9 = *MEMORY[0x277D6A5B0];
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v34 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v33 + 1) + 8 * i);
          v12 = [v11 valueForProperty:v8];
          if (v12)
          {
            v13 = [[SUUIStoreIdentifier alloc] initWithNumber:v12];
            v14 = [v11 valueForProperty:v9];
            [(SUUIStoreIdentifier *)v13 setBundleIdentifier:v14];

            [v27 addObject:v13];
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v6);
    }
  }

  v15 = [v27 copy];
  v16 = [MEMORY[0x277D69A20] defaultStore];
  v17 = [v16 activeAccount];
  v18 = [v17 uniqueIdentifier];

  v19 = [*(a1 + 32) _purchaseHistoryDatabase];
  v20 = v19;
  if (v18 && v19)
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __45__SUUIItemStateCenter__reloadPurchaseHistory__block_invoke_3;
    v28[3] = &unk_2798FE478;
    v29 = v18;
    v30 = v27;
    objc_copyWeak(&v32, (a1 + 40));
    v31 = v15;
    [v20 readAsyncUsingTransactionBlock:v28];
    ++*(*(a1 + 32) + 80);

    objc_destroyWeak(&v32);
    v21 = v29;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _setPurchaseHistoryItemsWithIdentifiers:v27];

    v21 = objc_loadWeakRetained((a1 + 40));
    [v21 _setFirstPartyRemovableItemsIdentifiers:v15];
  }
}

uint64_t __45__SUUIItemStateCenter__reloadPurchaseHistory__block_invoke_3(uint64_t a1, void *a2)
{
  v21[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277D69C40] predicateWithProperty:*MEMORY[0x277D69D80] equalToValue:*(a1 + 32)];
  v5 = MEMORY[0x277D69A38];
  v6 = [v3 database];
  v7 = [v5 queryWithDatabase:v6 predicate:v4];

  v21[0] = *MEMORY[0x277D69D90];
  v21[1] = *MEMORY[0x277D69D88];
  v21[2] = *MEMORY[0x277D69D98];
  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __45__SUUIItemStateCenter__reloadPurchaseHistory__block_invoke_4;
  v18 = &unk_2798F9648;
  v9 = v8;
  v19 = v9;
  v20 = *(a1 + 40);
  [v7 enumeratePersistentIDsAndProperties:v21 count:3 usingBlock:&v15];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _setPurchaseHistoryItemsWithIdentifiers:{*(a1 + 40), v15, v16, v17, v18}];

  v11 = objc_loadWeakRetained((a1 + 56));
  [v11 _setFirstPartyRemovableItemsIdentifiers:*(a1 + 48)];

  if ([v9 count])
  {
    v12 = objc_loadWeakRetained((a1 + 56));
    [v12 _setPurchaseHistoryVPPItemsWithIdentifiers:v9];
  }

  for (i = 2; i != -1; --i)
  {
  }

  return 1;
}

void __45__SUUIItemStateCenter__reloadPurchaseHistory__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *a3;
  v5 = *(a3 + 8);
  v6 = *(a3 + 16);
  v7 = v5;
  LODWORD(v6) = [v6 BOOLValue];
  v8 = [[SUUIStoreIdentifier alloc] initWithNumber:v10];
  [(SUUIStoreIdentifier *)v8 setBundleIdentifier:v7];
  v9 = 40;
  if (v6)
  {
    v9 = 32;
  }

  [*(a1 + v9) addObject:v8];
}

- (void)_reloadSoftwareLibrary
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SUUIItemStateCenter__reloadSoftwareLibrary__block_invoke;
  block[3] = &unk_2798F5BE8;
  block[4] = self;
  dispatch_async(accessQueue, block);
  objc_initWeak(&location, self);
  v4 = objc_alloc_init(MEMORY[0x277D69C68]);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__SUUIItemStateCenter__reloadSoftwareLibrary__block_invoke_2;
  v5[3] = &unk_2798F6CB8;
  objc_copyWeak(&v6, &location);
  [v4 getLibraryItemsForITunesStoreItemIdentifiers:0 completionBlock:v5];
  objc_destroyWeak(&v6);

  objc_destroyWeak(&location);
}

void __45__SUUIItemStateCenter__reloadSoftwareLibrary__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setInstalledItems:v3];
}

- (void)_removePurchasingItemsForPurchases:(id)purchases
{
  purchasesCopy = purchases;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__SUUIItemStateCenter__removePurchasingItemsForPurchases___block_invoke;
  v7[3] = &unk_2798F5AF8;
  v8 = purchasesCopy;
  selfCopy = self;
  v6 = purchasesCopy;
  dispatch_async(accessQueue, v7);
}

void __58__SUUIItemStateCenter__removePurchasingItemsForPurchases___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    v6 = *MEMORY[0x277D6A080];
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v11 + 1) + 8 * v7) valueForDownloadProperty:{v6, v11}];
        if (v8)
        {
          v9 = [[SUUIStoreIdentifier alloc] initWithNumber:v8];
          v10 = [*(a1 + 40) _removeState:1 forItemIdentifier:v9];
          if (v10)
          {
            [*(a1 + 40) _notifyObserversOfStateChange:v10];
          }
        }

        ++v7;
      }

      while (v4 != v7);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

- (id)_removeState:(unint64_t)state forItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [(NSMutableDictionary *)self->_itemStates objectForKey:identifierCopy];
  v8 = v7;
  if (v7)
  {
    state = [v7 state];
    if ((state & state) != 0)
    {
      [v8 setState:state & ~state];
      if (![v8 state])
      {
        [(NSMutableDictionary *)self->_itemStates removeObjectForKey:identifierCopy];
      }
    }

    else
    {

      v8 = 0;
    }
  }

  return v8;
}

- (void)_replacePurchasingItem:(id)item withDownloadIDs:(id)ds
{
  itemCopy = item;
  dsCopy = ds;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SUUIItemStateCenter__replacePurchasingItem_withDownloadIDs___block_invoke;
  block[3] = &unk_2798F5BC0;
  block[4] = self;
  v12 = itemCopy;
  v13 = dsCopy;
  v9 = dsCopy;
  v10 = itemCopy;
  dispatch_async(accessQueue, block);
}

void __62__SUUIItemStateCenter__replacePurchasingItem_withDownloadIDs___block_invoke(uint64_t a1)
{
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v2 = [*(a1 + 32) _removeState:1 forItemIdentifier:*(a1 + 40)];
  if (v2)
  {
    [v6 addObject:v2];
  }

  if ([*(a1 + 48) count])
  {
    v3 = [*(a1 + 32) _addState:2 forItemIdentifier:*(a1 + 40)];
    v4 = v3;
    if (!v3 || v3 == v2)
    {
      v5 = [*(*(a1 + 32) + 88) objectForKey:*(a1 + 40)];

      v4 = v5;
    }

    else
    {
      [v6 addObject:v3];
    }

    [v4 setDownloadProgress:0.0];
    [v4 setDownloadIdentifiers:*(a1 + 48)];
  }

  if ([v6 count])
  {
    [*(a1 + 32) _notifyObserversOfStateChanges:v6];
  }
}

- (void)_setAvailableAppstoredUpdatesWithUpdates:(id)updates decrementLoadCount:(BOOL)count
{
  updatesCopy = updates;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__SUUIItemStateCenter__setAvailableAppstoredUpdatesWithUpdates_decrementLoadCount___block_invoke;
  block[3] = &unk_2798FADE0;
  v10 = updatesCopy;
  selfCopy = self;
  countCopy = count;
  v8 = updatesCopy;
  dispatch_async(accessQueue, block);
}

void __83__SUUIItemStateCenter__setAvailableAppstoredUpdatesWithUpdates_decrementLoadCount___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = *(a1 + 32);
  v32 = [obj countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v32)
  {
    v3 = *v34;
    v28 = v2;
    v29 = a1;
    v27 = *v34;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v34 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v33 + 1) + 8 * i);
        v6 = -[SUUIStoreIdentifier initWithLongLong:]([SUUIStoreIdentifier alloc], "initWithLongLong:", [v5 storeItemIdentifier]);
        v7 = [*(*(a1 + 40) + 88) objectForKey:v6];
        v8 = [(SUUIItemState *)v7 state];
        v9 = [v5 updateState];
        v10 = ((v8 & 2) == 0) | v8;
        v11 = v8 & 0xFFFFFFFFFFFFFFDCLL | 0x20;
        if ((v8 & 2) != 0)
        {
          v11 = v8;
        }

        if (v9 != 4)
        {
          v11 = v8;
        }

        if (v9 != 3)
        {
          v10 = v11;
        }

        v12 = v8 & 0xFFFFFFFFFFFFFFDELL | 0x20;
        if (v9)
        {
          v12 = v8;
        }

        if ((v9 - 1) >= 2)
        {
          v13 = v12;
        }

        else
        {
          v13 = v8 & 0xFFFFFFFFFFFFFFD8 | 4;
        }

        if (v9 <= 2)
        {
          v14 = v13;
        }

        else
        {
          v14 = v10;
        }

        if (!v7)
        {
          v7 = objc_alloc_init(SUUIItemState);
          v15 = [(SUUIStoreIdentifier *)v6 numberValue];
          [(SUUIItemState *)v7 setItemIdentifier:v15];

          [(SUUIItemState *)v7 setStoreIdentifier:v6];
          [(SUUIItemState *)v7 setState:v14];
          [*(*(a1 + 40) + 88) setObject:v7 forKey:v6];
        }

        if (v8 != v14)
        {
          [(SUUIItemState *)v7 setState:v14];
          [v2 addObject:v7];
          v16 = [MEMORY[0x277D69B38] sharedConfig];
          v17 = [v16 shouldLog];
          if ([v16 shouldLogToDisk])
          {
            v18 = v17 | 2;
          }

          else
          {
            v18 = v17;
          }

          v19 = [v16 OSLogObject];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v20 = v18;
          }

          else
          {
            v20 = v18 & 2;
          }

          if (v20)
          {
            v21 = objc_opt_class();
            v31 = v21;
            v22 = [v5 bundleIdentifier];
            v23 = [v5 updateState];
            v37 = 138413058;
            v38 = v21;
            v39 = 2112;
            v40 = v22;
            v41 = 2048;
            v42 = v23;
            v43 = 2048;
            v44 = v14;
            LODWORD(v26) = 42;
            v25 = &v37;
            v24 = _os_log_send_and_compose_impl();

            v2 = v28;
            if (v24)
            {
              v19 = [MEMORY[0x277CCACA8] stringWithCString:v24 encoding:{4, &v37, v26}];
              free(v24);
              v25 = v19;
              SSFileLog();
              goto LABEL_33;
            }
          }

          else
          {
            v2 = v28;
LABEL_33:
          }

          a1 = v29;
          v3 = v27;
        }
      }

      v32 = [obj countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v32);
  }

  if ([v2 count])
  {
    [*(a1 + 40) _notifyObserversOfStateChanges:v2];
  }

  if (*(a1 + 48) == 1)
  {
    --*(*(a1 + 40) + 80);
    [*(a1 + 40) _fireFinishLoadBlocksIfNecessary];
  }
}

- (void)_setDownloads:(id)downloads
{
  downloadsCopy = downloads;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__SUUIItemStateCenter__setDownloads___block_invoke;
  v7[3] = &unk_2798F5AF8;
  v7[4] = self;
  v8 = downloadsCopy;
  v6 = downloadsCopy;
  dispatch_async(accessQueue, v7);
}

void __37__SUUIItemStateCenter__setDownloads___block_invoke(uint64_t a1)
{
  v1 = a1;
  v98 = *MEMORY[0x277D85DE8];
  --*(*(a1 + 32) + 80);
  v2 = [*(*(a1 + 32) + 88) mutableCopy];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v63 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  obj = *(v1 + 40);
  v4 = [obj countByEnumeratingWithState:&v90 objects:v97 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v91;
    v7 = *MEMORY[0x277D6A018];
    v8 = *MEMORY[0x277D69EA8];
    v72 = *MEMORY[0x277D6A080];
    v67 = *MEMORY[0x277D6A008];
    v65 = *MEMORY[0x277D69FF8];
    v66 = *MEMORY[0x277D69FE0];
    v64 = v2;
    v68 = *MEMORY[0x277D69EA8];
    v69 = *MEMORY[0x277D6A018];
    v60 = v3;
    v61 = v1;
    v70 = *v91;
    do
    {
      v9 = 0;
      v71 = v5;
      do
      {
        if (*v91 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v77 = v9;
        v10 = *(*(&v90 + 1) + 8 * v9);
        v11 = [v10 valueForProperty:{v7, v60}];
        v12 = [v11 isEqualToString:v8];

        if ((v12 & 1) == 0)
        {
          v13 = [v10 valueForProperty:v72];
          if (v13)
          {
            v14 = [[SUUIStoreIdentifier alloc] initWithNumber:v13];
            v15 = [v2 objectForKey:v14];
            if (!v15)
            {
              v15 = objc_alloc_init(SUUIItemState);
              [(SUUIItemState *)v15 setItemIdentifier:v13];
              [(SUUIItemState *)v15 setStoreIdentifier:v14];
              [*(*(v1 + 32) + 88) setObject:v15 forKey:v14];
            }

            v16 = [(SUUIItemState *)v15 state];
            if ((v16 & 2) == 0)
            {
              [(SUUIItemState *)v15 setState:v16 | 2];
              [v3 addObject:v15];
            }

            v17 = v15;
            v18 = [(SUUIItemState *)v15 downloadContentFlags];
            v19 = [v10 valueForProperty:v67];
            v20 = [v19 BOOLValue];

            if ((v18 & 2) != v20)
            {
              [(SUUIItemState *)v17 setDownloadContentFlags:v18 | v20];
              [v3 addObject:v17];
            }

            v21 = v10;
            v22 = [v21 valueForProperty:v66];
            v23 = [v22 BOOLValue];

            v24 = [v21 valueForProperty:v65];

            v25 = [v24 BOOLValue];
            v26 = @"buy";
            if (v25)
            {
              v26 = @"rent";
            }

            v27 = @"buy_HD";
            if (v25)
            {
              v27 = @"rent_HD";
            }

            if (v23)
            {
              v26 = v27;
            }

            v28 = v26;
            v76 = v17;
            v29 = [(SUUIItemState *)v17 variantIdentifier];
            v75 = v28;
            v30 = [v29 isEqualToString:v28];

            if ((v30 & 1) == 0)
            {
              [(SUUIItemState *)v17 setVariantIdentifier:v28];
              [v3 addObject:v17];
            }

            [v2 removeObjectForKey:v14];
            v74 = v14;
            if ([*(*(v1 + 32) + 152) itemHasParent:v14])
            {
              v31 = [*(*(v1 + 32) + 152) parentItemForItem:v14];
              v32 = [v2 objectForKey:v31];
              if (!v32)
              {
                v32 = objc_alloc_init(SUUIItemState);
                v33 = [v31 itemIdentifier];
                [(SUUIItemState *)v32 setItemIdentifier:v33];

                [(SUUIItemState *)v32 setStoreIdentifier:v31];
                v34 = [(SUUIItemState *)v17 downloadPhase];
                [(SUUIItemState *)v32 setDownloadPhase:v34];

                [*(*(v1 + 32) + 88) setObject:v32 forKey:v31];
              }

              v35 = [(SUUIItemState *)v32 state];
              if ((v35 & 2) == 0)
              {
                [(SUUIItemState *)v32 setState:v35 | 2];
                [v3 addObject:v32];
              }

              v36 = v31;
LABEL_41:
              v44 = v76;
              [v63 addObject:v31];

              v2 = v64;
            }

            else
            {
              v88 = 0u;
              v89 = 0u;
              v86 = 0u;
              v87 = 0u;
              v36 = v2;
              v37 = [v36 countByEnumeratingWithState:&v86 objects:v96 count:16];
              if (v37)
              {
                v38 = v37;
                v62 = v13;
                v39 = *v87;
                while (2)
                {
                  for (i = 0; i != v38; ++i)
                  {
                    if (*v87 != v39)
                    {
                      objc_enumerationMutation(v36);
                    }

                    v31 = *(*(&v86 + 1) + 8 * i);
                    v32 = [v36 objectForKey:v31];
                    v41 = [(SUUIItemState *)v32 downloadIdentifiers];
                    v42 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v21, "persistentIdentifier")}];
                    v43 = [v41 containsObject:v42];

                    if (v43)
                    {
                      v45 = [(SUUIItemState *)v32 state];
                      v3 = v60;
                      if ((v45 & 2) == 0)
                      {
                        [(SUUIItemState *)v32 setState:v45 | 2];
                        [v60 addObject:v32];
                      }

                      v1 = v61;
                      v46 = *(*(v61 + 32) + 152);
                      v47 = [MEMORY[0x277CBEB98] setWithObject:v74];
                      [v46 addChildren:v47 forParent:v31];

                      v13 = v62;
                      goto LABEL_41;
                    }
                  }

                  v38 = [v36 countByEnumeratingWithState:&v86 objects:v96 count:16];
                  if (v38)
                  {
                    continue;
                  }

                  break;
                }

                v3 = v60;
                v1 = v61;
                v2 = v64;
                v13 = v62;
              }

              v44 = v76;
            }

            v7 = v69;
            v6 = v70;
            v5 = v71;
            v8 = v68;
          }
        }

        v9 = v77 + 1;
      }

      while (v77 + 1 != v5);
      v5 = [obj countByEnumeratingWithState:&v90 objects:v97 count:16];
    }

    while (v5);
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v48 = v63;
  v49 = [v48 countByEnumeratingWithState:&v82 objects:v95 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v83;
    do
    {
      for (j = 0; j != v50; ++j)
      {
        if (*v83 != v51)
        {
          objc_enumerationMutation(v48);
        }

        [v2 removeObjectForKey:*(*(&v82 + 1) + 8 * j)];
      }

      v50 = [v48 countByEnumeratingWithState:&v82 objects:v95 count:16];
    }

    while (v50);
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v53 = v2;
  v54 = [v53 countByEnumeratingWithState:&v78 objects:v94 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v79;
    do
    {
      for (k = 0; k != v55; ++k)
      {
        if (*v79 != v56)
        {
          objc_enumerationMutation(v53);
        }

        v58 = [*(v1 + 32) _removeState:2 forItemIdentifier:*(*(&v78 + 1) + 8 * k)];
        v59 = v58;
        if (v58)
        {
          [v58 setDownloadContentFlags:0];
          [v59 setVariantIdentifier:0];
          [v3 addObject:v59];
        }
      }

      v55 = [v53 countByEnumeratingWithState:&v78 objects:v94 count:16];
    }

    while (v55);
  }

  if ([v3 count])
  {
    [*(v1 + 32) _notifyObserversOfStateChanges:v3];
  }

  [*(v1 + 32) _fireFinishLoadBlocksIfNecessary];
}

- (void)_setJobs:(id)jobs
{
  jobsCopy = jobs;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__SUUIItemStateCenter__setJobs___block_invoke;
  v7[3] = &unk_2798F5AF8;
  v7[4] = self;
  v8 = jobsCopy;
  v6 = jobsCopy;
  dispatch_async(accessQueue, v7);
}

void __32__SUUIItemStateCenter__setJobs___block_invoke(uint64_t a1)
{
  v1 = a1;
  v45 = *MEMORY[0x277D85DE8];
  --*(*(a1 + 32) + 80);
  v27 = [*(*(a1 + 32) + 88) mutableCopy];
  v24 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = *(v1 + 40);
  v30 = [obj countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v30)
  {
    v2 = *v33;
    v26 = v1;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v33 != v2)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v32 + 1) + 8 * i);
        v5 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v4, "storeItemID", v22, v23)}];
        if (v5)
        {
          v6 = [[SUUIStoreIdentifier alloc] initWithNumber:v5];
          v7 = [v27 objectForKey:v6];
          if (!v7)
          {
            v7 = objc_alloc_init(SUUIItemState);
            [(SUUIItemState *)v7 setItemIdentifier:v5];
            [(SUUIItemState *)v7 setStoreIdentifier:v6];
            [*(*(v1 + 32) + 88) setObject:v7 forKey:v6];
          }

          v31 = v6;
          [(SUUIItemState *)v7 setMediaCategory:1];
          v8 = [(SUUIItemState *)v7 state];
          v9 = v8;
          if (v8)
          {
            v10 = 0;
          }

          else
          {
            v10 = v8;
          }

          v11 = v10 | ~v8 & 2;
          v29 = [v4 phase];
          [v4 percentComplete];
          *&v12 = v12;
          [(SUUIItemState *)v7 setDownloadProgress:v12];
          [(SUUIItemState *)v7 setState:v11];
          v13 = [(SUUIItemState *)v7 downloadContentFlags];
          if ((v13 & v11) != 0)
          {
            [(SUUIItemState *)v7 setDownloadContentFlags:v13];
          }

          if (v9 != v11 || v13 != 0)
          {
            [v24 addObject:v7];
          }

          v15 = [MEMORY[0x277D69B38] sharedConfig];
          v16 = [v15 shouldLog];
          if ([v15 shouldLogToDisk])
          {
            v16 |= 2u;
          }

          v17 = [v15 OSLogObject];
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v16 &= 2u;
          }

          if (v16)
          {
            v18 = v2;
            v19 = objc_opt_class();
            v28 = v19;
            v20 = [v4 bundleID];
            v36 = 138413058;
            v37 = v19;
            v2 = v18;
            v38 = 2112;
            v39 = v20;
            v40 = 2048;
            v41 = v29;
            v42 = 2048;
            v43 = v11;
            LODWORD(v23) = 42;
            v22 = &v36;
            v21 = _os_log_send_and_compose_impl();

            if (v21)
            {
              v17 = [MEMORY[0x277CCACA8] stringWithCString:v21 encoding:{4, &v36, v23}];
              free(v21);
              v22 = v17;
              SSFileLog();
              goto LABEL_26;
            }
          }

          else
          {
LABEL_26:
          }

          v1 = v26;
        }
      }

      v30 = [obj countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v30);
  }

  if ([v24 count])
  {
    [*(v1 + 32) _notifyObserversOfStateChanges:v24];
  }

  [*(v1 + 32) _fireFinishLoadBlocksIfNecessary];
}

- (void)_setGratisIdentifiers:(id)identifiers error:(id)error
{
  identifiersCopy = identifiers;
  errorCopy = error;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SUUIItemStateCenter__setGratisIdentifiers_error___block_invoke;
  block[3] = &unk_2798F5BC0;
  v12 = errorCopy;
  selfCopy = self;
  v14 = identifiersCopy;
  v9 = identifiersCopy;
  v10 = errorCopy;
  dispatch_async(accessQueue, block);
}

uint64_t __51__SUUIItemStateCenter__setGratisIdentifiers_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 32))
  {
    *(v2 + 64) = 3;
  }

  else
  {
    *(v2 + 64) = 2;
    v3 = [*(a1 + 40) _setStateFlag:16 forOnlyItemsWithIdentifiers:*(a1 + 48) sendNotification:1];
  }

  --*(*(a1 + 40) + 80);
  v4 = *(a1 + 40);

  return [v4 _fireFinishLoadBlocksIfNecessary];
}

- (void)_setInstalledItems:(id)items
{
  v24 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  if (itemsCopy)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6 = objc_alloc_init(MEMORY[0x277D69C68]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = itemsCopy;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      v11 = *MEMORY[0x277D6A5B0];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = [*(*(&v18 + 1) + 8 * i) valueForProperty:v11];
          [array addObject:v13];
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v9);
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __42__SUUIItemStateCenter__setInstalledItems___block_invoke_2;
    v15[3] = &unk_2798F7F78;
    v16 = v7;
    selfCopy = self;
    [v6 playableApplicationsWithBundleIdentifiers:array completionBlock:v15];
  }

  else
  {
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__SUUIItemStateCenter__setInstalledItems___block_invoke;
    block[3] = &unk_2798F5BE8;
    block[4] = self;
    dispatch_async(accessQueue, block);
  }
}

void __42__SUUIItemStateCenter__setInstalledItems___block_invoke_2(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v22 = a2;
  v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = a1;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v29;
    v6 = *MEMORY[0x277D6A5D0];
    v24 = *MEMORY[0x277D6A5C0];
    v21 = *MEMORY[0x277D6A5B0];
    v7 = off_2798F4000;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v29 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        v10 = [v9 valueForProperty:{v6, v20}];
        if (v10)
        {
          v11 = [objc_alloc(v7[91]) initWithNumber:v10];
          if (([v9 isPlaceholder] & 1) == 0 && (objc_msgSend(v9, "isBeta") & 1) == 0)
          {
            [v9 valueForProperty:v24];
            v13 = v12 = v7;
            v14 = [v13 longLongValue];

            v7 = v12;
            if (!v14 || ([v9 valueForProperty:v21], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v22, "containsObject:", v15), v15, v7 = v12, v16))
            {
              [v23 setObject:v9 forKey:v11];
            }
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v4);
  }

  v17 = *(v20 + 40);
  v18 = *(v17 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SUUIItemStateCenter__setInstalledItems___block_invoke_3;
  block[3] = &unk_2798F5AF8;
  block[4] = v17;
  v27 = v23;
  v19 = v23;
  dispatch_async(v18, block);
}

void __42__SUUIItemStateCenter__setInstalledItems___block_invoke_3(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__SUUIItemStateCenter__setInstalledItems___block_invoke_4;
  aBlock[3] = &unk_2798FE4C8;
  aBlock[4] = *(a1 + 32);
  v3 = v2;
  v20 = v3;
  v4 = _Block_copy(aBlock);
  v5 = [*(*(a1 + 32) + 88) copy];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __42__SUUIItemStateCenter__setInstalledItems___block_invoke_5;
  v14[3] = &unk_2798FE4F0;
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v15 = v6;
  v16 = v7;
  v8 = v3;
  v17 = v8;
  v9 = v4;
  v18 = v9;
  [v5 enumerateKeysAndObjectsUsingBlock:v14];
  v10 = *(a1 + 40);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __42__SUUIItemStateCenter__setInstalledItems___block_invoke_6;
  v12[3] = &unk_2798FE518;
  v11 = v9;
  v13 = v11;
  [v10 enumerateKeysAndObjectsUsingBlock:v12];
  if ([v8 count])
  {
    [*(a1 + 32) _notifyObserversOfStateChanges:v8];
  }

  [*(a1 + 32) _notifyObserversOfMediaLibraryChange];
  --*(*(a1 + 32) + 80);
  [*(a1 + 32) _fireFinishLoadBlocksIfNecessary];
}

void __42__SUUIItemStateCenter__setInstalledItems___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) _addState:4 forItemIdentifier:v8];
  if (v6)
  {
    [*(a1 + 40) addObject:v6];
  }

  if ([v5 isLaunchProhibited])
  {
    v7 = [*(a1 + 32) _addState:4096 forItemIdentifier:v8];

    if (v7)
    {
      [*(a1 + 40) addObject:v7];
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }
  }
}

void __42__SUUIItemStateCenter__setInstalledItems___block_invoke_5(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) objectForKey:?];
  if (v3)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v4 = [*(a1 + 40) _removeState:4 forItemIdentifier:v6];
    if (v4)
    {
      [*(a1 + 48) addObject:v4];
    }

    v5 = [*(a1 + 40) _removeState:4096 forItemIdentifier:v6];

    if (v5)
    {
      [*(a1 + 48) addObject:v5];
    }
  }

  [*(a1 + 32) removeObjectForKey:v6];
}

- (void)_setPurchaseHistoryItemsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__SUUIItemStateCenter__setPurchaseHistoryItemsWithIdentifiers___block_invoke;
  v7[3] = &unk_2798F5AF8;
  v7[4] = self;
  v8 = identifiersCopy;
  v6 = identifiersCopy;
  dispatch_async(accessQueue, v7);
}

uint64_t __63__SUUIItemStateCenter__setPurchaseHistoryItemsWithIdentifiers___block_invoke(uint64_t a1)
{
  --*(*(a1 + 32) + 80);
  v2 = [*(a1 + 32) _setStateFlag:8 forItemsWithIdentifiers:*(a1 + 40) sendNotification:1];
  v3 = *(a1 + 32);

  return [v3 _fireFinishLoadBlocksIfNecessary];
}

- (void)_setPurchaseHistoryVPPItemsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__SUUIItemStateCenter__setPurchaseHistoryVPPItemsWithIdentifiers___block_invoke;
  v7[3] = &unk_2798F5AF8;
  v7[4] = self;
  v8 = identifiersCopy;
  v6 = identifiersCopy;
  dispatch_async(accessQueue, v7);
}

uint64_t __66__SUUIItemStateCenter__setPurchaseHistoryVPPItemsWithIdentifiers___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _setStateFlag:512 forItemsWithIdentifiers:*(a1 + 40) sendNotification:1];
  v3 = *(a1 + 32);

  return [v3 _fireFinishLoadBlocksIfNecessary];
}

- (void)_setFirstPartyRemovableItemsIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__SUUIItemStateCenter__setFirstPartyRemovableItemsIdentifiers___block_invoke;
  v7[3] = &unk_2798F5AF8;
  v7[4] = self;
  v8 = identifiersCopy;
  v6 = identifiersCopy;
  dispatch_async(accessQueue, v7);
}

uint64_t __63__SUUIItemStateCenter__setFirstPartyRemovableItemsIdentifiers___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _setStateFlag:1024 forItemsWithIdentifiers:*(a1 + 40) sendNotification:1];
  v3 = *(a1 + 32);

  return [v3 _fireFinishLoadBlocksIfNecessary];
}

- (id)_setStateFlag:(unint64_t)flag forItemsWithIdentifiers:(id)identifiers sendNotification:(BOOL)notification
{
  notificationCopy = notification;
  v35 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v9 = [(NSMutableDictionary *)self->_itemStates mutableCopy];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = identifiersCopy;
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        v16 = [(SUUIItemStateCenter *)self _addState:flag forItemIdentifier:v15];
        if (v16)
        {
          [v8 addObject:v16];
        }

        [v9 removeObjectForKey:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v12);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = v9;
  v18 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [(SUUIItemStateCenter *)self _removeState:flag forItemIdentifier:*(*(&v25 + 1) + 8 * j)];
        if (v22)
        {
          [v8 addObject:v22];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v19);
  }

  if (notificationCopy && [v8 count])
  {
    [(SUUIItemStateCenter *)self _notifyObserversOfStateChanges:v8];
  }

  return v8;
}

- (id)_setStateFlag:(unint64_t)flag forOnlyItemsWithIdentifiers:(id)identifiers sendNotification:(BOOL)notification
{
  notificationCopy = notification;
  v25 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v9 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = identifiersCopy;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        v16 = [SUUIStoreIdentifier alloc];
        v17 = [(SUUIStoreIdentifier *)v16 initWithNumber:v15, v20];
        [v9 addObject:v17];
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  v18 = [(SUUIItemStateCenter *)self _setStateFlag:flag forItemsWithIdentifiers:v9 sendNotification:notificationCopy];

  return v18;
}

- (void)_updatesSoftwarePurchasingItemsForPurchases:(id)purchases purchaseWasSuccessful:(BOOL)successful
{
  purchasesCopy = purchases;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__SUUIItemStateCenter__updatesSoftwarePurchasingItemsForPurchases_purchaseWasSuccessful___block_invoke;
  block[3] = &unk_2798FADE0;
  v10 = purchasesCopy;
  selfCopy = self;
  successfulCopy = successful;
  v8 = purchasesCopy;
  dispatch_async(accessQueue, block);
}

void __89__SUUIItemStateCenter__updatesSoftwarePurchasingItemsForPurchases_purchaseWasSuccessful___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = [v7 itemID];

        if (v8)
        {
          v9 = [SUUIStoreIdentifier alloc];
          v10 = [v7 itemID];
          v11 = [(SUUIStoreIdentifier *)v9 initWithNumber:v10];

          v12 = [*(*(a1 + 40) + 88) objectForKey:v11];
          v13 = [v12 state];
          v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
          if ([v7 createsJobs] && (*(a1 + 48) & ((v13 & 2) == 0)) != 0)
          {
            v14 = v13 & 0xFFFFFFFFFFFFFFFCLL | 2;
          }

          if (v13 != v14)
          {
            [v12 setState:v14];
            [*(a1 + 40) _notifyObserversOfStateChange:v12];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }
}

- (BOOL)_isPurchaseForOffDeviceContent:(id)content
{
  deviceFamilies = [content deviceFamilies];

  return SUUIItemDeviceFamilyIsTVOnly(deviceFamilies);
}

@end