@interface HFCameraClipVideoAssetOperationCache
- (HFCameraClipVideoAssetOperationCache)init;
- (id)operationForKey:(id)a3;
- (unint64_t)cacheSizeForDevice;
- (void)_addOperation:(id)a3 forClip:(id)a4 usingKey:(id)a5;
- (void)_purge;
- (void)_removeOperationForKey:(id)a3;
- (void)addOperation:(id)a3 forClip:(id)a4 usingKey:(id)a5;
- (void)pointHeadAtMarker:(id)a3;
- (void)purge;
- (void)removeMarker:(id)a3;
- (void)removeOperationForKey:(id)a3;
- (void)resetSentinels;
@end

@implementation HFCameraClipVideoAssetOperationCache

- (HFCameraClipVideoAssetOperationCache)init
{
  v20 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = HFCameraClipVideoAssetOperationCache;
  v2 = [(HFCameraClipVideoAssetOperationCache *)&v17 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.Home.cameraClipVideoAssetOperationCacheQueue", 0);
    workQueue = v2->_workQueue;
    v2->_workQueue = v3;

    v5 = [(HFCameraClipVideoAssetOperationCache *)v2 cacheSizeForDevice];
    v6 = 3;
    if (v5 > 3)
    {
      v6 = v5;
    }

    v2->_maxSize = v6;
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    markerInfo = v2->_markerInfo;
    v2->_markerInfo = v7;

    v9 = [HFCameraClipVideoAssetOperationMarker sentinelWithKey:@"HEAD"];
    head = v2->_head;
    v2->_head = v9;

    v11 = [HFCameraClipVideoAssetOperationMarker sentinelWithKey:@"TAIL"];
    tail = v2->_tail;
    v2->_tail = v11;

    [(HFCameraClipVideoAssetOperationCache *)v2 resetSentinels];
    v13 = HFLogForCategory(0x15uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      maxSize = v2->_maxSize;
      *buf = 134217984;
      v19 = maxSize;
      _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEFAULT, "Init video asset cache with size:%lu", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v2;
}

- (unint64_t)cacheSizeForDevice
{
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 bounds];
  v4 = v3;

  v5 = [MEMORY[0x277D759A0] mainScreen];
  [v5 bounds];
  v7 = v6;

  if (v4 >= v7)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  return (v8 / 88.0);
}

- (void)pointHeadAtMarker:(id)a3
{
  v17 = a3;
  v4 = [v17 previous];
  v5 = [(HFCameraClipVideoAssetOperationCache *)self head];
  v6 = [v4 isEqual:v5];

  if ((v6 & 1) == 0)
  {
    v7 = [v17 next];
    v8 = [v17 previous];
    v9 = [(HFCameraClipVideoAssetOperationCache *)self head];
    v10 = [v9 next];

    v11 = [(HFCameraClipVideoAssetOperationCache *)self head];
    v12 = [v11 next];
    [v17 setNext:v12];

    v13 = [(HFCameraClipVideoAssetOperationCache *)self head];
    [v17 setPrevious:v13];

    v14 = [(HFCameraClipVideoAssetOperationCache *)self head];
    [v14 setNext:v17];

    [v10 setPrevious:v17];
    v15 = [v17 next];
    [v8 setNext:v15];

    v16 = [v17 previous];
    [v7 setPrevious:v16];
  }
}

- (id)operationForKey:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__20;
  v19 = __Block_byref_object_dispose__20;
  v20 = 0;
  v5 = [(HFCameraClipVideoAssetOperationCache *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HFCameraClipVideoAssetOperationCache_operationForKey___block_invoke;
  block[3] = &unk_277DF5AA8;
  v14 = &v15;
  block[4] = self;
  v6 = v4;
  v13 = v6;
  dispatch_sync(v5, block);

  v7 = v16[5];
  if (v7)
  {
    v8 = [v7 operation];
  }

  else
  {
    v9 = HFLogForCategory(0x15uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v6;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "No videoAssetContext fetch operation in progress for key:%@", buf, 0xCu);
    }

    v8 = 0;
  }

  _Block_object_dispose(&v15, 8);
  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

void __56__HFCameraClipVideoAssetOperationCache_operationForKey___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) markerInfo];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    [*(a1 + 32) pointHeadAtMarker:?];
    v6 = HFLogForCategory(0x15uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(*(*(a1 + 48) + 8) + 40) key];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "VideoAssetContext fetch operation in progress for key:%@", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)addOperation:(id)a3 forClip:(id)a4 usingKey:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (+[HFUtilities isInternalTest])
  {
    [(HFCameraClipVideoAssetOperationCache *)self _addOperation:v8 forClip:v9 usingKey:v10];
  }

  else
  {
    v11 = [(HFCameraClipVideoAssetOperationCache *)self workQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __70__HFCameraClipVideoAssetOperationCache_addOperation_forClip_usingKey___block_invoke;
    v12[3] = &unk_277DF3398;
    v12[4] = self;
    v13 = v8;
    v14 = v9;
    v15 = v10;
    dispatch_async(v11, v12);
  }
}

