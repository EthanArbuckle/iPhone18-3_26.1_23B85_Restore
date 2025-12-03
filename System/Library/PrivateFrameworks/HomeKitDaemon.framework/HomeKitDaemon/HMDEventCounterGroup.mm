@interface HMDEventCounterGroup
- (BOOL)_resetEventCounterForEventName:(id)name;
- (HMDEventCounterContext)context;
- (HMDEventCounterGroup)initWithContext:(id)context serializedEventCounters:(id)counters;
- (HMDEventCounterGroup)initWithContext:(id)context serializedEventCounters:(id)counters uptimeProvider:(id)provider;
- (NSDictionary)eventCounters;
- (double)durationForCounter:(id)counter;
- (id)_getOrCreateEventCounterForEventName:(id)name;
- (unint64_t)fetchEventCounterForEventName:(id)name;
- (unint64_t)maxCounterName:(id *)name;
- (unint64_t)summedEventCounters;
- (void)_incrementEventCounterForEventName:(id)name withValue:(unint64_t)value;
- (void)addObserver:(id)observer forEventName:(id)name;
- (void)addValue:(unint64_t)value toStatisticsName:(id)name;
- (void)forceSave;
- (void)incrementEventCounterForEventName:(id)name withValue:(unint64_t)value;
- (void)iterateCountersUsingBlock:(id)block;
- (void)pauseDurationCounter:(id)counter;
- (void)resetEventCounters;
- (void)resumeDurationCounter:(id)counter;
- (void)updateAllDurationCounters;
- (void)updateDurationCounter:(id)counter;
@end

@implementation HMDEventCounterGroup

- (HMDEventCounterContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (void)forceSave
{
  context = [(HMDEventCounterGroup *)self context];
  [context forceSave];
}

- (void)resetEventCounters
{
  v27 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  allKeys = [(NSMutableDictionary *)self->_mutableEventCounters allKeys];
  v4 = 0;
  v5 = [allKeys countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = *v22;
    do
    {
      v7 = 0;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v4 |= [(HMDEventCounterGroup *)self _resetEventCounterForEventName:*(*(&v21 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [allKeys countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v5);
  }

  v8 = MEMORY[0x277CCABB0];
  uptimeProvider = [(HMDEventCounterGroup *)self uptimeProvider];
  [uptimeProvider uptime];
  v10 = [v8 numberWithDouble:?];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  allKeys2 = [(NSMutableDictionary *)self->_runningDurationCounters allKeys];
  v12 = [allKeys2 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(allKeys2);
        }

        [(NSMutableDictionary *)self->_runningDurationCounters setObject:v10 forKeyedSubscript:*(*(&v17 + 1) + 8 * v14++)];
      }

      while (v12 != v14);
      v12 = [allKeys2 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v12);
  }

  os_unfair_lock_unlock(&self->_lock);
  if (v4)
  {
    context = [(HMDEventCounterGroup *)self context];
    [context counterChanged];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)_resetEventCounterForEventName:(id)name
{
  v25 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_mutableEventCounters objectForKeyedSubscript:nameCopy];
  v6 = v5;
  if (v5 && (v7 = [v5 count], objc_msgSend(v6, "setCount:", 0), v7))
  {
    observers = [v6 observers];
    if (observers)
    {
      WeakRetained = objc_loadWeakRetained(&self->_context);
      workQueue = [WeakRetained workQueue];

      if (workQueue)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __55__HMDEventCounterGroup__resetEventCounterForEventName___block_invoke;
        block[3] = &unk_278685DF8;
        v20 = observers;
        v21 = nameCopy;
        v22 = v7;
        dispatch_async(workQueue, block);
      }

      else
      {
        v13 = objc_autoreleasePoolPush();
        selfCopy = self;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = HMFGetLogIdentifier();
          *buf = 138543362;
          v24 = v16;
          _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Can't call observers; context has been deallocated", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v13);
      }
    }

    else
    {
      [(NSMutableDictionary *)self->_mutableEventCounters setObject:0 forKeyedSubscript:nameCopy];
      if (![(NSMutableDictionary *)self->_mutableEventCounters count])
      {
        mutableEventCounters = self->_mutableEventCounters;
        self->_mutableEventCounters = 0;
      }
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v11;
}

- (unint64_t)maxCounterName:(id *)name
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__27212;
  v15 = __Block_byref_object_dispose__27213;
  v16 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__HMDEventCounterGroup_maxCounterName___block_invoke;
  v6[3] = &unk_278671988;
  v6[4] = &v7;
  v6[5] = &v11;
  [(HMDEventCounterGroup *)self iterateCountersUsingBlock:v6];
  if (name)
  {
    *name = v12[5];
  }

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);

  return v4;
}

void __39__HMDEventCounterGroup_maxCounterName___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v6 = a2;
  if (*(*(*(a1 + 32) + 8) + 24) < a3)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v6 = v7;
    *(*(*(a1 + 32) + 8) + 24) = a3;
  }
}

