@interface NTKPigmentSyncProvider
+ (BOOL)areCollections:(id)collections equalToCollections:(id)toCollections;
- (BOOL)isSyncing;
- (BOOL)prepareForSyncing:(BOOL)syncing;
- (BOOL)shouldForceFullSync;
- (NTKPigmentSyncProvider)initWithDelegate:(id)delegate;
- (NTKPigmentSyncProviderDelegate)delegate;
- (id)allAvailableFacesSupportingPigment;
- (id)compareLocalSyncDifferences;
- (id)nextSyncData:(id *)data;
- (void)_requestDeltaSyncIfNeeded;
- (void)colorBundleContentChanged;
- (void)colorEditOptionStore:(id)store didChangeForDomain:(id)domain;
- (void)enumerateAllFacesPigmentDomains:(id)domains;
- (void)faceBundlesUpdated;
- (void)finishSyncing:(BOOL)syncing;
- (void)saveSyncVersion;
@end

@implementation NTKPigmentSyncProvider

- (NTKPigmentSyncProvider)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v24.receiver = self;
  v24.super_class = NTKPigmentSyncProvider;
  v5 = [(NTKPigmentSyncProvider *)&v24 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = dispatch_queue_create("com.apple.NanoTimeKit.NTKPigmentSyncProvider", v6);
    privateQueue = v5->_privateQueue;
    v5->_privateQueue = v7;

    mEMORY[0x277CBBB68] = [MEMORY[0x277CBBB68] sharedRenderingContext];
    device = [mEMORY[0x277CBBB68] device];
    device = v5->_device;
    v5->_device = device;

    v12 = +[NTKPigmentEditOptionStore sharedInstance];
    pigmentStore = v5->_pigmentStore;
    v5->_pigmentStore = v12;

    [(NTKPigmentEditOptionStore *)v5->_pigmentStore addListener:v5 forDomain:0];
    v14 = [NTKPigmentPersistentStorageController alloc];
    v15 = +[NTKPigmentPersistentStorageController syncStoresFolder];
    v16 = [(NTKPigmentPersistentStorageController *)v14 initWithRootDirectory:v15];
    storageController = v5->_storageController;
    v5->_storageController = v16;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel_colorBundleContentChanged name:@"NTKColorBundleContentChangedNotificationName" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v5 selector:sel_faceBundlesUpdated name:@"NTKFaceBundleManagerDidUpdateBundlesNotificationName" object:0];

    v20 = v5->_privateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__NTKPigmentSyncProvider_initWithDelegate___block_invoke;
    block[3] = &unk_27877DB10;
    v23 = v5;
    dispatch_sync(v20, block);
  }

  return v5;
}

uint64_t __43__NTKPigmentSyncProvider_initWithDelegate___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) compareLocalSyncDifferences];
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;

  v5 = [*(a1 + 32) shouldForceFullSync];
  v6 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      LOWORD(v13) = 0;
      v8 = "#sync Starting NTKPigmentSyncProvider - Will force full sync";
      v9 = v6;
      v10 = 2;
LABEL_6:
      _os_log_impl(&dword_22D9C5000, v9, OS_LOG_TYPE_DEFAULT, v8, &v13, v10);
    }
  }

  else if (v7)
  {
    v11 = [*(*(a1 + 32) + 56) count];
    v13 = 134217984;
    v14 = v11;
    v8 = "#sync Starting NTKPigmentSyncProvider - Number of domains to sync %lu";
    v9 = v6;
    v10 = 12;
    goto LABEL_6;
  }

  return [*(a1 + 32) _requestDeltaSyncIfNeeded];
}

- (BOOL)prepareForSyncing:(BOOL)syncing
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  privateQueue = self->_privateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__NTKPigmentSyncProvider_prepareForSyncing___block_invoke;
  block[3] = &unk_278786280;
  syncingCopy = syncing;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(privateQueue, block);
  v4 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

