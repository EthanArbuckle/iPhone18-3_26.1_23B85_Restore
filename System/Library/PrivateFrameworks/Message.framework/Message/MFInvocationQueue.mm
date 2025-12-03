@interface MFInvocationQueue
+ (id)sharedInvocationQueue;
+ (void)flushAllInvocationQueues;
- (MFInvocationQueue)initWithMaxThreadCount:(unint64_t)count;
- (id)copyDiagnosticInformation;
- (unint64_t)invocationCount;
- (void)_drainQueue:(id)queue;
- (void)addInvocation:(id)invocation;
- (void)dealloc;
- (void)didCancel:(id)cancel;
- (void)removeAllItems;
- (void)setMaxThreadCount:(unint64_t)count;
@end

@implementation MFInvocationQueue

+ (id)sharedInvocationQueue
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__MFInvocationQueue_sharedInvocationQueue__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInvocationQueue_onceToken != -1)
  {
    dispatch_once(&sharedInvocationQueue_onceToken, block);
  }

  v2 = sharedInvocationQueue_singleton;

  return v2;
}

uint64_t __42__MFInvocationQueue_sharedInvocationQueue__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) initWithMaxThreadCount:1];
  v2 = sharedInvocationQueue_singleton;
  sharedInvocationQueue_singleton = v1;

  v3 = sharedInvocationQueue_singleton;

  return [v3 setThreadRecycleTimeout:30.0];
}

- (MFInvocationQueue)initWithMaxThreadCount:(unint64_t)count
{
  v10.receiver = self;
  v10.super_class = MFInvocationQueue;
  v4 = [(MFInvocationQueue *)&v10 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69AD6A0]) initWithName:@"InvocationQueue_lock" condition:0 andDelegate:v4];
    lock = v4->_lock;
    v4->_lock = v5;

    if (count <= 1)
    {
      countCopy = 1;
    }

    else
    {
      countCopy = count;
    }

    v4->_maxThreads = countCopy;
    v4->_threadPriorityTrigger = 7;
    mEMORY[0x1E69AD6C0] = [MEMORY[0x1E69AD6C0] sharedController];
    [mEMORY[0x1E69AD6C0] addDiagnosticsGenerator:v4];
  }

  return v4;
}

- (void)dealloc
{
  atomic_fetch_add(_invocationCount, [(NSMutableArray *)self->_items]);
  v3.receiver = self;
  v3.super_class = MFInvocationQueue;
  [(MFInvocationQueue *)&v3 dealloc];
}

- (void)setMaxThreadCount:(unint64_t)count
{
  if (count <= 1)
  {
    countCopy = 1;
  }

  else
  {
    countCopy = count;
  }

  self->_maxThreads = countCopy;
}

- (unint64_t)invocationCount
{
  [(NSConditionLock *)self->_lock lock];
  v3 = [(NSMutableArray *)self->_items count];
  if ([(NSConditionLock *)self->_lock condition]!= 1)
  {
    v3 += self->_numThreads;
  }

  [(NSConditionLock *)self->_lock unlock];
  return v3;
}

- (void)addInvocation:(id)invocation
{
  invocationCopy = invocation;
  if (invocationCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      monitor = [invocationCopy monitor];
    }

    else
    {
      monitor = 0;
    }

    priority = [monitor priority];
    threadPriorityTrigger = self->_threadPriorityTrigger;
    [(NSConditionLock *)self->_lock lock];
    condition = [(NSConditionLock *)self->_lock condition];
    v8 = condition;
    atomic_fetch_add(_invocationCount, 1u);
    if (priority <= threadPriorityTrigger || condition == 1)
    {
      items = self->_items;
      if (!items)
      {
        v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v12 = self->_items;
        self->_items = v11;

        items = self->_items;
      }

      v13 = [(NSMutableArray *)items count];
      if (v13)
      {
        v14 = 0;
        v15 = monitor;
        while (1)
        {
          v16 = [(NSMutableArray *)self->_items objectAtIndex:v14];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            monitor = [v16 monitor];
          }

          else
          {
            monitor = 0;
          }

          priority2 = [monitor priority];
          if (priority < priority2)
          {
            break;
          }

          ++v14;
          v15 = monitor;
          if (v13 == v14)
          {
            goto LABEL_17;
          }
        }

        [(NSMutableArray *)self->_items insertObject:invocationCopy atIndex:v14];
      }

      else
      {
LABEL_17:
        [(NSMutableArray *)self->_items addObject:invocationCopy];
      }

      if (v8 != 1)
      {
        numThreads = self->_numThreads;
        if (numThreads < self->_maxThreads)
        {
          self->_numThreads = numThreads + 1;
          v19 = [objc_alloc(MEMORY[0x1E696AF00]) initWithTarget:self selector:sel__drainQueue_ object:0];
          [v19 setQualityOfService:17];
          [v19 start];
        }
      }

      [(NSConditionLock *)self->_lock unlockWithCondition:2];
    }

    else
    {
      ++self->_numThreads;
      v9 = [objc_alloc(MEMORY[0x1E696AF00]) initWithTarget:self selector:sel__drainQueue_ object:invocationCopy];
      [v9 setQualityOfService:17];
      [v9 start];
      [(NSConditionLock *)self->_lock unlock];
    }
  }
}

- (void)removeAllItems
{
  [(NSConditionLock *)self->_lock lock];
  atomic_fetch_add(_invocationCount, [(NSMutableArray *)self->_items]);
  [(NSMutableArray *)self->_items removeAllObjects];
  lock = self->_lock;

  [(NSConditionLock *)lock unlock];
}

