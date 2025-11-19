@interface FCCKDatabaseEncryptionStartUpMiddleware
- (id)initWithEncryptionMigrator:(id *)a1;
- (void)_adoptSentinel:(void *)a3 secureSentinel:(void *)a4 forDatabase:(void *)a5 completion:;
- (void)_associateChildOperation:(uint64_t)a1;
- (void)_createSentinelsIfNeededForDatabase:(void *)a3 completion:;
- (void)_deleteOldDataIfDesiredWithSentinel:(void *)a3 secureSentinel:(void *)a4 database:(void *)a5 completion:;
- (void)performStartUpForDatabase:(id)a3 completion:(id)a4;
@end

@implementation FCCKDatabaseEncryptionStartUpMiddleware

- (id)initWithEncryptionMigrator:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = FCCKDatabaseEncryptionStartUpMiddleware;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
}

- (void)performStartUpForDatabase:(id)a3 completion:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6 || (WeakRetained = objc_loadWeakRetained(v6 + 2), WeakRetained, !WeakRetained))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't perform encryption startup without an encryption delegate"];
      *buf = 136315906;
      v29 = "[FCCKDatabaseEncryptionStartUpMiddleware performStartUpForDatabase:completion:]";
      v30 = 2080;
      v31 = "FCCKDatabaseEncryptionStartUpMiddleware.m";
      v32 = 1024;
      v33 = 55;
      v34 = 2114;
      v35 = v17;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__FCCKDatabaseEncryptionStartUpMiddleware_performStartUpForDatabase_completion___block_invoke;
  aBlock[3] = &unk_1E7C39710;
  v9 = v7;
  v27 = v9;
  v10 = v6;
  v26 = v10;
  v11 = _Block_copy(aBlock);
  if (v6 && (v12 = objc_loadWeakRetained(v10 + 2), v12, v12))
  {
    v13 = FCPrivateDataEncryptionLog;
    if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_DEFAULT, "will fetch desired private database version", buf, 2u);
    }

    v14 = objc_loadWeakRetained(v10 + 2);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __80__FCCKDatabaseEncryptionStartUpMiddleware_performStartUpForDatabase_completion___block_invoke_9;
    v20[3] = &unk_1E7C47B20;
    v15 = &v22;
    v22 = v11;
    v20[4] = self;
    v21 = v10;
    v16 = v11;
    [v14 fetchDesiredVersionForDatabase:v21 completion:v20];
  }

  else
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __80__FCCKDatabaseEncryptionStartUpMiddleware_performStartUpForDatabase_completion___block_invoke_3;
    v23[3] = &unk_1E7C379C8;
    v15 = &v24;
    v24 = v11;
    v18 = v11;
    __80__FCCKDatabaseEncryptionStartUpMiddleware_performStartUpForDatabase_completion___block_invoke_3(v23);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __80__FCCKDatabaseEncryptionStartUpMiddleware_performStartUpForDatabase_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v6 = *(a1 + 40);
    v5 = v3;
    v6[2](v6, v5);
  }

  else
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      *(v4 + 8) = 1;
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __80__FCCKDatabaseEncryptionStartUpMiddleware_performStartUpForDatabase_completion___block_invoke_3(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A578];
  v7[0] = @"Encryption startup middleware requires an encryption delegate";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 errorWithDomain:@"FCErrorDomain" code:16 userInfo:v3];
  (*(v1 + 16))(v1, v4);

  v5 = *MEMORY[0x1E69E9840];
}

void __80__FCCKDatabaseEncryptionStartUpMiddleware_performStartUpForDatabase_completion___block_invoke_9(uint64_t a1, uint64_t a2, void *a3)
{
  v57[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __80__FCCKDatabaseEncryptionStartUpMiddleware_performStartUpForDatabase_completion___block_invoke_2_10;
    v33[3] = &unk_1E7C37BC0;
    v34 = v5;
    v35 = *(a1 + 48);
    __80__FCCKDatabaseEncryptionStartUpMiddleware_performStartUpForDatabase_completion___block_invoke_2_10(v33);
  }

  else
  {
    v7 = FCPrivateDataEncryptionLog;
    if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = FCCKPrivateDatabaseVersionString(a2);
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v9;
      _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "did fetch desired private database version with result: %{public}@", &buf, 0xCu);
    }

    v11 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = v10;
    v14 = v12;
    if (v11)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __90__FCCKDatabaseEncryptionStartUpMiddleware__tryToStartUpDatabase_targetVersion_completion___block_invoke;
      aBlock[3] = &unk_1E7C47C88;
      aBlock[4] = v11;
      v32 = v13;
      v15 = v13;
      v42 = v15;
      v16 = v14;
      v43 = v16;
      v17 = _Block_copy(aBlock);
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __90__FCCKDatabaseEncryptionStartUpMiddleware__tryToStartUpDatabase_targetVersion_completion___block_invoke_2;
      v36[3] = &unk_1E7C47B48;
      v40 = a2;
      v38 = v17;
      v36[4] = v11;
      v18 = v15;
      v37 = v18;
      v39 = v16;
      v31 = v17;
      v19 = v36;
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __82__FCCKDatabaseEncryptionStartUpMiddleware__fetchSentinelsWithDatabase_completion___block_invoke;
      v46[3] = &unk_1E7C47B98;
      v20 = v19;
      v47 = v20;
      v21 = v18;
      v22 = _Block_copy(v46);
      v23 = objc_alloc_init(FCCKPrivateFetchRecordsOperation);
      v24 = +[CKRecordID fc_staticSentinelRecordID];
      v57[0] = v24;
      v25 = +[CKRecordID fc_staticSecureSentinelRecordID];
      v57[1] = v25;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:2];
      [(FCCKPrivateFetchRecordsOperation *)v23 setRecordIDs:v26];

      *&buf = @"version";
      *(&buf + 1) = @"encryptionKey";
      v49 = @"migratedUnencryptedData";
      v50 = @"deletedUnencryptedData";
      v51 = @"migratedSubscriptions";
      v52 = @"deletedSubscriptions";
      v53 = @"migratedToVersion";
      v54 = @"deletedToVersion";
      v55 = @"encryptionKey";
      v56 = @"version";
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&buf count:10];
      [(FCCKPrivateFetchRecordsOperation *)v23 setDesiredKeys:v27];

      [(FCCKPrivateDatabaseOperation *)v23 setSkipPreflight:1];
      [(FCCKPrivateDatabaseOperation *)v23 setHandleIdentityLoss:0];
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __82__FCCKDatabaseEncryptionStartUpMiddleware__fetchSentinelsWithDatabase_completion___block_invoke_2;
      v44[3] = &unk_1E7C379A0;
      v45 = v22;
      v28 = v22;
      [(FCCKPrivateFetchRecordsOperation *)v23 setFetchRecordsCompletionBlock:v44];
      v29 = v23;
      [(FCOperation *)v29 setQualityOfService:25];
      [(FCOperation *)v29 setRelativePriority:2];

      [(FCCKPrivateDatabase *)v21 addOperation:v29];
      v13 = v32;
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

