@interface BLDownloadQueueServerProgressObserver
- (BLDownloadQueueNonUI)downloadQueue;
- (BLDownloadQueueServerProgressObserver)initWithDownloadQueue:(id)a3;
- (NSArray)downloads;
- (id)_dateFromObject:(id)a3;
- (id)_downloadStatusFromDictionary:(id)a3 outParamNewlyTrackedDownload:(BOOL *)a4;
- (id)_downloadStatusStoreID:(id)a3 storePlaylistID:(id)a4 orPermLink:(id)a5 downloadID:(id)a6 title:(id)a7 collectionTitle:(id)a8 assetKind:(id)a9 isPaused:(BOOL)a10;
- (id)_numberFromObject:(id)a3;
- (id)_stringFromObject:(id)a3;
- (void)_postDownloadCompleteNotificationWithDictionary:(id)a3 failed:(BOOL)a4;
- (void)_postDownloadProgressNotificationWithDictionary:(id)a3;
- (void)_postUpdatesForCurrentlyPausedDownloadsForObserver:(id)a3;
- (void)cancelAllPausedDownloads;
- (void)dealloc;
- (void)didFailWithUserInfo:(id)a3;
- (void)downloadCompleteWithUserInfo:(id)a3;
- (void)notifyDidCompleteForDownloadID:(id)a3;
- (void)notifyPurchaseAttemptForRequest:(id)a3;
- (void)progressWithUserInfo:(id)a3;
- (void)purchaseDidCompleteWithResponse:(id)a3;
- (void)purchaseDidFailedWithResponse:(id)a3;
- (void)purchaseFailedWithUserInfo:(id)a3;
- (void)purchaseSucceededWithUserInfo:(id)a3;
- (void)reconnectingToServiceForProxy:(id)a3;
- (void)registerObserver:(id)a3;
- (void)sendCancelCompletionNotificationForDownloadWithDownloadID:(id)a3;
- (void)sendInitialProgressNotificationForDownloadWithStoreID:(id)a3 storePlaylistID:(id)a4 orPermlink:(id)a5 downloadID:(id)a6 title:(id)a7 collectionTitle:(id)a8 assetKind:(id)a9 isPaused:(BOOL)a10 targetObserver:(id)a11;
- (void)unregisterObserver:(id)a3;
@end

@implementation BLDownloadQueueServerProgressObserver

- (NSArray)downloads
{
  os_unfair_lock_lock(&self->_activeDownloadsLock);
  v3 = [(BLDownloadQueueServerProgressObserver *)self activeDownloads];
  v4 = [v3 allValues];
  v5 = [v4 copy];

  os_unfair_lock_unlock(&self->_activeDownloadsLock);

  return v5;
}

- (BLDownloadQueueServerProgressObserver)initWithDownloadQueue:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = BLDownloadQueueServerProgressObserver;
  v5 = [(BLDownloadQueueServerProgressObserver *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_downloadQueue, v4);
    v7 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    observers = v6->_observers;
    v6->_observers = v7;

    *&v6->_observersLock._os_unfair_lock_opaque = 0;
    v9 = objc_opt_new();
    activeDownloads = v6->_activeDownloads;
    v6->_activeDownloads = v9;

    v11 = [[BLServiceProxy alloc] initWithProgressReceiver:v6 error:0];
    serviceProxy = v6->_serviceProxy;
    v6->_serviceProxy = v11;

    [(BLServiceProxy *)v6->_serviceProxy setConnectionMonitor:v6];
    [(BLDownloadQueueServerProgressObserver *)v6 reconnectingToServiceForProxy:v6->_serviceProxy];
  }

  return v6;
}

- (void)dealloc
{
  [(BLServiceProxy *)self->_serviceProxy shutdown];
  v3.receiver = self;
  v3.super_class = BLDownloadQueueServerProgressObserver;
  [(BLDownloadQueueServerProgressObserver *)&v3 dealloc];
}