- (void)_addOperation:(id)a3 forClip:(id)a4 usingKey:(id)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HFCameraClipVideoAssetOperationCache *)self markerInfo];
  v12 = [v11 objectForKeyedSubscript:v10];

  if (v12)
  {
    v13 = HFLogForCategory(0x15uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [(HFCameraClipVideoAssetOperationMarker *)v12 key];
      *buf = 138412290;
      v38 = v14;
      _os_log_error_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_ERROR, "Logic error. Attempting to add VideoAssetContext fetch operation that is already in progress for key:%@. The imageManager should have blocked this.", buf, 0xCu);
    }

LABEL_19:

    goto LABEL_20;
  }

  v12 = [[HFCameraClipVideoAssetOperationMarker alloc] initWithCameraClip:v9 operation:v8 key:v10];
  v15 = [(HFCameraClipVideoAssetOperationCache *)self markerInfo];
  [v15 setObject:v12 forKeyedSubscript:v10];

  [(HFCameraClipVideoAssetOperationCache *)self pointHeadAtMarker:v12];
  [(HFCameraClipVideoAssetOperationCache *)self setCount:[(HFCameraClipVideoAssetOperationCache *)self count]+ 1];
  v16 = HFLogForCategory(0x15uLL);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v38 = v10;
    v39 = 2048;
    v40 = [(HFCameraClipVideoAssetOperationCache *)self count];
    _os_log_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_DEFAULT, "Add VideoAssetContext fetch operation for key:%@ with operation count:%lu.", buf, 0x16u);
  }

  v17 = [(HFCameraClipVideoAssetOperationCache *)self count];
  if (v17 >= [(HFCameraClipVideoAssetOperationCache *)self maxSize])
  {
    v18 = [(HFCameraClipVideoAssetOperationCache *)self tail];
    v19 = [v18 previous];
    v20 = [v19 key];
    [(HFCameraClipVideoAssetOperationCache *)self _removeOperationForKey:v20];
  }

  if (+[HFUtilities isInternalInstall])
  {
    v34 = v10;
    v35 = v9;
    v36 = v8;
    v21 = [(HFCameraClipVideoAssetOperationCache *)self head];
    v22 = HFLogForCategory(0x15uLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20D9BF000, v22, OS_LOG_TYPE_DEFAULT, "--List of markers:", buf, 2u);
    }

    if (v21)
    {
      v23 = 0;
      do
      {
        v24 = HFLogForCategory(0x15uLL);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [v21 key];
          v26 = [v21 previous];
          v27 = [v26 key];
          v28 = [v21 next];
          v29 = [v28 key];
          *buf = 138413058;
          v38 = v25;
          v39 = 2112;
          v40 = v27;
          v41 = 2112;
          v42 = v29;
          v43 = 2048;
          v44 = v23;
          _os_log_impl(&dword_20D9BF000, v24, OS_LOG_TYPE_DEFAULT, "-----UUID:%@ prev:%@ next:%@ index:%lu", buf, 0x2Au);
        }

        v30 = [v21 next];

        ++v23;
        v21 = v30;
      }

      while (v30);
    }

    v13 = HFLogForCategory(0x15uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [(HFCameraClipVideoAssetOperationCache *)self markerInfo];
      v32 = [v31 allKeys];
      *buf = 138412290;
      v38 = v32;
      _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEFAULT, "Keys= %@", buf, 0xCu);
    }

    v9 = v35;
    v8 = v36;
    v10 = v34;
    goto LABEL_19;
  }