uint64_t __80__FCCKDatabaseEncryptionStartUpMiddleware_performStartUpForDatabase_completion___block_invoke_2_10(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = FCPrivateDataEncryptionLog;
  if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543362;
    v8 = v6;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "failed to fetch desired private database version with error: %{public}@", &v7, 0xCu);
  }

  v3 = *(a1 + 32);
  result = (*(*(a1 + 40) + 16))();
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void __90__FCCKDatabaseEncryptionStartUpMiddleware__tryToStartUpDatabase_targetVersion_completion___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a1[4];
  v9 = a3;
  v10 = a2;
  v11 = v7;
  v36 = v11;
  if (!v10 || !v8)
  {

    v13 = a1[4];
LABEL_10:
    v26 = v10;
    v27 = v9;
    v28 = v36;
    v29 = v28;
    if (v13)
    {
      if (v10)
      {
        v30 = [(CKRecord *)v26 fc_sentinel_databaseVersion]== 0;
        goto LABEL_15;
      }

      if ([v28 code] == 2)
      {
        v31 = [v29 userInfo];
        v32 = [v31 objectForKeyedSubscript:*MEMORY[0x1E695B798]];

        v33 = +[CKRecordID fc_staticSentinelRecordID];
        v34 = [v32 objectForKeyedSubscript:v33];

        v30 = [v34 fc_isCKUnknownItemError];
LABEL_15:

        if (v30)
        {
          [(FCCKPrivateDatabase *)a1[5] reportRecoverableStartUpError:v29];
          v35 = *(a1[6] + 16);
LABEL_19:
          v35();
          goto LABEL_20;
        }

LABEL_18:
        v35 = *(a1[6] + 16);
        goto LABEL_19;
      }
    }

    goto LABEL_18;
  }

  v12 = [v11 fc_hasCKIdentityLostError];

  v13 = a1[4];
  if (!v12)
  {
    goto LABEL_10;
  }

  v14 = a1[6];
  v15 = a1[5];
  v16 = v10;
  v17 = v9;
  v18 = v14;
  if (v13)
  {
    v19 = [(CKRecord *)v16 fc_sentinel_databaseVersion];
    if (v15)
    {
      v15[5] = v19;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __110__FCCKDatabaseEncryptionStartUpMiddleware__handleIdentityLossWithDatabase_sentinel_secureSentinel_completion___block_invoke;
    aBlock[3] = &unk_1E7C47C88;
    v20 = v15;
    v44 = v20;
    v45 = v13;
    v46 = v18;
    v21 = _Block_copy(aBlock);
    v22 = objc_alloc_init(FCCKSecureDatabaseResetOperation);
    [(FCCKSecureDatabaseResetOperation *)v22 setDatabase:v20];
    [(FCCKSecureDatabaseResetOperation *)v22 setDeleteZones:1];
    [(FCCKSecureDatabaseResetOperation *)v22 setRestoreSecureSentinel:0];
    [(FCCKSecureDatabaseResetOperation *)v22 setRestoreZoneContents:0];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __110__FCCKDatabaseEncryptionStartUpMiddleware__handleIdentityLossWithDatabase_sentinel_secureSentinel_completion___block_invoke_3;
    v37[3] = &unk_1E7C47CD8;
    v38 = v16;
    v42 = v21;
    v39 = v17;
    v40 = v13;
    v41 = v20;
    v23 = v21;
    [(FCCKSecureDatabaseResetOperation *)v22 setResetCompletionHandler:v37];
    v24 = v22;
    [(FCOperation *)v24 setQualityOfService:25];
    [(FCOperation *)v24 setRelativePriority:2];

    v25 = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
    [v25 addOperation:v24];
  }

LABEL_20:
}

