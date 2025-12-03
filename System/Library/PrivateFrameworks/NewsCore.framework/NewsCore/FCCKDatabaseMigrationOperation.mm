@interface FCCKDatabaseMigrationOperation
- (BOOL)canRetryWithError:(id)error retryAfter:(id *)after;
- (BOOL)validateOperation;
- (void)_migrateZoneIDs:(void *)ds completion:;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
- (void)prepareOperation;
- (void)setDatabase:(uint64_t)database;
- (void)setMigrator:(uint64_t)migrator;
@end

@implementation FCCKDatabaseMigrationOperation

- (BOOL)validateOperation
{
  v17 = *MEMORY[0x1E69E9840];
  if (self && self->_database)
  {
    v3 = 1;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't migrate without a database"];
      v9 = 136315906;
      v10 = "[FCCKDatabaseMigrationOperation validateOperation]";
      v11 = 2080;
      v12 = "FCCKDatabaseMigrationOperation.m";
      v13 = 1024;
      v14 = 36;
      v15 = 2114;
      v16 = v7;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v9, 0x26u);
    }

    v3 = 0;
    if (!self)
    {
      goto LABEL_9;
    }
  }

  if (self->_migrator)
  {
    v4 = 1;
    goto LABEL_12;
  }

LABEL_9:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't migrate without a migrator"];
    v9 = 136315906;
    v10 = "[FCCKDatabaseMigrationOperation validateOperation]";
    v11 = 2080;
    v12 = "FCCKDatabaseMigrationOperation.m";
    v13 = 1024;
    v14 = 40;
    v15 = 2114;
    v16 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v9, 0x26u);
  }

  v4 = 0;
LABEL_12:
  v5 = *MEMORY[0x1E69E9840];
  return v4 & v3;
}

- (void)prepareOperation
{
  array = [MEMORY[0x1E695DF70] array];
  if (self)
  {
    objc_storeStrong(&self->_resultZoneIDsEligibleForDeletion, array);
  }

  array2 = [MEMORY[0x1E695DF70] array];
  v5 = array2;
  if (self)
  {
    v6 = array2;
    objc_storeStrong(&self->_resultRecordIDsEligibleForDeletion, array2);
    v5 = v6;
  }

  MEMORY[0x1EEE66BB8](array2, v5);
}

- (void)performOperation
{
  v12 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v3 = self->_database;
    migrator = self->_migrator;
  }

  else
  {
    v3 = 0;
    migrator = 0;
  }

  v5 = migrator;
  v6 = FCCKDatabaseZoneIDsToMigrate(v3, v5);

  v7 = FCPrivateDataEncryptionLog;
  if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "Migration: Performing Migration {zones: %{public}@}", buf, 0xCu);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__FCCKDatabaseMigrationOperation_performOperation__block_invoke;
  v9[3] = &unk_1E7C36E50;
  v9[4] = self;
  [(FCCKDatabaseMigrationOperation *)&self->super.super.super.isa _migrateZoneIDs:v6 completion:v9];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_migrateZoneIDs:(void *)ds completion:
{
  v5 = a2;
  dsCopy = ds;
  if (self)
  {
    if ([v5 count])
    {
      firstObject = [v5 firstObject];
      v8 = [v5 subarrayWithRange:{1, objc_msgSend(v5, "count") - 1}];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __61__FCCKDatabaseMigrationOperation__migrateZoneIDs_completion___block_invoke;
      v19[3] = &unk_1E7C40A48;
      v19[4] = self;
      v20 = v8;
      v21 = dsCopy;
      v9 = v8;
      v10 = v19;
      v11 = firstObject;
      v12 = objc_alloc_init(FCCKDatabaseZoneMigrationOperation);
      [(FCCKDatabaseZoneMigrationOperation *)v12 setDatabase:?];
      if (v12)
      {
        objc_setProperty_nonatomic_copy(v12, v13, v11, 376);
      }

      [(FCCKDatabaseZoneMigrationOperation *)v12 setMigrator:?];
      v14 = self[46];
      zoneName = [v11 zoneName];

      v16 = [(FCCKPrivateDatabase *)v14 pruningAssistantForZoneName:zoneName];

      [(FCCKDatabaseZoneMigrationOperation *)v12 setPruningAssistant:v16];
      newValue[0] = MEMORY[0x1E69E9820];
      newValue[1] = 3221225472;
      newValue[2] = __60__FCCKDatabaseMigrationOperation__migrateZoneID_completion___block_invoke;
      newValue[3] = &unk_1E7C3FAC0;
      newValue[4] = self;
      v18 = v10;
      v23 = v18;
      if (v12)
      {
        objc_setProperty_nonatomic_copy(v12, v17, newValue, 400);
      }

      [self associateChildOperation:v12];
      [(FCOperation *)v12 start];
    }

    else
    {
      (*(dsCopy + 2))(dsCopy, 0);
    }
  }
}

