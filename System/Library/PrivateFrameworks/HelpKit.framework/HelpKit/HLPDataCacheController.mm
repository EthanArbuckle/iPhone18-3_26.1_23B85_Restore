@interface HLPDataCacheController
+ (id)sharedInstance;
- (BOOL)cacheValidForIdentifier:(id)a3 path:(id)a4;
- (HLPDataCacheController)init;
- (HLPDataCacheController)initWithIdentifier:(id)a3 directoryName:(id)a4 maxCacheSize:(unint64_t)a5 URLSessionDataType:(int64_t)a6;
- (id)cacheFileURLForDataCache:(id)a3;
- (id)cacheFileURLForIdentifier:(id)a3;
- (id)dataCacheForIdentifier:(id)a3;
- (id)dataCacheForPath:(id)a3;
- (id)formattedDataForPath:(id)a3 identifier:(id)a4 completionHandler:(id)a5;
- (id)formattedDataForRequest:(id)a3 identifier:(id)a4 completionHandler:(id)a5;
- (id)newDataCache;
- (id)saveFileURL:(id)a3 identifier:(id)a4 fileSize:(unint64_t)a5 lastModified:(id)a6 dataCache:(id)a7;
- (void)addDataCache:(id)a3;
- (void)cancelAllOriginSessionItems;
- (void)commonInit;
- (void)createCacheDirectory;
- (void)dealloc;
- (void)reloadDataCache;
- (void)removeAllDataCache;
- (void)removeCacheForIdentifier:(id)a3;
- (void)removeDataCache:(id)a3 updateCache:(BOOL)a4;
- (void)setLanguageCode:(id)a3;
- (void)syncCacheImmediately;
- (void)updateCache;
- (void)updateCacheDelay;
@end

@implementation HLPDataCacheController

+ (id)sharedInstance
{
  if (sharedInstance_predicate != -1)
  {
    +[HLPDataCacheController sharedInstance];
  }

  v3 = sharedInstance_gHLPDataCacheController;

  return v3;
}

uint64_t __40__HLPDataCacheController_sharedInstance__block_invoke()
{
  v0 = [[HLPDataCacheController alloc] initWithIdentifier:@"HLPDataCacheIdentifier" directoryName:@"com.apple.helpkit.Data" maxCacheSize:5242880 URLSessionDataType:0];
  v1 = sharedInstance_gHLPDataCacheController;
  sharedInstance_gHLPDataCacheController = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)dealloc
{
  [(HLPDataCacheController *)self cancelAllOriginSessionItems];
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_updateCacheDelay object:0];
  v3.receiver = self;
  v3.super_class = HLPDataCacheController;
  [(HLPDataCacheController *)&v3 dealloc];
}

- (void)commonInit
{
  v3 = dispatch_queue_create("com.apple.IPDataCacheControllerSerialQueue", 0);
  dataCacheSerialQueue = self->_dataCacheSerialQueue;
  self->_dataCacheSerialQueue = v3;

  self->_defaultPriority = *MEMORY[0x277CCA790];
  self->_cacheSize = 0;
  v5 = [MEMORY[0x277CBEB18] array];
  dataCacheArray = self->_dataCacheArray;
  self->_dataCacheArray = v5;

  v7 = [MEMORY[0x277CBEB38] dictionary];
  dataCacheMap = self->_dataCacheMap;
  self->_dataCacheMap = v7;

  v9 = [MEMORY[0x277CBEB18] array];
  originFetchItems = self->_originFetchItems;
  self->_originFetchItems = v9;

  MEMORY[0x2821F96F8](v9, originFetchItems);
}

- (HLPDataCacheController)init
{
  v5.receiver = self;
  v5.super_class = HLPDataCacheController;
  v2 = [(HLPDataCacheController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(HLPDataCacheController *)v2 commonInit];
  }

  return v3;
}

