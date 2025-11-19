@interface HDSharedSummaryManager
- (BOOL)addMetadata:(id)a3 transactionEntity:(id)a4 error:(id *)a5;
- (BOOL)addOrReuseReceivedSharedSummaries:(id)a3 transactionEntity:(id)a4 error:(id *)a5;
- (BOOL)addSharedSummaries:(id)a3 transactionEntity:(id)a4 error:(id *)a5;
- (BOOL)deleteAllTransactionsWithError:(id *)a3;
- (BOOL)deleteTransactions:(id)a3 error:(id *)a4;
- (BOOL)discardTransactionEntity:(id)a3 error:(id *)a4;
- (BOOL)enumerateCommittedTransactionsWithError:(id *)a3 handler:(id)a4;
- (BOOL)enumerateNonCommittedTransactionsWithError:(id *)a3 handler:(id)a4;
- (BOOL)enumerateSummariesInTransaction:(id)a3 package:(id)a4 names:(id)a5 includedObjectTypes:(id)a6 error:(id *)a7 handler:(id)a8;
- (BOOL)enumerateSummariesInTransactionEntity:(id)a3 package:(id)a4 names:(id)a5 error:(id *)a6 handler:(id)a7;
- (BOOL)prepareAndCommitTransactionWithUUID:(id)a3 sourceDeviceIdentifier:(id)a4 metadata:(id)a5 sharedSummaries:(id)a6 error:(id *)a7;
- (BOOL)removeSummariesWithPackage:(id)a3 names:(id)a4 transactionEntity:(id)a5 error:(id *)a6;
- (BOOL)removeSummariesWithUUIDs:(id)a3 transactionEntity:(id)a4 error:(id *)a5;
- (BOOL)reuseSharedSummariesWithPackage:(id)a3 names:(id)a4 transactionEntity:(id)a5 error:(id *)a6;
- (BOOL)reuseSharedSummariesWithUUIDs:(id)a3 transactionEntity:(id)a4 error:(id *)a5;
- (HDSharedSummaryManager)initWithProfile:(id)a3;
- (id)_createTransactionWithUUID:(void *)a3 sourceDeviceIdentifier:(void *)a4 metadata:(void *)a5 error:;
- (id)_transactionForEntity:(void *)a3 databaseTransaction:(void *)a4 error:;
- (id)commitTransactionEntity:(id)a3 error:(id *)a4;
- (id)createNewTransactionWithUUID:(id)a3 error:(id *)a4;
- (id)deviceIdentifierWithError:(id *)a3;
- (id)fetchAllTransactionsWithError:(id *)a3;
- (id)mostRecentTransactionCreationDateWithError:(id *)a3;
- (id)transactionWithUUID:(id)a3 requireUncommitted:(BOOL)a4 error:(id *)a5;
- (uint64_t)_notifyObserversOfTransactionChange;
- (uint64_t)performDatabaseTransactionForWriting:(void *)a3 entity:(void *)a4 error:(void *)a5 block:;
@end

@implementation HDSharedSummaryManager

- (HDSharedSummaryManager)initWithProfile:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HDSharedSummaryManager;
  v5 = [(HDSharedSummaryManager *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v7 = objc_alloc(MEMORY[0x277CCDA88]);
    v8 = HKLogSharing();
    v9 = [v7 initWithName:@"shared-summary-manager-observers" loggingCategory:v8];
    observers = v6->_observers;
    v6->_observers = v9;
  }

  return v6;
}

- (uint64_t)performDatabaseTransactionForWriting:(void *)a3 entity:(void *)a4 error:(void *)a5 block:
{
  v9 = a5;
  if (!a1)
  {
    v11 = 0;
    goto LABEL_22;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 8));
  v11 = [WeakRetained database];

  if (v11)
  {
    if ([a3 protectionClass] == 2)
    {
      if (a2)
      {
        +[HDDatabaseTransactionContext contextForWritingProtectedData];
      }

      else
      {
        +[HDDatabaseTransactionContext contextForReadingProtectedData];
      }
    }

    else if (a2)
    {
      +[HDDatabaseTransactionContext contextForWriting];
    }

    else
    {
      +[HDDatabaseTransactionContext contextForReading];
    }
    v12 = ;
    v13 = v12;
    v14 = [v12 mutableCopy];
    v11 = 1;
    [v14 setCacheScope:1];
    v15 = objc_loadWeakRetained((a1 + 8));
    v16 = [v15 database];
    v23 = 0;
    v17 = [v16 performTransactionWithContext:v14 error:&v23 block:v9 inaccessibilityHandler:0];
    v18 = v23;

    if (v17)
    {
      goto LABEL_21;
    }

    if ([v18 hk_isDatabaseTransactionError])
    {
      v19 = objc_loadWeakRetained((a1 + 8));
      v20 = [v19 database];
      v11 = [v20 performTransactionWithContext:v13 error:a4 block:v9 inaccessibilityHandler:0];

LABEL_20:
LABEL_21:

      goto LABEL_22;
    }

    v19 = v18;
    if (v19)
    {
      if (a4)
      {
        v21 = v19;
        v11 = 0;
        *a4 = v19;
        goto LABEL_20;
      }

      _HKLogDroppedError();
    }

    v11 = 0;
    goto LABEL_20;
  }

  [MEMORY[0x277CCA9B8] hk_assignError:a4 code:1500 description:@"Nil healthDatabase"];
LABEL_22:

  return v11;
}

