@interface FCRemoveRecordsCommand
- (BOOL)canCoalesceWithCommand:(id)a3;
- (FCRemoveRecordsCommand)init;
- (FCRemoveRecordsCommand)initWithCoder:(id)a3;
- (FCRemoveRecordsCommand)initWithRecordIDs:(id)a3;
- (NSArray)deletedRecordIDs;
- (void)applyToRemoteRecords:(id)a3 remoteDeletions:(id)a4;
- (void)coalesceWithCommand:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3 delegate:(id)a4 qualityOfService:(int64_t)a5;
- (void)handleRecordIDsFromStream:(void *)a3 context:(void *)a4 delegate:(uint64_t)a5 qualityOfService:;
@end

@implementation FCRemoveRecordsCommand

- (FCRemoveRecordsCommand)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCRemoveRecordsCommand init]";
    v10 = 2080;
    v11 = "FCRemoveRecordsCommand.m";
    v12 = 1024;
    v13 = 42;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCRemoveRecordsCommand init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCRemoveRecordsCommand)initWithRecordIDs:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FCRemoveRecordsCommand;
  v5 = [(FCRemoveRecordsCommand *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    recordIDs = v5->_recordIDs;
    v5->_recordIDs = v6;
  }

  return v5;
}

- (FCRemoveRecordsCommand)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"recordIDs"];

  v9 = [(FCRemoveRecordsCommand *)self initWithRecordIDs:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  if (self)
  {
    recordIDs = self->_recordIDs;
  }

  else
  {
    recordIDs = 0;
  }

  [a3 encodeObject:recordIDs forKey:@"recordIDs"];
}

- (void)executeWithContext:(id)a3 delegate:(id)a4 qualityOfService:(int64_t)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [v8 networkReachability];
  v11 = [v10 isCloudKitReachable];

  if (v11)
  {
    v12 = [v8 internalPrivateDataContext];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __71__FCRemoveRecordsCommand_executeWithContext_delegate_qualityOfService___block_invoke;
    v18[3] = &unk_1E7C3FE20;
    v18[4] = self;
    v19 = v8;
    v20 = v9;
    v21 = a5;
    [v12 prepareRecordZonesForUseWithCompletionHandler:v18];
  }

  else
  {
    v13 = FCCommandQueueLog;
    if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138543618;
      v23 = v16;
      v24 = 2048;
      v25 = self;
      _os_log_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> will not execute because CloudKit is not reachable", buf, 0x16u);
    }

    [v9 command:self didFinishWithStatus:1];
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __71__FCRemoveRecordsCommand_executeWithContext_delegate_qualityOfService___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = FCCommandQueueLog;
    if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = v4;
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = *(a1 + 32);
      v15 = 138543874;
      v16 = v13;
      v17 = 2048;
      v18 = v14;
      v19 = 2114;
      v20 = v3;
      _os_log_error_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_ERROR, "<%{public}@ %p> failed to prepare zones for use with error: %{public}@", &v15, 0x20u);
    }

    [*(a1 + 48) command:*(a1 + 32) didFinishWithStatus:{objc_msgSend(*(a1 + 32), "statusForCloudKitError:", v3)}];
  }

  else
  {
    v5 = [FCArrayStream alloc];
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v6 + 8);
    }

    else
    {
      v7 = 0;
    }

    v8 = [(FCArrayStream *)v5 initWithArray:v7];
    [(FCRemoveRecordsCommand *)*(a1 + 32) handleRecordIDsFromStream:v8 context:*(a1 + 40) delegate:*(a1 + 48) qualityOfService:*(a1 + 56)];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)handleRecordIDsFromStream:(void *)a3 context:(void *)a4 delegate:(uint64_t)a5 qualityOfService:
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (a1)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __86__FCRemoveRecordsCommand_handleRecordIDsFromStream_context_delegate_qualityOfService___block_invoke;
    aBlock[3] = &unk_1E7C3FE90;
    aBlock[4] = a1;
    v17 = v10;
    v20 = a5;
    v12 = v9;
    v18 = v12;
    v19 = v11;
    v13 = _Block_copy(aBlock);
    v14 = FCDispatchQueueForQualityOfService(a5);
    v15 = [v12 fetchMoreResultsWithLimit:100 qualityOfService:a5 callbackQueue:v14 completionHandler:v13];
  }
}

- (void)applyToRemoteRecords:(id)a3 remoteDeletions:(id)a4
{
  if (self)
  {
    recordIDs = self->_recordIDs;
    v7 = a4;
    [a3 removeObjectsForKeys:recordIDs];
    v8 = self->_recordIDs;
  }

  else
  {
    v9 = a4;
    [a3 removeObjectsForKeys:0];
    v8 = 0;
  }

  [a4 addObjectsFromArray:v8];
}

- (NSArray)deletedRecordIDs
{
  if (self)
  {
    self = self->_recordIDs;
  }

  return self;
}