- (HLPDataCacheController)initWithIdentifier:(id)a3 directoryName:(id)a4 maxCacheSize:(unint64_t)a5 URLSessionDataType:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v30.receiver = self;
  v30.super_class = HLPDataCacheController;
  v13 = [(HLPDataCacheController *)&v30 init];
  v14 = v13;
  if (v13)
  {
    [(HLPDataCacheController *)v13 commonInit];
    objc_storeStrong(&v14->_identifier, a3);
    v14->_dataType = a6;
    v14->_maxDataCacheSize = a5;
    v15 = [MEMORY[0x277CCAA00] defaultManager];
    v16 = v15;
    if (!v14->_cacheDirectory)
    {
      if (!kHLPDataCacheAppGroupIdentifier)
      {
        goto LABEL_6;
      }

      v17 = [v15 containerURLForSecurityApplicationGroupIdentifier:?];
      if (!v17)
      {
        goto LABEL_6;
      }

      v18 = v17;
      v19 = [v17 URLByAppendingPathComponent:@"Library/Caches"];

      v20 = [v19 path];
      v21 = objc_alloc(MEMORY[0x277CBEBD0]);
      v22 = [v21 initWithSuiteName:kHLPDataCacheAppGroupIdentifier];
      userDefaults = v14->_userDefaults;
      v14->_userDefaults = v22;

      if (!v20)
      {
LABEL_6:
        v24 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
        v20 = [v24 objectAtIndex:0];
        v25 = [MEMORY[0x277CBEBD0] standardUserDefaults];
        v26 = v14->_userDefaults;
        v14->_userDefaults = v25;
      }

      v27 = [v20 stringByAppendingPathComponent:v12];
      cacheDirectory = v14->_cacheDirectory;
      v14->_cacheDirectory = v27;
    }

    [(HLPDataCacheController *)v14 reloadDataCache];
  }

  return v14;
}

- (void)syncCacheImmediately
{
  [(HLPDataCacheController *)self updateCacheDelay];

  [(HLPDataCacheController *)self cancelAllOriginSessionItems];
}

- (id)dataCacheForPath:(id)a3
{
  v4 = [a3 lastPathComponent];
  v5 = [(HLPDataCacheController *)self dataCacheForIdentifier:v4];

  return v5;
}

- (id)dataCacheForIdentifier:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  objc_initWeak(&location, self);
  dataCacheSerialQueue = self->_dataCacheSerialQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__HLPDataCacheController_dataCacheForIdentifier___block_invoke;
  v9[3] = &unk_279707128;
  objc_copyWeak(&v12, &location);
  v10 = v4;
  v11 = &v14;
  v6 = v4;
  dispatch_sync(dataCacheSerialQueue, v9);
  v7 = v15[5];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v14, 8);

  return v7;
}

void __49__HLPDataCacheController_dataCacheForIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained dataCacheMap];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)createCacheDirectory
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  if (([v3 fileExistsAtPath:self->_cacheDirectory] & 1) == 0)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__1;
    v17 = __Block_byref_object_dispose__1;
    v18 = 0;
    v4 = [MEMORY[0x277CBEBC0] URLWithString:self->_cacheDirectory];
    v5 = objc_alloc_init(MEMORY[0x277CCA9E8]);
    objc_initWeak(&location, self);
    v6 = (v14 + 5);
    obj = v14[5];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __46__HLPDataCacheController_createCacheDirectory__block_invoke;
    v7[3] = &unk_279707150;
    v8 = v3;
    v9 = &v13;
    objc_copyWeak(&v10, &location);
    [v5 coordinateWritingItemAtURL:v4 options:8 error:&obj byAccessor:v7];
    objc_storeStrong(v6, obj);
    objc_destroyWeak(&v10);

    objc_destroyWeak(&location);
    _Block_object_dispose(&v13, 8);
  }
}