- (id)createNewTransactionWithUUID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v14 = 0;
  v7 = [(HDSharedSummaryManager *)self deviceIdentifierWithError:&v14];
  v8 = v14;
  v9 = v8;
  if (v7)
  {
    v10 = [(HDSharedSummaryManager *)self _createTransactionWithUUID:v6 sourceDeviceIdentifier:self->_deviceIdentifier metadata:0 error:a4];
  }

  else
  {
    v11 = v8;
    if (v11)
    {
      if (a4)
      {
        v12 = v11;
        *a4 = v11;
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

- (id)_createTransactionWithUUID:(void *)a3 sourceDeviceIdentifier:(void *)a4 metadata:(void *)a5 error:
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (a1)
  {
    _HKInitializeLogging();
    v12 = HKLogSharing();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = objc_opt_class();
      *&buf[12] = 2114;
      *&buf[14] = v9;
      v13 = *&buf[4];
      _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Creating new transaction with UUID %{public}@", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v24 = __Block_byref_object_copy__34;
    v25 = __Block_byref_object_dispose__34;
    v26 = 0;
    v14 = objc_opt_class();
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __91__HDSharedSummaryManager__createTransactionWithUUID_sourceDeviceIdentifier_metadata_error___block_invoke;
    v19[3] = &unk_278614288;
    v22 = buf;
    v20 = v9;
    v21 = v10;
    [(HDSharedSummaryManager *)a1 performDatabaseTransactionForWriting:v14 entity:a5 error:v19 block:?];
    v15 = *(*&buf[8] + 40);
    if (v11 && v15)
    {
      if (![a1 addMetadata:v11 transactionEntity:v15 error:a5])
      {
        v16 = 0;
        goto LABEL_10;
      }

      v15 = *(*&buf[8] + 40);
    }

    v16 = v15;
LABEL_10:

    _Block_object_dispose(buf, 8);
    goto LABEL_11;
  }

  v16 = 0;
LABEL_11:

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)transactionWithUUID:(id)a3 requireUncommitted:(BOOL)a4 error:(id *)a5
{
  v9 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__34;
  v25 = __Block_byref_object_dispose__34;
  v26 = 0;
  v10 = objc_opt_class();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__HDSharedSummaryManager_transactionWithUUID_requireUncommitted_error___block_invoke;
  v15[3] = &unk_278618458;
  v18 = &v21;
  v11 = v9;
  v20 = a4;
  v16 = v11;
  v17 = self;
  v19 = a2;
  if ([(HDSharedSummaryManager *)self performDatabaseTransactionForWriting:v10 entity:a5 error:v15 block:?])
  {
    v12 = v22[5];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  _Block_object_dispose(&v21, 8);

  return v13;
}

uint64_t __71__HDSharedSummaryManager_transactionWithUUID_requireUncommitted_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v24 = 0;
  v7 = [HDSharedSummaryTransactionEntity transactionEntityWithUUID:v6 databaseTransaction:v5 error:&v24];
  v8 = v24;
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;

  v11 = *(*(*(a1 + 48) + 8) + 40);
  if (v11)
  {
    if (*(a1 + 64) == 1)
    {
      v23 = v8;
      v12 = [v11 committedInDatabaseTransaction:v5 error:&v23];
      v13 = v23;

      if (v12)
      {
        v14 = MEMORY[0x277CCA9B8];
        v15 = *(a1 + 40);
        v16 = objc_opt_class();
        v17 = *(a1 + 56);
        v18 = [*(a1 + 32) UUIDString];
        v8 = [v14 hk_error:126 class:v16 selector:v17 format:{@"Transaction with UUID %@ already committed", v18}];
      }

      else
      {
        v8 = v13;
      }
    }

    v19 = v8;
    if (v19)
    {
      if (a3)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }

LABEL_12:
    v20 = 1;
    goto LABEL_13;
  }

  v19 = v8;
  if (!v19)
  {
    goto LABEL_12;
  }

  if (a3)
  {
LABEL_11:
    v21 = v19;
    v20 = 0;
    *a3 = v19;
    goto LABEL_13;
  }

LABEL_7:
  _HKLogDroppedError();
  v20 = 0;
LABEL_13:

  return v20;
}

- (BOOL)addSharedSummaries:(id)a3 transactionEntity:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_opt_class();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__HDSharedSummaryManager_addSharedSummaries_transactionEntity_error___block_invoke;
  v14[3] = &unk_278615D40;
  v15 = v8;
  v16 = self;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  LOBYTE(a5) = [(HDSharedSummaryManager *)self performDatabaseTransactionForWriting:v10 entity:a5 error:v14 block:?];

  return a5;
}

uint64_t __69__HDSharedSummaryManager_addSharedSummaries_transactionEntity_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  LODWORD(v4) = a1;
  v72[1] = *MEMORY[0x277D85DE8];
  v57 = a2;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = *(a1 + 32);
  v55 = [obj countByEnumeratingWithState:&v60 objects:v71 count:16];
  if (v55)
  {
    v54 = *v61;
    v51 = a3;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v61 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v58 = v5;
        v6 = *(*(&v60 + 1) + 8 * v5);
        v7 = *(a1 + 40);
        v8 = *(a1 + 48);
        v9 = v6;
        v10 = v8;
        v11 = v57;
        if (v7)
        {
          v12 = [v9 UUID];
          v13 = [v9 package];
          v14 = [v9 name];
          v15 = [v9 version];
          v16 = [v9 compatibilityVersion];
          v59 = v10;
          v17 = [v10 persistentID];
          v18 = [v9 summaryData];
          v69 = 0;
          v19 = [HDSharedSummaryEntity insertOrReplaceWithUUID:v12 package:v13 name:v14 version:v15 compatibilityVersion:v16 transactionID:v17 summaryData:v18 databaseTransaction:v11 error:&v69];
          v20 = v69;

          if (v19)
          {
            v21 = [v19 persistentID];
            v22 = [v9 authorizationIdentifiers];
            v68 = v20;
            v23 = [HDSharedSummaryAuthorizationIdentifierEntity insertWithSummaryID:v21 authorizationIdentifiers:v22 databaseTransaction:v11 error:&v68];
            v24 = v68;

            if (v23)
            {
              v25 = [v19 persistentID];
              v26 = [v9 objectTypes];
              v67 = v24;
              v27 = [HDSharedSummaryObjectTypeEntity insertWithSummaryID:v25 objectTypes:v26 databaseTransaction:v11 error:&v67];
              v28 = v67;

              v10 = v59;
              if (v27)
              {
                v52 = v27;
                v29 = [v59 persistentID];
                [v9 package];
                v31 = v30 = v11;
                v32 = [v9 name];
                v72[0] = v32;
                v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:1];
                v66 = v28;
                v64[0] = MEMORY[0x277D85DD0];
                v64[1] = 3221225472;
                v64[2] = __88__HDSharedSummaryManager__addSharedSummary_transactionEntity_databaseTransaction_error___block_invoke;
                v64[3] = &unk_278618688;
                v65 = v30;
                LOBYTE(v29) = [HDSharedSummaryEntity enumerateEntitiesWithReuseTransactionID:v29 package:v31 names:v33 databaseTransaction:v65 error:&v66 enumerationHandler:v64];
                v7 = v66;

                if (v29)
                {
                  v4 = 0;
                  v10 = v59;
                  v27 = v52;
                  v11 = v30;
                  v34 = 1;
                }

                else
                {
                  v41 = v7;
                  v4 = v41;
                  v34 = v41 == 0;
                  if (v41)
                  {
                    v42 = v41;
                  }

                  v10 = v59;
                  v27 = v52;
                  v11 = v30;
                }

                v70 = v34;
              }

              else
              {
                v39 = v28;
                v4 = v39;
                if (v39)
                {
                  v40 = v39;
                }

                v70 = v4 == 0;
                v7 = v4;
              }
            }

            else
            {
              v37 = v24;
              v4 = v37;
              v10 = v59;
              if (v37)
              {
                v38 = v37;
              }

              v70 = v4 == 0;
              v7 = v4;
            }
          }

          else
          {
            v35 = v20;
            v4 = v35;
            if (v35)
            {
              v36 = v35;
            }

            v70 = v4 == 0;
            v7 = v4;
            v10 = v59;
          }

          LOBYTE(v7) = v70;
        }

        else
        {
          v4 = 0;
        }

        v43 = v4;
        if ((v7 & 1) == 0)
        {
          v46 = v43;
          v47 = v46;
          LODWORD(v4) = v46 == 0;
          if (v46)
          {
            if (v51)
            {
              v48 = v46;
              *v51 = v47;
            }

            else
            {
              _HKLogDroppedError();
            }
          }

          v45 = 0;
          goto LABEL_39;
        }

        v5 = v58 + 1;
      }

      while (v55 != v58 + 1);
      v44 = [obj countByEnumeratingWithState:&v60 objects:v71 count:16];
      v55 = v44;
      if (v44)
      {
        continue;
      }

      break;
    }
  }

  v45 = 1;
LABEL_39:

  v49 = *MEMORY[0x277D85DE8];
  return (v4 | v45) & 1;
}

- (BOOL)addMetadata:(id)a3 transactionEntity:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_opt_class();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __62__HDSharedSummaryManager_addMetadata_transactionEntity_error___block_invoke;
  v14[3] = &unk_278613218;
  v15 = v9;
  v16 = v8;
  v11 = v8;
  v12 = v9;
  LOBYTE(a5) = [(HDSharedSummaryManager *)self performDatabaseTransactionForWriting:v10 entity:a5 error:v14 block:?];

  return a5;
}

