@interface BLTWatchKitAppList
- (BLTWatchKitAppList)init;
- (BLTWatchKitAppListDelegate)delegate;
- (id)watchKitAppDefinitionWithBundleID:(id)d;
- (void)_fetchWatchKitInfoWithForce:(BOOL)force completion:(id)completion;
- (void)dealloc;
@end

@implementation BLTWatchKitAppList

- (BLTWatchKitAppList)init
{
  v7.receiver = self;
  v7.super_class = BLTWatchKitAppList;
  v2 = [(BLTWatchKitAppList *)&v7 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    loadingCompletionHandlers = v2->_loadingCompletionHandlers;
    v2->_loadingCompletionHandlers = array;

    pthread_mutex_init(&v2->_lock, 0);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, ApplicationsChanged, *MEMORY[0x277CE3130], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277CE3130], 0);
  pthread_mutex_destroy(&self->_lock);
  v4.receiver = self;
  v4.super_class = BLTWatchKitAppList;
  [(BLTWatchKitAppList *)&v4 dealloc];
}

- (id)watchKitAppDefinitionWithBundleID:(id)d
{
  if (d)
  {
    dCopy = d;
    pthread_mutex_lock(&self->_lock);
    v5 = [(NSDictionary *)self->_appsByAppBundleID objectForKeyedSubscript:dCopy];

    pthread_mutex_unlock(&self->_lock);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_fetchWatchKitInfoWithForce:(BOOL)force completion:(id)completion
{
  v45 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = [BLTTransaction transactionWithDescription:@"BLTWatchKitAppList _fetchWatchKitInfoWithForce:completion:"];
  if (!force)
  {
    pthread_mutex_lock(&self->_lock);
    if (completionCopy)
    {
      loadingCompletionHandlers = self->_loadingCompletionHandlers;
      v9 = [completionCopy copy];
      [(NSMutableArray *)loadingCompletionHandlers addObject:v9];
    }

    if (self->_loading)
    {
      pthread_mutex_unlock(&self->_lock);
      goto LABEL_10;
    }

    self->_loading = 1;
    pthread_mutex_unlock(&self->_lock);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  mEMORY[0x277CEAF80] = [MEMORY[0x277CEAF80] sharedDeviceConnection];
  blt_boundedWaitForActivePairedDevice = [MEMORY[0x277D2BCF8] blt_boundedWaitForActivePairedDevice];
  v13 = blt_general_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [blt_boundedWaitForActivePairedDevice valueForProperty:*MEMORY[0x277D2BBB8]];
    *buf = 134218242;
    v42 = blt_boundedWaitForActivePairedDevice;
    v43 = 2112;
    v44 = v14;
    _os_log_impl(&dword_241FB3000, v13, OS_LOG_TYPE_DEFAULT, "Fetching apps for paired device %p id: %@", buf, 0x16u);
  }

  v15 = [MEMORY[0x277CBEB58] set];
  pthread_mutex_lock(&self->_lock);
  appsByAppBundleID = self->_appsByAppBundleID;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __61__BLTWatchKitAppList__fetchWatchKitInfoWithForce_completion___block_invoke;
  v39[3] = &unk_278D31888;
  v17 = v15;
  v40 = v17;
  [(NSDictionary *)appsByAppBundleID enumerateKeysAndObjectsUsingBlock:v39];
  pthread_mutex_unlock(&self->_lock);
  v18 = [MEMORY[0x277CBEB58] set];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __61__BLTWatchKitAppList__fetchWatchKitInfoWithForce_completion___block_invoke_2;
  v31[3] = &unk_278D318D8;
  v19 = dictionary;
  v32 = v19;
  selfCopy = self;
  forceCopy = force;
  v37 = completionCopy;
  v20 = v18;
  v34 = v20;
  v35 = v17;
  v36 = v7;
  v21 = v17;
  v22 = MEMORY[0x245D067A0](v31);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __61__BLTWatchKitAppList__fetchWatchKitInfoWithForce_completion___block_invoke_2_36;
  v27[3] = &unk_278D31900;
  v29 = v20;
  v30 = v22;
  v28 = v19;
  v23 = v20;
  v24 = v19;
  v25 = v22;
  [mEMORY[0x277CEAF80] enumerateLocallyAvailableApplicationsForPairedDevice:blt_boundedWaitForActivePairedDevice options:0 withBlock:v27];

LABEL_10:
  v26 = *MEMORY[0x277D85DE8];
}

void __61__BLTWatchKitAppList__fetchWatchKitInfoWithForce_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 isInstalled])
  {
    [*(a1 + 32) addObject:v5];
  }
}

