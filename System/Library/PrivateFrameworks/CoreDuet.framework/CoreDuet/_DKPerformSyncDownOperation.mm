@interface _DKPerformSyncDownOperation
- (id)initWithParent:(void *)parent localStorage:(void *)storage transport:(void *)transport peers:(void *)peers policy:(void *)policy type:;
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

- (id)initWithParent:(void *)parent localStorage:(void *)storage transport:(void *)transport peers:(void *)peers policy:(void *)policy type:
{
  parentCopy = parent;
  storageCopy = storage;
  transportCopy = transport;
  peersCopy = peers;
  policyCopy = policy;
  if (self)
  {
    v22.receiver = self;
    v22.super_class = _DKPerformSyncDownOperation;
    v17 = objc_msgSendSuper2(&v22, sel_initWithParent_, a2, storageCopy, parentCopy);
    v18 = v17;
    if (v17)
    {
      objc_storeStrong(v17 + 37, parent);
      objc_storeStrong(v18 + 38, storage);
      objc_storeStrong(v18 + 39, transport);
      objc_storeStrong(v18 + 40, peers);
      objc_storeStrong(v18 + 41, policy);
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
  if (self)
  {
    v2 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v2);

    v3 = objc_opt_new();
    if ([self[39] count])
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      obj = self[39];
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
            if (([_DKSync2Coordinator canPerformSyncOperationWithClass:v9 syncType:self[41] history:v3 transport:self[38] peer:v8 policy:self[40]]& 1) != 0)
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
      if (([_DKSync2Coordinator canPerformSyncOperationWithClass:v10 syncType:self[41] history:v3 transport:self[38] peer:0 policy:self[40]]& 1) != 0)
      {
LABEL_15:
        [(_DKPerformSyncDownOperation *)self performSyncDown2];
        goto LABEL_16;
      }
    }

    [self endOperation];
LABEL_16:
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)performSyncDown2
{
  v64 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v2);

    v3 = 0x1E7366000uLL;
    if (![self[39] count])
    {
      v4 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v37 = [objc_opt_class() description];
        name = [self[38] name];
        *buf = 138543618;
        v54 = v37;
        v55 = 2114;
        v56 = name;
        _os_log_debug_impl(&dword_191750000, v4, OS_LOG_TYPE_DEBUG, "%{public}@: Finding peers for sync down operation on transport %{public}@", buf, 0x16u);
      }

      v5 = +[_DKSyncPeerStatusTracker sharedInstance];
      v6 = [v5 peersWithActiveTransports:{objc_msgSend(self[38], "transportType")}];
      v7 = self[39];
      self[39] = v6;
    }

    v8 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v31 = [objc_opt_class() description];
      v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(self[39], "count")}];
      name2 = [self[38] name];
      *buf = 138543874;
      v54 = v31;
      v55 = 2112;
      v56 = v32;
      v57 = 2114;
      v58 = name2;
      _os_log_debug_impl(&dword_191750000, v8, OS_LOG_TYPE_DEBUG, "%{public}@: Creating %@ sync down subordinate operations on transport %{public}@", buf, 0x20u);
    }

    v9 = objc_opt_new();
    if ([self[39] count])
    {
      [self[38] clearPrewarmedFlag];
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v10 = self[39];
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
            sourceDeviceID = [v16 sourceDeviceID];

            if (sourceDeviceID)
            {
              v18 = [[_DKPerformSyncDownPeerOperation alloc] initWithParent:self localStorage:self[37] transport:self[38] peer:v16 policy:self[40] type:self[41]];

              if ([v9 count])
              {
                lastObject = [v9 lastObject];
                [v18 addDependency:lastObject];
              }

              [v9 addObject:v18];
              v13 = v18;
            }

            else
            {
              v20 = v3;
              syncChannel = [*(v3 + 648) syncChannel];
              if (os_log_type_enabled(syncChannel, OS_LOG_TYPE_DEBUG))
              {
                v48 = [objc_opt_class() description];
                v22 = [v16 me];
                v23 = @"pseudo ";
                if (!v22)
                {
                  v23 = &stru_1F05B9908;
                }

                v45 = v23;
                identifier = [v16 identifier];
                model = [v16 model];
                v25 = &stru_1F05B9908;
                v46 = model;
                if (model)
                {
                  v43 = MEMORY[0x1E696AEC0];
                  model2 = [v16 model];
                  v41 = [v43 stringWithFormat:@" (%@)", model2];
                  v25 = v41;
                }

                v44 = v25;
                name3 = [self[38] name];
                *buf = 138544386;
                v54 = v48;
                v55 = 2114;
                v56 = v45;
                v57 = 2114;
                v58 = identifier;
                v59 = 2114;
                v60 = v44;
                v61 = 2114;
                v62 = name3;
                _os_log_debug_impl(&dword_191750000, syncChannel, OS_LOG_TYPE_DEBUG, "%{public}@: Skipping %{public}@peer %{public}@%{public}@ for sync down operation on transport %{public}@ due to missing source device id", buf, 0x34u);

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
      syncChannel2 = [*(v3 + 648) syncChannel];
      if (os_log_type_enabled(syncChannel2, OS_LOG_TYPE_DEBUG))
      {
        v39 = [objc_opt_class() description];
        name4 = [self[38] name];
        *buf = 138543618;
        v54 = v39;
        v55 = 2114;
        v56 = name4;
        _os_log_debug_impl(&dword_191750000, syncChannel2, OS_LOG_TYPE_DEBUG, "%{public}@: No peers to sync down on transport %{public}@", buf, 0x16u);
      }

      [self endOperation];
    }

    syncChannel3 = [*(v3 + 648) syncChannel];
    if (os_log_type_enabled(syncChannel3, OS_LOG_TYPE_DEBUG))
    {
      v34 = [objc_opt_class() description];
      v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
      name5 = [self[38] name];
      *buf = 138543874;
      v54 = v34;
      v55 = 2112;
      v56 = v35;
      v57 = 2114;
      v58 = name5;
      _os_log_debug_impl(&dword_191750000, syncChannel3, OS_LOG_TYPE_DEBUG, "%{public}@: Done queuing %@ subordinate sync down operations on transport %{public}@", buf, 0x20u);
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

@end