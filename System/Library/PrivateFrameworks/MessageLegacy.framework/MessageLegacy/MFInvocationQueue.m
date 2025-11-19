@interface MFInvocationQueue
+ (id)sharedInvocationQueue;
+ (void)flushAllInvocationQueues;
- (MFInvocationQueue)initWithMaxThreadCount:(unint64_t)a3;
- (id)copyDiagnosticInformation;
- (unint64_t)invocationCount;
- (void)_adjustThreadPrioritiesIsForeground:(BOOL)a3;
- (void)_drainQueue:(id)a3;
- (void)_processInvocation:(id)a3;
- (void)addInvocation:(id)a3;
- (void)contentProtectionStateChanged:(int)a3 previousState:(int)a4;
- (void)dealloc;
- (void)didCancel:(id)a3;
- (void)removeAllItems;
- (void)setMaxThreadCount:(unint64_t)a3;
@end

@implementation MFInvocationQueue

+ (id)sharedInvocationQueue
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__MFInvocationQueue_sharedInvocationQueue__block_invoke;
  block[3] = &unk_2798B61C0;
  block[4] = a1;
  if (sharedInvocationQueue_onceToken != -1)
  {
    dispatch_once(&sharedInvocationQueue_onceToken, block);
  }

  return sharedInvocationQueue_singleton;
}

uint64_t __42__MFInvocationQueue_sharedInvocationQueue__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) initWithMaxThreadCount:1];
  sharedInvocationQueue_singleton = v1;

  return [v1 setThreadRecycleTimeout:30.0];
}

- (MFInvocationQueue)initWithMaxThreadCount:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = MFInvocationQueue;
  v4 = [(MFInvocationQueue *)&v8 init];
  if (v4)
  {
    v4->_lock = [objc_alloc(MEMORY[0x277D24EF0]) initWithName:@"InvocationQueue_lock" condition:0 andDelegate:v4];
    if (a3 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = a3;
    }

    v4->_maxThreads = v5;
    *&v4->_threadPriorityTrigger = 7;
    v4->_threadOverrides = objc_alloc_init(MEMORY[0x277CBEB58]);
    v4->_isForeground = [MFUserAgent() isForeground];
    if (MFIsMobileMail())
    {
      v6 = dispatch_queue_create("com.apple.message.invocationqueue.keybag", 0);
      v4->_keybagQueue = v6;
      MFRegisterContentProtectionObserver(v4, v6);
    }

    [objc_msgSend(MEMORY[0x277D24F10] "sharedController")];
  }

  return v4;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277D24F10] "sharedController")];
  atomic_fetch_add(&_invocationCount, [(NSMutableArray *)self->_items]);

  if (MFIsMobileMail())
  {
    MFUnregisterContentProtectionObserver(self);
    dispatch_release(self->_keybagQueue);
  }

  v3.receiver = self;
  v3.super_class = MFInvocationQueue;
  [(MFInvocationQueue *)&v3 dealloc];
}

- (void)setMaxThreadCount:(unint64_t)a3
{
  if (a3 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a3;
  }

  self->_maxThreads = v3;
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

- (void)addInvocation:(id)a3
{
  if (a3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [a3 monitor];
    }

    else
    {
      v5 = 0;
    }

    v6 = [v5 priority];
    v7 = *&self->_threadPriorityTrigger;
    [(NSConditionLock *)self->_lock lock];
    v8 = [(NSConditionLock *)self->_lock condition];
    v9 = v8;
    atomic_fetch_add(&_invocationCount, 1u);
    if (v6 <= v7 || v8 == 1)
    {
      items = self->_items;
      if (!items)
      {
        items = objc_alloc_init(MEMORY[0x277CBEB18]);
        self->_items = items;
      }

      v12 = [(NSMutableArray *)items count];
      if (v12)
      {
        v13 = v12;
        v14 = 0;
        while (1)
        {
          v15 = [(NSMutableArray *)self->_items objectAtIndex:v14];
          objc_opt_class();
          v16 = (objc_opt_isKindOfClass() & 1) != 0 ? [v15 monitor] : 0;
          if (v6 < [v16 priority])
          {
            break;
          }

          if (v13 == ++v14)
          {
            goto LABEL_20;
          }
        }

        [(NSMutableArray *)self->_items insertObject:a3 atIndex:v14];
      }

      else
      {
LABEL_20:
        [(NSMutableArray *)self->_items addObject:a3];
      }

      if (v9 != 1)
      {
        numThreads = self->_numThreads;
        if (numThreads < self->_maxThreads)
        {
          self->_numThreads = numThreads + 1;
          [MEMORY[0x277CCACC8] detachNewThreadSelector:sel__drainQueue_ toTarget:self withObject:0];
        }
      }

      lock = self->_lock;

      [(NSConditionLock *)lock unlockWithCondition:2];
    }

    else
    {
      ++self->_numThreads;
      [MEMORY[0x277CCACC8] detachNewThreadSelector:sel__drainQueue_ toTarget:self withObject:a3];
      v10 = self->_lock;

      [(NSConditionLock *)v10 unlock];
    }
  }
}