void __46__HLPDataCacheController_createCacheDirectory__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = [a2 path];
  v5 = *(*(a1 + 40) + 8);
  obj = *(v5 + 40);
  [v3 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&obj];
  objc_storeStrong((v5 + 40), obj);

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v6 = HLPLogForCategory(2uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 48));
      v8 = [WeakRetained cacheDirectory];
      *buf = 138412290;
      v12 = v8;
      _os_log_impl(&dword_2522BC000, v6, OS_LOG_TYPE_DEFAULT, "Unable to create path %@", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)cacheValidForIdentifier:(id)a3 path:(id)a4
{
  v5 = [(HLPDataCacheController *)self dataCacheForIdentifier:a3, a4];
  v6 = [(HLPDataCacheController *)self cacheFileURLForDataCache:v5];
  v7 = [v6 path];
  if (v7)
  {
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = [v6 path];
    if ([v8 fileExistsAtPath:v9])
    {
      v10 = [v5 expired] ^ 1;
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (id)cacheFileURLForDataCache:(id)a3
{
  v4 = [a3 identifier];
  v5 = [(HLPDataCacheController *)self cacheFileURLForIdentifier:v4];

  return v5;
}

- (id)cacheFileURLForIdentifier:(id)a3
{
  if (a3)
  {
    v3 = [(NSString *)self->_cacheDirectory stringByAppendingPathComponent:?];
    if (v3)
    {
      v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setLanguageCode:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (![(NSString *)self->_languageCode isEqualToString:v5])
  {
    objc_storeStrong(&self->_languageCode, a3);
    objc_initWeak(&location, self);
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__1;
    v24 = __Block_byref_object_dispose__1;
    v25 = 0;
    dataCacheSerialQueue = self->_dataCacheSerialQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__HLPDataCacheController_setLanguageCode___block_invoke;
    block[3] = &unk_279707178;
    block[4] = &v20;
    objc_copyWeak(&v19, &location);
    dispatch_sync(dataCacheSerialQueue, block);
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v21[5];
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v27 count:16];
    if (v8)
    {
      v9 = *v15;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = [*(*(&v14 + 1) + 8 * v10) languageCode];
          v12 = [v11 isEqualToString:v5];

          if ((v12 & 1) == 0)
          {

            [(HLPDataCacheController *)self removeAllDataCache];
            goto LABEL_12;
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v14 objects:v27 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
    objc_destroyWeak(&v19);
    _Block_object_dispose(&v20, 8);

    objc_destroyWeak(&location);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __42__HLPDataCacheController_setLanguageCode___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained dataCacheArray];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)reloadDataCache
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_2522BC000, log, OS_LOG_TYPE_ERROR, "Unable to unarchive %@, error: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __41__HLPDataCacheController_reloadDataCache__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained dataCacheArray];
  [v3 removeAllObjects];

  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 dataCacheMap];
  [v4 removeAllObjects];
}

void __41__HLPDataCacheController_reloadDataCache__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained cacheDirectory];
  v4 = [v2 contentsOfDirectoryAtPath:v3 error:0];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __41__HLPDataCacheController_reloadDataCache__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained dataCacheMap];
  [v4 setObject:v2 forKeyedSubscript:*(a1 + 32)];

  v6 = objc_loadWeakRetained((a1 + 48));
  v5 = [v6 dataCacheArray];
  [v5 addObject:*(a1 + 40)];
}

void __41__HLPDataCacheController_reloadDataCache__block_invoke_27(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 path];
  [v2 removeItemAtPath:v3 error:0];
}

- (void)updateCache
{
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__HLPDataCacheController_updateCache__block_invoke;
  block[3] = &unk_279707218;
  objc_copyWeak(&v4, &location);
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __37__HLPDataCacheController_updateCache__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setDataCacheDirty:1];

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:*(a1 + 32) selector:sel_updateCacheDelay object:0];
  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 performSelector:sel_updateCacheDelay withObject:0 afterDelay:2.0];
}

- (void)updateCacheDelay
{
  objc_initWeak(&location, self);
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = __Block_byref_object_copy__1;
  v8[4] = __Block_byref_object_dispose__1;
  v9 = 0;
  dataCacheSerialQueue = self->_dataCacheSerialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HLPDataCacheController_updateCacheDelay__block_invoke;
  block[3] = &unk_279707178;
  block[4] = v8;
  objc_copyWeak(&v7, &location);
  dispatch_sync(dataCacheSerialQueue, block);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__HLPDataCacheController_updateCacheDelay__block_invoke_2;
  v4[3] = &unk_279707240;
  objc_copyWeak(&v5, &location);
  v4[4] = self;
  v4[5] = v8;
  dispatch_async(MEMORY[0x277D85CD0], v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&v7);
  _Block_object_dispose(v8, 8);

  objc_destroyWeak(&location);
}

