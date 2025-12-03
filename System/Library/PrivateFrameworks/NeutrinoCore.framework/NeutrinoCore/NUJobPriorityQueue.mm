@interface NUJobPriorityQueue
- (BOOL)_removeJob:(id)job;
- (BOOL)_runNextJob;
- (BOOL)removeJob:(id)job;
- (BOOL)start;
- (NUJobPriorityQueue)init;
- (NUJobPriorityQueue)initWithName:(id)name owner:(id)owner qos:(unsigned int)qos;
- (id)_popJob;
- (id)description;
- (id)popJob;
- (int64_t)count;
- (void)_run;
- (void)_sortIfNeeded;
- (void)_startRunning;
- (void)addJob:(id)job;
@end

@implementation NUJobPriorityQueue

- (BOOL)_runNextJob
{
  v3 = objc_autoreleasePoolPush();
  popJob = [(NUJobPriorityQueue *)self popJob];
  if (popJob)
  {
    WeakRetained = objc_loadWeakRetained(&self->_owner);
    if (WeakRetained)
    {
      v6 = MEMORY[0x1E696AEC0];
      request = [popJob request];
      name = [request name];
      v9 = [v6 stringWithFormat:@"%@-j%llu", name, objc_msgSend(popJob, "jobNumber")];
      currentlyExecutingJobName = self->_currentlyExecutingJobName;
      self->_currentlyExecutingJobName = v9;

      dispatch_queue_set_specific(self->_runQueue, NUCurrentlyExecutingJobNameKey, self->_currentlyExecutingJobName, 0);
      [popJob run:{objc_msgSend(WeakRetained, "stage")}];
      v11 = self->_currentlyExecutingJobName;
      self->_currentlyExecutingJobName = 0;

      dispatch_queue_set_specific(self->_runQueue, NUCurrentlyExecutingJobNameKey, 0, 0);
    }
  }

  objc_autoreleasePoolPop(v3);
  return popJob != 0;
}

- (void)_run
{
    ;
  }

  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__NUJobPriorityQueue__run__block_invoke;
  block[3] = &unk_1E810B9A8;
  block[4] = self;
  dispatch_sync(stateQueue, block);
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  [WeakRetained finishedPriorityQueue:self];
}

- (void)_startRunning
{
  runQueue = self->_runQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__NUJobPriorityQueue__startRunning__block_invoke;
  block[3] = &unk_1E810B9A8;
  block[4] = self;
  dispatch_async(runQueue, block);
}

- (BOOL)start
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__NUJobPriorityQueue_start__block_invoke;
  block[3] = &unk_1E810B0A0;
  block[4] = self;
  block[5] = &v11;
  block[6] = &v7;
  dispatch_sync(stateQueue, block);
  if (*(v8 + 24) == 1)
  {
    [(NUJobPriorityQueue *)self _startRunning];
  }

  if (v12[3])
  {
    v4 = 1;
  }

  else
  {
    v4 = *(v8 + 24);
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  return v4 & 1;
}

uint64_t __27__NUJobPriorityQueue_start__block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 24) = *(a1[4] + 56);
  result = [*(a1[4] + 8) count];
  *(*(a1[6] + 8) + 24) = result != 0;
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    *(a1[4] + 56) = 1;
  }

  return result;
}

uint64_t __27__NUJobPriorityQueue__sort__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 priority];
  v7 = [v5 priority];
  v8 = [v6 compare:v7];

  if (!v8)
  {
    v9 = [v4 jobNumber];
    if (v9 < [v5 jobNumber])
    {
      v8 = 1;
    }

    else
    {
      v8 = -1;
    }
  }

  return v8;
}

- (void)_sortIfNeeded
{
  if (self->_needSort)
  {
    [(NUJobPriorityQueue *)self _sort];
    self->_needSort = 0;
  }
}

