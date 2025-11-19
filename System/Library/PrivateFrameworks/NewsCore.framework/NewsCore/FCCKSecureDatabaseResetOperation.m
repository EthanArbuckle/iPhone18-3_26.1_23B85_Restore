@interface FCCKSecureDatabaseResetOperation
- (BOOL)validateOperation;
- (FCCKSecureDatabaseResetOperation)init;
- (id)_deleteZones;
- (id)_rawRecordsToSave;
- (id)_rawZoneIDsToDelete;
- (id)_rawZonesToRecreate;
- (id)_recreateZones;
- (id)_restoreSecureSentinel;
- (id)_restoreZoneContents;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
@end

@implementation FCCKSecureDatabaseResetOperation

- (FCCKSecureDatabaseResetOperation)init
{
  v3.receiver = self;
  v3.super_class = FCCKSecureDatabaseResetOperation;
  result = [(FCOperation *)&v3 init];
  if (result)
  {
    result->_deleteZones = 1;
    result->_restoreSecureSentinel = 1;
    result->_restoreZoneContents = 1;
  }

  return result;
}

- (BOOL)validateOperation
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(FCCKSecureDatabaseResetOperation *)self database];

  if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"zone reset operation requires a private database"];
    v11 = 136315906;
    v12 = "[FCCKSecureDatabaseResetOperation validateOperation]";
    v13 = 2080;
    v14 = "FCCKSecureDatabaseResetOperation.m";
    v15 = 1024;
    v16 = 43;
    v17 = 2114;
    v18 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v11, 0x26u);
  }

  v4 = [(FCCKSecureDatabaseResetOperation *)self database];
  if (v4 && (v5 = v4[5], v4, v5 > 0))
  {
    v6 = 1;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"zone reset is only valid when encryption is enabled"];
      v11 = 136315906;
      v12 = "[FCCKSecureDatabaseResetOperation validateOperation]";
      v13 = 2080;
      v14 = "FCCKSecureDatabaseResetOperation.m";
      v15 = 1024;
      v16 = 47;
      v17 = 2114;
      v18 = v10;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v11, 0x26u);
    }

    v6 = 0;
  }

  if (v3)
  {
    result = v6;
  }

  else
  {
    result = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)performOperation
{
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __52__FCCKSecureDatabaseResetOperation_performOperation__block_invoke;
  v19[3] = &unk_1E7C396C0;
  v19[4] = self;
  v13 = [MEMORY[0x1E69B68F8] firstly:v19];
  v3 = zalgo();
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __52__FCCKSecureDatabaseResetOperation_performOperation__block_invoke_2;
  v18[3] = &unk_1E7C38BD8;
  v18[4] = self;
  v4 = [v13 thenOn:v3 then:v18];
  v5 = zalgo();
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __52__FCCKSecureDatabaseResetOperation_performOperation__block_invoke_3;
  v17[3] = &unk_1E7C38BD8;
  v17[4] = self;
  v6 = [v4 thenOn:v5 then:v17];
  v7 = zalgo();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __52__FCCKSecureDatabaseResetOperation_performOperation__block_invoke_4;
  v16[3] = &unk_1E7C38BD8;
  v16[4] = self;
  v8 = [v6 thenOn:v7 then:v16];
  v9 = zalgo();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __52__FCCKSecureDatabaseResetOperation_performOperation__block_invoke_5;
  v15[3] = &unk_1E7C38BD8;
  v15[4] = self;
  v10 = [v8 thenOn:v9 then:v15];
  v11 = zalgo();
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __52__FCCKSecureDatabaseResetOperation_performOperation__block_invoke_6;
  v14[3] = &unk_1E7C36E50;
  v14[4] = self;
  v12 = [v10 errorOn:v11 error:v14];
}