void __90__FCCKDatabaseEncryptionStartUpMiddleware__tryToStartUpDatabase_targetVersion_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v56 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v44 = MEMORY[0x1E69E9820];
    v45 = 3221225472;
    v46 = __90__FCCKDatabaseEncryptionStartUpMiddleware__tryToStartUpDatabase_targetVersion_completion___block_invoke_3;
    v47 = &unk_1E7C3A0B0;
    v51 = *(a1 + 48);
    v48 = v7;
    v49 = v8;
    v50 = v9;
    v51[2](v51, v48, v49, v50);

    v10 = v51;
  }

  else
  {
    if (v7)
    {
      v11 = FCPrivateDataEncryptionLog;
      if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        v13 = [(CKRecord *)v7 fc_sentinel_databaseVersion];
        v14 = FCCKPrivateDatabaseVersionString(v13);
        v15 = [(CKRecord *)v7 fc_sentinel_deletedToDatabaseVersion];
        v16 = FCCKPrivateDatabaseVersionString(v15);
        *buf = 138543618;
        v53 = v14;
        v54 = 2114;
        v55 = v16;
        _os_log_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_DEFAULT, "fetched sentinel with database version=%{public}@, cleaned up to version=%{public}@", buf, 0x16u);
      }
    }

    if (*(a1 + 64))
    {
      if (v7 && v8 && [(CKRecord *)v7 fc_sentinel_databaseVersion]>= *(a1 + 64))
      {
        v24 = [(CKRecord *)v7 fc_sentinel_deletedToDatabaseVersion];
        v26 = *(a1 + 32);
        v25 = *(a1 + 40);
        if (v24 >= *(a1 + 64))
        {
          [(FCCKDatabaseEncryptionStartUpMiddleware *)*(a1 + 32) _adoptSentinel:v7 secureSentinel:v8 forDatabase:v25 completion:*(a1 + 56)];
          goto LABEL_17;
        }

        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __90__FCCKDatabaseEncryptionStartUpMiddleware__tryToStartUpDatabase_targetVersion_completion___block_invoke_2_14;
        v32[3] = &unk_1E7C47C88;
        v32[4] = v26;
        v33 = v25;
        v34 = *(a1 + 56);
        [(FCCKDatabaseEncryptionStartUpMiddleware *)v26 _deleteOldDataIfDesiredWithSentinel:v7 secureSentinel:v8 database:v33 completion:v32];

        v10 = v33;
      }

      else
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __90__FCCKDatabaseEncryptionStartUpMiddleware__tryToStartUpDatabase_targetVersion_completion___block_invoke_3_15;
        aBlock[3] = &unk_1E7C47B48;
        v17 = *(a1 + 48);
        v31 = *(a1 + 64);
        v27 = *(a1 + 32);
        v18 = *(&v27 + 1);
        v19 = *(a1 + 56);
        *&v20 = v17;
        *(&v20 + 1) = v19;
        v29 = v27;
        v30 = v20;
        v21 = _Block_copy(aBlock);
        v22 = v21;
        if (v7 && v8)
        {
          (*(v21 + 2))(v21, v7, v8, 0);
        }

        else
        {
          [(FCCKDatabaseEncryptionStartUpMiddleware *)*(a1 + 32) _createSentinelsIfNeededForDatabase:v21 completion:?];
        }

        v10 = v30;
      }
    }

    else
    {
      v35 = MEMORY[0x1E69E9820];
      v36 = 3221225472;
      v37 = __90__FCCKDatabaseEncryptionStartUpMiddleware__tryToStartUpDatabase_targetVersion_completion___block_invoke_13;
      v38 = &unk_1E7C40188;
      v39 = *(a1 + 32);
      v40 = v7;
      v41 = v8;
      v42 = *(a1 + 40);
      v43 = *(a1 + 56);
      [(FCCKDatabaseEncryptionStartUpMiddleware *)v39 _adoptSentinel:v40 secureSentinel:v41 forDatabase:v42 completion:v43];

      v10 = v40;
    }
  }

LABEL_17:
  v23 = *MEMORY[0x1E69E9840];
}

- (void)_adoptSentinel:(void *)a3 secureSentinel:(void *)a4 forDatabase:(void *)a5 completion:
{
  v29 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (a1)
  {
    v12 = a5;
    v13 = [(CKRecord *)v9 fc_sentinel_databaseVersion];
    if (v11)
    {
      v11[5] = v13;
      objc_setProperty_atomic(v11, v14, v9, 64);
    }

    v15 = [(CKRecord *)v9 fc_sentinel_databaseVersion];
    v16 = FCPrivateDataEncryptionLog;
    v17 = os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v17)
      {
        v25 = 138412546;
        v26 = v9;
        v27 = 2112;
        v28 = v10;
        _os_log_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_DEFAULT, "Sentinel says migration has finished -- going online with encryption {sentinel: %@, secure sentinel: %@}", &v25, 0x16u);
      }

      v20 = [(CKRecord *)v9 fc_sentinel_encryptionKey];
      if (v11)
      {
        objc_setProperty_atomic(v11, v19, v20, 48);
      }

      v22 = [(CKRecord *)v10 fc_secureSentinel_encryptionKey];
      if (v11)
      {
        objc_setProperty_atomic(v11, v21, v22, 56);
      }
    }

    else
    {
      if (v17)
      {
        v25 = 138412546;
        v26 = v9;
        v27 = 2112;
        v28 = v10;
        _os_log_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_DEFAULT, "Sentinel says migration has not finished -- going online without encryption {sentinel: %@, secure sentinel: %@}", &v25, 0x16u);
      }

      if (v11)
      {
        objc_setProperty_atomic(v11, v18, 0, 48);
        objc_setProperty_atomic(v11, v23, 0, 56);
      }
    }

    v12[2](v12, 0);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)_deleteOldDataIfDesiredWithSentinel:(void *)a3 secureSentinel:(void *)a4 database:(void *)a5 completion:
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a1)
  {
    if (v11)
    {
      WeakRetained = objc_loadWeakRetained(v11 + 2);
    }

    else
    {
      WeakRetained = 0;
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __114__FCCKDatabaseEncryptionStartUpMiddleware__deleteOldDataIfDesiredWithSentinel_secureSentinel_database_completion___block_invoke;
    v14[3] = &unk_1E7C47C10;
    v19 = v12;
    v15 = v9;
    v16 = v10;
    v17 = a1;
    v18 = v11;
    [WeakRetained fetchCleanupToVersionForDatabase:v18 completion:v14];
  }
}

