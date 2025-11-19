@interface _DKPerformSyncUpChangeOperation
- (void)endOperation;
- (void)main;
- (void)performSyncUpChange;
@end

@implementation _DKPerformSyncUpChangeOperation

- (void)main
{
  v3 = objc_opt_class();
  if ([_DKSync2Coordinator shouldDeferSyncOperationWithClass:v3 syncType:self->_type transport:self->_transport peer:0 policy:self->_policy])
  {

    [(_DKPerformSyncUpChangeOperation *)self endOperation];
  }

  else
  {

    [(_DKPerformSyncUpChangeOperation *)self performSyncUpChange];
  }
}

- (void)endOperation
{
  v2.receiver = self;
  v2.super_class = _DKPerformSyncUpChangeOperation;
  [(_DKSyncCompositeOperation *)&v2 endOperation];
}

- (void)performSyncUpChange
{
  v29 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v2);

    v3 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    v4 = [*(a1 + 328) count];
    if (!(v4 | [*(a1 + 336) count]))
    {
      v5 = +[_CDLogging syncChannel];
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
LABEL_11:

        v19 = [a1 errors];
        v20 = +[_DKSyncErrors internalFailure];
        [v19 addObject:v20];

        [a1 endOperation];
        v21 = v3[354];
        v22 = *(a1 + v21);
        *(a1 + v21) = 0;

        v23 = *(a1 + 336);
        *(a1 + 336) = 0;

        goto LABEL_12;
      }

      v6 = [objc_opt_class() description];
      v18 = [*(a1 + 304) name];
      v25 = 138543618;
      v26 = v6;
      v27 = 2114;
      v28 = v18;
      _os_log_debug_impl(&dword_191750000, v5, OS_LOG_TYPE_DEBUG, "%{public}@: Skipping change sync up on transport %{public}@ because there are no changes", &v25, 0x16u);

LABEL_10:
      goto LABEL_11;
    }

    v5 = +[_DKSyncPeerStatusTracker sharedInstance];
    v6 = [v5 pseudoPeerForSyncTransportCloudUp];
    if (v6)
    {
      v7 = *(a1 + 296);
      v8 = [*(a1 + 304) name];
      v9 = [v7 additionsSyncHistoryForPeer:v6 transportName:v8 error:0];

      v10 = *(a1 + 296);
      v11 = [*(a1 + 304) name];
      v12 = [v10 deletionsSyncHistoryForPeer:v6 transportName:v11 error:0];

      v13 = [v9 lastSyncDate];
      v14 = [v12 lastSyncDate];
      v15 = [v13 laterDate:v14];

      v16 = -[_DKSyncHistory initWithLastSyncDate:lastDaySyncCount:]([_DKSyncHistory alloc], "initWithLastSyncDate:lastDaySyncCount:", v15, [v12 lastDaySyncCount] + objc_msgSend(v9, "lastDaySyncCount"));
      v17 = objc_opt_class();
      [_DKSync2Coordinator canPerformSyncOperationWithClass:v17 syncType:*(a1 + 320) history:v16 transport:*(a1 + 304) peer:v6 policy:*(a1 + 312)];

      v3 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    }

    else
    {
      v16 = +[_CDLogging syncChannel];
      if (!os_log_type_enabled(&v16->super, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_9;
      }

      v9 = [objc_opt_class() description];
      v12 = [*(a1 + 304) name];
      v25 = 138543618;
      v26 = v9;
      v27 = 2114;
      v28 = v12;
      _os_log_debug_impl(&dword_191750000, &v16->super, OS_LOG_TYPE_DEBUG, "%{public}@: Skipping change sync up on transport %{public}@ because of missing identity", &v25, 0x16u);
    }

LABEL_9:
    goto LABEL_10;
  }

LABEL_12:
  v24 = *MEMORY[0x1E69E9840];
}

@end