@interface MTPeriodicQueue
- (MTPeriodicQueue)init;
- (id)__clearObjects;
- (void)__beginFlushTimer;
- (void)__endFlushTimer;
- (void)__flushObjects;
- (void)__flushObjects:(id)objects;
- (void)__flushObjects:(id)objects maximumBatchSize:(int64_t)size flushHandler:(id)handler;
- (void)_beginFlushTimer;
- (void)_endFlushTimer;
- (void)appendObject:(id)object;
- (void)dealloc;
- (void)flushObjects;
- (void)insertObject:(id)object;
- (void)insertObjects:(id)objects;
- (void)setFlushTimeInterval:(double)interval;
- (void)setFlushTimerEnabled:(BOOL)enabled;
- (void)setMaximumBatchSize:(int64_t)size;
@end

@implementation MTPeriodicQueue

- (MTPeriodicQueue)init
{
  v12.receiver = self;
  v12.super_class = MTPeriodicQueue;
  v2 = [(MTPeriodicQueue *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_flushTimerEnabled = 1;
    v2->_flushTimeInterval = 60.0;
    v2->_maximumBatchSize = 1000;
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mutableObjects = v3->_mutableObjects;
    v3->_mutableObjects = v4;

    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v7 = dispatch_queue_create(0, v6);
    flushQueue = v3->_flushQueue;
    v3->_flushQueue = v7;

    v9 = dispatch_queue_create(0, v6);
    syncQueue = v3->_syncQueue;
    v3->_syncQueue = v9;

    [(MTPeriodicQueue *)v3 _beginFlushTimer];
  }

  return v3;
}

- (void)dealloc
{
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v4 = self->_timer;
    self->_timer = 0;
  }

  v5.receiver = self;
  v5.super_class = MTPeriodicQueue;
  [(MTPeriodicQueue *)&v5 dealloc];
}

- (void)setFlushTimeInterval:(double)interval
{
  syncQueue = self->_syncQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__MTPeriodicQueue_setFlushTimeInterval___block_invoke;
  v4[3] = &unk_2798CEB60;
  v4[4] = self;
  *&v4[5] = interval;
  dispatch_sync(syncQueue, v4);
}

uint64_t __40__MTPeriodicQueue_setFlushTimeInterval___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 16) != v2)
  {
    *(v1 + 16) = v2;
    result = *(result + 32);
    if (*(result + 8) == 1)
    {
      return [result __beginFlushTimer];
    }
  }

  return result;
}

- (void)setFlushTimerEnabled:(BOOL)enabled
{
  syncQueue = self->_syncQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__MTPeriodicQueue_setFlushTimerEnabled___block_invoke;
  v4[3] = &unk_2798CEB88;
  v4[4] = self;
  enabledCopy = enabled;
  dispatch_sync(syncQueue, v4);
}

uint64_t __40__MTPeriodicQueue_setFlushTimerEnabled___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 8) != v2)
  {
    *(v1 + 8) = v2;
    v3 = *(result + 40);
    v4 = *(result + 32);
    if (v3 == 1)
    {
      return [v4 __beginFlushTimer];
    }

    else
    {
      return [v4 __endFlushTimer];
    }
  }

  return result;
}

- (void)setMaximumBatchSize:(int64_t)size
{
  syncQueue = self->_syncQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__MTPeriodicQueue_setMaximumBatchSize___block_invoke;
  v4[3] = &unk_2798CEB60;
  v4[4] = self;
  v4[5] = size;
  dispatch_sync(syncQueue, v4);
}

unint64_t __39__MTPeriodicQueue_setMaximumBatchSize___block_invoke(unint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 24) != v2)
  {
    v3 = result;
    *(v1 + 24) = v2;
    v4 = *(result + 40);
    result = [*(*(result + 32) + 48) count];
    if (v4 <= result)
    {
      v5 = *(v3 + 32);

      return [v5 __flushObjects];
    }
  }

  return result;
}

- (void)appendObject:(id)object
{
  objectCopy = object;
  syncQueue = self->_syncQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__MTPeriodicQueue_appendObject___block_invoke;
  v7[3] = &unk_2798CE050;
  v7[4] = self;
  v8 = objectCopy;
  v6 = objectCopy;
  dispatch_sync(syncQueue, v7);
}

void *__32__MTPeriodicQueue_appendObject___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 48) addObject:*(a1 + 40)];
  v2 = [*(*(a1 + 32) + 48) count];
  result = *(a1 + 32);
  if (v2 >= result[3])
  {

    return [result __flushObjects];
  }

  return result;
}

- (void)insertObject:(id)object
{
  objectCopy = object;
  syncQueue = self->_syncQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__MTPeriodicQueue_insertObject___block_invoke;
  v7[3] = &unk_2798CE050;
  v7[4] = self;
  v8 = objectCopy;
  v6 = objectCopy;
  dispatch_sync(syncQueue, v7);
}

