@interface GTFuture_capture
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
+ (BOOL)logPerformance;
+ (id)future;
+ (id)futureWithResult:(id)result error:(id)error;
- (BOOL)BOOLResult;
- (BOOL)_waitForDependencies_REQUIRESLOCK;
- (BOOL)isCancelled;
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (GTFuture_capture)init;
- (id)_dependencies_NOLOCK;
- (id)completionBlock;
- (id)error;
- (id)result;
- (int)intResult;
- (int64_t)queuePriority;
- (unsigned)uint32Result;
- (void)_addDependency_REQUIRESLOCK:(id)k;
- (void)_setResult:(id)result error:(id)error notify_NOLOCK:(BOOL)k;
- (void)_start_NOLOCK;
- (void)addDependency:(id)dependency;
- (void)addResultHandler:(id)handler;
- (void)cancel;
- (void)dealloc;
- (void)notifyGroup:(id)group;
- (void)notifyOnQueue:(id)queue handler:(id)handler;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)requestResult:(id)result;
- (void)resolveWithFuture:(id)future;
- (void)setCompletionBlock:(id)block;
- (void)setQueuePriority:(int64_t)priority;
- (void)timeoutAfter:(double)after label:(id)label;
- (void)waitUntilFinished;
- (void)waitUntilResolved;
@end

@implementation GTFuture_capture

- (id)_dependencies_NOLOCK
{
  [(NSCondition *)self->_condition lock];
  v3 = [NSArray arrayWithArray:self->_inflightDependencies];
  [(NSCondition *)self->_condition unlock];
  return v3;
}

- (BOOL)_waitForDependencies_REQUIRESLOCK
{
  while ([(NSMutableArray *)self->_inflightDependencies count])
  {
    if (self->_cancelled)
    {
      break;
    }

    [(NSCondition *)self->_condition wait];
  }

  return !self->_cancelled;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NSCondition *)self->_condition lock];
    [(NSMutableArray *)self->_inflightDependencies removeObject:object];
    [(NSCondition *)self->_condition broadcast];
    condition = self->_condition;

    [(NSCondition *)condition unlock];
  }
}

- (void)_addDependency_REQUIRESLOCK:(id)k
{
  inflightDependencies = self->_inflightDependencies;
  if (!inflightDependencies)
  {
    inflightDependencies = objc_alloc_init(NSMutableArray);
    self->_inflightDependencies = inflightDependencies;
  }

  if (([(NSMutableArray *)inflightDependencies containsObject:k]& 1) == 0)
  {
    if (([k isFinished] & 1) == 0)
    {
      [(NSMutableArray *)self->_inflightDependencies addObject:k];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = __40__GTFuture__addDependency_REQUIRESLOCK___block_invoke;
      v6[3] = &unk_2F14E8;
      v6[4] = self;
      v6[5] = k;
      [k addResultHandler:v6];
    }

    else
    {

      [k addObserver:self forKeyPath:@"isFinished" options:1 context:0];
    }
  }
}

- (void)notifyGroup:(id)group
{
  [(NSCondition *)self->_condition lock];
  if (self->_resolved)
  {
    condition = self->_condition;

    [(NSCondition *)condition unlock];
  }

  else
  {
    dispatch_retain(group);
    dispatch_group_enter(group);
    notifyList = self->_notifyList;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = __24__GTFuture_notifyGroup___block_invoke;
    v7[3] = &unk_2F2508;
    v7[4] = group;
    [(NSMutableArray *)notifyList addObject:[NSBlockOperation blockOperationWithBlock:v7]];
    [(NSCondition *)self->_condition unlock];
  }
}

