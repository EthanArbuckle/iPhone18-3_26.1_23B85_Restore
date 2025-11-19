@interface FIOperation
+ (id)uniqueNameByAppendingNumber:(id)a3 fileExtension:(id)a4;
- (BOOL)cancellable;
- (BOOL)cancelled;
- (BOOL)pausable;
- (BOOL)paused;
- (BOOL)requiresFPOperation;
- (FIOperation)init;
- (FPItem)destinationFPItem;
- (NSArray)sourceFPItems;
- (OperationMonitorEx)operationMonitor;
- (OperationStatus)operationStatus;
- (id).cxx_construct;
- (id)createOperationRef;
- (id)currentOperationRecord;
- (id)description;
- (id)initIterator;
- (id)makeOperationRecordForNode:(id)a3;
- (id)makeProgress;
- (uint64_t)executeAsFPOperation;
- (uint64_t)fetchNodesAsyncFor:(uint64_t)a1 completion:;
- (void)callOnOperationQueue:(id)a3;
- (void)cancel;
- (void)configureForNodes:(id)a3;
- (void)conflictHandler:(OperationErrorRecord *)a3 conflictIter:(const OperationIterator *)a4;
- (void)dealloc;
- (void)errorHandler:(OperationErrorRecord *)a3 errorIter:(const OperationIterator *)a4;
- (void)executeAsFPOperation;
- (void)fetchNodesAsyncFor:(id)a3 completion:(const void *)a4;
- (void)fetchNodesAsyncFor:completion:;
- (void)initIterator;
- (void)initOperationMonitor;
- (void)initOperationStatus;
- (void)invalidate;
- (void)markAsCancelled;
- (void)operationCompleted;
- (void)pause;
- (void)resume;
- (void)schedule;
- (void)setIterator:(OperationIterator *)a3;
- (void)setOperationMonitor:(OperationMonitorEx *)a3;
- (void)statusChangedHandlerPriv:(const OperationStatus *)a3;
- (void)tearDownCallbacks;
- (void)warningHandler:(OperationErrorRecord *)a3;
@end

@implementation FIOperation

- (FIOperation)init
{
  v10.receiver = self;
  v10.super_class = FIOperation;
  v2 = [(FIOperation *)&v10 init];
  [(FIOperation *)v2 setQualityOfService:25];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = dispatch_queue_create([v6 UTF8String], v4);
  dispatchQueue = v2->_dispatchQueue;
  v2->_dispatchQueue = v7;

  return v2;
}

- (void)dealloc
{
  v3 = [(FIOperation *)self progressSubscriber];
  if (v3)
  {
    [MEMORY[0x1E696AE38] removeSubscriber:v3];
  }

  operationRef = self->_operationRef;
  if (operationRef)
  {
    NodeDisposeOperation(operationRef);
    self->_operationRef = 0;
  }

  v5.receiver = self;
  v5.super_class = FIOperation;
  [(FIOperation *)&v5 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p %p>", v5, self, -[FIOperation operationRef](self, "operationRef")];

  return v6;
}

- (BOOL)cancellable
{
  v2 = [(FIOperation *)self progress];
  v3 = [v2 isCancellable];

  return v3;
}

- (void)cancel
{
  obj = [(FIOperation *)self progress];
  objc_sync_enter(obj);
  [obj cancel];
  objc_sync_exit(obj);
}

- (void)markAsCancelled
{
  obj = [(FIOperation *)self progress];
  objc_sync_enter(obj);
  [obj setCancellationHandler:0];
  [obj cancel];
  objc_sync_exit(obj);
}

- (BOOL)cancelled
{
  v2 = [(FIOperation *)self progress];
  v3 = [v2 isCancelled];

  return v3;
}

- (BOOL)pausable
{
  v2 = [(FIOperation *)self progress];
  v3 = [v2 isPausable];

  return v3;
}

- (void)pause
{
  v2 = [(FIOperation *)self progress];
  [v2 pause];
}

- (void)resume
{
  v2 = [(FIOperation *)self progress];
  [v2 resume];
}

- (BOOL)paused
{
  v2 = [(FIOperation *)self progress];
  v3 = [v2 isPaused];

  return v3;
}

- (void)callOnOperationQueue:(id)a3
{
  block = a3;
  v4 = [(FIOperation *)self dispatchQueue];
  dispatch_async(v4, block);
}

- (void)initOperationStatus
{
  v3 = [(FIOperation *)self sourceNodes];
  v4 = [v3 count];

  self->_operationStatus.fStage = 1;
  self->_operationStatus.fItemsTotal = v4;
  self->_operationStatus.fFSItemsTotal = v4;
}

- (void)initOperationMonitor
{
  self->_operationMonitor.fMonitorData = -1;
  self->_operationMonitor.fCancelRequested = 0;
  self->_operationMonitor.fStatus = &self->_operationStatus;
  *&self->_operationMonitor.fAccumulatedStatusMask = 0x1E00000000;
  self->_operationMonitor.fQueue = 0;
  self->_operationMonitor.fTickleProc = 0;
  self->_operationMonitor.fRequestSemaphoreID = 0;
  self->_operationMonitor.fUniqueNameProc = OperationUniqueNameProc;
  self->_operationMonitor.fVersion = 1;
  fEventHandler = self->_operationMonitor.fEventHandler;
  self->_operationMonitor.fEventHandler = 0;
}

+ (id)uniqueNameByAppendingNumber:(id)a3 fileExtension:(id)a4
{
  v6 = 0;
  OperationUniqueNameProc(a3, a2, a3, &v6);
  v4 = v6;
  v6 = 0;
  TAutoRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TAutoRef(&v6);

  return v4;
}

- (void)initIterator
{
  self->_iterator.fData = self;
  self->_iterator.fFirstProc = [FIOperation initIterator]::$_4::__invoke;
  self->_iterator.fNextProc = [FIOperation initIterator]::$_5::__invoke;
}

- (void)configureForNodes:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v7 = v5;
  IDContainerIteratorAdaptor<NSArray<FINode *>>::NSForwardIterator<NSArray<FINode *>>::NSForwardIterator(&obj, v4);
  IDContainerIteratorAdaptor<NSArray<FINode *>>::IDContainerIteratorAdaptor(v14, -1, v4);
  v8 = v6;
  v9 = v7;
  while (obj != v14[0] || v20 != v14[16])
  {
    v10 = *(v16[1] + 8 * v19);
    v11 = [(FIOperation *)v9 makeOperationRecordForNode:v10];
    [v8 addObject:v11];

    v12 = v19;
    if (v19 >= v18 - 1)
    {
      v13 = [obj countByEnumeratingWithState:v16 objects:v17 count:4];
      v12 = -1;
      v18 = v13;
      v19 = -1;
    }

    if (v17[4] != *v16[2])
    {
      objc_enumerationMutation(obj);
      v12 = v19;
    }

    v19 = v12 + 1;
    ++v20;
  }

  [(FIOperation *)v9 setOpRecords:v8];
  [(FIOperation *)v9 resetIterator];

  objc_sync_exit(v9);
}

