@interface _CNMainThreadScheduler
- (_CNMainThreadScheduler)init;
- (double)timestamp;
- (id)afterDelay:(double)delay performBlock:(id)block;
- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service;
- (id)performCancelableBlock:(id)block;
- (id)performCancelableBlock:(id)block qualityOfService:(unint64_t)service;
- (id)schedulerForImmediateExecution;
- (void)performBlock:(id)block;
- (void)performBlock:(id)block qualityOfService:(unint64_t)service;
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

- (void)performBlock:(id)block
{
  blockCopy = block;
  schedulerForImmediateExecution = [(_CNMainThreadScheduler *)self schedulerForImmediateExecution];
  [schedulerForImmediateExecution performBlock:blockCopy];
}

- (void)performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  schedulerForImmediateExecution = [(_CNMainThreadScheduler *)self schedulerForImmediateExecution];
  [schedulerForImmediateExecution performBlock:blockCopy qualityOfService:service];
}

- (id)performCancelableBlock:(id)block
{
  blockCopy = block;
  schedulerForImmediateExecution = [(_CNMainThreadScheduler *)self schedulerForImmediateExecution];
  v6 = [schedulerForImmediateExecution performCancelableBlock:blockCopy];

  return v6;
}

- (id)performCancelableBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  schedulerForImmediateExecution = [(_CNMainThreadScheduler *)self schedulerForImmediateExecution];
  v8 = [schedulerForImmediateExecution performCancelableBlock:blockCopy qualityOfService:service];

  return v8;
}

- (id)afterDelay:(double)delay performBlock:(id)block
{
  blockCopy = block;
  schedulerForDelayedExecution = [(_CNMainThreadScheduler *)self schedulerForDelayedExecution];
  v8 = [schedulerForDelayedExecution afterDelay:blockCopy performBlock:delay];

  return v8;
}

- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  schedulerForDelayedExecution = [(_CNMainThreadScheduler *)self schedulerForDelayedExecution];
  v10 = [schedulerForDelayedExecution afterDelay:blockCopy performBlock:service qualityOfService:delay];

  return v10;
}

- (double)timestamp
{
  schedulerForImmediateExecution = [(_CNMainThreadScheduler *)self schedulerForImmediateExecution];
  [schedulerForImmediateExecution timestamp];
  v4 = v3;

  return v4;
}

@end