- (void)notifyOnQueue:(id)queue handler:(id)handler
{
  [(NSCondition *)self->_condition lock];
  if (self->_resolved)
  {
    [(NSCondition *)self->_condition unlock];

    dispatch_async(queue, handler);
  }

  else
  {
    dispatch_retain(queue);
    notifyList = self->_notifyList;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __34__GTFuture_notifyOnQueue_handler___block_invoke;
    v8[3] = &unk_2F14C0;
    v8[4] = queue;
    v8[5] = handler;
    [(NSMutableArray *)notifyList addObject:[NSBlockOperation blockOperationWithBlock:v8]];
    [(NSCondition *)self->_condition unlock];
  }
}

- (void)resolveWithFuture:(id)future
{
  [*(future + 2) lock];
  if (*(future + 24) == 1)
  {
    v5 = *(future + 4);
    v6 = *(future + 5);
    [*(future + 2) unlock];

    [(GTFuture_capture *)self _setResult:v5 error:v6 notify_NOLOCK:1];
  }

  else
  {
    futureCopy = future;
    v8 = *(future + 6);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __30__GTFuture_resolveWithFuture___block_invoke;
    v9[3] = &unk_2F2550;
    v9[4] = future;
    v9[5] = self;
    [v8 addObject:{+[NSBlockOperation blockOperationWithBlock:](NSBlockOperation, "blockOperationWithBlock:", v9)}];
    [*(future + 2) unlock];
  }
}

- (void)timeoutAfter:(double)after label:(id)label
{
  [(NSCondition *)self->_condition lock];
  resolved = self->_resolved;
  [(NSCondition *)self->_condition unlock];
  if (!resolved)
  {
    v7 = dispatch_time(0, (after * 1000000000.0));
    global_queue = dispatch_get_global_queue(2, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __31__GTFuture_timeoutAfter_label___block_invoke;
    block[3] = &unk_2F2508;
    block[4] = self;
    dispatch_after(v7, global_queue, block);
  }
}

- (void)cancel
{
  [(NSCondition *)self->_condition lock];
  self->_cancelled = 1;
  v3 = [GTError_capture errorWithDomain:@"DYErrorDomain" code:1027 userInfo:0];

  self->_error = v3;
  [(NSCondition *)self->_condition unlock];
  error = self->_error;

  [(GTFuture_capture *)self _setResult:0 error:error notify_NOLOCK:1];
}

- (id)error
{
  [(GTFuture_capture *)self waitUntilResolved];
  v3 = self->_error;

  return v3;
}

- (void)_setResult:(id)result error:(id)error notify_NOLOCK:(BOOL)k
{
  [(GTFuture_capture *)self willChangeValueForKey:@"isFinished"];
  [(GTFuture_capture *)self willChangeValueForKey:@"isExecuting"];
  [(NSCondition *)self->_condition lock];
  if (self->_resolved)
  {
    goto LABEL_16;
  }

  if (error)
  {
    error = self->_error;
    if (error != error)
    {

      self->_error = error;
    }
  }

  if (!k)
  {
LABEL_16:
    [(NSCondition *)self->_condition unlock];
  }

  else
  {
    self->_result = result;
    self->_resolved = 1;
    notifyList = self->_notifyList;
    self->_notifyList = 0;
    completion = self->_completion;
    self->_completion = 0;
    [(NSCondition *)self->_condition broadcast];
    [(NSCondition *)self->_condition unlock];
    if (completion)
    {
      completion[2](completion);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v12 = [(NSMutableArray *)notifyList countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        v15 = 0;
        do
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(notifyList);
          }

          [*(*(&v16 + 1) + 8 * v15) start];
          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [(NSMutableArray *)notifyList countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v13);
    }
  }

  [(GTFuture_capture *)self didChangeValueForKey:@"isFinished"];
  [(GTFuture_capture *)self didChangeValueForKey:@"isExecuting"];
}

- (int)intResult
{
  result = [(GTFuture_capture *)self result];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return result != 0;
  }

  return [result intValue];
}

- (unsigned)uint32Result
{
  result = [(GTFuture_capture *)self result];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return result != 0;
  }

  return [result unsignedIntValue];
}

