@interface HDCloudSyncSummarySharingEntryShim
- (HDCloudSyncSummarySharingEntryShim)initWithProfile:(id)a3;
- (void)authorizationIdentifiersByContactIdentifierForParticipants:(id)a3 configuration:(id)a4 completion:(id)a5;
- (void)authorizationIdentifiersForEntriesNotExistingParticipants:(id)a3 configuration:(id)a4 completion:(id)a5;
- (void)codableEntryWithUUID:(id)a3 configuration:(id)a4 completion:(id)a5;
- (void)disableAllSharingEntriesWithConfiguration:(id)a3 completion:(id)a4;
- (void)pauseStatusForEntriesWithUUIDs:(id)a3 configuration:(id)a4 completion:(id)a5;
- (void)sharingEntryExistsWithPredicate:(id)a3 configuration:(id)a4 completion:(id)a5;
@end

@implementation HDCloudSyncSummarySharingEntryShim

- (HDCloudSyncSummarySharingEntryShim)initWithProfile:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HDCloudSyncSummarySharingEntryShim;
  v5 = [(HDCloudSyncSummarySharingEntryShim *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v7 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;
  }

  return v6;
}

- (void)disableAllSharingEntriesWithConfiguration:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[HDMutableDatabaseTransactionContext contextForWritingProtectedData];
  v9 = [v7 accessibilityAssertion];

  v10 = [v8 contextWithAccessibilityAssertion:v9];

  [v10 setCacheScope:1];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v12 = [WeakRetained database];
  v22 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __91__HDCloudSyncSummarySharingEntryShim_disableAllSharingEntriesWithConfiguration_completion___block_invoke;
  v21[3] = &unk_278616048;
  v21[4] = self;
  LOBYTE(v8) = [(HDHealthEntity *)HDSummarySharingEntryEntity performWriteTransactionWithHealthDatabase:v12 context:v10 error:&v22 block:v21];
  v13 = v22;

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__HDCloudSyncSummarySharingEntryShim_disableAllSharingEntriesWithConfiguration_completion___block_invoke_2;
  block[3] = &unk_278616460;
  v20 = v8;
  v18 = v13;
  v19 = v6;
  v15 = v13;
  v16 = v6;
  dispatch_async(queue, block);
}

uint64_t __91__HDCloudSyncSummarySharingEntryShim_disableAllSharingEntriesWithConfiguration_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v5 = [WeakRetained sharingEntryManager];
  v6 = [v5 disableAllSharingEntriesWithError:a3];

  return v6;
}

- (void)sharingEntryExistsWithPredicate:(id)a3 configuration:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[HDMutableDatabaseTransactionContext contextForReadingProtectedData];
  v12 = [v9 accessibilityAssertion];
  v13 = [v11 contextWithAccessibilityAssertion:v12];

  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v32 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v15 = [WeakRetained database];
  v30 = 0;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __95__HDCloudSyncSummarySharingEntryShim_sharingEntryExistsWithPredicate_configuration_completion___block_invoke;
  v27[3] = &unk_278615F88;
  v27[4] = self;
  v16 = v8;
  v28 = v16;
  v29 = v31;
  v17 = [(HDHealthEntity *)HDSummarySharingEntryEntity performReadTransactionWithHealthDatabase:v15 context:v13 error:&v30 block:v27];
  v18 = v30;

  queue = self->_queue;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __95__HDCloudSyncSummarySharingEntryShim_sharingEntryExistsWithPredicate_configuration_completion___block_invoke_2;
  v22[3] = &unk_2786286E0;
  v26 = v17;
  v24 = v10;
  v25 = v31;
  v23 = v18;
  v20 = v18;
  v21 = v10;
  dispatch_async(queue, v22);

  _Block_object_dispose(v31, 8);
}

uint64_t __95__HDCloudSyncSummarySharingEntryShim_sharingEntryExistsWithPredicate_configuration_completion___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  v6 = [WeakRetained sharingEntryManager];
  v7 = [v6 lookupEntryWithPredicate:a1[5] wasFound:*(a1[6] + 8) + 24 error:a3];

  return v7;
}

uint64_t __95__HDCloudSyncSummarySharingEntryShim_sharingEntryExistsWithPredicate_configuration_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 56) == 1)
  {
    v3 = *(*(*(a1 + 48) + 8) + 24);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 32);
  return (*(v2 + 16))(v2, v3 & 1);
}

- (void)authorizationIdentifiersForEntriesNotExistingParticipants:(id)a3 configuration:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[HDMutableDatabaseTransactionContext contextForReadingProtectedData];
  v12 = [v9 accessibilityAssertion];
  v13 = [v11 contextWithAccessibilityAssertion:v12];

  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__159;
  v31[4] = __Block_byref_object_dispose__159;
  v32 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v15 = [WeakRetained database];
  v29 = v31;
  v30 = 0;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __121__HDCloudSyncSummarySharingEntryShim_authorizationIdentifiersForEntriesNotExistingParticipants_configuration_completion___block_invoke;
  v27[3] = &unk_278614288;
  v27[4] = self;
  v16 = v8;
  v28 = v16;
  v17 = [(HDHealthEntity *)HDSummarySharingEntryEntity performReadTransactionWithHealthDatabase:v15 context:v13 error:&v30 block:v27];
  v18 = v30;

  queue = self->_queue;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __121__HDCloudSyncSummarySharingEntryShim_authorizationIdentifiersForEntriesNotExistingParticipants_configuration_completion___block_invoke_2;
  v22[3] = &unk_2786286E0;
  v24 = v10;
  v25 = v31;
  v26 = v17;
  v23 = v18;
  v20 = v18;
  v21 = v10;
  dispatch_async(queue, v22);

  _Block_object_dispose(v31, 8);
}