- (id)makeOperationRecordForNode:(id)a3
{
  v4 = a3;
  v5 = [FIOperationRecord alloc];
  v6 = [(FIOperation *)self destinationNode];
  v7 = [(FIOperationRecord *)v5 initWithSource:v4 destination:v6 propertyList:0 requestedOperation:[(FIOperation *)self operationType]];

  return v7;
}

- (id)currentOperationRecord
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(FIOperation *)v2 opRecords];
  v4 = [(FIOperation *)v2 currentIndex];
  if (v4 >= [v3 count])
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 objectAtIndexedSubscript:v4];
  }

  objc_sync_exit(v2);

  return v5;
}

- (void)statusChangedHandlerPriv:(const OperationStatus *)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = [(FIOperation *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(FIOperation *)self progress];
  v47 = [v6 userInfo];
  v7 = [(FIOperation *)self hasChildProgress];
  if (a3->fStage - 3 < 7)
  {
    v8 = v7;
    if ([v6 totalUnitCount] != a3->fBytesTotal)
    {
      [v6 setTotalUnitCount:?];
    }

    if (!v8 && [v6 completedUnitCount] != a3->fBytesCompleted)
    {
      [v6 setCompletedUnitCount:?];
    }

    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:a3->fBytesCompleted];
    v10 = [v6 byteCompletedCount];
    v11 = [v10 isEqualToNumber:v9];

    if ((v11 & 1) == 0)
    {
      [v6 setByteCompletedCount:v9];
    }
  }

  v46 = [MEMORY[0x1E696AD98] numberWithLongLong:a3->fBytesTotal];
  v12 = [v6 byteTotalCount];
  v13 = [v12 isEqualToNumber:v46];

  if ((v13 & 1) == 0)
  {
    [v6 setByteTotalCount:v46];
  }

  p_fTimeEstimate = &a3->fTimeEstimate;
  v45 = [MEMORY[0x1E696AD98] numberWithLongLong:a3->fItemsCompleted];
  v15 = [v6 fileCompletedCount];
  v16 = [v15 isEqualToNumber:v45];

  if ((v16 & 1) == 0)
  {
    [v6 setFileCompletedCount:v45];
  }

  v44 = [MEMORY[0x1E696AD98] numberWithLongLong:a3->fItemsTotal];
  v17 = [v6 fileTotalCount];
  v18 = [v17 isEqualToNumber:v44];

  if ((v18 & 1) == 0)
  {
    [v6 setFileTotalCount:v44];
  }

  v43 = [MEMORY[0x1E696AD98] numberWithLongLong:a3->fFSItemsCompleted];
  v19 = [v47 objectForKeyedSubscript:@"FileSystemItemsCompleted"];
  v20 = [v19 isEqualToNumber:v43];

  if ((v20 & 1) == 0)
  {
    [v6 setUserInfoObject:v43 forKey:@"FileSystemItemsCompleted"];
  }

  v42 = [MEMORY[0x1E696AD98] numberWithLongLong:a3->fFSItemsTotal];
  v21 = [v47 objectForKeyedSubscript:@"FileSystemItemsTotal"];
  v22 = [v21 isEqualToNumber:v42];

  if ((v22 & 1) == 0)
  {
    [v6 setUserInfoObject:v42 forKey:@"FileSystemItemsTotal"];
  }

  v23 = *p_fTimeEstimate;
  v24 = [v6 estimatedTimeRemaining];

  v25 = [MEMORY[0x1E696AD98] numberWithLongLong:*p_fTimeEstimate];
  if ((v23 != -1) == (v24 == 0) || ([v6 estimatedTimeRemaining], v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "isEqualToNumber:", v25), v26, (v27 & 1) == 0))
  {
    if (v23 == -1)
    {
      v28 = 0;
    }

    else
    {
      v28 = v25;
    }

    [v6 setEstimatedTimeRemaining:v28];
  }

  TString::TString(v48, a3->fCurrentName);
  v29 = v48[0];
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v48);
  v30 = *MEMORY[0x1E696A818];
  v31 = [v47 objectForKeyedSubscript:*MEMORY[0x1E696A818]];
  v32 = [v31 isEqualToString:v29];

  if ((v32 & 1) == 0)
  {
    [v6 setUserInfoObject:v29 forKey:v30];
  }

  v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a3->fStage];
  v34 = [v47 objectForKeyedSubscript:@"OperationStage"];
  v35 = [v34 isEqualToNumber:v33];

  if ((v35 & 1) == 0)
  {
    [v6 setUserInfoObject:v33 forKey:@"OperationStage"];
  }

  fStage = a3->fStage;
  [(FIOperation *)self operationStatus];
  v37 = v48[0];
  LODWORD(v48[0]) = a3->fStage;
  v38 = *&a3->fItemsCompleted;
  v49 = *p_fTimeEstimate;
  v50 = v38;
  v51 = *&a3->fBytesCompleted;
  fFSItemsCompleted = a3->fFSItemsCompleted;
  strlcpy(v48 + 4, a3->fCurrentName, 0x400uLL);
  [(FIOperation *)self setOperationStatus:v48];
  v39 = [(FIOperation *)self stageChangedHandler];
  v40 = v39;
  if (v39 && fStage != v37)
  {
    (*(v39 + 16))(v39, self, a3->fStage);
  }

  v41 = *MEMORY[0x1E69E9840];
}

