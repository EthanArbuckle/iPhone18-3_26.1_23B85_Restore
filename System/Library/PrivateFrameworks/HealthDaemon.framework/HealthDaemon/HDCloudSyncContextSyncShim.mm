@interface HDCloudSyncContextSyncShim
- (HDCloudSyncContextSyncShim)initWithProfile:(id)profile;
- (void)fetchLocalKeyValueForProtectionCategory:(int64_t)category completion:(id)completion;
- (void)ingestRemoteDeviceContexts:(id)contexts completion:(id)completion;
- (void)lookupOrCreateLocalDeviceContextWithCompletion:(id)completion;
- (void)updateKeyValuePairsForRemoteEntries:(id)entries deviceContexts:(id)contexts completion:(id)completion;
@end

@implementation HDCloudSyncContextSyncShim

- (HDCloudSyncContextSyncShim)initWithProfile:(id)profile
{
  profileCopy = profile;
  v10.receiver = self;
  v10.super_class = HDCloudSyncContextSyncShim;
  v5 = [(HDCloudSyncContextSyncShim *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v7 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;
  }

  return v6;
}

- (void)lookupOrCreateLocalDeviceContextWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  deviceContextManager = [WeakRetained deviceContextManager];

  v26 = 0;
  v7 = [deviceContextManager lookupOrCreateLocalDeviceContextWithError:&v26];
  v8 = v26;
  v9 = v8;
  if (v7)
  {
    v22 = v8;
    v10 = [deviceContextManager updateSoftwareVersionForCurrentSyncIdentityWithError:&v22];
    v11 = v22;

    queue = self->_queue;
    if (v10)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __77__HDCloudSyncContextSyncShim_lookupOrCreateLocalDeviceContextWithCompletion___block_invoke_3;
      v16[3] = &unk_278614008;
      v13 = &v18;
      v18 = completionCopy;
      v14 = &v17;
      v17 = v7;
      v15 = v16;
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __77__HDCloudSyncContextSyncShim_lookupOrCreateLocalDeviceContextWithCompletion___block_invoke_2;
      block[3] = &unk_278614008;
      v13 = &v21;
      v21 = completionCopy;
      v14 = &v20;
      v11 = v11;
      v20 = v11;
      v15 = block;
    }
  }

  else
  {
    queue = self->_queue;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __77__HDCloudSyncContextSyncShim_lookupOrCreateLocalDeviceContextWithCompletion___block_invoke;
    v23[3] = &unk_278614008;
    v13 = &v25;
    v25 = completionCopy;
    v14 = &v24;
    v11 = v9;
    v24 = v11;
    v15 = v23;
  }

  dispatch_async(queue, v15);
}

- (void)ingestRemoteDeviceContexts:(id)contexts completion:(id)completion
{
  contextsCopy = contexts;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];

  v21 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __68__HDCloudSyncContextSyncShim_ingestRemoteDeviceContexts_completion___block_invoke;
  v19[3] = &unk_278613218;
  v19[4] = self;
  v20 = contextsCopy;
  v10 = contextsCopy;
  LOBYTE(WeakRetained) = [(HDHealthEntity *)HDDeviceContextEntity performWriteTransactionWithHealthDatabase:database error:&v21 block:v19];
  v11 = v21;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __68__HDCloudSyncContextSyncShim_ingestRemoteDeviceContexts_completion___block_invoke_2;
  v15[3] = &unk_278616460;
  v18 = WeakRetained;
  v16 = v11;
  v17 = completionCopy;
  v13 = v11;
  v14 = completionCopy;
  dispatch_async(queue, v15);
}

uint64_t __68__HDCloudSyncContextSyncShim_ingestRemoteDeviceContexts_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((v5 + 8));
  v8 = [WeakRetained deviceContextManager];
  v9 = [v8 ingestRemoteDeviceContexts:*(a1 + 40) transaction:v6 error:a3];

  return v9;
}

- (void)fetchLocalKeyValueForProtectionCategory:(int64_t)category completion:(id)completion
{
  completionCopy = completion;
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  deviceKeyValueStoreManager = [WeakRetained deviceKeyValueStoreManager];
  v9 = objc_loadWeakRetained(&self->_profile);
  syncIdentityManager = [v9 syncIdentityManager];
  currentSyncIdentity = [syncIdentityManager currentSyncIdentity];
  identity = [currentSyncIdentity identity];
  v27 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __81__HDCloudSyncContextSyncShim_fetchLocalKeyValueForProtectionCategory_completion___block_invoke;
  v25[3] = &unk_278626150;
  v13 = v6;
  v26 = v13;
  LOBYTE(category) = [deviceKeyValueStoreManager enumerateAllEntriesForSyncIdentity:identity protectionCategory:category error:&v27 enumerationHandler:v25];
  v14 = v27;

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__HDCloudSyncContextSyncShim_fetchLocalKeyValueForProtectionCategory_completion___block_invoke_2;
  block[3] = &unk_278626178;
  v22 = v14;
  v23 = completionCopy;
  categoryCopy = category;
  v21 = v13;
  v16 = v14;
  v17 = v13;
  v18 = completionCopy;
  dispatch_async(queue, block);
}

uint64_t __81__HDCloudSyncContextSyncShim_fetchLocalKeyValueForProtectionCategory_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(a1 + 56) == 1)
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
  }

  return (*(v2 + 16))(v2, v3, *(a1 + 40));
}

- (void)updateKeyValuePairsForRemoteEntries:(id)entries deviceContexts:(id)contexts completion:(id)completion
{
  completionCopy = completion;
  contextsCopy = contexts;
  entriesCopy = entries;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  deviceKeyValueStoreManager = [WeakRetained deviceKeyValueStoreManager];
  v22 = 0;
  v13 = [deviceKeyValueStoreManager updateKeyValuePairsForRemoteEntries:entriesCopy deviceContexts:contextsCopy error:&v22];

  v14 = v22;
  queue = self->_queue;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __92__HDCloudSyncContextSyncShim_updateKeyValuePairsForRemoteEntries_deviceContexts_completion___block_invoke;
  v18[3] = &unk_278616460;
  v21 = v13;
  v19 = v14;
  v20 = completionCopy;
  v16 = v14;
  v17 = completionCopy;
  dispatch_async(queue, v18);
}

@end