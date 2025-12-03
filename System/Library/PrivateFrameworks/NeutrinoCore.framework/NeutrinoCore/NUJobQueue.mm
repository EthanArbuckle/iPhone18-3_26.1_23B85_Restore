@interface NUJobQueue
- (NUJobQueue)init;
- (NUJobQueue)initWithStage:(int64_t)stage name:(id)name;
- (id)debugDescription;
- (id)description;
- (void)_addJob:(id)job;
- (void)_addJobs:(id)jobs;
- (void)_decrementGroupLevel;
- (void)_finishedPriorityQueue:(id)queue;
- (void)_incrementGroupLevel;
- (void)_removeJob:(id)job;
- (void)_startRunningIfNeeded;
- (void)addJob:(id)job;
- (void)addJobs:(id)jobs;
- (void)finishedPriorityQueue:(id)queue;
- (void)removeJob:(id)job;
@end

@implementation NUJobQueue

- (void)_finishedPriorityQueue:(id)queue
{
  queueCopy = queue;
  if (self->_interactiveQueue == queueCopy && !self->_updateGroupLevel)
  {
    v5 = queueCopy;
    [(NUJobPriorityQueue *)self->_initiatedQueue start];
    queueCopy = v5;
  }
}

- (void)finishedPriorityQueue:(id)queue
{
  queueCopy = queue;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__NUJobQueue_finishedPriorityQueue___block_invoke;
  v7[3] = &unk_1E810B958;
  v7[4] = self;
  v8 = queueCopy;
  v6 = queueCopy;
  dispatch_sync(queue, v7);
}

- (void)_startRunningIfNeeded
{
  if (![(NUJobPriorityQueue *)self->_interactiveQueue start])
  {
    initiatedQueue = self->_initiatedQueue;

    [(NUJobPriorityQueue *)initiatedQueue start];
  }
}

- (void)_decrementGroupLevel
{
  v22 = *MEMORY[0x1E69E9840];
  updateGroupLevel = self->_updateGroupLevel;
  self->_updateGroupLevel = updateGroupLevel - 1;
  if (updateGroupLevel <= 0)
  {
    v3 = NUAssertLogger_14554();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unbalanced transaction begin/commit pairs"];
      *v19 = 138543362;
      *&v19[4] = v4;
      _os_log_error_impl(&dword_1C0184000, v3, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v19, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v6 = NUAssertLogger_14554();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v7)
      {
        v10 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v11 = MEMORY[0x1E696AF00];
        v12 = v10;
        callStackSymbols = [v11 callStackSymbols];
        v14 = [callStackSymbols componentsJoinedByString:@"\n"];
        *v19 = 138543618;
        *&v19[4] = v10;
        v20 = 2114;
        v21 = v14;
        _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v19, 0x16u);
      }
    }

    else if (v7)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v9 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *v19 = 138543362;
      *&v19[4] = v9;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v19, 0xCu);
    }

    _NUAssertFailHandler("[NUJobQueue _decrementGroupLevel]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUJobQueue.m", 136, @"Unbalanced transaction begin/commit pairs", v15, v16, v17, v18, *v19);
  }

  if (updateGroupLevel == 1)
  {

    [(NUJobQueue *)self _startRunningIfNeeded];
  }
}

- (void)_incrementGroupLevel
{
  v22 = *MEMORY[0x1E69E9840];
  updateGroupLevel = self->_updateGroupLevel;
  self->_updateGroupLevel = updateGroupLevel + 1;
  if (updateGroupLevel <= -2)
  {
    v3 = NUAssertLogger_14554();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unbalanced transaction begin/commit pairs"];
      *v19 = 138543362;
      *&v19[4] = v4;
      _os_log_error_impl(&dword_1C0184000, v3, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v19, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v6 = NUAssertLogger_14554();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v7)
      {
        v10 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v11 = MEMORY[0x1E696AF00];
        v12 = v10;
        callStackSymbols = [v11 callStackSymbols];
        v14 = [callStackSymbols componentsJoinedByString:@"\n"];
        *v19 = 138543618;
        *&v19[4] = v10;
        v20 = 2114;
        v21 = v14;
        _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v19, 0x16u);
      }
    }

    else if (v7)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v9 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *v19 = 138543362;
      *&v19[4] = v9;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v19, 0xCu);
    }

    _NUAssertFailHandler("[NUJobQueue _incrementGroupLevel]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUJobQueue.m", 130, @"Unbalanced transaction begin/commit pairs", v15, v16, v17, v18, *v19);
  }
}

