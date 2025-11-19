@interface FCCKDatabaseZoneMigrationOperation
- (BOOL)validateOperation;
- (void)_continueGatheringRecordsWithPreviousServerChangeToken:(void *)a3 recordsAlreadyFetched:(void *)a4 completionHandler:;
- (void)_migrateAndUpdateRecords:(void *)a3 completion:;
- (void)_saveMigratedRecords:(void *)a3 completion:;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
- (void)prepareOperation;
- (void)setDatabase:(uint64_t)a1;
- (void)setMigrator:(uint64_t)a1;
- (void)setPruningAssistant:(uint64_t)a1;
@end

@implementation FCCKDatabaseZoneMigrationOperation

- (BOOL)validateOperation
{
  v19 = *MEMORY[0x1E69E9840];
  if (self && self->_database)
  {
    v3 = 1;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't migrate a zone without a database"];
      v11 = 136315906;
      v12 = "[FCCKDatabaseZoneMigrationOperation validateOperation]";
      v13 = 2080;
      v14 = "FCCKDatabaseZoneMigrationOperation.m";
      v15 = 1024;
      v16 = 41;
      v17 = 2114;
      v18 = v8;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v11, 0x26u);
    }

    v3 = 0;
    if (!self)
    {
LABEL_9:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't migrate a zone without a migrator"];
        v11 = 136315906;
        v12 = "[FCCKDatabaseZoneMigrationOperation validateOperation]";
        v13 = 2080;
        v14 = "FCCKDatabaseZoneMigrationOperation.m";
        v15 = 1024;
        v16 = 45;
        v17 = 2114;
        v18 = v9;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v11, 0x26u);
      }

      v4 = 0;
      if (!self)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }
  }

  if (!self->_migrator)
  {
    goto LABEL_9;
  }

  v4 = 1;
LABEL_12:
  if (self->_recordZoneID)
  {
    v5 = 1;
    goto LABEL_17;
  }

LABEL_14:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't migrate a zone without a record zone ID"];
    v11 = 136315906;
    v12 = "[FCCKDatabaseZoneMigrationOperation validateOperation]";
    v13 = 2080;
    v14 = "FCCKDatabaseZoneMigrationOperation.m";
    v15 = 1024;
    v16 = 49;
    v17 = 2114;
    v18 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v11, 0x26u);
  }

  v5 = 0;
LABEL_17:
  v6 = *MEMORY[0x1E69E9840];
  return v5 & v4 & v3;
}

