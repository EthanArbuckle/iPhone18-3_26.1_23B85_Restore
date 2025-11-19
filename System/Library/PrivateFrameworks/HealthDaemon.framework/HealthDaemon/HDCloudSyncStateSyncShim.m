@interface HDCloudSyncStateSyncShim
- (HDCloudSyncStateSyncShim)initWithProfile:(id)a3;
- (id)_createDomainToEntityMapping;
- (void)mergeStateDataWithStore:(id)a3 domain:(id)a4 configuration:(id)a5 completion:(id)a6;
- (void)syncDidFinishWithResult:(BOOL)a3 domain:(id)a4 stateStore:(id)a5 completion:(id)a6;
@end

@implementation HDCloudSyncStateSyncShim

- (HDCloudSyncStateSyncShim)initWithProfile:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HDCloudSyncStateSyncShim;
  v5 = [(HDCloudSyncStateSyncShim *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v7 = [(HDCloudSyncStateSyncShim *)v6 _createDomainToEntityMapping];
    domainToEntityClassMapping = v6->_domainToEntityClassMapping;
    v6->_domainToEntityClassMapping = v7;

    v9 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v9;
  }

  return v6;
}

- (void)mergeStateDataWithStore:(id)a3 domain:(id)a4 configuration:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = a5;
  v13 = [(HDCloudSyncStateSyncShim *)self _stateEntityForDomain:a4];
  v14 = +[HDMutableDatabaseTransactionContext contextForWritingProtectedData];
  v15 = [v12 accessibilityAssertion];

  v16 = [v14 contextWithAccessibilityAssertion:v15];

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v18 = [WeakRetained database];
  v32 = 0;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __84__HDCloudSyncStateSyncShim_mergeStateDataWithStore_domain_configuration_completion___block_invoke;
  v28[3] = &unk_27861D320;
  v30 = self;
  v31 = v13;
  v29 = v10;
  v19 = v10;
  LOBYTE(v13) = [v18 performTransactionWithContext:v16 error:&v32 block:v28 inaccessibilityHandler:0];
  v20 = v32;

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__HDCloudSyncStateSyncShim_mergeStateDataWithStore_domain_configuration_completion___block_invoke_2;
  block[3] = &unk_278616460;
  v27 = v13;
  v25 = v20;
  v26 = v11;
  v22 = v20;
  v23 = v11;
  dispatch_async(queue, block);
}

uint64_t __84__HDCloudSyncStateSyncShim_mergeStateDataWithStore_domain_configuration_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a1[6];
  if (objc_opt_respondsToSelector())
  {
    v7 = a1[6];
    v8 = a1[4];
    WeakRetained = objc_loadWeakRetained((a1[5] + 8));
    v10 = [v7 updateDataWithStateStorage:v8 profile:WeakRetained transaction:v5 error:a3];
  }

  else
  {
    WeakRetained = [MEMORY[0x277CCA9B8] hk_error:125 format:{@"State entity class %@ doesnt implement State Sync protocol", a1[6]}];
    if (WeakRetained)
    {
      if (a3)
      {
        v11 = WeakRetained;
        *a3 = WeakRetained;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v10 = 0;
  }

  return v10;
}

- (void)syncDidFinishWithResult:(BOOL)a3 domain:(id)a4 stateStore:(id)a5 completion:(id)a6
{
  v8 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [(HDCloudSyncStateSyncShim *)self _stateEntityForDomain:a4];
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    [(objc_class *)v12 syncDidFinishWithResult:!v8 stateStore:v10 profile:WeakRetained];

    queue = self->_queue;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __81__HDCloudSyncStateSyncShim_syncDidFinishWithResult_domain_stateStore_completion___block_invoke_2;
    v19[3] = &unk_278614008;
    v15 = &v21;
    v20 = 0;
    v21 = v11;
    v16 = v11;
    dispatch_async(queue, v19);
  }

  else
  {
    v17 = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__HDCloudSyncStateSyncShim_syncDidFinishWithResult_domain_stateStore_completion___block_invoke;
    block[3] = &unk_27861D348;
    v15 = v23;
    v23[0] = v11;
    v23[1] = v12;
    v18 = v11;
    dispatch_async(v17, block);
  }
}

void __81__HDCloudSyncStateSyncShim_syncDidFinishWithResult_domain_stateStore_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hk_error:125 format:{@"State entity class %@ doesnt implement State Sync protocol", *(a1 + 40)}];
  (*(v1 + 16))(v1, 0, v2);
}

- (id)_createDomainToEntityMapping
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v3 = [WeakRetained daemon];
  v4 = [v3 cloudSyncCoordinator];
  v5 = [v4 stateSyncEntityClasses];

  v6 = [v5 hk_mapToDictionary:&__block_literal_global_72];

  return v6;
}

void __56__HDCloudSyncStateSyncShim__createDomainToEntityMapping__block_invoke(uint64_t a1, void *a2, void (**a3)(void, void, void))
{
  v5 = a3;
  v7 = [a2 stateEntitySchema];
  v6 = [v7 domain];
  (a3)[2](v5, v6, a2);
}

@end