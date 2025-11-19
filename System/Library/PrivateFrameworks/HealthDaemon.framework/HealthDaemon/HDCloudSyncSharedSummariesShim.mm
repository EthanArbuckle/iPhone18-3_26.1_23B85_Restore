@interface HDCloudSyncSharedSummariesShim
- (HDCloudSyncSharedSummariesShim)initWithProfile:(id)a3;
- (void)deleteAllSharedSummaryTransactionsWithConfiguration:(id)a3 completion:(id)a4;
- (void)deleteTransactions:(id)a3 completion:(id)a4;
- (void)deviceIdentifierWithCompletion:(id)a3;
- (void)fetchAllSharedSummaryTransactionsWithRepository:(id)a3 completion:(id)a4;
- (void)fetchAllTransactionsWithConfiguration:(id)a3 completion:(id)a4;
- (void)prepareAndCommitRepository:(id)a3 transactionWithUUID:(id)a4 sourceDeviceIdentifier:(id)a5 metadata:(id)a6 sharedSummaries:(id)a7 completion:(id)a8;
- (void)summariesFromTransaction:(id)a3 authorizationIdentifiers:(id)a4 completion:(id)a5;
@end

@implementation HDCloudSyncSharedSummariesShim

- (HDCloudSyncSharedSummariesShim)initWithProfile:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HDCloudSyncSharedSummariesShim;
  v5 = [(HDCloudSyncSharedSummariesShim *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
  }

  return v6;
}

- (void)deleteAllSharedSummaryTransactionsWithConfiguration:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[HDMutableDatabaseTransactionContext contextForWritingProtectedData];
  v9 = [v7 accessibilityAssertion];
  v10 = [v8 contextWithAccessibilityAssertion:v9];

  [v10 setCacheScope:1];
  v11 = [v7 repository];

  v12 = [v11 profile];
  v13 = [v12 database];

  v16[4] = self;
  v17 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __97__HDCloudSyncSharedSummariesShim_deleteAllSharedSummaryTransactionsWithConfiguration_completion___block_invoke;
  v16[3] = &unk_278616048;
  v14 = [(HDHealthEntity *)HDSharedSummaryTransactionEntity performWriteTransactionWithHealthDatabase:v13 context:v10 error:&v17 block:v16];
  v15 = v17;
  v6[2](v6, v14, v15);
}

uint64_t __97__HDCloudSyncSharedSummariesShim_deleteAllSharedSummaryTransactionsWithConfiguration_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v5 = [WeakRetained sharedSummaryManager];
  v6 = [v5 deleteAllTransactionsWithError:a3];

  return v6;
}

- (void)fetchAllSharedSummaryTransactionsWithRepository:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [a3 sharedSummaryManager];
  v9 = 0;
  v7 = [v6 fetchAllTransactionsWithError:&v9];
  v8 = v9;

  v5[2](v5, v7, v8);
}

- (void)prepareAndCommitRepository:(id)a3 transactionWithUUID:(id)a4 sourceDeviceIdentifier:(id)a5 metadata:(id)a6 sharedSummaries:(id)a7 completion:(id)a8
{
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v19 = [WeakRetained sharedSummaryManager];
  v22 = 0;
  v20 = [v19 prepareAndCommitTransactionWithUUID:v17 sourceDeviceIdentifier:v16 metadata:v15 sharedSummaries:v14 error:&v22];

  v21 = v22;
  v13[2](v13, v20, v21);
}

- (void)deleteTransactions:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v9 = [WeakRetained sharedSummaryManager];
  v12 = 0;
  v10 = [v9 deleteTransactions:v7 error:&v12];

  v11 = v12;
  v6[2](v6, v10, v11);
}

- (void)fetchAllTransactionsWithConfiguration:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[HDMutableDatabaseTransactionContext contextForReadingProtectedData];
  v9 = [v6 accessibilityAssertion];
  v10 = [v8 contextWithAccessibilityAssertion:v9];

  [v10 setCacheScope:1];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__40;
  v20 = __Block_byref_object_dispose__40;
  v21 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v12 = [WeakRetained database];
  v14[5] = &v16;
  v15 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __83__HDCloudSyncSharedSummariesShim_fetchAllTransactionsWithConfiguration_completion___block_invoke;
  v14[3] = &unk_278619398;
  v14[4] = self;
  [v12 performTransactionWithContext:v10 error:&v15 block:v14 inaccessibilityHandler:0];
  v13 = v15;

  v7[2](v7, v17[5], v13);
  _Block_object_dispose(&v16, 8);
}

BOOL __83__HDCloudSyncSharedSummariesShim_fetchAllTransactionsWithConfiguration_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v6 = [WeakRetained sharedSummaryManager];
  v7 = [v6 fetchCommittedTransactionsWithError:a3];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (void)deviceIdentifierWithCompletion:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [WeakRetained sharedSummaryManager];
  v9 = 0;
  v7 = [v6 deviceIdentifierWithError:&v9];
  v8 = v9;

  v4[2](v4, v7, v8);
}

- (void)summariesFromTransaction:(id)a3 authorizationIdentifiers:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = MEMORY[0x277CBEB18];
  v10 = a5;
  v11 = a3;
  v12 = objc_alloc_init(v9);
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v15 = [WeakRetained sharedSummaryManager];
  v24 = v12;
  v25 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __95__HDCloudSyncSharedSummariesShim_summariesFromTransaction_authorizationIdentifiers_completion___block_invoke;
  v21[3] = &unk_2786193C0;
  v22 = v8;
  v23 = v13;
  v16 = v12;
  v17 = v13;
  v18 = v8;
  v19 = [v15 enumerateSummariesInTransaction:v11 package:0 names:0 includedObjectTypes:0 error:&v25 handler:v21];

  v20 = v25;
  v10[2](v10, v19, v16, v17, v20);
}

void __95__HDCloudSyncSharedSummariesShim_summariesFromTransaction_authorizationIdentifiers_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 authorizationIdentifiers];
  v4 = [v3 count];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v10 authorizationIdentifiers];
    v7 = [v6 allObjects];
    LODWORD(v5) = [v5 hk_containsObjectsInArray:v7];

    if (v5)
    {
      v8 = *(a1 + 40);
      v9 = [v10 UUID];
      [v8 addObject:v9];

      [*(a1 + 48) addObject:v10];
    }
  }
}

@end