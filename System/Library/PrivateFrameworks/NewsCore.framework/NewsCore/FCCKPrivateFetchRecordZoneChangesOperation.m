@interface FCCKPrivateFetchRecordZoneChangesOperation
- (BOOL)validateOperation;
- (id)_configurationForDestination:(int64_t)a3;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
@end

@implementation FCCKPrivateFetchRecordZoneChangesOperation

- (BOOL)validateOperation
{
  v17 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = FCCKPrivateFetchRecordZoneChangesOperation;
  v3 = [(FCCKPrivateDatabaseOperation *)&v8 validateOperation];
  v4 = [(FCCKPrivateFetchRecordZoneChangesOperation *)self recordZoneID];

  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't fetch zone changes without a zone ID"];
    *buf = 136315906;
    v10 = "[FCCKPrivateFetchRecordZoneChangesOperation validateOperation]";
    v11 = 2080;
    v12 = "FCCKPrivateFetchRecordZoneChangesOperation.m";
    v13 = 1024;
    v14 = 35;
    v15 = 2114;
    v16 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (v4)
  {
    result = v3;
  }

  else
  {
    result = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)performOperation
{
  v37[1] = *MEMORY[0x1E69E9840];
  v30 = 0;
  v31 = &v30;
  if ([(FCCKPrivateDatabaseOperation *)self skipPreflight])
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  v32 = 0x2020000000;
  v33 = 0;
  v4 = [(FCCKPrivateDatabaseOperation *)self database];
  v5 = [(FCCKPrivateFetchRecordZoneChangesOperation *)self recordZoneID];
  v37[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __62__FCCKPrivateFetchRecordZoneChangesOperation_performOperation__block_invoke;
  v29[3] = &unk_1E7C3B438;
  v29[4] = &v30;
  [(FCCKPrivateDatabase *)v4 enumeratePayloadsWithRecordIDs:0 records:v6 zoneIDs:0 zones:v3 options:v29 payloadHandler:?];

  v7 = objc_alloc_init(MEMORY[0x1E695B918]);
  v8 = [(FCCKPrivateFetchRecordZoneChangesOperation *)self recordZoneID];
  v36 = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  [v7 setRecordZoneIDs:v9];

  [v7 setFetchAllChanges:{-[FCCKPrivateFetchRecordZoneChangesOperation fetchAllChanges](self, "fetchAllChanges")}];
  v10 = [(FCCKPrivateFetchRecordZoneChangesOperation *)self recordZoneID];
  v34 = v10;
  v11 = [(FCCKPrivateFetchRecordZoneChangesOperation *)self _configurationForDestination:v31[3]];
  v35 = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  [v7 setConfigurationsByRecordZoneID:v12];

  v13 = objc_opt_new();
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __62__FCCKPrivateFetchRecordZoneChangesOperation_performOperation__block_invoke_10;
  v27[3] = &unk_1E7C37FE0;
  v14 = v13;
  v28 = v14;
  [v7 setRecordChangedBlock:v27];
  v15 = [MEMORY[0x1E695DF70] array];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __62__FCCKPrivateFetchRecordZoneChangesOperation_performOperation__block_invoke_2;
  v25[3] = &unk_1E7C3B460;
  v16 = v15;
  v26 = v16;
  [v7 setRecordWithIDWasDeletedBlock:v25];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __62__FCCKPrivateFetchRecordZoneChangesOperation_performOperation__block_invoke_3;
  v21[3] = &unk_1E7C3B488;
  v24 = &v30;
  v21[4] = self;
  v17 = v14;
  v22 = v17;
  v18 = v16;
  v23 = v18;
  [v7 setRecordZoneFetchCompletionBlock:v21];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __62__FCCKPrivateFetchRecordZoneChangesOperation_performOperation__block_invoke_4;
  v20[3] = &unk_1E7C36E50;
  v20[4] = self;
  [v7 setFetchRecordZoneChangesCompletionBlock:v20];
  [(FCCKPrivateDatabaseOperation *)self runChildCKOperation:v7 destination:v31[3]];

  _Block_object_dispose(&v30, 8);
  v19 = *MEMORY[0x1E69E9840];
}

void __62__FCCKPrivateFetchRecordZoneChangesOperation_performOperation__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(*(*(a1 + 32) + 8) + 24) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"zone should only map to a single destination"];
    v7 = 136315906;
    v8 = "[FCCKPrivateFetchRecordZoneChangesOperation performOperation]_block_invoke";
    v9 = 2080;
    v10 = "FCCKPrivateFetchRecordZoneChangesOperation.m";
    v11 = 1024;
    v12 = 58;
    v13 = 2114;
    v14 = v6;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v7, 0x26u);

    if (v3)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    goto LABEL_5;
  }

  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = v3[5];
