@interface FCCKPrivateDatabaseOperation
- (BOOL)canRetryWithError:(id)a3 retryAfter:(id *)a4;
- (BOOL)validateOperation;
- (FCCKPrivateDatabaseOperation)init;
- (void)runChildCKOperation:(id)a3 destination:(int64_t)a4;
@end

@implementation FCCKPrivateDatabaseOperation

- (FCCKPrivateDatabaseOperation)init
{
  v3.receiver = self;
  v3.super_class = FCCKPrivateDatabaseOperation;
  result = [(FCOperation *)&v3 init];
  if (result)
  {
    result->_skipPreflight = 0;
    result->_identityLossResponse = 1;
  }

  return result;
}

- (BOOL)validateOperation
{
  v17 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = FCCKPrivateDatabaseOperation;
  v3 = [(FCOperation *)&v8 validateOperation];
  v4 = [(FCCKPrivateDatabaseOperation *)self database];

  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't execute a private database operation without a database"];
    *buf = 136315906;
    v10 = "[FCCKPrivateDatabaseOperation validateOperation]";
    v11 = 2080;
    v12 = "FCCKPrivateDatabaseOperation.m";
    v13 = 1024;
    v14 = 48;
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

- (BOOL)canRetryWithError:(id)a3 retryAfter:(id *)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (![v6 fc_hasIdentityStillSyncingError])
  {
    if ([v6 fc_hasCKIdentityLostError])
    {
      v10 = [(FCCKPrivateDatabaseOperation *)self identityLossResponse];
      if (v10 == 2)
      {
        v19 = [v6 fc_zoneIDsWithIdentityLossError];
        v23 = FCOperationLog;
        if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v23;
          v25 = [(FCOperation *)self shortOperationDescription];
          *buf = 138543618;
          v37 = v25;
          v38 = 2114;
          v39 = v19;
          _os_log_impl(&dword_1B63EF000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ encountered identity loss error, will delete zones: %{public}@", buf, 0x16u);
        }

        v26 = objc_alloc_init(FCOperationExternalSignal);
        v21 = objc_alloc_init(FCCKPrivateDeleteRecordZonesOperation);
        v27 = [(FCCKPrivateDatabaseOperation *)self database];
        [(FCCKPrivateDatabaseOperation *)v21 setDatabase:v27];

        [(FCCKPrivateDeleteRecordZonesOperation *)v21 setRecordZoneIDsToDelete:v19];
        v9 = 1;
        [(FCCKPrivateDeleteRecordZonesOperation *)v21 setSecureDatabaseOnly:1];
        [(FCCKPrivateDatabaseOperation *)v21 setSkipPreflight:1];
        [(FCCKPrivateDatabaseOperation *)v21 setIdentityLossResponse:0];
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __61__FCCKPrivateDatabaseOperation_canRetryWithError_retryAfter___block_invoke_9;
        v32[3] = &unk_1E7C37750;
        v33 = v26;
        v28 = v26;
        [(FCCKPrivateDeleteRecordZonesOperation *)v21 setDeleteRecordZonesCompletionBlock:v32];
        [(FCOperation *)self associateChildOperation:v21];
        [(FCOperation *)v21 start];
        v29 = v28;
        *a4 = v28;
      }

      else
      {
        if (v10 != 1)
        {
          if (!v10)
          {
            v11 = FCOperationLog;
            if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
            {
              v12 = v11;
              v13 = [(FCOperation *)self shortOperationDescription];
              *buf = 138543362;
              v37 = v13;
              _os_log_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ encountered identity loss error, will ignore", buf, 0xCu);
            }
          }

          goto LABEL_12;
        }

        v15 = FCOperationLog;
        if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
        {
          v16 = v15;
          v17 = [(FCOperation *)self shortOperationDescription];
          *buf = 138543362;
          v37 = v17;
          _os_log_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ encountered identity loss error, will rebuild database", buf, 0xCu);
        }

        v18 = objc_alloc_init(FCOperationExternalSignal);
        v19 = objc_alloc_init(FCCKSecureDatabaseResetOperation);
        v20 = [(FCCKPrivateDatabaseOperation *)self database];
        [(FCCKSecureDatabaseResetOperation *)v19 setDatabase:v20];

        v9 = 1;
        [(FCCKSecureDatabaseResetOperation *)v19 setDeleteZones:1];
        [(FCCKSecureDatabaseResetOperation *)v19 setRestoreSecureSentinel:1];
        [(FCCKSecureDatabaseResetOperation *)v19 setRestoreZoneContents:1];
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __61__FCCKPrivateDatabaseOperation_canRetryWithError_retryAfter___block_invoke;
        v34[3] = &unk_1E7C36C80;
        v34[4] = self;
        v35 = v18;
        v21 = v18;
        [(FCCKSecureDatabaseResetOperation *)v19 setResetCompletionHandler:v34];
        [(FCOperation *)self associateChildOperation:v19];
        [(FCOperation *)v19 start];
        v22 = v21;
        *a4 = v21;
      }

      goto LABEL_20;
    }

    if ([v6 fc_hasXPCInterruptedOrInvalidError])
    {
      v14 = [FCOperationDelayedRetrySignal alloc];
      CKRetryAfterSecondsForError();
      v8 = [(FCOperationDelayedRetrySignal *)v14 initWithDelay:?];
      goto LABEL_3;
    }

LABEL_12:
    v9 = 0;
    goto LABEL_20;
  }

  v7 = [FCOperationNotificationRetrySignal alloc];
  v8 = [(FCOperationNotificationRetrySignal *)v7 initWithNotificationName:*MEMORY[0x1E695B770] timeout:30.0];
LABEL_3:
  *a4 = v8;
  v9 = 1;
LABEL_20:

  v30 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t __61__FCCKPrivateDatabaseOperation_canRetryWithError_retryAfter___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = a2;
    v6 = [v4 database];
    [(FCCKPrivateDatabase *)v6 takeDatabaseOfflineDueToError:v5];
  }

  v7 = *(a1 + 40);

  return [v7 triggerWithRetry:a2 == 0];
}

- (void)runChildCKOperation:(id)a3 destination:(int64_t)a4
{
  v6 = a3;
  [(FCOperation *)self associateChildOperation:v6];
  v7 = [(FCCKPrivateDatabaseOperation *)self skipPreflight];
  v8 = [(FCCKPrivateDatabaseOperation *)self database];
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      [(FCCKPrivateDatabase *)v8 _addCKOperation:v6 destination:a4];
    }
  }

  else
  {
    [(FCCKPrivateDatabase *)v8 addCKOperation:v6 destination:a4];
  }
}

@end