- (void)prepareOperation
{
  v3 = [MEMORY[0x1E695DFA8] set];
  if (self)
  {
    objc_storeStrong(&self->_createdZones, v3);
  }

  v4 = [MEMORY[0x1E695DF70] array];
  if (self)
  {
    objc_storeStrong(&self->_resultZoneIDsEligibleForDeletion, v4);
  }

  v5 = [MEMORY[0x1E695DF70] array];
  v6 = v5;
  if (self)
  {
    v7 = v5;
    objc_storeStrong(&self->_resultRecordIDsEligibleForDeletion, v5);
    v6 = v7;
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)performOperation
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = FCPrivateDataEncryptionLog;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(FCOperation *)self shortOperationDescription];
    if (self)
    {
      v5 = self->_database;
      recordZoneID = self->_recordZoneID;
      v7 = v5;
    }

    else
    {
      v5 = 0;
      v7 = 0;
      recordZoneID = 0;
    }

    *buf = 138543874;
    *&buf[4] = v4;
    *&buf[12] = 2114;
    *&buf[14] = v5;
    *&buf[22] = 2114;
    v47 = recordZoneID;
    _os_log_impl(&dword_1B63EF000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ will migrate with database: %{public}@, zone ID: %{public}@", buf, 0x20u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__FCCKDatabaseZoneMigrationOperation_performOperation__block_invoke;
  aBlock[3] = &unk_1E7C36E50;
  aBlock[4] = self;
  v8 = _Block_copy(aBlock);
  if (self)
  {
    v9 = self->_migrator;
    v10 = self->_recordZoneID;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v11 = v10;
  v12 = [(CKRecordZoneID *)v11 zoneName];
  v13 = [(FCCKDatabaseMigrator *)v9 databaseMigrationShouldMigrateEntireZone:v12];

  if (v13)
  {
    v14 = v8;
    v15 = v14;
    if (self)
    {
      v38 = MEMORY[0x1E69E9820];
      v39 = 3221225472;
      v40 = __78__FCCKDatabaseZoneMigrationOperation__migrateEntireZoneWithCompletionHandler___block_invoke;
      v41 = &unk_1E7C3C498;
      v16 = v14;
      v42 = self;
      v43 = v16;
      v17 = &v38;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __83__FCCKDatabaseZoneMigrationOperation__gatherRecordsToMigrateWithCompletionHandler___block_invoke;
      v47 = &unk_1E7C40A70;
      v48 = self;
      v18 = v17;
      v49 = v18;
      [(FCCKDatabaseZoneMigrationOperation *)self _continueGatheringRecordsWithPreviousServerChangeToken:0 recordsAlreadyFetched:buf completionHandler:?];
    }
  }

  else
  {
    v15 = v8;
    if (self)
    {
      migrator = self->_migrator;
      v20 = self->_recordZoneID;
      v21 = migrator;
      v22 = [(CKRecordZoneID *)v20 zoneName];
      v23 = self->_database;
      v24 = v23;
      if (v23)
      {
        migratingFromVersion = v23->_migratingFromVersion;
      }

      else
      {
        migratingFromVersion = 0;
      }

      v26 = self->_database;
      v27 = v26;
      if (v26)
      {
        currentVersion = v26->_currentVersion;
      }

      else
      {
        currentVersion = 0;
      }

      v29 = [(FCCKDatabaseMigrator *)v21 databaseMigrationRecordNamesToMigrateInZone:v22 fromVersion:migratingFromVersion toVersion:currentVersion];

      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __85__FCCKDatabaseZoneMigrationOperation__migrateIndividualRecordsWithCompletionHandler___block_invoke;
      v45[3] = &unk_1E7C38D38;
      v45[4] = self;
      v30 = [v29 fc_arrayByTransformingWithBlock:v45];
      v38 = MEMORY[0x1E69E9820];
      v39 = 3221225472;
      v40 = __85__FCCKDatabaseZoneMigrationOperation__migrateIndividualRecordsWithCompletionHandler___block_invoke_2;
      v41 = &unk_1E7C40A48;
      v42 = self;
      v43 = v30;
      v44 = v15;
      v31 = v30;
      v32 = &v38;
      v33 = objc_alloc_init(FCCKPrivateFetchRecordsOperation);
      [(FCCKPrivateFetchRecordsOperation *)v33 setRecordIDs:v31];
      [(FCCKPrivateDatabaseOperation *)v33 setSkipPreflight:1];
      [(FCCKPrivateDatabaseOperation *)v33 setHandleIdentityLoss:0];
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __74__FCCKDatabaseZoneMigrationOperation__migrateRecordIDs_completionHandler___block_invoke;
      v47 = &unk_1E7C378E8;
      v48 = self;
      v34 = v31;
      v49 = v34;
      v35 = v32;
      v50 = v35;
      [(FCCKPrivateFetchRecordsOperation *)v33 setFetchRecordsCompletionBlock:buf];
      [(FCOperation *)self associateChildOperation:v33];
      [(FCCKPrivateDatabase *)self->_database addOperation:v33];
    }
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (void)operationWillFinishWithError:(id)a3
{
  v4 = a3;
  if (self)
  {
    migrationCompletionHandler = self->_migrationCompletionHandler;
    if (migrationCompletionHandler)
    {
      v8 = v4;
      v6 = migrationCompletionHandler;
      v7 = self->_resultZoneIDsEligibleForDeletion;
      v6[2](v6, v7, self->_resultRecordIDsEligibleForDeletion, v8);

      v4 = v8;
    }
  }
}

void __78__FCCKDatabaseZoneMigrationOperation__migrateEntireZoneWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __78__FCCKDatabaseZoneMigrationOperation__migrateEntireZoneWithCompletionHandler___block_invoke_2;
    v13 = &unk_1E7C37778;
    v15 = *(a1 + 40);
    v14 = v5;
    v15[2](v15, v14);

    v6 = v15;
  }

  else
  {
    v7 = *(a1 + 32);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __78__FCCKDatabaseZoneMigrationOperation__migrateEntireZoneWithCompletionHandler___block_invoke_3;
    v8[3] = &unk_1E7C40A20;
    v8[4] = v7;
    v9 = *(a1 + 40);
    [(FCCKDatabaseZoneMigrationOperation *)v7 _migrateAndUpdateRecords:a2 completion:v8];
    v6 = v9;
  }
}

void __78__FCCKDatabaseZoneMigrationOperation__migrateEntireZoneWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  if (!v7)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(v3 + 416);
      v5 = *(v3 + 376);
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    v6 = v4;
    [v6 addObject:v5];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_migrateAndUpdateRecords:(void *)a3 completion:
{
  v94[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v73 = a1;
  if (!a1)
  {
    goto LABEL_29;
  }

  v7 = [v5 fc_uniqueByValueBlock:&__block_literal_global_75];
  v8 = [v7 count];
  if (v8 != [v5 count])
  {
    v9 = FCPrivateDataEncryptionLog;
    if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [v73 shortOperationDescription];
      v12 = [v5 count];
      *buf = 138543618;
      v86 = v11;
      v87 = 2048;
      v88 = v12 - [v7 count];
      _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ removed %lu duplicates before migration", buf, 0x16u);
    }
  }

  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v75 = __74__FCCKDatabaseZoneMigrationOperation__migrateAndUpdateRecords_completion___block_invoke_32;
  v76 = &unk_1E7C3FEB8;
  v77 = v73;
  v78 = v7;
  v79 = v6;
  v13 = v7;
  v67 = v74;
  v72 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = v13;
  v71 = [obj countByEnumeratingWithState:&v80 objects:buf count:16];
  if (!v71)
  {
    v56 = 0;
    goto LABEL_28;
  }

  v65 = v6;
  v66 = v5;
  v70 = *v81;
  v68 = *MEMORY[0x1E696A578];
  *&v14 = 138543874;
  v64 = v14;
  do
  {
    v15 = 0;
    do
    {
      if (*v81 != v70)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v80 + 1) + 8 * v15);
      v17 = *(v73 + 384);
      v18 = *(v73 + 368);
      v84 = 0;
      v19 = v18;
      v20 = v17;
      v21 = [v20 databaseMigrationMigrateRecord:v16 database:v19 error:&v84];
      v22 = v84;

      v23 = [v21 recordID];
      v24 = [v16 recordID];
      v25 = [v23 isEqual:v24];

      if (v25 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v53 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"we currently only support migrations that produce an entirely new record"];
        *v90 = 136315906;
        *&v90[4] = "[FCCKDatabaseZoneMigrationOperation _migratedRecord:error:]";
        v91 = 2080;
        v92 = "FCCKDatabaseZoneMigrationOperation.m";
        v93 = 1024;
        LODWORD(v94[0]) = 396;
        WORD2(v94[0]) = 2114;
        *(v94 + 6) = v53;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v90, 0x26u);

        if (v21)
        {
LABEL_13:
          v26 = objc_alloc(MEMORY[0x1E695BA60]);
          v27 = [v21 recordType];
          v28 = [v21 recordID];
          v29 = [v26 initWithRecordType:v27 recordID:v28];

          v30 = [v21 creationDate];
          [v29 setCreationDate:v30];

          v31 = [v21 modificationDate];
          [v29 setModificationDate:v31];

          v32 = [v21 creatorUserRecordID];
          [v29 setCreatorUserRecordID:v32];

          v33 = [v21 lastModifiedUserRecordID];
          [v29 setLastModifiedUserRecordID:v33];

          v34 = [v21 modifiedByDevice];
          [v29 setModifiedByDevice:v34];

          v35 = [v21 valueStore];
          v36 = [v35 values];
          v37 = [v36 mutableCopy];
          v38 = [v29 valueStore];
          [v38 setValues:v37];

          v39 = MEMORY[0x1E695DFA8];
          v40 = [v21 valueStore];
          v41 = [v40 allKeys];
          v42 = [v39 setWithArray:v41];
          v43 = [v29 valueStore];
          [v43 setChangedKeysSet:v42];

          v44 = [v21 encryptedValueStore];
          v45 = [v44 values];
          v46 = [v45 mutableCopy];
          v47 = [v29 encryptedValueStore];
          [v47 setValues:v46];

          v48 = MEMORY[0x1E695DFA8];
          v49 = [v21 encryptedValueStore];
          v50 = [v49 allKeys];
          v51 = [v48 setWithArray:v50];
          v52 = [v29 encryptedValueStore];
          [v52 setChangedKeysSet:v51];

          goto LABEL_14;
        }
      }

      else if (v21)
      {
        goto LABEL_13;
      }

      v54 = FCPrivateDataEncryptionLog;
      if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_ERROR))
      {
        v57 = v54;
        v58 = [v73 shortOperationDescription];
        v59 = *(v73 + 384);
        v60 = objc_opt_class();
        *v90 = v64;
        *&v90[4] = v58;
        v91 = 2112;
        v92 = v60;
        v93 = 2112;
        v94[0] = v16;
        _os_log_error_impl(&dword_1B63EF000, v57, OS_LOG_TYPE_ERROR, "%{public}@ migrator %@ failed to migrate record %@", v90, 0x20u);

        if (v22)
        {
          goto LABEL_18;
        }

LABEL_23:
        v61 = MEMORY[0x1E696ABC0];
        v89 = v68;
        *v90 = @"Failed to migrate record but received no error";
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:&v89 count:{1, v64}];
        v22 = [v61 errorWithDomain:@"FCErrorDomain" code:16 userInfo:v21];
        v29 = 0;