- (BOOL)BOOLResult
{
  result = [(GTFuture_capture *)self result];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return result != 0;
  }

  return [result BOOLValue];
}

- (void)requestResult:(id)result
{
  [(GTFuture_capture *)self addResultHandler:result];

  [(GTFuture_capture *)self _start_NOLOCK];
}

- (void)addResultHandler:(id)handler
{
  [(NSCondition *)self->_condition lock];
  if (self->_resolved)
  {
    result = self->_result;
    error = self->_error;
    [(NSCondition *)self->_condition unlock];
    v7 = [handler copy];
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __29__GTFuture_addResultHandler___block_invoke;
    block[3] = &unk_2F1498;
    block[5] = error;
    block[6] = v7;
    block[4] = result;
    dispatch_async(global_queue, block);
  }

  else
  {
    v9 = [handler copy];
    notifyList = self->_notifyList;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __29__GTFuture_addResultHandler___block_invoke_2;
    v11[3] = &unk_2F14C0;
    v11[4] = self;
    v11[5] = v9;
    [(NSMutableArray *)notifyList addObject:[NSBlockOperation blockOperationWithBlock:v11]];
    [(NSCondition *)self->_condition unlock];
  }
}

- (id)result
{
  [(GTFuture_capture *)self waitUntilResolved];
  v3 = self->_result;

  return v3;
}