BOOL __62__HDSharedSummaryManager_addMetadata_transactionEntity_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = +[HDSharedSummaryTransactionMetadataEntity insertWithTransactionID:metadata:databaseTransaction:error:](HDSharedSummaryTransactionMetadataEntity, "insertWithTransactionID:metadata:databaseTransaction:error:", [v5 persistentID], *(a1 + 40), v6, a3);

  return v7 != 0;
}

- (BOOL)reuseSharedSummariesWithUUIDs:(id)a3 transactionEntity:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_opt_class();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __80__HDSharedSummaryManager_reuseSharedSummariesWithUUIDs_transactionEntity_error___block_invoke;
  v14[3] = &unk_278613218;
  v15 = v8;
  v16 = v9;
  v11 = v9;
  v12 = v8;
  LOBYTE(a5) = [(HDSharedSummaryManager *)self performDatabaseTransactionForWriting:v10 entity:a5 error:v14 block:?];

  return a5;
}

uint64_t __80__HDSharedSummaryManager_reuseSharedSummariesWithUUIDs_transactionEntity_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = *(a1 + 32);
  v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v6)
  {
    v8 = 0;
    v15 = 1;
    goto LABEL_20;
  }

  v7 = v6;
  v20 = a3;
  v8 = 0;
  v9 = *v25;
  while (2)
  {
    a3 = 0;
    do
    {
      if (*v25 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v24 + 1) + 8 * a3);
      v23 = v8;
      v11 = [HDSharedSummaryEntity entityWithUUID:v10 databaseTransaction:v5 error:&v23, v20];
      v12 = v23;

      if (!v11)
      {
        v16 = v12;
LABEL_14:
        v8 = v16;
        if (v16)
        {
          if (v20)
          {
            v17 = v16;
            LODWORD(a3) = 0;
            *v20 = v8;
          }

          else
          {
            _HKLogDroppedError();
            LODWORD(a3) = 0;
          }
        }

        else
        {
          LODWORD(a3) = 1;
        }

        v15 = 0;
        goto LABEL_20;
      }

      v13 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(a1 + 40), "persistentID")}];
      v22 = v12;
      v14 = [v11 setReuseTransactionID:v13 databaseTransaction:v5 error:&v22];
      v8 = v22;

      if ((v14 & 1) == 0)
      {
        v16 = v8;
        goto LABEL_14;
      }

      a3 = (a3 + 1);
    }

    while (v7 != a3);
    v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    v15 = 1;
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_20:

  v18 = *MEMORY[0x277D85DE8];
  return (v15 | a3) & 1;
}

- (BOOL)reuseSharedSummariesWithPackage:(id)a3 names:(id)a4 transactionEntity:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_opt_class();
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __88__HDSharedSummaryManager_reuseSharedSummariesWithPackage_names_transactionEntity_error___block_invoke;
  v18[3] = &unk_278615D40;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  LOBYTE(a6) = [(HDSharedSummaryManager *)self performDatabaseTransactionForWriting:v13 entity:a6 error:v18 block:?];

  return a6;
}

BOOL __88__HDSharedSummaryManager_reuseSharedSummariesWithPackage_names_transactionEntity_error___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v27 = 0;
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __88__HDSharedSummaryManager_reuseSharedSummariesWithPackage_names_transactionEntity_error___block_invoke_2;
  v21 = &unk_2786184A8;
  v22 = a1[4];
  v23 = a1[5];
  v6 = v5;
  v24 = v6;
  v26 = &v28;
  v25 = a1[6];
  v7 = [HDSharedSummaryTransactionEntity enumerateTransactionsWithDatabaseTransaction:v6 includeNonCommitted:0 error:&v27 enumerationHandler:&v18];
  v8 = v27;
  if (v7)
  {
    v9 = v29[3];
    v10 = a1[5];
    if (v9)
    {
      if (v9 >= [a1[5] count])
      {
        goto LABEL_10;
      }

      v11 = [MEMORY[0x277CCA9B8] hk_error:118 format:{@"Some summaries not found in package %@ with names %@", a1[4], a1[5], v18, v19, v20, v21, v22, v23, v24}];
    }

    else
    {
      v12 = a1[4];
      if (v10)
      {
        [MEMORY[0x277CCA9B8] hk_error:118 format:{@"No summaries for reuse were found in package %@ with names %@", a1[4], v10, v18, v19, v20, v21, v22, v23, v24}];
      }

      else
      {
        [MEMORY[0x277CCA9B8] hk_error:118 format:{@"No summaries for reuse were found in package %@", a1[4]}];
      }
      v11 = ;
    }

    v13 = v11;

    v8 = v13;
  }

LABEL_10:
  v14 = v8;
  v15 = v14;
  if (v14)
  {
    if (a3)
    {
      v16 = v14;
      *a3 = v15;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  _Block_object_dispose(&v28, 8);
  return v15 == 0;
}

BOOL __88__HDSharedSummaryManager_reuseSharedSummariesWithPackage_names_transactionEntity_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 persistentID];
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__HDSharedSummaryManager_reuseSharedSummariesWithPackage_names_transactionEntity_error___block_invoke_3;
  v13[3] = &unk_278618480;
  v14 = v8;
  v12 = *(a1 + 56);
  v9 = v12;
  v15 = v12;
  v10 = [HDSharedSummaryEntity enumerateEntitiesWithTransactionID:v5 package:v6 names:v7 databaseTransaction:v14 error:a3 enumerationHandler:v13];

  return v10;
}

uint64_t __88__HDSharedSummaryManager_reuseSharedSummariesWithPackage_names_transactionEntity_error___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v18 = 0;
  v7 = [v5 nameInDatabaseTransaction:v6 error:&v18];
  v8 = v18;
  v9 = v8;
  if (!v7)
  {
    v13 = v8;
    if (v13)
    {
      if (!a3)
      {
LABEL_9:
        _HKLogDroppedError();
        v14 = 0;
        goto LABEL_11;
      }

LABEL_6:
      v15 = v13;
      v14 = 0;
      *a3 = v13;
LABEL_11:

      goto LABEL_12;
    }

LABEL_10:
    v14 = 1;
    goto LABEL_11;
  }

  ++*(*(*(a1 + 48) + 8) + 24);
  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(a1 + 40), "persistentID")}];
  v11 = *(a1 + 32);
  v17 = v9;
  v12 = [v5 setReuseTransactionID:v10 databaseTransaction:v11 error:&v17];
  v13 = v17;

  if ((v12 & 1) == 0)
  {
    v13 = v13;
    if (v13)
    {
      if (!a3)
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }

    goto LABEL_10;
  }

  v14 = 1;
LABEL_12:

  return v14;
}

- (BOOL)removeSummariesWithUUIDs:(id)a3 transactionEntity:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = objc_opt_class();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__HDSharedSummaryManager_removeSummariesWithUUIDs_transactionEntity_error___block_invoke;
  v15[3] = &unk_278613550;
  v16 = v9;
  v17 = v10;
  v18 = self;
  v19 = a2;
  v12 = v10;
  v13 = v9;
  LOBYTE(a5) = [(HDSharedSummaryManager *)self performDatabaseTransactionForWriting:v11 entity:a5 error:v15 block:?];

  return a5;
}