- (void)cancelAllPausedDownloads
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = [(BLDownloadQueueServerProgressObserver *)self activeDownloads];
  v4 = [v3 count];

  if (v4)
  {
    v5 = BLDownloadQueueServiceProgressMonitorLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: _cancelAllPausedDownloads", buf, 2u);
    }

    os_unfair_lock_lock(&self->_observersLock);
    v6 = [(BLDownloadQueueServerProgressObserver *)self observers];
    v26 = [v6 copy];

    v7 = [(BLDownloadQueueServerProgressObserver *)self activeDownloads];
    v8 = [v7 allValues];
    v9 = [v8 copy];

    os_unfair_lock_unlock(&self->_observersLock);
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v9;
    v10 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v35;
      v25 = *v35;
      do
      {
        v13 = 0;
        v27 = v11;
        do
        {
          if (*v35 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v34 + 1) + 8 * v13);
          if ([v14 downloadPhase] == 3)
          {
            v29 = v13;
            [v14 setDownloadPhase:4];
            v32 = 0u;
            v33 = 0u;
            v30 = 0u;
            v31 = 0u;
            v15 = v26;
            v16 = [v15 countByEnumeratingWithState:&v30 objects:v41 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v31;
              do
              {
                for (i = 0; i != v17; ++i)
                {
                  if (*v31 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v20 = *(*(&v30 + 1) + 8 * i);
                  if (objc_opt_respondsToSelector())
                  {
                    v21 = BLDownloadQueueServiceProgressMonitorLog();
                    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v40 = v20;
                      _os_log_impl(&dword_241D1F000, v21, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: notifyComplete: for observer %@", buf, 0xCu);
                    }

                    v22 = [(BLDownloadQueueServerProgressObserver *)self downloadQueue];
                    v38 = v14;
                    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
                    [v20 downloadQueue:v22 downloadStates:v23 didCompleteWithError:0];
                  }
                }

                v17 = [v15 countByEnumeratingWithState:&v30 objects:v41 count:16];
              }

              while (v17);
            }

            v12 = v25;
            v11 = v27;
            v13 = v29;
          }

          ++v13;
        }

        while (v13 != v11);
        v11 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v11);
    }

    os_unfair_lock_lock(&self->_activeDownloadsLock);
    [(BLDownloadQueueServerProgressObserver *)self setActiveDownloads:0];
    os_unfair_lock_unlock(&self->_activeDownloadsLock);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)notifyPurchaseAttemptForRequest:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = BLDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = v4;
    _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: NotifyPurchaseAttemptForRequest: %@", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_observersLock);
  v6 = [(BLDownloadQueueServerProgressObserver *)self observers];
  v7 = [v6 copy];

  os_unfair_lock_unlock(&self->_observersLock);
  v28 = [(BLDownloadQueueServerProgressObserver *)self downloadQueue];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v13 = BLDefaultLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v35 = v12;
            _os_log_impl(&dword_241D1F000, v13, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: notifying observer %@ of purchaseAttemptForRequest:", buf, 0xCu);
          }

          [v12 downloadQueue:v28 purchaseAttemptForRequest:v4];
        }

        if (objc_opt_respondsToSelector())
        {
          v14 = v9;
          v15 = v10;
          v16 = BLDefaultLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v35 = v12;
            _os_log_impl(&dword_241D1F000, v16, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: notifying observer %@ of downloadQueuePurchaseAttemptForIDWithUserInfo", buf, 0xCu);
          }

          v17 = [v4 storeIdentifier];
          v18 = [v17 stringValue];
          v19 = [v4 buyParameters];
          v20 = [v4 isAudiobook];
          v21 = [v4 analyticsInfo];
          [v12 downloadQueue:v28 purchaseAttemptForID:v18 buyParams:v19 isAudioBook:v20 userInfo:v21];

          v10 = v15;
          v9 = v14;
        }

        if (objc_opt_respondsToSelector())
        {
          v22 = BLDefaultLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v35 = v12;
            _os_log_impl(&dword_241D1F000, v22, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: notifying observer %@ of downloadQueuePurchaseAttemptForID", buf, 0xCu);
          }

          v23 = [v4 storeIdentifier];
          v24 = [v23 stringValue];
          v25 = [v4 buyParameters];
          [v12 downloadQueue:v28 purchaseAttemptForID:v24 buyParams:v25 isAudioBook:{objc_msgSend(v4, "isAudiobook")}];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v9);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)registerObserver:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock(&self->_observersLock);
    v5 = [(BLDownloadQueueServerProgressObserver *)self observers];
    [v5 addObject:v4];

    os_unfair_lock_unlock(&self->_observersLock);
    v6 = BLDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_241D1F000, v6, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: Added observer: %@", &v8, 0xCu);
    }

    [(BLDownloadQueueServerProgressObserver *)self _postUpdatesForCurrentlyPausedDownloadsForObserver:v4];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)unregisterObserver:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock(&self->_observersLock);
    v5 = [(BLDownloadQueueServerProgressObserver *)self observers];
    v6 = [v5 containsObject:v4];

    if (v6)
    {
      v7 = [(BLDownloadQueueServerProgressObserver *)self observers];
      [v7 removeObject:v4];
    }

    os_unfair_lock_unlock(&self->_observersLock);
    v8 = BLDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: Removed observer: %@", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)notifyDidCompleteForDownloadID:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = BLDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v31 = v4;
    _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [DownloadQueue]: notifyDidCompleteForDownloadID", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_observersLock);
  v6 = [(BLDownloadQueueServerProgressObserver *)self observers];
  v7 = [v6 copy];

  v8 = [(BLDownloadQueueServerProgressObserver *)self activeDownloads];
  v9 = [v8 objectForKeyedSubscript:v4];

  os_unfair_lock_unlock(&self->_observersLock);
  if ([v9 downloadPhase] == 3 || objc_msgSend(v9, "downloadPhase") == 1)
  {
    v23 = v4;
    [v9 setDownloadPhase:4];
    v22 = self;
    v10 = [(BLDownloadQueueServerProgressObserver *)self downloadQueue];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v21 = v7;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v17 = BLDefaultLog();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v31 = v16;
              _os_log_impl(&dword_241D1F000, v17, OS_LOG_TYPE_DEFAULT, "[DownloadQueue]: notifyComplete: for observer %@", buf, 0xCu);
            }

            v28 = v9;
            v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
            [v16 downloadQueue:v10 downloadStates:v18 didCompleteWithError:0];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v13);
    }

    self = v22;
    v4 = v23;
    v7 = v21;
  }

  os_unfair_lock_lock(&self->_activeDownloadsLock);
  v19 = [(BLDownloadQueueServerProgressObserver *)self activeDownloads];
  [v19 setObject:0 forKeyedSubscript:v4];

  os_unfair_lock_unlock(&self->_activeDownloadsLock);
  v20 = *MEMORY[0x277D85DE8];
}

