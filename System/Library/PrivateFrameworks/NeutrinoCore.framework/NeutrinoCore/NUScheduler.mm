@interface NUScheduler
+ (id)sharedScheduler;
- (BOOL)_coalesceJobs:(id)jobs;
- (BOOL)_prepareNewJob:(id)job at:(unint64_t)at;
- (NUScheduler)initWithName:(id)name;
- (id)_queueForStage:(int64_t)stage;
- (id)debugDescription;
- (void)_enqueueDependentJobsForRenderJob:(id)job;
- (void)_enqueueJobsForRequests:(id)requests withGroup:(id)group;
- (void)_enqueueRenderJob:(id)job toStage:(int64_t)stage;
- (void)_observeRenderJob:(id)job withGroup:(id)group;
- (void)_scheduleRateLimitWakeupForContext:(id)context;
- (void)_wakeupRateLimitJobForContext:(id)context;
- (void)cancelJobsForRenderContext:(id)context;
- (void)enqueueJobsForRequests:(id)requests withGroup:(id)group;
- (void)submitRequests:(id)requests withGroup:(id)group;
@end

@implementation NUScheduler

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(NUJobQueue *)self->_prepareQueue debugDescription];
  v6 = [(NUJobQueue *)self->_renderQueue debugDescription];
  v7 = [(NUJobQueue *)self->_completeQueue debugDescription];
  v8 = [v3 stringWithFormat:@"<%@:%p> prepare = %@\nrender = %@\ncomplete = %@", v4, self, v5, v6, v7];

  return v8;
}

- (void)cancelJobsForRenderContext:(id)context
{
  v29 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if (!contextCopy)
  {
    v7 = NUAssertLogger_18064();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "context != nil"];
      *buf = 138543362;
      v26 = v8;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v10 = NUAssertLogger_18064();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        callStackSymbols = [v15 callStackSymbols];
        v18 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v26 = v14;
        v27 = 2114;
        v28 = v18;
        _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v26 = v13;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUScheduler cancelJobsForRenderContext:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUScheduler.m", 229, @"Invalid parameter not satisfying: %s", v19, v20, v21, v22, "context != nil");
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__NUScheduler_cancelJobsForRenderContext___block_invoke;
  block[3] = &unk_1E810B9A8;
  v24 = contextCopy;
  v6 = contextCopy;
  dispatch_sync(queue, block);
}

- (void)_enqueueRenderJob:(id)job toStage:(int64_t)stage
{
  jobCopy = job;
  v7 = [(NUScheduler *)self _queueForStage:stage];
  [v7 addJob:jobCopy];
}

- (void)_enqueueDependentJobsForRenderJob:(id)job
{
  v27 = *MEMORY[0x1E69E9840];
  jobCopy = job;
  dependentJobs = [jobCopy dependentJobs];
  v5 = dispatch_group_create();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = dependentJobs;
  v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        dispatch_group_enter(v5);
        replyGroup = [v10 replyGroup];
        [(NUScheduler *)self _observeRenderJob:v10 withGroup:replyGroup];

        replyGroup2 = [v10 replyGroup];
        queue = self->_queue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __49__NUScheduler__enqueueDependentJobsForRenderJob___block_invoke;
        block[3] = &unk_1E810B9A8;
        v21 = v5;
        dispatch_group_notify(replyGroup2, queue, block);

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  v14 = self->_queue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __49__NUScheduler__enqueueDependentJobsForRenderJob___block_invoke_2;
  v18[3] = &unk_1E810B958;
  v18[4] = self;
  v19 = jobCopy;
  v15 = jobCopy;
  dispatch_group_notify(v5, v14, v18);
  [(NUJobQueue *)self->_prepareQueue addJobs:obj];
}

- (void)_observeRenderJob:(id)job withGroup:(id)group
{
  groupCopy = group;
  jobCopy = job;
  dispatch_group_enter(groupCopy);
  queue = self->_queue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __43__NUScheduler__observeRenderJob_withGroup___block_invoke;
  v12[3] = &unk_1E810A9D8;
  v13 = groupCopy;
  selfCopy = self;
  v9 = groupCopy;
  [jobCopy addStageObserver:self queue:queue block:v12];
  v10 = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __43__NUScheduler__observeRenderJob_withGroup___block_invoke_2;
  v11[3] = &unk_1E810AA00;
  v11[4] = self;
  [jobCopy addCancelObserver:self queue:v10 block:v11];
}

