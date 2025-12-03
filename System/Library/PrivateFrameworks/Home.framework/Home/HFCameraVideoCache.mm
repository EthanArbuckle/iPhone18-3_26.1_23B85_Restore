@interface HFCameraVideoCache
- (BOOL)_queueVideoDownloadForClip:(id)clip priority:(int64_t)priority;
- (BOOL)diskCache:(id)cache shouldAddExistingFileToCache:(id)toCache;
- (HFCameraVideoCache)initWithVideoDownloader:(id)downloader;
- (HFCameraVideoCacheDelegate)delegate;
- (double)_cacheDurationLimit;
- (double)_expensiveNetworkCacheDurationLimit;
- (double)cacheDurationLimit;
- (double)expensiveNetworkCacheDurationLimit;
- (id)_delegate;
- (id)_existingDownloadOperationForClip:(id)clip;
- (unint64_t)diskCacheLimit;
- (void)_cacheClip:(id)clip;
- (void)_cacheClip:(id)clip inClips:(id)clips;
- (void)_gloablNotifyDidAddVideoForClip:(id)clip;
- (void)_limitDiskCacheToPercentageofAvailableDiskSpace:(unint64_t)space;
- (void)_notifyVideoExistsForClip:(id)clip atURL:(id)l;
- (void)_setCacheDurationLimit:(double)limit;
- (void)_setDelegate:(id)delegate;
- (void)cacheClip:(id)clip;
- (void)cacheClip:(id)clip inClips:(id)clips;
- (void)dealloc;
- (void)didDownloadVideoFileForClip:(id)clip toURL:(id)l;
- (void)diskCache:(id)cache didEvictFileFromDisk:(id)disk forUniqueIdentifier:(id)identifier;
- (void)foundVideoFileForClip:(id)clip atURL:(id)l;
- (void)limitDiskCacheToPercentageofAvailableDiskSpace:(unint64_t)space;
- (void)networkDidBecomeExpensive:(id)expensive;
- (void)setCacheDurationLimit:(double)limit;
- (void)setDelegate:(id)delegate;
- (void)setDiskCacheLimit:(unint64_t)limit;
- (void)waitForOperations;
@end

@implementation HFCameraVideoCache

- (HFCameraVideoCache)initWithVideoDownloader:(id)downloader
{
  downloaderCopy = downloader;
  v24.receiver = self;
  v24.super_class = HFCameraVideoCache;
  v6 = [(HFCameraVideoCache *)&v24 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_videoDownloader, downloader);
    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v9 = dispatch_queue_create("com.apple.Home.HFCameraVideoCache.workQueue", v8);
    workQueue = v7->_workQueue;
    v7->_workQueue = v9;

    v11 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = v7->_operationQueue;
    v7->_operationQueue = v11;

    [(NSOperationQueue *)v7->_operationQueue setMaxConcurrentOperationCount:5];
    v13 = +[HFCameraUtilities overrideVideoCacheDurationLimit];
    v14 = v13;
    if (v13)
    {
      [v13 doubleValue];
    }

    else
    {
      v15 = 120.0;
    }

    v7->_cacheDurationLimit = v15;
    v7->_expensiveNetworkCacheDurationLimit = ((v15 * 0.5) & ~((v15 * 0.5) >> 31));
    v16 = [HFDiskCache alloc];
    v17 = +[HFCameraUtilities videoCachesDirectoryURL];
    v18 = [(HFDiskCache *)v16 initWithCacheDirectoryURL:v17 diskCacheDelegate:v7];
    diskCache = v7->_diskCache;
    v7->_diskCache = v18;

    v20 = +[HFCameraUtilities overrideVideoDiskCacheLimit];
    v21 = v20;
    if (v20)
    {
      -[HFCache setTotalCostLimit:](v7->_diskCache, "setTotalCostLimit:", [v20 unsignedLongValue]);
    }

    else
    {
      [(HFCache *)v7->_diskCache setTotalCostLimit:150000000];
      [(HFCameraVideoCache *)v7 limitDiskCacheToPercentageofAvailableDiskSpace:25];
    }

    v22 = +[HFNetworkMonitor sharedInstance];
    [v22 addObserver:v7];
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[HFNetworkMonitor sharedInstance];
  [v3 removeObserver:self];

  [(HFCameraVideoCache *)self waitForOperations];
  v4.receiver = self;
  v4.super_class = HFCameraVideoCache;
  [(HFCameraVideoCache *)&v4 dealloc];
}

