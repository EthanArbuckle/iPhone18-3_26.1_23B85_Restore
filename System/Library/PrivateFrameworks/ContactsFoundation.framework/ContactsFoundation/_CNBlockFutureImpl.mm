@interface _CNBlockFutureImpl
+ (id)implWithBlock:(id)block;
+ (id)implWithSchedulerProvider:(id)provider block:(id)block;
+ (id)lazyImplWithBlock:(id)block;
+ (id)lazyImplWithSchedulerProvider:(id)provider block:(id)block;
+ (id)log;
- (BOOL)_nts_isFinished;
- (BOOL)cancel;
- (BOOL)finishWithResult:(id)result error:(id)error;
- (BOOL)isCancelled;
- (BOOL)isFinished;
- (BOOL)nts_isFinished;
- (BOOL)nts_mayResumeQueue;
- (_CNBlockFutureImpl)init;
- (_CNBlockFutureImpl)initWithSchedulerProvider:(id)provider;
- (id)futureResult;
- (id)futureResultFromAsynchronousLookupBeforeDate:(id)date error:(id *)error;
- (id)futureResultFromImmediateLookup;
- (id)resultBeforeDate:(id)date error:(id *)error;
- (void)_flushCompletionBlocks;
- (void)addFailureBlock:(id)block;
- (void)addSuccessBlock:(id)block;
- (void)addWriterBlock:(id)block;
- (void)dealloc;
- (void)implicitlyResumeQueue;
- (void)nts_resumeQueue;
- (void)resumeQueue;
- (void)updateDescriptionWithBuilder:(id)builder;
@end

@implementation _CNBlockFutureImpl

- (BOOL)_nts_isFinished
{
  stateLock = [(_CNBlockFutureImpl *)self stateLock];
  v3 = [stateLock condition] == 1;

  return v3;
}

- (BOOL)isFinished
{
  stateLock = [(_CNBlockFutureImpl *)self stateLock];
  [stateLock lock];

  LOBYTE(stateLock) = [(_CNBlockFutureImpl *)self _nts_isFinished];
  stateLock2 = [(_CNBlockFutureImpl *)self stateLock];
  [stateLock2 unlock];

  return stateLock;
}

- (id)futureResultFromImmediateLookup
{
  v2 = [(CNFutureResult *)self->_futureResult copy];

  return v2;
}

- (void)implicitlyResumeQueue
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  stateLock = [(_CNBlockFutureImpl *)self stateLock];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43___CNBlockFutureImpl_implicitlyResumeQueue__block_invoke;
  v4[3] = &unk_1E6ED6E58;
  v4[4] = self;
  v4[5] = &v5;
  CNRunWithLock(stateLock, v4);

  if (*(v6 + 24) == 1)
  {
    [(CNSuspendableSchedulerDecorator *)self->_blockScheduler resume];
  }

  _Block_object_dispose(&v5, 8);
}

- (void)dealloc
{
  [(_CNBlockFutureImpl *)self resumeQueue];
  v3.receiver = self;
  v3.super_class = _CNBlockFutureImpl;
  [(_CNBlockFutureImpl *)&v3 dealloc];
}

- (void)resumeQueue
{
  stateLock = [(_CNBlockFutureImpl *)self stateLock];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33___CNBlockFutureImpl_resumeQueue__block_invoke;
  v4[3] = &unk_1E6ED5830;
  v4[4] = self;
  CNRunWithLock(stateLock, v4);
}

- (void)nts_resumeQueue
{
  if (self->_queueSuspended)
  {
    self->_queueSuspended = 0;
    [(CNSuspendableSchedulerDecorator *)self->_blockScheduler resume];
  }
}

- (BOOL)nts_mayResumeQueue
{
  queueSuspended = self->_queueSuspended;
  self->_queueSuspended = 0;
  return queueSuspended;
}

- (id)futureResult
{
  stateLock = [(_CNBlockFutureImpl *)self stateLock];
  [stateLock lock];

  v4 = [(CNFutureResult *)self->_futureResult copy];
  stateLock2 = [(_CNBlockFutureImpl *)self stateLock];
  [stateLock2 unlock];

  return v4;
}