- (void)operationWillFinishWithError:(id)a3
{
  v6 = a3;
  v4 = [(FCCKSecureDatabaseResetOperation *)self resetCompletionHandler];

  if (v4)
  {
    v5 = [(FCCKSecureDatabaseResetOperation *)self resetCompletionHandler];
    (v5)[2](v5, v6);
  }
}

- (id)_deleteZones
{
  if ([(FCCKSecureDatabaseResetOperation *)self deleteZones])
  {
    v3 = objc_alloc(MEMORY[0x1E69B68F8]);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __48__FCCKSecureDatabaseResetOperation__deleteZones__block_invoke_2;
    v6[3] = &unk_1E7C39ED0;
    v6[4] = self;
    v4 = [v3 initWithResolver:v6];
  }

  else
  {
    v4 = [MEMORY[0x1E69B68F8] asVoid];
  }

  return v4;
}

void __48__FCCKSecureDatabaseResetOperation__deleteZones__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(FCCKPrivateDeleteRecordZonesOperation);
  v8 = [*(a1 + 32) database];
  [(FCCKPrivateDatabaseOperation *)v7 setDatabase:v8];

  v9 = [*(a1 + 32) _rawZoneIDsToDelete];
  [(FCCKPrivateDeleteRecordZonesOperation *)v7 setRecordZoneIDsToDelete:v9];

  [(FCCKPrivateDeleteRecordZonesOperation *)v7 setSecureDatabaseOnly:1];
  [(FCCKPrivateDatabaseOperation *)v7 setSkipPreflight:1];
  [(FCCKPrivateDatabaseOperation *)v7 setHandleIdentityLoss:0];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __48__FCCKSecureDatabaseResetOperation__deleteZones__block_invoke_3;
  v16 = &unk_1E7C42428;
  v17 = v5;
  v18 = v6;
  v10 = v6;
  v11 = v5;
  [(FCCKPrivateDeleteRecordZonesOperation *)v7 setDeleteRecordZonesCompletionBlock:&v13];
  [*(a1 + 32) associateChildOperation:{v7, v13, v14, v15, v16}];
  v12 = [*(a1 + 32) database];
  [(FCCKPrivateDatabase *)v12 addOperation:v7];
}

void __48__FCCKSecureDatabaseResetOperation__deleteZones__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = v5;
  if (!v5 || ([v5 fc_isCKUnknownItemError] & 1) != 0 || objc_msgSend(v6, "fc_isMissingZoneError"))
  {
    v7 = *(*(a1 + 32) + 16);
  }

  else
  {
    v7 = *(*(a1 + 40) + 16);
  }

  v7();
}

- (id)_recreateZones
{
  if ([(FCCKSecureDatabaseResetOperation *)self deleteZones])
  {
    v3 = objc_alloc(MEMORY[0x1E69B68F8]);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __50__FCCKSecureDatabaseResetOperation__recreateZones__block_invoke_2;
    v6[3] = &unk_1E7C39ED0;
    v6[4] = self;
    v4 = [v3 initWithResolver:v6];
  }

  else
  {
    v4 = [MEMORY[0x1E69B68F8] asVoid];
  }

  return v4;
}

void __50__FCCKSecureDatabaseResetOperation__recreateZones__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(FCCKPrivateSaveRecordZonesOperation);
  v8 = [*(a1 + 32) database];
  [(FCCKPrivateDatabaseOperation *)v7 setDatabase:v8];

  v9 = [*(a1 + 32) _rawZonesToRecreate];
  [(FCCKPrivateSaveRecordZonesOperation *)v7 setRecordZonesToSave:v9];

  [(FCCKPrivateDatabaseOperation *)v7 setSkipPreflight:1];
  [(FCCKPrivateDatabaseOperation *)v7 setHandleIdentityLoss:0];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __50__FCCKSecureDatabaseResetOperation__recreateZones__block_invoke_3;
  v16 = &unk_1E7C42428;
  v17 = v5;
  v18 = v6;
  v10 = v6;
  v11 = v5;
  [(FCCKPrivateSaveRecordZonesOperation *)v7 setSaveRecordZonesCompletionBlock:&v13];
  [*(a1 + 32) associateChildOperation:{v7, v13, v14, v15, v16}];
  v12 = [*(a1 + 32) database];
  [(FCCKPrivateDatabase *)v12 addOperation:v7];
}