LABEL_5:
  *(*(*(a1 + 32) + 8) + 24) = v4;

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __62__FCCKPrivateFetchRecordZoneChangesOperation_performOperation__block_invoke_10(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) addObject:a2];
  }

  return result;
}

uint64_t __62__FCCKPrivateFetchRecordZoneChangesOperation_performOperation__block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) addObject:a2];
  }

  return result;
}

void __62__FCCKPrivateFetchRecordZoneChangesOperation_performOperation__block_invoke_3(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v7 = *(*(*(a1 + 56) + 8) + 24);
    v8 = *(a1 + 32);
    v9 = a3;
    v10 = [v8 previousServerChangeToken];
    v11 = [FCCKPrivateDatabaseServerChangeToken tokenByAddingCKToken:v9 forDestination:v7 toToken:v10];
  }

  else
  {
    v11 = 0;
  }

  [*(a1 + 32) setResultChangedRecords:*(a1 + 40)];
  [*(a1 + 32) setResultDeletedRecordIDs:*(a1 + 48)];
  [*(a1 + 32) setResultServerChangeToken:v11];
  [*(a1 + 32) setResultMoreComing:a5];
}

- (void)operationWillFinishWithError:(id)a3
{
  v4 = a3;
  v5 = [(FCCKPrivateFetchRecordZoneChangesOperation *)self resultServerChangeToken];
  v6 = [(FCCKPrivateFetchRecordZoneChangesOperation *)self resultMoreComing];
  v18 = v4;
  v7 = [(FCCKPrivateFetchRecordZoneChangesOperation *)self resultChangedRecords];
  v8 = [(FCCKPrivateFetchRecordZoneChangesOperation *)self resultDeletedRecordIDs];
  if (v18)
  {
    if (!v5)
    {
      v5 = [(FCCKPrivateFetchRecordZoneChangesOperation *)self previousServerChangeToken];
    }

    v6 = [v18 fc_isMissingZoneError] ^ 1;
    v9 = v18;
    goto LABEL_15;
  }

  v9 = [(FCCKPrivateFetchRecordZoneChangesOperation *)self previousServerChangeToken];
  if (v9)
  {
    v10 = [MEMORY[0x1E695E000] standardUserDefaults];
    if ([v10 BOOLForKey:@"simulate_expired_change_tokens"])
    {

LABEL_9:
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E695B740] code:21 userInfo:MEMORY[0x1E695E0F8]];
      goto LABEL_11;
    }

    v11 = [MEMORY[0x1E695E000] standardUserDefaults];
    v12 = [v11 BOOLForKey:@"simulate_server_side_data_reset"];

    if (v12)
    {
      goto LABEL_9;
    }

    v9 = 0;
  }

LABEL_11:
  v13 = [(FCCKPrivateFetchRecordZoneChangesOperation *)self previousServerChangeToken];
  if (v13)
  {
  }

  else
  {
    v14 = [MEMORY[0x1E695E000] standardUserDefaults];
    v15 = [v14 BOOLForKey:@"simulate_server_side_data_reset"];

    if (v15)
    {

      v7 = MEMORY[0x1E695E0F0];
      v8 = MEMORY[0x1E695E0F0];
    }
  }

LABEL_15:
  v16 = [(FCCKPrivateFetchRecordZoneChangesOperation *)self fetchRecordZoneChangesCompletionBlock];

  if (v16)
  {
    v17 = [(FCCKPrivateFetchRecordZoneChangesOperation *)self fetchRecordZoneChangesCompletionBlock];
    (v17)[2](v17, v7, v8, v5, v6, v9);
  }
}

- (id)_configurationForDestination:(int64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E695B908]);
  v6 = [(FCCKPrivateFetchRecordZoneChangesOperation *)self previousServerChangeToken];
  v7 = [v6 changeTokenForDestination:a3];
  [v5 setPreviousServerChangeToken:v7];

  v8 = [(FCCKPrivateFetchRecordZoneChangesOperation *)self desiredKeys];
  [v5 setDesiredKeys:v8];

  [v5 setFetchNewestChangesFirst:{-[FCCKPrivateFetchRecordZoneChangesOperation fetchNewestChangesFirst](self, "fetchNewestChangesFirst")}];

  return v5;
}

@end