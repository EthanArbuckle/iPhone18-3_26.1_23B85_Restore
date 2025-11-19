@interface DYFuture
+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3;
+ (BOOL)enableAssertMainThread;
+ (BOOL)logPerformance;
+ (id)future;
+ (id)futureWithResult:(id)a3 error:(id)a4;
- (BOOL)BOOLResult;
- (BOOL)_waitForDependencies_REQUIRESLOCK;
- (BOOL)isCancelled;
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (DYFuture)init;
- (NSError)error;
- (NSError)resolvedError;
- (id)_dependencies_NOLOCK;
- (id)completionBlock;
- (id)resolvedResult;
- (id)result;
- (int)intResult;
- (int64_t)queuePriority;
- (unsigned)uint32Result;
- (void)_addDependency_REQUIRESLOCK:(id)a3;
- (void)_setResult:(id)a3 error:(id)a4 notify_NOLOCK:(BOOL)a5;
- (void)_start_NOLOCK;
- (void)addDependency:(id)a3;
- (void)addResultHandler:(id)a3;
- (void)cancel;
- (void)dealloc;
- (void)notifyGroup:(id)a3;
- (void)notifyOnQueue:(id)a3 handler:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)requestResult:(id)a3;
- (void)resolveWithFuture:(id)a3;
- (void)setCompletionBlock:(id)a3;
- (void)setQueuePriority:(int64_t)a3;
- (void)timeoutAfter:(double)a3 label:(id)a4;
- (void)waitUntilFinished;
- (void)waitUntilResolved;
@end

@implementation DYFuture

+ (id)future
{
  objc_opt_class();
  v2 = objc_opt_new();

  return v2;
}

+ (id)futureWithResult:(id)a3 error:(id)a4
{
  v6 = [a1 future];
  [v6 setError:a4];
  [v6 setResult:a3];
  return v6;
}