- (int64_t)count
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__NUJobPriorityQueue_count__block_invoke;
  v5[3] = &unk_1E810B980;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __27__NUJobPriorityQueue_count__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)_popJob
{
  [(NUJobPriorityQueue *)self _sortIfNeeded];
  lastObject = [(NSMutableArray *)self->_jobs lastObject];
  [(NSMutableArray *)self->_jobs removeLastObject];

  return lastObject;
}

- (id)popJob
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1736;
  v10 = __Block_byref_object_dispose__1737;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__NUJobPriorityQueue_popJob__block_invoke;
  v5[3] = &unk_1E810B980;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __28__NUJobPriorityQueue_popJob__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _popJob];

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)_removeJob:(id)job
{
  jobCopy = job;
  v5 = [(NSMutableArray *)self->_jobs containsObject:jobCopy];
  if (v5)
  {
    [(NSMutableArray *)self->_jobs removeObject:jobCopy];
  }

  return v5;
}

- (BOOL)removeJob:(id)job
{
  jobCopy = job;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__NUJobPriorityQueue_removeJob___block_invoke;
  block[3] = &unk_1E810B500;
  v9 = jobCopy;
  v10 = &v11;
  block[4] = self;
  v6 = jobCopy;
  dispatch_sync(stateQueue, block);
  LOBYTE(stateQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return stateQueue;
}

uint64_t __32__NUJobPriorityQueue_removeJob___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _removeJob:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)addJob:(id)job
{
  jobCopy = job;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __29__NUJobPriorityQueue_addJob___block_invoke;
  v7[3] = &unk_1E810B958;
  v7[4] = self;
  v8 = jobCopy;
  v6 = jobCopy;
  dispatch_sync(stateQueue, v7);
}

- (id)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1736;
  v10 = __Block_byref_object_dispose__1737;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__NUJobPriorityQueue_description__block_invoke;
  v5[3] = &unk_1E810B980;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __33__NUJobPriorityQueue_description__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = *(a1 + 32);
  if (*(v4 + 56))
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  *(*(*(a1 + 40) + 8) + 40) = [v2 stringWithFormat:@"<%@:%p> running = %@, jobCount = %ld", v3, v4, v5, objc_msgSend(*(v4 + 8), "count")];

  return MEMORY[0x1EEE66BB8]();
}

- (NUJobPriorityQueue)init
{
  v33 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_70);
  }

  v3 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = v3;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    v9 = [v4 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v7, v8];
    *buf = 138543362;
    v30 = v9;
    _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v10 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v10 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_70);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_70);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v11 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v12 = MEMORY[0x1E696AF00];
      v13 = v11;
      callStackSymbols = [v12 callStackSymbols];
      v15 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v15;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v16 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = MEMORY[0x1E696AF00];
    v19 = specific;
    v20 = v16;
    callStackSymbols2 = [v18 callStackSymbols];
    v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v30 = specific;
    v31 = 2114;
    v32 = v22;
    _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NUJobPriorityQueue init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUJobPriorityQueue.m", 43, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

- (NUJobPriorityQueue)initWithName:(id)name owner:(id)owner qos:(unsigned int)qos
{
  nameCopy = name;
  ownerCopy = owner;
  v26.receiver = self;
  v26.super_class = NUJobPriorityQueue;
  v11 = [(NUJobPriorityQueue *)&v26 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_name, name);
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:256];
    jobs = v12->_jobs;
    v12->_jobs = v13;

    objc_storeWeak(&v12->_owner, ownerCopy);
    nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"NUJobQueue.%@.run", nameCopy];
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_attr_make_with_qos_class(v16, qos, 0);

    v18 = dispatch_queue_create([nameCopy UTF8String], v17);
    runQueue = v12->_runQueue;
    v12->_runQueue = v18;

    nameCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NUJobQueue.%@.state", nameCopy];
    uTF8String = [nameCopy2 UTF8String];
    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v23 = dispatch_queue_create(uTF8String, v22);
    stateQueue = v12->_stateQueue;
    v12->_stateQueue = v23;
  }

  return v12;
}

@end