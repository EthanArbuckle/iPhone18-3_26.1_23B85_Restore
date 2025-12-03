@interface _DKPerformSyncUpHistoryOperation
- (id)initWithParent:(void *)parent localStorage:(void *)storage transport:(void *)transport peer:(void *)peer policy:(void *)policy type:;
- (void)endOperation;
- (void)main;
- (void)performSyncUpHistory;
@end

@implementation _DKPerformSyncUpHistoryOperation

- (void)main
{
  v3 = objc_opt_class();
  if ([_DKSync2Coordinator shouldDeferSyncOperationWithClass:v3 syncType:self->_type transport:self->_transport peer:0 policy:self->_policy])
  {

    [(_DKPerformSyncUpHistoryOperation *)self endOperation];
  }

  else
  {

    [(_DKPerformSyncUpHistoryOperation *)&self->super.super.super.super.isa performSyncUpHistory];
  }
}

- (void)endOperation
{
  v2.receiver = self;
  v2.super_class = _DKPerformSyncUpHistoryOperation;
  [(_DKSyncCompositeOperation *)&v2 endOperation];
}

- (id)initWithParent:(void *)parent localStorage:(void *)storage transport:(void *)transport peer:(void *)peer policy:(void *)policy type:
{
  parentCopy = parent;
  storageCopy = storage;
  transportCopy = transport;
  peerCopy = peer;
  policyCopy = policy;
  if (self)
  {
    v22.receiver = self;
    v22.super_class = _DKPerformSyncUpHistoryOperation;
    v17 = objc_msgSendSuper2(&v22, sel_initWithParent_, a2, storageCopy, parentCopy);
    v18 = v17;
    if (v17)
    {
      objc_storeStrong(v17 + 37, parent);
      objc_storeStrong(v18 + 38, storage);
      objc_storeStrong(v18 + 39, transport);
      objc_storeStrong(v18 + 40, peer);
      objc_storeStrong(v18 + 41, policy);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)performSyncUpHistory
{
  v46 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v3 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v3);

    v4 = +[_CDLogging syncChannel];
    v5 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      name = [OUTLINED_FUNCTION_2_18() name];
      OUTLINED_FUNCTION_0_28();
      OUTLINED_FUNCTION_1_22(&dword_191750000, v17, v18, "%{public}@: Queuing history sync up on transport %{public}@", v19, v20, v21, v22, v40);

      v5 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    }

    v6 = self[39];
    v7 = +[_CDLogging syncChannel];
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
    if (v6)
    {
      if (v8)
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        name2 = [OUTLINED_FUNCTION_2_18() name];
        OUTLINED_FUNCTION_0_28();
        OUTLINED_FUNCTION_1_22(&dword_191750000, v24, v25, "%{public}@: Creating history sync up subordinate operations on transport %{public}@", v26, v27, v28, v29, v40);

        v5 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
      }

      v9 = objc_opt_new();
      v10 = [[_DKPerformSyncUpHistoryAdditionsOperation alloc] initWithParent:self localStorage:self[37] transport:*(self + v5[1018]) peer:self[39] policy:self[40] type:self[41]];
      if ([v9 count])
      {
        lastObject = [v9 lastObject];
        [v10 addDependency:lastObject];

        v5 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
      }

      [v9 addObject:v10];
      v12 = [[_DKPerformSyncUpHistoryDeletionsOperation alloc] initWithParent:self sibling:v10 localStorage:self[37] transport:*(self + v5[1018]) peer:self[39] policy:self[40] type:self[41]];
      if ([v9 count])
      {
        lastObject2 = [v9 lastObject];
        [v12 addDependency:lastObject2];
      }

      [v9 addObject:v12];
      [_DKSyncSerializer addOperations:v9 waitUntilFinished:0];
      v14 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v30 = [objc_opt_class() description];
        v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
        name3 = [self[38] name];
        v40 = 138543874;
        v41 = v30;
        v42 = 2112;
        v43 = v31;
        v44 = 2114;
        v45 = name3;
        _os_log_debug_impl(&dword_191750000, v14, OS_LOG_TYPE_DEBUG, "%{public}@: Done queuing %@ subordinate history sync up operations on transport %{public}@", &v40, 0x20u);
      }
    }

    else
    {
      if (v8)
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        name4 = [OUTLINED_FUNCTION_2_18() name];
        OUTLINED_FUNCTION_0_28();
        OUTLINED_FUNCTION_1_22(&dword_191750000, v34, v35, "%{public}@: No peer available for history sync up on transport %{public}@", v36, v37, v38, v39, v40);
      }

      [self endOperation];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

@end