void __90__FCCKDatabaseEncryptionStartUpMiddleware__tryToStartUpDatabase_targetVersion_completion___block_invoke_3_15(uint64_t a1, void *a2, void *a3, void *a4)
{
  v72 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v56[1] = MEMORY[0x1E69E9820];
    v56[2] = 3221225472;
    v56[3] = __90__FCCKDatabaseEncryptionStartUpMiddleware__tryToStartUpDatabase_targetVersion_completion___block_invoke_4;
    v56[4] = &unk_1E7C3A0B0;
    v10 = &v60;
    v11 = *(a1 + 48);
    v60 = v11;
    v12 = &v57;
    v13 = v7;
    v57 = v13;
    v14 = v8;
    v58 = v14;
    v59 = v9;
    v11[2](v11, v13, v14, v59);
  }

  else
  {
    v16 = *(a1 + 32);
    v15 = *(a1 + 40);
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v53 = __90__FCCKDatabaseEncryptionStartUpMiddleware__tryToStartUpDatabase_targetVersion_completion___block_invoke_5;
    v54 = &unk_1E7C47C88;
    v10 = v56;
    v17 = *(a1 + 64);
    v56[0] = *(a1 + 56);
    v12 = v55;
    v18 = *(a1 + 40);
    v19 = *(a1 + 32);
    v55[0] = v18;
    v55[1] = v19;
    v20 = v7;
    v51 = v8;
    v21 = v15;
    v22 = v52;
    if (v16)
    {
      if ([(CKRecord *)v20 fc_sentinel_databaseVersion]>= v17)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __105__FCCKDatabaseEncryptionStartUpMiddleware__migrateToVersion_sentinel_secureSentinel_database_completion___block_invoke;
        v65 = &unk_1E7C3A060;
        v38 = v22;
        v39 = v22;
        v68 = v39;
        v40 = &v66;
        v41 = v20;
        v66 = v41;
        v67 = v51;
        v42 = v39;
        v22 = v38;
        v43 = v41;
        v44 = &v68;
        v9 = 0;
        v10 = v56;
        v53(v42, v43, v67, 0);
        v45 = v67;
      }

      else
      {
        v50 = v22;
        v23 = [(CKRecord *)v20 fc_sentinel_databaseVersion];
        if (v21)
        {
          v21[4] = v23;
          v21[5] = v17;
          v24 = [(CKRecord *)v20 fc_sentinel_encryptionKey];
          objc_setProperty_atomic(v21, v25, v24, 48);
        }

        else
        {
          v24 = [(CKRecord *)v20 fc_sentinel_encryptionKey];
        }

        v48 = v17;

        v27 = [(CKRecord *)v51 fc_secureSentinel_encryptionKey];
        if (v21)
        {
          objc_setProperty_atomic(v21, v26, v27, 56);
        }

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __105__FCCKDatabaseEncryptionStartUpMiddleware__migrateToVersion_sentinel_secureSentinel_database_completion___block_invoke_2;
        aBlock[3] = &unk_1E7C47B70;
        v28 = v21;
        v62 = v28;
        v47 = &v63;
        v29 = v50;
        v63 = v29;
        v49 = _Block_copy(aBlock);
        v30 = *(v16 + 8);
        v31 = FCPrivateDataEncryptionLog;
        v32 = os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_DEFAULT);
        if (v30)
        {
          if (v32)
          {
            *buf = 138412290;
            *&buf[4] = v20;
            _os_log_impl(&dword_1B63EF000, v31, OS_LOG_TYPE_DEFAULT, "Sentinel is valid and migration is needed: %@", buf, 0xCu);
          }

          v33 = objc_alloc_init(FCCKDatabaseMigrationOperation);
          [(FCCKDatabaseMigrationOperation *)v33 setDatabase:v28];
          [(FCCKDatabaseMigrationOperation *)v33 setMigrator:?];
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __105__FCCKDatabaseEncryptionStartUpMiddleware__migrateToVersion_sentinel_secureSentinel_database_completion___block_invoke_17;
          v65 = &unk_1E7C47BE8;
          v70 = v49;
          v66 = v20;
          v34 = v51;
          v71 = v48;
          v67 = v34;
          v68 = v16;
          v69 = v28;
          v10 = v56;
          if (v33)
          {
            objc_setProperty_nonatomic_copy(v33, v35, buf, 384);
          }

          v36 = v33;
          [(FCOperation *)v36 setQualityOfService:25];
          [(FCOperation *)v36 setRelativePriority:2];

          v37 = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
          [v37 addOperation:v36];
        }

        else
        {
          if (v32)
          {
            *buf = 138412546;
            *&buf[4] = v28;
            *&buf[12] = 2112;
            *&buf[14] = v20;
            _os_log_impl(&dword_1B63EF000, v31, OS_LOG_TYPE_DEFAULT, "Sentinel is valid and migration is not needed {database: %@, sentinel: %@}", buf, 0x16u);
          }

          v36 = [v20 copy];
          [(CKRecord *)v36 setFc_sentinel_databaseVersion:v48];
          [(CKRecord *)v36 setFc_sentinel_deletedToDatabaseVersion:v48];
          v53(v29, v36, v51, 0);
          v10 = v56;
        }

        v40 = v47;

        v44 = &v62;
        v12 = v55;
        v45 = v49;
        v22 = v50;
      }
    }
  }

  v46 = *MEMORY[0x1E69E9840];
}