LABEL_20:

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_removeOperationForKey:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HFCameraClipVideoAssetOperationCache *)self markerInfo];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = HFLogForCategory(0x15uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 key];
    v9 = [v6 operation];
    v18 = 138412546;
    v19 = v8;
    v20 = 1024;
    v21 = [v9 isExecuting];
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Evict marker:%@ Executing:%{BOOL}d.", &v18, 0x12u);
  }

  v10 = [v6 operation];
  v11 = [v10 isExecuting];

  if (v11)
  {
    v12 = [v6 operation];
    [v12 cancel];
  }

  [(HFCameraClipVideoAssetOperationCache *)self removeMarker:v6];
  v13 = [(HFCameraClipVideoAssetOperationCache *)self markerInfo];
  [v13 setObject:0 forKeyedSubscript:v4];

  [(HFCameraClipVideoAssetOperationCache *)self setCount:[(HFCameraClipVideoAssetOperationCache *)self count]- 1];
  v14 = HFLogForCategory(0x15uLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(HFCameraClipVideoAssetOperationCache *)self markerInfo];
    v16 = [v15 allKeys];
    v18 = 138412290;
    v19 = v16;
    _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "Remaining marker keys= %@", &v18, 0xCu);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)removeOperationForKey:(id)a3
{
  v4 = a3;
  if (+[HFUtilities isInternalTest])
  {
    [(HFCameraClipVideoAssetOperationCache *)self _removeOperationForKey:v4];
  }

  else
  {
    v5 = [(HFCameraClipVideoAssetOperationCache *)self workQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __62__HFCameraClipVideoAssetOperationCache_removeOperationForKey___block_invoke;
    v6[3] = &unk_277DF3370;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

- (void)removeMarker:(id)a3
{
  v3 = a3;
  v4 = [v3 previous];
  v5 = [v3 next];
  [v5 setPrevious:v4];

  v7 = [v3 next];
  v6 = [v3 previous];

  [v6 setNext:v7];
}

- (void)resetSentinels
{
  v3 = [(HFCameraClipVideoAssetOperationCache *)self tail];
  v4 = [(HFCameraClipVideoAssetOperationCache *)self head];
  [v4 setNext:v3];

  v6 = [(HFCameraClipVideoAssetOperationCache *)self head];
  v5 = [(HFCameraClipVideoAssetOperationCache *)self tail];
  [v5 setPrevious:v6];
}

- (void)purge
{
  v3 = HFLogForCategory(0x15uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Purging VideoAssetOperationCache.", buf, 2u);
  }

  if (+[HFUtilities isInternalTest])
  {
    [(HFCameraClipVideoAssetOperationCache *)self _purge];
  }

  else
  {
    v4 = [(HFCameraClipVideoAssetOperationCache *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__HFCameraClipVideoAssetOperationCache_purge__block_invoke;
    block[3] = &unk_277DF3D38;
    block[4] = self;
    dispatch_async(v4, block);
  }
}

- (void)_purge
{
  v3 = [(HFCameraClipVideoAssetOperationCache *)self markerInfo];
  v4 = [v3 allValues];
  [v4 enumerateObjectsUsingBlock:&__block_literal_global_153];

  v5 = [(HFCameraClipVideoAssetOperationCache *)self markerInfo];
  [v5 removeAllObjects];

  [(HFCameraClipVideoAssetOperationCache *)self resetSentinels];

  [(HFCameraClipVideoAssetOperationCache *)self setCount:0];
}

void __46__HFCameraClipVideoAssetOperationCache__purge__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 operation];
  [v2 cancel];
}

@end