void __43__NUScheduler__observeRenderJob_withGroup___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3 == 3)
  {
    [*(a1 + 40) _enqueueDependentJobsForRenderJob:v5];
  }

  else
  {
    if (a3 == 6)
    {
      dispatch_group_leave(*(a1 + 32));
      v5 = v6;
    }

    [*(a1 + 40) _enqueueRenderJob:v5 toStage:a3];
  }
}

void __43__NUScheduler__observeRenderJob_withGroup___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 _queueForStage:a3];
  [v6 removeJob:v5];
}

- (void)_scheduleRateLimitWakeupForContext:(id)context
{
  contextCopy = context;
  if (([(NSMutableSet *)self->_scheduledContextWakeups containsObject:contextCopy]& 1) == 0)
  {
    [(NSMutableSet *)self->_scheduledContextWakeups addObject:contextCopy];
    objc_initWeak(&location, self);
    objc_initWeak(&from, contextCopy);
    rateLimiterQueue = self->_rateLimiterQueue;
    nextRenderTime = [contextCopy nextRenderTime];
    queue = self->_queue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50__NUScheduler__scheduleRateLimitWakeupForContext___block_invoke;
    v8[3] = &unk_1E810A9B0;
    objc_copyWeak(&v9, &from);
    objc_copyWeak(&v10, &location);
    [(NUScheduledQueue *)rateLimiterQueue dispatchAt:nextRenderTime queue:queue block:v8];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

void __50__NUScheduler__scheduleRateLimitWakeupForContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained((a1 + 40));
    [v3 _wakeupRateLimitJobForContext:v4];

    WeakRetained = v4;
  }
}

- (void)_wakeupRateLimitJobForContext:(id)context
{
  contextCopy = context;
  [(NSMutableSet *)self->_scheduledContextWakeups removeObject:contextCopy];
  dequeueRateLimitedJob = [contextCopy dequeueRateLimitedJob];
  v5 = dequeueRateLimitedJob;
  if (dequeueRateLimitedJob)
  {
    [dequeueRateLimitedJob resume];
    [contextCopy updateNextRenderTimeFromTime:{objc_msgSend(contextCopy, "nextRenderTime")}];
    [(NUScheduler *)self _scheduleRateLimitWakeupForContext:contextCopy];
  }

  else
  {
    [contextCopy setNextRenderTime:0];
  }
}