- (void)waitForOperations
{
  if (+[HFUtilities isInternalTest])
  {
    operationQueue = [(HFCameraVideoCache *)self operationQueue];
    [operationQueue waitUntilAllOperationsAreFinished];
  }
}

- (void)cacheClip:(id)clip inClips:(id)clips
{
  clipCopy = clip;
  clipsCopy = clips;
  workQueue = [(HFCameraVideoCache *)self workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  if (+[HFUtilities isInternalTest])
  {
    [(HFCameraVideoCache *)self _cacheClip:clipCopy inClips:clipsCopy];
  }

  else
  {
    workQueue2 = [(HFCameraVideoCache *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__HFCameraVideoCache_cacheClip_inClips___block_invoke;
    block[3] = &unk_277DF32A8;
    block[4] = self;
    v11 = clipCopy;
    v12 = clipsCopy;
    dispatch_async(workQueue2, block);
  }
}

- (void)_cacheClip:(id)clip inClips:(id)clips
{
  clipCopy = clip;
  clipsCopy = clips;
  if (!+[HFUtilities isInternalTest])
  {
    workQueue = [(HFCameraVideoCache *)self workQueue];
    dispatch_assert_queue_V2(workQueue);
  }

  if (!clipCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFCameraVideoCache.m" lineNumber:116 description:{@"Invalid parameter not satisfying: %@", @"primaryClip != nil"}];
  }

  if (![clipsCopy count])
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HFCameraVideoCache.m" lineNumber:117 description:{@"Invalid parameter not satisfying: %@", @"clips.count > 0"}];
  }

  v10 = [clipsCopy indexOfObject:clipCopy];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    hf_prettyDescription = [clipCopy hf_prettyDescription];
    hf_prettyDescription2 = [clipsCopy hf_prettyDescription];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"HFCameraVideoCache.m" lineNumber:120 description:{@"clip: %@ is not in clips: %@", hf_prettyDescription, hf_prettyDescription2}];
  }

  operationQueue = [(HFCameraVideoCache *)self operationQueue];
  operations = [operationQueue operations];
  [operations na_each:&__block_literal_global_42];

  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v19[3] = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __41__HFCameraVideoCache__cacheClip_inClips___block_invoke_2;
  v18[3] = &unk_277DF5C58;
  v18[4] = self;
  v18[5] = v19;
  v18[6] = v10;
  [clipsCopy hf_fanOutAtIndex:v10 usingBlock:v18];
  _Block_object_dispose(v19, 8);
}