void __90__FCCKDatabaseEncryptionStartUpMiddleware__tryToStartUpDatabase_targetVersion_completion___block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (FCCKDatabaseStartUpResultFromError(v9) == 1)
  {
    v11 = *(a1 + 48);
    v10 = v9;
    v11[2](v11, v10);
  }

  else
  {
    if (v9)
    {
      [(FCCKPrivateDatabase *)*(a1 + 32) reportEncryptionMigrationError:v9];
    }

    [(FCCKDatabaseEncryptionStartUpMiddleware *)*(a1 + 40) _adoptSentinel:v7 secureSentinel:v8 forDatabase:*(a1 + 32) completion:*(a1 + 48)];
  }
}

- (void)_createSentinelsIfNeededForDatabase:(void *)a3 completion:
{
  v24[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [MEMORY[0x1E695DEF0] fc_randomDataWithLength:32];
    v8 = [MEMORY[0x1E695DEF0] fc_randomDataWithLength:32];
    v9 = v8;
    if (v7)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      v11 = objc_alloc(MEMORY[0x1E695BA60]);
      v12 = +[CKRecordID fc_staticSentinelRecordID];
      v13 = [v11 initWithRecordType:@"Sentinel" recordID:v12];

      [(CKRecord *)v13 setFc_sentinel_encryptionKey:v7];
      [(CKRecord *)v13 setFc_sentinel_version:?];
      v14 = [(CKRecord *)MEMORY[0x1E695BA60] secureSentinelRecordWithEncryptionKey:v9];
      v15 = objc_alloc_init(FCCKPrivateSaveRecordsOperation);
      v24[0] = v13;
      v24[1] = v14;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
      [(FCCKPrivateSaveRecordsOperation *)v15 setRecordsToSave:v16];

      [(FCCKPrivateSaveRecordsOperation *)v15 setSavePolicy:0];
      [(FCCKPrivateDatabaseOperation *)v15 setSkipPreflight:1];
      [(FCCKPrivateDatabaseOperation *)v15 setHandleIdentityLoss:0];
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __90__FCCKDatabaseEncryptionStartUpMiddleware__createSentinelsIfNeededForDatabase_completion___block_invoke;
      v22 = &unk_1E7C40AE8;
      v23 = v6;
      [(FCCKPrivateSaveRecordsOperation *)v15 setSaveRecordsCompletionBlock:&v19];
      v17 = v15;
      [(FCOperation *)v17 setQualityOfService:25, v19, v20, v21, v22];
      [(FCOperation *)v17 setRelativePriority:2];

      [(FCCKPrivateDatabase *)v5 addOperation:v17];
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __105__FCCKDatabaseEncryptionStartUpMiddleware__migrateToVersion_sentinel_secureSentinel_database_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  v15 = a2;
  if (v7)
  {
    *(v7 + 32) = 0;
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    *(v11 + 40) = 0;
    v12 = *(a1 + 32);
    if (v12)
    {
      objc_setProperty_atomic(v12, v10, 0, 48);
      v14 = *(a1 + 32);
      if (v14)
      {
        objc_setProperty_atomic(v14, v13, 0, 56);
      }
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __105__FCCKDatabaseEncryptionStartUpMiddleware__migrateToVersion_sentinel_secureSentinel_database_completion___block_invoke_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v5 = *(a1 + 64);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(*(a1 + 64) + 16);
    v9 = *MEMORY[0x1E69E9840];

    v8();
  }

  else
  {
    v10 = [*(a1 + 32) copy];
    [(CKRecord *)v10 setFc_sentinel_databaseVersion:?];
    v11 = objc_alloc_init(FCCKPrivateSaveRecordsOperation);
    v22[0] = v10;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    [(FCCKPrivateSaveRecordsOperation *)v11 setRecordsToSave:v12];

    [(FCCKPrivateSaveRecordsOperation *)v11 setSavePolicy:1];
    [(FCCKPrivateDatabaseOperation *)v11 setSkipPreflight:1];
    [(FCCKPrivateDatabaseOperation *)v11 setHandleIdentityLoss:0];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __105__FCCKDatabaseEncryptionStartUpMiddleware__migrateToVersion_sentinel_secureSentinel_database_completion___block_invoke_2_20;
    v16[3] = &unk_1E7C47BC0;
    v13 = *(a1 + 40);
    v16[4] = *(a1 + 48);
    v17 = v10;
    v18 = v13;
    v19 = *(a1 + 56);
    v21 = *(a1 + 64);
    v20 = *(a1 + 32);
    v14 = v10;
    [(FCCKPrivateSaveRecordsOperation *)v11 setSaveRecordsCompletionBlock:v16];
    [(FCCKDatabaseEncryptionStartUpMiddleware *)*(a1 + 48) _associateChildOperation:v11];
    [(FCCKPrivateDatabase *)*(a1 + 56) addOperation:v11];

    v15 = *MEMORY[0x1E69E9840];
  }
}

void __105__FCCKDatabaseEncryptionStartUpMiddleware__migrateToVersion_sentinel_secureSentinel_database_completion___block_invoke_2_20(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if ([a2 count] == 1)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __105__FCCKDatabaseEncryptionStartUpMiddleware__migrateToVersion_sentinel_secureSentinel_database_completion___block_invoke_3;
    v12[3] = &unk_1E7C47B98;
    v13 = *(a1 + 72);
    [(FCCKDatabaseEncryptionStartUpMiddleware *)v6 _deleteOldDataIfDesiredWithSentinel:v7 secureSentinel:v8 database:v9 completion:v12];
  }

  else
  {
    v10 = *(a1 + 64);
    v11 = *(a1 + 48);
    (*(*(a1 + 72) + 16))();
  }
}

- (void)_associateChildOperation:(uint64_t)a1
{
  if (a1)
  {
    v2 = a2;
    [v2 setQualityOfService:25];
    [v2 setRelativePriority:2];
  }
}

void __114__FCCKDatabaseEncryptionStartUpMiddleware__deleteOldDataIfDesiredWithSentinel_secureSentinel_database_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v74 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v49 = *(a1 + 64);
    v46 = *(a1 + 32);
    v47 = *(a1 + 40);
    v48 = v5;
    v49[2](v49, v46, v47, v48);
  }

  else
  {
    v6 = [(CKRecord *)*(a1 + 32) fc_sentinel_databaseVersion];
    if (a2 >= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = a2;
    }

    if ([(CKRecord *)*(a1 + 32) fc_sentinel_deletedToDatabaseVersion]>= v7)
    {
      v34 = FCPrivateDataEncryptionLog;
      if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_DEFAULT))
      {
        v35 = *(a1 + 32);
        v36 = v34;
        v37 = [(CKRecord *)v35 fc_sentinel_deletedToDatabaseVersion];
        v38 = FCCKPrivateDatabaseVersionString(v37);
        LODWORD(block) = 138543362;
        *(&block + 4) = v38;
        _os_log_impl(&dword_1B63EF000, v36, OS_LOG_TYPE_DEFAULT, "Data cleanup is unnecessary because we've cleaned up to version=%{public}@", &block, 0xCu);
      }

      v39 = *(a1 + 32);
      v40 = *(a1 + 40);
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      v8 = *(a1 + 40);
      v10 = *(a1 + 48);
      v9 = *(a1 + 56);
      v11 = *(a1 + 64);
      v12 = *(a1 + 32);
      v45 = v8;
      v13 = v9;
      v43 = v11;
      if (v10)
      {
        v14 = [(CKRecord *)v12 fc_sentinel_deletedToDatabaseVersion];
        v15 = [(CKRecord *)v12 fc_sentinel_deletedToDatabaseVersion];
        if (v13)
        {
          v13[4] = v15;
          v13[5] = [(CKRecord *)v12 fc_sentinel_databaseVersion];
          v16 = [(CKRecord *)v12 fc_sentinel_encryptionKey];
          objc_setProperty_atomic(v13, v17, v16, 48);
        }

        else
        {
          [(CKRecord *)v12 fc_sentinel_databaseVersion];
          v16 = [(CKRecord *)v12 fc_sentinel_encryptionKey];
        }

        v19 = [(CKRecord *)v45 fc_secureSentinel_encryptionKey];
        if (v13)
        {
          objc_setProperty_atomic(v13, v18, v19, 56);
        }

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __113__FCCKDatabaseEncryptionStartUpMiddleware__deleteOldDataUpToVersion_sentinel_secureSentinel_database_completion___block_invoke;
        aBlock[3] = &unk_1E7C47B70;
        v20 = v13;
        v61 = v20;
        v62 = v43;
        v42 = _Block_copy(aBlock);
        v58[0] = 0;
        v58[1] = v58;
        v58[2] = 0x3032000000;
        v58[3] = __Block_byref_object_copy__98;
        v58[4] = __Block_byref_object_dispose__98;
        v59 = 0;
        v56[0] = 0;
        v56[1] = v56;
        v56[2] = 0x3032000000;
        v56[3] = __Block_byref_object_copy__98;
        v56[4] = __Block_byref_object_dispose__98;
        v57 = 0;
        v21 = dispatch_group_create();
        v22 = *(v10 + 8);
        v44 = FCCKDatabaseZoneIDsToDeleteAfterMigration(v14, v7, v22);

        if ([v44 count])
        {
          v23 = objc_alloc_init(FCCKPrivateDeleteRecordZonesOperation);
          [(FCCKPrivateDatabaseOperation *)v23 setDatabase:v20];
          [(FCCKPrivateDeleteRecordZonesOperation *)v23 setRecordZoneIDsToDelete:v44];
          [(FCCKPrivateDatabaseOperation *)v23 setSkipPreflight:1];
          [(FCCKPrivateDatabaseOperation *)v23 setHandleIdentityLoss:0];
          dispatch_group_enter(v21);
          v53[0] = MEMORY[0x1E69E9820];
          v53[1] = 3221225472;
          v53[2] = __113__FCCKDatabaseEncryptionStartUpMiddleware__deleteOldDataUpToVersion_sentinel_secureSentinel_database_completion___block_invoke_25;
          v53[3] = &unk_1E7C47C38;
          v55 = v58;
          v54 = v21;
          [(FCCKPrivateDeleteRecordZonesOperation *)v23 setDeleteRecordZonesCompletionBlock:v53];
          v24 = v23;
          [(FCOperation *)v24 setQualityOfService:25];
          [(FCOperation *)v24 setRelativePriority:2];

          v25 = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
          [v25 addOperation:v24];
        }

        v26 = *(v10 + 8);
        v27 = FCCKDatabaseRecordIDsToDeleteAfterMigration(v14, v7, v26);

        if ([v27 count])
        {
          v28 = objc_alloc_init(FCCKPrivateBatchedDeleteRecordsOperation);
          [(FCCKPrivateBatchedDeleteRecordsOperation *)v28 setDatabase:v20];
          [(FCCKPrivateBatchedDeleteRecordsOperation *)v28 setRecordIDsToDelete:v27];
          [(FCCKPrivateBatchedDeleteRecordsOperation *)v28 setSkipPreflight:1];
          [(FCCKPrivateBatchedDeleteRecordsOperation *)v28 setHandleIdentityLoss:0];
          dispatch_group_enter(v21);
          v50[0] = MEMORY[0x1E69E9820];
          v50[1] = 3221225472;
          v50[2] = __113__FCCKDatabaseEncryptionStartUpMiddleware__deleteOldDataUpToVersion_sentinel_secureSentinel_database_completion___block_invoke_2;
          v50[3] = &unk_1E7C47C38;
          v52 = v56;
          v51 = v21;
          [(FCCKPrivateBatchedDeleteRecordsOperation *)v28 setDeleteRecordsCompletionBlock:v50];
          v29 = v28;
          [(FCOperation *)v29 setQualityOfService:25];
          [(FCOperation *)v29 setRelativePriority:2];

          v30 = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
          [v30 addOperation:v29];
        }

        v31 = dispatch_get_global_queue(25, 0);
        *&block = MEMORY[0x1E69E9820];
        *(&block + 1) = 3221225472;
        v64 = __113__FCCKDatabaseEncryptionStartUpMiddleware__deleteOldDataUpToVersion_sentinel_secureSentinel_database_completion___block_invoke_3;
        v65 = &unk_1E7C47C60;
        v71 = v58;
        v72 = v56;
        v32 = v12;
        v73 = v7;
        v66 = v32;
        v70 = v42;
        v67 = v45;
        v68 = v10;
        v69 = v20;
        v33 = v42;
        dispatch_group_notify(v21, v31, &block);

        _Block_object_dispose(v56, 8);
        _Block_object_dispose(v58, 8);
      }
    }
  }

  v41 = *MEMORY[0x1E69E9840];
}

