@interface _CNMainThreadScheduler
- (_CNMainThreadScheduler)init;
- (double)timestamp;
- (id)afterDelay:(double)a3 performBlock:(id)a4;
- (id)afterDelay:(double)a3 performBlock:(id)a4 qualityOfService:(unint64_t)a5;
- (id)performCancelableBlock:(id)a3;
- (id)performCancelableBlock:(id)a3 qualityOfService:(unint64_t)a4;
- (id)schedulerForImmediateExecution;
- (void)performBlock:(id)a3;
- (void)performBlock:(id)a3 qualityOfService:(unint64_t)a4;
@end

@implementation _CNMainThreadScheduler

- (_CNMainThreadScheduler)init
{
  v11.receiver = self;
  v11.super_class = _CNMainThreadScheduler;
  v2 = [(_CNMainThreadScheduler *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(_CNInlineScheduler);
    inlineScheduler = v2->_inlineScheduler;
    v2->_inlineScheduler = v3;

    v5 = +[_CNJumpToMainRunLoopScheduler isAvailable];
    v6 = off_1E6ED4978;
    if (v5)
    {
      v6 = off_1E6ED4980;
    }

    v7 = objc_alloc_init(*v6);
    jumpToMainScheduler = v2->_jumpToMainScheduler;
    v2->_jumpToMainScheduler = v7;

    v9 = v2;
  }

  return v2;
}

- (id)schedulerForImmediateExecution
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    [(_CNMainThreadScheduler *)self inlineScheduler];
  }

  else
  {
    [(_CNMainThreadScheduler *)self jumpToMainScheduler];
  }
  v3 = ;

  return v3;
}

- (void)performBlock:(id)a3
{
  v4 = a3;
  v5 = [(_CNMainThreadScheduler *)self schedulerForImmediateExecution];
  [v5 performBlock:v4];
}

- (void)performBlock:(id)a3 qualityOfService:(unint64_t)a4
{
  v6 = a3;
  v7 = [(_CNMainThreadScheduler *)self schedulerForImmediateExecution];
  [v7 performBlock:v6 qualityOfService:a4];
}

- (id)performCancelableBlock:(id)a3
{
  v4 = a3;
  v5 = [(_CNMainThreadScheduler *)self schedulerForImmediateExecution];
  v6 = [v5 performCancelableBlock:v4];

  return v6;
}

- (id)performCancelableBlock:(id)a3 qualityOfService:(unint64_t)a4
{
  v6 = a3;
  v7 = [(_CNMainThreadScheduler *)self schedulerForImmediateExecution];
  v8 = [v7 performCancelableBlock:v6 qualityOfService:a4];

  return v8;
}

- (id)afterDelay:(double)a3 performBlock:(id)a4
{
  v6 = a4;
  v7 = [(_CNMainThreadScheduler *)self schedulerForDelayedExecution];
  v8 = [v7 afterDelay:v6 performBlock:a3];

  return v8;
}

- (id)afterDelay:(double)a3 performBlock:(id)a4 qualityOfService:(unint64_t)a5
{
  v8 = a4;
  v9 = [(_CNMainThreadScheduler *)self schedulerForDelayedExecution];
  v10 = [v9 afterDelay:v8 performBlock:a5 qualityOfService:a3];

  return v10;
}

- (double)timestamp
{
  v2 = [(_CNMainThreadScheduler *)self schedulerForImmediateExecution];
  [v2 timestamp];
  v4 = v3;

  return v4;
}

@end