- (void)sendInitialProgressNotificationForDownloadWithStoreID:(id)a3 storePlaylistID:(id)a4 orPermlink:(id)a5 downloadID:(id)a6 title:(id)a7 collectionTitle:(id)a8 assetKind:(id)a9 isPaused:(BOOL)a10 targetObserver:(id)a11
{
  v60 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v45 = a9;
  v23 = a11;
  v24 = BLDefaultLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v55 = v20;
    _os_log_impl(&dword_241D1F000, v24, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [DownloadQueue]: sendInitialProgressNotificationForDownloadWithStoreID...", buf, 0xCu);
  }

  v44 = v22;
  if (v20)
  {
    LOBYTE(v40) = a10;
    v25 = v45;
    v26 = [(BLDownloadQueueServerProgressObserver *)self _downloadStatusStoreID:v17 storePlaylistID:v18 orPermLink:v19 downloadID:v20 title:v21 collectionTitle:v22 assetKind:v45 isPaused:v40];
    if (v26)
    {
      v43 = v17;
      v27 = [(BLDownloadQueueServerProgressObserver *)self downloadQueue];
      if (v23 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v28 = BLDefaultLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          v55 = v20;
          v56 = 2112;
          v57 = v23;
          v58 = 2112;
          v59 = v26;
          _os_log_impl(&dword_241D1F000, v28, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [DownloadQueue]: notifying target observer: %@ of downloadStatesDidChange: %@", buf, 0x20u);
        }

        v53 = v26;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
        [v23 downloadQueue:v27 downloadStatesDidChange:v29];
      }

      else
      {
        v41 = v23;
        v42 = v21;
        v46 = v20;
        os_unfair_lock_lock(&self->_observersLock);
        v30 = [(BLDownloadQueueServerProgressObserver *)self observers];
        v31 = [v30 copy];

        os_unfair_lock_unlock(&self->_observersLock);
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v29 = v31;
        v32 = [v29 countByEnumeratingWithState:&v47 objects:v52 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v48;
          do
          {
            for (i = 0; i != v33; ++i)
            {
              if (*v48 != v34)
              {
                objc_enumerationMutation(v29);
              }

              v36 = *(*(&v47 + 1) + 8 * i);
              if (![v26 isAudiobook]|| (sub_241D3AD60(v36) & 1) == 0) && (objc_opt_respondsToSelector())
              {
                v37 = BLDefaultLog();
                if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543874;
                  v55 = v46;
                  v56 = 2112;
                  v57 = v36;
                  v58 = 2112;
                  v59 = v26;
                  _os_log_impl(&dword_241D1F000, v37, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [DownloadQueue]: notifying observer: %@ of downloadStatesDidChange: %@", buf, 0x20u);
                }

                v51 = v26;
                v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
                [v36 downloadQueue:v27 downloadStatesDidChange:v38];
              }
            }

            v33 = [v29 countByEnumeratingWithState:&v47 objects:v52 count:16];
          }

          while (v33);
        }

        v20 = v46;
        v23 = v41;
        v21 = v42;
        v25 = v45;
      }

      v17 = v43;
    }
  }

  else
  {
    v26 = BLDefaultLog();
    v25 = v45;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241D1F000, v26, OS_LOG_TYPE_ERROR, "[DownloadQueue]: nil passed for downloadID to _sendInitialProgressNotificationFor...", buf, 2u);
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)sendCancelCompletionNotificationForDownloadWithDownloadID:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = BLDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v30 = v4;
    _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [DownloadQueue]: sendCancelCompletionNotificationForDownloadWithDownloadID", buf, 0xCu);
  }

  if (v4)
  {
    os_unfair_lock_lock(&self->_activeDownloadsLock);
    v6 = [(BLDownloadQueueServerProgressObserver *)self activeDownloads];
    v7 = [v6 objectForKeyedSubscript:v4];

    v8 = [(BLDownloadQueueServerProgressObserver *)self activeDownloads];
    [v8 setObject:0 forKeyedSubscript:v4];

    os_unfair_lock_unlock(&self->_activeDownloadsLock);
    if (v7)
    {
      v23 = v4;
      [v7 setDownloadPhase:4];
      os_unfair_lock_lock(&self->_observersLock);
      v9 = [(BLDownloadQueueServerProgressObserver *)self observers];
      v10 = [v9 copy];

      os_unfair_lock_unlock(&self->_observersLock);
      v11 = [(BLDownloadQueueServerProgressObserver *)self downloadQueue];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v24 objects:v33 count:16];
      if (v13)
      {
        v15 = v13;
        v16 = *v25;
        *&v14 = 138543618;
        v22 = v14;
        do
        {
          v17 = 0;
          do
          {
            if (*v25 != v16)
            {
              objc_enumerationMutation(v12);
            }

            v18 = *(*(&v24 + 1) + 8 * v17);
            if (![v7 isAudiobook]|| (sub_241D3AD60(v18) & 1) == 0) && (objc_opt_respondsToSelector())
            {
              v19 = BLDefaultLog();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v22;
                v30 = v23;
                v31 = 2112;
                v32 = v18;
                _os_log_impl(&dword_241D1F000, v19, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [DownloadQueue]: sendingCancelComplete for observer %@", buf, 0x16u);
              }

              v28 = v7;
              v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
              [v18 downloadQueue:v11 downloadStates:v20 didCompleteWithError:0];
            }

            ++v17;
          }

          while (v15 != v17);
          v15 = [v12 countByEnumeratingWithState:&v24 objects:v33 count:16];
        }

        while (v15);
      }

      v4 = v23;
    }
  }

  else
  {
    v7 = BLDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241D1F000, v7, OS_LOG_TYPE_ERROR, "[DownloadQueue]: _sendCancelCompleteNotification: nil passed for downloadID", buf, 2u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)_downloadStatusFromDictionary:(id)a3 outParamNewlyTrackedDownload:(BOOL *)a4
{
  v71 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"downloadIdentifier"];
  v8 = [(BLDownloadQueueServerProgressObserver *)self _stringFromObject:v7];

  if (v8)
  {
    os_unfair_lock_lock(&self->_activeDownloadsLock);
    v9 = [(BLDownloadQueueServerProgressObserver *)self activeDownloads];
    v10 = [v9 objectForKeyedSubscript:v8];

    if (!v10)
    {
      v10 = objc_opt_new();
      v11 = [(BLDownloadQueueServerProgressObserver *)self activeDownloads];
      [v11 setObject:v10 forKeyedSubscript:v8];

      if (a4)
      {
        *a4 = 1;
      }
    }

    os_unfair_lock_unlock(&self->_activeDownloadsLock);
    [v10 setDownloadID:v8];
    v12 = [v6 objectForKeyedSubscript:@"storeItemIdentifier"];
    v13 = [(BLDownloadQueueServerProgressObserver *)self _numberFromObject:v12];

    if (v13 && ([v13 isEqual:&unk_2853F2188]& 1) == 0)
    {
      [v10 setStoreID:v13];
    }

    v14 = [v6 objectForKeyedSubscript:@"storePlaylistIdentifier"];
    v15 = [(BLDownloadQueueServerProgressObserver *)self _numberFromObject:v14];

    if (v15)
    {
      [v10 setStorePlaylistID:v15];
    }

    v16 = [v6 objectForKeyedSubscript:@"permLink"];
    v17 = [(BLDownloadQueueServerProgressObserver *)self _stringFromObject:v16];

    if (v17)
    {
      [v10 setPermLink:v17];
    }

    v18 = BLDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [v6 objectForKeyedSubscript:@"percentComplete"];
      v66 = v13;
      v19 = v17;
      v21 = v20 = v15;
      v22 = [(BLDownloadQueueServerProgressObserver *)self _numberFromObject:v21];
      *buf = 138543618;
      v68 = v8;
      v69 = 2112;
      v70 = v22;
      _os_log_impl(&dword_241D1F000, v18, OS_LOG_TYPE_DEBUG, "(dID=%{public}@) [DownloadQueue]: notifying percentComplete:[%@]", buf, 0x16u);

      v15 = v20;
      v17 = v19;
      v13 = v66;
    }

    v23 = [v6 objectForKeyedSubscript:@"percentComplete"];
    v24 = [(BLDownloadQueueServerProgressObserver *)self _numberFromObject:v23];
    [v10 setPercentComplete:v24];

    v25 = [v6 objectForKeyedSubscript:@"estimatedTimeRemaining"];
    v26 = [(BLDownloadQueueServerProgressObserver *)self _numberFromObject:v25];
    [v10 setEstimatedTimeRemaining:v26];

    v27 = [v6 objectForKeyedSubscript:@"bytesDownloaded"];
    v28 = [(BLDownloadQueueServerProgressObserver *)self _numberFromObject:v27];
    [v10 setTransferBytesWritten:v28];

    v29 = [v6 objectForKeyedSubscript:@"bytesTotal"];
    v30 = [(BLDownloadQueueServerProgressObserver *)self _numberFromObject:v29];
    [v10 setTransferBytesExpected:v30];

    v31 = [v6 objectForKeyedSubscript:@"downloadPhase"];
    v32 = [(BLDownloadQueueServerProgressObserver *)self _numberFromObject:v31];

    [v10 setDownloadPhase:{objc_msgSend(v32, "integerValue")}];
    v33 = [v6 objectForKeyedSubscript:@"artistName"];
    v34 = [(BLDownloadQueueServerProgressObserver *)self _stringFromObject:v33];
    [v10 setArtistName:v34];

    v35 = [v6 objectForKeyedSubscript:@"title"];
    v36 = [(BLDownloadQueueServerProgressObserver *)self _stringFromObject:v35];
    [v10 setTitle:v36];

    v37 = [v6 objectForKeyedSubscript:@"subtitle"];
    v38 = [(BLDownloadQueueServerProgressObserver *)self _stringFromObject:v37];
    [v10 setSubtitle:v38];

    v39 = [v6 objectForKeyedSubscript:@"collectionArtistName"];
    v40 = [(BLDownloadQueueServerProgressObserver *)self _stringFromObject:v39];
    [v10 setCollectionArtistName:v40];

    v41 = [v6 objectForKeyedSubscript:@"collectionTitle"];
    v42 = [(BLDownloadQueueServerProgressObserver *)self _stringFromObject:v41];
    [v10 setCollectionTitle:v42];

    v43 = [v6 objectForKeyedSubscript:@"genre"];
    v44 = [(BLDownloadQueueServerProgressObserver *)self _stringFromObject:v43];
    [v10 setGenre:v44];

    v45 = [v6 objectForKeyedSubscript:@"kind"];
    v46 = [(BLDownloadQueueServerProgressObserver *)self _stringFromObject:v45];
    [v10 setAssetKind:v46];

    v47 = [v6 objectForKeyedSubscript:@"thumbnailImageURL"];
    v48 = [(BLDownloadQueueServerProgressObserver *)self _stringFromObject:v47];
    [v10 setThumbnailImageURL:v48];

    v49 = [v6 objectForKeyedSubscript:@"isAudiobook"];
    v50 = [(BLDownloadQueueServerProgressObserver *)self _numberFromObject:v49];
    [v10 setIsAudiobook:{objc_msgSend(v50, "BOOLValue")}];

    v51 = [v6 objectForKeyedSubscript:@"isRestore"];
    v52 = [(BLDownloadQueueServerProgressObserver *)self _numberFromObject:v51];
    [v10 setIsRestore:{objc_msgSend(v52, "BOOLValue")}];

    v53 = [v6 objectForKeyedSubscript:@"isSample"];
    v54 = [(BLDownloadQueueServerProgressObserver *)self _numberFromObject:v53];
    [v10 setIsSample:{objc_msgSend(v54, "BOOLValue")}];

    v55 = [v6 objectForKeyedSubscript:@"isPurchase"];
    v56 = [(BLDownloadQueueServerProgressObserver *)self _numberFromObject:v55];
    [v10 setIsPurchase:{objc_msgSend(v56, "BOOLValue")}];

    v57 = [v6 objectForKeyedSubscript:@"purchaseDate"];
    v58 = [(BLDownloadQueueServerProgressObserver *)self _dateFromObject:v57];
    [v10 setPurchaseDate:v58];

    v59 = [v6 objectForKeyedSubscript:@"persistentIdentifier"];
    v60 = [(BLDownloadQueueServerProgressObserver *)self _numberFromObject:v59];
    [v10 setPersistentIdentifier:{objc_msgSend(v60, "unsignedLongValue")}];

    v61 = [v6 objectForKeyedSubscript:@"storeAccountIdentifier"];
    v62 = [(BLDownloadQueueServerProgressObserver *)self _numberFromObject:v61];
    [v10 setStoreAccountIdentifier:v62];

    os_unfair_lock_lock(&self->_activeDownloadsLock);
    v63 = [(BLDownloadQueueServerProgressObserver *)self activeDownloads];
    [v63 setObject:v10 forKeyedSubscript:v8];

    os_unfair_lock_unlock(&self->_activeDownloadsLock);
  }

  else
  {
    v13 = BLDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v68 = v6;
      _os_log_impl(&dword_241D1F000, v13, OS_LOG_TYPE_ERROR, "[DownloadQueue]: _downloadStatusFromDictionary: failed to retrieve downloadID from dictionary %@", buf, 0xCu);
    }

    v10 = 0;
  }

  v64 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)_postUpdatesForCurrentlyPausedDownloadsForObserver:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(BLDownloadQueueServerProgressObserver *)self serviceProxy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_241D3BAC8;
  v7[3] = &unk_278D17610;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [v5 fetchDownloadListWithReply:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_postDownloadProgressNotificationWithDictionary:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v39 = 0;
  v5 = [(BLDownloadQueueServerProgressObserver *)self _downloadStatusFromDictionary:v4 outParamNewlyTrackedDownload:&v39];
  v6 = [v5 copy];
  v7 = [v6 downloadID];
  v8 = BLDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v44 = v7;
    v45 = 2048;
    v46 = v5;
    v47 = 2048;
    v48 = v6;
    v49 = 2112;
    v50 = v4;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [DownloadQueue] Copied download status %p to download status %p for dictionary %@", buf, 0x2Au);
  }

  if (v7)
  {
    v30 = v7;
    v28 = v5;
    v29 = v4;
    os_unfair_lock_lock(&self->_observersLock);
    v9 = [(BLDownloadQueueServerProgressObserver *)self observers];
    v10 = [v9 copy];

    os_unfair_lock_unlock(&self->_observersLock);
    if (v39 == 1)
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v27 = v10;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v35 objects:v42 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v36;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v36 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v35 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              v17 = BLDefaultLog();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                v44 = v30;
                v45 = 2112;
                v46 = v16;
                _os_log_impl(&dword_241D1F000, v17, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [DownloadQueue]: notifying observer %@ of downloadManagerDownloadsDidChange", buf, 0x16u);
              }

              [v16 downloadQueueDownloadsDidChange:0];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v35 objects:v42 count:16];
        }

        while (v13);
      }

      v10 = v27;
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v18 = v10;
    v19 = [v18 countByEnumeratingWithState:&v31 objects:v41 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v32;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v32 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v31 + 1) + 8 * j);
          if (![v6 isAudiobook] || (sub_241D3AD60(v23) & 1) == 0) && (objc_opt_respondsToSelector())
          {
            v24 = BLDefaultLog();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543874;
              v44 = v30;
              v45 = 2112;
              v46 = v23;
              v47 = 2112;
              v48 = v6;
              _os_log_impl(&dword_241D1F000, v24, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [DownloadQueue]: notifying observer: %@ of downloadStatesDidChange: %@", buf, 0x20u);
            }

            v40 = v6;
            v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
            [v23 downloadQueue:0 downloadStatesDidChange:v25];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v31 objects:v41 count:16];
      }

      while (v20);
    }

    v5 = v28;
    v4 = v29;
    v7 = v30;
  }

  else
  {
    v18 = BLDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241D1F000, v18, OS_LOG_TYPE_ERROR, "[DownloadQueue]: _notifyProgress: nil passed for downloadID", buf, 2u);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_postDownloadCompleteNotificationWithDictionary:(id)a3 failed:(BOOL)a4
{
  v4 = a4;
  v75 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v64 = 0;
  v49 = self;
  v7 = [(BLDownloadQueueServerProgressObserver *)self _downloadStatusFromDictionary:v6 outParamNewlyTrackedDownload:&v64];
  v8 = [v7 downloadID];
  v9 = BLDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v70 = v8;
    v71 = 2048;
    v72 = v7;
    v73 = 2112;
    v74 = v6;
    _os_log_impl(&dword_241D1F000, v9, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [DownloadQueue] Obtained download status %p for dictionary %@", buf, 0x20u);
  }

  v50 = v7;
  if (v8)
  {
    os_unfair_lock_lock(&v49->_observersLock);
    v10 = [(BLDownloadQueueServerProgressObserver *)v49 observers];
    v11 = [v10 copy];

    os_unfair_lock_unlock(&v49->_observersLock);
    v12 = BLDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v11 count];
      *buf = 138543618;
      v70 = v8;
      v71 = 2048;
      v72 = v13;
      _os_log_impl(&dword_241D1F000, v12, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [DownloadQueue]: _postDownloadCompleteNotification: About to notify %lu observers", buf, 0x16u);
    }

    v51 = v8;
    v47 = v6;

    if (v64 == 1)
    {
      v48 = v4;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v46 = v11;
      v14 = v11;
      v15 = [v14 countByEnumeratingWithState:&v60 objects:v68 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v61;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v61 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v60 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              v20 = BLDefaultLog();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                v70 = v51;
                v71 = 2112;
                v72 = v19;
                _os_log_impl(&dword_241D1F000, v20, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [DownloadQueue]: download added, notifying observer %@ of downloadQueueDownloadsDidChange", buf, 0x16u);
              }

              v21 = [(BLDownloadQueueServerProgressObserver *)v49 downloadQueue];
              [v19 downloadQueueDownloadsDidChange:v21];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v60 objects:v68 count:16];
        }

        while (v16);
      }

      v7 = v50;
      v4 = v48;
      v11 = v46;
    }

    if (v4)
    {
      v22 = BLError(33, @"download failed", @"Download either failed or was cancelled by the user");
    }

    else
    {
      v22 = 0;
    }

    v24 = [(BLDownloadQueueServerProgressObserver *)v49 downloadQueue];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v25 = v11;
    v26 = [v25 countByEnumeratingWithState:&v56 objects:v67 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v57;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v57 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v56 + 1) + 8 * j);
          if (![v7 isAudiobook] || (sub_241D3AD60(v30) & 1) == 0) && (objc_opt_respondsToSelector())
          {
            v31 = BLDefaultLog();
            v32 = v31;
            if (v22)
            {
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543874;
                v70 = v51;
                v71 = 2112;
                v72 = v30;
                v73 = 2112;
                v74 = v22;
                v33 = v32;
                v34 = OS_LOG_TYPE_ERROR;
                v35 = "(dID=%{public}@) [DownloadQueue]: notifying observer %@ download completed with error:  %@";
                v36 = 32;
                goto LABEL_37;
              }
            }

            else if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v70 = v51;
              v71 = 2112;
              v72 = v30;
              v33 = v32;
              v34 = OS_LOG_TYPE_DEFAULT;
              v35 = "(dID=%{public}@) [DownloadQueue]: notifying observer %@ download completed";
              v36 = 22;
