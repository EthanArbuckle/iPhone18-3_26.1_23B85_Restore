@interface HMDEventCountersManager
+ (NSSet)allowedSpecifierClasses;
+ (double)defaultSaveInterval;
- (HMDEventCountersManager)init;
- (HMDEventCountersManager)initWithDateProvider:(id)provider startupContainerName:(id)name uptimeProvider:(id)uptimeProvider;
- (HMDEventCountersManager)initWithDelegate:(id)delegate;
- (HMDEventCountersManager)initWithDelegate:(id)delegate saveInterval:(double)interval uptimeProvider:(id)provider;
- (HMDEventCountersManager)initWithStorage:(id)storage saveInterval:(double)interval uptimeProvider:(id)provider;
- (id)_fetchAllEventCounters;
- (id)counterGroupForName:(id)name;
- (id)counterGroupForSpecifier:(id)specifier;
- (id)counterGroupsForPredicate:(id)predicate;
- (id)fetchAllEventCounters;
- (id)fetchEventCountersForRequestGroup:(id)group;
- (unint64_t)fetchAggregatedEventCountersForRequestGroup:(id)group;
- (unint64_t)fetchEventCounterForEventName:(id)name requestGroup:(id)group;
- (void)_removeCounterGroupForSpecifier:(id)specifier;
- (void)_save;
- (void)addObserver:(id)observer forEventName:(id)name requestGroup:(id)group;
- (void)counterChanged;
- (void)forceSave;
- (void)incrementEventCounterForEventName:(id)name requestGroup:(id)group;
- (void)incrementEventCounterForEventName:(id)name requestGroup:(id)group withValue:(unint64_t)value;
- (void)removeCounterGroupForName:(id)name;
- (void)removeCounterGroupForSpecifier:(id)specifier;
- (void)removeCounterGroupsBasedOnPredicate:(id)predicate;
- (void)resetAllEventCounters;
- (void)resetEventCountersForRequestGroup:(id)group;
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