LABEL_14:

        goto LABEL_19;
      }

      if (!v22)
      {
        goto LABEL_23;
      }

LABEL_18:
      v29 = 0;
LABEL_19:
      v55 = v22;

      v56 = v22;
      if (!v29)
      {
        goto LABEL_26;
      }

      [v72 addObject:v29];

      ++v15;
    }

    while (v71 != v15);
    v62 = [obj countByEnumeratingWithState:&v80 objects:buf count:16];
    v71 = v62;
  }

  while (v62);
  v56 = 0;
LABEL_26:
  v6 = v65;
  v5 = v66;
LABEL_28:

  v75(v67, v72, v56);
LABEL_29:

  v63 = *MEMORY[0x1E69E9840];
}

id __85__FCCKDatabaseZoneMigrationOperation__migrateIndividualRecordsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695BA70];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 376);
  }

  else
  {
    v7 = 0;
  }

  v8 = [v5 initWithRecordName:v4 zoneID:v7];

  return v8;
}

void __85__FCCKDatabaseZoneMigrationOperation__migrateIndividualRecordsWithCompletionHandler___block_invoke_2(void *a1, void *a2)
{
  v5 = a2;
  if (!v5)
  {
    v3 = a1[4];
    if (v3)
    {
      v4 = *(v3 + 424);
    }

    else
    {
      v4 = 0;
    }

    [v4 addObjectsFromArray:a1[5]];
  }

  (*(a1[6] + 16))();
}

