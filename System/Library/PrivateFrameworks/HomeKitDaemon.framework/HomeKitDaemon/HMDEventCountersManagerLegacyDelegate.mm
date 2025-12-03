@interface HMDEventCountersManagerLegacyDelegate
- (HMDEventCounterContext)context;
- (HMDEventCountersManagerLegacyDelegate)initWithStorage:(id)storage uptimeProvider:(id)provider;
- (id)groupForSpecifier:(id)specifier;
- (id)initialCounterGroups;
- (void)saveForManager:(id)manager;
@end

@implementation HMDEventCountersManagerLegacyDelegate

- (HMDEventCounterContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (void)saveForManager:(id)manager
{
  managerCopy = manager;
  counterStorage = [(HMDEventCountersManagerLegacyDelegate *)self counterStorage];
  fetchAllEventCounters = [managerCopy fetchAllEventCounters];

  if (fetchAllEventCounters)
  {
    v6 = fetchAllEventCounters;
  }

  else
  {
    v6 = MEMORY[0x277CBEC10];
  }

  [counterStorage archiveDictionary:v6];
}

- (id)groupForSpecifier:(id)specifier
{
  context = [(HMDEventCountersManagerLegacyDelegate *)self context];
  if (context)
  {
    v5 = [HMDEventCounterGroup alloc];
    uptimeProvider = [(HMDEventCountersManagerLegacyDelegate *)self uptimeProvider];
    v7 = [(HMDEventCounterGroup *)v5 initWithContext:context serializedEventCounters:0 uptimeProvider:uptimeProvider];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)initialCounterGroups
{
  v21 = *MEMORY[0x277D85DE8];
  context = [(HMDEventCountersManagerLegacyDelegate *)self context];
  if (context)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    counterStorage = [(HMDEventCountersManagerLegacyDelegate *)self counterStorage];
    unarchive = [counterStorage unarchive];

    if (unarchive)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __61__HMDEventCountersManagerLegacyDelegate_initialCounterGroups__block_invoke;
      v13[3] = &unk_278684E58;
      v14 = dictionary;
      v15 = context;
      selfCopy = self;
      [unarchive enumerateKeysAndObjectsUsingBlock:v13];
    }

    v7 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v10;
      v19 = 2112;
      v20 = dictionary;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Final restored event counters: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    dictionary = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return dictionary;
}

void __61__HMDEventCountersManagerLegacyDelegate_initialCounterGroups__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [HMDEventCounterGroup alloc];
  v8 = *(a1 + 40);
  v10 = [*(a1 + 48) uptimeProvider];
  v9 = [(HMDEventCounterGroup *)v7 initWithContext:v8 serializedEventCounters:v5 uptimeProvider:v10];

  [*(a1 + 32) setObject:v9 forKeyedSubscript:v6];
}

- (HMDEventCountersManagerLegacyDelegate)initWithStorage:(id)storage uptimeProvider:(id)provider
{
  storageCopy = storage;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = HMDEventCountersManagerLegacyDelegate;
  v9 = [(HMDEventCountersManagerLegacyDelegate *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_counterStorage, storage);
    objc_storeStrong(&v10->_uptimeProvider, provider);
  }

  return v10;
}

@end