void __44__NTKPigmentSyncProvider_prepareForSyncing___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) shouldForceFullSync];
  v4 = v3;
  if ((v2[16] & 1) != 0 || v3)
  {
    v14 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v21 = v4;
      _os_log_impl(&dword_22D9C5000, v14, OS_LOG_TYPE_DEFAULT, "#sync will sync colors for all domains. forcing full sync: %lu", buf, 0xCu);
    }

    v12 = 1;
    *(*v2 + 9) = 1;
    v15 = [MEMORY[0x277CBEB18] array];
    v16 = *(*v2 + 64);
    *(*v2 + 64) = v15;

    v17 = *v2;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __44__NTKPigmentSyncProvider_prepareForSyncing___block_invoke_31;
    v19[3] = &unk_278786258;
    v19[4] = v17;
    [v17 enumerateAllFacesPigmentDomains:v19];
    v13 = 8;
    goto LABEL_16;
  }

  if ([*(*v2 + 56) count])
  {
    v5 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*v2 + 56);
      *buf = 138543362;
      v21 = v6;
      _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "#sync will sync colors for domains %{public}@", buf, 0xCu);
    }

    *(*v2 + 9) = [*(*v2 + 56) containsObject:@"sharedCollections"];
    v7 = [MEMORY[0x277CBEB18] array];
    v8 = *(*v2 + 64);
    *(*v2 + 64) = v7;

    v9 = *v2;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __44__NTKPigmentSyncProvider_prepareForSyncing___block_invoke_34;
    v18[3] = &unk_278786258;
    v18[4] = v9;
    [v9 enumerateAllFacesPigmentDomains:v18];
    if ([*(*v2 + 56) count] && (objc_msgSend(*(*v2 + 56), "count") != 1 || (objc_msgSend(*(*v2 + 56), "containsObject:", @"sharedCollections") & 1) == 0))
    {
      v10 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __44__NTKPigmentSyncProvider_prepareForSyncing___block_invoke_cold_1(v2, v10);
      }
    }

    v11 = *(*v2 + 56);
    *(*v2 + 56) = 0;

    v12 = 0;
    *(*v2 + 8) = 1;
    v13 = 11;
LABEL_16:
    *(*v2 + v13) = v12;
  }

  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 8);
}

void __44__NTKPigmentSyncProvider_prepareForSyncing___block_invoke_31(uint64_t a1, void *a2, void *a3)
{
  v4 = *(*(a1 + 32) + 64);
  v5 = a3;
  v6 = a2;
  v7 = [[_NTKPigmentSyncProviderFaceDomain alloc] initWithFace:v6 domain:v5];

  [v4 addObject:v7];
}

void __44__NTKPigmentSyncProvider_prepareForSyncing___block_invoke_34(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ([*(*(a1 + 32) + 56) containsObject:v5])
  {
    v6 = *(*(a1 + 32) + 64);
    v7 = [[_NTKPigmentSyncProviderFaceDomain alloc] initWithFace:v8 domain:v5];
    [v6 addObject:v7];

    [*(*(a1 + 32) + 56) removeObject:v5];
  }
}

- (void)enumerateAllFacesPigmentDomains:(id)domains
{
  domainsCopy = domains;
  if (NTKInternalBuild(domainsCopy, v5) && (CLKIsNTKDaemon() & 1) == 0 && (CLKIsNTKXCTests() & 1) == 0)
  {
    v6 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [NTKPigmentSyncProvider enumerateAllFacesPigmentDomains:v6];
    }
  }

  allAvailableFacesSupportingPigment = [(NTKPigmentSyncProvider *)self allAvailableFacesSupportingPigment];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__NTKPigmentSyncProvider_enumerateAllFacesPigmentDomains___block_invoke;
  v9[3] = &unk_2787862A8;
  v10 = domainsCopy;
  v8 = domainsCopy;
  [allAvailableFacesSupportingPigment enumerateObjectsUsingBlock:v9];
}

void __58__NTKPigmentSyncProvider_enumerateAllFacesPigmentDomains___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [objc_opt_class() allPigmentFaceDomains];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(a1 + 32) + 16))();
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)nextSyncData:(id *)data
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__44;
  v18 = __Block_byref_object_dispose__44;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__44;
  v12 = __Block_byref_object_dispose__44;
  v13 = 0;
  privateQueue = self->_privateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__NTKPigmentSyncProvider_nextSyncData___block_invoke;
  block[3] = &unk_2787862D0;
  block[4] = self;
  block[5] = &v8;
  block[6] = &v14;
  dispatch_sync(privateQueue, block);
  if (data)
  {
    *data = v9[5];
  }

  v5 = v15[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);

  return v5;
}

