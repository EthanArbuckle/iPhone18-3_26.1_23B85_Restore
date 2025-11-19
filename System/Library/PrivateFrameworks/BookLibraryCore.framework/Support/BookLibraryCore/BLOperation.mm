@interface BLOperation
- (BLOperation)init;
- (BLOperationDelegate)delegate;
- (BLOperationProgress)progress;
- (BOOL)runSubOperation:(id)a3 onQueue:(id)a4 error:(id *)a5;
- (BOOL)runSubOperation:(id)a3 returningError:(id *)a4;
- (BOOL)shouldMessageMainThread;
- (BOOL)stopRunLoop;
- (int)runRunLoopUntilStopped;
- (void)_addSubOperation:(id)a3;
- (void)_failAfterException;
- (void)_main:(BOOL)a3;
- (void)_sendErrorToDelegate:(id)a3;
- (void)_sendSuccessToDelegate;
- (void)_sendWillStartToDelegate;
- (void)cancel;
- (void)delegateDispatch:(id)a3;
- (void)dispatchCompletionBlock;
- (void)main;
- (void)run;
- (void)run:(BOOL)a3;
- (void)sendProgressToDelegate;
- (void)setDelegate:(id)a3;
- (void)setShouldMessageMainThread:(BOOL)a3;
@end

@implementation BLOperation

- (BLOperation)init
{
  v6.receiver = self;
  v6.super_class = BLOperation;
  v2 = [(BLOperation *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSLock);
    lock = v2->_lock;
    v2->_lock = v3;
  }

  return v2;
}

- (BLOperationProgress)progress
{
  [(BLOperation *)self lock];
  v3 = self->_progress;
  [(BLOperation *)self unlock];

  return v3;
}

- (void)run
{
  [(BLOperation *)self setError:0];

  [(BLOperation *)self setSuccess:1];
}

- (int)runRunLoopUntilStopped
{
  v3 = [NSTimer scheduledTimerWithTimeInterval:self target:"_keepAliveTimer:" selector:0 userInfo:0 repeats:1.79769313e308];
  self->_stopped = 0;
  do
  {
    v4 = objc_autoreleasePoolPush();
    v5 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 10.0, 1u);
    objc_autoreleasePoolPop(v4);
  }

  while (!self->_stopped && (v5 - 1) > 1);
  [v3 invalidate];

  return v5;
}

- (BOOL)runSubOperation:(id)a3 returningError:(id *)a4
{
  v6 = a3;
  if (([v6 isCancelled] & 1) == 0)
  {
    [v6 setParentOperation:self];
    [(BLOperation *)self lock];
    [(BLOperation *)self _addSubOperation:v6];
    [(BLOperation *)self unlock];
    [v6 main];
    [v6 dispatchCompletionBlock];
    [v6 setParentOperation:0];
    [(BLOperation *)self lock];
    [(BLOperation *)self _removeSubOperation:v6];
    [(BLOperation *)self unlock];
  }

  if (a4)
  {
    *a4 = [v6 error];
  }

  v7 = [v6 success];

  return v7;
}

- (BOOL)runSubOperation:(id)a3 onQueue:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (([v8 isCancelled] & 1) == 0)
  {
    [v8 setParentOperation:self];
    [(BLOperation *)self lock];
    [(BLOperation *)self _addSubOperation:v8];
    [(BLOperation *)self unlock];
    v10 = [NSArray arrayWithObject:v8];
    [v9 addOperations:v10 waitUntilFinished:1];

    [v8 setParentOperation:0];
    [(BLOperation *)self lock];
    [(BLOperation *)self _removeSubOperation:v8];
    [(BLOperation *)self unlock];
  }

  if (a5)
  {
    *a5 = [v8 error];
  }

  v11 = [v8 success];

  return v11;
}

- (BOOL)stopRunLoop
{
  [(BLOperation *)self lock];
  v3 = [(NSMutableArray *)self->_subOperations copy];
  [(BLOperation *)self unlock];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v15 + 1) + 8 * i) stopRunLoop])
        {
          v11 = 1;
          v10 = v4;
          goto LABEL_12;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = [(BLOperation *)self operationRunLoop];
  v10 = v9;
  v11 = v9 != 0;
  if (v9)
  {
    v12 = [v9 getCFRunLoop];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000671CC;
    block[3] = &unk_10011CFE8;
    block[4] = self;
    CFRunLoopPerformBlock(v12, kCFRunLoopDefaultMode, block);
    CFRunLoopWakeUp(v12);
    CFRunLoopStop(v12);
    v11 = 1;
  }

LABEL_12:

  return v11;
}

- (BLOperationDelegate)delegate
{
  [(BLOperation *)self lock];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [(BLOperation *)self unlock];

  return WeakRetained;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  [(BLOperation *)self lock];
  objc_storeWeak(&self->_delegate, v4);

  [(BLOperation *)self unlock];
}

- (void)setShouldMessageMainThread:(BOOL)a3
{
  [(BLOperation *)self lock];
  self->_shouldMessageMainThread = a3;

  [(BLOperation *)self unlock];
}

