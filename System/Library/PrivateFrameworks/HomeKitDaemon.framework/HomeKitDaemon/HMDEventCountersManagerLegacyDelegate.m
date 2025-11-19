@interface HMDEventCountersManagerLegacyDelegate
- (HMDEventCounterContext)context;
- (HMDEventCountersManagerLegacyDelegate)initWithStorage:(id)a3 uptimeProvider:(id)a4;
- (id)groupForSpecifier:(id)a3;
- (id)initialCounterGroups;
- (void)saveForManager:(id)a3;
@end

@implementation HMDEventCountersManagerLegacyDelegate

- (HMDEventCounterContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (void)saveForManager:(id)a3
{
  v4 = a3;
  v7 = [(HMDEventCountersManagerLegacyDelegate *)self counterStorage];
  v5 = [v4 fetchAllEventCounters];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = MEMORY[0x277CBEC10];
  }

  [v7 archiveDictionary:v6];
}

- (id)groupForSpecifier:(id)a3
{
  v4 = [(HMDEventCountersManagerLegacyDelegate *)self context];
  if (v4)
  {
    v5 = [HMDEventCounterGroup alloc];
    v6 = [(HMDEventCountersManagerLegacyDelegate *)self uptimeProvider];
    v7 = [(HMDEventCounterGroup *)v5 initWithContext:v4 serializedEventCounters:0 uptimeProvider:v6];
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
  v3 = [(HMDEventCountersManagerLegacyDelegate *)self context];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    v5 = [(HMDEventCountersManagerLegacyDelegate *)self counterStorage];
    v6 = [v5 unarchive];

    if (v6)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __61__HMDEventCountersManagerLegacyDelegate_initialCounterGroups__block_invoke;
      v13[3] = &unk_278684E58;
      v14 = v4;
      v15 = v3;
      v16 = self;
      [v6 enumerateKeysAndObjectsUsingBlock:v13];
    }

    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v10;
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Final restored event counters: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v4 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
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

- (HMDEventCountersManagerLegacyDelegate)initWithStorage:(id)a3 uptimeProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDEventCountersManagerLegacyDelegate;
  v9 = [(HMDEventCountersManagerLegacyDelegate *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_counterStorage, a3);
    objc_storeStrong(&v10->_uptimeProvider, a4);
  }

  return v10;
}

@end