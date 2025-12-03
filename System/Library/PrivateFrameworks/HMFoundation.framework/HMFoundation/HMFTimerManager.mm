@interface HMFTimerManager
- (BOOL)_cancelTimerManagerIfEmpty;
- (HMFTimerManager)initWithOptions:(unsigned int)options dataSource:(id)source;
- (HMFTimerManagerDelegate)delegate;
- (id)_removeExpiredTimerContextsAndRefreshNextTimer;
- (id)startTimerWithTimeInterval:(double)interval object:(id)object shouldReplace:(BOOL)replace;
- (void)_addTimerContext:(id)context;
- (void)_refreshNextTimerIfNeededWithTimeInterval:(double)interval;
- (void)_removeTimerContext:(id)context;
- (void)_removeTimerContextsWithMatchingObject:(id)object;
- (void)cancelTimerForContext:(id)context;
- (void)notifyDidFireForTimerContexts:(id)contexts shouldDispatch:(BOOL)dispatch;
- (void)timerDidFire:(id)fire;
@end

@implementation HMFTimerManager

- (HMFTimerManager)initWithOptions:(unsigned int)options dataSource:(id)source
{
  sourceCopy = source;
  v18.receiver = self;
  v18.super_class = HMFTimerManager;
  v8 = [(HMFTimerManager *)&v18 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    sortedTimerContexts = v9->_sortedTimerContexts;
    v9->_sortedTimerContexts = v10;

    nextTimer = v9->_nextTimer;
    v9->_nextTimer = 0;

    nextTimerContext = v9->_nextTimerContext;
    v9->_nextTimerContext = 0;

    v9->_options = options;
    objc_storeStrong(&v9->_dataSource, source);
    v14 = HMFDispatchQueueName(v9, 0);
    v15 = dispatch_queue_create(v14, 0);
    delegateQueue = v9->_delegateQueue;
    v9->_delegateQueue = v15;
  }

  return v9;
}

- (id)startTimerWithTimeInterval:(double)interval object:(id)object shouldReplace:(BOOL)replace
{
  replaceCopy = replace;
  objectCopy = object;
  v9 = [HMFTimerManagerTimerContext alloc];
  [(HMFTimerManagerDataSource *)self->_dataSource currentTime];
  interval = [(HMFTimerManagerTimerContext *)v9 initWithObject:objectCopy expirationTime:v10 + interval];
  os_unfair_lock_lock_with_options();
  if (objectCopy && replaceCopy)
  {
    [(HMFTimerManager *)self _removeTimerContextsWithMatchingObject:objectCopy];
  }

  [(HMFTimerManager *)self _addTimerContext:interval];
  os_unfair_lock_unlock(&self->_lock);
  [(HMFTimerManager *)self refreshTimerManager];

  return interval;
}

- (void)cancelTimerForContext:(id)context
{
  contextCopy = context;
  os_unfair_lock_lock_with_options();
  [(HMFTimerManager *)self _removeTimerContext:contextCopy];
  os_unfair_lock_unlock(&self->_lock);
  [(HMFTimerManager *)self refreshTimerManager];
}

- (void)_addTimerContext:(id)context
{
  contextCopy = context;
  os_unfair_lock_assert_owner(&self->_lock);
  sortedTimerContexts = self->_sortedTimerContexts;
  v5 = [(NSMutableArray *)sortedTimerContexts count];
  v6 = +[HMFTimerManagerTimerContext comparator];
  v7 = [(NSMutableArray *)sortedTimerContexts indexOfObject:contextCopy inSortedRange:0 options:v5 usingComparator:1024, v6];

  [(NSMutableArray *)self->_sortedTimerContexts insertObject:contextCopy atIndex:v7];
}

- (void)_removeTimerContextsWithMatchingObject:(id)object
{
  objectCopy = object;
  os_unfair_lock_assert_owner(&self->_lock);
  sortedTimerContexts = self->_sortedTimerContexts;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__HMFTimerManager__removeTimerContextsWithMatchingObject___block_invoke;
  v8[3] = &unk_2786E6CF0;
  v9 = objectCopy;
  v6 = objectCopy;
  v7 = [(NSMutableArray *)sortedTimerContexts indexesOfObjectsPassingTest:v8];
  [(NSMutableArray *)self->_sortedTimerContexts removeObjectsAtIndexes:v7];
}