void __113__FCCKDatabaseEncryptionStartUpMiddleware__deleteOldDataUpToVersion_sentinel_secureSentinel_database_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  v15 = a2;
  if (v7)
  {
    *(v7 + 32) = 0;
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    *(v11 + 40) = 0;
    v12 = *(a1 + 32);
    if (v12)
    {
      objc_setProperty_atomic(v12, v10, 0, 48);
      v14 = *(a1 + 32);
      if (v14)
      {
        objc_setProperty_atomic(v14, v13, 0, 56);
      }
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __113__FCCKDatabaseEncryptionStartUpMiddleware__deleteOldDataUpToVersion_sentinel_secureSentinel_database_completion___block_invoke_25(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  dispatch_group_leave(*(a1 + 32));
}

void __113__FCCKDatabaseEncryptionStartUpMiddleware__deleteOldDataUpToVersion_sentinel_secureSentinel_database_completion___block_invoke_2(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  dispatch_group_leave(*(a1 + 32));
}

void __113__FCCKDatabaseEncryptionStartUpMiddleware__deleteOldDataUpToVersion_sentinel_secureSentinel_database_completion___block_invoke_3(uint64_t a1)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v2 = *(*(*(a1 + 72) + 8) + 40);
  if (v2 && ![v2 fc_isCKUnknownItemError] || (v3 = *(*(*(a1 + 80) + 8) + 40)) != 0 && !objc_msgSend(v3, "fc_isCKUnknownItemError"))
  {
    v8 = *(*(*(a1 + 72) + 8) + 40);
    if (!v8)
    {
      v8 = *(*(*(a1 + 80) + 8) + 40);
    }

    v9 = *(a1 + 56);
    v13 = v8;
    [(FCCKPrivateDatabase *)v9 reportPostMigrationCleanupError:v13];
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    (*(*(a1 + 64) + 16))();
    v12 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v4 = [*(a1 + 32) copy];
    [(CKRecord *)v4 setFc_sentinel_deletedToDatabaseVersion:?];
    v5 = objc_alloc_init(FCCKPrivateSaveRecordsOperation);
    v18[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    [(FCCKPrivateSaveRecordsOperation *)v5 setRecordsToSave:v6];

    [(FCCKPrivateSaveRecordsOperation *)v5 setSavePolicy:1];
    [(FCCKPrivateDatabaseOperation *)v5 setSkipPreflight:1];
    [(FCCKPrivateDatabaseOperation *)v5 setHandleIdentityLoss:0];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __113__FCCKDatabaseEncryptionStartUpMiddleware__deleteOldDataUpToVersion_sentinel_secureSentinel_database_completion___block_invoke_4;
    v14[3] = &unk_1E7C39B60;
    v17 = *(a1 + 64);
    v15 = *(a1 + 40);
    v16 = *(a1 + 32);
    [(FCCKPrivateSaveRecordsOperation *)v5 setSaveRecordsCompletionBlock:v14];
    [(FCCKDatabaseEncryptionStartUpMiddleware *)*(a1 + 48) _associateChildOperation:v5];
    [(FCCKPrivateDatabase *)*(a1 + 56) addOperation:v5];

    v7 = *MEMORY[0x1E69E9840];
  }
}

void __113__FCCKDatabaseEncryptionStartUpMiddleware__deleteOldDataUpToVersion_sentinel_secureSentinel_database_completion___block_invoke_4(void *a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [v9 count];
  v7 = a1[6];
  if (v6 == 1)
  {
    v8 = [v9 firstObject];
    (*(v7 + 16))(v7, v8, a1[4], 0);
  }

  else
  {
    (*(v7 + 16))(a1[6], a1[5], a1[4], v5);
  }
}

void __82__FCCKDatabaseEncryptionStartUpMiddleware__fetchSentinelsWithDatabase_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = a2;
  v6 = [v5 allValues];
  v7 = [v6 fc_firstObjectPassingTest:&__block_literal_global_184];

  v8 = [v5 allValues];

  v9 = [v8 fc_firstObjectPassingTest:&__block_literal_global_31_1];

  if (v7 && v9)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    [v10 fc_isCKUnknownItemError];
    (*(*(a1 + 32) + 16))();
  }
}