LABEL_37:
              _os_log_impl(&dword_241D1F000, v33, v34, v35, buf, v36);
            }

            v7 = v50;
            v66 = v50;
            v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v66 count:1];
            [v30 downloadQueue:v24 downloadStates:v37 didCompleteWithError:v22];

            continue;
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v56 objects:v67 count:16];
      }

      while (v27);
    }

    os_unfair_lock_lock(&v49->_activeDownloadsLock);
    v38 = [(BLDownloadQueueServerProgressObserver *)v49 activeDownloads];
    [v38 setObject:0 forKeyedSubscript:v51];

    os_unfair_lock_unlock(&v49->_activeDownloadsLock);
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v23 = v25;
    v39 = [v23 countByEnumeratingWithState:&v52 objects:v65 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v53;
      do
      {
        for (k = 0; k != v40; ++k)
        {
          if (*v53 != v41)
          {
            objc_enumerationMutation(v23);
          }

          v43 = *(*(&v52 + 1) + 8 * k);
          if (objc_opt_respondsToSelector())
          {
            v44 = BLDefaultLog();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v70 = v51;
              v71 = 2112;
              v72 = v43;
              _os_log_impl(&dword_241D1F000, v44, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [DownloadQueue]: notifying observer %@ of downloadQueueDownloadsDidChange", buf, 0x16u);
            }

            [v43 downloadQueueDownloadsDidChange:v24];
          }
        }

        v40 = [v23 countByEnumeratingWithState:&v52 objects:v65 count:16];
      }

      while (v40);
    }

    v6 = v47;
    v8 = v51;
  }

  else
  {
    v23 = BLDefaultLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v70 = v6;
      _os_log_impl(&dword_241D1F000, v23, OS_LOG_TYPE_ERROR, "[DownloadQueue]: _postDownloadCompleteNotificationWithDictionary: failed to retrieve downloadID from downloadStatus %@", buf, 0xCu);
    }
  }

  v45 = *MEMORY[0x277D85DE8];
}

