@interface HFCameraClipVideoAssetOperationCache
- (HFCameraClipVideoAssetOperationCache)init;
- (id)operationForKey:(id)key;
- (unint64_t)cacheSizeForDevice;
- (void)_addOperation:(id)operation forClip:(id)clip usingKey:(id)key;
- (void)_purge;
- (void)_removeOperationForKey:(id)key;
- (void)addOperation:(id)operation forClip:(id)clip usingKey:(id)key;
- (void)pointHeadAtMarker:(id)marker;
- (void)purge;
- (void)removeMarker:(id)marker;
- (void)removeOperationForKey:(id)key;
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

    cacheSizeForDevice = [(HFCameraClipVideoAssetOperationCache *)v2 cacheSizeForDevice];
    v6 = 3;
    if (cacheSizeForDevice > 3)
    {
      v6 = cacheSizeForDevice;
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
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v4 = v3;

  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 bounds];
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

- (void)pointHeadAtMarker:(id)marker
{
  markerCopy = marker;
  previous = [markerCopy previous];
  head = [(HFCameraClipVideoAssetOperationCache *)self head];
  v6 = [previous isEqual:head];

  if ((v6 & 1) == 0)
  {
    next = [markerCopy next];
    previous2 = [markerCopy previous];
    head2 = [(HFCameraClipVideoAssetOperationCache *)self head];
    next2 = [head2 next];

    head3 = [(HFCameraClipVideoAssetOperationCache *)self head];
    next3 = [head3 next];
    [markerCopy setNext:next3];

    head4 = [(HFCameraClipVideoAssetOperationCache *)self head];
    [markerCopy setPrevious:head4];

    head5 = [(HFCameraClipVideoAssetOperationCache *)self head];
    [head5 setNext:markerCopy];

    [next2 setPrevious:markerCopy];
    next4 = [markerCopy next];
    [previous2 setNext:next4];

    previous3 = [markerCopy previous];
    [next setPrevious:previous3];
  }
}