- (void)operationCompleted
{
  v3 = [(FIOperation *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(FIOperation *)self progressSubscriber];
  if (v4)
  {
    [MEMORY[0x1E696AE38] removeSubscriber:v4];
    [(FIOperation *)self setProgressSubscriber:0];
  }

  v5 = [(FIOperation *)self progress];
  if (([v5 isCancelled] & 1) == 0)
  {
    v6 = [v5 totalUnitCount];
    [v5 setTotalUnitCount:v6 & ~(v6 >> 63)];
    v7 = [v5 totalUnitCount];
    if (v7 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    [v5 setCompletedUnitCount:v8];
  }

  v9 = [(FIOperation *)self opRecords];
  v10 = Copy<NSMutableArray<FILocalAppContainerNode *>>(v9);

  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v10, "count")}];
  IDContainerIteratorAdaptor<NSArray<FIOperationRecord *>>::NSForwardIterator<NSArray<FIOperationRecord *>>::NSForwardIterator(&obj, v10);
  IDContainerIteratorAdaptor<NSArray<FIOperationRecord *>>::IDContainerIteratorAdaptor(v20, -1, v10);
  v12 = v11;
  while (obj != v20[0] || v26 != v20[16])
  {
    v13 = *(v22[1] + 8 * v25);
    v14 = [v13 targetNode];

    if (v14)
    {
      v15 = v12;
      [v15 addObject:v14];
    }

    v16 = v25;
    if (v25 >= v24 - 1)
    {
      v17 = [obj countByEnumeratingWithState:v22 objects:v23 count:4];
      v16 = -1;
      v24 = v17;
      v25 = -1;
    }

    if (v23[4] != *v22[2])
    {
      objc_enumerationMutation(obj);
      v16 = v25;
    }

    v25 = v16 + 1;
    ++v26;
  }

  v18 = [(FIOperation *)self completionHandler];
  v19 = v18;
  if (v18)
  {
    (*(v18 + 16))(v18, self, v12);
  }

  [(FIOperation *)self invalidate];
}

