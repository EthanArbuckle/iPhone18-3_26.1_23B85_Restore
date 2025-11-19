@interface FCModifyRecordsCommand
+ (id)desiredKeys;
- (BOOL)canCoalesceWithCommand:(id)a3;
- (BOOL)mergeLocalRecord:(id)a3 withRemoteRecord:(id)a4;
- (FCModifyRecordsCommand)init;
- (FCModifyRecordsCommand)initWithCoder:(id)a3;
- (FCModifyRecordsCommand)initWithLocalRecordsGenerator:(id)a3 merge:(BOOL)a4;
- (NSArray)createdOrModifiedRecordIDs;
- (void)_didSaveRecords:(uint64_t)a1;
- (void)applyToRemoteRecords:(id)a3 remoteDeletions:(id)a4;
- (void)coalesceWithCommand:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3 delegate:(id)a4 qualityOfService:(int64_t)a5;
- (void)handleLocalRecordsFromStream:(void *)a3 internalPrivateDataContext:(void *)a4 delegate:(uint64_t)a5 qualityOfService:;
- (void)localRecords;
@end

@implementation FCModifyRecordsCommand

+ (id)desiredKeys
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "+[FCModifyRecordsCommand desiredKeys]";
    v10 = 2080;
    v11 = "FCModifyRecordsCommand.m";
    v12 = 1024;
    v13 = 50;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "+[FCModifyRecordsCommand desiredKeys]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCModifyRecordsCommand)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCModifyRecordsCommand init]";
    v10 = 2080;
    v11 = "FCModifyRecordsCommand.m";
    v12 = 1024;
    v13 = 55;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCModifyRecordsCommand init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCModifyRecordsCommand)initWithLocalRecordsGenerator:(id)a3 merge:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = FCModifyRecordsCommand;
  v7 = [(FCModifyRecordsCommand *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    localRecordsGenerator = v7->_localRecordsGenerator;
    v7->_localRecordsGenerator = v8;

    v7->_merge = a4;
  }

  return v7;
}

- (FCModifyRecordsCommand)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"localRecords"];
  v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"merge"];

  v10 = -[FCModifyRecordsCommand initWithLocalRecords:merge:](self, "initWithLocalRecords:merge:", v8, [v9 BOOLValue]);
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(FCModifyRecordsCommand *)self localRecords];
  [v7 encodeObject:v4 forKey:@"localRecords"];

  if (self)
  {
    merge = self->_merge;
  }

  else
  {
    merge = 0;
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:merge];
  [v7 encodeObject:v6 forKey:@"merge"];
}

- (BOOL)mergeLocalRecord:(id)a3 withRemoteRecord:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v14 = "[FCModifyRecordsCommand mergeLocalRecord:withRemoteRecord:]";
    v15 = 2080;
    v16 = "FCModifyRecordsCommand.m";
    v17 = 1024;
    v18 = 106;
    v19 = 2114;
    v20 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v8 = MEMORY[0x1E695DF30];
  v9 = *MEMORY[0x1E695D930];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCModifyRecordsCommand mergeLocalRecord:withRemoteRecord:]"];
  v11 = [v8 exceptionWithName:v9 reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

- (void)localRecords
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[3];
    if (!v3)
    {
      v3 = a1[2];
      if (v3)
      {
        v4 = v3[2];
        v5 = v3;
        v6 = v4();
        v7 = v2[3];
        v2[3] = v6;

        v3 = v2[3];
      }
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
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
    v18[2] = __71__FCModifyRecordsCommand_executeWithContext_delegate_qualityOfService___block_invoke;
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

void __71__FCModifyRecordsCommand_executeWithContext_delegate_qualityOfService___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = FCCommandQueueLog;
    if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v15 = v4;
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = *(a1 + 32);
      v19 = 138543874;
      v20 = v17;
      v21 = 2048;
      v22 = v18;
      v23 = 2114;
      v24 = v3;
      _os_log_error_impl(&dword_1B63EF000, v15, OS_LOG_TYPE_ERROR, "<%{public}@ %p> failed to prepare zones for use with error: %{public}@", &v19, 0x20u);
    }

    [*(a1 + 48) command:*(a1 + 32) didFinishWithStatus:{objc_msgSend(*(a1 + 32), "statusForCloudKitError:", v3)}];
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x1E695DEC8]);
    v6 = [(FCModifyRecordsCommand *)*(a1 + 32) localRecords];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = MEMORY[0x1E695E0F0];
    }

    v9 = [v5 initWithArray:v8 copyItems:1];

    v10 = [[FCArrayStream alloc] initWithArray:v9];
    v11 = *(a1 + 32);
    v12 = [*(a1 + 40) internalPrivateDataContext];
    [(FCModifyRecordsCommand *)v11 handleLocalRecordsFromStream:v10 internalPrivateDataContext:v12 delegate:*(a1 + 48) qualityOfService:*(a1 + 56)];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)handleLocalRecordsFromStream:(void *)a3 internalPrivateDataContext:(void *)a4 delegate:(uint64_t)a5 qualityOfService:
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (a1)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __108__FCModifyRecordsCommand_handleLocalRecordsFromStream_internalPrivateDataContext_delegate_qualityOfService___block_invoke;
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

