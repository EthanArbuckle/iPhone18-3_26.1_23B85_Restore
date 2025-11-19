@interface FCPrivateRecordSyncManager
- (BOOL)isAwaitingFirstSync;
- (BOOL)isCleanUpToDate:(id)a3;
- (BOOL)isDirty;
- (FCPrivateRecordSyncManager)init;
- (NSDate)lastCleanDate;
- (NSDate)lastDirtyDate;
- (id)initWithRecordID:(void *)a3 desiredKeys:(void *)a4 currentState:;
- (void)_stateDidChange;
- (void)fetchChangesWithContext:(id)a3 qualityOfService:(int64_t)a4 completionHandler:(id)a5;
- (void)markAsDirty;
- (void)notifyObservers;
@end

@implementation FCPrivateRecordSyncManager

- (id)initWithRecordID:(void *)a3 desiredKeys:(void *)a4 currentState:
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!a1)
  {
    goto LABEL_10;
  }

  if (!v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "recordID != nil"];
    *buf = 136315906;
    v27 = "[FCPrivateRecordSyncManager initWithRecordID:desiredKeys:currentState:]";
    v28 = 2080;
    v29 = "FCPrivateRecordSyncManager.m";
    v30 = 1024;
    v31 = 37;
    v32 = 2114;
    v33 = v23;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (!v8)
    {
LABEL_5:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "desiredKeys != nil"];
        *buf = 136315906;
        v27 = "[FCPrivateRecordSyncManager initWithRecordID:desiredKeys:currentState:]";
        v28 = 2080;
        v29 = "FCPrivateRecordSyncManager.m";
        v30 = 1024;
        v31 = 38;
        v32 = 2114;
        v33 = v24;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }
    }
  }

  else if (!v8)
  {
    goto LABEL_5;
  }

  v25.receiver = a1;
  v25.super_class = FCPrivateRecordSyncManager;
  a1 = objc_msgSendSuper2(&v25, sel_init);
  if (a1)
  {
    v10 = [v7 copy];
    v11 = a1[1];
    a1[1] = v10;

    v12 = [v8 copy];
    v13 = a1[3];
    a1[3] = v12;

    v14 = [v9 copy];
    v15 = a1[4];
    a1[4] = v14;

    if (!a1[4])
    {
      v16 = objc_alloc_init(MEMORY[0x1E69B6F28]);
      v17 = a1[4];
      a1[4] = v16;

      v18 = [v7 recordName];
      [a1[4] setRecordName:v18];

      v19 = [v7 zoneID];
      v20 = [v19 zoneName];
      [a1[4] setRecordZoneName:v20];
    }
  }

LABEL_10:

  v21 = *MEMORY[0x1E69E9840];
  return a1;
}

- (FCPrivateRecordSyncManager)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCPrivateRecordSyncManager init]";
    v10 = 2080;
    v11 = "FCPrivateRecordSyncManager.m";
    v12 = 1024;
    v13 = 59;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCPrivateRecordSyncManager init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NSDate)lastCleanDate
{
  v2 = MEMORY[0x1E695DF00];
  if (self)
  {
    self = self->_currentState;
  }

  v3 = [(FCPrivateRecordSyncManager *)self lastCleanDate];
  v4 = [v2 dateWithPBDate:v3];

  return v4;
}

- (NSDate)lastDirtyDate
{
  v2 = MEMORY[0x1E695DF00];
  if (self)
  {
    self = self->_currentState;
  }

  v3 = [(FCPrivateRecordSyncManager *)self lastDirtyDate];
  v4 = [v2 dateWithPBDate:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x1E695DF00] distantPast];
  }

  v7 = v6;

  return v7;
}