void __39__NTKPigmentSyncProvider_nextSyncData___block_invoke(void *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  if (*(v2 + 9) == 1)
  {
    *(v2 + 9) = 0;
    v3 = [*(a1[4] + 24) sharedCollections];
    if (v3)
    {
      v4 = [NTKProtoSharedCollections protoBufferFromSharedCollections:v3];
      objc_storeStrong((*(a1[5] + 8) + 40), @"sharedCollections");
      v5 = [v4 data];
      v6 = *(a1[6] + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      v8 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [*(*(a1[6] + 8) + 40) length];
        v24 = 134217984;
        v25 = v9;
        _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_INFO, "#sync Loaded pigment shared collections for sync - data size: %lu", &v24, 0xCu);
      }

LABEL_11:
    }
  }

  else
  {
    v3 = [*(v2 + 64) firstObject];
    if (v3)
    {
      [*(a1[4] + 64) removeObjectAtIndex:0];
      v10 = *(a1[4] + 24);
      v11 = [v3 domain];
      v12 = MEMORY[0x277CCA8D8];
      v13 = [v3 face];
      v14 = [v12 bundleForClass:objc_opt_class()];
      v4 = [v10 pigmentSetForDomain:v11 bundle:v14];

      if (v4)
      {
        v15 = [v4 domain];
        v16 = *(a1[5] + 8);
        v17 = *(v16 + 40);
        *(v16 + 40) = v15;

        v18 = [v4 protoBuffer];
        v19 = [v18 data];
        v20 = *(a1[6] + 8);
        v21 = *(v20 + 40);
        *(v20 + 40) = v19;

        v8 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v22 = [v4 domain];
          v23 = [*(*(a1[6] + 8) + 40) length];
          v24 = 138543618;
          v25 = v22;
          v26 = 2048;
          v27 = v23;
          _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_INFO, "#sync Loaded pigment set for sync - face domain: %{public}@, data size: %lu", &v24, 0x16u);
        }
      }

      else
      {
        v8 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          __39__NTKPigmentSyncProvider_nextSyncData___block_invoke_cold_1(v3, v8);
        }
      }

      goto LABEL_11;
    }
  }
}

- (BOOL)isSyncing
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  privateQueue = self->_privateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__NTKPigmentSyncProvider_isSyncing__block_invoke;
  v5[3] = &unk_278780D18;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(privateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)finishSyncing:(BOOL)syncing
{
  privateQueue = self->_privateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__NTKPigmentSyncProvider_finishSyncing___block_invoke;
  v4[3] = &unk_27877F7E8;
  v4[4] = self;
  syncingCopy = syncing;
  dispatch_sync(privateQueue, v4);
}

void __40__NTKPigmentSyncProvider_finishSyncing___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 8) == 1)
  {
    *(v1 + 8) = 0;
    v3 = *(a1 + 32);
    if (*(a1 + 40) == 1 && (*(v3 + 11) & 1) == 0)
    {
      v4 = *(v3 + 32);
      v5 = [*(v3 + 24) sharedCollections];
      [v4 persistSharedCollections:v5 deviceUUID:0];

      v6 = *(a1 + 32);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __40__NTKPigmentSyncProvider_finishSyncing___block_invoke_2;
      v12[3] = &unk_278786258;
      v12[4] = v6;
      [v6 enumerateAllFacesPigmentDomains:v12];
      [*(a1 + 32) saveSyncVersion];
      v3 = *(a1 + 32);
    }

    if (*(v3 + 10) == 1)
    {
      *(v3 + 10) = 0;
      v7 = *(a1 + 32);
      v8 = *(v7 + 40);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __40__NTKPigmentSyncProvider_finishSyncing___block_invoke_3;
      v11[3] = &unk_27877DB10;
      v11[4] = v7;
      dispatch_async(v8, v11);
      v3 = *(a1 + 32);
    }

    [*(v3 + 32) closeTransactionForDeviceUUID:0];
    v9 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      *buf = 134217984;
      v14 = v10;
      _os_log_impl(&dword_22D9C5000, v9, OS_LOG_TYPE_DEFAULT, "#sync Finished syncing. success:%lu", buf, 0xCu);
    }
  }
}