- (void)iterateCountersUsingBlock:(id)block
{
  blockCopy = block;
  [(HMDEventCounterGroup *)self updateAllDurationCounters];
  os_unfair_lock_lock_with_options();
  mutableEventCounters = self->_mutableEventCounters;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__HMDEventCounterGroup_iterateCountersUsingBlock___block_invoke;
  v7[3] = &unk_278671960;
  v6 = blockCopy;
  v8 = v6;
  [(NSMutableDictionary *)mutableEventCounters enumerateKeysAndObjectsUsingBlock:v7];

  os_unfair_lock_unlock(&self->_lock);
}

void __50__HMDEventCounterGroup_iterateCountersUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  (*(v4 + 16))(v4, v5, [a3 count]);
}

- (unint64_t)summedEventCounters
{
  v15 = *MEMORY[0x277D85DE8];
  [(HMDEventCounterGroup *)self updateAllDurationCounters];
  os_unfair_lock_lock_with_options();
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [(NSMutableDictionary *)self->_mutableEventCounters allValues];
  v4 = 0;
  v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        v4 += [*(*(&v10 + 1) + 8 * v7++) count];
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  os_unfair_lock_unlock(&self->_lock);
  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

- (NSDictionary)eventCounters
{
  [(HMDEventCounterGroup *)self updateAllDurationCounters];
  os_unfair_lock_lock_with_options();
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  mutableEventCounters = self->_mutableEventCounters;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__HMDEventCounterGroup_eventCounters__block_invoke;
  v8[3] = &unk_278671938;
  v5 = dictionary;
  v9 = v5;
  [(NSMutableDictionary *)mutableEventCounters enumerateKeysAndObjectsUsingBlock:v8];
  if ([v5 count])
  {
    v6 = [v5 copy];
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

void __37__HMDEventCounterGroup_eventCounters__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ([v5 count])
  {
    v6 = *(a1 + 32);
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
    [v6 setValue:v7 forKey:v8];
  }
}

- (double)durationForCounter:(id)counter
{
  counterCopy = counter;
  [(HMDEventCounterGroup *)self updateDurationCounter:counterCopy];
  v5 = [(HMDEventCounterGroup *)self fetchEventCounterForEventName:counterCopy];

  return v5;
}

- (void)updateAllDurationCounters
{
  v19 = *MEMORY[0x277D85DE8];
  uptimeProvider = [(HMDEventCounterGroup *)self uptimeProvider];
  [uptimeProvider uptime];
  v5 = v4;

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
  os_unfair_lock_lock_with_options();
  v7 = [(NSMutableDictionary *)self->_runningDurationCounters copy];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  allKeys = [(NSMutableDictionary *)self->_runningDurationCounters allKeys];
  v9 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        [(NSMutableDictionary *)self->_runningDurationCounters setObject:v6 forKeyedSubscript:*(*(&v14 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  os_unfair_lock_unlock(&self->_lock);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __49__HMDEventCounterGroup_updateAllDurationCounters__block_invoke;
  v13[3] = &unk_278671910;
  v13[4] = self;
  *&v13[5] = v5;
  [v7 enumerateKeysAndObjectsUsingBlock:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __49__HMDEventCounterGroup_updateAllDurationCounters__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = a2;
  [a3 doubleValue];
  [v4 addDuration:v7 toCounter:v5 - v6];
}

- (void)updateDurationCounter:(id)counter
{
  counterCopy = counter;
  os_unfair_lock_lock_with_options();
  v4 = [(NSMutableDictionary *)self->_runningDurationCounters objectForKeyedSubscript:counterCopy];
  v5 = v4;
  if (v4)
  {
    [v4 doubleValue];
    v7 = v6;
    uptimeProvider = [(HMDEventCounterGroup *)self uptimeProvider];
    [uptimeProvider uptime];
    v10 = v9;

    v11 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
    [(NSMutableDictionary *)self->_runningDurationCounters setObject:v11 forKeyedSubscript:counterCopy];

    os_unfair_lock_unlock(&self->_lock);
    [(HMDEventCounterGroup *)self addDuration:counterCopy toCounter:v10 - v7];
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (unint64_t)fetchEventCounterForEventName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_mutableEventCounters objectForKeyedSubscript:nameCopy];
  v6 = [v5 count];

  os_unfair_lock_unlock(&self->_lock);
  return v6;
}

- (void)addValue:(unint64_t)value toStatisticsName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  v7 = [(HMDEventCounterGroup *)self _getOrCreateEventCounterForEventName:nameCopy];
  if ([v7 count] < value)
  {
    v8 = [v7 count];
    [v7 setCount:value];
    observers = [v7 observers];
    if (observers)
    {
      WeakRetained = objc_loadWeakRetained(&self->_context);
      workQueue = [WeakRetained workQueue];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __50__HMDEventCounterGroup_addValue_toStatisticsName___block_invoke;
      v13[3] = &unk_27867D900;
      v14 = observers;
      v15 = nameCopy;
      v16 = v8;
      valueCopy = value;
      dispatch_async(workQueue, v13);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  context = [(HMDEventCounterGroup *)self context];
  [context counterChanged];
}

- (void)pauseDurationCounter:(id)counter
{
  counterCopy = counter;
  [(HMDEventCounterGroup *)self updateDurationCounter:counterCopy];
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->_runningDurationCounters setObject:0 forKeyedSubscript:counterCopy];
  if (![(NSMutableDictionary *)self->_runningDurationCounters count])
  {
    runningDurationCounters = self->_runningDurationCounters;
    self->_runningDurationCounters = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)resumeDurationCounter:(id)counter
{
  counterCopy = counter;
  os_unfair_lock_lock_with_options();
  v4 = [(NSMutableDictionary *)self->_runningDurationCounters objectForKeyedSubscript:counterCopy];

  if (!v4)
  {
    if (!self->_runningDurationCounters)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      runningDurationCounters = self->_runningDurationCounters;
      self->_runningDurationCounters = dictionary;
    }

    v7 = MEMORY[0x277CCABB0];
    uptimeProvider = [(HMDEventCounterGroup *)self uptimeProvider];
    [uptimeProvider uptime];
    v9 = [v7 numberWithDouble:?];
    [(NSMutableDictionary *)self->_runningDurationCounters setObject:v9 forKeyedSubscript:counterCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_incrementEventCounterForEventName:(id)name withValue:(unint64_t)value
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  v7 = [(HMDEventCounterGroup *)self _getOrCreateEventCounterForEventName:nameCopy];
  [v7 setCount:{objc_msgSend(v7, "count") + value}];
  observers = [v7 observers];
  if (observers)
  {
    v9 = [v7 count];
    v10 = [v7 count];
    WeakRetained = objc_loadWeakRetained(&self->_context);
    workQueue = [WeakRetained workQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __69__HMDEventCounterGroup__incrementEventCounterForEventName_withValue___block_invoke;
    v13[3] = &unk_27867D900;
    v14 = observers;
    v15 = nameCopy;
    v16 = v9 - value;
    v17 = v10;
    dispatch_async(workQueue, v13);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)incrementEventCounterForEventName:(id)name withValue:(unint64_t)value
{
  [(HMDEventCounterGroup *)self _incrementEventCounterForEventName:name withValue:value];
  context = [(HMDEventCounterGroup *)self context];
  [context counterChanged];
}

- (id)_getOrCreateEventCounterForEventName:(id)name
{
  nameCopy = name;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_mutableEventCounters objectForKeyedSubscript:nameCopy];
  if (!v5)
  {
    v5 = objc_alloc_init(HMDEventCounter);
    mutableEventCounters = self->_mutableEventCounters;
    if (!mutableEventCounters)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v8 = self->_mutableEventCounters;
      self->_mutableEventCounters = dictionary;

      mutableEventCounters = self->_mutableEventCounters;
    }

    [(NSMutableDictionary *)mutableEventCounters setObject:v5 forKeyedSubscript:nameCopy];
  }

  return v5;
}

- (void)addObserver:(id)observer forEventName:(id)name
{
  observerCopy = observer;
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  v7 = [(HMDEventCounterGroup *)self _getOrCreateEventCounterForEventName:nameCopy];
  v8 = objc_alloc(MEMORY[0x277CBEB18]);
  observers = [v7 observers];
  v10 = [v8 initWithCapacity:{objc_msgSend(observers, "count") + 1}];

  observers2 = [v7 observers];

  if (observers2)
  {
    observers3 = [v7 observers];
    [v10 addObjectsFromArray:observers3];
  }

  [v10 addObject:observerCopy];
  v13 = [v10 copy];
  [v7 setObservers:v13];

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDEventCounterGroup)initWithContext:(id)context serializedEventCounters:(id)counters uptimeProvider:(id)provider
{
  contextCopy = context;
  countersCopy = counters;
  providerCopy = provider;
  v19.receiver = self;
  v19.super_class = HMDEventCounterGroup;
  v11 = [(HMDEventCounterGroup *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_context, contextCopy);
    objc_storeStrong(&v12->_uptimeProvider, provider);
    if ([countersCopy count])
    {
      v13 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(countersCopy, "count")}];
      mutableEventCounters = v12->_mutableEventCounters;
      v12->_mutableEventCounters = v13;

      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __79__HMDEventCounterGroup_initWithContext_serializedEventCounters_uptimeProvider___block_invoke;
      v17[3] = &unk_2786845B8;
      v18 = v12;
      [countersCopy enumerateKeysAndObjectsUsingBlock:v17];
      if (![(NSMutableDictionary *)v12->_mutableEventCounters count])
      {
        v15 = v12->_mutableEventCounters;
        v12->_mutableEventCounters = 0;
      }
    }
  }

  return v12;
}

void __79__HMDEventCounterGroup_initWithContext_serializedEventCounters_uptimeProvider___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([v5 unsignedIntegerValue])
  {
    v6 = -[HMDEventCounter initWithCount:]([HMDEventCounter alloc], "initWithCount:", [v5 unsignedIntegerValue]);
    [*(*(a1 + 32) + 16) setObject:v6 forKeyedSubscript:v7];
  }
}

- (HMDEventCounterGroup)initWithContext:(id)context serializedEventCounters:(id)counters
{
  v6 = MEMORY[0x277D17E00];
  countersCopy = counters;
  contextCopy = context;
  sharedInstance = [v6 sharedInstance];
  v10 = [(HMDEventCounterGroup *)self initWithContext:contextCopy serializedEventCounters:countersCopy uptimeProvider:sharedInstance];

  return v10;
}

@end