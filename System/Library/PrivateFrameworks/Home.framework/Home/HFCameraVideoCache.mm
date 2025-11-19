@interface HFCameraVideoCache
- (BOOL)_queueVideoDownloadForClip:(id)a3 priority:(int64_t)a4;
- (BOOL)diskCache:(id)a3 shouldAddExistingFileToCache:(id)a4;
- (HFCameraVideoCache)initWithVideoDownloader:(id)a3;
- (HFCameraVideoCacheDelegate)delegate;
- (double)_cacheDurationLimit;
- (double)_expensiveNetworkCacheDurationLimit;
- (double)cacheDurationLimit;
- (double)expensiveNetworkCacheDurationLimit;
- (id)_delegate;
- (id)_existingDownloadOperationForClip:(id)a3;
- (unint64_t)diskCacheLimit;
- (void)_cacheClip:(id)a3;
- (void)_cacheClip:(id)a3 inClips:(id)a4;
- (void)_gloablNotifyDidAddVideoForClip:(id)a3;
- (void)_limitDiskCacheToPercentageofAvailableDiskSpace:(unint64_t)a3;
- (void)_notifyVideoExistsForClip:(id)a3 atURL:(id)a4;
- (void)_setCacheDurationLimit:(double)a3;
- (void)_setDelegate:(id)a3;
- (void)cacheClip:(id)a3;
- (void)cacheClip:(id)a3 inClips:(id)a4;
- (void)dealloc;
- (void)didDownloadVideoFileForClip:(id)a3 toURL:(id)a4;
- (void)diskCache:(id)a3 didEvictFileFromDisk:(id)a4 forUniqueIdentifier:(id)a5;
- (void)foundVideoFileForClip:(id)a3 atURL:(id)a4;
- (void)limitDiskCacheToPercentageofAvailableDiskSpace:(unint64_t)a3;
- (void)networkDidBecomeExpensive:(id)a3;
- (void)setCacheDurationLimit:(double)a3;
- (void)setDelegate:(id)a3;
- (void)setDiskCacheLimit:(unint64_t)a3;
- (void)waitForOperations;
@end

@implementation HFCameraVideoCache

- (HFCameraVideoCache)initWithVideoDownloader:(id)a3
{
  v5 = a3;
  v24.receiver = self;
  v24.super_class = HFCameraVideoCache;
  v6 = [(HFCameraVideoCache *)&v24 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_videoDownloader, a3);
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
    v3 = [(HFCameraVideoCache *)self operationQueue];
    [v3 waitUntilAllOperationsAreFinished];
  }
}

- (void)cacheClip:(id)a3 inClips:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HFCameraVideoCache *)self workQueue];
  dispatch_assert_queue_not_V2(v8);

  if (+[HFUtilities isInternalTest])
  {
    [(HFCameraVideoCache *)self _cacheClip:v6 inClips:v7];
  }

  else
  {
    v9 = [(HFCameraVideoCache *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__HFCameraVideoCache_cacheClip_inClips___block_invoke;
    block[3] = &unk_277DF32A8;
    block[4] = self;
    v11 = v6;
    v12 = v7;
    dispatch_async(v9, block);
  }
}

- (void)_cacheClip:(id)a3 inClips:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!+[HFUtilities isInternalTest])
  {
    v9 = [(HFCameraVideoCache *)self workQueue];
    dispatch_assert_queue_V2(v9);
  }

  if (!v7)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"HFCameraVideoCache.m" lineNumber:116 description:{@"Invalid parameter not satisfying: %@", @"primaryClip != nil"}];
  }

  if (![v8 count])
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"HFCameraVideoCache.m" lineNumber:117 description:{@"Invalid parameter not satisfying: %@", @"clips.count > 0"}];
  }

  v10 = [v8 indexOfObject:v7];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    v16 = [v7 hf_prettyDescription];
    v17 = [v8 hf_prettyDescription];
    [v15 handleFailureInMethod:a2 object:self file:@"HFCameraVideoCache.m" lineNumber:120 description:{@"clip: %@ is not in clips: %@", v16, v17}];
  }

  v11 = [(HFCameraVideoCache *)self operationQueue];
  v12 = [v11 operations];
  [v12 na_each:&__block_literal_global_42];

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
  [v8 hf_fanOutAtIndex:v10 usingBlock:v18];
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

