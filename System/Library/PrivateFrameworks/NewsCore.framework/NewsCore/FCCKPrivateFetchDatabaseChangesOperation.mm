@interface FCCKPrivateFetchDatabaseChangesOperation
- (BOOL)validateOperation;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
@end

@implementation FCCKPrivateFetchDatabaseChangesOperation

- (BOOL)validateOperation
{
  v3.receiver = self;
  v3.super_class = FCCKPrivateFetchDatabaseChangesOperation;
  return [(FCCKPrivateDatabaseOperation *)&v3 validateOperation];
}

- (void)performOperation
{
  v3 = objc_alloc_init(FCThreadSafeMutableArray);
  v4 = dispatch_group_create();
  v5 = [(FCCKPrivateDatabaseOperation *)self skipPreflight];
  v6 = [(FCCKPrivateDatabaseOperation *)self database];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__FCCKPrivateFetchDatabaseChangesOperation_performOperation__block_invoke;
  v14[3] = &unk_1E7C43788;
  v15 = v4;
  v16 = self;
  v7 = v3;
  v17 = v7;
  v8 = v4;
  [(FCCKPrivateDatabase *)v6 enumerateActiveDestinationsWithOptions:v5 handler:v14];

  v9 = FCDispatchQueueForQualityOfService([(FCCKPrivateFetchDatabaseChangesOperation *)self qualityOfService]);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__FCCKPrivateFetchDatabaseChangesOperation_performOperation__block_invoke_5;
  block[3] = &unk_1E7C36C58;
  v12 = v7;
  v13 = self;
  v10 = v7;
  dispatch_group_notify(v8, v9, block);
}

void __60__FCCKPrivateFetchDatabaseChangesOperation_performOperation__block_invoke(uint64_t a1, uint64_t a2)
{
  dispatch_group_enter(*(a1 + 32));
  v4 = objc_alloc_init(MEMORY[0x1E695B8F8]);
  v5 = [*(a1 + 40) previousServerChangeToken];
  v6 = [v5 changeTokenForDestination:a2];
  [v4 setPreviousServerChangeToken:v6];

  [v4 setFetchAllChanges:1];
  v7 = objc_opt_new();
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __60__FCCKPrivateFetchDatabaseChangesOperation_performOperation__block_invoke_2;
  v21[3] = &unk_1E7C43738;
  v8 = v7;
  v22 = v8;
  [v4 setRecordZoneWithIDChangedBlock:v21];
  v9 = [MEMORY[0x1E695DF70] array];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __60__FCCKPrivateFetchDatabaseChangesOperation_performOperation__block_invoke_3;
  v19[3] = &unk_1E7C43738;
  v10 = v9;
  v20 = v10;
  [v4 setRecordZoneWithIDWasDeletedBlock:v19];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__FCCKPrivateFetchDatabaseChangesOperation_performOperation__block_invoke_4;
  v13[3] = &unk_1E7C43760;
  v18 = a2;
  v14 = v8;
  v15 = v10;
  v16 = *(a1 + 48);
  v17 = *(a1 + 32);
  v11 = v10;
  v12 = v8;
  [v4 setFetchDatabaseChangesCompletionBlock:v13];
  [*(a1 + 40) runChildCKOperation:v4 destination:a2];
}

uint64_t __60__FCCKPrivateFetchDatabaseChangesOperation_performOperation__block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) addObject:a2];
  }

  return result;
}

uint64_t __60__FCCKPrivateFetchDatabaseChangesOperation_performOperation__block_invoke_3(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) addObject:a2];
  }

  return result;
}

void __60__FCCKPrivateFetchDatabaseChangesOperation_performOperation__block_invoke_4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = a2;
  v9 = objc_alloc_init(FCCKPrivateFetchDatabaseChangesSingleDestinationResult);
  [(FCCKPrivateFetchDatabaseChangesSingleDestinationResult *)v9 setDestination:*(a1 + 64)];
  [(FCCKPrivateFetchDatabaseChangesSingleDestinationResult *)v9 setChangedZoneIDs:*(a1 + 32)];
  [(FCCKPrivateFetchDatabaseChangesSingleDestinationResult *)v9 setDeletedZoneIDs:*(a1 + 40)];
  [(FCCKPrivateFetchDatabaseChangesSingleDestinationResult *)v9 setServerChangeToken:v8];

  [(FCCKPrivateFetchDatabaseChangesSingleDestinationResult *)v9 setMoreComing:a3];
  [(FCCKPrivateFetchDatabaseChangesSingleDestinationResult *)v9 setError:v7];

  [*(a1 + 48) addObject:v9];
  dispatch_group_leave(*(a1 + 56));
}

void __60__FCCKPrivateFetchDatabaseChangesOperation_performOperation__block_invoke_5(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [MEMORY[0x1E695DF70] array];
  v21 = [MEMORY[0x1E695DF90] dictionary];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v19 = a1;
  obj = [*(a1 + 32) readOnlyArray];
  v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    LOBYTE(v7) = 0;
    v8 = *v23;
    while (1)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [v10 changedZoneIDs];
        [v2 addObjectsFromArray:v11];

        v12 = [v10 deletedZoneIDs];
        [v3 addObjectsFromArray:v12];

        v13 = [v10 serverChangeToken];

        if (v13)
        {
          v14 = [v10 serverChangeToken];
          v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v10, "destination")}];
          [v21 setObject:v14 forKeyedSubscript:v15];
        }

        if (v7)
        {
          v7 = 1;
          if (v6)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v7 = [v10 moreComing];
          if (v6)
          {
LABEL_12:
            if (![v6 fc_isCKErrorWithCode:21])
            {
              continue;
            }
          }
        }

        v16 = [v10 error];

        v6 = v16;
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (!v5)
      {
        goto LABEL_18;
      }
    }
  }

  v6 = 0;
  v7 = 0;
LABEL_18:

  [*(v19 + 40) setResultChangedZoneIDs:v2];
  [*(v19 + 40) setResultDeletedZoneIDs:v3];
  v17 = [[FCCKPrivateDatabaseServerChangeToken alloc] initWithChangeTokensByDestination:v21];
  [*(v19 + 40) setResultServerChangeToken:v17];

  [*(v19 + 40) setResultMoreComing:v7];
  [*(v19 + 40) finishedPerformingOperationWithError:v6];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)operationWillFinishWithError:(id)a3
{
  v10 = a3;
  v4 = [(FCCKPrivateFetchDatabaseChangesOperation *)self resultServerChangeToken];
  v5 = [(FCCKPrivateFetchDatabaseChangesOperation *)self resultMoreComing];
  if (v10)
  {
    if (!v4)
    {
      v4 = [(FCCKPrivateFetchDatabaseChangesOperation *)self previousServerChangeToken];
    }

    v5 = 1;
  }

  v6 = [(FCCKPrivateFetchDatabaseChangesOperation *)self fetchDatabaseChangesCompletionBlock];

  if (v6)
  {
    v7 = [(FCCKPrivateFetchDatabaseChangesOperation *)self fetchDatabaseChangesCompletionBlock];
    v8 = [(FCCKPrivateFetchDatabaseChangesOperation *)self resultChangedZoneIDs];
    v9 = [(FCCKPrivateFetchDatabaseChangesOperation *)self resultDeletedZoneIDs];
    (v7)[2](v7, v8, v9, v4, v5, v10);
  }
}

@end