void __83__FCCKDatabaseZoneMigrationOperation__gatherRecordsToMigrateWithCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = v5;
    v9 = v8;
    if (v7)
    {
      *v24 = MEMORY[0x1E69E9820];
      *&v24[8] = 3221225472;
      *&v24[16] = __52__FCCKDatabaseZoneMigrationOperation__pruneRecords___block_invoke;
      v25 = &unk_1E7C38030;
      v26 = v7;
      v10 = [v8 fc_arrayByRemovingObjectsPassingTest:v24];
      v11 = *(v7 + 392);
      if (v11)
      {
        v12 = *(v7 + 376);
        v13 = v11;
        v14 = [v12 zoneName];
        v15 = [v13 pruneRecords:v10 forZoneName:v14];

        v10 = v15;
      }
    }

    else
    {
      v10 = 0;
    }

    v16 = [v10 count];
    if (v16 != [v9 count])
    {
      v17 = FCPrivateDataEncryptionLog;
      if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 32);
        v19 = v17;
        v20 = [v18 shortOperationDescription];
        v21 = [v9 count];
        v22 = [v10 count];
        *v24 = 138543874;
        *&v24[4] = v20;
        *&v24[12] = 2048;
        *&v24[14] = v21;
        *&v24[22] = 2048;
        v25 = v22;
        _os_log_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ pruned %lu records down to %lu", v24, 0x20u);
      }
    }

    (*(*(a1 + 40) + 16))();
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_continueGatheringRecordsWithPreviousServerChangeToken:(void *)a3 recordsAlreadyFetched:(void *)a4 completionHandler:
{
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    v9 = a2;
    v10 = objc_alloc_init(FCCKPrivateFetchRecordZoneChangesOperation);
    [(FCCKPrivateFetchRecordZoneChangesOperation *)v10 setRecordZoneID:a1[47]];
    [(FCCKPrivateFetchRecordZoneChangesOperation *)v10 setPreviousServerChangeToken:v9];

    [(FCCKPrivateDatabaseOperation *)v10 setSkipPreflight:1];
    [(FCCKPrivateDatabaseOperation *)v10 setHandleIdentityLoss:0];
    [(FCCKPrivateFetchRecordZoneChangesOperation *)v10 setFetchNewestChangesFirst:1];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __133__FCCKDatabaseZoneMigrationOperation__continueGatheringRecordsWithPreviousServerChangeToken_recordsAlreadyFetched_completionHandler___block_invoke;
    v11[3] = &unk_1E7C40A98;
    v11[4] = a1;
    v13 = v8;
    v12 = v7;
    [(FCCKPrivateFetchRecordZoneChangesOperation *)v10 setFetchRecordZoneChangesCompletionBlock:v11];
    [a1 associateChildOperation:v10];
    [(FCCKPrivateDatabase *)a1[46] addOperation:v10];
  }
}

