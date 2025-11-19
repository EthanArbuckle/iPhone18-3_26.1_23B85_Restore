@interface HMFTimerManager
- (BOOL)_cancelTimerManagerIfEmpty;
- (HMFTimerManager)initWithOptions:(unsigned int)a3 dataSource:(id)a4;
- (HMFTimerManagerDelegate)delegate;
- (id)_removeExpiredTimerContextsAndRefreshNextTimer;
- (id)startTimerWithTimeInterval:(double)a3 object:(id)a4 shouldReplace:(BOOL)a5;
- (void)_addTimerContext:(id)a3;
- (void)_refreshNextTimerIfNeededWithTimeInterval:(double)a3;
- (void)_removeTimerContext:(id)a3;
- (void)_removeTimerContextsWithMatchingObject:(id)a3;
- (void)cancelTimerForContext:(id)a3;
- (void)notifyDidFireForTimerContexts:(id)a3 shouldDispatch:(BOOL)a4;
- (void)timerDidFire:(id)a3;
@end

@implementation HMFTimerManager

- (HMFTimerManager)initWithOptions:(unsigned int)a3 dataSource:(id)a4
{
  v7 = a4;
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

    v9->_options = a3;
    objc_storeStrong(&v9->_dataSource, a4);
    v14 = HMFDispatchQueueName(v9, 0);
    v15 = dispatch_queue_create(v14, 0);
    delegateQueue = v9->_delegateQueue;
    v9->_delegateQueue = v15;
  }

  return v9;
}

- (id)startTimerWithTimeInterval:(double)a3 object:(id)a4 shouldReplace:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = [HMFTimerManagerTimerContext alloc];
  [(HMFTimerManagerDataSource *)self->_dataSource currentTime];
  v11 = [(HMFTimerManagerTimerContext *)v9 initWithObject:v8 expirationTime:v10 + a3];
  os_unfair_lock_lock_with_options();
  if (v8 && v5)
  {
    [(HMFTimerManager *)self _removeTimerContextsWithMatchingObject:v8];
  }

  [(HMFTimerManager *)self _addTimerContext:v11];
  os_unfair_lock_unlock(&self->_lock);
  [(HMFTimerManager *)self refreshTimerManager];

  return v11;
}

- (void)cancelTimerForContext:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  [(HMFTimerManager *)self _removeTimerContext:v4];
  os_unfair_lock_unlock(&self->_lock);
  [(HMFTimerManager *)self refreshTimerManager];
}

- (void)_addTimerContext:(id)a3
{
  v8 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  sortedTimerContexts = self->_sortedTimerContexts;
  v5 = [(NSMutableArray *)sortedTimerContexts count];
  v6 = +[HMFTimerManagerTimerContext comparator];
  v7 = [(NSMutableArray *)sortedTimerContexts indexOfObject:v8 inSortedRange:0 options:v5 usingComparator:1024, v6];

  [(NSMutableArray *)self->_sortedTimerContexts insertObject:v8 atIndex:v7];
}

- (void)_removeTimerContextsWithMatchingObject:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  sortedTimerContexts = self->_sortedTimerContexts;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__HMFTimerManager__removeTimerContextsWithMatchingObject___block_invoke;
  v8[3] = &unk_2786E6CF0;
  v9 = v4;
  v6 = v4;
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

- (void)_removeTimerContext:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  sortedTimerContexts = self->_sortedTimerContexts;
  v6 = [(NSMutableArray *)sortedTimerContexts count];
  v7 = +[HMFTimerManagerTimerContext comparator];
  v8 = [(NSMutableArray *)sortedTimerContexts indexOfObject:v4 inSortedRange:0 options:v6 usingComparator:256, v7];

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

- (void)_refreshNextTimerIfNeededWithTimeInterval:(double)a3
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (![(HMFTimerManager *)self _cancelTimerManagerIfEmpty])
  {
    nextTimerContext = self->_nextTimerContext;
    if (!nextTimerContext || ([(NSMutableArray *)self->_sortedTimerContexts firstObject], v6 = objc_claimAutoreleasedReturnValue(), v6, nextTimerContext != v6))
    {
      v7 = [(NSMutableArray *)self->_sortedTimerContexts firstObject];
      v8 = self->_nextTimerContext;
      self->_nextTimerContext = v7;

      v9 = [(HMFTimerManagerDataSource *)self->_dataSource timerWithTimeInterval:self->_options options:a3];
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

- (void)notifyDidFireForTimerContexts:(id)a3 shouldDispatch:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 count])
  {
    v7 = [(HMFTimerManager *)self delegateQueue];
    v8 = v7;
    if (v4)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __64__HMFTimerManager_notifyDidFireForTimerContexts_shouldDispatch___block_invoke;
      block[3] = &unk_2786E6D18;
      block[4] = self;
      v11 = v6;
      dispatch_async(v8, block);
    }

    else
    {
      dispatch_assert_queue_V2(v7);

      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __64__HMFTimerManager_notifyDidFireForTimerContexts_shouldDispatch___block_invoke_2;
      v9[3] = &unk_2786E6D40;
      v9[4] = self;
      [v6 na_each:v9];
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

- (void)timerDidFire:(id)a3
{
  v4 = [(HMFTimerManager *)self delegateQueue];
  dispatch_assert_queue_V2(v4);

  [(HMFTimerManager *)self refreshTimerManagerWithShouldDispatchNotifications:0];
}

- (HMFTimerManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end