void __41__HFCameraVideoCache__cacheClip_inClips___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if ([v7 isComplete])
  {
    v8 = [*(a1 + 32) diskCache];
    v9 = [v7 uniqueIdentifier];
    v10 = [v8 objectForKey:v9];

    if (v10)
    {
      [v7 duration];
      *(*(*(a1 + 40) + 8) + 24) = v11 + *(*(*(a1 + 40) + 8) + 24);
      v12 = HFLogForCategory(0xDuLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v7 hf_prettyDescription];
        v14 = [v10 path];
        v38 = 138412546;
        v39 = v13;
        v40 = 2112;
        v41 = v14;
        _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "[SKIPPED] video exists; clip: %@; path: %@", &v38, 0x16u);
      }

      [*(a1 + 32) _notifyVideoExistsForClip:v7 atURL:v10];
      goto LABEL_36;
    }

    v16 = *(a1 + 48);
    v17 = -4;
    if (v16 + 1 == a3)
    {
      v17 = 0;
    }

    if (v16 - 1 == a3)
    {
      v18 = 4;
    }

    else
    {
      v18 = v17;
    }

    if (v16 == a3)
    {
      v19 = 8;
    }

    else
    {
      v19 = v18;
    }

    v20 = [*(a1 + 32) _existingDownloadOperationForClip:v7];
    if (v20)
    {
      v21 = HFLogForCategory(0xDuLL);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v7 hf_prettyDescription];
        v38 = 138412290;
        v39 = v22;
        _os_log_impl(&dword_20D9BF000, v21, OS_LOG_TYPE_DEFAULT, "[SKIPPED] download operation exists; clip: %@", &v38, 0xCu);
      }

      [v20 setQueuePriority:v19];
      goto LABEL_29;
    }

    v23 = +[HFNetworkMonitor sharedInstance];
    v24 = [v23 isNetworkExpensive];
    v25 = *(a1 + 32);
    if (v24)
    {
      [v25 _expensiveNetworkCacheDurationLimit];
    }

    else
    {
      [v25 _cacheDurationLimit];
    }

    v27 = v26;

    v28 = *(*(*(a1 + 40) + 8) + 24);
    [v7 duration];
    v30 = v28 + v29;
    v31 = v30 <= v27;
    v32 = vabdd_f64(v30, v27);
    v33 = v31 || v32 < 2.22044605e-16;
    if (v33 || (v32 = fabs(*(*(*(a1 + 40) + 8) + 24)), v32 < 2.22044605e-16))
    {
      if ([*(a1 + 32) _queueVideoDownloadForClip:v7 priority:{v19, v32}])
      {
LABEL_29:
        [v7 duration];
        *(*(*(a1 + 40) + 8) + 24) = v34 + *(*(*(a1 + 40) + 8) + 24);
LABEL_35:

        v10 = 0;
        goto LABEL_36;
      }
    }

    else
    {
      v35 = HFLogForCategory(0xDuLL);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = [v7 hf_prettyDescription];
        v38 = 138412290;
        v39 = v36;
        _os_log_impl(&dword_20D9BF000, v35, OS_LOG_TYPE_DEFAULT, "[SKIPPED] clip duration takes us over the limit; clip: %@", &v38, 0xCu);
      }
    }

    *a4 = 1;
    goto LABEL_35;
  }

  v10 = HFLogForCategory(0xDuLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v7 hf_prettyDescription];
    v38 = 138412290;
    v39 = v15;
    _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "[SKIPPED] incomplete clip: %@", &v38, 0xCu);
  }

LABEL_36:

  v37 = *MEMORY[0x277D85DE8];
}