void __133__FCCKDatabaseZoneMigrationOperation__continueGatheringRecordsWithPreviousServerChangeToken_recordsAlreadyFetched_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, int a5, void *a6)
{
  v59 = *MEMORY[0x1E69E9840];
  v10 = a2;
  v11 = a4;
  v12 = a6;
  if (![v12 fc_isMissingZoneError])
  {
    if (v12)
    {
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __133__FCCKDatabaseZoneMigrationOperation__continueGatheringRecordsWithPreviousServerChangeToken_recordsAlreadyFetched_completionHandler___block_invoke_16;
      v51[3] = &unk_1E7C38FF0;
      v51[4] = *(a1 + 32);
      v52 = v12;
      v53 = *(a1 + 48);
      __133__FCCKDatabaseZoneMigrationOperation__continueGatheringRecordsWithPreviousServerChangeToken_recordsAlreadyFetched_completionHandler___block_invoke_16(v51);

      v13 = v52;
      goto LABEL_5;
    }

    v15 = FCPrivateDataEncryptionLog;
    if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v17 = v15;
      v18 = [v16 shortOperationDescription];
      v19 = [v10 count];
      v20 = @"no";
      *buf = 138544130;
      *&buf[12] = 2048;
      *&buf[4] = v18;
      if (a5)
      {
        v20 = @"yes";
      }

      *&buf[14] = v19;
      *&buf[22] = 2112;
      v57 = v11;
      LOWORD(v58) = 2112;
      *(&v58 + 2) = v20;
      _os_log_impl(&dword_1B63EF000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ fetch-changes returned %lu records, token %@, more coming %@", buf, 0x2Au);
    }

    v21 = [MEMORY[0x1E695DEC8] fc_arrayByAddingObjectsFromArray:v10 toArray:*(a1 + 40)];
    if ((a5 & 1) == 0)
    {
      v45 = MEMORY[0x1E69E9820];
      v46 = 3221225472;
      v47 = __133__FCCKDatabaseZoneMigrationOperation__continueGatheringRecordsWithPreviousServerChangeToken_recordsAlreadyFetched_completionHandler___block_invoke_24;
      v48 = &unk_1E7C37778;
      v50 = *(a1 + 48);
      v49 = v21;
      v50[2](v50, v49, 0);

      v32 = v50;
LABEL_22:

LABEL_25:
      goto LABEL_6;
    }

    v22 = *(a1 + 32);
    v41 = v10;
    v40 = v21;
    if (v22)
    {
      v23 = *(v22 + 392);
      v24 = *(v22 + 376);
      v25 = v23;
      v26 = [v24 zoneName];
      [v25 softMaxRecordAgeWhenMigratingZoneName:v26];
      v28 = v27;

      if (v28 == 0.0)
      {
        v31 = 0;
      }

      else
      {
        v29 = [MEMORY[0x1E695DF00] date];
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __97__FCCKDatabaseZoneMigrationOperation__shouldStopGatheringAfterFetchingRecords_cumulativeRecords___block_invoke;
        v57 = &unk_1E7C40AC0;
        *&v58 = v29;
        *(&v58 + 1) = v28;
        v30 = v29;
        v31 = [v41 fc_containsObjectPassingTest:buf];
      }

      v33 = *(v22 + 392);
      v34 = *(v22 + 376);
      v35 = v33;
      v36 = [v34 zoneName];
      v37 = [v35 softMaxRecordCountWhenMigratingZoneName:v36];

      if (v37)
      {
        v38 = v40;
        v39 = ([v40 count] >= v37) | v31;

        if ((v39 & 1) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_21;
      }

      v38 = v40;

      if (v31)
      {
LABEL_21:
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __133__FCCKDatabaseZoneMigrationOperation__continueGatheringRecordsWithPreviousServerChangeToken_recordsAlreadyFetched_completionHandler___block_invoke_2_25;
        v42[3] = &unk_1E7C38FF0;
        v42[4] = *(a1 + 32);
        v43 = v38;
        v44 = *(a1 + 48);
        __133__FCCKDatabaseZoneMigrationOperation__continueGatheringRecordsWithPreviousServerChangeToken_recordsAlreadyFetched_completionHandler___block_invoke_2_25(v42);

        v32 = v43;
        goto LABEL_22;
      }
    }

    else
    {
      v38 = v40;
    }

LABEL_24:
    [(FCCKDatabaseZoneMigrationOperation *)*(a1 + 32) _continueGatheringRecordsWithPreviousServerChangeToken:v11 recordsAlreadyFetched:v38 completionHandler:*(a1 + 48)];
    goto LABEL_25;
  }

  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __133__FCCKDatabaseZoneMigrationOperation__continueGatheringRecordsWithPreviousServerChangeToken_recordsAlreadyFetched_completionHandler___block_invoke_2;
  v54[3] = &unk_1E7C37BC0;
  v54[4] = *(a1 + 32);
  v55 = *(a1 + 48);
  __133__FCCKDatabaseZoneMigrationOperation__continueGatheringRecordsWithPreviousServerChangeToken_recordsAlreadyFetched_completionHandler___block_invoke_2(v54);
  v13 = v55;
LABEL_5:

LABEL_6:
  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __133__FCCKDatabaseZoneMigrationOperation__continueGatheringRecordsWithPreviousServerChangeToken_recordsAlreadyFetched_completionHandler___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = FCPrivateDataEncryptionLog;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) shortOperationDescription];
    v4 = *(a1 + 32);
    if (v4)
    {
      v4 = v4[47];
    }

    v5 = v4;
    v6 = [v5 zoneName];
    v9 = 138543618;
    v10 = v3;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ fetch-changes returned empty because zone '%@' doesn't exist", &v9, 0x16u);
  }

  result = (*(*(a1 + 40) + 16))();
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __133__FCCKDatabaseZoneMigrationOperation__continueGatheringRecordsWithPreviousServerChangeToken_recordsAlreadyFetched_completionHandler___block_invoke_16(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = FCPrivateDataEncryptionLog;
  if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_ERROR))
  {
    v6 = a1[4];
    v7 = v2;
    v8 = [v6 shortOperationDescription];
    v9 = a1[5];
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_error_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_ERROR, "%{public}@ fetch-changes failed with error %@", &v10, 0x16u);
  }

  v3 = a1[5];
  result = (*(a1[6] + 16))();
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __133__FCCKDatabaseZoneMigrationOperation__continueGatheringRecordsWithPreviousServerChangeToken_recordsAlreadyFetched_completionHandler___block_invoke_2_25(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = FCPrivateDataEncryptionLog;
  if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 shortOperationDescription];
    v6 = [*(a1 + 40) count];
    v10 = 138543618;
    v11 = v5;
    v12 = 2048;
    v13 = v6;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ fetch-changes is stopping early with %lu records because we've reached our soft limits", &v10, 0x16u);
  }

  v7 = *(a1 + 40);
  result = (*(*(a1 + 48) + 16))();
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL __97__FCCKDatabaseZoneMigrationOperation__shouldStopGatheringAfterFetchingRecords_cumulativeRecords___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 modificationDate];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5 >= *(a1 + 40);

  return v6;
}

