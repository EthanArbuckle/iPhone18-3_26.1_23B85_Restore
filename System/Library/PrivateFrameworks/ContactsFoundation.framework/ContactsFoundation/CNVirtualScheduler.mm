@interface CNVirtualScheduler
+ (id)providerWithScheduler:(id)a3;
+ (unint64_t)timeWithDelay:(double)a3 fromClock:(unint64_t)a4;
- (BOOL)_performJobs;
- (CNVirtualScheduler)init;
- (NSString)description;
- (id)_scheduleBlock:(id)a3 atTime:(unint64_t)a4;
- (id)afterDelay:(double)a3 performBlock:(id)a4 qualityOfService:(unint64_t)a5;
- (id)performCancelableBlock:(id)a3 qualityOfService:(unint64_t)a4;
- (unint64_t)_nextSchedulableTick;
- (void)advanceTo:(unint64_t)a3;
- (void)performBlock:(id)a3 qualityOfService:(unint64_t)a4;
@end

@implementation CNVirtualScheduler

+ (id)providerWithScheduler:(id)a3
{
  v3 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__CNVirtualScheduler_providerWithScheduler___block_invoke;
  aBlock[3] = &unk_1E6ED5B68;
  v9 = v3;
  v4 = v3;
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
    v3 = [(CNQueue *)self->_queue allObjects];
    v4 = [v3 _cn_map:&__block_literal_global_10_0];
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

- (void)performBlock:(id)a3 qualityOfService:(unint64_t)a4
{
  v6 = a3;
  v5 = [(CNVirtualScheduler *)self _scheduleBlock:v6 atTime:[(CNVirtualScheduler *)self _nextSchedulableTick]];
  if (self->_isStarted && !self->_isPerforming)
  {
    [(CNVirtualScheduler *)self _performJobs];
  }
}

- (id)performCancelableBlock:(id)a3 qualityOfService:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(CNCancelationToken);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __62__CNVirtualScheduler_performCancelableBlock_qualityOfService___block_invoke;
  v16[3] = &unk_1E6ED5858;
  v7 = v6;
  v17 = v7;
  v8 = v5;
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

- (id)afterDelay:(double)a3 performBlock:(id)a4 qualityOfService:(unint64_t)a5
{
  v7 = a4;
  v8 = -[CNVirtualScheduler _scheduleBlock:atTime:](self, "_scheduleBlock:atTime:", v7, [objc_opt_class() timeWithDelay:self->_clock fromClock:a3]);
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

+ (unint64_t)timeWithDelay:(double)a3 fromClock:(unint64_t)a4
{
  v4 = vcvtad_u64_f64(a3 * 10000.0) + a4;
  if ((~a4 / 0x2710) <= a3)
  {
    return -1;
  }

  else
  {
    return v4;
  }
}

- (id)_scheduleBlock:(id)a3 atTime:(unint64_t)a4
{
  v5 = [CNVirtualSchedulerJob jobWithTime:a4 block:a3];
  [(CNQueue *)self->_queue enqueue:v5];

  return v5;
}

- (unint64_t)_nextSchedulableTick
{
  v2 = self->_nextSchedulableTick + 1;
  self->_nextSchedulableTick = v2;
  return v2;
}

- (void)advanceTo:(unint64_t)a3
{
  self->_stopTime = a3;
  if ([(CNVirtualScheduler *)self _performJobs])
  {
    self->_clock = a3;
    self->_nextSchedulableTick = a3;
  }
}

- (BOOL)_performJobs
{
  v3 = [(CNQueue *)self->_queue peek];
  if (v3)
  {
    v4 = v3;
    do
    {
      if (!self->_isStarted && [v4 time] > self->_stopTime)
      {
        break;
      }

      v5 = [v4 time];
      self->_clock = v5;
      self->_nextSchedulableTick = v5;
      self->_isPerforming = 1;
      v6 = [v4 block];
      v6[2]();

      self->_isPerforming = 0;
      [(CNQueue *)self->_queue dequeueObject:v4];
      v7 = [(CNQueue *)self->_queue peek];

      v4 = v7;
    }

    while (v7);
  }

  v8 = [(CNQueue *)self->_queue allObjects];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __34__CNVirtualScheduler__performJobs__block_invoke;
  v11[3] = &unk_1E6ED5C38;
  v11[4] = self;
  v9 = [v8 _cn_any:v11];

  return v9 ^ 1;
}

@end