- (void)purchaseDidCompleteWithResponse:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = BLDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 downloadID];
    *buf = 138543362;
    v24 = v6;
    _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [DownloadQueue]: purchaseDidCompleteWithResponse", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_observersLock);
  v7 = [(BLDownloadQueueServerProgressObserver *)self observers];
  v8 = [v7 copy];

  os_unfair_lock_unlock(&self->_observersLock);
  v9 = [(BLDownloadQueueServerProgressObserver *)self downloadQueue];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v16 = BLDefaultLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [v4 downloadID];
            *buf = 138543618;
            v24 = v17;
            v25 = 2112;
            v26 = v15;
            _os_log_impl(&dword_241D1F000, v16, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [DownloadQueue]: notifying observer %@ of purchaseDidComplete", buf, 0x16u);
          }

          [v15 downloadQueue:v9 purchasedDidCompleteWithResponse:v4];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v12);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)purchaseDidFailedWithResponse:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = BLDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 downloadID];
    *buf = 138543362;
    v24 = v6;
    _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [DownloadQueue]: purchaseDidFailedWithResponse", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_observersLock);
  v7 = [(BLDownloadQueueServerProgressObserver *)self observers];
  v8 = [v7 copy];

  os_unfair_lock_unlock(&self->_observersLock);
  v9 = [(BLDownloadQueueServerProgressObserver *)self downloadQueue];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v16 = BLDefaultLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [v4 downloadID];
            *buf = 138543618;
            v24 = v17;
            v25 = 2112;
            v26 = v15;
            _os_log_impl(&dword_241D1F000, v16, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [DownloadQueue]: notifying observer %@ of purchaseDidFail", buf, 0x16u);
          }

          [v15 downloadQueue:v9 purchasedDidFailWithResponse:v4];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v12);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_stringFromObject:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v4 = BUDynamicCast();
      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v5 = BUDynamicCast();
      v4 = [v5 stringValue];

      goto LABEL_10;
    }

    v6 = BLDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412546;
      v11 = v3;
      v12 = 2112;
      v13 = objc_opt_class();
      v7 = v13;
      _os_log_impl(&dword_241D1F000, v6, OS_LOG_TYPE_ERROR, "The object [%@] of class: [%@] could not be converted to neither an NSString nor an NSNumber", &v10, 0x16u);
    }
  }

  v4 = 0;