- (BOOL)canCoalesceWithCommand:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = v4;
    v6 = v5[8];
    if (self)
    {
      if (v6 == self->_merge)
      {
        if (v5[8])
        {
          v7 = [v5 isMemberOfClass:objc_opt_class()];
        }

        else
        {
          v7 = 1;
        }
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = v6 ^ 1;
    }
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  return v7;
}

- (void)coalesceWithCommand:(id)a3
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  v41 = v4;
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

  v6 = v5;
  v7 = [(FCModifyRecordsCommand *)self localRecords];
  v8 = [v7 fc_dictionaryWithKeySelector:sel_recordID];

  v39 = v6;
  v9 = [(FCModifyRecordsCommand *)v6 localRecords];
  v10 = [v9 fc_dictionaryWithKeySelector:sel_recordID];

  v11 = [MEMORY[0x1E695DFA8] set];
  v12 = [v8 allKeys];
  v13 = v12;
  v14 = MEMORY[0x1E695E0F0];
  if (v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = MEMORY[0x1E695E0F0];
  }

  [v11 addObjectsFromArray:{v15, v39}];

  v16 = [v10 allKeys];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v14;
  }

  [v11 addObjectsFromArray:v18];

  v19 = [MEMORY[0x1E695DF70] array];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v20 = v11;
  v21 = [v20 countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (v21)
  {
    v22 = v21;
    v46 = self;
    v47 = *v53;
    v44 = v10;
    v45 = v8;
    v42 = v20;
    v43 = v19;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v53 != v47)
        {
          objc_enumerationMutation(v20);
        }

        v24 = *(*(&v52 + 1) + 8 * i);
        v25 = [v8 objectForKey:v24];
        v26 = [v10 objectForKey:v24];
        v27 = v26;
        if (v25)
        {
          v28 = v26 == 0;
        }

        else
        {
          v28 = 1;
        }

        if (!v28)
        {
          if (self && self->_merge)
          {
            v29 = v26;

            v25 = v29;
LABEL_36:
            [v19 addObject:v29];
            goto LABEL_38;
          }

          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v30 = [v26 changedKeys];
          v31 = [v30 countByEnumeratingWithState:&v48 objects:v56 count:16];
          if (v31)
          {
            v32 = v31;
            v33 = *v49;
            do
            {
              for (j = 0; j != v32; ++j)
              {
                if (*v49 != v33)
                {
                  objc_enumerationMutation(v30);
                }

                v35 = *(*(&v48 + 1) + 8 * j);
                v36 = [v27 objectForKeyedSubscript:v35];
                [v25 setObject:v36 forKeyedSubscript:v35];
              }

              v32 = [v30 countByEnumeratingWithState:&v48 objects:v56 count:16];
            }

            while (v32);
          }

          v8 = v45;
          self = v46;
          v19 = v43;
          v10 = v44;
          v20 = v42;
        }

        if (v25)
        {
          v29 = v25;
        }

        else
        {
          v29 = v27;
        }

        if (v25 | v27)
        {
          goto LABEL_36;
        }

        v25 = 0;
LABEL_38:
      }

      v22 = [v20 countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v22);
  }

  if (self)
  {
    objc_setProperty_nonatomic_copy(self, v37, v19, 24);
  }

  v38 = *MEMORY[0x1E69E9840];
}