uint64_t __82__FCCKDatabaseEncryptionStartUpMiddleware__fetchSentinelsWithDatabase_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 recordType];
  v3 = [v2 isEqualToString:@"Sentinel"];

  return v3;
}

uint64_t __82__FCCKDatabaseEncryptionStartUpMiddleware__fetchSentinelsWithDatabase_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 recordType];
  v3 = [v2 isEqualToString:@"SentinelSecure"];

  return v3;
}

void __90__FCCKDatabaseEncryptionStartUpMiddleware__createSentinelsIfNeededForDatabase_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a3;
  v5 = a2;
  v6 = [v5 fc_firstObjectPassingTest:&__block_literal_global_36_1];
  v7 = [v5 fc_firstObjectPassingTest:&__block_literal_global_38_4];

  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *MEMORY[0x1E695B7C0];
    v9 = +[CKRecordID fc_staticSentinelRecordID];
    v6 = [v12 fc_underlyingCKErrorUserInfoValueForKey:v8 forItemID:v9];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v10 = *MEMORY[0x1E695B7C0];
  v11 = +[CKRecordID fc_staticSecureSentinelRecordID];
  v7 = [v12 fc_underlyingCKErrorUserInfoValueForKey:v10 forItemID:v11];

LABEL_3:
  (*(*(a1 + 32) + 16))();
}

