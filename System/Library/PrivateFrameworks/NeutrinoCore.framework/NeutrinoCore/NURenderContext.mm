@interface NURenderContext
- (NSArray)jobs;
- (NURenderContext)initWithPurpose:(int64_t)purpose;
- (id)_dequeueRateLimitedJob;
- (id)debugDescription;
- (id)dequeueRateLimitedJob;
- (int64_t)jobCount;
- (void)_cancelAllJobs;
- (void)_enqueueRateLimitedJob:(id)job;
- (void)_removeJob:(id)job;
- (void)addJob:(id)job;
- (void)cancelAllJobs;
- (void)cancelAllRequests;
- (void)enqueueRateLimitedJob:(id)job;
- (void)removeJob:(id)job;
- (void)updateNextRenderTimeFromTime:(unint64_t)time;
@end

@implementation NURenderContext

- (id)debugDescription
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  shouldCoalesceUpdates = [(NURenderContext *)self shouldCoalesceUpdates];
  [(NURenderContext *)self minimumRenderInterval];
  v7 = [v3 stringWithFormat:@"<%@:%p> coalescing=%d minimumRenderInterval=%0.3f rateLimitJobs=%lu\n", v4, self, shouldCoalesceUpdates, v6, -[NSMutableArray count](self->_rateLimitedJobs, "count")];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  jobs = [(NURenderContext *)self jobs];
  v9 = [jobs countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(jobs);
        }

        [v7 appendFormat:@"\t%@\n", *(*(&v14 + 1) + 8 * i)];
      }

      v10 = [jobs countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  return v7;
}

- (void)updateNextRenderTimeFromTime:(unint64_t)time
{
  [(NURenderContext *)self minimumRenderInterval];
  v6 = dispatch_time(time, (v5 * 1000000000.0));

  [(NURenderContext *)self setNextRenderTime:v6];
}

- (id)_dequeueRateLimitedJob
{
  firstObject = [(NSMutableArray *)self->_rateLimitedJobs firstObject];
  if (firstObject)
  {
    [(NSMutableArray *)self->_rateLimitedJobs removeObjectAtIndex:0];
  }

  return firstObject;
}

- (id)dequeueRateLimitedJob
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__10498;
  v10 = __Block_byref_object_dispose__10499;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__NURenderContext_dequeueRateLimitedJob__block_invoke;
  v5[3] = &unk_1E810B980;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __40__NURenderContext_dequeueRateLimitedJob__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _dequeueRateLimitedJob];

  return MEMORY[0x1EEE66BB8]();
}

- (void)_enqueueRateLimitedJob:(id)job
{
  jobCopy = job;
  rateLimitedJobs = self->_rateLimitedJobs;
  v8 = jobCopy;
  if (!rateLimitedJobs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_rateLimitedJobs;
    self->_rateLimitedJobs = v6;

    jobCopy = v8;
    rateLimitedJobs = self->_rateLimitedJobs;
  }

  [(NSMutableArray *)rateLimitedJobs addObject:jobCopy];
}

- (void)enqueueRateLimitedJob:(id)job
{
  jobCopy = job;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__NURenderContext_enqueueRateLimitedJob___block_invoke;
  v7[3] = &unk_1E810B958;
  v7[4] = self;
  v8 = jobCopy;
  v6 = jobCopy;
  dispatch_sync(queue, v7);
}

- (void)cancelAllRequests
{
  v3 = +[NUScheduler sharedScheduler];
  [v3 cancelJobsForRenderContext:self];
}

- (void)cancelAllJobs
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__NURenderContext_cancelAllJobs__block_invoke;
  block[3] = &unk_1E810B9A8;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_cancelAllJobs
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_jobs;
  v3 = [(NSPointerArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) cancel];
      }

      while (v4 != v6);
      v4 = [(NSPointerArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)addJob:(id)job
{
  jobCopy = job;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__NURenderContext_addJob___block_invoke;
  block[3] = &unk_1E810B958;
  block[4] = self;
  v6 = jobCopy;
  v12 = v6;
  dispatch_sync(queue, block);
  objc_initWeak(&location, self);
  v7 = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __26__NURenderContext_addJob___block_invoke_2;
  v8[3] = &unk_1E810A040;
  objc_copyWeak(&v9, &location);
  [v6 addStageObserver:self queue:v7 block:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

uint64_t __26__NURenderContext_addJob___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) compact];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);

  return [v3 addPointer:v2];
}

void __26__NURenderContext_addJob___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3 == 6)
  {
    v5 = a2;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _jobFinished:v5];
  }
}

- (void)removeJob:(id)job
{
  jobCopy = job;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __29__NURenderContext_removeJob___block_invoke;
  v7[3] = &unk_1E810B958;
  v7[4] = self;
  v8 = jobCopy;
  v6 = jobCopy;
  dispatch_sync(queue, v7);
}

- (void)_removeJob:(id)job
{
  jobCopy = job;
  if ([(NSPointerArray *)self->_jobs count])
  {
    v4 = 0;
    while ([(NSPointerArray *)self->_jobs pointerAtIndex:v4]!= jobCopy)
    {
      if (++v4 >= [(NSPointerArray *)self->_jobs count])
      {
        goto LABEL_7;
      }
    }

    [(NSPointerArray *)self->_jobs removePointerAtIndex:v4];
  }

LABEL_7:
  [(NSMutableArray *)self->_rateLimitedJobs removeObject:jobCopy];
  [jobCopy removeObserver:self];
}

- (int64_t)jobCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__NURenderContext_jobCount__block_invoke;
  v5[3] = &unk_1E810B980;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __27__NURenderContext_jobCount__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (NSArray)jobs
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__10498;
  v10 = __Block_byref_object_dispose__10499;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __23__NURenderContext_jobs__block_invoke;
  v5[3] = &unk_1E810B980;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __23__NURenderContext_jobs__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 8) allObjects];

  return MEMORY[0x1EEE66BB8]();
}

- (NURenderContext)initWithPurpose:(int64_t)purpose
{
  v10.receiver = self;
  v10.super_class = NURenderContext;
  v4 = [(NURenderContext *)&v10 init];
  weakObjectsPointerArray = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
  jobs = v4->_jobs;
  v4->_jobs = weakObjectsPointerArray;

  v7 = dispatch_queue_create("NURenderContextNotification", 0);
  queue = v4->_queue;
  v4->_queue = v7;

  v4->_purpose = purpose;
  return v4;
}

@end