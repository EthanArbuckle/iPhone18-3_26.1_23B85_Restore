@interface DMCJobQueue
- (DMCJobQueue)init;
- (DMCJobQueue)initWithExecutionQueue:(id)a3;
- (void)dealloc;
- (void)fromFunction:(const char *)a3 enqueueJob:(id)a4;
- (void)jobDidFinishFromFunction:(const char *)a3 jobBlockDescription:(id)a4;
- (void)queueBlock:(id)a3;
- (void)waitForEnqueuedJobsToCompleteCompletionBlock:(id)a3;
@end

@implementation DMCJobQueue

- (DMCJobQueue)init
{
  v3 = [[DMCHangDetectionQueue alloc] initWithQoS:-1 hangThreshold:@"Default" owner:30.0];
  v4 = [(DMCJobQueue *)self initWithExecutionQueue:v3];

  return v4;
}

- (DMCJobQueue)initWithExecutionQueue:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = DMCJobQueue;
  v6 = [(DMCJobQueue *)&v14 init];
  if (v6)
  {
    atomic_fetch_add(initWithExecutionQueue___queueNumber, 1u);
    v7 = MEMORY[0x1E696AEC0];
    v8 = atomic_load(initWithExecutionQueue___queueNumber);
    v9 = [v7 stringWithFormat:@"%d", v8];
    queueID = v6->_queueID;
    v6->_queueID = v9;

    v11 = dispatch_queue_create("DMCJobQueue job queue", 0);
    jobQueue = v6->_jobQueue;
    v6->_jobQueue = v11;

    objc_storeStrong(&v6->_executionQueue, a3);
    v6->_nextJobSequenceNumber = 0;
  }

  return v6;
}

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *DMCLogObjects();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    queueID = self->_queueID;
    *buf = 138543618;
    v8 = queueID;
    v9 = 2114;
    v10 = queueID;
    _os_log_impl(&dword_1B1630000, v3, OS_LOG_TYPE_DEFAULT, "DMCJQ %{public}@ Destroying job queue %{public}@", buf, 0x16u);
  }

  v6.receiver = self;
  v6.super_class = DMCJobQueue;
  [(DMCJobQueue *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)fromFunction:(const char *)a3 enqueueJob:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", self->_nextJobSequenceNumber];
  ++self->_nextJobSequenceNumber;
  v8 = *DMCLogObjects();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    queueID = self->_queueID;
    *buf = 138543874;
    v19 = queueID;
    v20 = 2114;
    v21 = v7;
    v22 = 2082;
    v23 = a3;
    _os_log_impl(&dword_1B1630000, v8, OS_LOG_TYPE_DEFAULT, "DMCJQ %{public}@ Enqueueing jobBlock %{public}@, calling function %{public}s", buf, 0x20u);
  }

  v10 = [(DMCJobQueue *)self jobQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__DMCJobQueue_fromFunction_enqueueJob___block_invoke;
  block[3] = &unk_1E7ADCBB8;
  block[4] = self;
  v15 = v7;
  v16 = v6;
  v17 = a3;
  v11 = v6;
  v12 = v7;
  dispatch_async(v10, block);

  v13 = *MEMORY[0x1E69E9840];
}

void __39__DMCJobQueue_fromFunction_enqueueJob___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) jobQueue];
  dispatch_suspend(v2);

  v3 = *DMCLogObjects();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 32);
    v6 = *(a1 + 56);
    *buf = 138543874;
    v16 = v5;
    v17 = 2114;
    v18 = v4;
    v19 = 2082;
    v20 = v6;
    _os_log_impl(&dword_1B1630000, v3, OS_LOG_TYPE_DEFAULT, "DMCJQ %{public}@ Dispatching to executionQueue jobBlock %{public}@ - %{public}s", buf, 0x20u);
  }

  v7 = [*(a1 + 32) executionQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __39__DMCJobQueue_fromFunction_enqueueJob___block_invoke_11;
  v12[3] = &unk_1E7ADCBB8;
  v8 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v13 = v8;
  v11 = *(a1 + 48);
  v9 = v11;
  v14 = v11;
  [v7 queueBlock:v12];

  v10 = *MEMORY[0x1E69E9840];
}

void __39__DMCJobQueue_fromFunction_enqueueJob___block_invoke_11(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *DMCLogObjects();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[5];
    v4 = *(a1[4] + 32);
    v5 = a1[7];
    *buf = 138543874;
    v14 = v4;
    v15 = 2114;
    v16 = v3;
    v17 = 2082;
    v18 = v5;
    _os_log_impl(&dword_1B1630000, v2, OS_LOG_TYPE_DEFAULT, "DMCJQ %{public}@ Executing jobBlock %{public}@ - %{public}s", buf, 0x20u);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39__DMCJobQueue_fromFunction_enqueueJob___block_invoke_12;
  v10[3] = &unk_1E7ADCB90;
  v7 = a1[6];
  v6 = a1[7];
  v8 = a1[5];
  v10[4] = a1[4];
  v12 = v6;
  v11 = v8;
  (*(v7 + 16))(v7, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)jobDidFinishFromFunction:(const char *)a3 jobBlockDescription:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = *DMCLogObjects();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    queueID = self->_queueID;
    v10 = 138543874;
    v11 = queueID;
    v12 = 2114;
    v13 = v6;
    v14 = 2082;
    v15 = a3;
    _os_log_impl(&dword_1B1630000, v7, OS_LOG_TYPE_DEFAULT, "DMCJQ %{public}@ JobBlock %{public}@ finished, calling function %{public}s", &v10, 0x20u);
  }

  dispatch_resume(self->_jobQueue);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)queueBlock:(id)a3
{
  v4 = a3;
  v5 = [(DMCJobQueue *)self executionQueue];
  [v5 queueBlock:v4];
}

- (void)waitForEnqueuedJobsToCompleteCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(DMCJobQueue *)self jobQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__DMCJobQueue_waitForEnqueuedJobsToCompleteCompletionBlock___block_invoke;
  v7[3] = &unk_1E7ADC950;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __60__DMCJobQueue_waitForEnqueuedJobsToCompleteCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) jobQueue];
  dispatch_suspend(v2);

  v3 = [*(a1 + 32) executionQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__DMCJobQueue_waitForEnqueuedJobsToCompleteCompletionBlock___block_invoke_2;
  v5[3] = &unk_1E7ADCBE0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 queueBlock:v5];
}

void __60__DMCJobQueue_waitForEnqueuedJobsToCompleteCompletionBlock___block_invoke_2(uint64_t a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__DMCJobQueue_waitForEnqueuedJobsToCompleteCompletionBlock___block_invoke_3;
  v4[3] = &unk_1E7ADCBE0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __60__DMCJobQueue_waitForEnqueuedJobsToCompleteCompletionBlock___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [*(a1 + 32) jobQueue];
  dispatch_resume(v3);
}

@end