- (void)applyToRemoteRecords:(id)a3 remoteDeletions:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v27 = a4;
  v7 = [(FCModifyRecordsCommand *)self localRecords];
  v8 = [v7 fc_dictionaryWithKeyBlock:&__block_literal_global_32_0];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v37;
    v13 = 0x1EDB0F000uLL;
    v29 = v9;
    v30 = v8;
    v28 = *v37;
    do
    {
      v14 = 0;
      v31 = v11;
      do
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v36 + 1) + 8 * v14);
        v16 = [v8 objectForKeyedSubscript:v15];
        if (v16)
        {
          v17 = [v9 objectForKeyedSubscript:v15];
          if (self && *(&self->super.super.isa + *(v13 + 3436)) == 1)
          {
            [(FCModifyRecordsCommand *)self mergeLocalRecord:v16 withRemoteRecord:v17];
          }

          else
          {
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            v18 = [v16 changedKeys];
            v19 = [v18 countByEnumeratingWithState:&v32 objects:v40 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v33;
              do
              {
                for (i = 0; i != v20; ++i)
                {
                  if (*v33 != v21)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v23 = *(*(&v32 + 1) + 8 * i);
                  v24 = [v16 objectForKeyedSubscript:v23];
                  [v17 setObject:v24 forKeyedSubscript:v23];
                }

                v20 = [v18 countByEnumeratingWithState:&v32 objects:v40 count:16];
              }

              while (v20);
            }

            v9 = v29;
            v8 = v30;
            v12 = v28;
            v11 = v31;
            v13 = 0x1EDB0F000;
          }
        }

        ++v14;
      }

      while (v14 != v11);
      v11 = [v9 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v11);
  }

  v25 = [v8 allKeys];
  [v27 fc_removeObjectsFromArray:v25];

  v26 = *MEMORY[0x1E69E9840];
}

- (NSArray)createdOrModifiedRecordIDs
{
  v2 = [(FCModifyRecordsCommand *)self localRecords];
  v3 = [v2 fc_arrayByTransformingWithBlock:&__block_literal_global_35_0];

  return v3;
}