- (void)cacheClip:(id)clip
{
  clipCopy = clip;
  workQueue = [(HFCameraVideoCache *)self workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  if (+[HFUtilities isInternalTest])
  {
    [(HFCameraVideoCache *)self _cacheClip:clipCopy];
  }

  else
  {
    workQueue2 = [(HFCameraVideoCache *)self workQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __32__HFCameraVideoCache_cacheClip___block_invoke;
    v7[3] = &unk_277DF3370;
    v7[4] = self;
    v8 = clipCopy;
    dispatch_async(workQueue2, v7);
  }
}

- (void)_cacheClip:(id)clip
{
  v23 = *MEMORY[0x277D85DE8];
  clipCopy = clip;
  if (!+[HFUtilities isInternalTest])
  {
    workQueue = [(HFCameraVideoCache *)self workQueue];
    dispatch_assert_queue_V2(workQueue);
  }

  if (!clipCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFCameraVideoCache.m" lineNumber:207 description:{@"Invalid parameter not satisfying: %@", @"clip != nil"}];
  }

  if ([clipCopy isComplete])
  {
    diskCache = [(HFCameraVideoCache *)self diskCache];
    uniqueIdentifier = [clipCopy uniqueIdentifier];
    v9 = [diskCache objectForKey:uniqueIdentifier];

    if (v9)
    {
      v10 = HFLogForCategory(0xDuLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        hf_prettyDescription = [clipCopy hf_prettyDescription];
        path = [v9 path];
        *buf = 138412546;
        v20 = hf_prettyDescription;
        v21 = 2112;
        v22 = path;
        _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "[SKIPPED] video exists; clip: %@; path: %@", buf, 0x16u);
      }

      [(HFCameraVideoCache *)self _notifyVideoExistsForClip:clipCopy atURL:v9];
    }

    else
    {
      v14 = [(HFCameraVideoCache *)self _existingDownloadOperationForClip:clipCopy];
      if (v14)
      {
        v15 = HFLogForCategory(0xDuLL);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          hf_prettyDescription2 = [clipCopy hf_prettyDescription];
          *buf = 138412290;
          v20 = hf_prettyDescription2;
          _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "[SKIPPED] download operation exists; clip: %@", buf, 0xCu);
        }

        [v14 setQueuePriority:8];
      }

      else
      {
        [(HFCameraVideoCache *)self _queueVideoDownloadForClip:clipCopy priority:4];
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = HFLogForCategory(0xDuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      hf_prettyDescription3 = [clipCopy hf_prettyDescription];
      *buf = 138412290;
      v20 = hf_prettyDescription3;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "[SKIPPED] incomplete clip: %@", buf, 0xCu);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_existingDownloadOperationForClip:(id)clip
{
  clipCopy = clip;
  operationQueue = [(HFCameraVideoCache *)self operationQueue];
  operations = [operationQueue operations];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__HFCameraVideoCache__existingDownloadOperationForClip___block_invoke;
  v10[3] = &unk_277DF5C80;
  v11 = clipCopy;
  v7 = clipCopy;
  v8 = [operations na_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __56__HFCameraVideoCache__existingDownloadOperationForClip___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 clip];
  v4 = [v3 uniqueIdentifier];
  v5 = [*(a1 + 32) uniqueIdentifier];
  v6 = [v4 hmf_isEqualToUUID:v5];

  return v6;
}

- (BOOL)_queueVideoDownloadForClip:(id)clip priority:(int64_t)priority
{
  v24 = *MEMORY[0x277D85DE8];
  clipCopy = clip;
  v7 = [clipCopy size];
  diskCache = [(HFCameraVideoCache *)self diskCache];
  v9 = [diskCache canAccommodateCost:v7];

  if (v9)
  {
    diskCache2 = [(HFCameraVideoCache *)self diskCache];
    [diskCache2 removeObjectsToAccommodateCost:v7];

    videoDownloader = [(HFCameraVideoCache *)self videoDownloader];
    v12 = [videoDownloader downloadOperationForClip:clipCopy];

    [v12 setQueuePriority:priority];
    [v12 setDelegate:self];
    v13 = HFLogForCategory(0xDuLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      hf_prettyDescription = [clipCopy hf_prettyDescription];
      destinationURL = [v12 destinationURL];
      path = [destinationURL path];
      v20 = 138412546;
      v21 = hf_prettyDescription;
      v22 = 2112;
      v23 = path;
      _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEFAULT, "[QUEUED] download operation for clip: %@; destination: %@", &v20, 0x16u);
    }

    operationQueue = [(HFCameraVideoCache *)self operationQueue];
    [operationQueue addOperation:v12];
    goto LABEL_7;
  }

  v12 = HFLogForCategory(0xDuLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    operationQueue = [clipCopy hf_prettyDescription];
    v20 = 138412290;
    v21 = operationQueue;
    _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "[SKIPPED] disk cache cannot accommodate clip size: %@", &v20, 0xCu);
LABEL_7:
  }

  v18 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  workQueue = [(HFCameraVideoCache *)self workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  if (+[HFUtilities isInternalTest])
  {
    [(HFCameraVideoCache *)self _setDelegate:delegateCopy];
  }

  else
  {
    workQueue2 = [(HFCameraVideoCache *)self workQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __34__HFCameraVideoCache_setDelegate___block_invoke;
    v7[3] = &unk_277DF3370;
    v7[4] = self;
    v8 = delegateCopy;
    dispatch_async(workQueue2, v7);
  }
}

- (void)_setDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (!+[HFUtilities isInternalTest])
  {
    workQueue = [(HFCameraVideoCache *)self workQueue];
    dispatch_assert_queue_V2(workQueue);
  }

  delegate = self->_delegate;
  p_delegate = &self->_delegate;
  if (([(HFCameraVideoCacheDelegate *)delegate isEqual:delegateCopy]& 1) == 0)
  {
    objc_storeStrong(p_delegate, delegate);
  }
}

- (HFCameraVideoCacheDelegate)delegate
{
  workQueue = [(HFCameraVideoCache *)self workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__7;
  v12 = __Block_byref_object_dispose__7;
  v13 = 0;
  workQueue2 = [(HFCameraVideoCache *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __30__HFCameraVideoCache_delegate__block_invoke;
  v7[3] = &unk_277DF5CA8;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(workQueue2, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __30__HFCameraVideoCache_delegate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _delegate];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_delegate
{
  if (!+[HFUtilities isInternalTest])
  {
    workQueue = [(HFCameraVideoCache *)self workQueue];
    dispatch_assert_queue_V2(workQueue);
  }

  delegate = self->_delegate;

  return delegate;
}

- (void)setDiskCacheLimit:(unint64_t)limit
{
  diskCache = [(HFCameraVideoCache *)self diskCache];
  [diskCache setTotalCostLimit:limit];
}

- (unint64_t)diskCacheLimit
{
  workQueue = [(HFCameraVideoCache *)self workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  workQueue2 = [(HFCameraVideoCache *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__HFCameraVideoCache_diskCacheLimit__block_invoke;
  v7[3] = &unk_277DF5CA8;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(workQueue2, v7);

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __36__HFCameraVideoCache_diskCacheLimit__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) diskCache];
  *(*(*(a1 + 40) + 8) + 24) = [v2 totalCostLimit];
}

- (void)setCacheDurationLimit:(double)limit
{
  workQueue = [(HFCameraVideoCache *)self workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  if (+[HFUtilities isInternalTest])
  {

    [(HFCameraVideoCache *)self _setCacheDurationLimit:limit];
  }

  else
  {
    workQueue2 = [(HFCameraVideoCache *)self workQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__HFCameraVideoCache_setCacheDurationLimit___block_invoke;
    v7[3] = &unk_277DF5CD0;
    v7[4] = self;
    *&v7[5] = limit;
    dispatch_async(workQueue2, v7);
  }
}

- (void)_setCacheDurationLimit:(double)limit
{
  if (!+[HFUtilities isInternalTest])
  {
    workQueue = [(HFCameraVideoCache *)self workQueue];
    dispatch_assert_queue_V2(workQueue);
  }

  if (vabdd_f64(self->_cacheDurationLimit, limit) >= 2.22044605e-16)
  {
    self->_cacheDurationLimit = limit;
    self->_expensiveNetworkCacheDurationLimit = ((limit * 0.5) & ~((limit * 0.5) >> 31));
  }
}

- (double)cacheDurationLimit
{
  workQueue = [(HFCameraVideoCache *)self workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  workQueue2 = [(HFCameraVideoCache *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__HFCameraVideoCache_cacheDurationLimit__block_invoke;
  v7[3] = &unk_277DF5CA8;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(workQueue2, v7);

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __40__HFCameraVideoCache_cacheDurationLimit__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _cacheDurationLimit];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (double)_cacheDurationLimit
{
  if (!+[HFUtilities isInternalTest])
  {
    workQueue = [(HFCameraVideoCache *)self workQueue];
    dispatch_assert_queue_V2(workQueue);
  }

  return self->_cacheDurationLimit;
}

- (double)expensiveNetworkCacheDurationLimit
{
  workQueue = [(HFCameraVideoCache *)self workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  workQueue2 = [(HFCameraVideoCache *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HFCameraVideoCache_expensiveNetworkCacheDurationLimit__block_invoke;
  v7[3] = &unk_277DF5CA8;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(workQueue2, v7);

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __56__HFCameraVideoCache_expensiveNetworkCacheDurationLimit__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _expensiveNetworkCacheDurationLimit];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (double)_expensiveNetworkCacheDurationLimit
{
  if (!+[HFUtilities isInternalTest])
  {
    workQueue = [(HFCameraVideoCache *)self workQueue];
    dispatch_assert_queue_V2(workQueue);
  }

  return self->_expensiveNetworkCacheDurationLimit;
}

- (void)limitDiskCacheToPercentageofAvailableDiskSpace:(unint64_t)space
{
  workQueue = [(HFCameraVideoCache *)self workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  if (+[HFUtilities isInternalTest])
  {

    [(HFCameraVideoCache *)self _limitDiskCacheToPercentageofAvailableDiskSpace:space];
  }

  else
  {
    workQueue2 = [(HFCameraVideoCache *)self workQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __69__HFCameraVideoCache_limitDiskCacheToPercentageofAvailableDiskSpace___block_invoke;
    v7[3] = &unk_277DF5CD0;
    v7[4] = self;
    v7[5] = space;
    dispatch_async(workQueue2, v7);
  }
}

- (void)_limitDiskCacheToPercentageofAvailableDiskSpace:(unint64_t)space
{
  v30 = *MEMORY[0x277D85DE8];
  if (!+[HFUtilities isInternalTest])
  {
    workQueue = [(HFCameraVideoCache *)self workQueue];
    dispatch_assert_queue_V2(workQueue);
  }

  if (space >= 0x65)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFCameraVideoCache.m" lineNumber:425 description:{@"Invalid parameter not satisfying: %@", @"percentageOfAvailableDiskSpace <= 100"}];
  }

  v7 = +[HFCameraUtilities videoCachesDirectoryURL];
  v21 = 0;
  v8 = *MEMORY[0x277CBE9F8];
  v20 = 0;
  v9 = [v7 getResourceValue:&v21 forKey:v8 error:&v20];
  v10 = v21;
  v11 = v20;

  if (!v9)
  {
    v17 = HFLogForCategory(0xDuLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[HFCameraVideoCache _limitDiskCacheToPercentageofAvailableDiskSpace:]";
      v24 = 2112;
      v25 = v11;
      _os_log_error_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
    }

    goto LABEL_11;
  }

  [v10 doubleValue];
  v13 = vcvtmd_u64_f64(space / 100.0 * v12);
  diskCache = [(HFCameraVideoCache *)self diskCache];
  totalCostLimit = [diskCache totalCostLimit];

  if (totalCostLimit > v13)
  {
    diskCache2 = [(HFCameraVideoCache *)self diskCache];
    [diskCache2 setTotalCostLimit:v13];

    v17 = HFLogForCategory(0xDuLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v23 = "[HFCameraVideoCache _limitDiskCacheToPercentageofAvailableDiskSpace:]";
      v24 = 2048;
      v25 = v13;
      v26 = 2048;
      spaceCopy = space;
      v28 = 2112;
      v29 = v10;
      _os_log_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_DEFAULT, "%s diskCacheLimit: %lu (%lu%% of %@ available)", buf, 0x2Au);
    }

LABEL_11:
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_notifyVideoExistsForClip:(id)clip atURL:(id)l
{
  clipCopy = clip;
  lCopy = l;
  _delegate = [(HFCameraVideoCache *)self _delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    _delegate2 = [(HFCameraVideoCache *)self _delegate];
    [_delegate2 videoCache:self didLocateVideoFileAtURL:lCopy forClip:clipCopy];
  }

  [(HFCameraVideoCache *)self _gloablNotifyDidAddVideoForClip:clipCopy];
}

- (void)_gloablNotifyDidAddVideoForClip:(id)clip
{
  v11[1] = *MEMORY[0x277D85DE8];
  clipCopy = clip;
  if (+[HFCameraUtilities markCachedVideoAsGreenInTimeline])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = HFCameraVideoCacheDidAddVideoDebugNotification;
    v10 = @"uniqueIdentifier";
    uniqueIdentifier = [clipCopy uniqueIdentifier];
    v11[0] = uniqueIdentifier;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [defaultCenter postNotificationName:v6 object:self userInfo:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)didDownloadVideoFileForClip:(id)clip toURL:(id)l
{
  v19 = *MEMORY[0x277D85DE8];
  clipCopy = clip;
  lCopy = l;
  v8 = HFLogForCategory(0xDuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    path = [lCopy path];
    v15 = 138412546;
    v16 = clipCopy;
    v17 = 2112;
    v18 = path;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "[FILE DOWNLOADED] clip: %@; path: %@", &v15, 0x16u);
  }

  diskCache = [(HFCameraVideoCache *)self diskCache];
  uniqueIdentifier = [clipCopy uniqueIdentifier];
  [diskCache setObject:lCopy forKey:uniqueIdentifier cost:{objc_msgSend(clipCopy, "size")}];

  delegate = [(HFCameraVideoCache *)self delegate];
  LOBYTE(uniqueIdentifier) = objc_opt_respondsToSelector();

  if (uniqueIdentifier)
  {
    delegate2 = [(HFCameraVideoCache *)self delegate];
    [delegate2 videoCache:self didDownloadVideoFileAtURL:lCopy forClip:clipCopy];
  }

  [(HFCameraVideoCache *)self _gloablNotifyDidAddVideoForClip:clipCopy];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)foundVideoFileForClip:(id)clip atURL:(id)l
{
  v19 = *MEMORY[0x277D85DE8];
  clipCopy = clip;
  lCopy = l;
  v8 = HFLogForCategory(0xDuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    path = [lCopy path];
    v15 = 138412546;
    v16 = clipCopy;
    v17 = 2112;
    v18 = path;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "[FILE EXISTS] clip: %@; path: %@", &v15, 0x16u);
  }

  diskCache = [(HFCameraVideoCache *)self diskCache];
  uniqueIdentifier = [clipCopy uniqueIdentifier];
  [diskCache setObject:lCopy forKey:uniqueIdentifier cost:{objc_msgSend(clipCopy, "size")}];

  delegate = [(HFCameraVideoCache *)self delegate];
  LOBYTE(uniqueIdentifier) = objc_opt_respondsToSelector();

  if (uniqueIdentifier)
  {
    delegate2 = [(HFCameraVideoCache *)self delegate];
    [delegate2 videoCache:self didLocateVideoFileAtURL:lCopy forClip:clipCopy];
  }

  [(HFCameraVideoCache *)self _gloablNotifyDidAddVideoForClip:clipCopy];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)networkDidBecomeExpensive:(id)expensive
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory(0xDuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[HFCameraVideoCache networkDidBecomeExpensive:]";
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "%s: cancelling all in-flight operations", &v7, 0xCu);
  }

  operationQueue = [(HFCameraVideoCache *)self operationQueue];
  [operationQueue cancelAllOperations];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)diskCache:(id)cache didEvictFileFromDisk:(id)disk forUniqueIdentifier:(id)identifier
{
  v12[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (+[HFCameraUtilities markCachedVideoAsGreenInTimeline])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v8 = HFCameraVideoCacheDidRemoveVideoDebugNotification;
    v11 = @"uniqueIdentifier";
    v12[0] = identifierCopy;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [defaultCenter postNotificationName:v8 object:self userInfo:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)diskCache:(id)cache shouldAddExistingFileToCache:(id)toCache
{
  toCacheCopy = toCache;
  v5 = [HFCameraUtilities isMP4FileAtURL:toCacheCopy]&& ![HFCameraUtilities isTimelapseVideoFileAtURL:toCacheCopy]&& ![HFCameraUtilities isVideoFileWithStrippedAudioAtURL:toCacheCopy]&& [HFCameraUtilities compareCreationDateOfFileAtURL:toCacheCopy toDaysFromNow:-10]!= -1;

  return v5;
}

@end