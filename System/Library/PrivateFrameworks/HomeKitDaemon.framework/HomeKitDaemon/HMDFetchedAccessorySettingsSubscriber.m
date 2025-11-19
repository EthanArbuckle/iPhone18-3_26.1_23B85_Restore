@interface HMDFetchedAccessorySettingsSubscriber
+ (id)logCategory;
- (HMDFetchedAccessorySettingsSubscriber)initWithWorkQueue:(id)a3 subscriptionProvider:(id)a4 keyPaths:(id)a5 homeUUID:(id)a6;
- (HMDFetchedAccessorySettingsSubscriberDelegate)delegate;
- (id)cachedSettingForAccessory:(id)a3 keyPath:(id)a4;
- (id)logIdentifier;
- (id)topicsForKeyPaths:(void *)a3 accessoryUUID:(void *)a4 homeUUID:;
- (void)_didReceiveEvent:(void *)a3 topic:;
- (void)didReceiveCachedEvent:(id)a3 topic:(id)a4 source:(id)a5;
- (void)didReceiveEvent:(id)a3 topic:(id)a4;
- (void)setDelegate:(id)a3;
- (void)subscribeToSettingsForAccessoryUUIDs:(id)a3;
- (void)unsubscribeForAccessory:(id)a3;
- (void)unsubscribeToAllAccessories;
@end

@implementation HMDFetchedAccessorySettingsSubscriber

- (id)logIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  if (self)
  {
    self = objc_getProperty(self, a2, 56, 1);
  }

  return [v2 stringWithFormat:@"%@", self];
}

- (void)didReceiveCachedEvent:(id)a3 topic:(id)a4 source:(id)a5
{
  v7 = a3;
  v9 = a4;
  if (self)
  {
    Property = objc_getProperty(self, v8, 32, 1);
  }

  else
  {
    Property = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__HMDFetchedAccessorySettingsSubscriber_didReceiveCachedEvent_topic_source___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v14 = v7;
  v15 = v9;
  v11 = v9;
  v12 = v7;
  dispatch_async(Property, block);
}

- (void)_didReceiveEvent:(void *)a3 topic:
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v7 = a3;
  if (a1)
  {
    Property = objc_getProperty(a1, v6, 32, 1);
    dispatch_assert_queue_V2(Property);
    v9 = objc_autoreleasePoolPush();
    v10 = a1;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543874;
      v43 = v12;
      v44 = 2112;
      v45 = v5;
      v46 = 2112;
      v47 = v7;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Received event:%@ for topic:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = HMImmutableSettingChangeEventComponentsFromTopic();
    v14 = 0;
    v15 = 0;
    v40 = 0;
    if (!v13)
    {
      v24 = objc_autoreleasePoolPush();
      v25 = v10;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138544130;
        v43 = v27;
        v44 = 2112;
        v45 = v5;
        v46 = 2112;
        v47 = v14;
        v48 = 2112;
        v49 = v15;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Received unknown event: %@ home: %@ target: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v24);
      goto LABEL_18;
    }

    v16 = v5;
    v37 = v14;
    v38 = v16;
    v39 = v15;
    v41 = 0;
    v17 = [MEMORY[0x277CD1AD8] decodeSettingFromEvent:v16 error:&v41];
    v19 = v41;
    if (v19)
    {
      v20 = objc_autoreleasePoolPush();
      v21 = v10;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543874;
        v43 = v23;
        v44 = 2112;
        v45 = v38;
        v46 = 2112;
        v47 = v19;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Decode setting failed. event:%@ error:%@", buf, 0x20u);
      }
    }

    else
    {
      v28 = objc_getProperty(v10, v18, 48, 1);
      v29 = [v17 keyPath];
      v30 = [v28 containsObject:v29];

      if (v30)
      {
        os_unfair_lock_lock_with_options();
        v31 = *&v10[4]._os_unfair_lock_opaque;
        v32 = [v17 keyPath];
        v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v39, v32, v37];
        [v31 setObject:v17 forKeyedSubscript:v33];

        os_unfair_lock_unlock(v10 + 2);
        v34 = [(os_unfair_lock_s *)v10 delegate];
        [v34 didReceiveAccessorySetting:v17 accessoryUUID:v39];

LABEL_17:
LABEL_18:

        goto LABEL_19;
      }

      v20 = objc_autoreleasePoolPush();
      v21 = v10;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v35 = HMFGetLogIdentifier();
        *buf = 138543618;
        v43 = v35;
        v44 = 2112;
        v45 = v17;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Unknown keyPath for setting:%@", buf, 0x16u);
      }
    }

    objc_autoreleasePoolPop(v20);
    goto LABEL_17;
  }