uint64_t __58__HMFTimerManager__removeTimerContextsWithMatchingObject___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 object];
  if (v4)
  {
    v5 = [v3 object];
    v6 = [v5 isEqual:*(a1 + 32)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_removeTimerContext:(id)context
{
  contextCopy = context;
  os_unfair_lock_assert_owner(&self->_lock);
  sortedTimerContexts = self->_sortedTimerContexts;
  v6 = [(NSMutableArray *)sortedTimerContexts count];
  v7 = +[HMFTimerManagerTimerContext comparator];
  v8 = [(NSMutableArray *)sortedTimerContexts indexOfObject:contextCopy inSortedRange:0 options:v6 usingComparator:256, v7];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = self->_sortedTimerContexts;

    [(NSMutableArray *)v9 removeObjectAtIndex:v8];
  }
}

- (BOOL)_cancelTimerManagerIfEmpty
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = [(NSMutableArray *)self->_sortedTimerContexts count];
  if (!v3)
  {
    [(HMFTimer *)self->_nextTimer cancel];
    nextTimer = self->_nextTimer;
    self->_nextTimer = 0;

    nextTimerContext = self->_nextTimerContext;
    self->_nextTimerContext = 0;
  }

  return v3 == 0;
}

- (void)_refreshNextTimerIfNeededWithTimeInterval:(double)interval
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (![(HMFTimerManager *)self _cancelTimerManagerIfEmpty])
  {
    nextTimerContext = self->_nextTimerContext;
    if (!nextTimerContext || ([(NSMutableArray *)self->_sortedTimerContexts firstObject], v6 = objc_claimAutoreleasedReturnValue(), v6, nextTimerContext != v6))
    {
      firstObject = [(NSMutableArray *)self->_sortedTimerContexts firstObject];
      v8 = self->_nextTimerContext;
      self->_nextTimerContext = firstObject;

      v9 = [(HMFTimerManagerDataSource *)self->_dataSource timerWithTimeInterval:self->_options options:interval];
      nextTimer = self->_nextTimer;
      self->_nextTimer = v9;

      [(HMFTimer *)self->_nextTimer setDelegate:self];
      [(HMFTimer *)self->_nextTimer setDelegateQueue:self->_delegateQueue];
      v11 = self->_nextTimer;

      [(HMFTimer *)v11 resume];
    }
  }
}

- (id)_removeExpiredTimerContextsAndRefreshNextTimer
{
  v21 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_sortedTimerContexts;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v17 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v16 + 1) + 8 * v8);
      [v9 expirationTime];
      v11 = v10;
      [(HMFTimerManagerDataSource *)self->_dataSource currentTime];
      v13 = v11 - v12;
      if (v13 > 0.0)
      {
        break;
      }

      [v3 addObject:v9];
      if (v6 == ++v8)
      {
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v13 = 0.0;
  }

  if ([v3 count])
  {
    -[NSMutableArray removeObjectsInRange:](self->_sortedTimerContexts, "removeObjectsInRange:", 0, [v3 count]);
  }

  [(HMFTimerManager *)self _refreshNextTimerIfNeededWithTimeInterval:v13, v16];
  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)notifyDidFireForTimerContexts:(id)contexts shouldDispatch:(BOOL)dispatch
{
  dispatchCopy = dispatch;
  contextsCopy = contexts;
  if ([contextsCopy count])
  {
    delegateQueue = [(HMFTimerManager *)self delegateQueue];
    v8 = delegateQueue;
    if (dispatchCopy)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __64__HMFTimerManager_notifyDidFireForTimerContexts_shouldDispatch___block_invoke;
      block[3] = &unk_2786E6D18;
      block[4] = self;
      v11 = contextsCopy;
      dispatch_async(v8, block);
    }

    else
    {
      dispatch_assert_queue_V2(delegateQueue);

      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __64__HMFTimerManager_notifyDidFireForTimerContexts_shouldDispatch___block_invoke_2;
      v9[3] = &unk_2786E6D40;
      v9[4] = self;
      [contextsCopy na_each:v9];
    }
  }
}

void __64__HMFTimerManager_notifyDidFireForTimerContexts_shouldDispatch___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegate];
  [v5 timerManager:*(a1 + 32) didFireForTimerContext:v4];
}

- (void)timerDidFire:(id)fire
{
  delegateQueue = [(HMFTimerManager *)self delegateQueue];
  dispatch_assert_queue_V2(delegateQueue);

  [(HMFTimerManager *)self refreshTimerManagerWithShouldDispatchNotifications:0];
}

- (HMFTimerManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end