- (BOOL)canRetryWithError:(id)error retryAfter:(id *)after
{
  fc_hasCKIdentityLostError = [error fc_hasCKIdentityLostError];
  if (fc_hasCKIdentityLostError)
  {
    v7 = objc_alloc_init(FCOperationExternalSignal);
    v8 = objc_alloc_init(FCCKSecureDatabaseResetOperation);
    v9 = v8;
    if (self)
    {
      database = self->_database;
    }

    else
    {
      database = 0;
    }

    [(FCCKSecureDatabaseResetOperation *)v8 setDatabase:database];
    [(FCCKSecureDatabaseResetOperation *)v9 setDeleteZones:1];
    [(FCCKSecureDatabaseResetOperation *)v9 setRestoreSecureSentinel:1];
    [(FCCKSecureDatabaseResetOperation *)v9 setRestoreZoneContents:0];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __63__FCCKDatabaseMigrationOperation_canRetryWithError_retryAfter___block_invoke;
    v14[3] = &unk_1E7C36E50;
    v15 = v7;
    v11 = v7;
    [(FCCKSecureDatabaseResetOperation *)v9 setResetCompletionHandler:v14];
    [(FCOperation *)self associateChildOperation:v9];
    [(FCOperation *)v9 start];
    v12 = v11;
    *after = v11;
  }

  return fc_hasCKIdentityLostError;
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  started = FCCKDatabaseStartUpResultFromError(errorCopy);
  if (self)
  {
    v5 = self->_migrator;
    [(FCCKDatabaseMigrator *)v5 databaseMigrationDidFinishForDatabase:self->_database result:started];

    migrationCompletionHandler = self->_migrationCompletionHandler;
    if (!migrationCompletionHandler)
    {
      goto LABEL_5;
    }

    v7 = migrationCompletionHandler;
    v8 = self->_resultZoneIDsEligibleForDeletion;
    v7[2](v7, v8, self->_resultRecordIDsEligibleForDeletion, errorCopy);
  }

  else
  {
    [0 databaseMigrationDidFinishForDatabase:0 result:started];
    v7 = 0;
  }

LABEL_5:
}

uint64_t __61__FCCKDatabaseMigrationOperation__migrateZoneIDs_completion___block_invoke(void *a1, uint64_t a2)
{
  if (a2)
  {
    return (*(a1[6] + 16))();
  }

  else
  {
    return [(FCCKDatabaseMigrationOperation *)a1[4] _migrateZoneIDs:a1[6] completion:?];
  }
}

void __60__FCCKDatabaseMigrationOperation__migrateZoneID_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(v7 + 392);
  }

  else
  {
    v8 = 0;
  }

  v12 = a4;
  v9 = a3;
  [v8 addObjectsFromArray:a2];
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = *(v10 + 400);
  }

  else
  {
    v11 = 0;
  }

  [v11 addObjectsFromArray:v9];

  (*(*(a1 + 40) + 16))();
}

- (void)setDatabase:(uint64_t)database
{
  if (database)
  {
    objc_storeStrong((database + 368), a2);
  }
}

- (void)setMigrator:(uint64_t)migrator
{
  if (migrator)
  {
    objc_storeStrong((migrator + 376), a2);
  }
}

@end