- (void)conflictHandler:(OperationErrorRecord *)a3 conflictIter:(const OperationIterator *)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = [(FIOperation *)self dispatchQueue:a3];
  dispatch_assert_queue_V2(v6);

  var5 = a3->var5;
  a3->var5 = 0;

  a3->var0 = 0;
  a3->var2 = 0;
  v8 = [(FIOperation *)self conflictHandler];
  if (v8)
  {
    v9 = [(FIOperation *)self opRecords];
    v10 = Copy<NSMutableArray<FILocalAppContainerNode *>>(v9);

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = *v19;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          if ([v15 conflict])
          {
            v16 = (v8)[2](v8, self, [v15 conflict], v15);
            [v15 setResolution:v16];
            if (v16 == 5)
            {
              a3->var2 = 5;
              [(FIOperation *)self markAsCancelled];
              goto LABEL_13;
            }
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  [(FIOperation *)self _postReplyWithResolution:a3->var2 result:a3->var0];
  v17 = *MEMORY[0x1E69E9840];
}

- (void)errorHandler:(OperationErrorRecord *)a3 errorIter:(const OperationIterator *)a4
{
  v6 = [(FIOperation *)self dispatchQueue:a3];
  dispatch_assert_queue_V2(v6);

  v7 = [[FIOperationError alloc] initWithErrorRecord:a3];
  v8 = [(FIOperation *)self errorHandler];
  v9 = v8;
  if (v8)
  {
    v10 = (*(v8 + 16))(v8, self, v7);
  }

  else
  {
    v10 = 0;
  }

  v21 = 0;
  Status = NodeGetStatus([(FIOperation *)self operationRef], &v21);
  if (v10)
  {
    v12 = [v10 error];
    if (!v12)
    {
      if ([v10 resolution] == 1)
      {
        goto LABEL_9;
      }

      v12 = [(FIOperationError *)v7 error];
      [v10 setError:v12];
    }
  }

LABEL_9:
  v13 = [v10 error];

  if (v13)
  {
    v14 = [v10 error];
  }

  else
  {
    if (Status)
    {
      v15 = Status;
    }

    else
    {
      v15 = v21;
    }

    v14 = ErrorWithOSStatus(v15, 0);
  }

  var5 = a3->var5;
  a3->var5 = v14;

  a3->var0 = TCFURLInfo::TranslateCFError(a3->var5, v17);
  if (!v10)
  {
    a3->var2 = 0;
    p_var2 = &a3->var2;
    goto LABEL_19;
  }

  v18 = [v10 resolution];
  a3->var2 = v18;
  p_var2 = &a3->var2;
  if (v18 != 1)
  {
LABEL_19:
    [(FIOperation *)self markAsCancelled];
    v20 = *p_var2;
    goto LABEL_20;
  }

  v20 = 1;
LABEL_20:
  [(FIOperation *)self _postReplyWithResolution:v20 result:a3->var0];
}

- (void)warningHandler:(OperationErrorRecord *)a3
{
  v16 = [(FIOperation *)self dispatchQueue];
  dispatch_assert_queue_V2(v16);

  v17 = [[FIOperationError alloc] initWithErrorRecord:a3];
  v5 = [(FIOperationError *)v17 error];
  v6 = [(FIOperation *)self warningHandler];
  v7 = v6;
  if (v6)
  {
    v8 = (*(v6 + 16))(v6, self, v17);
    v9 = [v8 error];

    a3->var2 = [v8 resolution];
  }

  else
  {
    v9 = v5;
  }

  v10 = IsUserCancelledErr(v9);
  v11 = a3->var2 == 5 || v10;
  if (!v9 || (v11 & 1) != 0)
  {
    objc_storeStrong(&a3->var5, v9);
    var0 = TCFURLInfo::TranslateCFError(v9, v12);
    var2 = 0;
    a3->var0 = var0;
    if (v11)
    {
      v15 = 5;
    }

    else
    {
      v15 = 0;
    }

    a3->var2 = v15;
    if (v11)
    {
      [(FIOperation *)self markAsCancelled:0];
      var2 = a3->var2;
      var0 = a3->var0;
    }

    [(FIOperation *)self _postReplyWithResolution:var2 result:var0];
  }

  else
  {
    [(FIOperation *)self errorHandler:a3 errorIter:0];
  }
}

- (id)createOperationRef
{
  v48[1] = *MEMORY[0x1E69E9840];
  [(FIOperation *)self initOperationStatus];
  [(FIOperation *)self initOperationMonitor];
  [(FIOperation *)self initIterator];
  v3 = [(FIOperation *)self sourceNodes];
  v4 = [v3 count];
  if (v4)
  {
    v5 = [(FIOperation *)self sourceNodes];
    v6 = v5;
  }

  else
  {
    v6 = [(FIOperation *)self destinationNode];
    v48[0] = v6;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
  }

  v7 = v5;
  [(FIOperation *)self configureForNodes:v5];
  if (!v4)
  {
  }

  v42[0] = &self->_iterator;
  v42[1] = &self->_operationMonitor;
  make_nsweak<FIRenameOperation>(self, &from);
  make_nsweak<FIRenameOperation>(self, &v40);
  make_nsweak<FIRenameOperation>(self, &v39);
  make_nsweak<FIRenameOperation>(self, &v38);
  make_nsweak<FIRenameOperation>(self, &v37);
  make_nsweak<FIRenameOperation>(self, &v36);
  make_nsweak<FIRenameOperation>(self, &location);
  LODWORD(v27) = 64;
  v43 = MEMORY[0x1E69E9820];
  v44 = 3321888768;
  v45 = ___ZZ33__FIOperation_createOperationRef_ENK3__6cvU13block_pointerFv15OperationStatusEEv_block_invoke;
  v46 = &__block_descriptor_40_ea8_32c46_ZTSKZ33__FIOperation_createOperationRef_E3__6_e42_v1096__0_OperationStatus_I_1024c_qqqqqqq_8l;
  objc_copyWeak(&v47, &from);
  v8 = MEMORY[0x1E692D6D0](&v43);
  objc_destroyWeak(&v47);
  v9 = v8;
  v28 = MEMORY[0x1E692D6D0](v8);
  v43 = MEMORY[0x1E69E9820];
  v44 = 3321888768;
  v45 = ___ZZ33__FIOperation_createOperationRef_ENK3__7cvU13block_pointerFvvEEv_block_invoke;
  v46 = &__block_descriptor_40_ea8_32c46_ZTSKZ33__FIOperation_createOperationRef_E3__7_e5_v8__0l;
  objc_copyWeak(&v47, &v40);
  v10 = MEMORY[0x1E692D6D0](&v43);
  objc_destroyWeak(&v47);
  v11 = v10;
  v29 = MEMORY[0x1E692D6D0](v10);
  v43 = MEMORY[0x1E69E9820];
  v44 = 3321888768;
  v45 = ___ZZ33__FIOperation_createOperationRef_ENK4__10cvU13block_pointerFvP20OperationErrorRecordEEv_block_invoke;
  v46 = &__block_descriptor_40_ea8_32c47_ZTSKZ33__FIOperation_createOperationRef_E4__10_e43_v16__0__OperationErrorRecord_iII_1024c_B__8l;
  objc_copyWeak(&v47, &v37);
  v12 = MEMORY[0x1E692D6D0](&v43);
  objc_destroyWeak(&v47);
  v13 = v12;
  v30 = MEMORY[0x1E692D6D0](v12);
  v43 = MEMORY[0x1E69E9820];
  v44 = 3321888768;
  v45 = ___ZZ33__FIOperation_createOperationRef_ENK3__8cvU13block_pointerFvP20OperationErrorRecordPK17OperationIteratorEEv_block_invoke;
  v46 = &__block_descriptor_40_ea8_32c46_ZTSKZ33__FIOperation_createOperationRef_E3__8_e93_v24__0__OperationErrorRecord_iII_1024c_B__8r__OperationIterator___OpaqueOperationData______16l;
  objc_copyWeak(&v47, &v39);
  v14 = MEMORY[0x1E692D6D0](&v43);
  objc_destroyWeak(&v47);
  v15 = v14;
  v31 = MEMORY[0x1E692D6D0](v14);
  v43 = MEMORY[0x1E69E9820];
  v44 = 3321888768;
  v45 = ___ZZ33__FIOperation_createOperationRef_ENK3__9cvU13block_pointerFvP20OperationErrorRecordPK17OperationIteratorEEv_block_invoke;
  v46 = &__block_descriptor_40_ea8_32c46_ZTSKZ33__FIOperation_createOperationRef_E3__9_e93_v24__0__OperationErrorRecord_iII_1024c_B__8r__OperationIterator___OpaqueOperationData______16l;
  objc_copyWeak(&v47, &v38);
  v16 = MEMORY[0x1E692D6D0](&v43);
  objc_destroyWeak(&v47);
  v17 = v16;
  v32 = MEMORY[0x1E692D6D0](v16);
  v43 = MEMORY[0x1E69E9820];
  v44 = 3321888768;
  v45 = ___ZZ33__FIOperation_createOperationRef_ENK4__11cvU13block_pointerFv16NodeSuboperationEEv_block_invoke;
  v46 = &__block_descriptor_40_ea8_32c47_ZTSKZ33__FIOperation_createOperationRef_E4__11_e8_v12__0I8l;
  objc_copyWeak(&v47, &v36);
  v18 = MEMORY[0x1E692D6D0](&v43);
  objc_destroyWeak(&v47);
  v19 = v18;
  v33 = MEMORY[0x1E692D6D0](v18);
  v43 = MEMORY[0x1E69E9820];
  v44 = 3321888768;
  v45 = ___ZZ33__FIOperation_createOperationRef_ENK4__12cvU13block_pointerFv16NodeSuboperationP13OpaqueNodeRefEEv_block_invoke;
  v46 = &__block_descriptor_40_ea8_32c47_ZTSKZ33__FIOperation_createOperationRef_E4__12_e27_v20__0I8__OpaqueNodeRef__12l;
  objc_copyWeak(&v47, &location);
  v20 = MEMORY[0x1E692D6D0](&v43);
  objc_destroyWeak(&v47);
  v21 = v20;
  v34 = MEMORY[0x1E692D6D0](v20);
  v22 = [(FIOperation *)self authorizationPrompt];
  v23 = NodeDSCreateOperation(v42, &self->_operationRef, &v27, v22, 0, 0);

  v24 = ErrorWithOSStatus(v23, &cfstr_FailedToCreate_1.isa);

  objc_destroyWeak(&location);
  objc_destroyWeak(&v36);
  objc_destroyWeak(&v37);
  objc_destroyWeak(&v38);
  objc_destroyWeak(&v39);
  objc_destroyWeak(&v40);
  objc_destroyWeak(&from);
  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (void)tearDownCallbacks
{
  [(FIOperation *)self setStageChangedHandler:0];
  [(FIOperation *)self setConflictHandler:0];
  [(FIOperation *)self setWarningHandler:0];
  [(FIOperation *)self setErrorHandler:0];
  [(FIOperation *)self setSubOperationStartedHandler:0];
  [(FIOperation *)self setSubOperationCompletedHandler:0];
  [(FIOperation *)self setCompletionHandler:0];

  [(FIOperation *)self setErrorRecoveryHandler:0];
}

- (id)makeProgress
{
  v3 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:-1];
  [v3 setKind:*MEMORY[0x1E696A888]];
  [v3 setUserInfoObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E696A8A0]];
  make_nsweak<FIRenameOperation>(self, &from);
  objc_copyWeak(&to, &from);
  v18 = MEMORY[0x1E69E9820];
  v19 = 3321888768;
  v20 = ___ZZ27__FIOperation_makeProgress_ENK4__13cvU13block_pointerFvvEEv_block_invoke;
  v21 = &__block_descriptor_40_ea8_32c41_ZTSKZ27__FIOperation_makeProgress_E4__13_e5_v8__0l;
  objc_copyWeak(&v22, &to);
  v4 = MEMORY[0x1E692D6D0](&v18);
  objc_destroyWeak(&v22);
  [v3 setCancellationHandler:v4];

  objc_destroyWeak(&to);
  objc_copyWeak(&location, &from);
  v18 = MEMORY[0x1E69E9820];
  v19 = 3321888768;
  v20 = ___ZZ27__FIOperation_makeProgress_ENK4__14cvU13block_pointerFvvEEv_block_invoke;
  v21 = &__block_descriptor_40_ea8_32c41_ZTSKZ27__FIOperation_makeProgress_E4__14_e5_v8__0l;
  objc_copyWeak(&v22, &location);
  v5 = MEMORY[0x1E692D6D0](&v18);
  objc_destroyWeak(&v22);
  [v3 setPausingHandler:v5];

  objc_destroyWeak(&location);
  objc_copyWeak(&v14, &from);
  v18 = MEMORY[0x1E69E9820];
  v19 = 3321888768;
  v20 = ___ZZ27__FIOperation_makeProgress_ENK4__15cvU13block_pointerFvvEEv_block_invoke;
  v21 = &__block_descriptor_40_ea8_32c41_ZTSKZ27__FIOperation_makeProgress_E4__15_e5_v8__0l;
  objc_copyWeak(&v22, &v14);
  v6 = MEMORY[0x1E692D6D0](&v18);
  objc_destroyWeak(&v22);
  [v3 setResumingHandler:v6];

  objc_destroyWeak(&v14);
  objc_copyWeak(&v13, &from);
  v7 = MEMORY[0x1E696AE38];
  v8 = [(FIOperation *)self destinationNode];
  v9 = [v8 fileURL];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3321888768;
  v20 = ___ZZ27__FIOperation_makeProgress_ENK4__16cvU13block_pointerFU13block_pointerFvvEP10NSProgressEEv_block_invoke;
  v21 = &__block_descriptor_40_ea8_32c41_ZTSKZ27__FIOperation_makeProgress_E4__16_e26____v___16__0__NSProgress_8l;
  objc_copyWeak(&v22, &v13);
  v10 = MEMORY[0x1E692D6D0](&v18);
  objc_destroyWeak(&v22);
  v11 = [v7 addSubscriberForFileURL:v9 withPublishingHandler:v10];
  [(FIOperation *)self setProgressSubscriber:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&from);

  return v3;
}