uint64_t __75__HDSharedSummaryManager_removeSummariesWithUUIDs_transactionEntity_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v33 = [v5 databaseForEntityClass:objc_opt_class()];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v37 = a1;
  obj = *(a1 + 32);
  v36 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (!v36)
  {
    v6 = 0;
    v18 = 1;
    goto LABEL_43;
  }

  v32 = a3;
  v6 = 0;
  v7 = *v44;
  v35 = v5;
  while (2)
  {
    for (i = 0; i != v36; ++i)
    {
      if (*v44 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v43 + 1) + 8 * i);
      v42 = v6;
      v10 = [HDSharedSummaryEntity entityWithUUID:v9 databaseTransaction:v5 error:&v42];
      v11 = v42;

      if (!v10)
      {
        v19 = v11;
        v10 = v19;
        LODWORD(a3) = v19 == 0;
        if (v19)
        {
          if (v32)
          {
            v20 = v19;
            *v32 = v10;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        v6 = v10;
        goto LABEL_42;
      }

      v41 = v11;
      v12 = [v10 transactionIDInDatabaseTransaction:v5 error:&v41];
      a3 = v41;

      if (!v12)
      {
        v21 = a3;
        goto LABEL_25;
      }

      v13 = [*(v37 + 40) persistentID];
      if (v13 == [v12 unsignedLongLongValue])
      {
        v40 = a3;
        v14 = [v10 deleteFromDatabase:v33 error:&v40];
        v6 = v40;

        if ((v14 & 1) == 0)
        {
          v21 = v6;
LABEL_25:
          v15 = v21;
          if (v21)
          {
            if (v32)
            {
              v22 = v21;
              LODWORD(a3) = 0;
              *v32 = v15;
            }

            else
            {
              _HKLogDroppedError();
              LODWORD(a3) = 0;
            }

            v6 = v15;
            goto LABEL_39;
          }

          v6 = 0;
          goto LABEL_29;
        }
      }

      else
      {
        v39 = a3;
        v15 = [v10 reuseTransactionIDInDatabaseTransaction:v5 error:&v39];
        v16 = v39;

        if (!v15 || (v17 = [*(v37 + 40) persistentID], v17 != objc_msgSend(v15, "unsignedLongLongValue")))
        {
          if (v16)
          {
            v6 = v16;
LABEL_33:
            if (v32)
            {
              v29 = v6;
              LODWORD(a3) = 0;
              *v32 = v6;
            }

            else
            {
              _HKLogDroppedError();
              LODWORD(a3) = 0;
            }

LABEL_36:

LABEL_39:
            v5 = v35;
LABEL_42:

            v18 = 0;
            goto LABEL_43;
          }

          v23 = MEMORY[0x277CCA9B8];
          v24 = *(v37 + 48);
          v25 = objc_opt_class();
          v26 = *(v37 + 56);
          v27 = [v9 UUIDString];
          v28 = [v23 hk_error:126 class:v25 selector:v26 format:{@"Summary %@ not in transaction", v27}];

          v6 = v28;
          if (v6)
          {
            goto LABEL_33;
          }

LABEL_29:
          LODWORD(a3) = 1;
          goto LABEL_39;
        }

        v38 = v16;
        LODWORD(a3) = [v10 setReuseTransactionID:0 databaseTransaction:v35 error:&v38];
        v6 = v38;

        if ((a3 & 1) == 0)
        {
          v6 = v6;
          if (v6)
          {
            goto LABEL_33;
          }

          LODWORD(a3) = 1;
          goto LABEL_36;
        }

        v5 = v35;
      }
    }

    v18 = 1;
    v36 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v36)
    {
      continue;
    }

    break;
  }

LABEL_43:

  v30 = *MEMORY[0x277D85DE8];
  return (v18 | a3) & 1;
}

- (BOOL)removeSummariesWithPackage:(id)a3 names:(id)a4 transactionEntity:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_opt_class();
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __83__HDSharedSummaryManager_removeSummariesWithPackage_names_transactionEntity_error___block_invoke;
  v18[3] = &unk_278615D40;
  v19 = v12;
  v20 = v10;
  v21 = v11;
  v14 = v11;
  v15 = v10;
  v16 = v12;
  LOBYTE(a6) = [(HDSharedSummaryManager *)self performDatabaseTransactionForWriting:v13 entity:a6 error:v18 block:?];

  return a6;
}

BOOL __83__HDSharedSummaryManager_removeSummariesWithPackage_names_transactionEntity_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v6 = [v5 databaseForEntityClass:objc_opt_class()];
  v7 = [*(a1 + 32) persistentID];
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __83__HDSharedSummaryManager_removeSummariesWithPackage_names_transactionEntity_error___block_invoke_2;
  v32[3] = &unk_2786184D0;
  v34 = &v36;
  v35 = 0;
  v10 = v6;
  v33 = v10;
  LOBYTE(v7) = [HDSharedSummaryEntity enumerateEntitiesWithTransactionID:v7 package:v8 names:v9 databaseTransaction:v5 error:&v35 enumerationHandler:v32];
  v11 = v35;
  v12 = v11;
  if ((v7 & 1) == 0)
  {
    v19 = v11;
    v20 = v19;
    if (v19)
    {
      if (a3)
      {
        v21 = v19;
        v22 = 0;
        *a3 = v20;
      }

      else
      {
        _HKLogDroppedError();
        v22 = 0;
      }

      v23 = v20;
    }

    else
    {
      v23 = 0;
      v22 = 1;
    }

    goto LABEL_19;
  }

  v13 = [*(a1 + 32) persistentID];
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __83__HDSharedSummaryManager_removeSummariesWithPackage_names_transactionEntity_error___block_invoke_3;
  v28[3] = &unk_2786184D0;
  v30 = &v36;
  v31 = v12;
  v29 = v5;
  LODWORD(v13) = [HDSharedSummaryEntity enumerateEntitiesWithReuseTransactionID:v13 package:v14 names:v15 databaseTransaction:v29 error:&v31 enumerationHandler:v28];
  v16 = v31;

  if (v13)
  {
    v17 = v37[3];
    if (!v17)
    {
      v18 = @"No summaries to remove were found with package %@ and names %@";
      goto LABEL_13;
    }

    if (v17 < [*(a1 + 48) count])
    {
      v18 = @"Some summaries to remove were not found with package %@ and names %@";
LABEL_13:
      v24 = [MEMORY[0x277CCA9B8] hk_error:118 format:{v18, *(a1 + 40), *(a1 + 48)}];

      v16 = v24;
    }
  }

  v25 = v16;
  v23 = v25;
  v22 = v25 == 0;
  if (v25)
  {
    if (a3)
    {
      v26 = v25;
      *a3 = v23;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v20 = v29;
LABEL_19:

  _Block_object_dispose(&v36, 8);
  return v22;
}

- (id)commitTransactionEntity:(id)a3 error:(id *)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  _HKInitializeLogging();
  v7 = HKLogSharing();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = objc_opt_class();
    v8 = *(&buf + 4);
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Committing transaction", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__34;
  v39 = __Block_byref_object_dispose__34;
  v40 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v9 = objc_opt_class();
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __56__HDSharedSummaryManager_commitTransactionEntity_error___block_invoke;
  v23 = &unk_2786184F8;
  v10 = v6;
  v24 = v10;
  v25 = self;
  v26 = &v28;
  p_buf = &buf;
  if ([(HDSharedSummaryManager *)self performDatabaseTransactionForWriting:v9 entity:a4 error:&v20 block:?])
  {
    _HKInitializeLogging();
    v11 = HKLogSharing();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = v29[3];
      *v32 = 138543618;
      v33 = v12;
      v34 = 2048;
      v35 = v13;
      v14 = v12;
      _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Successfully committing transaction with %ld summaries", v32, 0x16u);
    }
  }

  else
  {
    _HKInitializeLogging();
    v11 = HKLogSharing();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      if (a4)
      {
        v16 = [*a4 localizedDescription];
      }

      else
      {
        v16 = @"<lost>";
      }

      *v32 = 138543618;
      v33 = v15;
      v34 = 2114;
      v35 = v16;
      _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Failed to commit transaction - %{public}@", v32, 0x16u);
      if (a4)
      {
      }
    }
  }

  v17 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&buf, 8);

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

