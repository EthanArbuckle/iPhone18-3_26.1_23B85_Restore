@interface _DKPerformSyncUpHistoryOperation
- (id)initWithParent:(void *)a3 localStorage:(void *)a4 transport:(void *)a5 peer:(void *)a6 policy:(void *)a7 type:;
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

- (id)initWithParent:(void *)a3 localStorage:(void *)a4 transport:(void *)a5 peer:(void *)a6 policy:(void *)a7 type:
{
  v21 = a3;
  v20 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (a1)
  {
    v22.receiver = a1;
    v22.super_class = _DKPerformSyncUpHistoryOperation;
    v17 = objc_msgSendSuper2(&v22, sel_initWithParent_, a2, v20, v21);
    v18 = v17;
    if (v17)
    {
      objc_storeStrong(v17 + 37, a3);
      objc_storeStrong(v18 + 38, a4);
      objc_storeStrong(v18 + 39, a5);
      objc_storeStrong(v18 + 40, a6);
      objc_storeStrong(v18 + 41, a7);
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
  if (a1)
  {
    v3 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v3);

    v4 = +[_CDLogging syncChannel];
    v5 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      v16 = [OUTLINED_FUNCTION_2_18() name];
      OUTLINED_FUNCTION_0_28();
      OUTLINED_FUNCTION_1_22(&dword_191750000, v17, v18, "%{public}@: Queuing history sync up on transport %{public}@", v19, v20, v21, v22, v40);

      v5 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    }

    v6 = a1[39];
    v7 = +[_CDLogging syncChannel];
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
    if (v6)
    {
      if (v8)
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        v23 = [OUTLINED_FUNCTION_2_18() name];
        OUTLINED_FUNCTION_0_28();
        OUTLINED_FUNCTION_1_22(&dword_191750000, v24, v25, "%{public}@: Creating history sync up subordinate operations on transport %{public}@", v26, v27, v28, v29, v40);

        v5 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
      }

      v9 = objc_opt_new();
      v10 = [[_DKPerformSyncUpHistoryAdditionsOperation alloc] initWithParent:a1 localStorage:a1[37] transport:*(a1 + v5[1018]) peer:a1[39] policy:a1[40] type:a1[41]];
      if ([v9 count])
      {
        v11 = [v9 lastObject];
        [v10 addDependency:v11];

        v5 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
      }

      [v9 addObject:v10];
      v12 = [[_DKPerformSyncUpHistoryDeletionsOperation alloc] initWithParent:a1 sibling:v10 localStorage:a1[37] transport:*(a1 + v5[1018]) peer:a1[39] policy:a1[40] type:a1[41]];
      if ([v9 count])
      {
        v13 = [v9 lastObject];
        [v12 addDependency:v13];
      }

      [v9 addObject:v12];
      [_DKSyncSerializer addOperations:v9 waitUntilFinished:0];
      v14 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v30 = [objc_opt_class() description];
        v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
        v32 = [a1[38] name];
        v40 = 138543874;
        v41 = v30;
        v42 = 2112;
        v43 = v31;
        v44 = 2114;
        v45 = v32;
        _os_log_debug_impl(&dword_191750000, v14, OS_LOG_TYPE_DEBUG, "%{public}@: Done queuing %@ subordinate history sync up operations on transport %{public}@", &v40, 0x20u);
      }
    }

    else
    {
      if (v8)
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        v33 = [OUTLINED_FUNCTION_2_18() name];
        OUTLINED_FUNCTION_0_28();
        OUTLINED_FUNCTION_1_22(&dword_191750000, v34, v35, "%{public}@: No peer available for history sync up on transport %{public}@", v36, v37, v38, v39, v40);
      }

      [a1 endOperation];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

@end