BOOL __121__HDCloudSyncSummarySharingEntryShim_authorizationIdentifiersForEntriesNotExistingParticipants_configuration_completion___block_invoke(void *a1, uint64_t a2, void *a3)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  v6 = [WeakRetained sharingEntryManager];
  v7 = [v6 authorizationIdentifiersForEntriesNotPresentInSet:a1[5] error:a3];
  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return *a3 == 0;
}

- (void)pauseStatusForEntriesWithUUIDs:(id)a3 configuration:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = +[HDMutableDatabaseTransactionContext contextForReadingProtectedData];
  v12 = [v10 accessibilityAssertion];

  v13 = [v11 contextWithAccessibilityAssertion:v12];

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v15 = [WeakRetained database];
  v21 = v9;
  v22 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __94__HDCloudSyncSummarySharingEntryShim_pauseStatusForEntriesWithUUIDs_configuration_completion___block_invoke;
  v19[3] = &unk_278628730;
  v19[4] = self;
  v20 = v8;
  v16 = v9;
  v17 = v8;
  [(HDHealthEntity *)HDSummarySharingEntryEntity performReadTransactionWithHealthDatabase:v15 context:v13 error:&v22 block:v19];
  v18 = v22;
}

uint64_t __94__HDCloudSyncSummarySharingEntryShim_pauseStatusForEntriesWithUUIDs_configuration_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = [WeakRetained sharingEntryManager];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __94__HDCloudSyncSummarySharingEntryShim_pauseStatusForEntriesWithUUIDs_configuration_completion___block_invoke_2;
  v6[3] = &unk_278628708;
  v4 = *(a1 + 40);
  v7 = *(a1 + 48);
  [v3 pauseStatusesForUUIDS:v4 completion:v6];

  return 1;
}

- (void)authorizationIdentifiersByContactIdentifierForParticipants:(id)a3 configuration:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[HDMutableDatabaseTransactionContext contextForReadingProtectedData];
  v12 = [v9 accessibilityAssertion];
  v13 = [v11 contextWithAccessibilityAssertion:v12];

  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__159;
  v31[4] = __Block_byref_object_dispose__159;
  v32 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v15 = [WeakRetained database];
  v29 = v31;
  v30 = 0;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __122__HDCloudSyncSummarySharingEntryShim_authorizationIdentifiersByContactIdentifierForParticipants_configuration_completion___block_invoke;
  v27[3] = &unk_278614288;
  v27[4] = self;
  v16 = v8;
  v28 = v16;
  v17 = [(HDHealthEntity *)HDSummarySharingEntryEntity performReadTransactionWithHealthDatabase:v15 context:v13 error:&v30 block:v27];
  v18 = v30;

  queue = self->_queue;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __122__HDCloudSyncSummarySharingEntryShim_authorizationIdentifiersByContactIdentifierForParticipants_configuration_completion___block_invoke_2;
  v22[3] = &unk_2786286E0;
  v24 = v10;
  v25 = v31;
  v26 = v17;
  v23 = v18;
  v20 = v18;
  v21 = v10;
  dispatch_async(queue, v22);

  _Block_object_dispose(v31, 8);
}

BOOL __122__HDCloudSyncSummarySharingEntryShim_authorizationIdentifiersByContactIdentifierForParticipants_configuration_completion___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  v6 = [WeakRetained sharingEntryManager];
  v7 = [v6 authorizationIdentifiersByContactIdentifiersForOutgoingPendingAndAcceptedParticipants:a1[5] error:a3];
  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return *(*(a1[6] + 8) + 40) != 0;
}

- (void)codableEntryWithUUID:(id)a3 configuration:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[HDMutableDatabaseTransactionContext contextForReadingProtectedData];
  v12 = [v9 accessibilityAssertion];
  v13 = [v11 contextWithAccessibilityAssertion:v12];

  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__159;
  v29[4] = __Block_byref_object_dispose__159;
  v30 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v15 = [WeakRetained database];
  v27 = v29;
  v28 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __84__HDCloudSyncSummarySharingEntryShim_codableEntryWithUUID_configuration_completion___block_invoke;
  v25[3] = &unk_278614288;
  v25[4] = self;
  v16 = v8;
  v26 = v16;
  [(HDHealthEntity *)HDSummarySharingEntryEntity performReadTransactionWithHealthDatabase:v15 context:v13 error:&v28 block:v25];
  v17 = v28;

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__HDCloudSyncSummarySharingEntryShim_codableEntryWithUUID_configuration_completion___block_invoke_2;
  block[3] = &unk_278628758;
  v23 = v10;
  v24 = v29;
  v22 = v17;
  v19 = v17;
  v20 = v10;
  dispatch_async(queue, block);

  _Block_object_dispose(v29, 8);
}

BOOL __84__HDCloudSyncSummarySharingEntryShim_codableEntryWithUUID_configuration_completion___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  v6 = [WeakRetained sharingEntryManager];
  v7 = [v6 codableEntryWithUUID:a1[5] errorOut:a3];
  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return *(*(a1[6] + 8) + 40) != 0;
}

@end