void __61__BLTWatchKitAppList__fetchWatchKitInfoWithForce_completion___block_invoke_2(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = blt_general_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) allKeys];
    *buf = 134217984;
    v28 = [v3 count];
    _os_log_impl(&dword_241FB3000, v2, OS_LOG_TYPE_DEFAULT, "Fetched watchkit apps count: %lu", buf, 0xCu);
  }

  pthread_mutex_lock((*(a1 + 40) + 16));
  objc_storeStrong((*(a1 + 40) + 8), *(a1 + 32));
  pthread_mutex_unlock((*(a1 + 40) + 16));
  [*(a1 + 40) setLoaded:1];
  if (*(a1 + 80) == 1)
  {
    v4 = *(a1 + 72);
    if (v4)
    {
      (*(v4 + 16))();
    }
  }

  else
  {
    pthread_mutex_lock((*(a1 + 40) + 16));
    v5 = [*(*(a1 + 40) + 80) copy];
    v6 = [MEMORY[0x277CBEB18] array];
    v7 = *(a1 + 40);
    v8 = *(v7 + 80);
    *(v7 + 80) = v6;

    *(*(a1 + 40) + 88) = 0;
    pthread_mutex_unlock((*(a1 + 40) + 16));
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        v13 = 0;
        do
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          (*(*(*(&v22 + 1) + 8 * v13++) + 16))();
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }
  }

  v14 = [*(a1 + 48) mutableCopy];
  [v14 minusSet:*(a1 + 56)];
  v15 = [*(a1 + 56) mutableCopy];
  [v15 minusSet:*(a1 + 48)];
  if ([v15 count] || objc_msgSend(v14, "count"))
  {
    v16 = BLTWorkQueue();
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __61__BLTWatchKitAppList__fetchWatchKitInfoWithForce_completion___block_invoke_34;
    v18[3] = &unk_278D318B0;
    v18[4] = *(a1 + 40);
    v19 = v14;
    v20 = v15;
    v21 = *(a1 + 64);
    dispatch_async(v16, v18);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __61__BLTWatchKitAppList__fetchWatchKitInfoWithForce_completion___block_invoke_34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) allObjects];
  v4 = [*(a1 + 48) allObjects];
  [WeakRetained watchKitAppList:v2 added:v3 removed:v4];
}

uint64_t __61__BLTWatchKitAppList__fetchWatchKitInfoWithForce_completion___block_invoke_2_36(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = blt_general_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __61__BLTWatchKitAppList__fetchWatchKitInfoWithForce_completion___block_invoke_2_36_cold_1(v6, v7);
    }
  }

  if (v5)
  {
    if ([v5 applicationType] == 2)
    {
      v8 = [v5 bundleIdentifier];
      v9 = [v5 counterpartIdentifiers];
      v10 = [v9 firstObject];

      v11 = [v5 deviceStatus];
      v12 = [v11 installStatus];

      v13 = -[BLTWatchKitAppDefinition initWithContainerBundleID:watchKitAppBundleID:isInstalled:runsIndependently:]([BLTWatchKitAppDefinition alloc], "initWithContainerBundleID:watchKitAppBundleID:isInstalled:runsIndependently:", v10, v8, v12 == 2, [v5 applicationMode] == 2);
      [*(a1 + 32) setObject:v13 forKeyedSubscript:v10];
      if ([(BLTWatchKitAppDefinition *)v13 isInstalled])
      {
        [*(a1 + 40) addObject:v10];
      }
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  return 1;
}

- (BLTWatchKitAppListDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __61__BLTWatchKitAppList__fetchWatchKitInfoWithForce_completion___block_invoke_2_36_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_241FB3000, a2, OS_LOG_TYPE_ERROR, "Error enumerating WatchKit apps: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end