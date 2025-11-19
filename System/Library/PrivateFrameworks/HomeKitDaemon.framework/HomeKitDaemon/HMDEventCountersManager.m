@interface HMDEventCountersManager
+ (NSSet)allowedSpecifierClasses;
+ (double)defaultSaveInterval;
- (HMDEventCountersManager)init;
- (HMDEventCountersManager)initWithDateProvider:(id)a3 startupContainerName:(id)a4 uptimeProvider:(id)a5;
- (HMDEventCountersManager)initWithDelegate:(id)a3;
- (HMDEventCountersManager)initWithDelegate:(id)a3 saveInterval:(double)a4 uptimeProvider:(id)a5;
- (HMDEventCountersManager)initWithStorage:(id)a3 saveInterval:(double)a4 uptimeProvider:(id)a5;
- (id)_fetchAllEventCounters;
- (id)counterGroupForName:(id)a3;
- (id)counterGroupForSpecifier:(id)a3;
- (id)counterGroupsForPredicate:(id)a3;
- (id)fetchAllEventCounters;
- (id)fetchEventCountersForRequestGroup:(id)a3;
- (unint64_t)fetchAggregatedEventCountersForRequestGroup:(id)a3;
- (unint64_t)fetchEventCounterForEventName:(id)a3 requestGroup:(id)a4;
- (void)_removeCounterGroupForSpecifier:(id)a3;
- (void)_save;
- (void)addObserver:(id)a3 forEventName:(id)a4 requestGroup:(id)a5;
- (void)counterChanged;
- (void)forceSave;
- (void)incrementEventCounterForEventName:(id)a3 requestGroup:(id)a4;
- (void)incrementEventCounterForEventName:(id)a3 requestGroup:(id)a4 withValue:(unint64_t)a5;
- (void)removeCounterGroupForName:(id)a3;
- (void)removeCounterGroupForSpecifier:(id)a3;
- (void)removeCounterGroupsBasedOnPredicate:(id)a3;
- (void)resetAllEventCounters;
- (void)resetEventCountersForRequestGroup:(id)a3;
@end

@implementation HMDEventCountersManager

- (void)counterChanged
{
  os_unfair_lock_lock_with_options();
  if (!self->_pendingSave)
  {
    [(HMMUptimeProvider *)self->_uptimeProvider uptime];
    if (v3 - self->_lastSaveTime >= self->_saveInterval)
    {
      [(HMDEventCountersManager *)self _save];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDEventCountersManager)initWithDateProvider:(id)a3 startupContainerName:(id)a4 uptimeProvider:(id)a5
{
  if (a4)
  {
    v6 = sub_22A4DD5EC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  swift_getObjectType();
  sub_22A4DC00C();
  v9 = a3;
  swift_unknownObjectRetain_n();
  v10 = v9;
  v11 = sub_22A4DBF3C();
  [objc_opt_self() defaultSaveInterval];
  v13 = v12;
  v14 = [objc_opt_self() sharedInstance];
  v15 = sub_2297A0F64(v11, v10, v13, v6, v8, v14);
  swift_unknownObjectRelease();

  swift_deallocPartialClassInstance();
  return v15;
}

- (void)_save
{
  os_unfair_lock_assert_owner(&self->_lock);
  self->_pendingSave = 1;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__HMDEventCountersManager__save__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __32__HMDEventCountersManager__save__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 saveForManager:*(a1 + 32)];

  v3 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  [*(*(a1 + 32) + 56) uptime];
  *(*(a1 + 32) + 24) = v4;
  *(*(a1 + 32) + 32) = 0;

  os_unfair_lock_unlock(v3 + 9);
}

- (void)forceSave
{
  os_unfair_lock_lock_with_options();
  if (!self->_pendingSave)
  {
    [(HMDEventCountersManager *)self _save];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_fetchAllEventCounters
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = [MEMORY[0x277CBEB38] dictionary];
  counterGroups = self->_counterGroups;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__HMDEventCountersManager__fetchAllEventCounters__block_invoke;
  v8[3] = &unk_278684EA8;
  v9 = v3;
  v5 = v3;
  [(NSMutableDictionary *)counterGroups enumerateKeysAndObjectsUsingBlock:v8];
  v6 = [v5 copy];

  return v6;
}

void __49__HMDEventCountersManager__fetchAllEventCounters__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v5 eventCounters];
  if ([v6 count])
  {
    v7 = [v5 eventCounters];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
  }
}

- (void)resetAllEventCounters
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  self->_pendingSave = 1;
  v3 = [(NSMutableDictionary *)self->_counterGroups allValues];
  os_unfair_lock_unlock(&self->_lock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v7++) resetEventCounters];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  os_unfair_lock_lock_with_options();
  [(HMDEventCountersManager *)self _save];
  os_unfair_lock_unlock(&self->_lock);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)resetEventCountersForRequestGroup:(id)a3
{
  v3 = [(HMDEventCountersManager *)self counterGroupForName:a3];
  [v3 resetEventCounters];
}