void __108__FCModifyRecordsCommand_handleLocalRecordsFromStream_internalPrivateDataContext_delegate_qualityOfService___block_invoke(uint64_t a1, void *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 64);
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v42 = __108__FCModifyRecordsCommand_handleLocalRecordsFromStream_internalPrivateDataContext_delegate_qualityOfService___block_invoke_2;
  v43 = &unk_1E7C3FE68;
  v7 = *(a1 + 48);
  v39 = *(a1 + 32);
  v8 = v39.i64[1];
  v9 = *(a1 + 56);
  v10.i64[0] = v7;
  v10.i64[1] = v9;
  v11 = vzip2q_s64(v39, v10);
  v10.i64[1] = v39.i64[0];
  v45 = v11;
  v44 = v10;
  v46 = *(a1 + 64);
  v12 = a2;
  v13 = v5;
  v14 = v41;
  if (v4)
  {
    if ([v12 count])
    {
      v15 = [v13 privateDatabase];
      if (v4[8] == 1)
      {
        v16 = [v12 fc_dictionaryWithKeySelector:sel_recordID];
        v17 = objc_alloc_init(FCCKPrivateFetchRecordsOperation);
        v18 = [v16 allKeys];
        [(FCCKPrivateFetchRecordsOperation *)v17 setRecordIDs:v18];

        [(FCOperation *)v17 setQualityOfService:v6];
        if (v6 == 9)
        {
          v19 = -1;
        }

        else
        {
          v19 = v6 == 33 || v6 == 25;
        }

        [(FCOperation *)v17 setRelativePriority:v19, v15];
        v25 = [objc_opt_class() desiredKeys];
        [(FCCKPrivateFetchRecordsOperation *)v17 setDesiredKeys:v25];

        v26 = [(FCOperation *)v17 operationID];
        v27 = FCCommandQueueLog;
        if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT))
        {
          v28 = v27;
          v29 = objc_opt_class();
          v30 = NSStringFromClass(v29);
          *buf = 138543874;
          *&buf[4] = v30;
          *&buf[12] = 2048;
          *&buf[14] = v4;
          *&buf[22] = 2114;
          v48 = v26;
          _os_log_impl(&dword_1B63EF000, v28, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> will perform fetch operation, operationID=%{public}@", buf, 0x20u);
        }

        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __107__FCModifyRecordsCommand_handleBatchOfLocalRecords_internalPrivateDataContext_qualityOfService_completion___block_invoke;
        v48 = &unk_1E7C3FEE0;
        v49 = v16;
        v50 = v4;
        v53 = v6;
        v52 = v14;
        v15 = v40;
        v31 = v40;
        v51 = v31;
        v32 = v16;
        [(FCCKPrivateFetchRecordsOperation *)v17 setFetchRecordsCompletionBlock:buf];
        [(FCCKPrivateDatabase *)v31 addOperation:v17];
      }

      else
      {
        v17 = objc_alloc_init(FCCKPrivateSaveRecordsOperation);
        [(FCCKPrivateFetchRecordsOperation *)v17 setRecordsToSave:v12];
        [(FCOperation *)v17 setQualityOfService:v6];
        if (v6 == 9)
        {
          v24 = -1;
        }

        else
        {
          v24 = v6 == 33 || v6 == 25;
        }

        [(FCOperation *)v17 setRelativePriority:v24, v39.i64[0]];
        [(FCCKPrivateFetchRecordsOperation *)v17 setSavePolicy:1];
        v33 = [(FCOperation *)v17 operationID];
        v34 = FCCommandQueueLog;
        if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT))
        {
          v35 = v34;
          v36 = objc_opt_class();
          v37 = NSStringFromClass(v36);
          *buf = 138543874;
          *&buf[4] = v37;
          *&buf[12] = 2048;
          *&buf[14] = v4;
          *&buf[22] = 2114;
          v48 = v33;
          _os_log_impl(&dword_1B63EF000, v35, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> will perform save operation, operationID=%{public}@", buf, 0x20u);
        }

        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __107__FCModifyRecordsCommand_handleBatchOfLocalRecords_internalPrivateDataContext_qualityOfService_completion___block_invoke_42;
        v48 = &unk_1E7C3FEB8;
        v49 = v4;
        v50 = v33;
        v51 = v14;
        v26 = v33;
        [(FCCKPrivateFetchRecordsOperation *)v17 setSaveRecordsCompletionBlock:buf];
        [(FCCKPrivateDatabase *)v15 addOperation:v17];
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
        *buf = 138543618;
        *&buf[4] = v23;
        *&buf[12] = 2048;
        *&buf[14] = v4;
        _os_log_impl(&dword_1B63EF000, v21, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> skipping work because CloudKit is not available", buf, 0x16u);
      }

      v42(v14, 0);
    }
  }

  v38 = *MEMORY[0x1E69E9840];
}

uint64_t __108__FCModifyRecordsCommand_handleLocalRecordsFromStream_internalPrivateDataContext_delegate_qualityOfService___block_invoke_2(uint64_t a1, uint64_t a2)
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

    return [(FCModifyRecordsCommand *)v7 handleLocalRecordsFromStream:v8 internalPrivateDataContext:v9 delegate:v10 qualityOfService:v11];
  }
}

void __107__FCModifyRecordsCommand_handleBatchOfLocalRecords_internalPrivateDataContext_qualityOfService_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v69 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v6 || [v6 fc_isCKUnknownItemError])
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v9 = *(a1 + 32);
    v10 = [v9 countByEnumeratingWithState:&v56 objects:v68 count:16];
    if (!v10)
    {
      goto LABEL_15;
    }

    v11 = v10;
    v12 = *v57;
    while (1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v57 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v56 + 1) + 8 * i);
        v15 = [*(a1 + 32) objectForKey:v14];
        v16 = [v5 objectForKey:v14];
        if (v16)
        {
          if (![*(a1 + 40) mergeLocalRecord:v15 withRemoteRecord:v16])
          {
            goto LABEL_13;
          }

          v17 = v8;
          v18 = v16;
        }

        else
        {
          v17 = v8;
          v18 = v15;
        }

        [v17 addObject:v18];
