@interface _CNBlockFutureImpl
+ (id)implWithBlock:(id)a3;
+ (id)implWithSchedulerProvider:(id)a3 block:(id)a4;
+ (id)lazyImplWithBlock:(id)a3;
+ (id)lazyImplWithSchedulerProvider:(id)a3 block:(id)a4;
+ (id)log;
- (BOOL)_nts_isFinished;
- (BOOL)cancel;
- (BOOL)finishWithResult:(id)a3 error:(id)a4;
- (BOOL)isCancelled;
- (BOOL)isFinished;
- (BOOL)nts_isFinished;
- (BOOL)nts_mayResumeQueue;
- (_CNBlockFutureImpl)init;
- (_CNBlockFutureImpl)initWithSchedulerProvider:(id)a3;
- (id)futureResult;
- (id)futureResultFromAsynchronousLookupBeforeDate:(id)a3 error:(id *)a4;
- (id)futureResultFromImmediateLookup;
- (id)resultBeforeDate:(id)a3 error:(id *)a4;
- (void)_flushCompletionBlocks;
- (void)addFailureBlock:(id)a3;
- (void)addSuccessBlock:(id)a3;
- (void)addWriterBlock:(id)a3;
- (void)dealloc;
- (void)implicitlyResumeQueue;
- (void)nts_resumeQueue;
- (void)resumeQueue;
- (void)updateDescriptionWithBuilder:(id)a3;
@end

@implementation _CNBlockFutureImpl

- (BOOL)_nts_isFinished
{
  v2 = [(_CNBlockFutureImpl *)self stateLock];
  v3 = [v2 condition] == 1;

  return v3;
}

- (BOOL)isFinished
{
  v3 = [(_CNBlockFutureImpl *)self stateLock];
  [v3 lock];

  LOBYTE(v3) = [(_CNBlockFutureImpl *)self _nts_isFinished];
  v4 = [(_CNBlockFutureImpl *)self stateLock];
  [v4 unlock];

  return v3;
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
  v3 = [(_CNBlockFutureImpl *)self stateLock];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43___CNBlockFutureImpl_implicitlyResumeQueue__block_invoke;
  v4[3] = &unk_1E6ED6E58;
  v4[4] = self;
  v4[5] = &v5;
  CNRunWithLock(v3, v4);

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
  v3 = [(_CNBlockFutureImpl *)self stateLock];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33___CNBlockFutureImpl_resumeQueue__block_invoke;
  v4[3] = &unk_1E6ED5830;
  v4[4] = self;
  CNRunWithLock(v3, v4);
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
  v3 = [(_CNBlockFutureImpl *)self stateLock];
  [v3 lock];

  v4 = [(CNFutureResult *)self->_futureResult copy];
  v5 = [(_CNBlockFutureImpl *)self stateLock];
  [v5 unlock];

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

+ (id)implWithBlock:(id)a3
{
  v4 = a3;
  v5 = +[CNSchedulerProvider defaultProvider];
  v6 = [a1 implWithSchedulerProvider:v5 block:v4];

  return v6;
}

+ (id)implWithSchedulerProvider:(id)a3 block:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithSchedulerProvider:v7];

  [v8 resumeQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54___CNBlockFutureImpl_implWithSchedulerProvider_block___block_invoke;
  v14[3] = &unk_1E6ED52C0;
  v16 = v6;
  v9 = v8;
  v15 = v9;
  v10 = v6;
  [v9 addWriterBlock:v14];
  v11 = v15;
  v12 = v9;

  return v9;
}

+ (id)lazyImplWithBlock:(id)a3
{
  v4 = a3;
  v5 = +[CNSchedulerProvider defaultProvider];
  v6 = [a1 lazyImplWithSchedulerProvider:v5 block:v4];

  return v6;
}

+ (id)lazyImplWithSchedulerProvider:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[a1 alloc] initWithSchedulerProvider:v6];
  objc_initWeak(&location, v8);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58___CNBlockFutureImpl_lazyImplWithSchedulerProvider_block___block_invoke;
  v11[3] = &unk_1E6ED6E30;
  v9 = v7;
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

- (_CNBlockFutureImpl)initWithSchedulerProvider:(id)a3
{
  v4 = a3;
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

    v10 = [v4 immediateScheduler];
    v11 = [CNSuspendableSchedulerDecorator suspendedSchedulerWithScheduler:v10];
    blockScheduler = v5->_blockScheduler;
    v5->_blockScheduler = v11;

    v5->_queueSuspended = 1;
    v13 = v5;
  }

  return v5;
}

- (void)updateDescriptionWithBuilder:(id)a3
{
  v13 = a3;
  v4 = [(_CNBlockFutureImpl *)self stateLock];
  v5 = [v4 tryLock];

  if (v5)
  {
    v6 = [(_CNBlockFutureImpl *)self stateLock];
    v7 = [v6 condition];

    if (v7)
    {
      v8 = @"finished";
    }

    else
    {
      v8 = @"ready";
    }

    v9 = [v13 appendName:@"state" object:v8];
    v10 = [(_CNBlockFutureImpl *)self stateLock];
    [v10 unlock];
  }

  else
  {
    v11 = [v13 appendName:@"state" object:@"locked"];
  }

  v12 = [v13 appendName:@"result" object:self->_futureResult];
}