+ (id)log
{
  if (log_cn_once_token_1_0 != -1)
  {
    +[_CNBlockFutureImpl log];
  }

  v3 = log_cn_once_object_1_0;

  return v3;
}

+ (id)implWithBlock:(id)block
{
  blockCopy = block;
  v5 = +[CNSchedulerProvider defaultProvider];
  v6 = [self implWithSchedulerProvider:v5 block:blockCopy];

  return v6;
}

+ (id)implWithSchedulerProvider:(id)provider block:(id)block
{
  blockCopy = block;
  providerCopy = provider;
  v8 = [[self alloc] initWithSchedulerProvider:providerCopy];

  [v8 resumeQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54___CNBlockFutureImpl_implWithSchedulerProvider_block___block_invoke;
  v14[3] = &unk_1E6ED52C0;
  v16 = blockCopy;
  v9 = v8;
  v15 = v9;
  v10 = blockCopy;
  [v9 addWriterBlock:v14];
  v11 = v15;
  v12 = v9;

  return v9;
}

+ (id)lazyImplWithBlock:(id)block
{
  blockCopy = block;
  v5 = +[CNSchedulerProvider defaultProvider];
  v6 = [self lazyImplWithSchedulerProvider:v5 block:blockCopy];

  return v6;
}

+ (id)lazyImplWithSchedulerProvider:(id)provider block:(id)block
{
  providerCopy = provider;
  blockCopy = block;
  v8 = [[self alloc] initWithSchedulerProvider:providerCopy];
  objc_initWeak(&location, v8);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58___CNBlockFutureImpl_lazyImplWithSchedulerProvider_block___block_invoke;
  v11[3] = &unk_1E6ED6E30;
  v9 = blockCopy;
  v12 = v9;
  objc_copyWeak(&v13, &location);
  [v8 addWriterBlock:v11];
  objc_destroyWeak(&v13);

  objc_destroyWeak(&location);

  return v8;
}

- (_CNBlockFutureImpl)init
{
  v3 = +[CNSchedulerProvider defaultProvider];
  v4 = [(_CNBlockFutureImpl *)self initWithSchedulerProvider:v3];

  return v4;
}

- (_CNBlockFutureImpl)initWithSchedulerProvider:(id)provider
{
  providerCopy = provider;
  v15.receiver = self;
  v15.super_class = _CNBlockFutureImpl;
  v5 = [(_CNBlockFutureImpl *)&v15 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:0];
    stateLock = v5->_stateLock;
    v5->_stateLock = v6;

    [(NSConditionLock *)v5->_stateLock setName:@"CNFuture state lock"];
    v8 = objc_alloc_init(CNFutureResult);
    futureResult = v5->_futureResult;
    v5->_futureResult = v8;

    immediateScheduler = [providerCopy immediateScheduler];
    v11 = [CNSuspendableSchedulerDecorator suspendedSchedulerWithScheduler:immediateScheduler];
    blockScheduler = v5->_blockScheduler;
    v5->_blockScheduler = v11;

    v5->_queueSuspended = 1;
    v13 = v5;
  }

  return v5;
}

- (void)updateDescriptionWithBuilder:(id)builder
{
  builderCopy = builder;
  stateLock = [(_CNBlockFutureImpl *)self stateLock];
  tryLock = [stateLock tryLock];

  if (tryLock)
  {
    stateLock2 = [(_CNBlockFutureImpl *)self stateLock];
    condition = [stateLock2 condition];

    if (condition)
    {
      v8 = @"finished";
    }

    else
    {
      v8 = @"ready";
    }

    v9 = [builderCopy appendName:@"state" object:v8];
    stateLock3 = [(_CNBlockFutureImpl *)self stateLock];
    [stateLock3 unlock];
  }

  else
  {
    v11 = [builderCopy appendName:@"state" object:@"locked"];
  }

  v12 = [builderCopy appendName:@"result" object:self->_futureResult];
}