- (void)removeAllItems
{
  [(NSConditionLock *)self->_lock lock];
  atomic_fetch_add(&_invocationCount, [(NSMutableArray *)self->_items]);
  [(NSMutableArray *)self->_items removeAllObjects];
  lock = self->_lock;

  [(NSConditionLock *)lock unlock];
}

- (void)_adjustThreadPrioritiesIsForeground:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__MFInvocationQueue__adjustThreadPrioritiesIsForeground___block_invoke;
  v3[3] = &unk_2798B6640;
  v3[4] = self;
  v4 = a3;
  _dispatch_sync(v3);
}

uint64_t __57__MFInvocationQueue__adjustThreadPrioritiesIsForeground___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 64) = *(a1 + 40);
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 56);
  result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) applyOverrideWhileForeground:*(a1 + 40)];
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = result;
    }

    while (result);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_processInvocation:(id)a3
{
  v5 = 17;
  if (objc_opt_respondsToSelector())
  {
    v6 = [a3 isLowPriority];
    if (v6)
    {
      v5 = 25;
    }

    else
    {
      v5 = 17;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [[_MFInvocationQOSOverride alloc] initWithPthread:pthread_self() desiredQoS:v5 lowPriority:v6 & 1];
  __relative_priority = 0;
  __qos_class = QOS_CLASS_DEFAULT;
  pthread_get_qos_class_np([(_MFInvocationQOSOverride *)v7 pthread], &__qos_class, &__relative_priority);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__MFInvocationQueue__processInvocation___block_invoke;
  v9[3] = &unk_2798B61E8;
  v9[4] = self;
  v9[5] = v7;
  _dispatch_sync(v9);
  pthread_set_qos_class_self_np(QOS_CLASS_BACKGROUND, 0);
  [a3 invoke];
  pthread_set_qos_class_self_np(__qos_class, __relative_priority);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__MFInvocationQueue__processInvocation___block_invoke_44;
  v8[3] = &unk_2798B61E8;
  v8[4] = v7;
  v8[5] = self;
  _dispatch_sync(v8);
}

uint64_t __40__MFInvocationQueue__processInvocation___block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = [*(*(a1 + 32) + 56) member:*(a1 + 40)];
  if (v3)
  {
    v4 = v3;
    if ([v3 removeOverride])
    {
      v5 = MFLogGeneral();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        __40__MFInvocationQueue__processInvocation___block_invoke_cold_1(v2, v5);
      }
    }

    [*(*(a1 + 32) + 56) removeObject:v4];
  }

  [*(*(a1 + 32) + 56) addObject:*(a1 + 40)];
  return [*(a1 + 40) applyOverrideWhileForeground:*(*(a1 + 32) + 64)];
}

uint64_t __40__MFInvocationQueue__processInvocation___block_invoke_44(uint64_t a1)
{
  [*(a1 + 32) removeOverride];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 56);

  return [v3 removeObject:v2];
}

- (void)_drainQueue:(id)a3
{
  if (!_drainQueue__c)
  {
    _drainQueue__c = objc_opt_class();
  }

  v5 = MEMORY[0x277D85DF8];
  do
  {
    if (a3)
    {
      if (_drainQueue__once != -1)
      {
        [MFInvocationQueue _drainQueue:];
      }

      v6 = objc_alloc_init(MEMORY[0x277CCA8B0]);
      if ((_drainQueue__DebugInvocationThreads & 1) != 0 || (Current = 0.0, [a3 mf_shouldLogInvocation]))
      {
        Current = CFAbsoluteTimeGetCurrent();
        v8 = *v5;
        v9 = [objc_msgSend(objc_msgSend(a3 "target")];
        Name = sel_getName([a3 selector]);
        fprintf(v8, "MFInvocationQueue starting invocation %p [%s %s]\n", a3, v9, Name);
      }

      [(MFInvocationQueue *)self _processInvocation:a3];
      if ((_drainQueue__DebugInvocationThreads & 1) != 0 || [a3 mf_shouldLogInvocation])
      {
        v11 = *v5;
        v12 = [objc_msgSend(objc_msgSend(a3 "target")];
        v13 = sel_getName([a3 selector]);
        v14 = CFAbsoluteTimeGetCurrent();
        fprintf(v11, "MFInvocationQueue finished invocation %p [%s %s] in %5.5fs\n", a3, v12, v13, v14 - Current);
      }

      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        _MFFlushCurrentInvocation();
      }

      atomic_fetch_add(&_invocationCount, 0xFFFFFFFF);
    }

    v16 = objc_alloc_init(MEMORY[0x277CCA8B0]);
    [(NSConditionLock *)self->_lock lock];
    numThreads = self->_numThreads;
    if (numThreads <= self->_maxThreads)
    {
      if (![(NSMutableArray *)self->_items count]&& self->_threadRecycleTimeout > 0.0)
      {
        [(NSConditionLock *)self->_lock unlockWithCondition:1];
        v18 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:self->_threadRecycleTimeout];
        if (![(NSConditionLock *)self->_lock lockWhenCondition:2 beforeDate:v18])
        {
          [(NSConditionLock *)self->_lock lock];
        }
      }

      if ([(NSMutableArray *)self->_items count])
      {
        a3 = [(NSMutableArray *)self->_items objectAtIndex:0];
        [(NSMutableArray *)self->_items removeObjectAtIndex:0];
        goto LABEL_27;
      }

      a3 = 0;
      numThreads = self->_numThreads;
    }

    else
    {
      a3 = 0;
    }

    self->_numThreads = numThreads - 1;
LABEL_27:
    [(NSConditionLock *)self->_lock unlockWithCondition:2 * ([(NSMutableArray *)self->_items count]!= 0)];
    [v16 drain];
  }

  while (a3);
}