void __40__NTKPigmentSyncProvider_finishSyncing___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(a1 + 32) + 24);
  v5 = MEMORY[0x277CCA8D8];
  v6 = a3;
  v7 = [v5 bundleForClass:objc_opt_class()];
  v9 = [v4 pigmentSetForDomain:v6 bundle:v7];

  v8 = [*(a1 + 32) storageController];
  [v8 persistFacePigmentSet:v9 deviceUUID:0];
}

- (void)saveSyncVersion
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  [standardUserDefaults setObject:v2 forKey:@"NTKPigmentSyncProviderSyncVersion"];
}

- (BOOL)shouldForceFullSync
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"NTKPigmentSyncProviderSyncVersion"];
  integerValue = [v3 integerValue];

  return integerValue != 2;
}

- (void)colorBundleContentChanged
{
  privateQueue = self->_privateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__NTKPigmentSyncProvider_colorBundleContentChanged__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(privateQueue, block);
}

uint64_t __51__NTKPigmentSyncProvider_colorBundleContentChanged__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setReceivedUpdateDuringSync:*(*(a1 + 32) + 8)];
  v2 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_DEFAULT, "#sync color bundles changed. It will attempt to request delta sync", v4, 2u);
  }

  return [*(a1 + 32) _requestDeltaSyncIfNeeded];
}

- (void)faceBundlesUpdated
{
  privateQueue = self->_privateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__NTKPigmentSyncProvider_faceBundlesUpdated__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(privateQueue, block);
}

uint64_t __44__NTKPigmentSyncProvider_faceBundlesUpdated__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setReceivedUpdateDuringSync:*(*(a1 + 32) + 8)];
  v2 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_DEFAULT, "#sync face bundles updated. It will attempt to request delta sync", v4, 2u);
  }

  return [*(a1 + 32) _requestDeltaSyncIfNeeded];
}

- (void)colorEditOptionStore:(id)store didChangeForDomain:(id)domain
{
  privateQueue = self->_privateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__NTKPigmentSyncProvider_colorEditOptionStore_didChangeForDomain___block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(privateQueue, block);
}

uint64_t __66__NTKPigmentSyncProvider_colorEditOptionStore_didChangeForDomain___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setReceivedUpdateDuringSync:*(*(a1 + 32) + 8)];
  v2 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_DEFAULT, "#sync pigment store changed. It will attempt to request delta sync", v4, 2u);
  }

  return [*(a1 + 32) _requestDeltaSyncIfNeeded];
}

- (void)_requestDeltaSyncIfNeeded
{
  v16 = *MEMORY[0x277D85DE8];
  sharedCollections = [(NTKPigmentPersistentStorageController *)self->_storageController sharedCollections];
  if (!sharedCollections)
  {
    v10 = _NTKLoggingObjectForDomain(5, "NTKLoggingDomainSync");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      v11 = "#color-sync Ignoring request delta sync, waiting for reset sync request";
LABEL_15:
      _os_log_impl(&dword_22D9C5000, v10, OS_LOG_TYPE_DEFAULT, v11, &v14, 2u);
    }

LABEL_16:

    goto LABEL_17;
  }

  compareLocalSyncDifferences = [(NTKPigmentSyncProvider *)self compareLocalSyncDifferences];
  domainsRequiringDeltaSync = self->_domainsRequiringDeltaSync;
  self->_domainsRequiringDeltaSync = compareLocalSyncDifferences;

  if (![(NSMutableSet *)self->_domainsRequiringDeltaSync count]&& ![(NTKPigmentSyncProvider *)self shouldForceFullSync])
  {
    v10 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      v11 = "#sync No changes since last sync";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  syncing = self->_syncing;
  v7 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (syncing)
  {
    if (v8)
    {
      v9 = [(NSMutableSet *)self->_domainsRequiringDeltaSync count];
      v14 = 134217984;
      v15 = v9;
      _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "#sync Needs to request delta sync due to changes in pigment set for domains (%lu)", &v14, 0xCu);
    }

    self->_requestDeltaSyncAfterSyncing = 1;
  }

  else
  {
    if (v8)
    {
      v12 = [(NSMutableSet *)self->_domainsRequiringDeltaSync count];
      v14 = 134217984;
      v15 = v12;
      _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "#sync Requesting delta sync due to changes in pigment set for domains (%lu)", &v14, 0xCu);
    }

    delegate = [(NTKPigmentSyncProvider *)self delegate];
    [delegate syncProviderDidRequiresDeltaSync:self];
  }