uint64_t __50__FCCKSecureDatabaseResetOperation__recreateZones__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return (*(*(a1 + 32) + 16))();
  }
}

- (id)_restoreSecureSentinel
{
  if ([(FCCKSecureDatabaseResetOperation *)self restoreSecureSentinel])
  {
    v3 = objc_alloc(MEMORY[0x1E69B68F8]);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __58__FCCKSecureDatabaseResetOperation__restoreSecureSentinel__block_invoke_2;
    v6[3] = &unk_1E7C39ED0;
    v6[4] = self;
    v4 = [v3 initWithResolver:v6];
  }

  else
  {
    v4 = [MEMORY[0x1E69B68F8] asVoid];
  }

  return v4;
}

void __58__FCCKSecureDatabaseResetOperation__restoreSecureSentinel__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x1E695BA60];
  Property = [*(a1 + 32) database];
  v10 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v9, 56, 1);
  }

  v11 = Property;
  v12 = [(CKRecord *)v7 secureSentinelRecordWithEncryptionKey:v11];

  v13 = objc_alloc_init(FCCKPrivateSaveRecordsOperation);
  v14 = [*(a1 + 32) database];
  [(FCCKPrivateDatabaseOperation *)v13 setDatabase:v14];

  v26[0] = v12;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  [(FCCKPrivateSaveRecordsOperation *)v13 setRecordsToSave:v15];

  [(FCCKPrivateSaveRecordsOperation *)v13 setSavePolicy:0];
  [(FCCKPrivateDatabaseOperation *)v13 setSkipPreflight:1];
  [(FCCKPrivateDatabaseOperation *)v13 setHandleIdentityLoss:0];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __58__FCCKSecureDatabaseResetOperation__restoreSecureSentinel__block_invoke_3;
  v23 = &unk_1E7C42428;
  v24 = v5;
  v25 = v6;
  v16 = v6;
  v17 = v5;
  [(FCCKPrivateSaveRecordsOperation *)v13 setSaveRecordsCompletionBlock:&v20];
  [*(a1 + 32) associateChildOperation:{v13, v20, v21, v22, v23}];
  v18 = [*(a1 + 32) database];
  [(FCCKPrivateDatabase *)v18 addOperation:v13];

  v19 = *MEMORY[0x1E69E9840];
}

uint64_t __58__FCCKSecureDatabaseResetOperation__restoreSecureSentinel__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return (*(*(a1 + 32) + 16))();
  }
}

- (id)_restoreZoneContents
{
  if ([(FCCKSecureDatabaseResetOperation *)self restoreZoneContents])
  {
    v3 = objc_alloc(MEMORY[0x1E69B68F8]);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __56__FCCKSecureDatabaseResetOperation__restoreZoneContents__block_invoke_2;
    v6[3] = &unk_1E7C39ED0;
    v6[4] = self;
    v4 = [v3 initWithResolver:v6];
  }

  else
  {
    v4 = [MEMORY[0x1E69B68F8] asVoid];
  }

  return v4;
}