- (id)fetchAllEventCounters
{
  os_unfair_lock_lock_with_options();
  v3 = [(HMDEventCountersManager *)self _fetchAllEventCounters];
  if ([v3 count])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (unint64_t)fetchAggregatedEventCountersForRequestGroup:(id)a3
{
  v3 = [(HMDEventCountersManager *)self counterGroupForName:a3];
  v4 = [v3 summedEventCounters];

  return v4;
}

- (id)fetchEventCountersForRequestGroup:(id)a3
{
  v3 = [(HMDEventCountersManager *)self counterGroupForName:a3];
  v4 = [v3 eventCounters];

  return v4;
}

- (unint64_t)fetchEventCounterForEventName:(id)a3 requestGroup:(id)a4
{
  v6 = a3;
  v7 = [(HMDEventCountersManager *)self counterGroupForName:a4];
  v8 = [v7 fetchEventCounterForEventName:v6];

  return v8;
}

- (void)incrementEventCounterForEventName:(id)a3 requestGroup:(id)a4
{
  v6 = a3;
  v7 = [(HMDEventCountersManager *)self counterGroupForName:a4];
  [v7 incrementEventCounterForEventName:v6];
}

- (void)incrementEventCounterForEventName:(id)a3 requestGroup:(id)a4 withValue:(unint64_t)a5
{
  v8 = a3;
  v9 = [(HMDEventCountersManager *)self counterGroupForName:a4];
  [v9 incrementEventCounterForEventName:v8 withValue:a5];
}

- (void)addObserver:(id)a3 forEventName:(id)a4 requestGroup:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(HMDEventCountersManager *)self counterGroupForName:a5];
  [v10 addObserver:v9 forEventName:v8];
}

- (void)_removeCounterGroupForSpecifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  [(NSMutableDictionary *)self->_counterGroups removeObjectForKey:v4];
}

- (void)removeCounterGroupsBasedOnPredicate:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->_counterGroups allKeys];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v5 = v12 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (v4[2](v4, v9))
        {
          [(HMDEventCountersManager *)self _removeCounterGroupForSpecifier:v9, v11];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeCounterGroupForSpecifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  [(HMDEventCountersManager *)self _removeCounterGroupForSpecifier:v4];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeCounterGroupForName:(id)a3
{
  v4 = [HMDEventCounterGroupNameSpecifier specifierWithGroupName:a3];
  [(HMDEventCountersManager *)self removeCounterGroupForSpecifier:v4];
}

- (id)counterGroupsForPredicate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [MEMORY[0x277CBEB38] dictionary];
  counterGroups = self->_counterGroups;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __53__HMDEventCountersManager_counterGroupsForPredicate___block_invoke;
  v14 = &unk_278684E80;
  v7 = v4;
  v16 = v7;
  v8 = v5;
  v15 = v8;
  [(NSMutableDictionary *)counterGroups enumerateKeysAndObjectsUsingBlock:&v11];
  v9 = [v8 copy];

  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

void __53__HMDEventCountersManager_counterGroupsForPredicate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) setObject:v5 forKey:v6];
  }
}

