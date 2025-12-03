@interface HDPrioritySemaphore
- (HDPrioritySemaphore)initWithCount:(unint64_t)count options:(unint64_t)options debugIdentifier:(id)identifier;
- (unint64_t)pendingCount;
- (void)signal;
- (void)waitForPendingCount:(unint64_t)count;
- (void)waitWithPriority:(int64_t)priority;
@end

@implementation HDPrioritySemaphore

- (void)signal
{
  v6 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v4 = 138543362;
  v5 = objc_opt_class();
  v2 = v5;
  _os_log_fault_impl(&dword_25156C000, selfCopy, OS_LOG_TYPE_FAULT, "HDPrioritySemaphore %{public}@ signaled with 0 count", &v4, 0xCu);

  v3 = *MEMORY[0x277D85DE8];
}

- (HDPrioritySemaphore)initWithCount:(unint64_t)count options:(unint64_t)options debugIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = HDPrioritySemaphore;
  v10 = [(HDPrioritySemaphore *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_options = options;
    objc_storeStrong(&v10->_debugIdentifier, identifier);
    v11->_lock._os_unfair_lock_opaque = 0;
    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    emptyTabCache = v11->_emptyTabCache;
    v11->_emptyTabCache = v12;

    v14 = [[HDPriorityQueue alloc] initWithComparisonBlock:&__block_literal_global_3];
    pendingQueue = v11->_pendingQueue;
    v11->_pendingQueue = v14;

    v11->_activeThreadLimit = count;
    v11->_activeThreadCount = 0;
    v11->_requireInitialSignal = 0;
    v11->_signpost = 0;
    v11->_isHighCount = 0;
  }

  return v11;
}

uint64_t __61__HDPrioritySemaphore_initWithCount_options_debugIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 priority];
  if (v6 == [v4 priority])
  {
    v7 = [v5 requestedDate];

    v8 = [v4 requestedDate];
    if ([v7 hk_isBeforeDate:v8])
    {
      v9 = 1;
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v10 = [v5 priority];

    if (v10 > [v4 priority])
    {
      v9 = 1;
    }

    else
    {
      v9 = -1;
    }
  }

  return v9;
}

- (void)waitWithPriority:(int64_t)priority
{
  v29 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if ((self->_options & 1) != 0 && [(HDPriorityQueue *)self->_pendingQueue count]>= 0x14 && !self->_isHighCount)
  {
    self->_isHighCount = 1;
    v5 = MEMORY[0x277CCC2A0];
    v6 = *MEMORY[0x277CCC2A0];
    self->_signpost = _HKLogSignpostIDGenerate();
    _HKInitializeLogging();
    v7 = *v5;
    if (os_signpost_enabled(v7))
    {
      v8 = v7;
      v9 = v8;
      signpost = self->_signpost;
      if (signpost - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
      {
        v11 = [(NSString *)self->_debugIdentifier cStringUsingEncoding:4];
        v27 = 136446210;
        v28 = v11;
        _os_signpost_emit_with_name_impl(&dword_25156C000, v9, OS_SIGNPOST_INTERVAL_BEGIN, signpost, "HDDatabase-semaphore-high-count", "Name: %{public}s", &v27, 0xCu);
      }
    }
  }

  if (self->_requireInitialSignal || (activeThreadCount = self->_activeThreadCount, activeThreadCount >= self->_activeThreadLimit))
  {
    anyObject = [(NSMutableSet *)self->_emptyTabCache anyObject];
    v14 = anyObject;
    if (anyObject)
    {
      v15 = anyObject;
    }

    else
    {
      v15 = objc_alloc_init(_HDSemaphoreTab);
    }

    v16 = v15;

    [(NSMutableSet *)self->_emptyTabCache removeObject:v16];
    [(_HDSemaphoreTab *)v16 setSignaled:0];
    [(_HDSemaphoreTab *)v16 setPriority:priority];
    date = [MEMORY[0x277CBEAA8] date];
    [(_HDSemaphoreTab *)v16 setRequestedDate:date];

    [(HDPriorityQueue *)self->_pendingQueue insert:v16];
    os_unfair_lock_unlock(&self->_lock);
    condition = [(_HDSemaphoreTab *)v16 condition];
    [condition lock];

    if (![(_HDSemaphoreTab *)v16 signaled])
    {
      do
      {
        condition2 = [(_HDSemaphoreTab *)v16 condition];
        [condition2 wait];
      }

      while (![(_HDSemaphoreTab *)v16 signaled]);
    }

    condition3 = [(_HDSemaphoreTab *)v16 condition];
    [condition3 unlock];

    os_unfair_lock_lock(&self->_lock);
    ++self->_activeThreadCount;
    [(NSMutableSet *)self->_emptyTabCache addObject:v16];
    if ((self->_options & 1) != 0 && [(HDPriorityQueue *)self->_pendingQueue count]<= 4 && self->_isHighCount)
    {
      self->_isHighCount = 0;
      _HKInitializeLogging();
      v21 = *MEMORY[0x277CCC2A0];
      if (os_signpost_enabled(*MEMORY[0x277CCC2A0]))
      {
        v22 = v21;
        v23 = v22;
        v24 = self->_signpost;
        if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
        {
          v25 = [(NSString *)self->_debugIdentifier cStringUsingEncoding:4];
          v27 = 136446210;
          v28 = v25;
          _os_signpost_emit_with_name_impl(&dword_25156C000, v23, OS_SIGNPOST_INTERVAL_END, v24, "HDDatabase-semaphore-high-count", "Name: %{public}s", &v27, 0xCu);
        }
      }
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_activeThreadCount = activeThreadCount + 1;
    os_unfair_lock_unlock(&self->_lock);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (unint64_t)pendingCount
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HDPriorityQueue *)self->_pendingQueue count];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)waitForPendingCount:(unint64_t)count
{
  while ([(HDPrioritySemaphore *)self pendingCount]< count)
  {
    [MEMORY[0x277CCACC8] sleepForTimeInterval:0.01];
  }
}

@end