- (void)addWriterBlock:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(_CNBlockFutureImpl *)self blockScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37___CNBlockFutureImpl_addWriterBlock___block_invoke;
  v7[3] = &unk_1E6ED6E80;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [v5 performBlock:v7];

  [(_CNBlockFutureImpl *)self setWorkBlockScheduled:1];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (id)resultBeforeDate:(id)a3 error:(id *)a4
{
  v6 = a3;
  [(_CNBlockFutureImpl *)self implicitlyResumeQueue];
  if ([(_CNBlockFutureImpl *)self isFinished])
  {
    v7 = [(_CNBlockFutureImpl *)self futureResultFromImmediateLookup];
LABEL_4:
    v8 = [v7 result];
    v9 = [v7 error];
    v10 = [CNFoundationError ifResultIsNil:v8 setOutputError:a4 toError:v9];

    goto LABEL_5;
  }

  v7 = [(_CNBlockFutureImpl *)self futureResultFromAsynchronousLookupBeforeDate:v6 error:a4];
  if (v7)
  {
    goto LABEL_4;
  }

  v10 = 0;
LABEL_5:

  return v10;
}

- (id)futureResultFromAsynchronousLookupBeforeDate:(id)a3 error:(id *)a4
{
  v6 = a3;
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
  v9 = v6;
  v22 = v9;
  v24 = &v31;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  v11 = [(_CNBlockFutureImpl *)self blockScheduler];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __73___CNBlockFutureImpl_futureResultFromAsynchronousLookupBeforeDate_error___block_invoke_26;
  v18[3] = &unk_1E6ED5F68;
  v12 = v10;
  v19 = v12;
  [v11 performBlock:v18];

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
    if (a4)
    {
      v16 = v16;
      *a4 = v16;
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
  v3 = [(_CNBlockFutureImpl *)self stateLock];
  [v3 lock];

  if ([(_CNBlockFutureImpl *)self nts_isFinished])
  {
    v4 = [(CNFutureResult *)self->_futureResult error];
    v5 = [CNFoundationError isCanceledError:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(_CNBlockFutureImpl *)self stateLock];
  [v6 unlock];

  return v5;
}

- (BOOL)nts_isFinished
{
  v2 = [(_CNBlockFutureImpl *)self stateLock];
  v3 = [v2 condition] == 1;

  return v3;
}

- (BOOL)cancel
{
  v3 = [(_CNBlockFutureImpl *)self stateLock];
  [v3 lock];

  v4 = [(_CNBlockFutureImpl *)self stateLock];
  v5 = [v4 condition];

  if (v5 == 1)
  {
    v8 = [(_CNBlockFutureImpl *)self stateLock];
    [v8 unlock];
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
    [(CNFutureResult *)self->_futureResult setError:v6];

    LODWORD(v6) = [(_CNBlockFutureImpl *)self nts_mayResumeQueue];
    v7 = [(_CNBlockFutureImpl *)self stateLock];
    [v7 unlockWithCondition:1];

    if (v6)
    {
      [(CNSuspendableSchedulerDecorator *)self->_blockScheduler resume];
    }
  }

  return v5 != 1;
}

- (BOOL)finishWithResult:(id)a3 error:(id)a4
{
  v30[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (+[CNObservableContractEnforcement shouldSwizzleNilResults])
  {
    v8 = (v6 | v7) == 0;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    v9 = v6 != 0;
    v10 = v7 != 0;
    if ((v9 ^ v10))
    {
LABEL_20:
      v18 = v6;
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
      v16 = v6;
    }

    else
    {
      v16 = CNObserverProtocolExceptionNullMarker[0];
    }

    if (v10)
    {
      v15 = v7;
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

  v18 = [MEMORY[0x1E695DFB0] null];
  if (!v18)
  {
    v10 = 0;
    v9 = 0;
    goto LABEL_6;
  }

LABEL_21:
  v19 = [(_CNBlockFutureImpl *)self stateLock];
  [v19 lock];

  v20 = [(_CNBlockFutureImpl *)self stateLock];
  v21 = [v20 condition];

  if (v21 == 1)
  {
    v24 = [(_CNBlockFutureImpl *)self stateLock];
    [v24 unlock];
  }

  else
  {
    [(CNFutureResult *)self->_futureResult setResult:v18 error:v7];
    v22 = [(_CNBlockFutureImpl *)self nts_mayResumeQueue];
    v23 = [(_CNBlockFutureImpl *)self stateLock];
    [v23 unlockWithCondition:1];

    if (v22)
    {
      [(CNSuspendableSchedulerDecorator *)self->_blockScheduler resume];
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return v21 != 1;
}

- (void)addSuccessBlock:(id)a3
{
  v4 = a3;
  [(_CNBlockFutureImpl *)self implicitlyResumeQueue];
  objc_initWeak(&location, self);
  v5 = [(_CNBlockFutureImpl *)self blockScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38___CNBlockFutureImpl_addSuccessBlock___block_invoke;
  v7[3] = &unk_1E6ED6E80;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [v5 performBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)addFailureBlock:(id)a3
{
  v4 = a3;
  [(_CNBlockFutureImpl *)self implicitlyResumeQueue];
  objc_initWeak(&location, self);
  v5 = [(_CNBlockFutureImpl *)self blockScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38___CNBlockFutureImpl_addFailureBlock___block_invoke;
  v7[3] = &unk_1E6ED6E80;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [v5 performBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_flushCompletionBlocks
{
  v2 = [(_CNBlockFutureImpl *)self blockScheduler];
  [v2 performBlock:&__block_literal_global_36_0];
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