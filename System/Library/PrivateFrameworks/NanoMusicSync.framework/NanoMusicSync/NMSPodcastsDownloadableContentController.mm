@interface NMSPodcastsDownloadableContentController
@end

@implementation NMSPodcastsDownloadableContentController

void __55__NMSPodcastsDownloadableContentController_Legacy_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _processLatestPersistenHistoryChanges];
}

void __55__NMSPodcastsDownloadableContentController_Legacy_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained lastMergedToken];

    WeakRetained = v3;
    if (!v2)
    {
      [v3 _resetPersistentHistoryTokenAndNotifyObservers];
      WeakRetained = v3;
    }
  }
}

void __63__NMSPodcastsDownloadableContentController_Legacy_setDelegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_storeWeak(WeakRetained + 5, *(a1 + 32));
    WeakRetained = v3;
  }
}

uint64_t __59__NMSPodcastsDownloadableContentController_Legacy_delegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8]();
}

void __75__NMSPodcastsDownloadableContentController_Legacy_extensionAccessDidChange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained lastMergedToken];

    if (v2)
    {
      [v3 _notifyDelegateContentDidChange];
    }

    else
    {
      [v3 _resetPersistentHistoryTokenAndNotifyObservers];
    }

    WeakRetained = v3;
  }
}

void __82__NMSPodcastsDownloadableContentController_Legacy__notifyDelegateContentDidChange__block_invoke(uint64_t a1)
{
  v2 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "NMSPodcastsDownloadableContentObserver scheduling delegate notification for 8s from now.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notifyDelegateContentDidChangeImmediately];
}

void __88__NMSPodcastsDownloadableContentController_Legacy__processLatestPersistenHistoryChanges__block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __88__NMSPodcastsDownloadableContentController_Legacy__processLatestPersistenHistoryChanges__block_invoke_21(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __88__NMSPodcastsDownloadableContentController_Legacy__processLatestPersistenHistoryChanges__block_invoke_22(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = [*(*(*(a1 + 40) + 8) + 40) result];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        if ([*(a1 + 32) _shouldMergeHistoryTransaction:v7])
        {
          *(*(*(a1 + 48) + 8) + 24) = 1;
          v9 = _MTLogCategoryDatabase();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            *v17 = 0;
            _os_log_impl(&dword_25B27B000, v9, OS_LOG_TYPE_INFO, "NMSPodcastsDownloadableContentObserver merging changes", v17, 2u);
          }

          v10 = [MEMORY[0x277D3DAE8] sharedInstance];
          v11 = [v10 coreDataContainer];
          v12 = [v7 objectIDNotification];
          [v11 mergeFromContextDidSaveNotification:v12];
        }

        v13 = [v7 token];
        v14 = *(*(a1 + 56) + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = v13;

        objc_autoreleasePoolPop(v8);
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __97__NMSPodcastsDownloadableContentController_Legacy__resetPersistentHistoryTokenAndNotifyObservers__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) persistentStoreCoordinator];
  v2 = [v5 currentPersistentHistoryTokenFromStores:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end