- (void)_drainQueue:(id)queue
{
  queueCopy = queue;
  if (!_drainQueue__c)
  {
    _drainQueue__c = objc_opt_class();
  }

  v5 = MEMORY[0x1E69E9848];
  do
  {
    if (queueCopy)
    {
      if (_drainQueue__once != -1)
      {
        [MFInvocationQueue _drainQueue:];
      }

      v6 = objc_autoreleasePoolPush();
      if ((_drainQueue__DebugInvocationThreads & 1) != 0 || (Current = 0.0, [queueCopy mf_shouldLogInvocation]))
      {
        Current = CFAbsoluteTimeGetCurrent();
        v8 = *v5;
        target = [queueCopy target];
        v10 = [target description];
        uTF8String = [v10 UTF8String];
        Name = sel_getName([queueCopy selector]);
        fprintf(v8, "MFInvocationQueue starting invocation %p [%s %s]\n", queueCopy, uTF8String, Name);
      }

      [queueCopy invoke];
      if ((_drainQueue__DebugInvocationThreads & 1) != 0 || [queueCopy mf_shouldLogInvocation])
      {
        v13 = *v5;
        target2 = [queueCopy target];
        v15 = [target2 description];
        uTF8String2 = [v15 UTF8String];
        v17 = sel_getName([queueCopy selector]);
        v18 = CFAbsoluteTimeGetCurrent();
        fprintf(v13, "MFInvocationQueue finished invocation %p [%s %s] in %5.5fs\n", queueCopy, uTF8String2, v17, v18 - Current);
      }

      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        _MFFlushCurrentInvocation();
      }

      atomic_fetch_add(_invocationCount, 0xFFFFFFFF);
      objc_autoreleasePoolPop(v6);
    }

    v20 = objc_autoreleasePoolPush();
    [(NSConditionLock *)self->_lock lock];
    if (self->_numThreads > self->_maxThreads)
    {
      goto LABEL_24;
    }

    if (![(NSMutableArray *)self->_items count]&& self->_threadRecycleTimeout > 0.0)
    {
      [(NSConditionLock *)self->_lock unlockWithCondition:1];
      v21 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceNow:self->_threadRecycleTimeout];
      if (![(NSConditionLock *)self->_lock lockWhenCondition:2 beforeDate:v21])
      {
        [(NSConditionLock *)self->_lock lock];
      }
    }

    if ([(NSMutableArray *)self->_items count])
    {
      queueCopy = [(NSMutableArray *)self->_items objectAtIndexedSubscript:0];
      [(NSMutableArray *)self->_items removeObjectAtIndex:0];
    }

    else
    {
LABEL_24:
      queueCopy = 0;
      --self->_numThreads;
    }

    [(NSConditionLock *)self->_lock unlockWithCondition:2 * ([(NSMutableArray *)self->_items count]!= 0)];
    objc_autoreleasePoolPop(v20);
  }

  while (queueCopy);
}

void __33__MFInvocationQueue__drainQueue___block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  _drainQueue__DebugInvocationThreads = [v0 BOOLForKey:@"DebugWorkerThreads"];
}

+ (void)flushAllInvocationQueues
{
  v2 = 0;
  atomic_compare_exchange_strong(_invocationCount, &v2, 0);
  if (v2)
  {
    v3 = 0.01;
    do
    {
      currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
      v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:v3];
      [currentRunLoop runUntilDate:v5];

      v6 = 0;
      if (v3 < 1.0)
      {
        v3 = v3 + v3;
      }

      atomic_compare_exchange_strong(_invocationCount, &v6, 0);
    }

    while (v6);
  }
}

- (void)didCancel:(id)cancel
{
  cancelCopy = cancel;
  [(NSConditionLock *)self->_lock lock];
  v4 = [(NSMutableArray *)self->_items count];
  v5 = v4;
  if (v4)
  {
    v6 = v4 - 1;
    do
    {
      v7 = [(NSMutableArray *)self->_items objectAtIndex:v6];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        monitor = [v7 monitor];

        if (monitor == cancelCopy)
        {
          [cancelCopy postActivityStarting];
          [cancelCopy postActivityFinished:v7];
          [(NSMutableArray *)self->_items removeObjectAtIndex:v6];
        }
      }

      --v6;
    }

    while (v6 != -1);
  }

  atomic_fetch_add(_invocationCount, [(NSMutableArray *)self->_items count]- v5);
  [(NSConditionLock *)self->_lock unlock];
}

- (id)copyDiagnosticInformation
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = +[MFInvocationQueue sharedInvocationQueue];

  [v3 appendString:@"\n"];
  v5 = objc_opt_class();
  v6 = &stru_1F273A5E0;
  if (v4 == self)
  {
    v6 = @"Shared ";
  }

  [v3 appendFormat:@"==== %@Invocation Queue <%@: %p> ====\n", v6, v5, self];
  [v3 appendFormat:@"number of running threads: %d\n", self->_numThreads];
  [v3 appendString:@"==== Queued ====\n"];
  [(NSConditionLock *)self->_lock lock];
  if ([(NSMutableArray *)self->_items count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = self->_items;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v7);
          }

          [v3 appendFormat:@"  %@\n", *(*(&v13 + 1) + 8 * v10++)];
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    [v3 appendFormat:@"(empty)\n"];
  }

  [(NSConditionLock *)self->_lock unlock];
  v11 = *MEMORY[0x1E69E9840];
  return v3;
}

@end