@interface _DKPerformSyncDownOperation
- (id)initWithParent:(void *)a3 localStorage:(void *)a4 transport:(void *)a5 peers:(void *)a6 policy:(void *)a7 type:;
- (void)endOperation;
- (void)main;
- (void)performSyncDown;
- (void)performSyncDown2;
@end

@implementation _DKPerformSyncDownOperation

- (void)main
{
  v3 = objc_opt_class();
  if ([_DKSync2Coordinator shouldDeferSyncOperationWithClass:v3 syncType:self->_type transport:self->_transport peer:0 policy:self->_policy])
  {

    [(_DKPerformSyncDownOperation *)self endOperation];
  }

  else
  {

    [(_DKPerformSyncDownOperation *)&self->super.super.super.super.isa performSyncDown];
  }
}

- (void)endOperation
{
  v2.receiver = self;
  v2.super_class = _DKPerformSyncDownOperation;
  [(_DKSyncCompositeOperation *)&v2 endOperation];
}

- (id)initWithParent:(void *)a3 localStorage:(void *)a4 transport:(void *)a5 peers:(void *)a6 policy:(void *)a7 type:
{
  v21 = a3;
  v20 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (a1)
  {
    v22.receiver = a1;
    v22.super_class = _DKPerformSyncDownOperation;
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

- (void)performSyncDown
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v2);

    v3 = objc_opt_new();
    if ([a1[39] count])
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      obj = a1[39];
      v4 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v14;
        while (2)
        {
          v7 = 0;
          do
          {
            if (*v14 != v6)
            {
              objc_enumerationMutation(obj);
            }

            v8 = *(*(&v13 + 1) + 8 * v7);
            v9 = objc_opt_class();
            if (([_DKSync2Coordinator canPerformSyncOperationWithClass:v9 syncType:a1[41] history:v3 transport:a1[38] peer:v8 policy:a1[40]]& 1) != 0)
            {

              goto LABEL_15;
            }

            ++v7;
          }

          while (v5 != v7);
          v5 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v5)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      v10 = objc_opt_class();
      if (([_DKSync2Coordinator canPerformSyncOperationWithClass:v10 syncType:a1[41] history:v3 transport:a1[38] peer:0 policy:a1[40]]& 1) != 0)
      {
LABEL_15:
        [(_DKPerformSyncDownOperation *)a1 performSyncDown2];
        goto LABEL_16;
      }
    }

    [a1 endOperation];
LABEL_16:
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)performSyncDown2
{
  v64 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v2);

    v3 = 0x1E7366000uLL;
    if (![a1[39] count])
    {
      v4 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v37 = [objc_opt_class() description];
        v38 = [a1[38] name];
        *buf = 138543618;
        v54 = v37;
        v55 = 2114;
        v56 = v38;
        _os_log_debug_impl(&dword_191750000, v4, OS_LOG_TYPE_DEBUG, "%{public}@: Finding peers for sync down operation on transport %{public}@", buf, 0x16u);
      }

      v5 = +[_DKSyncPeerStatusTracker sharedInstance];
      v6 = [v5 peersWithActiveTransports:{objc_msgSend(a1[38], "transportType")}];
      v7 = a1[39];
      a1[39] = v6;
    }

    v8 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v31 = [objc_opt_class() description];
      v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a1[39], "count")}];
      v33 = [a1[38] name];
      *buf = 138543874;
      v54 = v31;
      v55 = 2112;
      v56 = v32;
      v57 = 2114;
      v58 = v33;
      _os_log_debug_impl(&dword_191750000, v8, OS_LOG_TYPE_DEBUG, "%{public}@: Creating %@ sync down subordinate operations on transport %{public}@", buf, 0x20u);
    }

    v9 = objc_opt_new();
    if ([a1[39] count])
    {
      [a1[38] clearPrewarmedFlag];
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v10 = a1[39];
      v11 = [v10 countByEnumeratingWithState:&v49 objects:v63 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = 0;
        v14 = *v50;
        do
        {
          v15 = 0;
          do
          {
            if (*v50 != v14)
            {
              objc_enumerationMutation(v10);
            }

            v16 = *(*(&v49 + 1) + 8 * v15);
            v17 = [v16 sourceDeviceID];

            if (v17)
            {
              v18 = [[_DKPerformSyncDownPeerOperation alloc] initWithParent:a1 localStorage:a1[37] transport:a1[38] peer:v16 policy:a1[40] type:a1[41]];

              if ([v9 count])
              {
                v19 = [v9 lastObject];
                [v18 addDependency:v19];
              }

              [v9 addObject:v18];
              v13 = v18;
            }

            else
            {
              v20 = v3;
              v21 = [*(v3 + 648) syncChannel];
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
              {
                v48 = [objc_opt_class() description];
                v22 = [v16 me];
                v23 = @"pseudo ";
                if (!v22)
                {
                  v23 = &stru_1F05B9908;
                }

                v45 = v23;
                v47 = [v16 identifier];
                v24 = [v16 model];
                v25 = &stru_1F05B9908;
                v46 = v24;
                if (v24)
                {
                  v43 = MEMORY[0x1E696AEC0];
                  v42 = [v16 model];
                  v41 = [v43 stringWithFormat:@" (%@)", v42];
                  v25 = v41;
                }

                v44 = v25;
                v26 = [a1[38] name];
                *buf = 138544386;
                v54 = v48;
                v55 = 2114;
                v56 = v45;
                v57 = 2114;
                v58 = v47;
                v59 = 2114;
                v60 = v44;
                v61 = 2114;
                v62 = v26;
                _os_log_debug_impl(&dword_191750000, v21, OS_LOG_TYPE_DEBUG, "%{public}@: Skipping %{public}@peer %{public}@%{public}@ for sync down operation on transport %{public}@ due to missing source device id", buf, 0x34u);

                if (v46)
                {
                }
              }

              v3 = v20;
            }

            ++v15;
          }

          while (v12 != v15);
          v27 = [v10 countByEnumeratingWithState:&v49 objects:v63 count:16];
          v12 = v27;
        }

        while (v27);
      }

      else
      {
        v13 = 0;
      }
    }

    if ([v9 count])
    {
      [_DKSyncSerializer addOperations:v9 waitUntilFinished:0];
    }

    else
    {
      v28 = [*(v3 + 648) syncChannel];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v39 = [objc_opt_class() description];
        v40 = [a1[38] name];
        *buf = 138543618;
        v54 = v39;
        v55 = 2114;
        v56 = v40;
        _os_log_debug_impl(&dword_191750000, v28, OS_LOG_TYPE_DEBUG, "%{public}@: No peers to sync down on transport %{public}@", buf, 0x16u);
      }

      [a1 endOperation];
    }

    v29 = [*(v3 + 648) syncChannel];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v34 = [objc_opt_class() description];
      v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
      v36 = [a1[38] name];
      *buf = 138543874;
      v54 = v34;
      v55 = 2112;
      v56 = v35;
      v57 = 2114;
      v58 = v36;
      _os_log_debug_impl(&dword_191750000, v29, OS_LOG_TYPE_DEBUG, "%{public}@: Done queuing %@ subordinate sync down operations on transport %{public}@", buf, 0x20u);
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

@end