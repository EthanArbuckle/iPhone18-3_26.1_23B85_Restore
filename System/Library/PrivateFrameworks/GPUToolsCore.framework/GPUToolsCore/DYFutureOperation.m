@interface DYFutureOperation
+ (id)operationWithBlock:(id)a3;
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (void)_start_NOLOCK;
- (void)addDependency:(id)a3;
- (void)dealloc;
@end

@implementation DYFutureOperation

+ (id)operationWithBlock:(id)a3
{
  objc_opt_class();
  v4 = objc_opt_new();
  if (v4)
  {
    v4[41] = [a3 copy];
    *(v4 + 304) = 0;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DYFutureOperation;
  [(DYFuture *)&v3 dealloc];
}

- (BOOL)isExecuting
{
  [(NSCondition *)self->super._condition lock];
  v3 = !self->super._resolved && !self->super._cancelled && self->super._started;
  [(NSCondition *)self->super._condition unlock];
  return v3;
}

- (BOOL)isFinished
{
  [(NSCondition *)self->super._condition lock];
  v3 = (self->super._resolved || self->super._cancelled) && self->super._started;
  [(NSCondition *)self->super._condition unlock];
  return v3;
}

- (void)_start_NOLOCK
{
  [(DYFutureOperation *)self willChangeValueForKey:@"isExecuting"];
  [(NSCondition *)self->super._condition lock];
  if (self->super._started)
  {
    condition = self->super._condition;

    [(NSCondition *)condition unlock];
  }

  else
  {
    self->super._started = 1;
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__DYFutureOperation__start_NOLOCK__block_invoke;
    block[3] = &unk_27930C1E8;
    block[4] = self;
    dispatch_async(global_queue, block);
    [(NSCondition *)self->super._condition unlock];
    [(DYFutureOperation *)self didChangeValueForKey:@"isExecuting"];
  }
}

void __34__DYFutureOperation__start_NOLOCK__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 256) lock];
  v2 = [*(a1 + 32) _waitForDependencies_REQUIRESLOCK];
  v3 = *(a1 + 32);
  if ((v2 & 1) != 0 && (v4 = *(v3 + 328)) != 0)
  {
    *(v3 + 328) = 0;
    [*(*(a1 + 32) + 256) unlock];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __34__DYFutureOperation__start_NOLOCK__block_invoke_2;
    v6[3] = &unk_27930C6E8;
    v6[4] = *(a1 + 32);
    (v4)[2](v4, v6);
  }

  else
  {
    v5 = *(v3 + 256);

    [v5 unlock];
  }
}

- (void)addDependency:(id)a3
{
  [(NSCondition *)self->super._condition lock];
  [(DYFuture *)self _addDependency_REQUIRESLOCK:a3];
  condition = self->super._condition;

  [(NSCondition *)condition unlock];
}

@end