void __42__HLPDataCacheController_updateCacheDelay__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained dataCacheArray];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __42__HLPDataCacheController_updateCacheDelay__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained dataCacheDirty];

  if (v3)
  {
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:*(a1 + 32) selector:sel_updateCacheDelay object:0];
    v4 = *(*(*(a1 + 40) + 8) + 40);
    v14 = 0;
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v14];
    v6 = v14;
    if (v6)
    {
      v7 = HLPLogForCategory(2uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __42__HLPDataCacheController_updateCacheDelay__block_invoke_2_cold_1((a1 + 48), v6, v7);
      }
    }

    else
    {
      v8 = objc_loadWeakRetained((a1 + 48));
      v9 = [v8 userDefaults];
      v10 = objc_loadWeakRetained((a1 + 48));
      v11 = [v10 identifier];
      [v9 setObject:v5 forKey:v11];

      v7 = objc_loadWeakRetained((a1 + 48));
      v12 = [v7 userDefaults];
      [v12 synchronize];
    }

    v13 = objc_loadWeakRetained((a1 + 48));
    [v13 setDataCacheDirty:0];
  }
}

- (void)addDataCache:(id)a3
{
  v4 = a3;
  objc_initWeak(location, self);
  v5 = [v4 identifier];
  v6 = [(HLPDataCacheController *)self dataCacheForIdentifier:v5];
  if (!v6)
  {
    dataCacheSerialQueue = self->_dataCacheSerialQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__HLPDataCacheController_addDataCache___block_invoke;
    block[3] = &unk_279706F30;
    objc_copyWeak(&v32, location);
    v30 = v5;
    v8 = v4;
    v31 = v8;
    dispatch_sync(dataCacheSerialQueue, block);
    v9 = [v8 fileSize];
    maxDataCacheSize = self->_maxDataCacheSize;
    v11 = self->_cacheSize + v9;
    self->_cacheSize = v11;
    if (v11 > maxDataCacheSize && [v8 fileSize] < self->_maxDataCacheSize)
    {
      v12 = 0;
      v20 = __Block_byref_object_copy__1;
      v19 = __Block_byref_object_dispose__1;
      v18 = MEMORY[0x277D85DD0];
      do
      {
        v23 = 0;
        v24 = &v23;
        v25 = 0x3032000000;
        v26 = __Block_byref_object_copy__1;
        v27 = __Block_byref_object_dispose__1;
        v28 = 0;
        v13 = self->_dataCacheSerialQueue;
        v21[0] = v18;
        v21[1] = 3221225472;
        v21[2] = __39__HLPDataCacheController_addDataCache___block_invoke_2;
        v21[3] = &unk_279707178;
        v21[4] = &v23;
        objc_copyWeak(&v22, location);
        dispatch_sync(v13, v21);
        [(HLPDataCacheController *)self removeDataCache:v24[5] updateCache:0];
        v14 = v24[5];

        objc_destroyWeak(&v22);
        _Block_object_dispose(&v23, 8);

        v15 = [(HLPDataCacheController *)self cacheSize];
        if (v15 <= [(HLPDataCacheController *)self maxDataCacheSize])
        {
          break;
        }

        v16 = [(HLPDataCacheController *)self dataCacheArray];
        v17 = [v16 count];

        if (v17 < 2)
        {
          break;
        }

        v12 = v14;
      }

      while (v14 != v8);
    }

    objc_destroyWeak(&v32);
  }

  [(HLPDataCacheController *)self updateCache:v18];

  objc_destroyWeak(location);
}

void __39__HLPDataCacheController_addDataCache___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained dataCacheMap];
  [v4 setObject:v2 forKeyedSubscript:*(a1 + 32)];

  v6 = objc_loadWeakRetained((a1 + 48));
  v5 = [v6 dataCacheArray];
  [v5 addObject:*(a1 + 40)];
}

void __39__HLPDataCacheController_addDataCache___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained dataCacheArray];
  v3 = [v2 firstObject];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)cancelAllOriginSessionItems
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableArray *)self->_originFetchItems copy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v10 = +[HLPURLSessionManager defaultManager];
        [v10 cancelSessionItem:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  objc_initWeak(&location, self);
  dataCacheSerialQueue = self->_dataCacheSerialQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__HLPDataCacheController_cancelAllOriginSessionItems__block_invoke;
  v13[3] = &unk_2797071A0;
  objc_copyWeak(&v14, &location);
  dispatch_sync(dataCacheSerialQueue, v13);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  v12 = *MEMORY[0x277D85DE8];
}

void __53__HLPDataCacheController_cancelAllOriginSessionItems__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained originFetchItems];
  [v1 removeAllObjects];
}

