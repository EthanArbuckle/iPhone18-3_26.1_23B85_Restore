@interface CWFAsyncBlockOperation
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (void)decrementCompletionCounter;
- (void)incrementCompletionCounter;
- (void)main;
@end

@implementation CWFAsyncBlockOperation

- (void)incrementCompletionCounter
{
  obj = self;
  objc_sync_enter(obj);
  ++obj->_completionCounter;
  objc_sync_exit(obj);
}

- (BOOL)isExecuting
{
  v2 = self;
  objc_sync_enter(v2);
  v6.receiver = v2;
  v6.super_class = CWFAsyncBlockOperation;
  if ([(CWFAsyncBlockOperation *)&v6 isExecuting])
  {
    v3 = 1;
  }

  else
  {
    v5.receiver = v2;
    v5.super_class = CWFAsyncBlockOperation;
    v3 = [(CWFAsyncBlockOperation *)&v5 isFinished]&& [(CWFAsyncBlockOperation *)v2 didStartOperation]&& [(CWFAsyncBlockOperation *)v2 completionCounter]> 0;
  }

  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isFinished
{
  v2 = self;
  objc_sync_enter(v2);
  v5.receiver = v2;
  v5.super_class = CWFAsyncBlockOperation;
  if ([(CWFAsyncBlockOperation *)&v5 isFinished])
  {
    if ([(CWFAsyncBlockOperation *)v2 completionCounter])
    {
      v3 = ![(CWFAsyncBlockOperation *)v2 didStartOperation];
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  objc_sync_exit(v2);

  return v3;
}

- (void)main
{
  [(CWFAsyncBlockOperation *)self setDidStartOperation:1];
  v3.receiver = self;
  v3.super_class = CWFAsyncBlockOperation;
  [(NSBlockOperation *)&v3 main];
}

- (void)decrementCompletionCounter
{
  obj = self;
  objc_sync_enter(obj);
  completionCounter = obj->_completionCounter;
  if (completionCounter == 1)
  {
    [(CWFAsyncBlockOperation *)obj willChangeValueForKey:@"isFinished"];
    [(CWFAsyncBlockOperation *)obj willChangeValueForKey:@"isExecuting"];
    --obj->_completionCounter;
    [(CWFAsyncBlockOperation *)obj didChangeValueForKey:@"isExecuting"];
    [(CWFAsyncBlockOperation *)obj didChangeValueForKey:@"isFinished"];
  }

  else
  {
    if (!completionCounter)
    {
      v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Unbalanced call to -[CWFAsyncBlockOperation decrementCompletionCounter]" userInfo:0];
      objc_exception_throw(v3);
    }

    obj->_completionCounter = completionCounter - 1;
  }

  objc_sync_exit(obj);
}

@end