BOOL __56__HDSharedSummaryManager_commitTransactionEntity_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) persistentID];
  v56 = 0;
  v7 = [HDSharedSummaryEntity reuseSummariesForTransactionID:v6 databaseTransaction:v5 error:&v56];
  v8 = v56;
  v9 = v8;
  if (v7)
  {
    v10 = *(a1 + 32);
    v55 = v9;
    v11 = [v10 sourceDeviceIdentiferInDatabaseTransaction:v5 error:&v55];
    v12 = v55;

    if (v11)
    {
      v13 = *(a1 + 40);
      v54 = v12;
      v14 = v5;
      v15 = v11;
      if (v13)
      {
        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = __107__HDSharedSummaryManager__deleteCommittedTransactionsWithDatabaseTransaction_sourceDeviceIdentifier_error___block_invoke;
        v57[3] = &unk_278618638;
        v57[4] = v13;
        v16 = v14;
        v58 = v16;
        v59 = v15;
        v17 = [HDSharedSummaryTransactionEntity enumerateTransactionsWithDatabaseTransaction:v16 includeNonCommitted:0 error:&v54 enumerationHandler:v57];
      }

      else
      {
        v17 = 0;
      }

      v18 = v54;
      if (v17)
      {
        v19 = *(a1 + 32);
        v53 = v18;
        v20 = [v19 setCommitted:1 databaseTransaction:v14 error:&v53];
        v21 = v53;

        if (v20)
        {
          v22 = [*(a1 + 32) persistentID];
          v52 = v21;
          v23 = [HDSharedSummaryTransactionMetadataEntity metadataForTransactionID:v22 databaseTransaction:v14 error:&v52];
          v24 = v52;

          if (v23)
          {
            v25 = [*(a1 + 32) persistentID];
            WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
            v26 = [WeakRetained database];
            v51 = v24;
            v47 = [HDSharedSummaryEntity countOfObjectsForTransactionID:v25 healthDatabase:v26 error:&v51];
            v27 = v51;

            *(*(*(a1 + 48) + 8) + 24) = v47;
            if (v27)
            {
              if (a3)
              {
                v28 = v27;
                v29 = 0;
                *a3 = v27;
              }

              else
              {
                _HKLogDroppedError();
                v29 = 0;
              }
            }

            else
            {
              v35 = *(a1 + 32);
              v50 = 0;
              v36 = [v35 uuidInDatabaseTransaction:v14 error:&v50];
              v37 = v50;
              v27 = v37;
              if (v36)
              {
                v38 = [objc_alloc(MEMORY[0x277CCD940]) initWithUUID:v36 sourceDeviceIdentifier:v15 metadata:v23];
                v39 = *(*(a1 + 56) + 8);
                v40 = *(v39 + 40);
                *(v39 + 40) = v38;

                v41 = objc_loadWeakRetained((*(a1 + 40) + 8));
                v42 = [v41 profileType];

                if (v42 == 1)
                {
                  v43 = objc_loadWeakRetained((*(a1 + 40) + 8));
                  v44 = [v43 sharingAuthorizationManager];
                  [v44 deleteMarkedSharingAuthorizations];
                }

                v49[0] = MEMORY[0x277D85DD0];
                v49[1] = 3221225472;
                v49[2] = __56__HDSharedSummaryManager_commitTransactionEntity_error___block_invoke_2;
                v49[3] = &unk_278613968;
                v49[4] = *(a1 + 40);
                [v14 onCommit:v49 orRollback:{0, v47}];
                v29 = 1;
              }

              else
              {
                v45 = v37;
                v29 = v45 == 0;
                if (v45)
                {
                  if (a3)
                  {
                    v46 = v45;
                    *a3 = v45;
                  }

                  else
                  {
                    _HKLogDroppedError();
                  }
                }
              }
            }
          }

          else
          {
            v27 = v24;
            v29 = v27 == 0;
            if (v27)
            {
              if (a3)
              {
                v34 = v27;
                *a3 = v27;
              }

              else
              {
                _HKLogDroppedError();
              }
            }

            v23 = 0;
          }

          goto LABEL_26;
        }

        v31 = v21;
      }

      else
      {
        v31 = v18;
      }
    }

    else
    {
      v31 = v12;
    }

    v23 = v31;
    if (v31)
    {
      if (a3)
      {
        v32 = v31;
        v29 = 0;
        *a3 = v23;
      }

      else
      {
        _HKLogDroppedError();
        v29 = 0;
      }

      v27 = v23;
    }

    else
    {
      v27 = 0;
      v29 = 1;
    }

LABEL_26:

    goto LABEL_27;
  }

  v11 = v8;
  if (v11)
  {
    if (a3)
    {
      v30 = v11;
      v29 = 0;
      *a3 = v11;
    }

    else
    {
      _HKLogDroppedError();
      v29 = 0;
    }

    v27 = v11;
  }

  else
  {
    v27 = 0;
    v29 = 1;
  }

LABEL_27:

  return v29;
}

- (uint64_t)_notifyObserversOfTransactionChange
{
  if (result)
  {
    v1 = *(result + 24);
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __61__HDSharedSummaryManager__notifyObserversOfTransactionChange__block_invoke;
    v2[3] = &unk_278618660;
    v2[4] = result;
    return [v1 notifyObservers:v2];
  }

  return result;
}

- (BOOL)discardTransactionEntity:(id)a3 error:(id *)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  _HKInitializeLogging();
  v7 = HKLogSharing();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = objc_opt_class();
    v8 = v18;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Discarding transaction", buf, 0xCu);
  }

  v9 = objc_opt_class();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__HDSharedSummaryManager_discardTransactionEntity_error___block_invoke;
  v14[3] = &unk_278613218;
  v15 = v6;
  v16 = self;
  v10 = v6;
  v11 = [(HDSharedSummaryManager *)self performDatabaseTransactionForWriting:v9 entity:a4 error:v14 block:?];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

