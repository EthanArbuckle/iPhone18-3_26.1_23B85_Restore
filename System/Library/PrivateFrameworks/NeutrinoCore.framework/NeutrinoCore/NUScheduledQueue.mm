@interface NUScheduledQueue
- (NUScheduledQueue)init;
- (void)_dispatchItemsThrough:(unint64_t)through;
- (void)_scheduleTimer:(unint64_t)timer;
- (void)_timerFired;
- (void)dealloc;
- (void)dispatchAfter:(double)after queue:(id)queue block:(id)block;
- (void)dispatchAt:(unint64_t)at queue:(id)queue block:(id)block;
@end

@implementation NUScheduledQueue

- (void)dispatchAt:(unint64_t)at queue:(id)queue block:(id)block
{
  v53 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  blockCopy = block;
  if (!queueCopy)
  {
    v14 = NUAssertLogger_29870();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "queue != nil"];
      *buf = 138543362;
      v50 = v15;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = NUAssertLogger_29870();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v28 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v29 = MEMORY[0x1E696AF00];
        v30 = v28;
        callStackSymbols = [v29 callStackSymbols];
        v32 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v28;
        v51 = 2114;
        v52 = v32;
        _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = v20;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUScheduledQueue dispatchAt:queue:block:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUScheduledQueue.m", 152, @"Invalid parameter not satisfying: %s", v33, v34, v35, v36, "queue != nil");
  }

  v10 = blockCopy;
  if (!blockCopy)
  {
    v21 = NUAssertLogger_29870();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "block != nil"];
      *buf = 138543362;
      v50 = v22;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v23 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v24 = NUAssertLogger_29870();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (v23)
    {
      if (v25)
      {
        v37 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v38 = MEMORY[0x1E696AF00];
        v39 = v37;
        callStackSymbols3 = [v38 callStackSymbols];
        v41 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v37;
        v51 = 2114;
        v52 = v41;
        _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = v27;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUScheduledQueue dispatchAt:queue:block:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUScheduledQueue.m", 153, @"Invalid parameter not satisfying: %s", v42, v43, v44, v45, "block != nil");
  }

  v11 = [[NUScheduledItem alloc] initWithScheduledTime:at queue:queueCopy block:blockCopy];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__NUScheduledQueue_dispatchAt_queue_block___block_invoke;
  block[3] = &unk_1E810B750;
  block[4] = self;
  v47 = v11;
  atCopy = at;
  v13 = v11;
  dispatch_sync(queue, block);
}

void __43__NUScheduledQueue_dispatchAt_queue_block___block_invoke(uint64_t a1)
{
  v3 = *(*(a1 + 32) + 24);
  v2 = [v3 indexOfObject:*(a1 + 40) inSortedRange:0 options:objc_msgSend(v3 usingComparator:{"count"), 1024, &__block_literal_global_29885}];
  [v3 insertObject:*(a1 + 40) atIndex:v2];
  if (!v2)
  {
    [*(a1 + 32) _scheduleTimer:*(a1 + 48)];
  }

  if ([v3 count] == 1)
  {
    [*(a1 + 32) _startTimer];
  }
}

- (void)dispatchAfter:(double)after queue:(id)queue block:(id)block
{
  blockCopy = block;
  queueCopy = queue;
  [(NUScheduledQueue *)self dispatchAt:NUDispatchSeconds(after) queue:queueCopy block:blockCopy];
}

- (void)_dispatchItemsThrough:(unint64_t)through
{
  if ([(NSMutableArray *)self->_items count])
  {
    firstObject = [(NSMutableArray *)self->_items firstObject];
    [firstObject dispatch];

    v6 = [(NSMutableArray *)self->_items count];
    if (v6 < 2)
    {
      v8 = 1;
    }

    else
    {
      v7 = v6;
      v8 = 1;
      while (1)
      {
        v9 = [(NSMutableArray *)self->_items objectAtIndexedSubscript:v8];
        if ([v9 scheduledTime] > through)
        {
          break;
        }

        ++v8;
        [v9 dispatch];

        if (v7 == v8)
        {
          v8 = v7;
          goto LABEL_9;
        }
      }
    }

LABEL_9:
    [(NSMutableArray *)self->_items removeObjectsInRange:0, v8];
  }

  firstObject2 = [(NSMutableArray *)self->_items firstObject];
  v11 = firstObject2;
  if (firstObject2)
  {
    -[NUScheduledQueue _scheduleTimer:](self, "_scheduleTimer:", [firstObject2 scheduledTime]);
  }

  else
  {
    [(NUScheduledQueue *)self _stopTimer];
  }
}

- (void)_timerFired
{
  [(NUScheduledQueue *)self timerCoalesce];
  v4 = NUDispatchSeconds(v3);

  [(NUScheduledQueue *)self _dispatchItemsThrough:v4];
}

- (void)_scheduleTimer:(unint64_t)timer
{
  timer = self->_timer;
  [(NUScheduledQueue *)self timerLeeway];

  dispatch_source_set_timer(timer, timer, 0xFFFFFFFFFFFFFFFFLL, (v5 * 1000000000.0));
}

- (void)dealloc
{
  if (![(NSMutableArray *)self->_items count])
  {
    dispatch_resume(self->_timer);
  }

  v3.receiver = self;
  v3.super_class = NUScheduledQueue;
  [(NUScheduledQueue *)&v3 dealloc];
}

- (NUScheduledQueue)init
{
  v15.receiver = self;
  v15.super_class = NUScheduledQueue;
  v2 = [(NUScheduledQueue *)&v15 init];
  *(v2 + 2) = xmmword_1C03C2A50;
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("NUScheduledQueue", v3);
  v5 = *(v2 + 1);
  *(v2 + 1) = v4;

  v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v2 + 1));
  v7 = *(v2 + 2);
  *(v2 + 2) = v6;

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = *(v2 + 3);
  *(v2 + 3) = v8;

  objc_initWeak(&location, v2);
  v10 = *(v2 + 2);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __24__NUScheduledQueue_init__block_invoke;
  v12[3] = &unk_1E810B708;
  objc_copyWeak(&v13, &location);
  dispatch_source_set_event_handler(v10, v12);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
  return v2;
}

void __24__NUScheduledQueue_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _timerFired];
}

@end