LABEL_19:

  v36 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveEvent:(id)a3 topic:(id)a4
{
  v6 = a3;
  v8 = a4;
  if (self)
  {
    Property = objc_getProperty(self, v7, 32, 1);
  }

  else
  {
    Property = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HMDFetchedAccessorySettingsSubscriber_didReceiveEvent_topic___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v13 = v6;
  v14 = v8;
  v10 = v8;
  v11 = v6;
  dispatch_async(Property, block);
}

- (id)cachedSettingForAccessory:(id)a3 keyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock_with_options();
  cachedSettings = self->_cachedSettings;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v6, v7];
  v10 = [(NSMutableDictionary *)cachedSettings objectForKeyedSubscript:v9];

  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

- (void)unsubscribeToAllAccessories
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_subscriptionProvider);
  }

  else
  {
    WeakRetained = 0;
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __68__HMDFetchedAccessorySettingsSubscriber_unsubscribeToAllAccessories__block_invoke;
  v4[3] = &unk_27868A250;
  v4[4] = self;
  [WeakRetained unregisterConsumer:self completion:v4];
}

void __68__HMDFetchedAccessorySettingsSubscriber_unsubscribeToAllAccessories__block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 32);
      if (v10)
      {
        Property = objc_getProperty(v10, v8, 48, 1);
        v10 = *(a1 + 32);
        if (v10)
        {
          v10 = objc_getProperty(v10, v11, 56, 1);
        }
      }

      else
      {
        Property = 0;
      }

      v22 = 138544130;
      v23 = v9;
      v24 = 2112;
      v25 = Property;
      v26 = 2112;
      v27 = v10;
      v28 = 2112;
      v29 = v3;
      v13 = "%{public}@Failed to unsubscribe to keyPaths:%@ homeUUID:%@ for all accessories with error:%@";
      v14 = v7;
      v15 = OS_LOG_TYPE_ERROR;
      v16 = 42;
LABEL_12:
      _os_log_impl(&dword_229538000, v14, v15, v13, &v22, v16);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v18 = *(a1 + 32);
    if (v18)
    {
      v20 = objc_getProperty(v18, v17, 48, 1);
      v18 = *(a1 + 32);
      if (v18)
      {
        v18 = objc_getProperty(v18, v19, 56, 1);
      }
    }

    else
    {
      v20 = 0;
    }

    v22 = 138543874;
    v23 = v9;
    v24 = 2112;
    v25 = v20;
    v26 = 2112;
    v27 = v18;
    v13 = "%{public}@Unsubscribed to keyPaths:%@ homeUUID:%@ for all accessories";
    v14 = v7;
    v15 = OS_LOG_TYPE_INFO;
    v16 = 32;
    goto LABEL_12;
  }

  objc_autoreleasePoolPop(v4);
  v21 = *MEMORY[0x277D85DE8];
}