- (BOOL)shouldMessageMainThread
{
  [(BLOperation *)self lock];
  shouldMessageMainThread = self->_shouldMessageMainThread;
  [(BLOperation *)self unlock];
  return shouldMessageMainThread;
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = BLOperation;
  [(BLOperation *)&v4 cancel];
  [(BLOperation *)self lock];
  v3 = [(NSMutableArray *)self->_subOperations copy];
  [(BLOperation *)self unlock];
  [v3 makeObjectsPerformSelector:"cancel"];
  [(BLOperation *)self stopRunLoop];
}

- (void)main
{
  if (![(BLOperation *)self shouldRunWithBackgroundPriority]|| (*__error() = 0, v3 = getpriority(3, 0), *__error()) || setpriority(3, 0, 4096))
  {
    v4 = 0;
  }

  else
  {
    v8 = BLServiceLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v11 = +[NSThread currentThread];
      v12 = 138412546;
      v13 = v9;
      v14 = 2048;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%@: Running with background priority for thread: %p", &v12, 0x16u);
    }

    v4 = v3 == 0;
  }

  [(BLOperation *)self _main:0];
  if (v4)
  {
    v5 = BLServiceLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = objc_opt_class();
      v7 = +[NSThread currentThread];
      v12 = 138412546;
      v13 = v6;
      v14 = 2048;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%@: Restoring normal priority for thread: %p", &v12, 0x16u);
    }

    setpriority(3, 0, 0);
  }
}

- (void)delegateDispatch:(id)a3
{
  v4 = a3;
  if ([(BLOperation *)self shouldMessageMainThread])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000677F0;
    block[3] = &unk_10011D180;
    v6 = v4;
    dispatch_sync(&_dispatch_main_q, block);
  }

  else
  {
    v4[2](v4);
  }
}

- (void)dispatchCompletionBlock
{
  v3 = [(BLOperation *)self completionBlock];

  if (v3)
  {
    v4 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000678A4;
    block[3] = &unk_10011CFE8;
    block[4] = self;
    dispatch_async(v4, block);
  }
}

- (void)run:(BOOL)a3
{
  if (!a3)
  {
    [(BLOperation *)self run];
  }
}

- (void)sendProgressToDelegate
{
  v3 = [(BLOperation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(BLOperation *)self lock];
    v4 = [(BLOperationProgress *)self->_progress copy];
    [(BLOperation *)self unlock];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000679FC;
    v6[3] = &unk_10011D0C8;
    v7 = v3;
    v8 = self;
    v9 = v4;
    v5 = v4;
    [(BLOperation *)self delegateDispatch:v6];
  }
}

- (void)_addSubOperation:(id)a3
{
  v4 = a3;
  subOperations = self->_subOperations;
  v8 = v4;
  if (!subOperations)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_subOperations;
    self->_subOperations = v6;

    v4 = v8;
    subOperations = self->_subOperations;
  }

  [(NSMutableArray *)subOperations addObject:v4];
}

- (void)_failAfterException
{
  v3 = [(BLOperation *)self error];
  if (!v3)
  {
    v4 = sub_1000A8F44(0, 0, 0);
    [(BLOperation *)self setError:v4];
    v3 = v4;
  }

  v5 = v3;
  [(BLOperation *)self _sendErrorToDelegate:v3];
}

- (void)_main:(BOOL)a3
{
  v3 = a3;
  v5 = +[NSRunLoop currentRunLoop];
  [(BLOperation *)self setOperationRunLoop:v5];

  v6 = [(BLOperation *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    [(BLOperation *)self lock];
    v8 = objc_alloc_init(BLOperationProgress);
    progress = self->_progress;
    self->_progress = v8;

    [(BLOperationProgress *)self->_progress setMaxValue:1];
    [(BLOperation *)self unlock];
    [(BLOperation *)self sendProgressToDelegate];
  }

  [(BLOperation *)self _sendWillStartToDelegate];
  [(BLOperation *)self run:v3];
  if ([(BLOperation *)self success])
  {
    if (v7)
    {
      [(BLOperation *)self lock];
      [(BLOperationProgress *)self->_progress setCurrentValue:[(BLOperationProgress *)self->_progress maxValue]];
      [(BLOperationProgress *)self->_progress setEstimatedTimeRemaining:-1.0];
      [(BLOperation *)self unlock];
      [(BLOperation *)self sendProgressToDelegate];
    }

    [(BLOperation *)self _sendSuccessToDelegate];
  }

  else
  {
    v10 = [(BLOperation *)self error];
    [(BLOperation *)self _sendErrorToDelegate:v10];
  }

  [(BLOperation *)self lock];
  v11 = self->_progress;
  self->_progress = 0;

  [(BLOperation *)self unlock];

  [(BLOperation *)self setOperationRunLoop:0];
}

- (void)_sendErrorToDelegate:(id)a3
{
  v4 = a3;
  v5 = [(BLOperation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100067D88;
    v6[3] = &unk_10011D0C8;
    v7 = v5;
    v8 = self;
    v9 = v4;
    [(BLOperation *)self delegateDispatch:v6];
  }
}

- (void)_sendSuccessToDelegate
{
  v3 = [(BLOperation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100067E40;
    v4[3] = &unk_10011D1A8;
    v5 = v3;
    v6 = self;
    [(BLOperation *)self delegateDispatch:v4];
  }
}

- (void)_sendWillStartToDelegate
{
  v3 = [(BLOperation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100067EF4;
    v4[3] = &unk_10011D1A8;
    v5 = v3;
    v6 = self;
    [(BLOperation *)self delegateDispatch:v4];
  }
}

@end