- (void)schedule
{
  obj = self;
  objc_sync_enter(obj);
  if ([(FIOperation *)obj waitingForNodes])
  {
    [(FIOperation *)obj setScheduleWasDeferred:1];
    objc_sync_exit(obj);
    v2 = obj;
LABEL_14:

    return;
  }

  [(FIOperation *)obj setScheduleWasDeferred:0];
  objc_sync_exit(obj);

  [(FIOperation *)obj setSelfReference:obj];
  if (![(FIOperation *)obj requiresFPOperation])
  {
    v3 = [(FIOperation *)obj makeProgress];
    progress = obj->_progress;
    obj->_progress = v3;

    v10 = [(FIOperation *)obj createOperationRef];
    if (v10)
    {
      v5 = [(FIOperation *)obj errorHandler];
      if (v5)
      {
        v6 = [[FIOperationError alloc] initWithError:v10];
        v7 = (v5)[2](v5, obj, v6);
      }

      [(FIOperation *)obj markAsCancelled];
      v8 = [(FIOperation *)obj completionHandler];
      v9 = v8;
      if (v8)
      {
        (*(v8 + 16))(v8, obj, MEMORY[0x1E695E0F0]);
      }
    }

    v2 = v10;
    goto LABEL_14;
  }

  [(FIOperation *)obj executeAsFPOperation];
}