void __56__FCCKSecureDatabaseResetOperation__restoreZoneContents__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(FCCKPrivateBatchedSaveRecordsOperation);
  v8 = [*(a1 + 32) database];
  [(FCCKPrivateBatchedSaveRecordsOperation *)v7 setDatabase:v8];

  v9 = [*(a1 + 32) _rawRecordsToSave];
  [(FCCKPrivateBatchedSaveRecordsOperation *)v7 setRecordsToSave:v9];

  [(FCCKPrivateBatchedSaveRecordsOperation *)v7 setSkipPreflight:1];
  [(FCCKPrivateBatchedSaveRecordsOperation *)v7 setIdentityLossResponse:0];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __56__FCCKSecureDatabaseResetOperation__restoreZoneContents__block_invoke_3;
  v15 = &unk_1E7C42428;
  v16 = v5;
  v17 = v6;
  v10 = v6;
  v11 = v5;
  [(FCCKPrivateBatchedSaveRecordsOperation *)v7 setSaveRecordsCompletionBlock:&v12];
  [*(a1 + 32) associateChildOperation:{v7, v12, v13, v14, v15}];
  [(FCOperation *)v7 start];
}

uint64_t __56__FCCKSecureDatabaseResetOperation__restoreZoneContents__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return (*(*(a1 + 32) + 16))();
  }
}

- (id)_rawZoneIDsToDelete
{
  v3 = [(FCCKSecureDatabaseResetOperation *)self database];
  v4 = [(FCCKPrivateDatabase *)v3 zoneIDsUsingSecureContainer];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__FCCKSecureDatabaseResetOperation__rawZoneIDsToDelete__block_invoke;
  v7[3] = &unk_1E7C3FAE8;
  v7[4] = self;
  v5 = [v4 fc_arrayByTransformingWithBlock:v7];

  return v5;
}

id __55__FCCKSecureDatabaseResetOperation__rawZoneIDsToDelete__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 zoneName];
  v5 = [v4 isEqualToString:*MEMORY[0x1E695B800]];

  if (v5)
  {
    v6 = v3;
  }

  else
  {
    v7 = [*(a1 + 32) database];
    v6 = [(FCCKPrivateDatabase *)v7 _clientToServerRecordZoneID:v3];
  }

  return v6;
}

- (id)_rawZonesToRecreate
{
  v2 = [(FCCKSecureDatabaseResetOperation *)self _rawZoneIDsToDelete];
  v3 = [v2 fc_arrayByTransformingWithBlock:&__block_literal_global_26_1];

  return v3;
}

id __55__FCCKSecureDatabaseResetOperation__rawZonesToRecreate__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 zoneName];
  v4 = [v3 isEqualToString:*MEMORY[0x1E695B800]];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E695BA80]) initWithZoneID:v2];
  }

  return v5;
}

- (id)_rawRecordsToSave
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__FCCKSecureDatabaseResetOperation__rawRecordsToSave__block_invoke;
  v7[3] = &unk_1E7C36D40;
  v7[4] = self;
  v3 = [MEMORY[0x1E695DEC8] fc_array:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__FCCKSecureDatabaseResetOperation__rawRecordsToSave__block_invoke_2;
  v6[3] = &unk_1E7C42470;
  v6[4] = self;
  v4 = [v3 fc_arrayByTransformingWithBlock:v6];

  return v4;
}

void __53__FCCKSecureDatabaseResetOperation__rawRecordsToSave__block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v24 = a1;
  v4 = [*(a1 + 32) database];
  v5 = v4;
  if (v4)
  {
    v6 = *(v4 + 184);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  obj = v7;
  v25 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v25)
  {
    v23 = *v31;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v10 = [*(v24 + 32) database];
        v11 = [(FCCKPrivateDatabase *)v10 zoneIDsUsingSecureContainer];

        v12 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v27;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v27 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v26 + 1) + 8 * j);
              v17 = [v16 zoneName];
              v18 = [v9 canHelpRestoreZoneName:v17];

              if (v18)
              {
                v19 = [v16 zoneName];
                v20 = [v9 recordsForRestoringZoneName:v19];
                [v3 addObjectsFromArray:v20];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v13);
        }
      }

      v25 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v25);
  }

  v21 = *MEMORY[0x1E69E9840];
}

id __53__FCCKSecureDatabaseResetOperation__rawRecordsToSave__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 database];
  v5 = [(FCCKPrivateDatabase *)v4 _clientToServerRecord:v3];

  return v5;
}

@end