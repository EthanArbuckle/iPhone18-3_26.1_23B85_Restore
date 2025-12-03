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
  if (self)
  {
    v2 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v2);

    v3 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    v4 = [*(self + 328) count];
    if (!(v4 | [*(self + 336) count]))
    {
      v5 = +[_CDLogging syncChannel];
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
LABEL_11:

        errors = [self errors];
        v20 = +[_DKSyncErrors internalFailure];
        [errors addObject:v20];

        [self endOperation];
        v21 = v3[354];
        v22 = *(self + v21);
        *(self + v21) = 0;

        v23 = *(self + 336);
        *(self + 336) = 0;

        goto LABEL_12;
      }

      pseudoPeerForSyncTransportCloudUp = [objc_opt_class() description];
      name = [*(self + 304) name];
      v25 = 138543618;
      v26 = pseudoPeerForSyncTransportCloudUp;
      v27 = 2114;
      v28 = name;
      _os_log_debug_impl(&dword_191750000, v5, OS_LOG_TYPE_DEBUG, "%{public}@: Skipping change sync up on transport %{public}@ because there are no changes", &v25, 0x16u);

LABEL_10:
      goto LABEL_11;
    }

    v5 = +[_DKSyncPeerStatusTracker sharedInstance];
    pseudoPeerForSyncTransportCloudUp = [v5 pseudoPeerForSyncTransportCloudUp];
    if (pseudoPeerForSyncTransportCloudUp)
    {
      v7 = *(self + 296);
      name2 = [*(self + 304) name];
      v9 = [v7 additionsSyncHistoryForPeer:pseudoPeerForSyncTransportCloudUp transportName:name2 error:0];

      v10 = *(self + 296);
      name3 = [*(self + 304) name];
      name4 = [v10 deletionsSyncHistoryForPeer:pseudoPeerForSyncTransportCloudUp transportName:name3 error:0];

      lastSyncDate = [v9 lastSyncDate];
      lastSyncDate2 = [name4 lastSyncDate];
      v15 = [lastSyncDate laterDate:lastSyncDate2];

      v16 = -[_DKSyncHistory initWithLastSyncDate:lastDaySyncCount:]([_DKSyncHistory alloc], "initWithLastSyncDate:lastDaySyncCount:", v15, [name4 lastDaySyncCount] + objc_msgSend(v9, "lastDaySyncCount"));
      v17 = objc_opt_class();
      [_DKSync2Coordinator canPerformSyncOperationWithClass:v17 syncType:*(self + 320) history:v16 transport:*(self + 304) peer:pseudoPeerForSyncTransportCloudUp policy:*(self + 312)];

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
      name4 = [*(self + 304) name];
      v25 = 138543618;
      v26 = v9;
      v27 = 2114;
      v28 = name4;
      _os_log_debug_impl(&dword_191750000, &v16->super, OS_LOG_TYPE_DEBUG, "%{public}@: Skipping change sync up on transport %{public}@ because of missing identity", &v25, 0x16u);
    }

LABEL_9:
    goto LABEL_10;
  }

LABEL_12:
  v24 = *MEMORY[0x1E69E9840];
}

@end