- (void)removeAllDataCache
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [v3 enumeratorAtPath:self->_cacheDirectory];
  v5 = objc_alloc_init(MEMORY[0x277CCA9E8]);
  v6 = [v4 nextObject];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    do
    {
      v9 = [(NSString *)self->_cacheDirectory stringByAppendingPathComponent:v7];
      if (v9)
      {
        v10 = [MEMORY[0x277CBEBC0] URLWithString:v9];
        v22 = v8;
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __44__HLPDataCacheController_removeAllDataCache__block_invoke;
        v20[3] = &unk_2797071F0;
        v21 = v3;
        [v5 coordinateWritingItemAtURL:v10 options:1 error:&v22 byAccessor:v20];
        v11 = v22;

        v8 = v11;
      }

      v12 = [v4 nextObject];

      v7 = v12;
    }

    while (v12);
  }

  else
  {
    v8 = 0;
  }

  objc_initWeak(&location, self);
  dataCacheSerialQueue = self->_dataCacheSerialQueue;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __44__HLPDataCacheController_removeAllDataCache__block_invoke_2;
  v17 = &unk_2797071A0;
  objc_copyWeak(&v18, &location);
  dispatch_sync(dataCacheSerialQueue, &v14);
  self->_cacheSize = 0;
  [(HLPDataCacheController *)self updateCacheDelay:v14];
  [(NSUserDefaults *)self->_userDefaults removeObjectForKey:self->_identifier];
  [(NSUserDefaults *)self->_userDefaults synchronize];
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __44__HLPDataCacheController_removeAllDataCache__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 path];
  [v2 removeItemAtPath:v3 error:0];
}

void __44__HLPDataCacheController_removeAllDataCache__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained dataCacheMap];
  [v3 removeAllObjects];

  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 dataCacheArray];
  [v4 removeAllObjects];
}

- (void)removeCacheForIdentifier:(id)a3
{
  v4 = [(HLPDataCacheController *)self dataCacheForIdentifier:a3];
  [(HLPDataCacheController *)self removeDataCache:v4];
}

- (void)removeDataCache:(id)a3 updateCache:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 identifier];
    objc_initWeak(location, self);
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__1;
    v37 = __Block_byref_object_dispose__1;
    v38 = 0;
    dataCacheSerialQueue = self->_dataCacheSerialQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__HLPDataCacheController_removeDataCache_updateCache___block_invoke;
    block[3] = &unk_279707268;
    v31 = &v33;
    objc_copyWeak(&v32, location);
    v10 = v8;
    v30 = v10;
    dispatch_sync(dataCacheSerialQueue, block);
    if (v34[5])
    {
      v11 = [(HLPDataCacheController *)self cacheFileURLForDataCache:v7];
      v12 = [MEMORY[0x277CCAA00] defaultManager];
      v13 = [v11 path];
      if (v13)
      {
        v14 = [v11 path];
        v15 = [v12 fileExistsAtPath:v14];

        if (v15)
        {
          v16 = objc_alloc_init(MEMORY[0x277CCA9E8]);
          v28 = 0;
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __54__HLPDataCacheController_removeDataCache_updateCache___block_invoke_2;
          v26[3] = &unk_2797071F0;
          v27 = v12;
          [v16 coordinateWritingItemAtURL:v11 options:1 error:&v28 byAccessor:v26];
          v17 = v28;
        }
      }

      v18 = self->_dataCacheSerialQueue;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __54__HLPDataCacheController_removeDataCache_updateCache___block_invoke_3;
      v23[3] = &unk_279707218;
      objc_copyWeak(&v25, location);
      v24 = v10;
      dispatch_sync(v18, v23);

      objc_destroyWeak(&v25);
    }

    self->_cacheSize -= [v7 fileSize];
    v19 = self->_dataCacheSerialQueue;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __54__HLPDataCacheController_removeDataCache_updateCache___block_invoke_4;
    v20[3] = &unk_279707218;
    objc_copyWeak(&v22, location);
    v21 = v7;
    dispatch_sync(v19, v20);
    if (v4)
    {
      [(HLPDataCacheController *)self updateCache];
    }

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v32);
    _Block_object_dispose(&v33, 8);

    objc_destroyWeak(location);
  }
}

void __54__HLPDataCacheController_removeDataCache_updateCache___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained dataCacheMap];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __54__HLPDataCacheController_removeDataCache_updateCache___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 path];
  [v2 removeItemAtPath:v3 error:0];
}

void __54__HLPDataCacheController_removeDataCache_updateCache___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained dataCacheMap];
  [v2 removeObjectForKey:*(a1 + 32)];
}