- (HMDEventCountersManager)initWithDateProvider:(id)provider startupContainerName:(id)name uptimeProvider:(id)uptimeProvider
{
  if (name)
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
  providerCopy = provider;
  swift_unknownObjectRetain_n();
  v10 = providerCopy;
  v11 = sub_22A4DBF3C();
  [objc_opt_self() defaultSaveInterval];
  v13 = v12;
  sharedInstance = [objc_opt_self() sharedInstance];
  v15 = sub_2297A0F64(v11, v10, v13, v6, v8, sharedInstance);
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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  counterGroups = self->_counterGroups;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__HMDEventCountersManager__fetchAllEventCounters__block_invoke;
  v8[3] = &unk_278684EA8;
  v9 = dictionary;
  v5 = dictionary;
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
  allValues = [(NSMutableDictionary *)self->_counterGroups allValues];
  os_unfair_lock_unlock(&self->_lock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = allValues;
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

- (void)resetEventCountersForRequestGroup:(id)group
{
  v3 = [(HMDEventCountersManager *)self counterGroupForName:group];
  [v3 resetEventCounters];
}

- (id)fetchAllEventCounters
{
  os_unfair_lock_lock_with_options();
  _fetchAllEventCounters = [(HMDEventCountersManager *)self _fetchAllEventCounters];
  if ([_fetchAllEventCounters count])
  {
    v4 = _fetchAllEventCounters;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (unint64_t)fetchAggregatedEventCountersForRequestGroup:(id)group
{
  v3 = [(HMDEventCountersManager *)self counterGroupForName:group];
  summedEventCounters = [v3 summedEventCounters];

  return summedEventCounters;
}

- (id)fetchEventCountersForRequestGroup:(id)group
{
  v3 = [(HMDEventCountersManager *)self counterGroupForName:group];
  eventCounters = [v3 eventCounters];

  return eventCounters;
}

- (unint64_t)fetchEventCounterForEventName:(id)name requestGroup:(id)group
{
  nameCopy = name;
  v7 = [(HMDEventCountersManager *)self counterGroupForName:group];
  v8 = [v7 fetchEventCounterForEventName:nameCopy];

  return v8;
}

- (void)incrementEventCounterForEventName:(id)name requestGroup:(id)group
{
  nameCopy = name;
  v7 = [(HMDEventCountersManager *)self counterGroupForName:group];
  [v7 incrementEventCounterForEventName:nameCopy];
}

- (void)incrementEventCounterForEventName:(id)name requestGroup:(id)group withValue:(unint64_t)value
{
  nameCopy = name;
  v9 = [(HMDEventCountersManager *)self counterGroupForName:group];
  [v9 incrementEventCounterForEventName:nameCopy withValue:value];
}

- (void)addObserver:(id)observer forEventName:(id)name requestGroup:(id)group
{
  nameCopy = name;
  observerCopy = observer;
  v10 = [(HMDEventCountersManager *)self counterGroupForName:group];
  [v10 addObserver:observerCopy forEventName:nameCopy];
}

- (void)_removeCounterGroupForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  os_unfair_lock_assert_owner(&self->_lock);
  [(NSMutableDictionary *)self->_counterGroups removeObjectForKey:specifierCopy];
}

- (void)removeCounterGroupsBasedOnPredicate:(id)predicate
{
  v16 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
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
        if (predicateCopy[2](predicateCopy, v9))
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

- (void)removeCounterGroupForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  os_unfair_lock_lock_with_options();
  [(HMDEventCountersManager *)self _removeCounterGroupForSpecifier:specifierCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeCounterGroupForName:(id)name
{
  v4 = [HMDEventCounterGroupNameSpecifier specifierWithGroupName:name];
  [(HMDEventCountersManager *)self removeCounterGroupForSpecifier:v4];
}

- (id)counterGroupsForPredicate:(id)predicate
{
  predicateCopy = predicate;
  os_unfair_lock_lock_with_options();
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  counterGroups = self->_counterGroups;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __53__HMDEventCountersManager_counterGroupsForPredicate___block_invoke;
  v14 = &unk_278684E80;
  v7 = predicateCopy;
  v16 = v7;
  v8 = dictionary;
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

- (id)counterGroupForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_counterGroups objectForKeyedSubscript:specifierCopy];
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

    delegate = [(HMDEventCountersManager *)self delegate];
    v5 = [delegate groupForSpecifier:specifierCopy];

    [(NSMutableDictionary *)self->_counterGroups setObject:v5 forKeyedSubscript:specifierCopy];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)counterGroupForName:(id)name
{
  v4 = [HMDEventCounterGroupNameSpecifier specifierWithGroupName:name];
  v5 = [(HMDEventCountersManager *)self counterGroupForSpecifier:v4];

  return v5;
}

- (HMDEventCountersManager)initWithDelegate:(id)delegate saveInterval:(double)interval uptimeProvider:(id)provider
{
  delegateCopy = delegate;
  providerCopy = provider;
  v23.receiver = self;
  v23.super_class = HMDEventCountersManager;
  v11 = [(HMDEventCountersManager *)&v23 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_delegate, delegate);
    v12->_saveInterval = interval;
    objc_storeStrong(&v12->_uptimeProvider, provider);
    [providerCopy uptime];
    v12->_lastSaveTime = v13;
    v12->_pendingSave = 0;
    v14 = HMDispatchQueueNameString();
    uTF8String = [v14 UTF8String];
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_attr_make_with_qos_class(v16, QOS_CLASS_BACKGROUND, 0);
    v18 = dispatch_queue_create(uTF8String, v17);
    workQueue = v12->_workQueue;
    v12->_workQueue = v18;

    [delegateCopy setContext:v12];
    initialCounterGroups = [delegateCopy initialCounterGroups];
    dictionary = initialCounterGroups;
    if (!initialCounterGroups)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
    }

    objc_storeStrong(&v12->_counterGroups, dictionary);
    if (!initialCounterGroups)
    {
    }
  }

  return v12;
}

- (HMDEventCountersManager)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  +[HMDEventCountersManager defaultSaveInterval];
  v6 = v5;
  mEMORY[0x277D17E00] = [MEMORY[0x277D17E00] sharedInstance];
  v8 = [(HMDEventCountersManager *)self initWithDelegate:delegateCopy saveInterval:mEMORY[0x277D17E00] uptimeProvider:v6];

  return v8;
}

- (HMDEventCountersManager)initWithStorage:(id)storage saveInterval:(double)interval uptimeProvider:(id)provider
{
  providerCopy = provider;
  storageCopy = storage;
  v10 = [[HMDEventCountersManagerLegacyDelegate alloc] initWithStorage:storageCopy uptimeProvider:providerCopy];

  v11 = [(HMDEventCountersManager *)self initWithDelegate:v10 saveInterval:providerCopy uptimeProvider:interval];
  return v11;
}

- (HMDEventCountersManager)init
{
  v3 = objc_alloc_init(HMDPersistentStore);
  v4 = [[HMDEventCountersPersistentStore alloc] initWithPersistentStore:v3];
  +[HMDEventCountersManager defaultSaveInterval];
  v6 = v5;
  mEMORY[0x277D17E00] = [MEMORY[0x277D17E00] sharedInstance];
  v8 = [(HMDEventCountersManager *)self initWithStorage:v4 saveInterval:mEMORY[0x277D17E00] uptimeProvider:v6];

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
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"counterArchivePeriod"];
  numberValue = [v3 numberValue];
  [numberValue doubleValue];
  v6 = v5;

  return v6;
}

@end