BOOL __57__HDSharedSummaryManager_discardTransactionEntity_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v13 = 0;
  v6 = [v5 deleteWithDatabaseTransaction:a2 error:&v13];
  v7 = v13;
  v8 = v7;
  if (v6)
  {
    [(HDSharedSummaryManager *)*(a1 + 40) _notifyObserversOfTransactionChange];
    v9 = 1;
  }

  else
  {
    v10 = v7;
    v9 = v10 == 0;
    if (v10)
    {
      if (a3)
      {
        v11 = v10;
        *a3 = v10;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v9;
}

- (id)fetchAllTransactionsWithError:(id *)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__HDSharedSummaryManager_fetchAllTransactionsWithError___block_invoke;
  v9[3] = &unk_278618520;
  v6 = v5;
  v10 = v6;
  if ([(HDSharedSummaryManager *)self enumerateCommittedTransactionsWithError:a3 handler:v9])
  {
    v7 = [v6 copy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)enumerateCommittedTransactionsWithError:(id *)a3 handler:(id)a4
{
  v6 = a4;
  v7 = objc_opt_class();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__HDSharedSummaryManager_enumerateCommittedTransactionsWithError_handler___block_invoke;
  v10[3] = &unk_278618368;
  v10[4] = self;
  v11 = v6;
  v8 = v6;
  LOBYTE(a3) = [(HDSharedSummaryManager *)self performDatabaseTransactionForWriting:v7 entity:a3 error:v10 block:?];

  return a3;
}

BOOL __74__HDSharedSummaryManager_enumerateCommittedTransactionsWithError_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__HDSharedSummaryManager_enumerateCommittedTransactionsWithError_handler___block_invoke_2;
  v10[3] = &unk_278618548;
  v6 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v7 = v5;
  v8 = [HDSharedSummaryTransactionEntity enumerateTransactionsWithDatabaseTransaction:v7 includeNonCommitted:0 error:a3 enumerationHandler:v10];

  return v8;
}

uint64_t __74__HDSharedSummaryManager_enumerateCommittedTransactionsWithError_handler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = [(HDSharedSummaryManager *)*(a1 + 32) _transactionForEntity:a2 databaseTransaction:*(a1 + 40) error:a3];
  if (v4)
  {
    (*(*(a1 + 48) + 16))();
  }

  return 1;
}

- (id)_transactionForEntity:(void *)a3 databaseTransaction:(void *)a4 error:
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v23 = 0;
    v9 = [v7 uuidInDatabaseTransaction:v8 error:&v23];
    v10 = v23;
    v11 = v10;
    if (!v9)
    {
      v12 = v10;
      if (v12)
      {
        if (a4)
        {
          v17 = v12;
          v16 = 0;
          *a4 = v12;
        }

        else
        {
          _HKLogDroppedError();
          v16 = 0;
        }

        v15 = v12;
      }

      else
      {
        v15 = 0;
        v16 = 0;
      }

      goto LABEL_25;
    }

    v22 = v10;
    v12 = [v7 sourceDeviceIdentiferInDatabaseTransaction:v8 error:&v22];
    v13 = v22;

    if (v12)
    {
      v21 = v13;
      v14 = +[HDSharedSummaryTransactionMetadataEntity metadataForTransactionID:databaseTransaction:error:](HDSharedSummaryTransactionMetadataEntity, "metadataForTransactionID:databaseTransaction:error:", [v7 persistentID], v8, &v21);
      v15 = v21;

      if (v14)
      {
        v16 = [objc_alloc(MEMORY[0x277CCD940]) initWithUUID:v9 sourceDeviceIdentifier:v12 metadata:v14];
LABEL_24:

LABEL_25:
        goto LABEL_26;
      }

      v15 = v15;
      if (v15)
      {
        if (a4)
        {
          v19 = v15;
          *a4 = v15;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v14 = 0;
    }

    else
    {
      v14 = v13;
      if (v14)
      {
        if (a4)
        {
          v18 = v14;
          v16 = 0;
          *a4 = v14;
        }

        else
        {
          _HKLogDroppedError();
          v16 = 0;
        }

        v15 = v14;
        goto LABEL_24;
      }

      v15 = 0;
    }

    v16 = 0;
    goto LABEL_24;
  }

  v16 = 0;
LABEL_26:

  return v16;
}

- (BOOL)enumerateNonCommittedTransactionsWithError:(id *)a3 handler:(id)a4
{
  v6 = a4;
  v7 = objc_opt_class();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__HDSharedSummaryManager_enumerateNonCommittedTransactionsWithError_handler___block_invoke;
  v10[3] = &unk_278618368;
  v10[4] = self;
  v11 = v6;
  v8 = v6;
  LOBYTE(a3) = [(HDSharedSummaryManager *)self performDatabaseTransactionForWriting:v7 entity:a3 error:v10 block:?];

  return a3;
}

BOOL __77__HDSharedSummaryManager_enumerateNonCommittedTransactionsWithError_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__HDSharedSummaryManager_enumerateNonCommittedTransactionsWithError_handler___block_invoke_2;
  v11[3] = &unk_278618548;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v8 = v5;
  v9 = [HDSharedSummaryTransactionEntity enumerateTransactionsWithDatabaseTransaction:v8 includeNonCommitted:1 error:a3 enumerationHandler:v11];

  return v9;
}

BOOL __77__HDSharedSummaryManager_enumerateNonCommittedTransactionsWithError_handler___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a1[4];
  v24 = 0;
  v7 = [v5 committedInDatabaseTransaction:v6 error:&v24];
  v8 = v24;
  if (v8)
  {
    v9 = v8;
    if (a3)
    {
      v10 = v8;
      v11 = 0;
      *a3 = v9;
    }

    else
    {
      _HKLogDroppedError();
      v11 = 0;
    }

LABEL_20:

    goto LABEL_21;
  }

  if ((v7 & 1) == 0)
  {
    v13 = a1[4];
    v12 = a1[5];
    v23 = 0;
    v14 = [(HDSharedSummaryManager *)v12 _transactionForEntity:v5 databaseTransaction:v13 error:&v23];
    v15 = v23;
    v16 = v15;
    if (v14)
    {
      v17 = a1[4];
      v22 = v15;
      v18 = [v5 creationDateInDatabaseTransaction:v17 error:&v22];
      v9 = v22;

      if (v18)
      {
        [v14 _setCreationDate:v18];
        (*(a1[6] + 16))();

        v11 = 1;
      }

      else
      {
        v9 = v9;
        v11 = v9 == 0;
        if (v9)
        {
          if (a3)
          {
            v20 = v9;
            *a3 = v9;
          }

          else
          {
            _HKLogDroppedError();
          }
        }
      }
    }

    else
    {
      v9 = v15;
      v11 = v9 == 0;
      if (v9)
      {
        if (a3)
        {
          v19 = v9;
          *a3 = v9;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }

    goto LABEL_20;
  }

  v11 = 1;
LABEL_21:

  return v11;
}

- (BOOL)enumerateSummariesInTransaction:(id)a3 package:(id)a4 names:(id)a5 includedObjectTypes:(id)a6 error:(id *)a7 handler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v19 = objc_opt_class();
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __106__HDSharedSummaryManager_enumerateSummariesInTransaction_package_names_includedObjectTypes_error_handler___block_invoke;
  v26[3] = &unk_278618598;
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v20 = v18;
  v21 = v17;
  v22 = v16;
  v23 = v15;
  v24 = v14;
  LOBYTE(a7) = [(HDSharedSummaryManager *)self performDatabaseTransactionForWriting:v19 entity:a7 error:v26 block:?];

  return a7;
}