- (void)_addJobs:(id)jobs
{
  v15 = *MEMORY[0x1E69E9840];
  jobsCopy = jobs;
  [(NUJobQueue *)self _incrementGroupLevel];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = jobsCopy;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NUJobQueue *)self _addJob:*(*(&v10 + 1) + 8 * v9++), v10];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(NUJobQueue *)self _decrementGroupLevel];
}

- (void)removeJob:(id)job
{
  jobCopy = job;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __24__NUJobQueue_removeJob___block_invoke;
  v7[3] = &unk_1E810B958;
  v7[4] = self;
  v8 = jobCopy;
  v6 = jobCopy;
  dispatch_sync(queue, v7);
}

- (void)_removeJob:(id)job
{
  interactiveQueue = self->_interactiveQueue;
  jobCopy = job;
  [(NUJobPriorityQueue *)interactiveQueue removeJob:jobCopy];
  [(NUJobPriorityQueue *)self->_initiatedQueue removeJob:jobCopy];
}

- (void)_addJob:(id)job
{
  jobCopy = job;
  [(NUJobQueue *)self _incrementGroupLevel];
  priority = [jobCopy priority];
  if ([priority level] == 3)
  {
  }

  else
  {
    priority2 = [jobCopy priority];
    level = [priority2 level];

    if (level != 2)
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_62);
      }

      if (!os_log_type_enabled(_NUScheduleLogger, OS_LOG_TYPE_DEBUG))
      {
        v11 = 16;
        goto LABEL_14;
      }

      request = [jobCopy request];
      voucher = [request voucher];
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __22__NUJobQueue__addJob___block_invoke_24;
      v15 = &unk_1E810B958;
      v10 = v16;
      v16[0] = jobCopy;
      v16[1] = self;
      NULogAdoptVoucher(voucher, &v12);
      v11 = 16;
      goto LABEL_13;
    }
  }

  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_62);
  }

  if (os_log_type_enabled(_NUScheduleLogger, OS_LOG_TYPE_DEBUG))
  {
    request = [jobCopy request];
    voucher = [request voucher];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __22__NUJobQueue__addJob___block_invoke;
    v17[3] = &unk_1E810B958;
    v10 = v18;
    v18[0] = jobCopy;
    v18[1] = self;
    NULogAdoptVoucher(voucher, v17);
    v11 = 24;
LABEL_13:

    goto LABEL_14;
  }

  v11 = 24;
LABEL_14:
  [*(&self->super.isa + v11) addJob:{jobCopy, v12, v13, v14, v15}];
  [(NUJobQueue *)self _decrementGroupLevel];
}

void __22__NUJobQueue__addJob___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_62);
  }

  v2 = _NUScheduleLogger;
  if (os_log_type_enabled(_NUScheduleLogger, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v6 = [v3 stage];
    if ((v6 - 1) > 5)
    {
      v7 = @"None";
    }

    else
    {
      v7 = off_1E810B140[v6 - 1];
    }

    v8 = v7;
    v9 = [*(a1 + 32) priority];
    [v9 order];
    v11 = 134218498;
    v12 = v4;
    v13 = 2114;
    v14 = v8;
    v15 = 2048;
    v16 = v10;
    _os_log_debug_impl(&dword_1C0184000, v5, OS_LOG_TYPE_DEBUG, "job %p stage %{public}@ schedule low, %f", &v11, 0x20u);
  }
}

void __22__NUJobQueue__addJob___block_invoke_24(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_62);
  }

  v2 = _NUScheduleLogger;
  if (os_log_type_enabled(_NUScheduleLogger, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v6 = [v3 stage];
    if ((v6 - 1) > 5)
    {
      v7 = @"None";
    }

    else
    {
      v7 = off_1E810B140[v6 - 1];
    }

    v8 = v7;
    v9 = [*(a1 + 32) priority];
    [v9 order];
    v11 = 134218498;
    v12 = v4;
    v13 = 2114;
    v14 = v8;
    v15 = 2048;
    v16 = v10;
    _os_log_debug_impl(&dword_1C0184000, v5, OS_LOG_TYPE_DEBUG, "job %p stage %{public}@ schedule high, %f", &v11, 0x20u);
  }
}