- (id)operationForKey:(id)key
{
  v23 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__20;
  v19 = __Block_byref_object_dispose__20;
  v20 = 0;
  workQueue = [(HFCameraClipVideoAssetOperationCache *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HFCameraClipVideoAssetOperationCache_operationForKey___block_invoke;
  block[3] = &unk_277DF5AA8;
  v14 = &v15;
  block[4] = self;
  v6 = keyCopy;
  v13 = v6;
  dispatch_sync(workQueue, block);

  v7 = v16[5];
  if (v7)
  {
    operation = [v7 operation];
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

    operation = 0;
  }

  _Block_object_dispose(&v15, 8);
  v10 = *MEMORY[0x277D85DE8];

  return operation;
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

- (void)addOperation:(id)operation forClip:(id)clip usingKey:(id)key
{
  operationCopy = operation;
  clipCopy = clip;
  keyCopy = key;
  if (+[HFUtilities isInternalTest])
  {
    [(HFCameraClipVideoAssetOperationCache *)self _addOperation:operationCopy forClip:clipCopy usingKey:keyCopy];
  }

  else
  {
    workQueue = [(HFCameraClipVideoAssetOperationCache *)self workQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __70__HFCameraClipVideoAssetOperationCache_addOperation_forClip_usingKey___block_invoke;
    v12[3] = &unk_277DF3398;
    v12[4] = self;
    v13 = operationCopy;
    v14 = clipCopy;
    v15 = keyCopy;
    dispatch_async(workQueue, v12);
  }
}

- (void)_addOperation:(id)operation forClip:(id)clip usingKey:(id)key
{
  v45 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  clipCopy = clip;
  keyCopy = key;
  markerInfo = [(HFCameraClipVideoAssetOperationCache *)self markerInfo];
  v12 = [markerInfo objectForKeyedSubscript:keyCopy];

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

  v12 = [[HFCameraClipVideoAssetOperationMarker alloc] initWithCameraClip:clipCopy operation:operationCopy key:keyCopy];
  markerInfo2 = [(HFCameraClipVideoAssetOperationCache *)self markerInfo];
  [markerInfo2 setObject:v12 forKeyedSubscript:keyCopy];

  [(HFCameraClipVideoAssetOperationCache *)self pointHeadAtMarker:v12];
  [(HFCameraClipVideoAssetOperationCache *)self setCount:[(HFCameraClipVideoAssetOperationCache *)self count]+ 1];
  v16 = HFLogForCategory(0x15uLL);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v38 = keyCopy;
    v39 = 2048;
    v40 = [(HFCameraClipVideoAssetOperationCache *)self count];
    _os_log_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_DEFAULT, "Add VideoAssetContext fetch operation for key:%@ with operation count:%lu.", buf, 0x16u);
  }

  v17 = [(HFCameraClipVideoAssetOperationCache *)self count];
  if (v17 >= [(HFCameraClipVideoAssetOperationCache *)self maxSize])
  {
    tail = [(HFCameraClipVideoAssetOperationCache *)self tail];
    previous = [tail previous];
    v20 = [previous key];
    [(HFCameraClipVideoAssetOperationCache *)self _removeOperationForKey:v20];
  }

  if (+[HFUtilities isInternalInstall])
  {
    v34 = keyCopy;
    v35 = clipCopy;
    v36 = operationCopy;
    head = [(HFCameraClipVideoAssetOperationCache *)self head];
    v22 = HFLogForCategory(0x15uLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20D9BF000, v22, OS_LOG_TYPE_DEFAULT, "--List of markers:", buf, 2u);
    }

    if (head)
    {
      v23 = 0;
      do
      {
        v24 = HFLogForCategory(0x15uLL);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [head key];
          previous2 = [head previous];
          v27 = [previous2 key];
          next = [head next];
          v29 = [next key];
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

        next2 = [head next];

        ++v23;
        head = next2;
      }

      while (next2);
    }

    v13 = HFLogForCategory(0x15uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      markerInfo3 = [(HFCameraClipVideoAssetOperationCache *)self markerInfo];
      allKeys = [markerInfo3 allKeys];
      *buf = 138412290;
      v38 = allKeys;
      _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEFAULT, "Keys= %@", buf, 0xCu);
    }

    clipCopy = v35;
    operationCopy = v36;
    keyCopy = v34;
    goto LABEL_19;
  }

LABEL_20:

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_removeOperationForKey:(id)key
{
  v22 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  markerInfo = [(HFCameraClipVideoAssetOperationCache *)self markerInfo];
  v6 = [markerInfo objectForKeyedSubscript:keyCopy];

  v7 = HFLogForCategory(0x15uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 key];
    operation = [v6 operation];
    v18 = 138412546;
    v19 = v8;
    v20 = 1024;
    isExecuting = [operation isExecuting];
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Evict marker:%@ Executing:%{BOOL}d.", &v18, 0x12u);
  }

  operation2 = [v6 operation];
  isExecuting2 = [operation2 isExecuting];

  if (isExecuting2)
  {
    operation3 = [v6 operation];
    [operation3 cancel];
  }

  [(HFCameraClipVideoAssetOperationCache *)self removeMarker:v6];
  markerInfo2 = [(HFCameraClipVideoAssetOperationCache *)self markerInfo];
  [markerInfo2 setObject:0 forKeyedSubscript:keyCopy];

  [(HFCameraClipVideoAssetOperationCache *)self setCount:[(HFCameraClipVideoAssetOperationCache *)self count]- 1];
  v14 = HFLogForCategory(0x15uLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    markerInfo3 = [(HFCameraClipVideoAssetOperationCache *)self markerInfo];
    allKeys = [markerInfo3 allKeys];
    v18 = 138412290;
    v19 = allKeys;
    _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "Remaining marker keys= %@", &v18, 0xCu);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)removeOperationForKey:(id)key
{
  keyCopy = key;
  if (+[HFUtilities isInternalTest])
  {
    [(HFCameraClipVideoAssetOperationCache *)self _removeOperationForKey:keyCopy];
  }

  else
  {
    workQueue = [(HFCameraClipVideoAssetOperationCache *)self workQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __62__HFCameraClipVideoAssetOperationCache_removeOperationForKey___block_invoke;
    v6[3] = &unk_277DF3370;
    v6[4] = self;
    v7 = keyCopy;
    dispatch_async(workQueue, v6);
  }
}

- (void)removeMarker:(id)marker
{
  markerCopy = marker;
  previous = [markerCopy previous];
  next = [markerCopy next];
  [next setPrevious:previous];

  next2 = [markerCopy next];
  previous2 = [markerCopy previous];

  [previous2 setNext:next2];
}

- (void)resetSentinels
{
  tail = [(HFCameraClipVideoAssetOperationCache *)self tail];
  head = [(HFCameraClipVideoAssetOperationCache *)self head];
  [head setNext:tail];

  head2 = [(HFCameraClipVideoAssetOperationCache *)self head];
  tail2 = [(HFCameraClipVideoAssetOperationCache *)self tail];
  [tail2 setPrevious:head2];
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
    workQueue = [(HFCameraClipVideoAssetOperationCache *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__HFCameraClipVideoAssetOperationCache_purge__block_invoke;
    block[3] = &unk_277DF3D38;
    block[4] = self;
    dispatch_async(workQueue, block);
  }
}

- (void)_purge
{
  markerInfo = [(HFCameraClipVideoAssetOperationCache *)self markerInfo];
  allValues = [markerInfo allValues];
  [allValues enumerateObjectsUsingBlock:&__block_literal_global_153];

  markerInfo2 = [(HFCameraClipVideoAssetOperationCache *)self markerInfo];
  [markerInfo2 removeAllObjects];

  [(HFCameraClipVideoAssetOperationCache *)self resetSentinels];

  [(HFCameraClipVideoAssetOperationCache *)self setCount:0];
}

void __46__HFCameraClipVideoAssetOperationCache__purge__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 operation];
  [v2 cancel];
}

@end