void __54__HLPDataCacheController_removeDataCache_updateCache___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained dataCacheArray];
  [v2 removeObject:*(a1 + 32)];
}

- (id)newDataCache
{
  v2 = objc_alloc_init(HLPDataCache);
  [(HLPDataCache *)v2 setCacheType:0];
  [(HLPDataCache *)v2 setMaxAge:259200];
  return v2;
}

- (id)saveFileURL:(id)a3 identifier:(id)a4 fileSize:(unint64_t)a5 lastModified:(id)a6 dataCache:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = v15;
  v17 = 0;
  if (v12 && v13)
  {
    v41 = a5;
    v18 = v15;
    v19 = [v18 lastModified];
    v20 = [v19 isEqualToString:v14];

    v21 = [MEMORY[0x277CCAA00] defaultManager];
    v22 = [(HLPDataCacheController *)self cacheFileURLForIdentifier:v13];
    v23 = [v22 path];
    v44 = v21;
    if (v23)
    {
      v24 = v23;
      [v22 path];
      v42 = v20;
      v25 = v18;
      v26 = v13;
      v27 = v12;
      v28 = self;
      v29 = v14;
      v30 = v16;
      v32 = v31 = v22;
      v33 = [v21 fileExistsAtPath:v32];

      v22 = v31;
      v16 = v30;
      v14 = v29;
      self = v28;
      v12 = v27;
      v13 = v26;
      v18 = v25;

      if (v42 & v33)
      {
        v17 = 0;
LABEL_17:

        goto LABEL_18;
      }
    }

    else
    {
      LOBYTE(v33) = 0;
    }

    v34 = v22;
    [(HLPDataCacheController *)self createCacheDirectory];
    v59 = 0;
    v60 = &v59;
    v61 = 0x2020000000;
    v62 = 0;
    v53 = 0;
    v54 = &v53;
    v55 = 0x3032000000;
    v56 = __Block_byref_object_copy__1;
    v57 = __Block_byref_object_dispose__1;
    v58 = 0;
    v43 = objc_alloc_init(MEMORY[0x277CCA9E8]);
    v35 = (v54 + 5);
    obj = v54[5];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __81__HLPDataCacheController_saveFileURL_identifier_fileSize_lastModified_dataCache___block_invoke;
    v45[3] = &unk_279707290;
    v51 = v33;
    v46 = v44;
    v49 = &v53;
    v17 = v34;
    v47 = v17;
    v48 = v12;
    v50 = &v59;
    [v43 coordinateWritingItemAtURL:v17 options:1 writingItemAtURL:v17 options:2 error:&obj byAccessor:v45];
    objc_storeStrong(v35, obj);
    v36 = *(v60 + 24);
    if (v18)
    {
      if (*(v60 + 24))
      {
        -[HLPDataCacheController setCacheSize:](self, "setCacheSize:", -[HLPDataCacheController cacheSize](self, "cacheSize") - [v18 fileSize]);
        [(HLPDataCacheController *)self setCacheSize:[(HLPDataCacheController *)self cacheSize]+ v41];
LABEL_14:
        [v18 setLastModified:{v14, v22}];
        v38 = [MEMORY[0x277CBEAA8] date];
        [v18 setUpdatedDate:v38];

        [v18 setFileSize:v41];
        if (v18)
        {
          [(HLPDataCacheController *)self addDataCache:v18];
        }

        _Block_object_dispose(&v53, 8);
        _Block_object_dispose(&v59, 8);
        v22 = v40;
        goto LABEL_17;
      }

      [(HLPDataCacheController *)self removeDataCache:v18];
    }

    else if (*(v60 + 24))
    {
      v18 = [(HLPDataCacheController *)self newDataCache];
      v37 = [(HLPDataCacheController *)self languageCode];
      [v18 setLanguageCode:v37];

      [v18 setIdentifier:v13];
      goto LABEL_14;
    }

    v18 = 0;
    goto LABEL_14;
  }

LABEL_18:

  return v17;
}