- (void)invalidate
{
  [(FIOperation *)self tearDownCallbacks];

  [(FIOperation *)self setSelfReference:0];
}

- (BOOL)requiresFPOperation
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(FIOperation *)v2 destinationNode];
  v4 = [v3 requiresFPOperations];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(FIOperation *)v2 sourceNodes];
    IDContainerIteratorAdaptor<NSArray<FINode *>>::NSForwardIterator<NSArray<FINode *>>::NSForwardIterator(v14, v6);
    IDContainerIteratorAdaptor<NSArray<FINode *>>::IDContainerIteratorAdaptor(v13, -1, v6);
    IDContainerIteratorAdaptor<NSArray<FINode *>>::NSForwardIterator<NSArray<FINode *>>::NSForwardIterator(&v16, v14);
    IDContainerIteratorAdaptor<NSArray<FINode *>>::NSForwardIterator<NSArray<FINode *>>::NSForwardIterator(v15, v13);
    while (1)
    {
      v7 = v15[0];
      if (v16 == v15[0] && v21 == v15[16])
      {
        break;
      }

      v8 = *(v17[1] + 8 * v20);
      v9 = [v8 requiresFPOperations];

      if (v9)
      {
        v5 = 1;
        v7 = v15[0];
        goto LABEL_14;
      }

      v10 = v20;
      if (v20 >= v19 - 1)
      {
        v11 = [v16 countByEnumeratingWithState:v17 objects:v18 count:4];
        v10 = -1;
        v19 = v11;
        v20 = -1;
      }

      if (v18[4] != *v17[2])
      {
        objc_enumerationMutation(v16);
        v10 = v20;
      }

      v20 = v10 + 1;
      ++v21;
    }

    v5 = 0;