void __74__FCCKDatabaseZoneMigrationOperation__migrateRecordIDs_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6 && ![v6 fc_isCKUnknownItemError])
  {
    v16 = FCPrivateDataEncryptionLog;
    if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      v19 = v16;
      v20 = [v18 shortOperationDescription];
      v21 = 138543618;
      v22 = v20;
      v23 = 2112;
      v24 = v7;
      _os_log_error_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_ERROR, "%{public}@ fetch failed with error %@", &v21, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = FCPrivateDataEncryptionLog;
    if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = v8;
      v11 = [v9 shortOperationDescription];
      v12 = [v5 count];
      v13 = [*(a1 + 40) count];
      v21 = 138543874;
      v22 = v11;
      v23 = 2048;
      v24 = v12;
      v25 = 2048;
      v26 = v13;
      _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ fetch returned %lu of %lu records", &v21, 0x20u);
    }

    v14 = *(a1 + 32);
    v15 = [v5 allValues];
    [(FCCKDatabaseZoneMigrationOperation *)v14 _migrateAndUpdateRecords:v15 completion:*(a1 + 48)];
  }

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t __52__FCCKDatabaseZoneMigrationOperation__pruneRecords___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 384);
    v5 = *(v3 + 368);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = v4;
  v7 = [v6 databaseMigrationShouldDropRecord:a2 database:v5];

  return v7;
}