- (void)addJobs:(id)jobs
{
  jobsCopy = jobs;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __22__NUJobQueue_addJobs___block_invoke;
  v7[3] = &unk_1E810B958;
  v7[4] = self;
  v8 = jobsCopy;
  v6 = jobsCopy;
  dispatch_sync(queue, v7);
}

- (void)addJob:(id)job
{
  jobCopy = job;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __21__NUJobQueue_addJob___block_invoke;
  v7[3] = &unk_1E810B958;
  v7[4] = self;
  v8 = jobCopy;
  v6 = jobCopy;
  dispatch_sync(queue, v7);
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  name = self->_name;
  v6 = self->_stage - 1;
  if (v6 > 5)
  {
    v7 = @"None";
  }

  else
  {
    v7 = off_1E810B140[v6];
  }

  v8 = v7;
  v9 = [v3 stringWithFormat:@"<%@:%p> name: %@, stage %@, interactive queue: %@, initiated queue: %@", v4, self, name, v8, self->_interactiveQueue, self->_initiatedQueue];

  return v9;
}

- (id)description
{
  v3 = self->_stage - 1;
  if (v3 > 5)
  {
    v4 = @"None";
  }

  else
  {
    v4 = off_1E810B140[v3];
  }

  v5 = v4;
  v6 = [(NUJobPriorityQueue *)self->_interactiveQueue count];
  v7 = [(NUJobPriorityQueue *)self->_initiatedQueue count];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p> - name: %@ stage: %@ interactive: %ld jobs, initiated: %ld jobs", objc_opt_class(), self, self->_name, v5, v6, v7];

  return v8;
}

- (NUJobQueue)init
{
  v31 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_14567);
  }

  v2 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = v2;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v3 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v6];
    *buf = 138543362;
    v28 = v7;
    _os_log_error_impl(&dword_1C0184000, v4, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v8 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v8 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_14567);
      }

      goto LABEL_8;
    }

    if (v8 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_14567);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v9 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v10 = MEMORY[0x1E696AF00];
      v11 = v9;
      callStackSymbols = [v10 callStackSymbols];
      v13 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v13;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v14 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = MEMORY[0x1E696AF00];
    v17 = specific;
    v18 = v14;
    callStackSymbols2 = [v16 callStackSymbols];
    v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v28 = specific;
    v29 = 2114;
    v30 = v20;
    _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  _NUAssertFailHandler("[NUJobQueue init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUJobQueue.m", 49, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v23, v24, v25, v26, v22);
}

- (NUJobQueue)initWithStage:(int64_t)stage name:(id)name
{
  nameCopy = name;
  v29.receiver = self;
  v29.super_class = NUJobQueue;
  v7 = [(NUJobQueue *)&v29 init];
  name = v7->_name;
  v7->_name = nameCopy;
  v9 = nameCopy;

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NUJobQueue-%@", v9];
  v11 = [v10 cStringUsingEncoding:1];

  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v13 = dispatch_queue_create(v11, v12);
  queue = v7->_queue;
  v7->_queue = v13;

  v15 = MEMORY[0x1E696AEC0];
  v16 = stage - 1;
  if ((stage - 1) > 5)
  {
    v17 = @"None";
  }

  else
  {
    v17 = off_1E810B140[v16];
  }

  v18 = v17;
  v19 = [v15 stringWithFormat:@"Interactive_%@", v18];

  v20 = [[NUJobPriorityQueue alloc] initWithName:v19 owner:v7 qos:33];
  interactiveQueue = v7->_interactiveQueue;
  v7->_interactiveQueue = v20;

  v22 = MEMORY[0x1E696AEC0];
  if (v16 > 5)
  {
    v23 = @"None";
  }

  else
  {
    v23 = off_1E810B140[v16];
  }

  v24 = v23;
  v25 = [v22 stringWithFormat:@"Initiated_%@", v24];

  v26 = [[NUJobPriorityQueue alloc] initWithName:v25 owner:v7 qos:25];
  initiatedQueue = v7->_initiatedQueue;
  v7->_initiatedQueue = v26;

  v7->_stage = stage;
  return v7;
}

@end