@interface CNVirtualScheduler
+ (id)providerWithScheduler:(id)scheduler;
+ (unint64_t)timeWithDelay:(double)delay fromClock:(unint64_t)clock;
- (BOOL)_performJobs;
- (CNVirtualScheduler)init;
- (NSString)description;
- (id)_scheduleBlock:(id)block atTime:(unint64_t)time;
- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service;
- (id)performCancelableBlock:(id)block qualityOfService:(unint64_t)service;
- (unint64_t)_nextSchedulableTick;
- (void)advanceTo:(unint64_t)to;
- (void)performBlock:(id)block qualityOfService:(unint64_t)service;
@end

@implementation CNVirtualScheduler

+ (id)providerWithScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__CNVirtualScheduler_providerWithScheduler___block_invoke;
  aBlock[3] = &unk_1E6ED5B68;
  v9 = schedulerCopy;
  v4 = schedulerCopy;
  v5 = _Block_copy(aBlock);
  v6 = [[CNSchedulerProvider alloc] initWithBackgroundScheduler:v4 mainThreadScheduler:v4 inlineScheduler:v4 immediateScheduler:v4 serialSchedulerProvider:v5 workloopSchedulerProvider:v5 synchronousSerialSchedulerProvider:&__block_literal_global_11 readerWriterSchedulerProvider:&__block_literal_global_3];

  return v6;
}

CNVirtualReaderWriterScheduler *__44__CNVirtualScheduler_providerWithScheduler___block_invoke_3()
{
  v0 = [CNVirtualReaderWriterScheduler alloc];
  v1 = +[CNScheduler immediateScheduler];
  v2 = [(CNVirtualReaderWriterScheduler *)v0 initWithScheduler:v1];

  return v2;
}

- (CNVirtualScheduler)init
{
  v7.receiver = self;
  v7.super_class = CNVirtualScheduler;
  v2 = [(CNVirtualScheduler *)&v7 init];
  if (v2)
  {
    v3 = [CNQueue priorityQueueWithComparator:CNVirtualSchedulerJobTimeComparator];
    queue = v2->_queue;
    v2->_queue = v3;

    v2->_isStarted = 0;
    v5 = v2;
  }

  return v2;
}

- (NSString)description
{
  if ([(CNQueue *)self->_queue count])
  {
    allObjects = [(CNQueue *)self->_queue allObjects];
    v4 = [allObjects _cn_map:&__block_literal_global_10_0];
    v5 = [v4 sortedArrayUsingSelector:sel_compare_];
    v6 = [v5 _cn_map:&__block_literal_global_16];

    v7 = MEMORY[0x1E696AEC0];
    v8 = [v6 count];
    if ([v6 count] == 1)
    {
      v9 = @"job";
    }

    else
    {
      v9 = @"jobs";
    }

    v10 = [v6 componentsJoinedByString:{@", "}];
    v11 = [v7 stringWithFormat:@"%lu %@ scheduled for t=%@", v8, v9, v10];
  }

  else
  {
    v11 = @"no jobs scheduled";
  }

  v12 = MEMORY[0x1E696AEC0];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = [v12 stringWithFormat:@"<%@: %p clock=%lu, %@>", v14, self, self->_clock, v11];

  return v15;
}

uint64_t __33__CNVirtualScheduler_description__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 time];

  return [v2 numberWithUnsignedInteger:v3];
}

- (void)performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  v5 = [(CNVirtualScheduler *)self _scheduleBlock:blockCopy atTime:[(CNVirtualScheduler *)self _nextSchedulableTick]];
  if (self->_isStarted && !self->_isPerforming)
  {
    [(CNVirtualScheduler *)self _performJobs];
  }
}

- (id)performCancelableBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  v6 = objc_alloc_init(CNCancelationToken);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __62__CNVirtualScheduler_performCancelableBlock_qualityOfService___block_invoke;
  v16[3] = &unk_1E6ED5858;
  v7 = v6;
  v17 = v7;
  v8 = blockCopy;
  v18 = v8;
  v9 = [v16 copy];
  v10 = [(CNVirtualScheduler *)self _scheduleBlock:v9 atTime:[(CNVirtualScheduler *)self _nextSchedulableTick]];
  objc_initWeak(&location, v10);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__CNVirtualScheduler_performCancelableBlock_qualityOfService___block_invoke_2;
  v13[3] = &unk_1E6ED5C10;
  objc_copyWeak(&v14, &location);
  v13[4] = self;
  [(CNCancelationToken *)v7 addCancelationBlock:v13];
  if (self->_isStarted && !self->_isPerforming)
  {
    [(CNVirtualScheduler *)self _performJobs];
  }

  v11 = v7;
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v11;
}

uint64_t __62__CNVirtualScheduler_performCancelableBlock_qualityOfService___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isCanceled];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }

  return result;
}

void __62__CNVirtualScheduler_performCancelableBlock_qualityOfService___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) queue];
  [v2 dequeueObject:WeakRetained];
}

- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  v8 = -[CNVirtualScheduler _scheduleBlock:atTime:](self, "_scheduleBlock:atTime:", blockCopy, [objc_opt_class() timeWithDelay:self->_clock fromClock:delay]);
  objc_initWeak(&location, v8);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__CNVirtualScheduler_afterDelay_performBlock_qualityOfService___block_invoke;
  v11[3] = &unk_1E6ED5C10;
  objc_copyWeak(&v12, &location);
  v11[4] = self;
  v9 = [CNCancelationToken tokenWithCancelationBlock:v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v9;
}

void __63__CNVirtualScheduler_afterDelay_performBlock_qualityOfService___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) queue];
  [v2 dequeueObject:WeakRetained];
}

+ (unint64_t)timeWithDelay:(double)delay fromClock:(unint64_t)clock
{
  v4 = vcvtad_u64_f64(delay * 10000.0) + clock;
  if ((~clock / 0x2710) <= delay)
  {
    return -1;
  }

  else
  {
    return v4;
  }
}

- (id)_scheduleBlock:(id)block atTime:(unint64_t)time
{
  v5 = [CNVirtualSchedulerJob jobWithTime:time block:block];
  [(CNQueue *)self->_queue enqueue:v5];

  return v5;
}

- (unint64_t)_nextSchedulableTick
{
  v2 = self->_nextSchedulableTick + 1;
  self->_nextSchedulableTick = v2;
  return v2;
}

- (void)advanceTo:(unint64_t)to
{
  self->_stopTime = to;
  if ([(CNVirtualScheduler *)self _performJobs])
  {
    self->_clock = to;
    self->_nextSchedulableTick = to;
  }
}

- (BOOL)_performJobs
{
  peek = [(CNQueue *)self->_queue peek];
  if (peek)
  {
    v4 = peek;
    do
    {
      if (!self->_isStarted && [v4 time] > self->_stopTime)
      {
        break;
      }

      time = [v4 time];
      self->_clock = time;
      self->_nextSchedulableTick = time;
      self->_isPerforming = 1;
      block = [v4 block];
      block[2]();

      self->_isPerforming = 0;
      [(CNQueue *)self->_queue dequeueObject:v4];
      peek2 = [(CNQueue *)self->_queue peek];

      v4 = peek2;
    }

    while (peek2);
  }

  allObjects = [(CNQueue *)self->_queue allObjects];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __34__CNVirtualScheduler__performJobs__block_invoke;
  v11[3] = &unk_1E6ED5C38;
  v11[4] = self;
  v9 = [allObjects _cn_any:v11];

  return v9 ^ 1;
}

@end