- (void)_enqueueJobsForRequests:(id)requests withGroup:(id)group
{
  v23 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  groupCopy = group;
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = dispatch_time(0, 0);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = requestsCopy;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        newRenderJob = [*(*(&v18 + 1) + 8 * v13) newRenderJob];
        [(NUScheduler *)self _observeRenderJob:newRenderJob withGroup:groupCopy];
        [newRenderJob setReplyGroup:groupCopy];
        if ([(NUScheduler *)self _prepareNewJob:newRenderJob at:v8])
        {
          [v17 addObject:newRenderJob];
        }

        else
        {
          [newRenderJob pause];
          request = [newRenderJob request];
          renderContext = [request renderContext];
          [(NUScheduler *)self _scheduleRateLimitWakeupForContext:renderContext];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  [(NUJobQueue *)self->_prepareQueue addJobs:v17];
}

- (id)_queueForStage:(int64_t)stage
{
  switch(stage)
  {
    case 1:
      v4 = 16;
LABEL_7:
      v5 = *(&self->super.isa + v4);

      return v5;
    case 5:
      v4 = 32;
      goto LABEL_7;
    case 4:
      v4 = 24;
      goto LABEL_7;
  }

  v5 = 0;

  return v5;
}

- (void)submitRequests:(id)requests withGroup:(id)group
{
  requestsCopy = requests;
  groupCopy = group;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__NUScheduler_submitRequests_withGroup___block_invoke;
  block[3] = &unk_1E810B3A0;
  block[4] = self;
  v12 = requestsCopy;
  v13 = groupCopy;
  v9 = groupCopy;
  v10 = requestsCopy;
  dispatch_group_async(v9, queue, block);
}

- (NUScheduler)initWithName:(id)name
{
  nameCopy = name;
  v24.receiver = self;
  v24.super_class = NUScheduler;
  v5 = [(NUScheduler *)&v24 init];
  nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"NUScheduler-%@", nameCopy];
  v7 = [nameCopy cStringUsingEncoding:1];

  name = v5->_name;
  v5->_name = nameCopy;
  v9 = nameCopy;

  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v11 = dispatch_queue_create(v7, v10);
  queue = v5->_queue;
  v5->_queue = v11;

  v13 = [[NUJobQueue alloc] initWithStage:1 name:v9];
  prepareQueue = v5->_prepareQueue;
  v5->_prepareQueue = v13;

  v15 = [[NUJobQueue alloc] initWithStage:4 name:v9];
  renderQueue = v5->_renderQueue;
  v5->_renderQueue = v15;

  v17 = [[NUJobQueue alloc] initWithStage:5 name:v9];
  completeQueue = v5->_completeQueue;
  v5->_completeQueue = v17;

  v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  scheduledContextWakeups = v5->_scheduledContextWakeups;
  v5->_scheduledContextWakeups = v19;

  v21 = objc_alloc_init(NUScheduledQueue);
  rateLimiterQueue = v5->_rateLimiterQueue;
  v5->_rateLimiterQueue = v21;

  return v5;
}

+ (id)sharedScheduler
{
  v2 = +[NUFactory sharedFactory];
  scheduler = [v2 scheduler];

  return scheduler;
}

- (void)enqueueJobsForRequests:(id)requests withGroup:(id)group
{
  requestsCopy = requests;
  groupCopy = group;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__NUScheduler_RenderJobManagement__enqueueJobsForRequests_withGroup___block_invoke;
  block[3] = &unk_1E810B3A0;
  block[4] = self;
  v12 = requestsCopy;
  v13 = groupCopy;
  v9 = groupCopy;
  v10 = requestsCopy;
  dispatch_sync(queue, block);
}

- (BOOL)_coalesceJobs:(id)jobs
{
  jobsCopy = jobs;
  v4 = [jobsCopy count];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    for (i = 0; i != v5; ++i)
    {
      v9 = [jobsCopy objectAtIndexedSubscript:i];
      currentStage = [v9 currentStage];
      v11 = currentStage;
      if ((v7 & 1) != 0 || (v12 = currentStage - 3, v13 = [v9 isExecuting], v14 = 1, v12 >= 0xFFFFFFFFFFFFFFFELL) && (v13 & 1) == 0)
      {
        cancelCoalescedJob = [v9 cancelCoalescedJob];
        if (cancelCoalescedJob)
        {
          v14 = v7;
        }

        else
        {
          v14 = 1;
        }

        if (cancelCoalescedJob)
        {
          v6 |= v11 != 2;
        }
      }

      v7 = v14;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (BOOL)_prepareNewJob:(id)job at:(unint64_t)at
{
  jobCopy = job;
  request = [jobCopy request];
  renderContext = [request renderContext];

  [renderContext minimumRenderInterval];
  v10 = v9;
  v11 = v9 != 0.0;
  if ([renderContext shouldCoalesceUpdates])
  {
    jobs = [renderContext jobs];
    v13 = [(NUScheduler *)self _coalesceJobs:jobs];

    v11 = (v10 != 0.0) & ~v13;
  }

  [renderContext addJob:jobCopy];
  if (v10 == 0.0 || v11 == 0)
  {
    goto LABEL_10;
  }

  if ([renderContext nextRenderTime] <= at)
  {
    [renderContext updateNextRenderTimeFromTime:at];
LABEL_10:
    v15 = 1;
    goto LABEL_11;
  }

  [renderContext enqueueRateLimitedJob:jobCopy];
  v15 = 0;
LABEL_11:

  return v15;
}

@end