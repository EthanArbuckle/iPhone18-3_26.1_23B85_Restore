@interface HDCloudSyncSharedSummariesShim
- (HDCloudSyncSharedSummariesShim)initWithProfile:(id)profile;
- (void)deleteAllSharedSummaryTransactionsWithConfiguration:(id)configuration completion:(id)completion;
- (void)deleteTransactions:(id)transactions completion:(id)completion;
- (void)deviceIdentifierWithCompletion:(id)completion;
- (void)fetchAllSharedSummaryTransactionsWithRepository:(id)repository completion:(id)completion;
- (void)fetchAllTransactionsWithConfiguration:(id)configuration completion:(id)completion;
- (void)prepareAndCommitRepository:(id)repository transactionWithUUID:(id)d sourceDeviceIdentifier:(id)identifier metadata:(id)metadata sharedSummaries:(id)summaries completion:(id)completion;
- (void)summariesFromTransaction:(id)transaction authorizationIdentifiers:(id)identifiers completion:(id)completion;
@end

@implementation HDCloudSyncSharedSummariesShim

- (HDCloudSyncSharedSummariesShim)initWithProfile:(id)profile
{
  profileCopy = profile;
  v8.receiver = self;
  v8.super_class = HDCloudSyncSharedSummariesShim;
  v5 = [(HDCloudSyncSharedSummariesShim *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
  }

  return v6;
}

- (void)deleteAllSharedSummaryTransactionsWithConfiguration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  configurationCopy = configuration;
  v8 = +[HDMutableDatabaseTransactionContext contextForWritingProtectedData];
  accessibilityAssertion = [configurationCopy accessibilityAssertion];
  v10 = [v8 contextWithAccessibilityAssertion:accessibilityAssertion];

  [v10 setCacheScope:1];
  repository = [configurationCopy repository];

  profile = [repository profile];
  database = [profile database];

  v16[4] = self;
  v17 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __97__HDCloudSyncSharedSummariesShim_deleteAllSharedSummaryTransactionsWithConfiguration_completion___block_invoke;
  v16[3] = &unk_278616048;
  v14 = [(HDHealthEntity *)HDSharedSummaryTransactionEntity performWriteTransactionWithHealthDatabase:database context:v10 error:&v17 block:v16];
  v15 = v17;
  completionCopy[2](completionCopy, v14, v15);
}

uint64_t __97__HDCloudSyncSharedSummariesShim_deleteAllSharedSummaryTransactionsWithConfiguration_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v5 = [WeakRetained sharedSummaryManager];
  v6 = [v5 deleteAllTransactionsWithError:a3];

  return v6;
}

- (void)fetchAllSharedSummaryTransactionsWithRepository:(id)repository completion:(id)completion
{
  completionCopy = completion;
  sharedSummaryManager = [repository sharedSummaryManager];
  v9 = 0;
  v7 = [sharedSummaryManager fetchAllTransactionsWithError:&v9];
  v8 = v9;

  completionCopy[2](completionCopy, v7, v8);
}

- (void)prepareAndCommitRepository:(id)repository transactionWithUUID:(id)d sourceDeviceIdentifier:(id)identifier metadata:(id)metadata sharedSummaries:(id)summaries completion:(id)completion
{
  completionCopy = completion;
  summariesCopy = summaries;
  metadataCopy = metadata;
  identifierCopy = identifier;
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  weakRetained = [WeakRetained sharedSummaryManager];
  v22 = 0;
  v20 = [weakRetained prepareAndCommitTransactionWithUUID:dCopy sourceDeviceIdentifier:identifierCopy metadata:metadataCopy sharedSummaries:summariesCopy error:&v22];

  v21 = v22;
  completionCopy[2](completionCopy, v20, v21);
}

- (void)deleteTransactions:(id)transactions completion:(id)completion
{
  completionCopy = completion;
  transactionsCopy = transactions;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  weakRetained = [WeakRetained sharedSummaryManager];
  v12 = 0;
  v10 = [weakRetained deleteTransactions:transactionsCopy error:&v12];

  v11 = v12;
  completionCopy[2](completionCopy, v10, v11);
}

- (void)fetchAllTransactionsWithConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  v8 = +[HDMutableDatabaseTransactionContext contextForReadingProtectedData];
  accessibilityAssertion = [configurationCopy accessibilityAssertion];
  v10 = [v8 contextWithAccessibilityAssertion:accessibilityAssertion];

  [v10 setCacheScope:1];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__40;
  v20 = __Block_byref_object_dispose__40;
  v21 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v14[5] = &v16;
  v15 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __83__HDCloudSyncSharedSummariesShim_fetchAllTransactionsWithConfiguration_completion___block_invoke;
  v14[3] = &unk_278619398;
  v14[4] = self;
  [database performTransactionWithContext:v10 error:&v15 block:v14 inaccessibilityHandler:0];
  v13 = v15;

  completionCopy[2](completionCopy, v17[5], v13);
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

- (void)deviceIdentifierWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  weakRetained = [WeakRetained sharedSummaryManager];
  v9 = 0;
  v7 = [weakRetained deviceIdentifierWithError:&v9];
  v8 = v9;

  completionCopy[2](completionCopy, v7, v8);
}

- (void)summariesFromTransaction:(id)transaction authorizationIdentifiers:(id)identifiers completion:(id)completion
{
  identifiersCopy = identifiers;
  v9 = MEMORY[0x277CBEB18];
  completionCopy = completion;
  transactionCopy = transaction;
  v12 = objc_alloc_init(v9);
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  weakRetained = [WeakRetained sharedSummaryManager];
  v24 = v12;
  v25 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __95__HDCloudSyncSharedSummariesShim_summariesFromTransaction_authorizationIdentifiers_completion___block_invoke;
  v21[3] = &unk_2786193C0;
  v22 = identifiersCopy;
  v23 = v13;
  v16 = v12;
  v17 = v13;
  v18 = identifiersCopy;
  v19 = [weakRetained enumerateSummariesInTransaction:transactionCopy package:0 names:0 includedObjectTypes:0 error:&v25 handler:v21];

  v20 = v25;
  completionCopy[2](completionCopy, v19, v16, v17, v20);
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