LABEL_17:
}

- (id)compareLocalSyncDifferences
{
  v3 = [MEMORY[0x277CBEB58] set];
  sharedCollections = [(NTKPigmentEditOptionStore *)self->_pigmentStore sharedCollections];
  sharedCollections2 = [(NTKPigmentPersistentStorageController *)self->_storageController sharedCollections];
  if (([objc_opt_class() areCollections:sharedCollections equalToCollections:sharedCollections2] & 1) == 0)
  {
    [v3 addObject:@"sharedCollections"];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__NTKPigmentSyncProvider_compareLocalSyncDifferences__block_invoke;
  v11[3] = &unk_2787862F8;
  v11[4] = self;
  v12 = sharedCollections2;
  v6 = v3;
  v13 = v6;
  v7 = sharedCollections2;
  [(NTKPigmentSyncProvider *)self enumerateAllFacesPigmentDomains:v11];
  v8 = v13;
  v9 = v6;

  return v6;
}

void __53__NTKPigmentSyncProvider_compareLocalSyncDifferences__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [*(*(a1 + 32) + 24) pigmentSetForDomain:v5 bundle:v7];
  v9 = [*(*(a1 + 32) + 32) facePigmentSetForDomain:v5 sharedCollections:*(a1 + 40)];
  if (([v8 isEqual:v9] & 1) == 0)
  {
    [*(a1 + 48) addObject:v5];
  }

  objc_autoreleasePoolPop(v6);
}

- (id)allAvailableFacesSupportingPigment
{
  v20 = *MEMORY[0x277D85DE8];
  if (NTKInternalBuild(self, a2) && (CLKIsNTKDaemon() & 1) == 0 && (CLKIsNTKXCTests() & 1) == 0)
  {
    v3 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [NTKPigmentSyncProvider enumerateAllFacesPigmentDomains:v3];
    }
  }

  v4 = NTKAllAvailableFaceDescriptors(self->_device);
  v5 = [v4 mutableCopy];

  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [NTKFace defaultFaceFromFaceDescriptor:*(*(&v15 + 1) + 8 * i) forDevice:self->_device, v15];
        if ([v12 supportsPigmentEditOption])
        {
          pigmentFaceDomain = [objc_opt_class() pigmentFaceDomain];
          if (pigmentFaceDomain)
          {
            [v6 addObject:v12];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return v6;
}

+ (BOOL)areCollections:(id)collections equalToCollections:(id)toCollections
{
  collectionsCopy = collections;
  toCollectionsCopy = toCollections;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v7 = [collectionsCopy count];
  v16 = v7 == [toCollectionsCopy count];
  if (*(v14 + 24) == 1)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __60__NTKPigmentSyncProvider_areCollections_equalToCollections___block_invoke;
    v10[3] = &unk_278786320;
    v12 = &v13;
    v11 = toCollectionsCopy;
    [collectionsCopy enumerateKeysAndObjectsUsingBlock:v10];

    v8 = *(v14 + 24);
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v13, 8);

  return v8 & 1;
}

void __60__NTKPigmentSyncProvider_areCollections_equalToCollections___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  v9 = [*(a1 + 32) objectForKeyedSubscript:v10];
  *(*(*(a1 + 40) + 8) + 24) = NTKEqualObjects(v7, v9);

  *a4 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
  objc_autoreleasePoolPop(v8);
}

- (NTKPigmentSyncProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __44__NTKPigmentSyncProvider_prepareForSyncing___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 56);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "#sync Domains requiring delta sync will be ignored because there is no face descriptor for them. %{public}@", &v3, 0xCu);
}

void __39__NTKPigmentSyncProvider_nextSyncData___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [a1 domain];
  v5 = [a1 face];
  v6 = 138543618;
  v7 = v4;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "#sync No pigment set for domain. It won't be synced %{public}@ - %{public}@", &v6, 0x16u);
}

@end