void *__32__MTPeriodicQueue_insertObject___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 48) insertObject:*(a1 + 40) atIndex:0];
  v2 = [*(*(a1 + 32) + 48) count];
  result = *(a1 + 32);
  if (v2 >= result[3])
  {

    return [result __flushObjects];
  }

  return result;
}

- (void)insertObjects:(id)objects
{
  objectsCopy = objects;
  syncQueue = self->_syncQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__MTPeriodicQueue_insertObjects___block_invoke;
  v7[3] = &unk_2798CE050;
  v8 = objectsCopy;
  selfCopy = self;
  v6 = objectsCopy;
  dispatch_sync(syncQueue, v7);
}

void __33__MTPeriodicQueue_insertObjects___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) count];
  v5 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, v2}];
  [*(*(a1 + 40) + 48) insertObjects:*(a1 + 32) atIndexes:?];
  v3 = [*(*(a1 + 40) + 48) count];
  v4 = *(a1 + 40);
  if (v3 >= v4[3])
  {
    [v4 __flushObjects];
  }
}

- (void)flushObjects
{
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__MTPeriodicQueue_flushObjects__block_invoke;
  block[3] = &unk_2798CD868;
  block[4] = self;
  dispatch_sync(syncQueue, block);
}

- (void)__flushObjects
{
  dispatch_assert_queue_V2(self->_syncQueue);
  __clearObjects = [(MTPeriodicQueue *)self __clearObjects];
  [(MTPeriodicQueue *)self __flushObjects:__clearObjects];
}

- (id)__clearObjects
{
  dispatch_assert_queue_V2(self->_syncQueue);
  v3 = [(NSMutableArray *)self->_mutableObjects copy];
  [(NSMutableArray *)self->_mutableObjects removeAllObjects];

  return v3;
}

- (void)__flushObjects:(id)objects
{
  objectsCopy = objects;
  dispatch_assert_queue_V2(self->_syncQueue);
  maximumBatchSize = self->_maximumBatchSize;
  v6 = MEMORY[0x259C9F5D0](self->_flushHandler);
  flushQueue = self->_flushQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __34__MTPeriodicQueue___flushObjects___block_invoke;
  v10[3] = &unk_2798CEBB0;
  v10[4] = self;
  v11 = objectsCopy;
  v12 = v6;
  v13 = maximumBatchSize;
  v8 = v6;
  v9 = objectsCopy;
  dispatch_async(flushQueue, v10);
}

- (void)__flushObjects:(id)objects maximumBatchSize:(int64_t)size flushHandler:(id)handler
{
  objectsCopy = objects;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_flushQueue);
  v10 = [objectsCopy count];
  if (handlerCopy && v10)
  {
    do
    {
      v11 = [objectsCopy count];
      if (v11 >= size)
      {
        sizeCopy = size;
      }

      else
      {
        sizeCopy = v11;
      }

      v13 = [objectsCopy count] - sizeCopy;
      v14 = [objectsCopy subarrayWithRange:{0, sizeCopy}];
      v15 = [objectsCopy subarrayWithRange:{sizeCopy, v13}];

      handlerCopy[2](handlerCopy, v14);
      objectsCopy = v15;
    }

    while ([v15 count]);
  }

  else
  {
    v15 = objectsCopy;
  }
}

- (void)_beginFlushTimer
{
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__MTPeriodicQueue__beginFlushTimer__block_invoke;
  block[3] = &unk_2798CD868;
  block[4] = self;
  dispatch_sync(syncQueue, block);
}

uint64_t __35__MTPeriodicQueue__beginFlushTimer__block_invoke(uint64_t a1)
{
  [*(a1 + 32) __endFlushTimer];
  v2 = *(a1 + 32);

  return [v2 __beginFlushTimer];
}

- (void)__beginFlushTimer
{
  dispatch_assert_queue_V2(self->_syncQueue);
  objc_initWeak(&location, self);
  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_syncQueue);
  timer = self->_timer;
  self->_timer = v3;

  v5 = self->_timer;
  v6 = dispatch_time(0, (self->_flushTimeInterval * 1000000000.0));
  dispatch_source_set_timer(v5, v6, (self->_flushTimeInterval * 1000000000.0), 0x3B9ACA00uLL);
  v7 = self->_timer;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __36__MTPeriodicQueue___beginFlushTimer__block_invoke;
  v8[3] = &unk_2798CD520;
  objc_copyWeak(&v9, &location);
  dispatch_source_set_event_handler(v7, v8);
  dispatch_resume(self->_timer);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __36__MTPeriodicQueue___beginFlushTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained __flushObjects];
}

- (void)_endFlushTimer
{
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__MTPeriodicQueue__endFlushTimer__block_invoke;
  block[3] = &unk_2798CD868;
  block[4] = self;
  dispatch_sync(syncQueue, block);
}

- (void)__endFlushTimer
{
  dispatch_assert_queue_V2(self->_syncQueue);
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v4 = self->_timer;
    self->_timer = 0;
  }
}

@end