LABEL_14:
  }

  objc_sync_exit(v2);

  return v5;
}

- (void)executeAsFPOperation
{
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:(a2[1] - *a2) >> 4];
  v5 = *a2;
  v6 = a2[1];
  for (i = v4; v5 != v6; v5 += 16)
  {
    if (*(v5 + 8) == 1)
    {
      v7 = *v5;
      [i addObject:v7];
    }
  }

  v8 = *(a1 + 8);
  (*(*(a1 + 16) + 16))();
}

- (void)fetchNodesAsyncFor:(id)a3 completion:(const void *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = a3;
  if (![v15 count])
  {
    v5 = LogObj(8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = self;
      _os_log_impl(&dword_1E5674000, v5, OS_LOG_TYPE_ERROR, "Received an empty list of items to convert to nodes: %@", &buf, 0xCu);
    }
  }

  if ([v15 count])
  {
    buf = 0u;
    v18 = 0u;
    LODWORD(v19) = 1065353216;
    v6 = +[FINode providerDomainsContainer];
    v7 = [v6 iteratorWithOptions:0x40000];

    v8 = [v7 first];
    if (v8)
    {
      do
      {
        v9 = [v8 fiDomain];
        v10 = [v8 fiDomain];
        from = [v10 domainID];
        v11 = std::__hash_table<std::__hash_value_type<NSString * {__strong},FIProviderDomain * {__strong}>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},FIProviderDomain * {__strong}>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},FIProviderDomain * {__strong}>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},FIProviderDomain * {__strong}>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * {__strong}&&>,std::tuple<>>(&buf, &from);
        v12 = v11[3];
        v11[3] = v9;

        v13 = [v7 next];

        v8 = v13;
      }

      while (v13);
    }

    operator new();
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __45__FIOperation_fetchNodesAsyncFor_completion___block_invoke(uint64_t a1)
{
  v2 = TNSWeakPtr<FIOperation>::Lock((a1 + 80));
  if (v2)
  {
    v3 = v2;
    v4 = [v2 cancelled];

    if ((v4 & 1) == 0)
    {
      Signpost();
      SignpostID = ISignpostInterval::MakeSignpostID(&Signpost(void)::gFetchNodeAsyncSignpost, *(a1 + 40));
      v9 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = *(a1 + 72);
      v8 = *(a1 + 48);
      v10 = v6;
      v11 = v8;
      v12 = SignpostID;
      v13 = v7;
      Signpost();
      TSignpostInterval_FIOperation_FetchNodeAsync::Begin<char [25],NSString * {__strong},FPItem * {__strong}>(&Signpost(void)::gFetchNodeAsyncSignpost, SignpostID);
    }
  }
}

void __45__FIOperation_fetchNodesAsyncFor_completion___block_invoke_84(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *v2;
  v4 = v2[1];
  if (v3 != v4)
  {
    v5 = 0;
    do
    {
      v5 += *(v3 + 8);
      v3 += 16;
    }

    while (v3 != v4);
  }

  Signpost();
  v6 = (*(*(a1 + 40) + 8) - **(a1 + 40)) >> 4;
  TSignpostInterval_FIOperation_FetchNodeAsync::End<char [51],NSString * {__strong},unsigned long,int>(&Signpost(void)::gFetchNodeAsyncSignpost, *(a1 + 88));
}

- (uint64_t)fetchNodesAsyncFor:(uint64_t)a1 completion:
{
  objc_destroyWeak((a1 + 72));

  std::__function::__value_func<void ()(std::vector<std::optional<FINode * {__strong}>> const&)>::~__value_func[abi:ne200100](a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  objc_destroyWeak(a1);
  return a1;
}

- (FPItem)destinationFPItem
{
  v3 = self->_destinationFPItem;
  if (!v3)
  {
    v4 = [(FIOperation *)self destinationNode];
    v3 = [v4 fpItem];
  }

  return v3;
}

- (NSArray)sourceFPItems
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_sourceFPItems;
  if (!v3)
  {
    v4 = [(FIOperation *)v2 sourceNodes];
    IDContainerIteratorAdaptor<NSArray<FINode *>>::NSForwardIterator<NSArray<FINode *>>::NSForwardIterator(v21, v4);
    IDContainerIteratorAdaptor<NSArray<FINode *>>::IDContainerIteratorAdaptor(v20, -1, v4);
    v5 = algorithm_extras::distance_or_zero<IDContainerIteratorAdaptor<NSArray<FINode *>>>(v21, v20);

    v6 = type_traits_extras::CopyAsHelper<NSArray<FPSandboxingURLWrapper *> * {__strong}>::MakeWithCapacity(v5);
    IDContainerIteratorAdaptor<NSArray<FINode *>>::NSForwardIterator<NSArray<FINode *>>::NSForwardIterator(&obj, v4);
    IDContainerIteratorAdaptor<NSArray<FINode *>>::IDContainerIteratorAdaptor(v13, -1, v4);
    v3 = v6;
    while (obj != v13[0] || v19 != v13[16])
    {
      v7 = *(v15[1] + 8 * v18);
      v8 = [v7 fpItem];

      if (v8)
      {
        v9 = v3;
        [(NSArray *)v9 addObject:v8];
      }

      v10 = v18;
      if (v18 >= v17 - 1)
      {
        v11 = [obj countByEnumeratingWithState:v15 objects:v16 count:4];
        v10 = -1;
        v17 = v11;
        v18 = -1;
      }

      if (v16[4] != *v15[2])
      {
        objc_enumerationMutation(obj);
        v10 = v18;
      }

      v18 = v10 + 1;
      ++v19;
    }
  }

  objc_sync_exit(v2);

  return v3;
}