- (void)cacheClip:(id)a3
{
  v4 = a3;
  v5 = [(HFCameraVideoCache *)self workQueue];
  dispatch_assert_queue_not_V2(v5);

  if (+[HFUtilities isInternalTest])
  {
    [(HFCameraVideoCache *)self _cacheClip:v4];
  }

  else
  {
    v6 = [(HFCameraVideoCache *)self workQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __32__HFCameraVideoCache_cacheClip___block_invoke;
    v7[3] = &unk_277DF3370;
    v7[4] = self;
    v8 = v4;
    dispatch_async(v6, v7);
  }
}

- (void)_cacheClip:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!+[HFUtilities isInternalTest])
  {
    v6 = [(HFCameraVideoCache *)self workQueue];
    dispatch_assert_queue_V2(v6);
  }

  if (!v5)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"HFCameraVideoCache.m" lineNumber:207 description:{@"Invalid parameter not satisfying: %@", @"clip != nil"}];
  }

  if ([v5 isComplete])
  {
    v7 = [(HFCameraVideoCache *)self diskCache];
    v8 = [v5 uniqueIdentifier];
    v9 = [v7 objectForKey:v8];

    if (v9)
    {
      v10 = HFLogForCategory(0xDuLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v5 hf_prettyDescription];
        v12 = [v9 path];
        *buf = 138412546;
        v20 = v11;
        v21 = 2112;
        v22 = v12;
        _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "[SKIPPED] video exists; clip: %@; path: %@", buf, 0x16u);
      }

      [(HFCameraVideoCache *)self _notifyVideoExistsForClip:v5 atURL:v9];
    }

    else
    {
      v14 = [(HFCameraVideoCache *)self _existingDownloadOperationForClip:v5];
      if (v14)
      {
        v15 = HFLogForCategory(0xDuLL);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [v5 hf_prettyDescription];
          *buf = 138412290;
          v20 = v16;
          _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "[SKIPPED] download operation exists; clip: %@", buf, 0xCu);
        }

        [v14 setQueuePriority:8];
      }

      else
      {
        [(HFCameraVideoCache *)self _queueVideoDownloadForClip:v5 priority:4];
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = HFLogForCategory(0xDuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v5 hf_prettyDescription];
      *buf = 138412290;
      v20 = v13;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "[SKIPPED] incomplete clip: %@", buf, 0xCu);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_existingDownloadOperationForClip:(id)a3
{
  v4 = a3;
  v5 = [(HFCameraVideoCache *)self operationQueue];
  v6 = [v5 operations];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__HFCameraVideoCache__existingDownloadOperationForClip___block_invoke;
  v10[3] = &unk_277DF5C80;
  v11 = v4;
  v7 = v4;
  v8 = [v6 na_firstObjectPassingTest:v10];

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

- (BOOL)_queueVideoDownloadForClip:(id)a3 priority:(int64_t)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 size];
  v8 = [(HFCameraVideoCache *)self diskCache];
  v9 = [v8 canAccommodateCost:v7];

  if (v9)
  {
    v10 = [(HFCameraVideoCache *)self diskCache];
    [v10 removeObjectsToAccommodateCost:v7];

    v11 = [(HFCameraVideoCache *)self videoDownloader];
    v12 = [v11 downloadOperationForClip:v6];

    [v12 setQueuePriority:a4];
    [v12 setDelegate:self];
    v13 = HFLogForCategory(0xDuLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v6 hf_prettyDescription];
      v15 = [v12 destinationURL];
      v16 = [v15 path];
      v20 = 138412546;
      v21 = v14;
      v22 = 2112;
      v23 = v16;
      _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEFAULT, "[QUEUED] download operation for clip: %@; destination: %@", &v20, 0x16u);
    }

    v17 = [(HFCameraVideoCache *)self operationQueue];
    [v17 addOperation:v12];
    goto LABEL_7;
  }

  v12 = HFLogForCategory(0xDuLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v6 hf_prettyDescription];
    v20 = 138412290;
    v21 = v17;
    _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "[SKIPPED] disk cache cannot accommodate clip size: %@", &v20, 0xCu);
LABEL_7:
  }

  v18 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(HFCameraVideoCache *)self workQueue];
  dispatch_assert_queue_not_V2(v5);

  if (+[HFUtilities isInternalTest])
  {
    [(HFCameraVideoCache *)self _setDelegate:v4];
  }

  else
  {
    v6 = [(HFCameraVideoCache *)self workQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __34__HFCameraVideoCache_setDelegate___block_invoke;
    v7[3] = &unk_277DF3370;
    v7[4] = self;
    v8 = v4;
    dispatch_async(v6, v7);
  }
}

- (void)_setDelegate:(id)a3
{
  v8 = a3;
  if (!+[HFUtilities isInternalTest])
  {
    v5 = [(HFCameraVideoCache *)self workQueue];
    dispatch_assert_queue_V2(v5);
  }

  delegate = self->_delegate;
  p_delegate = &self->_delegate;
  if (([(HFCameraVideoCacheDelegate *)delegate isEqual:v8]& 1) == 0)
  {
    objc_storeStrong(p_delegate, a3);
  }
}