- (void)unsubscribeForAccessory:(id)a3
{
  v5 = a3;
  if (self)
  {
    v6 = objc_getProperty(self, v4, 48, 1);
    Property = objc_getProperty(self, v7, 56, 1);
    v9 = [(HMDFetchedAccessorySettingsSubscriber *)self topicsForKeyPaths:v6 accessoryUUID:v5 homeUUID:Property];

    WeakRetained = objc_loadWeakRetained(&self->_subscriptionProvider);
  }

  else
  {
    v9 = [(HMDFetchedAccessorySettingsSubscriber *)0 topicsForKeyPaths:v5 accessoryUUID:0 homeUUID:?];
    WeakRetained = 0;
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__HMDFetchedAccessorySettingsSubscriber_unsubscribeForAccessory___block_invoke;
  v12[3] = &unk_27868A1D8;
  v12[4] = self;
  v13 = v5;
  v11 = v5;
  [WeakRetained unregisterConsumer:self topicFilters:v9 completion:v12];
}

- (id)topicsForKeyPaths:(void *)a3 accessoryUUID:(void *)a4 homeUUID:
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (a1)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __82__HMDFetchedAccessorySettingsSubscriber_topicsForKeyPaths_accessoryUUID_homeUUID___block_invoke;
    v12[3] = &unk_278689190;
    v13 = v8;
    v14 = v7;
    v10 = [a2 na_map:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __65__HMDFetchedAccessorySettingsSubscriber_unsubscribeForAccessory___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 32);
      if (v10)
      {
        Property = objc_getProperty(v10, v8, 48, 1);
        v10 = *(a1 + 32);
        v13 = *(a1 + 40);
        if (v10)
        {
          v10 = objc_getProperty(v10, v11, 56, 1);
        }
      }

      else
      {
        Property = 0;
        v13 = *(a1 + 40);
      }

      v24 = 138544386;
      v25 = v9;
      v26 = 2112;
      v27 = Property;
      v28 = 2112;
      v29 = v13;
      v30 = 2112;
      v31 = v10;
      v32 = 2112;
      v33 = v3;
      v14 = "%{public}@Failed to unsubscribe to keyPaths:%@ accessories:%@ homeUUID:%@ with error:%@";
      v15 = v7;
      v16 = OS_LOG_TYPE_ERROR;
      v17 = 52;
LABEL_12:
      _os_log_impl(&dword_229538000, v15, v16, v14, &v24, v17);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v19 = *(a1 + 32);
    if (v19)
    {
      v21 = objc_getProperty(v19, v18, 48, 1);
      v19 = *(a1 + 32);
      v22 = *(a1 + 40);
      if (v19)
      {
        v19 = objc_getProperty(v19, v20, 56, 1);
      }
    }

    else
    {
      v21 = 0;
      v22 = *(a1 + 40);
    }

    v24 = 138544130;
    v25 = v9;
    v26 = 2112;
    v27 = v21;
    v28 = 2112;
    v29 = v22;
    v30 = 2112;
    v31 = v19;
    v14 = "%{public}@Unsubscribed to keyPaths:%@ accessories:%@ homeUUID:%@";
    v15 = v7;
    v16 = OS_LOG_TYPE_INFO;
    v17 = 42;
    goto LABEL_12;
  }

  objc_autoreleasePoolPop(v4);
  v23 = *MEMORY[0x277D85DE8];
}

void __82__HMDFetchedAccessorySettingsSubscriber_topicsForKeyPaths_accessoryUUID_homeUUID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  JUMPOUT(0x22AAD2730);
}

- (void)subscribeToSettingsForAccessoryUUIDs:(id)a3
{
  v4 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__HMDFetchedAccessorySettingsSubscriber_subscribeToSettingsForAccessoryUUIDs___block_invoke;
  v10[3] = &unk_27867DB78;
  v10[4] = self;
  v5 = [v4 na_flatMap:v10];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_subscriptionProvider);
  }

  else
  {
    WeakRetained = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__HMDFetchedAccessorySettingsSubscriber_subscribeToSettingsForAccessoryUUIDs___block_invoke_2;
  v8[3] = &unk_27867DBA0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [WeakRetained registerConsumer:self topicFilters:v5 completion:v8];
}