uint64_t __33__MFInvocationQueue__drainQueue___block_invoke()
{
  result = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  _drainQueue__DebugInvocationThreads = result;
  return result;
}

+ (void)flushAllInvocationQueues
{
  if ([a1 totalInvocationCount])
  {
    v3 = 0.01;
    do
    {
      v4 = [MEMORY[0x277CBEB88] currentRunLoop];
      [v4 runUntilDate:{objc_msgSend(MEMORY[0x277CBEAA8], "dateWithTimeIntervalSinceNow:", v3)}];
      if (v3 < 1.0)
      {
        v3 = v3 + v3;
      }
    }

    while ([a1 totalInvocationCount]);
  }
}

- (void)didCancel:(id)a3
{
  [(NSConditionLock *)self->_lock lock];
  v5 = [(NSMutableArray *)self->_items count];
  v6 = v5;
  if (v5)
  {
    v7 = v5 - 1;
    do
    {
      v8 = [(NSMutableArray *)self->_items objectAtIndex:v7];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 monitor] == a3)
      {
        [a3 postActivityStarting];
        [a3 postActivityFinished:v8];
        [(NSMutableArray *)self->_items removeObjectAtIndex:v7];
      }

      --v7;
    }

    while (v7 != -1);
  }

  atomic_fetch_add(&_invocationCount, [(NSMutableArray *)self->_items count]- v6);
  lock = self->_lock;

  [(NSConditionLock *)lock unlock];
}

- (void)contentProtectionStateChanged:(int)a3 previousState:(int)a4
{
  if (!a3 && a4 != 3)
  {
    v7[7] = v4;
    v7[8] = v5;
    [(MFInvocationQueue *)self _adjustThreadPrioritiesIsForeground:1];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __65__MFInvocationQueue_contentProtectionStateChanged_previousState___block_invoke;
    v7[3] = &unk_2798B61C0;
    v7[4] = self;
    _dispatch_sync(v7);
  }
}

uint64_t __65__MFInvocationQueue_contentProtectionStateChanged_previousState___block_invoke(uint64_t a1)
{
  result = [MFUserAgent() isForeground];
  *(*(a1 + 32) + 64) = result;
  return result;
}

- (id)copyDiagnosticInformation
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = +[MFInvocationQueue sharedInvocationQueue];
  [v3 appendString:@"\n"];
  if (v4 == self)
  {
    v5 = @"Shared ";
  }

  else
  {
    v5 = &stru_2869ED3E0;
  }

  [v3 appendFormat:@"==== %@Invocation Queue <%@: %p> ====\n", v5, objc_opt_class(), self];
  [v3 appendFormat:@"number of running threads: %d\n", self->_numThreads];
  [v3 appendString:@"==== Queued ====\n"];
  [(NSConditionLock *)self->_lock lock];
  if ([(NSMutableArray *)self->_items count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    items = self->_items;
    v7 = [(NSMutableArray *)items countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(items);
          }

          [v3 appendFormat:@"  %@\n", *(*(&v13 + 1) + 8 * i)];
        }

        v8 = [(NSMutableArray *)items countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    [v3 appendFormat:@"(empty)\n"];
  }

  [(NSConditionLock *)self->_lock unlock];
  v11 = *MEMORY[0x277D85DE8];
  return v3;
}

void __40__MFInvocationQueue__processInvocation___block_invoke_cold_1(id *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [*a1 pthread];
  v5 = 134217984;
  v6 = v3;
  _os_log_debug_impl(&dword_258BDA000, a2, OS_LOG_TYPE_DEBUG, "processing low pri invocation: qos override already existed for %p, just ending it", &v5, 0xCu);
  v4 = *MEMORY[0x277D85DE8];
}

@end