LABEL_13:
      }

      v11 = [v9 countByEnumeratingWithState:&v56 objects:v68 count:16];
      if (!v11)
      {
LABEL_15:

        v19 = FCCommandQueueLog;
        if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(a1 + 40);
          v21 = v19;
          v22 = objc_opt_class();
          v23 = NSStringFromClass(v22);
          v24 = *(a1 + 40);
          v25 = [v5 count];
          v26 = [v8 count];
          *buf = 138544130;
          v61 = v23;
          v62 = 2048;
          v63 = v24;
          v64 = 2048;
          v65 = v25;
          v66 = 2048;
          v67 = v26;
          _os_log_impl(&dword_1B63EF000, v21, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> fetched %lu records, and has %lu records to save after merging", buf, 0x2Au);
        }

        if ([v8 count] == 1)
        {
          v27 = FCCommandQueueLog;
          if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT))
          {
            v28 = *(a1 + 40);
            v29 = v27;
            v30 = objc_opt_class();
            v31 = NSStringFromClass(v30);
            v32 = *(a1 + 40);
            v33 = [v8 firstObject];
            v34 = [v33 changedKeys];
            *buf = 138543874;
            v61 = v31;
            v62 = 2048;
            v63 = v32;
            v64 = 2114;
            v65 = v34;
            _os_log_impl(&dword_1B63EF000, v29, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> will save record with changed keys: %{public}@", buf, 0x20u);
          }
        }

        if ([v8 count])
        {
          v35 = objc_alloc_init(FCCKPrivateSaveRecordsOperation);
          [(FCCKPrivateSaveRecordsOperation *)v35 setRecordsToSave:v8];
          [(FCOperation *)v35 setQualityOfService:*(a1 + 64)];
          v36 = *(a1 + 64);
          if (v36 == 9)
          {
            v37 = -1;
          }

          else
          {
            v37 = v36 == 33 || v36 == 25;
          }

          [(FCOperation *)v35 setRelativePriority:v37];
          [(FCCKPrivateSaveRecordsOperation *)v35 setSavePolicy:1];
          v39 = [(FCOperation *)v35 operationID];
          v40 = FCCommandQueueLog;
          if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT))
          {
            v41 = *(a1 + 40);
            v42 = v40;
            v43 = objc_opt_class();
            v44 = NSStringFromClass(v43);
            v45 = *(a1 + 40);
            *buf = 138543874;
            v61 = v44;
            v62 = 2048;
            v63 = v45;
            v64 = 2114;
            v65 = v39;
            _os_log_impl(&dword_1B63EF000, v42, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> will perform save operation, operationID=%{public}@", buf, 0x20u);
          }

          v53[0] = MEMORY[0x1E69E9820];
          v53[1] = 3221225472;
          v53[2] = __107__FCModifyRecordsCommand_handleBatchOfLocalRecords_internalPrivateDataContext_qualityOfService_completion___block_invoke_40;
          v53[3] = &unk_1E7C3FEB8;
          v53[4] = *(a1 + 40);
          v54 = v39;
          v55 = *(a1 + 56);
          v46 = v39;
          [(FCCKPrivateSaveRecordsOperation *)v35 setSaveRecordsCompletionBlock:v53];
          [(FCCKPrivateDatabase *)*(a1 + 48) addOperation:v35];
        }

        else
        {
          (*(*(a1 + 56) + 16))();
        }

        goto LABEL_35;
      }
    }
  }

  v38 = FCCommandQueueLog;
  if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_ERROR))
  {
    v48 = *(a1 + 40);
    v49 = v38;
    v50 = objc_opt_class();
    v51 = NSStringFromClass(v50);
    v52 = *(a1 + 40);
    *buf = 138543874;
    v61 = v51;
    v62 = 2048;
    v63 = v52;
    v64 = 2114;
    v65 = v7;
    _os_log_error_impl(&dword_1B63EF000, v49, OS_LOG_TYPE_ERROR, "<%{public}@ %p> encountered error fetching records: %{public}@", buf, 0x20u);
  }

  (*(*(a1 + 56) + 16))(*(a1 + 56), [*(a1 + 40) statusForCloudKitError:v7]);