void __81__HLPDataCacheController_saveFileURL_identifier_fileSize_lastModified_dataCache___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*(a1 + 72) == 1)
  {
    v7 = *(a1 + 32);
    v8 = *(*(a1 + 56) + 8);
    obj = *(v8 + 40);
    [v7 removeItemAtURL:v5 error:&obj];
    objc_storeStrong((v8 + 40), obj);
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      v9 = HLPLogForCategory(2uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 40);
        v11 = *(*(*(a1 + 56) + 8) + 40);
        *buf = 138412546;
        v22 = v10;
        v23 = 2112;
        v24 = v11;
        _os_log_impl(&dword_2522BC000, v9, OS_LOG_TYPE_DEFAULT, "Unable to delete %@. Error: %@", buf, 0x16u);
      }
    }
  }

  v12 = *(a1 + 32);
  v13 = *(a1 + 48);
  v14 = *(*(a1 + 56) + 8);
  v19 = *(v14 + 40);
  v15 = [v12 moveItemAtURL:v13 toURL:v6 error:&v19];
  objc_storeStrong((v14 + 40), v19);
  if (v15 && !*(*(*(a1 + 56) + 8) + 40))
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  else
  {
    v16 = HLPLogForCategory(2uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138412290;
      v22 = v17;
      _os_log_impl(&dword_2522BC000, v16, OS_LOG_TYPE_DEFAULT, "Unable to save cache image %@", buf, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)formattedDataForRequest:(id)a3 identifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 URL];
  v38 = [v11 path];
  if (!v38)
  {
    v13 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"Empty data path" code:-1 userInfo:0];
    (*(v10 + 2))(v10, 0, 0, 0, 0, v13);

    v14 = 0;
    goto LABEL_28;
  }

  if (!v9)
  {
    v9 = [v38 lastPathComponent];
  }

  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 1;
  v37 = v10;
  if ([v8 cachePolicy] == 1)
  {
    v12 = 0;
  }

  else
  {
    v15 = [(HLPDataCacheController *)self dataCacheForIdentifier:v9];
    v16 = [(HLPDataCacheController *)self cacheFileURLForDataCache:v15];
    v17 = [v16 path];
    if (!v17)
    {
      goto LABEL_12;
    }

    v18 = [MEMORY[0x277CCAA00] defaultManager];
    v19 = [v16 path];
    v20 = [v18 fileExistsAtPath:v19];

    if (v20)
    {
      v21 = [v15 identifier];
      v22 = [(HLPDataCacheController *)self cacheFileURLForIdentifier:v21];

      if (v22 && [(HLPDataCacheController *)self isURLValid:v22])
      {
        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = __79__HLPDataCacheController_formattedDataForRequest_identifier_completionHandler___block_invoke;
        v54[3] = &unk_2797072B8;
        v58 = v37;
        v55 = v15;
        v59 = &v60;
        v56 = v38;
        v57 = self;
        [(HLPDataCacheController *)self formattedDataWithFileURL:v22 completionHandler:v54];

        v12 = 1;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
LABEL_12:
      if (v15)
      {
        [(HLPDataCacheController *)self removeDataCache:v15];
      }

      v12 = 0;
      v22 = v16;
    }

    v10 = v37;
  }

  if ((v61[3] & 1) == 0 && ![(HLPDataCacheController *)self backgroundOriginUpdate])
  {
    goto LABEL_21;
  }

  if (![v11 isFileURL])
  {
    v23 = +[HLPURLSessionManager defaultManager];
    if (v12)
    {
      v44 = 0;
      v45 = &v44;
      v46 = 0x3032000000;
      v47 = __Block_byref_object_copy__1;
      v48 = __Block_byref_object_dispose__1;
      v49 = 0;
      objc_initWeak(&location, self);
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __79__HLPDataCacheController_formattedDataForRequest_identifier_completionHandler___block_invoke_3;
      v41[3] = &unk_279707330;
      objc_copyWeak(&v42, &location);
      v41[4] = &v44;
      v24 = [v23 newURLSessionItemWithRequest:v8 identifier:v9 completionHandler:v41];
      v25 = v45[5];
      v45[5] = v24;

      dataType = self->_dataType;
      v27 = [v45[5] sessionTask];
      [v27 setDataType:dataType];

      v28 = [v45[5] sessionTask];
      LODWORD(v29) = *MEMORY[0x277CCA7A0];
      [v28 setPriority:v29];

      [v23 resumeSessionItem:v45[5]];
      dataCacheSerialQueue = self->_dataCacheSerialQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __79__HLPDataCacheController_formattedDataForRequest_identifier_completionHandler___block_invoke_4;
      block[3] = &unk_279707358;
      objc_copyWeak(&v40, &location);
      block[4] = &v44;
      dispatch_sync(dataCacheSerialQueue, block);
      objc_destroyWeak(&v40);
      objc_destroyWeak(&v42);
      objc_destroyWeak(&location);
      _Block_object_dispose(&v44, 8);

      v14 = 0;
    }

    else
    {
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __79__HLPDataCacheController_formattedDataForRequest_identifier_completionHandler___block_invoke_2;
      v50[3] = &unk_279707308;
      v51 = v37;
      v14 = [v23 newURLSessionItemWithRequest:v8 identifier:v9 completionHandler:v50];
      v31 = self->_dataType;
      v32 = [v14 sessionTask];
      [v32 setDataType:v31];

      defaultPriority = self->_defaultPriority;
      v34 = [v14 sessionTask];
      *&v35 = defaultPriority;
      [v34 setPriority:v35];

      [v23 resumeSessionItem:v14];
    }

    goto LABEL_26;
  }

  if ((v12 & 1) == 0)
  {
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __79__HLPDataCacheController_formattedDataForRequest_identifier_completionHandler___block_invoke_36;
    v52[3] = &unk_2797072E0;
    v53 = v10;
    [(HLPDataCacheController *)self formattedDataWithFileURL:v11 completionHandler:v52];
    v14 = 0;
    v23 = v53;
LABEL_26:

    goto LABEL_27;
  }

LABEL_21:
  v14 = 0;
LABEL_27:
  _Block_object_dispose(&v60, 8);
  v10 = v37;
LABEL_28:

  return v14;
}