uint64_t __90__FCCKDatabaseEncryptionStartUpMiddleware__createSentinelsIfNeededForDatabase_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 recordType];
  v3 = [v2 isEqualToString:@"Sentinel"];

  return v3;
}

uint64_t __90__FCCKDatabaseEncryptionStartUpMiddleware__createSentinelsIfNeededForDatabase_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 recordType];
  v3 = [v2 isEqualToString:@"SentinelSecure"];

  return v3;
}

void __110__FCCKDatabaseEncryptionStartUpMiddleware__handleIdentityLossWithDatabase_sentinel_secureSentinel_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v10 = a4;
  v11 = *(a1 + 32);
  if (v11)
  {
    *(v11 + 40) = 0;
    v12 = *(a1 + 32);
    if (v12)
    {
      objc_setProperty_atomic(v12, v9, 0, 48);
      v14 = *(a1 + 32);
      if (v14)
      {
        objc_setProperty_atomic(v14, v13, 0, 56);
      }
    }
  }

  if (v8 || ![(CKRecord *)v7 fc_sentinel_databaseVersion])
  {
    [(FCCKDatabaseEncryptionStartUpMiddleware *)*(a1 + 40) _adoptSentinel:v7 secureSentinel:v8 forDatabase:*(a1 + 32) completion:*(a1 + 48)];
  }

  else
  {
    v16 = *(a1 + 48);
    v15 = v10;
    v16[2](v16, v15);
  }
}

void __110__FCCKDatabaseEncryptionStartUpMiddleware__handleIdentityLossWithDatabase_sentinel_secureSentinel_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([(CKRecord *)*(a1 + 32) fc_sentinel_databaseVersion])
  {
    v5 = *(a1 + 48);
    v4 = *(a1 + 56);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __110__FCCKDatabaseEncryptionStartUpMiddleware__handleIdentityLossWithDatabase_sentinel_secureSentinel_completion___block_invoke_4;
    v9[3] = &unk_1E7C47C88;
    v10 = v4;
    v6 = *(a1 + 64);
    v11 = *(a1 + 48);
    v12 = v6;
    [(FCCKDatabaseEncryptionStartUpMiddleware *)v5 _createSentinelsIfNeededForDatabase:v10 completion:v9];
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    (*(*(a1 + 64) + 16))();
  }
}

void __110__FCCKDatabaseEncryptionStartUpMiddleware__handleIdentityLossWithDatabase_sentinel_secureSentinel_completion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    v9 = [(CKRecord *)v5 fc_sentinel_encryptionKey];
    v10 = *(a1 + 32);
    if (v10)
    {
      objc_setProperty_atomic(v10, v8, v9, 48);
    }

    v12 = [(CKRecord *)v7 fc_secureSentinel_encryptionKey];
    v13 = *(a1 + 32);
    if (v13)
    {
      objc_setProperty_atomic(v13, v11, v12, 56);
    }

    v14 = objc_alloc_init(FCCKSecureDatabaseResetOperation);
    [(FCCKSecureDatabaseResetOperation *)v14 setDatabase:*(a1 + 32)];
    [(FCCKSecureDatabaseResetOperation *)v14 setDeleteZones:0];
    [(FCCKSecureDatabaseResetOperation *)v14 setRestoreSecureSentinel:0];
    [(FCCKSecureDatabaseResetOperation *)v14 setRestoreZoneContents:1];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __110__FCCKDatabaseEncryptionStartUpMiddleware__handleIdentityLossWithDatabase_sentinel_secureSentinel_completion___block_invoke_5;
    v16[3] = &unk_1E7C47CB0;
    v19 = *(a1 + 48);
    v17 = v5;
    v18 = v7;
    [(FCCKSecureDatabaseResetOperation *)v14 setResetCompletionHandler:v16];
    [(FCCKDatabaseEncryptionStartUpMiddleware *)*(a1 + 40) _associateChildOperation:v14];
    v15 = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
    [v15 addOperation:v14];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

@end