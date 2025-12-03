@interface HMFMemoryMonitor
+ (HMFMemoryMonitor)memoryMonitor;
- (HMFMemoryMonitor)init;
- (void)addObserver:(id)observer debounceInterval:(double)interval events:(id)events;
- (void)dealloc;
- (void)removeObserver:(id)observer;
- (void)start;
- (void)stop;
@end

@implementation HMFMemoryMonitor

+ (HMFMemoryMonitor)memoryMonitor
{
  if (_MergedGlobals_1 != -1)
  {
    dispatch_once(&_MergedGlobals_1, &__block_literal_global_17);
  }

  v3 = qword_280AFC4D0;

  return v3;
}

uint64_t __33__HMFMemoryMonitor_memoryMonitor__block_invoke()
{
  v0 = objc_alloc_init(HMFMemoryMonitor);
  v1 = qword_280AFC4D0;
  qword_280AFC4D0 = v0;

  v2 = qword_280AFC4D0;

  return [v2 start];
}

- (HMFMemoryMonitor)init
{
  v14.receiver = self;
  v14.super_class = HMFMemoryMonitor;
  v2 = [(HMFMemoryMonitor *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v4 = HMFDispatchQueueName(v2, 0);
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_UTILITY, 0);
    v7 = dispatch_queue_create(v4, v6);
    queue = v3->_queue;
    v3->_queue = v7;

    v9 = dispatch_source_create(MEMORY[0x277D85D18], 0, 0x37uLL, v3->_queue);
    memoryPressureSource = v3->_memoryPressureSource;
    v3->_memoryPressureSource = v9;

    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    memoryObservancesByObserver = v3->_memoryObservancesByObserver;
    v3->_memoryObservancesByObserver = weakToStrongObjectsMapTable;
  }

  return v3;
}

- (void)dealloc
{
  if (!self->_monitoring)
  {
    dispatch_resume(self->_memoryPressureSource);
  }

  v3.receiver = self;
  v3.super_class = HMFMemoryMonitor;
  [(HMFMemoryMonitor *)&v3 dealloc];
}

- (void)addObserver:(id)observer debounceInterval:(double)interval events:(id)events
{
  observerCopy = observer;
  eventsCopy = events;
  os_unfair_lock_lock_with_options();
  v9 = [[HMFMemoryObservance alloc] initWithDebounceInterval:eventsCopy events:interval];
  memoryObservancesByObserver = [(HMFMemoryMonitor *)self memoryObservancesByObserver];
  [memoryObservancesByObserver setObject:v9 forKey:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock_with_options();
  memoryObservancesByObserver = [(HMFMemoryMonitor *)self memoryObservancesByObserver];
  [memoryObservancesByObserver removeObjectForKey:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)start
{
  os_unfair_lock_lock_with_options();
  if (![(HMFMemoryMonitor *)self isMonitoring])
  {
    [(HMFMemoryMonitor *)self setMonitoring:1];
    objc_initWeak(&location, self);
    memoryPressureSource = [(HMFMemoryMonitor *)self memoryPressureSource];
    v5 = MEMORY[0x277D85DD0];
    v6 = 3221225472;
    v7 = __25__HMFMemoryMonitor_start__block_invoke;
    v8 = &unk_2786E6CA8;
    objc_copyWeak(&v9, &location);
    dispatch_source_set_event_handler(memoryPressureSource, &v5);

    v4 = [(HMFMemoryMonitor *)self memoryPressureSource:v5];
    dispatch_resume(v4);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  os_unfair_lock_unlock(&self->_lock);
}

void __25__HMFMemoryMonitor_start__block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v35 = WeakRetained;
    v2 = [WeakRetained memoryPressureSource];
    data = dispatch_source_get_data(v2);

    if (data)
    {
      v8 = 1;
    }

    else if ((data & 2) != 0)
    {
      v8 = 2;
    }

    else if ((data & 4) != 0)
    {
      v8 = 3;
    }

    else if ((data & 0x10) != 0)
    {
      v8 = 4;
    }

    else
    {
      if ((data & 0x20) == 0)
      {
        v4 = objc_autoreleasePoolPush();
        v5 = v35;
        v6 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = HMFGetLogIdentifier(v5);
          *buf = 138543618;
          v49 = v7;
          v50 = 2048;
          v51 = data;
          _os_log_impl(&dword_22ADEC000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Ignoring unknown memory pressure source event: %lu", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v4);
LABEL_35:
        WeakRetained = v35;
        goto LABEL_36;
      }

      v8 = 5;
    }

    v38 = v8;
    v9 = objc_autoreleasePoolPush();
    v10 = v35;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier(v10);
      v13 = HMFStringFromMemoryEvent(v38);
      *buf = 138543618;
      v49 = v12;
      v50 = 2112;
      v51 = v13;
      _os_log_impl(&dword_22ADEC000, v11, OS_LOG_TYPE_INFO, "%{public}@Received memory event: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v36 = [MEMORY[0x277CBEB18] array];
    os_unfair_lock_lock_with_options();
    v14 = [MEMORY[0x277CBEAA8] now];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v15 = [(os_unfair_lock_s *)v10 memoryObservancesByObserver];
    v16 = [v15 countByEnumeratingWithState:&v43 objects:buf count:16];
    if (v16)
    {
      v17 = *v44;
      obj = v15;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v44 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v43 + 1) + 8 * i);
          v20 = [(os_unfair_lock_s *)v10 memoryObservancesByObserver];
          v21 = [v20 objectForKey:v19];

          v22 = [v21 lastUpdateDate];
          [v14 timeIntervalSinceDate:v22];
          v24 = v23;
          [v21 debounceInterval];
          v26 = v24 < v25;

          if (!v26)
          {
            v27 = [v21 events];
            v28 = [MEMORY[0x277CCABB0] numberWithInteger:v38];
            v29 = [v27 containsObject:v28];

            if (v29)
            {
              [v21 setLastUpdateDate:v14];
              [v36 addObject:v19];
            }
          }
        }

        v15 = obj;
        v16 = [obj countByEnumeratingWithState:&v43 objects:buf count:16];
      }

      while (v16);
    }

    os_unfair_lock_unlock(v10 + 2);
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v30 = v36;
    v31 = [v30 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v31)
    {
      v32 = *v40;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v40 != v32)
          {
            objc_enumerationMutation(v30);
          }

          [*(*(&v39 + 1) + 8 * j) memoryMonitor:v10 didReceiveMemoryEvent:v38];
        }

        v31 = [v30 countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v31);
    }

    goto LABEL_35;
  }

LABEL_36:
  v34 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  os_unfair_lock_lock_with_options();
  if ([(HMFMemoryMonitor *)self isMonitoring])
  {
    [(HMFMemoryMonitor *)self setMonitoring:0];
    memoryPressureSource = [(HMFMemoryMonitor *)self memoryPressureSource];
    dispatch_suspend(memoryPressureSource);
  }

  os_unfair_lock_unlock(&self->_lock);
}

@end