- (void)addWriterBlock:(id)block
{
  blockCopy = block;
  objc_initWeak(&location, self);
  blockScheduler = [(_CNBlockFutureImpl *)self blockScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37___CNBlockFutureImpl_addWriterBlock___block_invoke;
  v7[3] = &unk_1E6ED6E80;
  objc_copyWeak(&v9, &location);
  v6 = blockCopy;
  v8 = v6;
  [blockScheduler performBlock:v7];

  [(_CNBlockFutureImpl *)self setWorkBlockScheduled:1];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (id)resultBeforeDate:(id)date error:(id *)error
{
  dateCopy = date;
  [(_CNBlockFutureImpl *)self implicitlyResumeQueue];
  if ([(_CNBlockFutureImpl *)self isFinished])
  {
    futureResultFromImmediateLookup = [(_CNBlockFutureImpl *)self futureResultFromImmediateLookup];
LABEL_4:
    result = [futureResultFromImmediateLookup result];
    error = [futureResultFromImmediateLookup error];
    v10 = [CNFoundationError ifResultIsNil:result setOutputError:error toError:error];

    goto LABEL_5;
  }

  futureResultFromImmediateLookup = [(_CNBlockFutureImpl *)self futureResultFromAsynchronousLookupBeforeDate:dateCopy error:error];
  if (futureResultFromImmediateLookup)
  {
    goto LABEL_4;
  }

  v10 = 0;
LABEL_5:

  return v10;
}

- (id)futureResultFromAsynchronousLookupBeforeDate:(id)date error:(id *)error
{
  dateCopy = date;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__6;
  v35 = __Block_byref_object_dispose__6;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73___CNBlockFutureImpl_futureResultFromAsynchronousLookupBeforeDate_error___block_invoke;
  block[3] = &unk_1E6ED6EA8;
  objc_copyWeak(&v25, &location);
  v8 = v7;
  v21 = v8;
  v23 = &v27;
  v9 = dateCopy;
  v22 = v9;
  v24 = &v31;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  blockScheduler = [(_CNBlockFutureImpl *)self blockScheduler];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __73___CNBlockFutureImpl_futureResultFromAsynchronousLookupBeforeDate_error___block_invoke_26;
  v18[3] = &unk_1E6ED5F68;
  v12 = v10;
  v19 = v12;
  [blockScheduler performBlock:v18];

  [v9 timeIntervalSinceNow];
  if (v13 <= 1000000000.0)
  {
    v14 = dispatch_time(0, (v13 * 1000000000.0));
  }

  else
  {
    v14 = -1;
  }

  if (dispatch_group_wait(v8, v14) || (v28[3] & 1) == 0)
  {
    v16 = +[CNFoundationError timeoutError];
    if (error)
    {
      v16 = v16;
      *error = v16;
    }

    v15 = 0;
  }

  else
  {
    v15 = v32[5];
  }

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);

  return v15;
}

- (BOOL)isCancelled
{
  stateLock = [(_CNBlockFutureImpl *)self stateLock];
  [stateLock lock];

  if ([(_CNBlockFutureImpl *)self nts_isFinished])
  {
    error = [(CNFutureResult *)self->_futureResult error];
    v5 = [CNFoundationError isCanceledError:error];
  }

  else
  {
    v5 = 0;
  }

  stateLock2 = [(_CNBlockFutureImpl *)self stateLock];
  [stateLock2 unlock];

  return v5;
}

- (BOOL)nts_isFinished
{
  stateLock = [(_CNBlockFutureImpl *)self stateLock];
  v3 = [stateLock condition] == 1;

  return v3;
}

- (BOOL)cancel
{
  stateLock = [(_CNBlockFutureImpl *)self stateLock];
  [stateLock lock];

  stateLock2 = [(_CNBlockFutureImpl *)self stateLock];
  condition = [stateLock2 condition];

  if (condition == 1)
  {
    stateLock3 = [(_CNBlockFutureImpl *)self stateLock];
    [stateLock3 unlock];
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
    [(CNFutureResult *)self->_futureResult setError:v6];

    LODWORD(v6) = [(_CNBlockFutureImpl *)self nts_mayResumeQueue];
    stateLock4 = [(_CNBlockFutureImpl *)self stateLock];
    [stateLock4 unlockWithCondition:1];

    if (v6)
    {
      [(CNSuspendableSchedulerDecorator *)self->_blockScheduler resume];
    }
  }

  return condition != 1;
}

- (BOOL)finishWithResult:(id)result error:(id)error
{
  v30[2] = *MEMORY[0x1E69E9840];
  resultCopy = result;
  errorCopy = error;
  if (+[CNObservableContractEnforcement shouldSwizzleNilResults])
  {
    v8 = (resultCopy | errorCopy) == 0;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    v9 = resultCopy != 0;
    v10 = errorCopy != 0;
    if ((v9 ^ v10))
    {
LABEL_20:
      null = resultCopy;
      goto LABEL_21;
    }

LABEL_6:
    v11 = +[CNObservable os_log_protocol];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_CNBlockFutureImpl finishWithResult:error:];
    }

    v12 = +[CNObservable os_log_protocol];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [_CNBlockFutureImpl finishWithResult:error:];
    }

    v13 = +[CNObservable os_log_protocol];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [_CNBlockFutureImpl finishWithResult:error:];
    }

    v14 = +[CNObservable os_log_protocol];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [_CNBlockFutureImpl finishWithResult:error:];
    }

    v15 = CNObserverProtocolExceptionNullMarker[0];
    v29[0] = CNObserverProtocolExceptionResultKey[0];
    v29[1] = CNObserverProtocolExceptionErrorKey[0];
    if (v9)
    {
      v16 = resultCopy;
    }

    else
    {
      v16 = CNObserverProtocolExceptionNullMarker[0];
    }

    if (v10)
    {
      v15 = errorCopy;
    }

    v30[0] = v16;
    v30[1] = v15;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
    CNFutureThrowProtocolExceptionWithReason(@"Either the result or error must be non-nil", v17);

    goto LABEL_20;
  }

  v27 = +[CNObservable os_log_protocol];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    [_CNBlockFutureImpl finishWithResult:error:];
  }

  v28 = +[CNObservable os_log_protocol];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    [_CNBlockFutureImpl finishWithResult:error:];
  }

  null = [MEMORY[0x1E695DFB0] null];
  if (!null)
  {
    v10 = 0;
    v9 = 0;
    goto LABEL_6;
  }