- (void)waitUntilResolved
{
  +[NSThread isMainThread];
  if (+[GTFuture_capture logPerformance])
  {
    v3 = +[NSDate date];
    resolved = self->_resolved;
  }

  else
  {
    resolved = 0;
    v3 = 0;
  }

  [(GTFuture_capture *)self _start_NOLOCK];
  [(GTFuture_capture *)self waitUntilFinished];
  if (+[GTFuture_capture logPerformance])
  {
    [(NSDate *)v3 timeIntervalSinceNow];
    v6 = -v5;
    v7 = [(NSString *)NSTemporaryDirectory() stringByAppendingPathComponent:@"GPUDebugger.DYFuture.csv"];
    [+[NSDate date](NSDate timeIntervalSinceReferenceDate];
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%f, %@, %@, %f, %d, %d\n", v8, [+[NSThread currentThread](NSThread valueForKeyPath:"valueForKeyPath:", @"private.seqNum"], [(NSArray *)+[NSThread callStackSymbols](NSThread componentsJoinedByString:"componentsJoinedByString:", @" | "], *&v6, resolved, +[NSThread isMainThread]);
    v10 = [NSFileHandle fileHandleForWritingAtPath:v7];
    if (v10)
    {
      v11 = v10;
      [(NSFileHandle *)v10 seekToEndOfFile];
      [(NSFileHandle *)v11 writeData:[(NSString *)v9 dataUsingEncoding:4]];
      [(NSFileHandle *)v11 closeFile];
    }

    else
    {
      v12 = 0;
      [objc_msgSend(CFSTR(""Timestamp Thread];
    }

    if (![+[NSUserDefaults BOOLForKey:"BOOLForKey:"]
    {
      [+[NSUserDefaults standardUserDefaults](NSUserDefaults BOOLForKey:"BOOLForKey:", @"GPUDebugger.DYFuture.SoftAssertMainThread"];
    }
  }
}

- (void)addDependency:(id)dependency
{
  [(NSCondition *)self->_condition lock];
  [(GTFuture_capture *)self _addDependency_REQUIRESLOCK:dependency];
  condition = self->_condition;

  [(NSCondition *)condition unlock];
}

- (void)waitUntilFinished
{
  [(NSCondition *)self->_condition lock];
  while (!self->_resolved)
  {
    if (self->_cancelled)
    {
      break;
    }

    [(NSCondition *)self->_condition wait];
  }

  condition = self->_condition;

  [(NSCondition *)condition unlock];
}

- (void)_start_NOLOCK
{
  [(GTFuture_capture *)self willChangeValueForKey:@"isExecuting"];
  [(NSCondition *)self->_condition lock];
  if (!self->_started && !self->_cancelled && !self->_resolved)
  {
    self->_started = 1;
  }

  [(NSCondition *)self->_condition unlock];

  [(GTFuture_capture *)self didChangeValueForKey:@"isExecuting"];
}

- (void)setCompletionBlock:(id)block
{
  [(NSCondition *)self->_condition lock];
  self->_completion = [block copy];
  condition = self->_condition;

  [(NSCondition *)condition unlock];
}

- (id)completionBlock
{
  [(NSCondition *)self->_condition lock];
  v3 = [self->_completion copy];
  [(NSCondition *)self->_condition unlock];
  return v3;
}

- (void)setQueuePriority:(int64_t)priority
{
  [(NSCondition *)self->_condition lock];
  self->_priority = priority;
  condition = self->_condition;

  [(NSCondition *)condition unlock];
}

- (int64_t)queuePriority
{
  [(NSCondition *)self->_condition lock];
  priority = self->_priority;
  [(NSCondition *)self->_condition unlock];
  return priority;
}

- (BOOL)isFinished
{
  [(NSCondition *)self->_condition lock];
  v3 = self->_resolved || self->_cancelled;
  [(NSCondition *)self->_condition unlock];
  return v3;
}

- (BOOL)isExecuting
{
  [(NSCondition *)self->_condition lock];
  v3 = !self->_resolved && !self->_cancelled;
  [(NSCondition *)self->_condition unlock];
  return v3;
}

- (BOOL)isCancelled
{
  [(NSCondition *)self->_condition lock];
  cancelled = self->_cancelled;
  [(NSCondition *)self->_condition unlock];
  return cancelled;
}

- (void)dealloc
{
  v3 = [GTError_capture errorWithDomain:@"DYErrorDomain" code:1028 userInfo:0];
  [(NSCondition *)self->_condition lock];
  if (!self->_resolved)
  {
    [(NSCondition *)self->_condition unlock];
    [(GTFuture_capture *)self _setResult:0 error:v3 notify_NOLOCK:1];
    [(NSCondition *)self->_condition lock];
  }

  self->_resolved = 1;
  self->_result = 0;
  self->_error = 0;
  self->_notifyList = 0;
  condition = self->_condition;
  self->_condition = 0;
  [(NSCondition *)condition broadcast];
  [(NSCondition *)condition unlock];

  v5.receiver = self;
  v5.super_class = GTFuture_capture;
  [(GTFuture_capture *)&v5 dealloc];
}

- (GTFuture_capture)init
{
  v5.receiver = self;
  v5.super_class = GTFuture_capture;
  v2 = [(GTFuture_capture *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSCondition);
    v2->_condition = v3;
    [(NSCondition *)v3 lock];
    v2->_notifyList = objc_alloc_init(NSMutableArray);
    v2->_priority = 0;
    v2->_result = 0;
    v2->_error = 0;
    v2->_resolved = 0;
    [(NSCondition *)v2->_condition unlock];
  }

  return v2;
}

+ (BOOL)logPerformance
{
  if (+[GTFuture logPerformance]::onceToken != -1)
  {
    dispatch_once(&+[GTFuture logPerformance]::onceToken, &__block_literal_global);
  }

  return +[GTFuture logPerformance]::log;
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  if ([key isEqualToString:@"isFinished"] & 1) != 0 || (objc_msgSend(key, "isEqualToString:", @"isExecuting"))
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___GTFuture_capture;
  return objc_msgSendSuper2(&v6, "automaticallyNotifiesObserversForKey:", key);
}

+ (id)futureWithResult:(id)result error:(id)error
{
  future = [self future];
  [future setError:error];
  [future setResult:result];
  return future;
}

+ (id)future
{
  objc_opt_class();
  v2 = objc_opt_new();

  return v2;
}

@end