- (DYFuture)init
{
  v5.receiver = self;
  v5.super_class = DYFuture;
  v2 = [(DYFuture *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCA928]);
    v2->_condition = v3;
    [(NSCondition *)v3 lock];
    v2->_notifyList = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2->_priority = 0;
    v2->_result = 0;
    v2->_error = 0;
    v2->_resolved = 0;
    [(NSCondition *)v2->_condition unlock];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [DYError errorWithDomain:@"DYErrorDomain" code:1028 userInfo:0];
  [(NSCondition *)self->_condition lock];
  if (!self->_resolved)
  {
    [(NSCondition *)self->_condition unlock];
    [(DYFuture *)self _setResult:0 error:v3 notify_NOLOCK:1];
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
  v5.super_class = DYFuture;
  [(DYFuture *)&v5 dealloc];
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3
{
  if ([a3 isEqualToString:@"isFinished"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"isExecuting"))
  {
    return 0;
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___DYFuture;
  return objc_msgSendSuper2(&v6, sel_automaticallyNotifiesObserversForKey_, a3);
}

- (BOOL)isCancelled
{
  [(NSCondition *)self->_condition lock];
  cancelled = self->_cancelled;
  [(NSCondition *)self->_condition unlock];
  return cancelled;
}

- (BOOL)isExecuting
{
  [(NSCondition *)self->_condition lock];
  v3 = !self->_resolved && !self->_cancelled;
  [(NSCondition *)self->_condition unlock];
  return v3;
}

- (BOOL)isFinished
{
  [(NSCondition *)self->_condition lock];
  v3 = self->_resolved || self->_cancelled;
  [(NSCondition *)self->_condition unlock];
  return v3;
}

- (int64_t)queuePriority
{
  [(NSCondition *)self->_condition lock];
  priority = self->_priority;
  [(NSCondition *)self->_condition unlock];
  return priority;
}

- (void)setQueuePriority:(int64_t)a3
{
  [(NSCondition *)self->_condition lock];
  self->_priority = a3;
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

- (void)setCompletionBlock:(id)a3
{
  [(NSCondition *)self->_condition lock];
  self->_completion = [a3 copy];
  condition = self->_condition;

  [(NSCondition *)condition unlock];
}

- (void)_start_NOLOCK
{
  [(DYFuture *)self willChangeValueForKey:@"isExecuting"];
  [(NSCondition *)self->_condition lock];
  if (!self->_started && !self->_cancelled && !self->_resolved)
  {
    self->_started = 1;
  }

  [(NSCondition *)self->_condition unlock];

  [(DYFuture *)self didChangeValueForKey:@"isExecuting"];
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

- (void)addDependency:(id)a3
{
  [(NSCondition *)self->_condition lock];
  [(DYFuture *)self _addDependency_REQUIRESLOCK:a3];
  condition = self->_condition;

  [(NSCondition *)condition unlock];
}

+ (BOOL)logPerformance
{
  if (logPerformance_onceToken != -1)
  {
    +[DYFuture logPerformance];
  }

  return logPerformance_log;
}

uint64_t __26__DYFuture_logPerformance__block_invoke()
{
  result = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  logPerformance_log = result;
  return result;
}

+ (BOOL)enableAssertMainThread
{
  if (enableAssertMainThread_onceToken != -1)
  {
    +[DYFuture enableAssertMainThread];
  }

  return enableAssertMainThread_log;
}

uint64_t __34__DYFuture_enableAssertMainThread__block_invoke()
{
  result = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  enableAssertMainThread_log = result;
  return result;
}

- (void)waitUntilResolved
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    +[DYFuture enableAssertMainThread];
  }

  if (+[DYFuture logPerformance])
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    resolved = self->_resolved;
  }

  else
  {
    resolved = 0;
    v3 = 0;
  }

  [(DYFuture *)self _start_NOLOCK];
  [(DYFuture *)self waitUntilFinished];
  if (+[DYFuture logPerformance])
  {
    [v3 timeIntervalSinceNow];
    v6 = -v5;
    v7 = [(NSString *)NSTemporaryDirectory() stringByAppendingPathComponent:@"GPUDebugger.DYFuture.csv"];
    v8 = MEMORY[0x277CCACA8];
    [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
    v10 = v9;
    v11 = [objc_msgSend(MEMORY[0x277CCACC8] "currentThread")];
    v12 = [objc_msgSend(MEMORY[0x277CCACC8] "callStackSymbols")];
    v13 = [v8 stringWithFormat:@"%f, %@, %@, %f, %d, %d\n", v10, v11, v12, *&v6, resolved, objc_msgSend(MEMORY[0x277CCACC8], "isMainThread")];
    v14 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:v7];
    if (v14)
    {
      v15 = v14;
      [v14 seekToEndOfFile];
      [v15 writeData:{objc_msgSend(v13, "dataUsingEncoding:", 4)}];
      [v15 closeFile];
    }

    else
    {
      v16 = 0;
      [objc_msgSend(CFSTR(""Timestamp Thread];
    }

    if (([objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")] & 1) == 0)
    {
      [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
    }
  }
}

- (id)resolvedResult
{
  v2 = self->_result;

  return v2;
}

- (NSError)resolvedError
{
  v2 = self->_error;

  return v2;
}

- (id)result
{
  [(DYFuture *)self waitUntilResolved];
  v3 = self->_result;

  return v3;
}

- (void)addResultHandler:(id)a3
{
  [(NSCondition *)self->_condition lock];
  if (self->_resolved)
  {
    result = self->_result;
    error = self->_error;
    [(NSCondition *)self->_condition unlock];
    v7 = [a3 copy];
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __29__DYFuture_addResultHandler___block_invoke;
    block[3] = &unk_27930C920;
    block[5] = error;
    block[6] = v7;
    block[4] = result;
    dispatch_async(global_queue, block);
  }

  else
  {
    v9 = [a3 copy];
    notifyList = self->_notifyList;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __29__DYFuture_addResultHandler___block_invoke_2;
    v11[3] = &unk_27930C948;
    v11[4] = self;
    v11[5] = v9;
    -[NSMutableArray addObject:](notifyList, "addObject:", [MEMORY[0x277CCA8C8] blockOperationWithBlock:v11]);
    [(NSCondition *)self->_condition unlock];
  }
}

void __29__DYFuture_addResultHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  (*(a1[6] + 16))();
  v4 = a1[6];
}

void __29__DYFuture_addResultHandler___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 256) lock];
  v2 = *(a1 + 32);
  v3 = *(v2 + 272);
  v4 = *(v2 + 280);
  [*(v2 + 256) unlock];
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__DYFuture_addResultHandler___block_invoke_3;
  block[3] = &unk_27930C920;
  v6 = *(a1 + 40);
  block[5] = v4;
  block[6] = v6;
  block[4] = v3;
  dispatch_async(global_queue, block);
}

void __29__DYFuture_addResultHandler___block_invoke_3(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  (*(a1[6] + 16))();
  v4 = a1[6];
}

- (void)requestResult:(id)a3
{
  [(DYFuture *)self addResultHandler:a3];

  [(DYFuture *)self _start_NOLOCK];
}

- (BOOL)BOOLResult
{
  v2 = [(DYFuture *)self result];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return v2 != 0;
  }

  return [v2 BOOLValue];
}

- (unsigned)uint32Result
{
  v2 = [(DYFuture *)self result];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return v2 != 0;
  }

  return [v2 unsignedIntValue];
}

- (int)intResult
{
  v2 = [(DYFuture *)self result];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return v2 != 0;
  }

  return [v2 intValue];
}

- (void)_setResult:(id)a3 error:(id)a4 notify_NOLOCK:(BOOL)a5
{
  v22 = *MEMORY[0x277D85DE8];
  [(DYFuture *)self willChangeValueForKey:@"isFinished"];
  [(DYFuture *)self willChangeValueForKey:@"isExecuting"];
  [(NSCondition *)self->_condition lock];
  if (self->_resolved)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    error = self->_error;
    if (error != a4)
    {

      self->_error = a4;
    }
  }

  if (!a5)
  {
LABEL_16:
    [(NSCondition *)self->_condition unlock];
  }

  else
  {
    self->_result = a3;
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

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = [(NSMutableArray *)notifyList countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(notifyList);
          }

          [*(*(&v17 + 1) + 8 * v15++) start];
        }

        while (v13 != v15);
        v13 = [(NSMutableArray *)notifyList countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }
  }

  [(DYFuture *)self didChangeValueForKey:@"isFinished"];
  [(DYFuture *)self didChangeValueForKey:@"isExecuting"];
  v16 = *MEMORY[0x277D85DE8];
}

