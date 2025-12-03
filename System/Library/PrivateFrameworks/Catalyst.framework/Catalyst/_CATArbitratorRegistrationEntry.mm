@interface _CATArbitratorRegistrationEntry
- (_CATArbitratorRegistrationEntry)initWithResource:(id)resource maxConcurrentCount:(unint64_t)count;
- (void)invalidate;
- (void)pendingWaitsNeedServicing;
- (void)resourceProxyDidInvalidate:(id)invalidate;
- (void)servicePendingWaitTokens;
@end

@implementation _CATArbitratorRegistrationEntry

- (_CATArbitratorRegistrationEntry)initWithResource:(id)resource maxConcurrentCount:(unint64_t)count
{
  resourceCopy = resource;
  if (resourceCopy)
  {
    if (count)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [_CATArbitratorRegistrationEntry initWithResource:maxConcurrentCount:];
    if (count)
    {
      goto LABEL_3;
    }
  }

  [_CATArbitratorRegistrationEntry initWithResource:maxConcurrentCount:];
LABEL_3:
  v22.receiver = self;
  v22.super_class = _CATArbitratorRegistrationEntry;
  v8 = [(_CATArbitratorRegistrationEntry *)&v22 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->mResource, resource);
    v9->mMaxConcurrentCount = count;
    v10 = objc_opt_new();
    mPendingWaits = v9->mPendingWaits;
    v9->mPendingWaits = v10;

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%p.pending-waits", objc_opt_class(), v9];
    v13 = dispatch_queue_create([v12 UTF8String], 0);
    mPendingWaitsQueue = v9->mPendingWaitsQueue;
    v9->mPendingWaitsQueue = v13;

    objc_initWeak(&location, v9);
    v15 = dispatch_source_create(MEMORY[0x277D85CE8], 0, 0, v9->mPendingWaitsQueue);
    mPendingWaitsSource = v9->mPendingWaitsSource;
    v9->mPendingWaitsSource = v15;

    v17 = v9->mPendingWaitsSource;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __71___CATArbitratorRegistrationEntry_initWithResource_maxConcurrentCount___block_invoke;
    handler[3] = &unk_278DA7120;
    objc_copyWeak(&v20, &location);
    dispatch_source_set_event_handler(v17, handler);
    dispatch_resume(v9->mPendingWaitsSource);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v9;
}

- (void)invalidate
{
  v3 = self->mPendingWaits;
  objc_sync_enter(v3);
  mResource = self->mResource;
  self->mResource = 0;

  self->mMaxConcurrentCount = 0;
  v5 = [(NSMutableArray *)self->mPendingWaits copy];
  [(NSMutableArray *)self->mPendingWaits removeAllObjects];
  [v5 makeObjectsPerformSelector:sel_cancel];

  objc_sync_exit(v3);
  mPendingWaitsSource = self->mPendingWaitsSource;

  dispatch_source_cancel(mPendingWaitsSource);
}

- (void)resourceProxyDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  v4 = self->mPendingWaits;
  objc_sync_enter(v4);
  if ([invalidateCopy isExclusive])
  {
    v5 = 0;
  }

  else
  {
    currentCount = self->_currentCount;
    if (!currentCount)
    {
      goto LABEL_6;
    }

    v5 = currentCount - 1;
  }

  self->_currentCount = v5;
LABEL_6:
  [(_CATArbitratorRegistrationEntry *)self pendingWaitsNeedServicing];
  objc_sync_exit(v4);
}

- (void)pendingWaitsNeedServicing
{
  obj = self->mPendingWaits;
  objc_sync_enter(obj);
  if ([(NSMutableArray *)self->mPendingWaits count])
  {
    dispatch_source_merge_data(self->mPendingWaitsSource, 1uLL);
  }

  objc_sync_exit(obj);
}

- (void)servicePendingWaitTokens
{
  while (1)
  {
    v3 = self->mPendingWaits;
    objc_sync_enter(v3);
    if (![(NSMutableArray *)self->mPendingWaits count])
    {
      objc_sync_exit(v3);
      v5 = v3;
      goto LABEL_7;
    }

    firstObject = [(NSMutableArray *)self->mPendingWaits firstObject];
    v4 = [(_CATArbitratorRegistrationEntry *)self makeResourceProxyIfPossibleWithoutLocking:[(NSMutableArray *)firstObject isExclusive]];
    if (!v4)
    {
      break;
    }

    [(NSMutableArray *)self->mPendingWaits removeObjectAtIndex:0];
    objc_sync_exit(v3);

    [(NSMutableArray *)firstObject notifyWithResourceProxy:v4];
    if (dispatch_source_testcancel(self->mPendingWaitsSource))
    {
      return;
    }
  }

  objc_sync_exit(v3);

  v5 = firstObject;
LABEL_7:
}

- (void)initWithResource:maxConcurrentCount:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"resource" object:? file:? lineNumber:? description:?];
}

- (void)initWithResource:maxConcurrentCount:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"maxConcurrentCount > 0" object:? file:? lineNumber:? description:?];
}

@end