- (id)counterGroupForSpecifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_counterGroups objectForKeyedSubscript:v4];
  if (!v5)
  {
    v6 = +[HMDEventCountersManager allowedSpecifierClasses];
    v7 = [v6 containsObject:objc_opt_class()];

    if ((v7 & 1) == 0)
    {
      v10 = MEMORY[0x277CBEAD8];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Specifier's class must be registered in the allowedSpecifierClasses in HMDEventCountersManager: %@", objc_opt_class()];
      v12 = [v10 exceptionWithName:*MEMORY[0x277CBE660] reason:v11 userInfo:0];
      v13 = v12;

      objc_exception_throw(v12);
    }

    v8 = [(HMDEventCountersManager *)self delegate];
    v5 = [v8 groupForSpecifier:v4];

    [(NSMutableDictionary *)self->_counterGroups setObject:v5 forKeyedSubscript:v4];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)counterGroupForName:(id)a3
{
  v4 = [HMDEventCounterGroupNameSpecifier specifierWithGroupName:a3];
  v5 = [(HMDEventCountersManager *)self counterGroupForSpecifier:v4];

  return v5;
}

- (HMDEventCountersManager)initWithDelegate:(id)a3 saveInterval:(double)a4 uptimeProvider:(id)a5
{
  v9 = a3;
  v10 = a5;
  v23.receiver = self;
  v23.super_class = HMDEventCountersManager;
  v11 = [(HMDEventCountersManager *)&v23 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_delegate, a3);
    v12->_saveInterval = a4;
    objc_storeStrong(&v12->_uptimeProvider, a5);
    [v10 uptime];
    v12->_lastSaveTime = v13;
    v12->_pendingSave = 0;
    v14 = HMDispatchQueueNameString();
    v15 = [v14 UTF8String];
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_attr_make_with_qos_class(v16, QOS_CLASS_BACKGROUND, 0);
    v18 = dispatch_queue_create(v15, v17);
    workQueue = v12->_workQueue;
    v12->_workQueue = v18;

    [v9 setContext:v12];
    v20 = [v9 initialCounterGroups];
    v21 = v20;
    if (!v20)
    {
      v21 = [MEMORY[0x277CBEB38] dictionary];
    }

    objc_storeStrong(&v12->_counterGroups, v21);
    if (!v20)
    {
    }
  }

  return v12;
}

- (HMDEventCountersManager)initWithDelegate:(id)a3
{
  v4 = a3;
  +[HMDEventCountersManager defaultSaveInterval];
  v6 = v5;
  v7 = [MEMORY[0x277D17E00] sharedInstance];
  v8 = [(HMDEventCountersManager *)self initWithDelegate:v4 saveInterval:v7 uptimeProvider:v6];

  return v8;
}

- (HMDEventCountersManager)initWithStorage:(id)a3 saveInterval:(double)a4 uptimeProvider:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[HMDEventCountersManagerLegacyDelegate alloc] initWithStorage:v9 uptimeProvider:v8];

  v11 = [(HMDEventCountersManager *)self initWithDelegate:v10 saveInterval:v8 uptimeProvider:a4];
  return v11;
}

- (HMDEventCountersManager)init
{
  v3 = objc_alloc_init(HMDPersistentStore);
  v4 = [[HMDEventCountersPersistentStore alloc] initWithPersistentStore:v3];
  +[HMDEventCountersManager defaultSaveInterval];
  v6 = v5;
  v7 = [MEMORY[0x277D17E00] sharedInstance];
  v8 = [(HMDEventCountersManager *)self initWithStorage:v4 saveInterval:v7 uptimeProvider:v6];

  if (v8)
  {
    objc_storeStrong(&v8->_persistentStore, v3);
  }

  return v8;
}

+ (NSSet)allowedSpecifierClasses
{
  if (allowedSpecifierClasses__hmf_once_t3 != -1)
  {
    dispatch_once(&allowedSpecifierClasses__hmf_once_t3, &__block_literal_global_248247);
  }

  v3 = allowedSpecifierClasses__hmf_once_v4;

  return v3;
}

void __50__HMDEventCountersManager_allowedSpecifierClasses__block_invoke()
{
  v5[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:4];
  v2 = [v0 setWithArray:v1];
  v3 = allowedSpecifierClasses__hmf_once_v4;
  allowedSpecifierClasses__hmf_once_v4 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

+ (double)defaultSaveInterval
{
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"counterArchivePeriod"];
  v4 = [v3 numberValue];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

@end