BOOL __106__HDSharedSummaryManager_enumerateSummariesInTransaction_package_names_includedObjectTypes_error_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) UUID];
  v30 = 0;
  v7 = [HDSharedSummaryTransactionEntity transactionEntityWithUUID:v6 databaseTransaction:v5 error:&v30];
  v8 = v30;

  if (v7)
  {
    v9 = [v7 persistentID];
    v10 = *(a1 + 40);
    v11 = [*(a1 + 48) allObjects];
    v12 = *(a1 + 56);
    v29 = v8;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __106__HDSharedSummaryManager_enumerateSummariesInTransaction_package_names_includedObjectTypes_error_handler___block_invoke_2;
    v26[3] = &unk_278618570;
    v27 = *(a1 + 32);
    v28 = *(a1 + 64);
    v13 = [HDSharedSummaryEntity enumerateSummariesWithTransactionID:v9 package:v10 names:v11 includedObjectTypes:v12 databaseTransaction:v5 error:&v29 enumerationHandler:v26];
    v14 = v29;

    if (v13)
    {
      v15 = 1;
    }

    else
    {
      v17 = v14;
      v18 = v17;
      v15 = v17 == 0;
      if (v17)
      {
        if (a3)
        {
          v19 = v17;
          *a3 = v18;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }

    v16 = v27;
  }

  else
  {
    if (v8)
    {
      v16 = v8;
    }

    else
    {
      v20 = MEMORY[0x277CCA9B8];
      v21 = [*(a1 + 32) UUID];
      v22 = [v21 UUIDString];
      v23 = [v20 hk_error:118 format:{@"Transaction with UUID %@ not found", v22}];

      v16 = v23;
      if (!v16)
      {
        v14 = 0;
        v15 = 1;
        goto LABEL_18;
      }
    }

    if (a3)
    {
      v24 = v16;
      v15 = 0;
      *a3 = v16;
    }

    else
    {
      _HKLogDroppedError();
      v15 = 0;
    }

    v14 = v16;
  }

LABEL_18:
  return v15;
}

uint64_t __106__HDSharedSummaryManager_enumerateSummariesInTransaction_package_names_includedObjectTypes_error_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 _setTransaction:v3];
  (*(*(a1 + 40) + 16))();

  return 1;
}

- (BOOL)enumerateSummariesInTransactionEntity:(id)a3 package:(id)a4 names:(id)a5 error:(id *)a6 handler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = objc_opt_class();
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __92__HDSharedSummaryManager_enumerateSummariesInTransactionEntity_package_names_error_handler___block_invoke;
  v22[3] = &unk_2786185E8;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v26 = v15;
  v17 = v15;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  LOBYTE(a6) = [(HDSharedSummaryManager *)self performDatabaseTransactionForWriting:v16 entity:a6 error:v22 block:?];

  return a6;
}

BOOL __92__HDSharedSummaryManager_enumerateSummariesInTransactionEntity_package_names_error_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 persistentID];
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __92__HDSharedSummaryManager_enumerateSummariesInTransactionEntity_package_names_error_handler___block_invoke_2;
  v12[3] = &unk_2786185C0;
  v13 = *(a1 + 56);
  v10 = [HDSharedSummaryEntity enumerateSummariesWithTransactionID:v7 package:v8 names:v9 includedObjectTypes:0 databaseTransaction:v6 error:a3 enumerationHandler:v12];

  return v10;
}

- (id)mostRecentTransactionCreationDateWithError:(id *)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__34;
  v13 = __Block_byref_object_dispose__34;
  v14 = 0;
  v5 = objc_opt_class();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__HDSharedSummaryManager_mostRecentTransactionCreationDateWithError___block_invoke;
  v8[3] = &unk_278618610;
  v8[4] = &v9;
  if (([(HDSharedSummaryManager *)self performDatabaseTransactionForWriting:v5 entity:a3 error:v8 block:?]& 1) != 0)
  {
    v6 = v10[5];
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v9, 8);

  return v6;
}

uint64_t __69__HDSharedSummaryManager_mostRecentTransactionCreationDateWithError___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = 0;
  v5 = [HDSharedSummaryTransactionEntity mostRecentTransactionCreationDateWithDatabaseTransaction:a2 error:&v13];
  v6 = v13;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  if (*(*(*(a1 + 32) + 8) + 40))
  {
    v9 = 1;
  }

  else
  {
    v9 = v6 == 0;
  }

  v10 = v9;
  if (!v9)
  {
    if (a3)
    {
      v11 = v6;
      *a3 = v6;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return v10;
}

- (BOOL)prepareAndCommitTransactionWithUUID:(id)a3 sourceDeviceIdentifier:(id)a4 metadata:(id)a5 sharedSummaries:(id)a6 error:(id *)a7
{
  v12 = a6;
  v26 = 0;
  v13 = [(HDSharedSummaryManager *)self createReceivedTransactionWithUUID:a3 sourceDeviceIdentifier:a4 metadata:a5 error:&v26];
  v14 = v26;
  v15 = v14;
  if (!v13)
  {
    v18 = v14;
    if (v18)
    {
      if (!a7)
      {
LABEL_12:
        _HKLogDroppedError();
        v20 = 0;
        goto LABEL_13;
      }

LABEL_9:
      v22 = v18;
      v20 = 0;
      *a7 = v18;
LABEL_13:
      v19 = v18;
      goto LABEL_18;
    }

LABEL_14:
    v19 = 0;
    goto LABEL_15;
  }

  v25 = v14;
  v16 = [(HDSharedSummaryManager *)self addOrReuseReceivedSharedSummaries:v12 transactionEntity:v13 error:&v25];
  v17 = v25;

  if (!v16)
  {
    v18 = v17;
    if (v18)
    {
      if (!a7)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    goto LABEL_14;
  }

  v24 = v17;
  v18 = [(HDSharedSummaryManager *)self commitTransactionEntity:v13 error:&v24];
  v19 = v24;

  if (v18)
  {
LABEL_15:
    v20 = 1;
    goto LABEL_18;
  }

  v19 = v19;
  v20 = v19 == 0;
  if (v19)
  {
    if (a7)
    {
      v21 = v19;
      *a7 = v19;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v18 = 0;
LABEL_18:

  return v20;
}

- (BOOL)addOrReuseReceivedSharedSummaries:(id)a3 transactionEntity:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_opt_class();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __84__HDSharedSummaryManager_addOrReuseReceivedSharedSummaries_transactionEntity_error___block_invoke;
  v14[3] = &unk_278615D40;
  v15 = v8;
  v16 = self;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  LOBYTE(a5) = [(HDSharedSummaryManager *)self performDatabaseTransactionForWriting:v10 entity:a5 error:v14 block:?];

  return a5;
}

uint64_t __84__HDSharedSummaryManager_addOrReuseReceivedSharedSummaries_transactionEntity_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v33 = a1;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (!v6)
  {
    v19 = 1;
    goto LABEL_39;
  }

  v7 = v6;
  v8 = *v38;
  v31 = v5;
  v32 = v4;
  while (2)
  {
    a1 = 0;
    do
    {
      if (*v38 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v37 + 1) + 8 * a1);
      v10 = [v9 UUID];
      v36 = 0;
      v11 = [HDSharedSummaryEntity entityWithUUID:v10 databaseTransaction:v4 error:&v36];
      v12 = v36;

      if (!v11)
      {
        if ([v12 hk_isObjectNotFoundError])
        {
          v15 = *(v33 + 40);
          v41 = v9;
          v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
          v17 = *(v33 + 48);
          v35 = 0;
          LODWORD(v15) = [v15 addSharedSummaries:v16 transactionEntity:v17 error:&v35];
          v18 = v35;

          if (!v15)
          {
            v26 = v18;
            v22 = v26;
            if (v26)
            {
              if (a3)
              {
                v27 = v26;
                LODWORD(a1) = 0;
                *a3 = v22;
              }

              else
              {
                _HKLogDroppedError();
                LODWORD(a1) = 0;
              }

              v11 = v22;
            }

            else
            {
              v11 = 0;
              LODWORD(a1) = 1;
            }

            v5 = v31;
            v4 = v32;
            goto LABEL_37;
          }

          v4 = v32;
          v5 = v31;
          goto LABEL_13;
        }

        v24 = v12;
        if (!v12)
        {
          LODWORD(a1) = 1;
LABEL_38:

          v19 = 0;
          goto LABEL_39;
        }

LABEL_22:
        if (a3)
        {
          v25 = v12;
          LODWORD(a1) = 0;
          *a3 = v12;
        }

        else
        {
          _HKLogDroppedError();
          LODWORD(a1) = 0;
        }

        v22 = v12;
        goto LABEL_37;
      }

      if (v12)
      {
        v20 = v12;
        goto LABEL_22;
      }

      v13 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(v33 + 48), "persistentID")}];
      v34 = 0;
      v14 = [v11 setReuseTransactionID:v13 databaseTransaction:v4 error:&v34];
      v12 = v34;

      if ((v14 & 1) == 0)
      {
        v21 = v12;
        v22 = v21;
        if (v21)
        {
          if (a3)
          {
            v23 = v21;
            LODWORD(a1) = 0;
            *a3 = v22;
          }

          else
          {
            _HKLogDroppedError();
            LODWORD(a1) = 0;
          }

          v12 = v22;
        }

        else
        {
          v12 = 0;
          LODWORD(a1) = 1;
        }

LABEL_37:

        goto LABEL_38;
      }

LABEL_13:

      ++a1;
    }

    while (v7 != a1);
    v7 = [v5 countByEnumeratingWithState:&v37 objects:v42 count:16];
    v19 = 1;
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_39:

  v28 = *MEMORY[0x277D85DE8];
  return (v19 | a1) & 1;
}