void __74__FCCKDatabaseZoneMigrationOperation__migrateAndUpdateRecords_completion___block_invoke_32(uint64_t a1, void *a2, void *a3)
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = FCPrivateDataEncryptionLog;
  if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = v7;
    v10 = [v8 shortOperationDescription];
    v11 = [*(a1 + 40) count];
    *buf = 138543874;
    v53 = v10;
    v54 = 2048;
    v55 = v11;
    v56 = 2048;
    v57 = [v5 count];
    _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ migration of %lu records produced %lu records to save", buf, 0x20u);
  }

  if (v6)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v42 = v5;
    v12 = *(a1 + 32);
    v13 = v5;
    v40 = v13;
    if (v12)
    {
      v14 = v13;
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v16 = *(v12 + 408);
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v17 = v14;
      v18 = [v17 countByEnumeratingWithState:&v48 objects:buf count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v49;
        v21 = *MEMORY[0x1E695B800];
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v49 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v23 = [*(*(&v48 + 1) + 8 * i) recordID];
            v24 = [v23 zoneID];

            v25 = [v24 zoneName];
            if (([v16 containsObject:v25] & 1) == 0 && (objc_msgSend(v25, "isEqualToString:", v21) & 1) == 0)
            {
              [v15 addObject:v24];
              [v16 addObject:v25];
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v48 objects:buf count:16];
        }

        while (v19);
      }
    }

    else
    {
      v15 = 0;
    }

    v26 = [v15 count];
    v27 = *(a1 + 32);
    v6 = 0;
    if (v26)
    {
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __74__FCCKDatabaseZoneMigrationOperation__migrateAndUpdateRecords_completion___block_invoke_33;
      v43[3] = &unk_1E7C40A48;
      v43[4] = v27;
      v44 = v40;
      v45 = *(a1 + 48);
      v28 = v15;
      v29 = v43;
      v30 = v29;
      if (v27)
      {
        v41 = v29;
        v31 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v28, "count")}];
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v32 = v28;
        v33 = [v32 countByEnumeratingWithState:&v48 objects:buf count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v49;
          do
          {
            for (j = 0; j != v34; ++j)
            {
              if (*v49 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v37 = [objc_alloc(MEMORY[0x1E695BA80]) initWithZoneID:*(*(&v48 + 1) + 8 * j)];
              [v31 addObject:v37];
            }

            v34 = [v32 countByEnumeratingWithState:&v48 objects:buf count:16];
          }

          while (v34);
        }

        v38 = objc_alloc_init(FCCKPrivateSaveRecordZonesOperation);
        [(FCCKPrivateSaveRecordZonesOperation *)v38 setRecordZonesToSave:v31];
        [(FCCKPrivateDatabaseOperation *)v38 setSkipPreflight:1];
        [(FCCKPrivateDatabaseOperation *)v38 setIdentityLossResponse:2];
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __62__FCCKDatabaseZoneMigrationOperation__createZones_completion___block_invoke;
        v46[3] = &unk_1E7C40AE8;
        v30 = v41;
        v47 = v41;
        [(FCCKPrivateSaveRecordZonesOperation *)v38 setSaveRecordZonesCompletionBlock:v46];
        [v27 associateChildOperation:v38];
        [(FCCKPrivateDatabase *)v27[46] addOperation:v38];
      }

      v6 = 0;
    }

    else
    {
      [(FCCKDatabaseZoneMigrationOperation *)*(a1 + 32) _saveMigratedRecords:v40 completion:*(a1 + 48)];
    }

    v5 = v42;
  }

  v39 = *MEMORY[0x1E69E9840];
}