void __79__HLPDataCacheController_formattedDataForRequest_identifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 56);
    v8 = [*(a1 + 32) lastModified];
    (*(v7 + 16))(v7, v5, v6, 1, v8, 0);

    v9 = HLPLogForCategory(2uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v15 = 138412290;
      v16 = v10;
      _os_log_impl(&dword_2522BC000, v9, OS_LOG_TYPE_DEFAULT, "Data cache exists for %@", &v15, 0xCu);
    }

    if ([*(a1 + 32) expired])
    {
      v11 = HLPLogForCategory(2uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __79__HLPDataCacheController_formattedDataForRequest_identifier_completionHandler___block_invoke_cold_1(a1, (a1 + 32), v11);
      }
    }

    else
    {
      *(*(*(a1 + 64) + 8) + 24) = 0;
    }
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
    [*(a1 + 48) removeDataCache:*(a1 + 32)];
    v12 = *(a1 + 56);
    v13 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"Invalid data cache" code:-1 userInfo:0];
    (*(v12 + 16))(v12, 0, 0, 0, 0, v13);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __79__HLPDataCacheController_formattedDataForRequest_identifier_completionHandler___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained originFetchItems];
  [v2 removeObject:*(*(*(a1 + 32) + 8) + 40)];
}

void __79__HLPDataCacheController_formattedDataForRequest_identifier_completionHandler___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained originFetchItems];
  [v2 addObject:*(*(*(a1 + 32) + 8) + 40)];
}

- (id)formattedDataForPath:(id)a3 identifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && (v11 = MEMORY[0x277CCAD20], [MEMORY[0x277CBEBC0] URLWithString:v8], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "requestWithURL:", v12), v13 = objc_claimAutoreleasedReturnValue(), v12, v13))
  {
    v14 = [(HLPDataCacheController *)self formattedDataForRequest:v13 identifier:v9 completionHandler:v10];
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"Invalid request" code:-1 userInfo:0];
    (*(v10 + 2))(v10, 0, 0, 0, 0, v13);
    v14 = 0;
  }

  return v14;
}

void __42__HLPDataCacheController_updateCacheDelay__block_invoke_2_cold_1(id *a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1);
  v6 = [WeakRetained dataCacheArray];
  v8 = 138412546;
  v9 = v6;
  v10 = 2112;
  v11 = a2;
  _os_log_error_impl(&dword_2522BC000, a3, OS_LOG_TYPE_ERROR, "Unable to archive %@, error: %@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __79__HLPDataCacheController_formattedDataForRequest_identifier_completionHandler___block_invoke_cold_1(uint64_t a1, id *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  v5 = [*a2 updatedDate];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  _os_log_debug_impl(&dword_2522BC000, a3, OS_LOG_TYPE_DEBUG, "Data cache expired for %@.  Last update on %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end