id __78__HMDFetchedAccessorySettingsSubscriber_subscribeToSettingsForAccessoryUUIDs___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    Property = objc_getProperty(*(a1 + 32), v3, 48, 1);
  }

  else
  {
    Property = 0;
  }

  v8 = Property;
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = objc_getProperty(v9, v7, 56, 1);
  }

  else
  {
    v10 = 0;
  }

  v11 = [(HMDFetchedAccessorySettingsSubscriber *)v5 topicsForKeyPaths:v8 accessoryUUID:v4 homeUUID:v10];

  return v11;
}

void __78__HMDFetchedAccessorySettingsSubscriber_subscribeToSettingsForAccessoryUUIDs___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 32);
      if (v13)
      {
        Property = objc_getProperty(v13, v11, 48, 1);
        v13 = *(a1 + 32);
        v16 = *(a1 + 40);
        if (v13)
        {
          v13 = objc_getProperty(v13, v14, 56, 1);
        }
      }

      else
      {
        Property = 0;
        v16 = *(a1 + 40);
      }

      *buf = 138544386;
      v29 = v12;
      v30 = 2112;
      v31 = Property;
      v32 = 2112;
      v33 = v16;
      v34 = 2112;
      v35 = v13;
      v36 = 2112;
      v37 = v6;
      v17 = "%{public}@Failed to subscribe to keyPaths:%@ accessories:%@ homeUUID:%@ with error:%@";
      v18 = v10;
      v19 = OS_LOG_TYPE_ERROR;
      v20 = 52;
LABEL_12:
      _os_log_impl(&dword_229538000, v18, v19, v17, buf, v20);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v22 = *(a1 + 32);
    if (v22)
    {
      v24 = objc_getProperty(v22, v21, 48, 1);
      v22 = *(a1 + 32);
      v25 = *(a1 + 40);
      if (v22)
      {
        v22 = objc_getProperty(v22, v23, 56, 1);
      }
    }

    else
    {
      v24 = 0;
      v25 = *(a1 + 40);
    }

    *buf = 138544130;
    v29 = v12;
    v30 = 2112;
    v31 = v24;
    v32 = 2112;
    v33 = v25;
    v34 = 2112;
    v35 = v22;
    v17 = "%{public}@Subscribed to keyPaths:%@ accessories:%@ homeUUID:%@";
    v18 = v10;
    v19 = OS_LOG_TYPE_INFO;
    v20 = 42;
    goto LABEL_12;
  }

  objc_autoreleasePoolPop(v7);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __78__HMDFetchedAccessorySettingsSubscriber_subscribeToSettingsForAccessoryUUIDs___block_invoke_1;
  v27[3] = &unk_278688EF8;
  v27[4] = *(a1 + 32);
  [v5 hmf_enumerateKeysAndObjectsWithAutoreleasePoolUsingBlock:v27];

  v26 = *MEMORY[0x277D85DE8];
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_delegate, v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDFetchedAccessorySettingsSubscriberDelegate)delegate
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (HMDFetchedAccessorySettingsSubscriber)initWithWorkQueue:(id)a3 subscriptionProvider:(id)a4 keyPaths:(id)a5 homeUUID:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v24.receiver = self;
  v24.super_class = HMDFetchedAccessorySettingsSubscriber;
  v15 = [(HMDFetchedAccessorySettingsSubscriber *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(&v15->_subscriptionProvider, v12);
    objc_storeStrong(&v16->_workQueue, a3);
    v16->_lock._os_unfair_lock_opaque = 0;
    v17 = objc_opt_new();
    cachedSettings = v16->_cachedSettings;
    v16->_cachedSettings = v17;

    v19 = [v13 copy];
    keyPaths = v16->_keyPaths;
    v16->_keyPaths = v19;

    v21 = [v14 copy];
    homeUUID = v16->_homeUUID;
    v16->_homeUUID = v21;
  }

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t14_186613 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t14_186613, &__block_literal_global_186614);
  }

  v3 = logCategory__hmf_once_v15_186615;

  return v3;
}

void __52__HMDFetchedAccessorySettingsSubscriber_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v15_186615;
  logCategory__hmf_once_v15_186615 = v1;
}

@end