- (HFCameraVideoCacheDelegate)delegate
{
  v3 = [(HFCameraVideoCache *)self workQueue];
  dispatch_assert_queue_not_V2(v3);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__7;
  v12 = __Block_byref_object_dispose__7;
  v13 = 0;
  v4 = [(HFCameraVideoCache *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __30__HFCameraVideoCache_delegate__block_invoke;
  v7[3] = &unk_277DF5CA8;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

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
    v3 = [(HFCameraVideoCache *)self workQueue];
    dispatch_assert_queue_V2(v3);
  }

  delegate = self->_delegate;

  return delegate;
}

- (void)setDiskCacheLimit:(unint64_t)a3
{
  v4 = [(HFCameraVideoCache *)self diskCache];
  [v4 setTotalCostLimit:a3];
}

- (unint64_t)diskCacheLimit
{
  v3 = [(HFCameraVideoCache *)self workQueue];
  dispatch_assert_queue_not_V2(v3);

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = [(HFCameraVideoCache *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__HFCameraVideoCache_diskCacheLimit__block_invoke;
  v7[3] = &unk_277DF5CA8;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __36__HFCameraVideoCache_diskCacheLimit__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) diskCache];
  *(*(*(a1 + 40) + 8) + 24) = [v2 totalCostLimit];
}

- (void)setCacheDurationLimit:(double)a3
{
  v5 = [(HFCameraVideoCache *)self workQueue];
  dispatch_assert_queue_not_V2(v5);

  if (+[HFUtilities isInternalTest])
  {

    [(HFCameraVideoCache *)self _setCacheDurationLimit:a3];
  }

  else
  {
    v6 = [(HFCameraVideoCache *)self workQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__HFCameraVideoCache_setCacheDurationLimit___block_invoke;
    v7[3] = &unk_277DF5CD0;
    v7[4] = self;
    *&v7[5] = a3;
    dispatch_async(v6, v7);
  }
}

- (void)_setCacheDurationLimit:(double)a3
{
  if (!+[HFUtilities isInternalTest])
  {
    v5 = [(HFCameraVideoCache *)self workQueue];
    dispatch_assert_queue_V2(v5);
  }

  if (vabdd_f64(self->_cacheDurationLimit, a3) >= 2.22044605e-16)
  {
    self->_cacheDurationLimit = a3;
    self->_expensiveNetworkCacheDurationLimit = ((a3 * 0.5) & ~((a3 * 0.5) >> 31));
  }
}

- (double)cacheDurationLimit
{
  v3 = [(HFCameraVideoCache *)self workQueue];
  dispatch_assert_queue_not_V2(v3);

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = [(HFCameraVideoCache *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__HFCameraVideoCache_cacheDurationLimit__block_invoke;
  v7[3] = &unk_277DF5CA8;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

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
    v3 = [(HFCameraVideoCache *)self workQueue];
    dispatch_assert_queue_V2(v3);
  }

  return self->_cacheDurationLimit;
}

- (double)expensiveNetworkCacheDurationLimit
{
  v3 = [(HFCameraVideoCache *)self workQueue];
  dispatch_assert_queue_not_V2(v3);

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = [(HFCameraVideoCache *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HFCameraVideoCache_expensiveNetworkCacheDurationLimit__block_invoke;
  v7[3] = &unk_277DF5CA8;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

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
    v3 = [(HFCameraVideoCache *)self workQueue];
    dispatch_assert_queue_V2(v3);
  }

  return self->_expensiveNetworkCacheDurationLimit;
}

- (void)limitDiskCacheToPercentageofAvailableDiskSpace:(unint64_t)a3
{
  v5 = [(HFCameraVideoCache *)self workQueue];
  dispatch_assert_queue_not_V2(v5);

  if (+[HFUtilities isInternalTest])
  {

    [(HFCameraVideoCache *)self _limitDiskCacheToPercentageofAvailableDiskSpace:a3];
  }

  else
  {
    v6 = [(HFCameraVideoCache *)self workQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __69__HFCameraVideoCache_limitDiskCacheToPercentageofAvailableDiskSpace___block_invoke;
    v7[3] = &unk_277DF5CD0;
    v7[4] = self;
    v7[5] = a3;
    dispatch_async(v6, v7);
  }
}

- (void)_limitDiskCacheToPercentageofAvailableDiskSpace:(unint64_t)a3
{
  v30 = *MEMORY[0x277D85DE8];
  if (!+[HFUtilities isInternalTest])
  {
    v6 = [(HFCameraVideoCache *)self workQueue];
    dispatch_assert_queue_V2(v6);
  }

  if (a3 >= 0x65)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"HFCameraVideoCache.m" lineNumber:425 description:{@"Invalid parameter not satisfying: %@", @"percentageOfAvailableDiskSpace <= 100"}];
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
  v13 = vcvtmd_u64_f64(a3 / 100.0 * v12);
  v14 = [(HFCameraVideoCache *)self diskCache];
  v15 = [v14 totalCostLimit];

  if (v15 > v13)
  {
    v16 = [(HFCameraVideoCache *)self diskCache];
    [v16 setTotalCostLimit:v13];

    v17 = HFLogForCategory(0xDuLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v23 = "[HFCameraVideoCache _limitDiskCacheToPercentageofAvailableDiskSpace:]";
      v24 = 2048;
      v25 = v13;
      v26 = 2048;
      v27 = a3;
      v28 = 2112;
      v29 = v10;
      _os_log_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_DEFAULT, "%s diskCacheLimit: %lu (%lu%% of %@ available)", buf, 0x2Au);
    }

LABEL_11:
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_notifyVideoExistsForClip:(id)a3 atURL:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(HFCameraVideoCache *)self _delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(HFCameraVideoCache *)self _delegate];
    [v9 videoCache:self didLocateVideoFileAtURL:v6 forClip:v10];
  }

  [(HFCameraVideoCache *)self _gloablNotifyDidAddVideoForClip:v10];
}

- (void)_gloablNotifyDidAddVideoForClip:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (+[HFCameraUtilities markCachedVideoAsGreenInTimeline])
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = HFCameraVideoCacheDidAddVideoDebugNotification;
    v10 = @"uniqueIdentifier";
    v7 = [v4 uniqueIdentifier];
    v11[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [v5 postNotificationName:v6 object:self userInfo:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)didDownloadVideoFileForClip:(id)a3 toURL:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = HFLogForCategory(0xDuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 path];
    v15 = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "[FILE DOWNLOADED] clip: %@; path: %@", &v15, 0x16u);
  }

  v10 = [(HFCameraVideoCache *)self diskCache];
  v11 = [v6 uniqueIdentifier];
  [v10 setObject:v7 forKey:v11 cost:{objc_msgSend(v6, "size")}];

  v12 = [(HFCameraVideoCache *)self delegate];
  LOBYTE(v11) = objc_opt_respondsToSelector();

  if (v11)
  {
    v13 = [(HFCameraVideoCache *)self delegate];
    [v13 videoCache:self didDownloadVideoFileAtURL:v7 forClip:v6];
  }

  [(HFCameraVideoCache *)self _gloablNotifyDidAddVideoForClip:v6];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)foundVideoFileForClip:(id)a3 atURL:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = HFLogForCategory(0xDuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 path];
    v15 = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "[FILE EXISTS] clip: %@; path: %@", &v15, 0x16u);
  }

  v10 = [(HFCameraVideoCache *)self diskCache];
  v11 = [v6 uniqueIdentifier];
  [v10 setObject:v7 forKey:v11 cost:{objc_msgSend(v6, "size")}];

  v12 = [(HFCameraVideoCache *)self delegate];
  LOBYTE(v11) = objc_opt_respondsToSelector();

  if (v11)
  {
    v13 = [(HFCameraVideoCache *)self delegate];
    [v13 videoCache:self didLocateVideoFileAtURL:v7 forClip:v6];
  }

  [(HFCameraVideoCache *)self _gloablNotifyDidAddVideoForClip:v6];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)networkDidBecomeExpensive:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory(0xDuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[HFCameraVideoCache networkDidBecomeExpensive:]";
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "%s: cancelling all in-flight operations", &v7, 0xCu);
  }

  v5 = [(HFCameraVideoCache *)self operationQueue];
  [v5 cancelAllOperations];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)diskCache:(id)a3 didEvictFileFromDisk:(id)a4 forUniqueIdentifier:(id)a5
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = a5;
  if (+[HFCameraUtilities markCachedVideoAsGreenInTimeline])
  {
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    v8 = HFCameraVideoCacheDidRemoveVideoDebugNotification;
    v11 = @"uniqueIdentifier";
    v12[0] = v6;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [v7 postNotificationName:v8 object:self userInfo:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)diskCache:(id)a3 shouldAddExistingFileToCache:(id)a4
{
  v4 = a4;
  v5 = [HFCameraUtilities isMP4FileAtURL:v4]&& ![HFCameraUtilities isTimelapseVideoFileAtURL:v4]&& ![HFCameraUtilities isVideoFileWithStrippedAudioAtURL:v4]&& [HFCameraUtilities compareCreationDateOfFileAtURL:v4 toDaysFromNow:-10]!= -1;

  return v5;
}

@end