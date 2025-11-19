@interface FCPrivateZoneSyncManager
- (BOOL)isAwaitingFirstSync;
- (BOOL)isCleanUpToDate:(id)a3;
- (BOOL)isDirty;
- (FCPrivateZoneSyncManager)init;
- (NSDate)lastCleanDate;
- (NSDate)lastDirtyDate;
- (id)initWithRecordZoneID:(void *)a3 desiredKeys:(char)a4 requiresBatchedFirstSync:(void *)a5 currentState:;
- (void)_stateDidChange;
- (void)fetchChangesWithContext:(id)a3 qualityOfService:(int64_t)a4 completionHandler:(id)a5;
- (void)markAsDirty;
- (void)notifyObservers;
@end

@implementation FCPrivateZoneSyncManager

- (id)initWithRecordZoneID:(void *)a3 desiredKeys:(char)a4 requiresBatchedFirstSync:(void *)a5 currentState:
{
  v34 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (!a1)
  {
    goto LABEL_10;
  }

  if (!v9 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "recordZoneID != nil"];
    *buf = 136315906;
    v27 = "[FCPrivateZoneSyncManager initWithRecordZoneID:desiredKeys:requiresBatchedFirstSync:currentState:]";
    v28 = 2080;
    v29 = "FCPrivateZoneSyncManager.m";
    v30 = 1024;
    v31 = 41;
    v32 = 2114;
    v33 = v23;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (!v10)
    {
LABEL_5:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "desiredKeys != nil"];
        *buf = 136315906;
        v27 = "[FCPrivateZoneSyncManager initWithRecordZoneID:desiredKeys:requiresBatchedFirstSync:currentState:]";
        v28 = 2080;
        v29 = "FCPrivateZoneSyncManager.m";
        v30 = 1024;
        v31 = 42;
        v32 = 2114;
        v33 = v24;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }
    }
  }

  else if (!v10)
  {
    goto LABEL_5;
  }

  v25.receiver = a1;
  v25.super_class = FCPrivateZoneSyncManager;
  a1 = objc_msgSendSuper2(&v25, sel_init);
  if (a1)
  {
    v12 = [v9 copy];
    v13 = a1[2];
    a1[2] = v12;

    v14 = [v10 copy];
    v15 = a1[4];
    a1[4] = v14;

    *(a1 + 8) = a4;
    v16 = [v11 copy];
    v17 = a1[5];
    a1[5] = v16;

    if (!a1[5])
    {
      v18 = objc_alloc_init(MEMORY[0x1E69B6F30]);
      v19 = a1[5];
      a1[5] = v18;

      v20 = [v9 zoneName];
      [a1[5] setZoneName:v20];
    }
  }

LABEL_10:

  v21 = *MEMORY[0x1E69E9840];
  return a1;
}

- (FCPrivateZoneSyncManager)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCPrivateZoneSyncManager init]";
    v10 = 2080;
    v11 = "FCPrivateZoneSyncManager.m";
    v12 = 1024;
    v13 = 63;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCPrivateZoneSyncManager init]"];
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

  v3 = [(FCPrivateZoneSyncManager *)self lastCleanDate];
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

  v3 = [(FCPrivateZoneSyncManager *)self lastDirtyDate];
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
  v5 = [(FCPrivateZoneSyncManager *)self lastCleanDate];
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
  if (self)
  {
    currentState = self->_currentState;
  }

  else
  {
    currentState = 0;
  }

  v4 = currentState;
  v5 = [(NTPBPrivateZoneSyncState *)v4 lastCleanDate];
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
    v8 = [(NTPBPrivateZoneSyncState *)v7 lastDirtyDate];
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

    v12 = [(NTPBPrivateZoneSyncState *)v11 lastCleanDate];
    [v12 timeIntervalSince1970];
    v14 = v10 > v13;
  }

  else
  {
    v14 = 1;
  }

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

  [(NTPBPrivateZoneSyncState *)currentState setLastDirtyDate:v3];

  [(FCPrivateZoneSyncManager *)&self->super.isa _stateDidChange];
}

- (void)_stateDidChange
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [a1[5] copy];
    v3 = FCPrivateDataLog;
    if (os_log_type_enabled(FCPrivateDataLog, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = a1[2];
      v8 = [v7 zoneName];
      v11 = 138543874;
      v12 = v6;
      v13 = 2114;
      v14 = v8;
      v15 = 2114;
      v16 = v2;
      _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ for zone %{public}@ did change his state to %{public}@", &v11, 0x20u);
    }

    WeakRetained = objc_loadWeakRetained(a1 + 3);
    [WeakRetained zoneSyncManager:a1 stateDidChange:v2];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)notifyObservers
{
  v2 = self;
  if (self)
  {
    self = objc_loadWeakRetained(&self->_delegate);
  }

  v3 = self;
  [(FCPrivateZoneSyncManager *)self zoneSyncManagerNotifyObservers:v2];
}

- (BOOL)isAwaitingFirstSync
{
  if (self)
  {
    self = self->_currentState;
  }

  v2 = [(FCPrivateZoneSyncManager *)self lastCleanDate];
  v3 = v2 == 0;

  return v3;
}