LABEL_10:

  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_numberFromObject:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v4 = BUDynamicCast();
      goto LABEL_8;
    }

    v5 = BLDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412546;
      v10 = v3;
      v11 = 2112;
      v12 = objc_opt_class();
      v6 = v12;
      _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_ERROR, "The object [%@] of class: [%@] could not be converted to an NSNumber", &v9, 0x16u);
    }
  }

  v4 = 0;
LABEL_8:

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_dateFromObject:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v4 = BUDynamicCast();
      goto LABEL_8;
    }

    v5 = BLDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412546;
      v10 = v3;
      v11 = 2112;
      v12 = objc_opt_class();
      v6 = v12;
      _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_ERROR, "The object [%@] of class: [%@] could not be converted to an NSDate", &v9, 0x16u);
    }
  }

  v4 = 0;
LABEL_8:

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_downloadStatusStoreID:(id)a3 storePlaylistID:(id)a4 orPermLink:(id)a5 downloadID:(id)a6 title:(id)a7 collectionTitle:(id)a8 assetKind:(id)a9 isPaused:(BOOL)a10
{
  v37 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  if (v19)
  {
    os_unfair_lock_lock(&self->_activeDownloadsLock);
    v23 = [(BLDownloadQueueServerProgressObserver *)self activeDownloads];
    v24 = [v23 objectForKeyedSubscript:v19];

    if (!v24)
    {
      v24 = objc_opt_new();
      v25 = [(BLDownloadQueueServerProgressObserver *)self activeDownloads];
      [v25 setObject:v24 forKeyedSubscript:v19];
    }

    os_unfair_lock_unlock(&self->_activeDownloadsLock);
    [v24 setDownloadID:v19];
    if (v16)
    {
      if ([v16 longLongValue])
      {
        [v24 setStoreID:v16];
        if ([v17 longLongValue])
        {
          [v24 setStorePlaylistID:v17];
        }

        goto LABEL_13;
      }
    }

    else
    {
      if ([v18 length])
      {
        [v24 setPermLink:v18];
LABEL_13:
        v27 = 0;
LABEL_18:
        if ([v22 length])
        {
          [v24 setAssetKind:v22];
        }

        if (v24)
        {
          v29 = v27;
        }

        else
        {
          v29 = 1;
        }

        if ((v29 & 1) == 0)
        {
          [v24 setIsAudiobook:{objc_msgSend(v22, "isEqualToString:", @"book"}];
          if (a10)
          {
            v30 = 3;
          }

          else
          {
            v31 = BLDefaultLog();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v36 = v19;
              _os_log_impl(&dword_241D1F000, v31, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [DownloadQueue]: setting percentComplete 5 percent", buf, 0xCu);
            }

            [v24 setPercentComplete:&unk_2853F21E8];
            v30 = 1;
          }

          [v24 setDownloadPhase:v30];
          os_unfair_lock_lock(&self->_activeDownloadsLock);
          v32 = [(BLDownloadQueueServerProgressObserver *)self activeDownloads];
          [v32 setObject:v24 forKeyedSubscript:v19];

          os_unfair_lock_unlock(&self->_activeDownloadsLock);
        }

        if ([v20 length])
        {
          [v24 setTitle:v20];
        }

        if ([v21 length])
        {
          [v24 setCollectionTitle:v21];
        }

        goto LABEL_34;
      }

      v28 = BLDefaultLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_241D1F000, v28, OS_LOG_TYPE_ERROR, "[DownloadQueue]: we do not have enough information to post initial progress for this download", buf, 2u);
      }

      v24 = 0;
    }

    v27 = 1;
    goto LABEL_18;
  }

  v26 = BLDefaultLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_241D1F000, v26, OS_LOG_TYPE_ERROR, "[DownloadQueue]: nil downloadID passed to _downloadStatusSToreID:storePlaylistID:orPermLink:downloadID:isPaused:isAudiobook:", buf, 2u);
  }

  v24 = 0;