LABEL_35:

  v47 = *MEMORY[0x1E69E9840];
}

void __107__FCModifyRecordsCommand_handleBatchOfLocalRecords_internalPrivateDataContext_qualityOfService_completion___block_invoke_40(uint64_t *a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = FCCommandQueueLog;
    if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[4];
      v9 = v7;
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = a1[4];
      v23 = 138543874;
      v24 = v11;
      v25 = 2048;
      v26 = v12;
      v27 = 2114;
      v28 = v6;
      _os_log_error_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_ERROR, "<%{public}@ %p> encountered error saving records after merge: %{public}@", &v23, 0x20u);
    }
  }

  else
  {
    [(FCModifyRecordsCommand *)a1[4] _didSaveRecords:v5];
  }

  v13 = [a1[4] statusForCloudKitError:v6];
  v14 = FCCommandQueueLog;
  if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT))
  {
    v15 = a1[4];
    v16 = v14;
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = a1[4];
    v20 = a1[5];
    v21 = FCCommandStatusDescription(v13);
    v23 = 138544130;
    v24 = v18;
    v25 = 2048;
    v26 = v19;
    v27 = 2114;
    v28 = v20;
    v29 = 2114;
    v30 = v21;
    _os_log_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> did perform save operation, operationID=%{public}@, status=%{public}@", &v23, 0x2Au);
  }

  (*(a1[6] + 16))(a1[6], [a1[4] statusForCloudKitError:v6]);

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_didSaveRecords:(uint64_t)a1
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = [MEMORY[0x1E696AAE8] mainBundle];
    v5 = [v4 bundleIdentifier];
    v6 = [v5 isEqualToString:@"com.apple.news"];

    if ((v6 & 1) == 0)
    {
      v7 = [MEMORY[0x1E695DF00] date];
      v8 = MEMORY[0x1E695DFD8];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __42__FCModifyRecordsCommand__didSaveRecords___block_invoke_2;
      v21[3] = &unk_1E7C371F8;
      v22 = v3;
      v9 = [v8 fc_set:v21];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v10 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v18;
        do
        {
          v13 = 0;
          do
          {
            if (*v18 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = FCZoneLastModifiedExternallySharedPreferenceKey(*(*(&v17 + 1) + 8 * v13));
            v15 = NewsCoreUserDefaults();
            [v15 setObject:v7 forKey:v14];

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
        }

        while (v11);
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __107__FCModifyRecordsCommand_handleBatchOfLocalRecords_internalPrivateDataContext_qualityOfService_completion___block_invoke_42(uint64_t *a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = FCCommandQueueLog;
    if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[4];
      v9 = v7;
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = a1[4];
      v23 = 138543874;
      v24 = v11;
      v25 = 2048;
      v26 = v12;
      v27 = 2114;
      v28 = v6;
      _os_log_error_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_ERROR, "<%{public}@ %p> encountered error saving records: %{public}@", &v23, 0x20u);
    }
  }

  else
  {
    [(FCModifyRecordsCommand *)a1[4] _didSaveRecords:v5];
  }

  v13 = [a1[4] statusForCloudKitError:v6];
  v14 = FCCommandQueueLog;
  if (os_log_type_enabled(FCCommandQueueLog, OS_LOG_TYPE_DEFAULT))
  {
    v15 = a1[4];
    v16 = v14;
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = a1[4];
    v20 = a1[5];
    v21 = FCCommandStatusDescription(v13);
    v23 = 138544130;
    v24 = v18;
    v25 = 2048;
    v26 = v19;
    v27 = 2114;
    v28 = v20;
    v29 = 2114;
    v30 = v21;
    _os_log_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> did perform save operation, operationID=%{public}@, status=%{public}@", &v23, 0x2Au);
  }

  (*(a1[6] + 16))();

  v22 = *MEMORY[0x1E69E9840];
}

void __42__FCModifyRecordsCommand__didSaveRecords___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * v8) recordID];
        v10 = [v9 zoneID];
        v11 = [v10 zoneName];
        [v3 addObject:v11];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end