BOOL __91__HDSharedSummaryManager__createTransactionWithUUID_sourceDeviceIdentifier_metadata_error___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v5 = a1[4];
  v6 = a1[5];
  v15 = 0;
  v7 = [HDSharedSummaryTransactionEntity insertWithUUID:v5 sourceDevice:v6 databaseTransaction:a2 error:&v15];
  v8 = v15;
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;

  if (*(*(a1[6] + 8) + 40))
  {
    v11 = 1;
  }

  else
  {
    v12 = v8;
    v11 = v12 == 0;
    if (v12)
    {
      if (a3)
      {
        v13 = v12;
        *a3 = v12;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v11;
}

- (BOOL)deleteAllTransactionsWithError:(id *)a3
{
  v12 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = HKLogSharing();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = objc_opt_class();
    v6 = v11;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Deleting all transactions", &v10, 0xCu);
  }

  v7 = objc_opt_class();
  result = [(HDSharedSummaryManager *)self performDatabaseTransactionForWriting:v7 entity:a3 error:&__block_literal_global_38 block:?];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __57__HDSharedSummaryManager_deleteAllTransactionsWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v14 = 0;
  v5 = [HDSharedSummaryTransactionEntity deleteAllEntriesWithDatabaseTransaction:v4 error:&v14];
  v6 = v14;
  v7 = v6;
  if (!v5)
  {
    v9 = v6;
    if (v9)
    {
      if (!a3)
      {
LABEL_9:
        _HKLogDroppedError();
        v10 = 0;
        goto LABEL_11;
      }

LABEL_6:
      v11 = v9;
      v10 = 0;
      *a3 = v9;
LABEL_11:

      goto LABEL_12;
    }

LABEL_10:
    v10 = 1;
    goto LABEL_11;
  }

  v13 = v6;
  v8 = [HDSharedSummaryEntity deleteAllSummariesWithDatabaseTransaction:v4 error:&v13];
  v9 = v13;

  if (!v8)
  {
    v9 = v9;
    if (v9)
    {
      if (!a3)
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }

    goto LABEL_10;
  }

  v10 = 1;
LABEL_12:

  return v10;
}

- (BOOL)deleteTransactions:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  _HKInitializeLogging();
  v7 = HKLogSharing();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    *buf = 138543618;
    v19 = v8;
    v20 = 2048;
    v21 = [v6 count];
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Deleting %ld transactions", buf, 0x16u);
  }

  v10 = objc_opt_class();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __51__HDSharedSummaryManager_deleteTransactions_error___block_invoke;
  v15[3] = &unk_278613218;
  v16 = v6;
  v17 = self;
  v11 = v6;
  v12 = [(HDSharedSummaryManager *)self performDatabaseTransactionForWriting:v10 entity:a4 error:v15 block:?];

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t __51__HDSharedSummaryManager_deleteTransactions_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v18 = a1;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v21 + 1) + 8 * v10) UUID];
        v20 = 0;
        v12 = [HDSharedSummaryTransactionEntity transactionEntityWithUUID:v11 databaseTransaction:v5 error:&v20];
        v13 = v20;

        if (v12)
        {
          if (![v12 deleteWithDatabaseTransaction:v5 error:a3])
          {
            goto LABEL_16;
          }
        }

        else if (v13)
        {
          if (a3)
          {
            v15 = v13;
            *a3 = v13;
          }

          else
          {
            _HKLogDroppedError();
          }

LABEL_16:

          v14 = 0;
          goto LABEL_17;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __51__HDSharedSummaryManager_deleteTransactions_error___block_invoke_2;
  v19[3] = &unk_278613968;
  v19[4] = *(v18 + 40);
  [v5 onCommit:v19 orRollback:0];
  v14 = 1;
LABEL_17:

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)deviceIdentifierWithError:(id *)a3
{
  deviceIdentifier = self->_deviceIdentifier;
  if (deviceIdentifier)
  {
    v4 = deviceIdentifier;
    goto LABEL_19;
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v8 = [WeakRetained sourceManager];
  v20 = 0;
  v9 = [v8 localDeviceSourceWithError:&v20];
  v10 = v20;

  if (!v9)
  {
    v12 = v10;
    if (v12)
    {
      if (a3)
      {
        v16 = v12;
        v4 = 0;
        *a3 = v12;
      }

      else
      {
        _HKLogDroppedError();
        v4 = 0;
      }

      v13 = v12;
      goto LABEL_18;
    }

    v13 = 0;
    goto LABEL_17;
  }

  v11 = objc_loadWeakRetained(&self->_profile);
  v19 = v10;
  v12 = [v9 sourceWithProfile:v11 error:&v19];
  v13 = v19;

  if (!v12)
  {
    v13 = v13;
    if (v13)
    {
      if (a3)
      {
        v17 = v13;
        *a3 = v13;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v12 = 0;
LABEL_17:
    v4 = 0;
    goto LABEL_18;
  }

  v14 = [v12 bundleIdentifier];
  v15 = self->_deviceIdentifier;
  self->_deviceIdentifier = v14;

  v4 = self->_deviceIdentifier;
LABEL_18:

LABEL_19:

  return v4;
}

uint64_t __107__HDSharedSummaryManager__deleteCommittedTransactionsWithDatabaseTransaction_sourceDeviceIdentifier_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v7 = [WeakRetained profileType];

  if (v7 == 1)
  {
LABEL_4:
    v13 = [v5 deleteWithDatabaseTransaction:*(a1 + 40) error:a3];
    goto LABEL_11;
  }

  v8 = *(a1 + 40);
  v17 = 0;
  v9 = [v5 sourceDeviceIdentiferInDatabaseTransaction:v8 error:&v17];
  v10 = v17;
  v11 = v10;
  if (v9)
  {
    v12 = [*(a1 + 48) isEqualToString:v9];

    if (!v12)
    {
      v13 = 1;
      goto LABEL_11;
    }

    goto LABEL_4;
  }

  v14 = v10;
  v13 = v14 == 0;
  if (v14)
  {
    if (a3)
    {
      v15 = v14;
      *a3 = v14;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

LABEL_11:
  return v13;
}

@end