LABEL_34:

  v33 = *MEMORY[0x277D85DE8];

  return v24;
}

- (void)didFailWithUserInfo:(id)a3
{
  v4 = a3;
  v5 = BLDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_DEFAULT, "[DownloadQueue] didFailWithUserInfo:", v6, 2u);
  }

  [(BLDownloadQueueServerProgressObserver *)self _postDownloadCompleteNotificationWithDictionary:v4 failed:1];
}

- (void)downloadCompleteWithUserInfo:(id)a3
{
  v4 = a3;
  v5 = BLDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_DEFAULT, "[DownloadQueue] downloadCompleteWithUserInfo:", v6, 2u);
  }

  [(BLDownloadQueueServerProgressObserver *)self _postDownloadCompleteNotificationWithDictionary:v4 failed:0];
}

- (void)progressWithUserInfo:(id)a3
{
  v4 = a3;
  v5 = BLDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_DEFAULT, "[DownloadQueue] progressWithUserInfo", v6, 2u);
  }

  [(BLDownloadQueueServerProgressObserver *)self _postDownloadProgressNotificationWithDictionary:v4];
}

- (void)purchaseFailedWithUserInfo:(id)a3
{
  v4 = a3;
  v5 = BLDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_DEFAULT, "[DownloadQueue] purchaseFailedWithUserInfo", v7, 2u);
  }

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 postNotificationName:@"com.apple.BLService.DownloadQueue.Purchase.Failed" object:self userInfo:v4];
}

- (void)purchaseSucceededWithUserInfo:(id)a3
{
  v4 = a3;
  v5 = BLDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_DEFAULT, "[DownloadQueue] purchaseSucceededWithUserInfo", v7, 2u);
  }

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 postNotificationName:@"com.apple.BLService.DownloadQueue.Purchase.Succeeded" object:self userInfo:v4];
}

- (void)reconnectingToServiceForProxy:(id)a3
{
  v3 = a3;
  v4 = BLDownloadQueueServiceProgressMonitorLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_241D1F000, v4, OS_LOG_TYPE_DEFAULT, "[BLDownloadQueueServerProgressObserver] registering to monitor progress.", v5, 2u);
  }

  [v3 monitorProgressWithReply:&unk_2853E2908];
}

- (BLDownloadQueueNonUI)downloadQueue
{
  WeakRetained = objc_loadWeakRetained(&self->_downloadQueue);

  return WeakRetained;
}

@end