- (NSError)error
{
  [(DYFuture *)self waitUntilResolved];
  v3 = self->_error;

  return v3;
}

- (void)cancel
{
  [(NSCondition *)self->_condition lock];
  self->_cancelled = 1;
  v3 = [DYError errorWithDomain:@"DYErrorDomain" code:1027 userInfo:0];

  self->_error = &v3->super;
  [(NSCondition *)self->_condition unlock];
  error = self->_error;

  [(DYFuture *)self _setResult:0 error:error notify_NOLOCK:1];
}

- (void)timeoutAfter:(double)a3 label:(id)a4
{
  [(NSCondition *)self->_condition lock];
  resolved = self->_resolved;
  [(NSCondition *)self->_condition unlock];
  if (!resolved)
  {
    v7 = dispatch_time(0, (a3 * 1000000000.0));
    global_queue = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__DYFuture_timeoutAfter_label___block_invoke;
    block[3] = &unk_27930C1E8;
    block[4] = self;
    dispatch_after(v7, global_queue, block);
  }
}

uint64_t __31__DYFuture_timeoutAfter_label___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 256) lock];
  v2 = *(a1 + 32);
  v3 = *(v2 + 264);
  result = [*(v2 + 256) unlock];
  if ((v3 & 1) == 0)
  {
    v5 = [DYError errorWithDomain:@"DYErrorDomain" code:5 userInfo:0];
    v6 = *(a1 + 32);

    return [v6 _setResult:0 error:v5 notify_NOLOCK:1];
  }

  return result;
}

- (void)resolveWithFuture:(id)a3
{
  [*(a3 + 32) lock];
  if (*(a3 + 264) == 1)
  {
    v5 = *(a3 + 34);
    v6 = *(a3 + 35);
    [*(a3 + 32) unlock];

    [(DYFuture *)self _setResult:v5 error:v6 notify_NOLOCK:1];
  }

  else
  {
    v7 = a3;
    v8 = *(a3 + 36);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __30__DYFuture_resolveWithFuture___block_invoke;
    v9[3] = &unk_27930C170;
    v9[4] = a3;
    v9[5] = self;
    [v8 addObject:{objc_msgSend(MEMORY[0x277CCA8C8], "blockOperationWithBlock:", v9)}];
    [*(a3 + 32) unlock];
  }
}