- (OperationMonitorEx)operationMonitor
{
  v4 = *&self->_operationMonitor.fTickleProc;
  *&retstr->fRequestSemaphoreID = *&self->_operationMonitor.fRequestSemaphoreID;
  *&retstr->fTickleProc = v4;
  retstr->fVersion = self->_operationMonitor.fVersion;
  v5 = *&self->_operationMonitor.fStatus;
  *&retstr->fMonitorData = *&self->_operationMonitor.fMonitorData;
  *&retstr->fStatus = v5;
  result = MEMORY[0x1E692D6D0](self->_operationMonitor.fEventHandler, a3);
  retstr->fEventHandler = result;
  return result;
}

- (void)setOperationMonitor:(OperationMonitorEx *)a3
{
  *&self->_operationMonitor.fMonitorData = *&a3->fMonitorData;
  v5 = *&a3->fStatus;
  v6 = *&a3->fRequestSemaphoreID;
  v7 = *&a3->fTickleProc;
  self->_operationMonitor.fVersion = a3->fVersion;
  *&self->_operationMonitor.fRequestSemaphoreID = v6;
  *&self->_operationMonitor.fTickleProc = v7;
  *&self->_operationMonitor.fStatus = v5;
  v8 = MEMORY[0x1E692D6D0](a3->fEventHandler, a2);
  fEventHandler = self->_operationMonitor.fEventHandler;
  self->_operationMonitor.fEventHandler = v8;

  v10 = a3->fEventHandler;
}

- (OperationStatus)operationStatus
{
  retstr->fStage = self->_operationStatus.fStage;
  retstr->fTimeEstimate = self->_operationStatus.fTimeEstimate;
  *&retstr->fItemsTotal = *&self->_operationStatus.fItemsTotal;
  *&retstr->fBytesTotal = *&self->_operationStatus.fBytesTotal;
  *&retstr->fFSItemsTotal = *&self->_operationStatus.fFSItemsTotal;
  return strlcpy(retstr->fCurrentName, self->_operationStatus.fCurrentName, 0x400uLL);
}

- (void)setIterator:(OperationIterator *)a3
{
  v3 = *&a3->fData;
  self->_iterator.fNextProc = a3->fNextProc;
  *&self->_iterator.fData = v3;
}

- (id).cxx_construct
{
  *&self->_urlToChildProgressMap.__table_.__first_node_.__next_ = 0u;
  self->_urlToChildProgressMap.__table_.__bucket_list_ = 0u;
  self->_urlToChildProgressMap.__table_.__max_load_factor_ = 1.0;
  self->_operationMonitor.fEventHandler = 0;
  self->_operationStatus.fStage = 0;
  self->_operationStatus.fTimeEstimate = -1;
  bzero(self->_operationStatus.fCurrentName, 0x400uLL);
  *&self->_operationStatus.fFSItemsTotal = 0u;
  *&self->_operationStatus.fBytesTotal = 0u;
  *&self->_operationStatus.fItemsTotal = 0u;
  return self;
}

- (id)initIterator
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    ++v1[26];
    v3 = [v1 currentOperationRecord];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)executeAsFPOperation
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

- (void)fetchNodesAsyncFor:completion:
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = a2;
  if (v7)
  {
    std::optional<FINode * {__strong}>::operator=[abi:ne200100]<FINode * {__strong}&,void>(*(a1 + 16), &v7);
  }

  else
  {
    v3 = LogObj(8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 8);
      *buf = 138543618;
      v9 = v4;
      v10 = 2114;
      v11 = v5;
      _os_log_impl(&dword_1E5674000, v3, OS_LOG_TYPE_ERROR, "%{public}@ -- failed to get a node for item: %{public}@", buf, 0x16u);
    }
  }

  Signpost();
  v6 = *(a1 + 24);
  [*(a1 + 8) itemID];
  objc_claimAutoreleasedReturnValue();
  TSignpostInterval_FIOperation_FetchNodeAsync::End<char [47],NSString * {__strong},FPItemID * {__strong},FINode * {__strong}>(&Signpost(void)::gFetchNodeAsyncSignpost, v6);
}

@end