- (BOOL)isCleanUpToDate:(id)a3
{
  v4 = a3;
  v5 = [(FCPrivateRecordSyncManager *)self lastCleanDate];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 fc_isLaterThanOrEqualTo:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isDirty
{
  v31 = *MEMORY[0x1E69E9840];
  if (self)
  {
    currentState = self->_currentState;
  }

  else
  {
    currentState = 0;
  }

  v4 = currentState;
  v5 = [(NTPBPrivateRecordSyncState *)v4 lastCleanDate];
  if (v5)
  {
    if (self)
    {
      v6 = self->_currentState;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = [(NTPBPrivateRecordSyncState *)v7 lastDirtyDate];
    [v8 timeIntervalSince1970];
    v10 = v9;
    if (self)
    {
      v11 = self->_currentState;
    }

    else
    {
      v11 = 0;
    }

    v12 = [(NTPBPrivateRecordSyncState *)v11 lastCleanDate];
    [v12 timeIntervalSince1970];
    v14 = v10 > v13;
  }

  else
  {
    v14 = 1;
  }

  v15 = FCPrivateDataLog;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    if (self)
    {
      recordID = self->_recordID;
    }

    else
    {
      recordID = 0;
    }

    v19 = recordID;
    v20 = [(CKRecordID *)v19 recordName];
    v21 = v20;
    v22 = " not";
    v25 = 138543874;
    v26 = v17;
    if (v14)
    {
      v22 = "";
    }

    v27 = 2114;
    v28 = v20;
    v29 = 2080;
    v30 = v22;
    _os_log_impl(&dword_1B63EF000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ for %{public}@ is discovering he is%s dirty on being asked", &v25, 0x20u);
  }

  v23 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)markAsDirty
{
  v3 = [MEMORY[0x1E695DF00] pbDate];
  if (self)
  {
    currentState = self->_currentState;
  }

  else
  {
    currentState = 0;
  }

  [(NTPBPrivateRecordSyncState *)currentState setLastDirtyDate:v3];

  [(FCPrivateRecordSyncManager *)self _stateDidChange];
}

- (void)_stateDidChange
{
  if (a1)
  {
    v3 = [*(a1 + 32) copy];
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    [WeakRetained recordSyncManager:a1 stateDidChange:v3];
  }
}

- (void)notifyObservers
{
  v2 = self;
  if (self)
  {
    self = objc_loadWeakRetained(&self->_delegate);
  }

  v3 = self;
  [(FCPrivateRecordSyncManager *)self recordSyncManagerNotifyObservers:v2];
}

- (BOOL)isAwaitingFirstSync
{
  if (self)
  {
    self = self->_currentState;
  }

  v2 = [(FCPrivateRecordSyncManager *)self lastCleanDate];
  v3 = v2 == 0;

  return v3;
}

- (void)fetchChangesWithContext:(id)a3 qualityOfService:(int64_t)a4 completionHandler:(id)a5
{
  v26[1] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = MEMORY[0x1E695DF00];
  v10 = a3;
  v11 = [v9 pbDate];
  v12 = objc_alloc_init(FCCKPrivateFetchRecordsOperation);
  if (self)
  {
    v26[0] = self->_recordID;
    v13 = MEMORY[0x1E695DEC8];
    v14 = v26[0];
    v15 = [v13 arrayWithObjects:v26 count:1];

    [(FCCKPrivateFetchRecordsOperation *)v12 setRecordIDs:v15];
    desiredKeys = self->_desiredKeys;
  }

  else
  {
    v26[0] = 0;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    [(FCCKPrivateFetchRecordsOperation *)v12 setRecordIDs:v22];

    desiredKeys = 0;
  }

  [(FCCKPrivateFetchRecordsOperation *)v12 setDesiredKeys:desiredKeys];
  [(FCOperation *)v12 setQualityOfService:a4];
  if (a4 == 9)
  {
    v17 = -1;
  }

  else
  {
    v17 = a4 == 33 || a4 == 25;
  }

  [(FCOperation *)v12 setRelativePriority:v17];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __89__FCPrivateRecordSyncManager_fetchChangesWithContext_qualityOfService_completionHandler___block_invoke;
  v23[3] = &unk_1E7C378E8;
  v23[4] = self;
  v24 = v11;
  v25 = v8;
  v18 = v8;
  v19 = v11;
  [(FCCKPrivateFetchRecordsOperation *)v12 setFetchRecordsCompletionBlock:v23];
  v20 = [v10 privateDatabase];

  [(FCCKPrivateDatabase *)v20 addOperation:v12];
  v21 = *MEMORY[0x1E69E9840];
}

void __89__FCPrivateRecordSyncManager_fetchChangesWithContext_qualityOfService_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  if ([v5 fc_isCKUnknownItemError])
  {
    v7 = a1[4];
    if (v7)
    {
      v7 = v7[1];
    }

    v23[0] = v7;
    v8 = MEMORY[0x1E695DEC8];
    v9 = v7;
    v10 = [v8 arrayWithObjects:v23 count:1];

    v11 = 0;
  }

  else
  {
    v10 = 0;
    v11 = v5;
  }

  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __89__FCPrivateRecordSyncManager_fetchChangesWithContext_qualityOfService_completionHandler___block_invoke_2;
  v20 = &unk_1E7C36C58;
  v12 = a1[5];
  v21 = a1[4];
  v22 = v12;
  v13 = _Block_copy(&v17);
  v14 = a1[6];
  v15 = [v6 allValues];

  (*(v14 + 16))(v14, v15, v10, 0, v13, v11);
  v16 = *MEMORY[0x1E69E9840];
}

void __89__FCPrivateRecordSyncManager_fetchChangesWithContext_qualityOfService_completionHandler___block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    v4 = *(v3 + 32);
  }

  else
  {
    v4 = 0;
  }

  [v4 setLastCleanDate:v2];
  v5 = *(a1 + 32);

  [(FCPrivateRecordSyncManager *)v5 _stateDidChange];
}

@end