void __86__FCRemoveRecordsCommand_handleRecordIDsFromStream_context_delegate_qualityOfService___block_invoke(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 64);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v31 = __86__FCRemoveRecordsCommand_handleRecordIDsFromStream_context_delegate_qualityOfService___block_invoke_2;
  v32 = &unk_1E7C3FE68;
  v7 = *(a1 + 48);
  v29 = *(a1 + 32);
  v8 = v29.i64[1];
  v9 = *(a1 + 56);
  v10.i64[0] = v7;
  v10.i64[1] = v9;
  v11 = vzip2q_s64(v29, v10);
  v10.i64[1] = v29.i64[0];
  v34 = v11;
  v33 = v10;
  v35 = *(a1 + 64);
  v12 = a2;
  v13 = v5;
  v14 = v30;
  if (v4)
  {
    v15 = [v13 networkReachability];
    v16 = [v15 isCloudKitReachable];

    if (v16)
    {
      *aBlock = MEMORY[0x1E69E9820];
      *&aBlock[8] = 3221225472;
      *&aBlock[16] = __85__FCRemoveRecordsCommand_handleBatchOfRecordIDs_context_qualityOfService_completion___block_invoke;
      v41 = &unk_1E7C41148;
      v17 = v12;
      v46 = v6;
      v42 = v17;
      v43 = v4;
      v18 = v14;
      v45 = v18;
      v44 = v13;
      v19 = _Block_copy(aBlock);
      if ([v17 count])
      {
        v19[2](v19);
      }

      else
      {
        v24 = FCCommandQueueLog;
        if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT))
        {
          v25 = v24;
          v26 = objc_opt_class();
          v27 = NSStringFromClass(v26);
          *buf = 138543618;
          v37 = v27;
          v38 = 2048;
          v39 = v4;
          _os_log_impl(&dword_1B63EF000, v25, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> succeeded because there are no record IDs to delete", buf, 0x16u);
        }

        v31(v18, 0);
      }
    }

    else
    {
      v20 = FCCommandQueueLog;
      if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        *aBlock = 138543618;
        *&aBlock[4] = v23;
        *&aBlock[12] = 2048;
        *&aBlock[14] = v4;
        _os_log_impl(&dword_1B63EF000, v21, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> skipping work because CloudKit is not available", aBlock, 0x16u);
      }

      v31(v14, 1);
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

uint64_t __86__FCRemoveRecordsCommand_handleRecordIDsFromStream_context_delegate_qualityOfService___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2 || ([*(a1 + 32) isFinished] & 1) != 0)
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 40);

    return [v4 command:v5 didFinishWithStatus:a2];
  }

  else
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);

    return [(FCRemoveRecordsCommand *)v7 handleRecordIDsFromStream:v8 context:v9 delegate:v10 qualityOfService:v11];
  }
}

void __85__FCRemoveRecordsCommand_handleBatchOfRecordIDs_context_qualityOfService_completion___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(FCCKPrivateDeleteRecordsOperation);
  [(FCCKPrivateDeleteRecordsOperation *)v2 setRecordIDsToDelete:*(a1 + 32)];
  [(FCOperation *)v2 setQualityOfService:*(a1 + 64)];
  v3 = *(a1 + 64);
  v4 = v3 == 33 || v3 == 25;
  if (v3 == 9)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  [(FCOperation *)v2 setRelativePriority:v5];
  v6 = [(FCOperation *)v2 operationID];
  v7 = FCCommandQueueLog;
  if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    v9 = v7;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = *(a1 + 40);
    *buf = 138543874;
    v21 = v11;
    v22 = 2048;
    v23 = v12;
    v24 = 2114;
    v25 = v6;
    _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> will perform delete operation, operationID=%{public}@", buf, 0x20u);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __85__FCRemoveRecordsCommand_handleBatchOfRecordIDs_context_qualityOfService_completion___block_invoke_17;
  v17[3] = &unk_1E7C3FEB8;
  v17[4] = *(a1 + 40);
  v18 = v6;
  v19 = *(a1 + 56);
  v13 = v6;
  [(FCCKPrivateDeleteRecordsOperation *)v2 setDeleteRecordsCompletionBlock:v17];
  v14 = [*(a1 + 48) internalPrivateDataContext];
  v15 = [v14 privateDatabase];
  [(FCCKPrivateDatabase *)v15 addOperation:v2];

  v16 = *MEMORY[0x1E69E9840];
}

void __85__FCRemoveRecordsCommand_handleBatchOfRecordIDs_context_qualityOfService_completion___block_invoke_17(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 fc_isCKUnknownItemError])
  {
    v5 = 0;
  }

  else
  {
    if (v4)
    {
      v6 = FCCommandQueueLog;
      if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 32);
        v17 = v6;
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = *(a1 + 32);
        *buf = 138543874;
        v23 = v19;
        v24 = 2048;
        v25 = v20;
        v26 = 2114;
        v27 = v4;
        _os_log_error_impl(&dword_1B63EF000, v17, OS_LOG_TYPE_ERROR, "<%{public}@ %p> encountered error deleting records: %{public}@", buf, 0x20u);
      }
    }

    v21.receiver = *(a1 + 32);
    v21.super_class = FCRemoveRecordsCommand;
    v5 = objc_msgSendSuper2(&v21, sel_statusForCloudKitError_, v4);
  }

  v7 = FCCommandQueueLog;
  if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = v7;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = FCCommandStatusDescription(v5);
    *buf = 138544130;
    v23 = v11;
    v24 = 2048;
    v25 = v12;
    v26 = 2114;
    v27 = v13;
    v28 = 2114;
    v29 = v14;
    _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> did perform delete operation, operationID=%{public}@, status=%{public}@", buf, 0x2Au);
  }

  (*(*(a1 + 48) + 16))();

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)canCoalesceWithCommand:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)coalesceWithCommand:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v12 = v5;

  v6 = [MEMORY[0x1E695DFA8] set];
  v7 = v6;
  if (self)
  {
    recordIDs = self->_recordIDs;
  }

  else
  {
    recordIDs = 0;
  }

  [v6 addObjectsFromArray:recordIDs];
  if (v12)
  {
    v9 = v12[1];
  }

  else
  {
    v9 = 0;
  }

  [v7 addObjectsFromArray:v9];
  v11 = [v7 allObjects];
  if (self)
  {
    objc_setProperty_nonatomic_copy(self, v10, v11, 8);
  }
}

@end