LABEL_21:
  stateLock = [(_CNBlockFutureImpl *)self stateLock];
  [stateLock lock];

  stateLock2 = [(_CNBlockFutureImpl *)self stateLock];
  condition = [stateLock2 condition];

  if (condition == 1)
  {
    stateLock3 = [(_CNBlockFutureImpl *)self stateLock];
    [stateLock3 unlock];
  }

  else
  {
    [(CNFutureResult *)self->_futureResult setResult:null error:errorCopy];
    nts_mayResumeQueue = [(_CNBlockFutureImpl *)self nts_mayResumeQueue];
    stateLock4 = [(_CNBlockFutureImpl *)self stateLock];
    [stateLock4 unlockWithCondition:1];

    if (nts_mayResumeQueue)
    {
      [(CNSuspendableSchedulerDecorator *)self->_blockScheduler resume];
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return condition != 1;
}

- (void)addSuccessBlock:(id)block
{
  blockCopy = block;
  [(_CNBlockFutureImpl *)self implicitlyResumeQueue];
  objc_initWeak(&location, self);
  blockScheduler = [(_CNBlockFutureImpl *)self blockScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38___CNBlockFutureImpl_addSuccessBlock___block_invoke;
  v7[3] = &unk_1E6ED6E80;
  objc_copyWeak(&v9, &location);
  v6 = blockCopy;
  v8 = v6;
  [blockScheduler performBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)addFailureBlock:(id)block
{
  blockCopy = block;
  [(_CNBlockFutureImpl *)self implicitlyResumeQueue];
  objc_initWeak(&location, self);
  blockScheduler = [(_CNBlockFutureImpl *)self blockScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38___CNBlockFutureImpl_addFailureBlock___block_invoke;
  v7[3] = &unk_1E6ED6E80;
  objc_copyWeak(&v9, &location);
  v6 = blockCopy;
  v8 = v6;
  [blockScheduler performBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_flushCompletionBlocks
{
  blockScheduler = [(_CNBlockFutureImpl *)self blockScheduler];
  [blockScheduler performBlock:&__block_literal_global_36_0];
}

- (void)finishWithResult:error:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)finishWithResult:error:.cold.2()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0(&dword_1859F0000, v1, v2, "Call stack: %{public}@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)finishWithResult:error:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)finishWithResult:error:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)finishWithResult:error:.cold.5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end