void __30__DYFuture_resolveWithFuture___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 256) lock];
  v2 = *(a1 + 32);
  v3 = *(v2 + 272);
  v4 = *(v2 + 280);
  [*(v2 + 256) unlock];
  [*(a1 + 40) _setResult:v3 error:v4 notify_NOLOCK:1];
  v5 = *(a1 + 32);
}

- (void)notifyOnQueue:(id)a3 handler:(id)a4
{
  [(NSCondition *)self->_condition lock];
  if (self->_resolved)
  {
    [(NSCondition *)self->_condition unlock];

    dispatch_async(a3, a4);
  }

  else
  {
    dispatch_retain(a3);
    notifyList = self->_notifyList;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __34__DYFuture_notifyOnQueue_handler___block_invoke;
    v8[3] = &unk_27930C948;
    v8[4] = a3;
    v8[5] = a4;
    -[NSMutableArray addObject:](notifyList, "addObject:", [MEMORY[0x277CCA8C8] blockOperationWithBlock:v8]);
    [(NSCondition *)self->_condition unlock];
  }
}

void __34__DYFuture_notifyOnQueue_handler___block_invoke(uint64_t a1)
{
  dispatch_async(*(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 32);

  dispatch_release(v2);
}

- (void)notifyGroup:(id)a3
{
  [(NSCondition *)self->_condition lock];
  if (self->_resolved)
  {
    condition = self->_condition;

    [(NSCondition *)condition unlock];
  }

  else
  {
    dispatch_retain(a3);
    dispatch_group_enter(a3);
    notifyList = self->_notifyList;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __24__DYFuture_notifyGroup___block_invoke;
    v7[3] = &unk_27930C1E8;
    v7[4] = a3;
    -[NSMutableArray addObject:](notifyList, "addObject:", [MEMORY[0x277CCA8C8] blockOperationWithBlock:v7]);
    [(NSCondition *)self->_condition unlock];
  }
}

void __24__DYFuture_notifyGroup___block_invoke(uint64_t a1)
{
  dispatch_group_leave(*(a1 + 32));
  v2 = *(a1 + 32);

  dispatch_release(v2);
}

- (void)_addDependency_REQUIRESLOCK:(id)a3
{
  inflightDependencies = self->_inflightDependencies;
  if (!inflightDependencies)
  {
    inflightDependencies = objc_alloc_init(MEMORY[0x277CBEB18]);
    self->_inflightDependencies = inflightDependencies;
  }

  if (([(NSMutableArray *)inflightDependencies containsObject:a3]& 1) == 0)
  {
    if (([a3 isFinished] & 1) == 0)
    {
      [(NSMutableArray *)self->_inflightDependencies addObject:a3];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __40__DYFuture__addDependency_REQUIRESLOCK___block_invoke;
      v6[3] = &unk_27930C970;
      v6[4] = self;
      v6[5] = a3;
      [a3 addResultHandler:v6];
    }

    else
    {

      [a3 addObserver:self forKeyPath:@"isFinished" options:1 context:0];
    }
  }
}

uint64_t __40__DYFuture__addDependency_REQUIRESLOCK___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 256) lock];
  [*(*(a1 + 32) + 296) removeObject:*(a1 + 40)];
  [*(*(a1 + 32) + 256) broadcast];
  v2 = *(*(a1 + 32) + 256);

  return [v2 unlock];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NSCondition *)self->_condition lock];
    [(NSMutableArray *)self->_inflightDependencies removeObject:a4];
    [(NSCondition *)self->_condition broadcast];
    condition = self->_condition;

    [(NSCondition *)condition unlock];
  }
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

- (id)_dependencies_NOLOCK
{
  [(NSCondition *)self->_condition lock];
  v3 = [MEMORY[0x277CBEA60] arrayWithArray:self->_inflightDependencies];
  [(NSCondition *)self->_condition unlock];
  return v3;
}

@end