void __74__FCCKDatabaseZoneMigrationOperation__migrateAndUpdateRecords_completion___block_invoke_33(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [(FCCKDatabaseZoneMigrationOperation *)*(a1 + 32) _saveMigratedRecords:*(a1 + 48) completion:?];
  }
}

- (void)_saveMigratedRecords:(void *)a3 completion:
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if ([v5 count])
    {
      v7 = FCPrivateDataEncryptionLog;
      if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
        v9 = [a1 shortOperationDescription];
        *buf = 138543618;
        v25 = v9;
        v26 = 2048;
        v27 = [v5 count];
        _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ attempting to write %lu records", buf, 0x16u);
      }

      v10 = objc_alloc_init(FCCKPrivateBatchedSaveRecordsOperation);
      [(FCCKPrivateBatchedSaveRecordsOperation *)v10 setDatabase:a1[46]];
      [(FCCKPrivateBatchedSaveRecordsOperation *)v10 setRecordsToSave:v5];
      [(FCCKPrivateBatchedSaveRecordsOperation *)v10 setSavePolicy:0];
      [(FCCKPrivateBatchedSaveRecordsOperation *)v10 setSkipPreflight:1];
      [(FCCKPrivateBatchedSaveRecordsOperation *)v10 setIdentityLossResponse:2];
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __70__FCCKDatabaseZoneMigrationOperation__saveMigratedRecords_completion___block_invoke_35;
      v15 = &unk_1E7C3FEB8;
      v16 = a1;
      v17 = v5;
      v18 = v6;
      [(FCCKPrivateBatchedSaveRecordsOperation *)v10 setSaveRecordsCompletionBlock:&v12];
      [a1 associateChildOperation:{v10, v12, v13, v14, v15, v16}];
      [(FCOperation *)v10 start];
    }

    else
    {
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __70__FCCKDatabaseZoneMigrationOperation__saveMigratedRecords_completion___block_invoke;
      v22 = &unk_1E7C379C8;
      v23 = v6;
      (v23->super.super._iop.__nextOp)(v23, 0);
      v10 = v23;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __70__FCCKDatabaseZoneMigrationOperation__saveMigratedRecords_completion___block_invoke_35(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6 && ![v6 fc_isCKErrorWithCode:14])
  {
    v15 = FCPrivateDataEncryptionLog;
    if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 32);
      v18 = v15;
      v19 = [v17 shortOperationDescription];
      v20 = 138543618;
      v21 = v19;
      v22 = 2112;
      v23 = v7;
      _os_log_error_impl(&dword_1B63EF000, v18, OS_LOG_TYPE_ERROR, "%{public}@ save failed with error %@", &v20, 0x16u);
    }

    v14 = *(*(a1 + 48) + 16);
  }

  else
  {
    v8 = FCPrivateDataEncryptionLog;
    if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = v8;
      v11 = [v9 shortOperationDescription];
      v12 = [v5 count];
      v13 = [*(a1 + 40) count];
      v20 = 138543874;
      v21 = v11;
      v22 = 2048;
      v23 = v12;
      v24 = 2048;
      v25 = v13;
      _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ successfully wrote %lu of %lu records", &v20, 0x20u);
    }

    v14 = *(*(a1 + 48) + 16);
  }

  v14();

  v16 = *MEMORY[0x1E69E9840];
}

- (void)setDatabase:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 368), a2);
  }
}

- (void)setMigrator:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 384), a2);
  }
}

- (void)setPruningAssistant:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 392), a2);
  }
}

@end