- (void)fetchChangesWithContext:(id)a3 qualityOfService:(int64_t)a4 completionHandler:(id)a5
{
  v49 = *MEMORY[0x1E69E9840];
  v8 = a5;
  if (self)
  {
    recordZoneID = self->_recordZoneID;
  }

  else
  {
    recordZoneID = 0;
  }

  v10 = recordZoneID;
  v11 = a3;
  v12 = [(CKRecordZoneID *)v10 zoneName];

  v13 = [v11 recordZoneWithName:v12];

  if (!v13)
  {
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __87__FCPrivateZoneSyncManager_fetchChangesWithContext_qualityOfService_completionHandler___block_invoke;
    v38[3] = &unk_1E7C37778;
    v39 = v12;
    v40 = v8;
    v18 = v8;
    v17 = v12;
    __87__FCPrivateZoneSyncManager_fetchChangesWithContext_qualityOfService_completionHandler___block_invoke(v38);

    v19 = v40;
    goto LABEL_21;
  }

  v14 = [MEMORY[0x1E695DF00] pbDate];
  if (self)
  {
    currentState = self->_currentState;
  }

  else
  {
    currentState = 0;
  }

  v16 = currentState;
  v17 = [(NTPBPrivateZoneSyncState *)v16 changeToken];

  if (v17)
  {
    v18 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v17 error:0];
    if (!self)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v18 = 0;
    if (!self)
    {
LABEL_13:
      v20 = 1;
      goto LABEL_14;
    }
  }

  if (!self->_requiresBatchedFirstSync)
  {
    goto LABEL_13;
  }

  v20 = ![(FCPrivateZoneSyncManager *)self isAwaitingFirstSync];
LABEL_14:
  v33 = v20;
  v21 = FCPrivateDataLog;
  if (os_log_type_enabled(FCPrivateDataLog, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v21;
    v23 = objc_opt_class();
    NSStringFromClass(v23);
    v24 = v32 = v8;
    v25 = @"NO";
    if (v33)
    {
      v25 = @"YES";
    }

    v26 = a4;
    v27 = v25;
    *buf = 138544130;
    v42 = v24;
    v43 = 2114;
    v44 = v12;
    v45 = 2114;
    v46 = v27;
    v47 = 2114;
    v48 = v17;
    _os_log_impl(&dword_1B63EF000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ for zone %{public}@ will fetch changes, all=%{public}@, token=%{public}@", buf, 0x2Au);

    a4 = v26;
    v8 = v32;
  }

  if (self)
  {
    desiredKeys = self->_desiredKeys;
  }

  else
  {
    desiredKeys = 0;
  }

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __87__FCPrivateZoneSyncManager_fetchChangesWithContext_qualityOfService_completionHandler___block_invoke_17;
  v34[3] = &unk_1E7C424C0;
  v34[4] = self;
  v35 = v12;
  v36 = v14;
  v37 = v8;
  v29 = v8;
  v30 = v14;
  v19 = v12;
  [(FCCKRecordZone *)v13 fetchChangesWithChangeToken:v18 desiredKeys:desiredKeys fetchAllChanges:v33 qualityOfService:a4 completion:v34];

LABEL_21:
  v31 = *MEMORY[0x1E69E9840];
}

void __87__FCPrivateZoneSyncManager_fetchChangesWithContext_qualityOfService_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [MEMORY[0x1E696ABC0] fc_unknownRecordZoneErrorWithZoneName:*(a1 + 32)];
  (*(v1 + 16))(v1, MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F0], 0, &__block_literal_global_108, v2);
}

void __87__FCPrivateZoneSyncManager_fetchChangesWithContext_qualityOfService_completionHandler___block_invoke_17(uint64_t a1, int a2, void *a3, void *a4, uint64_t a5, void *a6, int a7)
{
  v48 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a6;
  if (v15)
  {
    v16 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v15 requiringSecureCoding:1 error:0];
  }

  else
  {
    v16 = 0;
  }

  v17 = FCPrivateDataLog;
  if (os_log_type_enabled(FCPrivateDataLog, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 32);
    v19 = v17;
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = *(a1 + 40);
    v23 = "un";
    *buf = 138544386;
    v24 = "";
    v39 = v21;
    v40 = 2112;
    if (a2)
    {
      v23 = "";
    }

    v41 = v22;
    v42 = 2080;
    if (!a7)
    {
      v24 = " no";
    }

    v43 = v23;
    v44 = 2080;
    v45 = v24;
    v46 = 2114;
    v47 = v16;
    _os_log_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ for zone %@ fetched changes %ssuccessfully with%s more changes to fetch and token %{public}@", buf, 0x34u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__FCPrivateZoneSyncManager_fetchChangesWithContext_qualityOfService_completionHandler___block_invoke_22;
  aBlock[3] = &unk_1E7C42498;
  v25 = v15;
  v26 = *(a1 + 32);
  v33 = v25;
  v34 = v26;
  v27 = v16;
  v35 = v27;
  v37 = a7;
  v36 = *(a1 + 48);
  v28 = _Block_copy(aBlock);
  v29 = *(a1 + 56);
  if (a2)
  {
    (*(v29 + 16))(v29, v13, v14, a5, v28, 0);
  }

  else
  {
    v30 = [MEMORY[0x1E696ABC0] errorWithDomain:@"FCErrorDomain" code:16 userInfo:0];
    (*(v29 + 16))(v29, v13, v14, a5, v28, v30);
  }

  v31 = *MEMORY[0x1E69E9840];
}

void __87__FCPrivateZoneSyncManager_fetchChangesWithContext_qualityOfService_completionHandler___block_invoke_22(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v3 = *(a1 + 40);
    v2 = *(a1 + 48);
    if (v3)
    {
      v4 = *(v3 + 40);
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v4 = *(v5 + 40);
    }

    else
    {
      v4 = 0;
    }

    v2 = 0;
  }

  [v4 setChangeToken:v2];
  if ((*(a1 + 64) & 1) == 0)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = *(v6 + 40);
    }

    else
    {
      v7 = 0;
    }

    [v7 setLastCleanDate:*(a1 + 56)];
  }

  v8 = *(a1 + 40);

  [(FCPrivateZoneSyncManager *)v8 _stateDidChange];
}

@end