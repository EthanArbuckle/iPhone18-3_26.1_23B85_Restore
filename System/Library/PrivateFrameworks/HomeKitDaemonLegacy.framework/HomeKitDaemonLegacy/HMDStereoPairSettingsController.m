@interface HMDStereoPairSettingsController
+ (id)logCategory;
- (BOOL)_currentDevicePrimaryResident;
- (HMDStereoPairSettingsController)initWithDataSource:(id)a3 workQueue:(id)a4 stateManagerFactory:(id)a5;
- (HMDStereoPairSettingsControllerDataSource)dataSource;
- (NSArray)homes;
- (id)_groupOwnerTopicsForMediaSystem:(id)a3;
- (id)_homeUUID;
- (id)_mediaSystemGroupOwnerAccessoryUUID:(id)a3;
- (id)_mediaSystemWithAccessoryUUID:(id)a3;
- (id)_mediaSystems;
- (id)logIdentifier;
- (id)mediaSystemGroupOwner:(id)a3;
- (void)_postAsStereoPairEventsIfDifferentForHome:(id)a3 mediaSystem:(id)a4 keyPath:(id)a5 setting:(id)a6;
- (void)_processReceivedEvent:(id)a3 topic:(id)a4 home:(id)a5 mediaSystem:(id)a6;
- (void)_subscribeToAddedMediaSystem:(id)a3;
- (void)_unsubscribeToRemovedMediaSystem:(id)a3;
- (void)didReceiveCachedEvent:(id)a3 topic:(id)a4 source:(id)a5;
- (void)didReceiveEvent:(id)a3 topic:(id)a4;
- (void)didUpdateCurrentRunState:(int64_t)a3 updatedState:(int64_t)a4 forHome:(id)a5;
- (void)pushLastEvent:(id)a3 topic:(id)a4;
- (void)startIfPrimaryResident;
- (void)stopIfPrimaryResidentChange;
- (void)subscribeToAddedMediaSystemIfPrimaryResident:(id)a3;
- (void)unsubscribeToRemovedMediaSystemIfPrimaryResident:(id)a3;
@end

@implementation HMDStereoPairSettingsController

- (HMDStereoPairSettingsControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)pushLastEvent:(id)a3 topic:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDStereoPairSettingsController *)self topicToLastReceivedEvent];
  [v8 setObject:v7 forKeyedSubscript:v6];
}

- (void)didReceiveCachedEvent:(id)a3 topic:(id)a4 source:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v16 = 138543874;
    v17 = v14;
    v18 = 2112;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Process cached event: %@ topic: %@", &v16, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  [(HMDStereoPairSettingsController *)v12 didReceiveEvent:v8 topic:v9];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveEvent:(id)a3 topic:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CD19F0] decodeTopic:v7];
  v9 = [v8 asAccessorySettingTopic];
  v10 = v9;
  if (!v9)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v21;
      v31 = 2112;
      v32 = v7;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse topic: %@", buf, 0x16u);
LABEL_8:
    }

LABEL_9:

    objc_autoreleasePoolPop(v18);
    goto LABEL_10;
  }

  v11 = [v9 accessoryUUID];
  v12 = [(HMDStereoPairSettingsController *)self _mediaSystemWithAccessoryUUID:v11];

  if (!v12)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [v10 accessoryUUID];
      *buf = 138544130;
      v30 = v21;
      v31 = 2112;
      v32 = v6;
      v33 = 2112;
      v34 = v7;
      v35 = 2112;
      v36 = v22;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Received event: %@ topic: %@, failed to find media system with accessory: %@", buf, 0x2Au);

      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v13 = [(HMDStereoPairSettingsController *)self _homeUUID];
  v14 = [v12 uuid];
  v15 = [(HMDStereoPairSettingsController *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__HMDStereoPairSettingsController_didReceiveEvent_topic___block_invoke;
  block[3] = &unk_2797352C0;
  block[4] = self;
  v25 = v6;
  v26 = v7;
  v27 = v13;
  v28 = v14;
  v16 = v14;
  v17 = v13;
  dispatch_async(v15, block);

LABEL_10:
  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __57__HMDStereoPairSettingsController_didReceiveEvent_topic___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v10 = 138543874;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Process event: %@ topic: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _processReceivedEvent:*(a1 + 40) topic:*(a1 + 48) home:*(a1 + 56) mediaSystem:*(a1 + 64)];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_mediaSystemWithAccessoryUUID:(id)a3
{
  v4 = a3;
  v5 = [(HMDStereoPairSettingsController *)self _mediaSystems];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__HMDStereoPairSettingsController__mediaSystemWithAccessoryUUID___block_invoke;
  v9[3] = &unk_279723F68;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

BOOL __65__HMDStereoPairSettingsController__mediaSystemWithAccessoryUUID___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _mediaSystemGroupOwnerAccessoryUUID:a2];
  v4 = v3;
  v5 = v3 && ([v3 isEqual:*(a1 + 40)] & 1) != 0;

  return v5;
}

- (id)logIdentifier
{
  v2 = [(HMDStereoPairSettingsController *)self _homeUUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)didUpdateCurrentRunState:(int64_t)a3 updatedState:(int64_t)a4 forHome:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = [(HMDStereoPairSettingsController *)self _homeUUID];
  if ([v9 isEqual:v8])
  {
    if (a3 != 3 || a4 == 3)
    {
      if (a3 != 3 && a4 == 3)
      {
        v14 = objc_autoreleasePoolPush();
        v15 = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v17 = HMFGetLogIdentifier();
          v19 = 138543362;
          v20 = v17;
          _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@State change from primary to non-primary: subscribe to the group owner", &v19, 0xCu);
        }

        objc_autoreleasePoolPop(v14);
        [(HMDStereoPairSettingsController *)v15 startIfPrimaryResident];
      }
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      v11 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v13;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@State change from primary to non-primary: unsubscribe to the group owner", &v19, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      [(HMDStereoPairSettingsController *)v11 stopIfPrimaryResidentChange];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (NSArray)homes
{
  v2 = [(HMDStereoPairSettingsController *)self dataSource];
  v3 = [v2 home];

  v4 = [v3 homeManager];
  v5 = [v4 homes];

  return v5;
}

- (id)_mediaSystems
{
  v2 = [(HMDStereoPairSettingsController *)self dataSource];
  v3 = [v2 uuidToMediaSystems];
  v4 = [v3 allValues];

  return v4;
}

- (BOOL)_currentDevicePrimaryResident
{
  v2 = [(HMDStereoPairSettingsController *)self dataSource];
  v3 = [v2 home];

  LOBYTE(v2) = [v3 isCurrentDeviceConfirmedPrimaryResident];
  return v2;
}

- (void)_unsubscribeToRemovedMediaSystem:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDStereoPairSettingsController *)self _homeUUID];
  v6 = [(HMDStereoPairSettingsController *)self _mediaSystemGroupOwnerAccessoryUUID:v4];
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [(HMDStereoPairSettingsController *)self _groupOwnerTopicsForMediaSystem:v4];
    v9 = v8;
    if (v8 && [v8 count])
    {
      v10 = objc_autoreleasePoolPush();
      v11 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138544130;
        v27 = v13;
        v28 = 2112;
        v29 = v5;
        v30 = 2112;
        v31 = v7;
        v32 = 2112;
        v33 = v9;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@unsubscribing to home: %@, (owner) accessory: %@ topics: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v10);
      v14 = [(HMDStereoPairSettingsController *)v11 dataSource];
      v15 = [v14 localAndRemoteSubscriptionProvider];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __68__HMDStereoPairSettingsController__unsubscribeToRemovedMediaSystem___block_invoke;
      v25[3] = &unk_279734EB8;
      v25[4] = v11;
      [v15 changeRegistrationsForConsumer:v11 topicFilterAdditions:MEMORY[0x277CBEBF8] topicFilterRemovals:v9 completion:v25];
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543874;
        v27 = v23;
        v28 = 2112;
        v29 = v5;
        v30 = 2112;
        v31 = v7;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@No topics for home: %@ accessory: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v20);
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v19;
      v28 = 2112;
      v29 = v4;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Media system %@ does not have an owner", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __68__HMDStereoPairSettingsController__unsubscribeToRemovedMediaSystem___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
LABEL_5:

      objc_autoreleasePoolPop(v7);
      goto LABEL_6;
    }

    v10 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v10;
    v15 = 2112;
    v16 = v6;
    v11 = "%{public}@Error in unsubscribing: %@";
LABEL_4:
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, v11, &v13, 0x16u);

    goto LABEL_5;
  }

  if (v5 && [v5 count])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    v10 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v10;
    v15 = 2112;
    v16 = v5;
    v11 = "%{public}@Received cached events: %@ when unsubscribing all topics";
    goto LABEL_4;
  }

LABEL_6:

  v12 = *MEMORY[0x277D85DE8];
}

- (id)mediaSystemGroupOwner:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v31 = v4;
    [v4 components];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v6 = v36 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v7)
    {
      v8 = v7;
      v30 = self;
      v9 = 0;
      v10 = *v34;
      obj = v6;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v34 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v33 + 1) + 8 * i);
          if (!v12)
          {
            v19 = objc_autoreleasePoolPush();
            v20 = v30;
            v21 = HMFGetOSLogHandle();
            v5 = v31;
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              v22 = HMFGetLogIdentifier();
              *buf = 138543618;
              v39 = v22;
              v40 = 2112;
              v41 = v31;
              _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Component is nil for media system %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v19);
            v6 = obj;

            v23 = 0;
            goto LABEL_22;
          }

          if (!v9)
          {
            goto LABEL_10;
          }

          v13 = [v9 accessory];
          v14 = [v13 serialNumber];
          v15 = [v12 accessory];
          v16 = [v15 serialNumber];
          v17 = [v14 compare:v16];

          if (v17 == 1)
          {
LABEL_10:
            v18 = v12;

            v9 = v18;
          }
        }

        v6 = obj;
        v8 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v9 = 0;
    }

    v9 = v9;
    v23 = v9;
    v5 = v31;
LABEL_22:
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v27;
      v40 = 2112;
      v41 = 0;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Ask to compute owner for media system: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v23 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)_mediaSystemGroupOwnerAccessoryUUID:(id)a3
{
  v3 = [(HMDStereoPairSettingsController *)self mediaSystemGroupOwner:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 accessory];
    v6 = [v5 uuid];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_homeUUID
{
  v2 = [(HMDStereoPairSettingsController *)self dataSource];
  v3 = [v2 home];

  v4 = [v3 uuid];

  return v4;
}

- (void)_postAsStereoPairEventsIfDifferentForHome:(id)a3 mediaSystem:(id)a4 keyPath:(id)a5 setting:(id)a6
{
  v56 = *MEMORY[0x277D85DE8];
  v48 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v47 = [(HMDStereoPairSettingsController *)self dataSource];
  v13 = [(HMDStereoPairSettingsController *)self workQueue];
  dispatch_assert_queue_V2(v13);

  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v18 = v17 = v12;
    *buf = 138543874;
    v51 = v18;
    v52 = 2112;
    v53 = v10;
    v54 = 2112;
    v55 = v11;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Forward media system %@ keypath: %@", buf, 0x20u);

    v12 = v17;
  }

  objc_autoreleasePoolPop(v14);
  v19 = [v10 UUIDString];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v46 = v19;
  v45 = [objc_alloc(MEMORY[0x277CD1AD8]) initWithSetting:v12 eventSource:v19 eventTimestamp:v20];
  v21 = HMImmutableSettingChangeEventTopicFromMediaSystem();
  v22 = v47;
  v23 = [v47 eventStoreReadHandle];
  v24 = [v23 lastEventForTopic:v21];
  if (!v24)
  {
    v25 = 0;
    goto LABEL_15;
  }

  v49 = 0;
  v25 = [MEMORY[0x277CD1AD8] decodeSettingFromEvent:v24 error:&v49];
  v26 = v49;
  if (v26)
  {
    v41 = v12;
    v43 = v11;
    v27 = objc_autoreleasePoolPush();
    v28 = v15;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v30 = v40 = v27;
      *buf = 138543874;
      v51 = v30;
      v52 = 2112;
      v53 = v21;
      v54 = 2112;
      v55 = v26;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Error reading stored setting for topic %@, error: %@", buf, 0x20u);

      v27 = v40;
    }

    objc_autoreleasePoolPop(v27);
    v12 = v41;
    v11 = v43;
  }

  if (!v25 || ![v25 isEqual:v12])
  {
    v22 = v47;
LABEL_15:
    v38 = [v22 eventForwarder];
    v37 = v45;
    [v38 forwardEvent:v45 topic:v21 completion:&__block_literal_global_15];

    goto LABEL_16;
  }

  v31 = v12;
  v32 = objc_autoreleasePoolPush();
  v33 = v15;
  v34 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v35 = v44 = v11;
    [v31 keyPath];
    v36 = v42 = v32;
    *buf = 138543618;
    v51 = v35;
    v52 = 2114;
    v53 = v36;
    _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@Skip sending event for keyPath: %{public}@ as it matches stored", buf, 0x16u);

    v32 = v42;
    v11 = v44;
  }

  objc_autoreleasePoolPop(v32);
  v12 = v31;
  v22 = v47;
  v37 = v45;
LABEL_16:

  v39 = *MEMORY[0x277D85DE8];
}

- (void)_processReceivedEvent:(id)a3 topic:(id)a4 home:(id)a5 mediaSystem:(id)a6
{
  v42 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HMDStereoPairSettingsController *)self workQueue];
  dispatch_assert_queue_V2(v14);

  v15 = [HMDLegacyAccessorySettingsAdaptor parsedBoolSettingEvent:v10 topic:v11];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 keyPath];
    [(HMDStereoPairSettingsController *)self _postAsStereoPairEventsIfDifferentForHome:v12 mediaSystem:v13 keyPath:v17 setting:v16];
  }

  else
  {
    v18 = [HMDLegacyAccessorySettingsAdaptor parsedIntegerSettingEvent:v10 topic:v11];
    v17 = v18;
    if (v18)
    {
      v19 = [v18 keyPath];
      [(HMDStereoPairSettingsController *)self _postAsStereoPairEventsIfDifferentForHome:v12 mediaSystem:v13 keyPath:v19 setting:v17];
    }

    else
    {
      v20 = [HMDLegacyAccessorySettingsAdaptor parsedLanguageSetting:v10 topic:v11];
      v19 = v20;
      if (v20)
      {
        v21 = [v20 keyPath];
        [(HMDStereoPairSettingsController *)self _postAsStereoPairEventsIfDifferentForHome:v12 mediaSystem:v13 keyPath:v21 setting:v19];
      }

      else
      {
        v22 = [HMDLegacyAccessorySettingsAdaptor parsedLanguageListSetting:v10 topic:v11];
        context = objc_autoreleasePoolPush();
        v23 = self;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          HMFGetLogIdentifier();
          v25 = v35 = v22;
          *buf = 138543618;
          v37 = v25;
          v38 = 2112;
          v39 = v35;
          _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Language List:%@", buf, 0x16u);

          v22 = v35;
        }

        objc_autoreleasePoolPop(context);
        v26 = v22;
        if (v22)
        {
          v27 = [v22 keyPath];
          [(HMDStereoPairSettingsController *)v23 _postAsStereoPairEventsIfDifferentForHome:v12 mediaSystem:v13 keyPath:v27 setting:v26];
        }

        else
        {
          v28 = objc_autoreleasePoolPush();
          v29 = v23;
          v30 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v31 = contexta = v28;
            *buf = 138543874;
            v37 = v31;
            v38 = 2112;
            v39 = v10;
            v40 = 2112;
            v41 = v11;
            _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Received unknown event type: %@ topic: %@", buf, 0x20u);

            v28 = contexta;
          }

          objc_autoreleasePoolPop(v28);
          v26 = 0;
        }
      }
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_subscribeToAddedMediaSystem:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDStereoPairSettingsController *)self _homeUUID];
  v6 = [(HMDStereoPairSettingsController *)self _mediaSystemGroupOwnerAccessoryUUID:v4];
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [(HMDStereoPairSettingsController *)self _groupOwnerTopicsForMediaSystem:v4];
    v9 = v8;
    if (v8 && [v8 count])
    {
      v10 = objc_autoreleasePoolPush();
      v11 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138544130;
        v31 = v13;
        v32 = 2112;
        v33 = v5;
        v34 = 2112;
        v35 = v7;
        v36 = 2112;
        v37 = v9;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Subscribing to home: %@, (owner) accessory: %@ topics: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v10);
      v14 = [(HMDStereoPairSettingsController *)v11 dataSource];
      v15 = [v14 localAndRemoteSubscriptionProvider];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __64__HMDStereoPairSettingsController__subscribeToAddedMediaSystem___block_invoke;
      v25[3] = &unk_279728780;
      v25[4] = v11;
      v26 = v9;
      v27 = v7;
      v28 = v5;
      v29 = v4;
      [v15 changeRegistrationsForConsumer:v11 topicFilterAdditions:v26 topicFilterRemovals:MEMORY[0x277CBEBF8] completion:v25];
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543874;
        v31 = v23;
        v32 = 2112;
        v33 = v5;
        v34 = 2112;
        v35 = v7;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@No topics for home: %@ accessory: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v20);
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v19;
      v32 = 2112;
      v33 = v4;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Media system %@ does not have an owner", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __64__HMDStereoPairSettingsController__subscribeToAddedMediaSystem___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
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
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      *buf = 138543874;
      v25 = v11;
      v26 = 2112;
      v27 = v12;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Error in subscribing to topics %@ error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *(a1 + 48);
      *buf = 138543618;
      v25 = v13;
      v26 = 2112;
      v27 = v14;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Successfully subscribed to (owner) accessory: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v15 = [*(a1 + 32) workQueue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __64__HMDStereoPairSettingsController__subscribeToAddedMediaSystem___block_invoke_7;
    v19[3] = &unk_279734870;
    v16 = v5;
    v17 = *(a1 + 32);
    v20 = v16;
    v21 = v17;
    v22 = *(a1 + 56);
    v23 = *(a1 + 64);
    dispatch_async(v15, v19);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __64__HMDStereoPairSettingsController__subscribeToAddedMediaSystem___block_invoke_7(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__HMDStereoPairSettingsController__subscribeToAddedMediaSystem___block_invoke_2;
  v4[3] = &unk_279729DD0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4[4] = *(a1 + 40);
  v5 = v3;
  v6 = *(a1 + 56);
  [v2 hmf_enumerateKeysAndObjectsWithAutoreleasePoolUsingBlock:v4];
}

void __64__HMDStereoPairSettingsController__subscribeToAddedMediaSystem___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v15 = 138543874;
    v16 = v10;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Process cached event: %@ topic: %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = [*(a1 + 48) uuid];
  [v11 _processReceivedEvent:v6 topic:v5 home:v12 mediaSystem:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_groupOwnerTopicsForMediaSystem:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDStereoPairSettingsController *)self _homeUUID];
  v6 = [(HMDStereoPairSettingsController *)self _mediaSystemGroupOwnerAccessoryUUID:v4];
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [MEMORY[0x277CD1790] defaultSettingsAllKeyPaths];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __67__HMDStereoPairSettingsController__groupOwnerTopicsForMediaSystem___block_invoke;
    v27[3] = &unk_279734EE0;
    v9 = v5;
    v28 = v9;
    v10 = v7;
    v29 = v10;
    v11 = [v8 na_map:v27];

    v12 = [MEMORY[0x277CD1790] languageKeyPaths];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __67__HMDStereoPairSettingsController__groupOwnerTopicsForMediaSystem___block_invoke_2;
    v24 = &unk_279734EE0;
    v25 = v9;
    v26 = v10;
    v13 = [v12 na_map:&v21];
    v14 = [v13 arrayByAddingObjectsFromArray:{v11, v21, v22, v23, v24}];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v18;
      v32 = 2112;
      v33 = v4;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Media system %@ does not have an owner", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v14 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v14;
}

void __67__HMDStereoPairSettingsController__groupOwnerTopicsForMediaSystem___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  JUMPOUT(0x259C01CC0);
}

void __67__HMDStereoPairSettingsController__groupOwnerTopicsForMediaSystem___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  JUMPOUT(0x259C01CC0);
}

- (void)stopIfPrimaryResidentChange
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [(HMDStereoPairSettingsController *)self _currentDevicePrimaryResident];
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Ask to stop subscription on primary resident", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Primary resident changed and unsubscribe all", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v10 = [(HMDStereoPairSettingsController *)v5 dataSource];
    v11 = [v10 uuidToMediaSystems];
    v12 = [v11 allValues];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        v17 = 0;
        do
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [(HMDStereoPairSettingsController *)v5 _unsubscribeToRemovedMediaSystem:*(*(&v20 + 1) + 8 * v17++), v20];
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v15);
    }

    v18 = [(HMDStereoPairSettingsController *)v5 topicToLastReceivedEvent];
    [v18 removeAllObjects];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)unsubscribeToRemovedMediaSystemIfPrimaryResident:(id)a3
{
  v4 = a3;
  if ([(HMDStereoPairSettingsController *)self _currentDevicePrimaryResident])
  {
    [(HMDStereoPairSettingsController *)self _unsubscribeToRemovedMediaSystem:v4];
  }
}

- (void)subscribeToAddedMediaSystemIfPrimaryResident:(id)a3
{
  v4 = a3;
  if ([(HMDStereoPairSettingsController *)self _currentDevicePrimaryResident])
  {
    [(HMDStereoPairSettingsController *)self _subscribeToAddedMediaSystem:v4];
  }
}

- (void)startIfPrimaryResident
{
  v27 = *MEMORY[0x277D85DE8];
  if ([(HMDStereoPairSettingsController *)self _currentDevicePrimaryResident])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v7 = [(HMDStereoPairSettingsController *)v4 dataSource];
      v8 = [v7 home];
      *buf = 138543618;
      v24 = v6;
      v25 = 2112;
      v26 = v8;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Current device for home %@ is primary resident", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v9 = [(HMDStereoPairSettingsController *)v4 dataSource];
    v10 = [v9 uuidToMediaSystems];
    v11 = [v10 allValues];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        v16 = 0;
        do
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [(HMDStereoPairSettingsController *)v4 _subscribeToAddedMediaSystem:*(*(&v18 + 1) + 8 * v16++), v18];
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v14);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (HMDStereoPairSettingsController)initWithDataSource:(id)a3 workQueue:(id)a4 stateManagerFactory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24.receiver = self;
  v24.super_class = HMDStereoPairSettingsController;
  v11 = [(HMDStereoPairSettingsController *)&v24 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_dataSource, v8);
    objc_storeStrong(&v12->_workQueue, a4);
    v13 = [v8 home];
    v14 = v13;
    if (v10)
    {
      v15 = [v13 uuid];
      v16 = v10[2](v10, v15);
      residentRunStateManager = v12->_residentRunStateManager;
      v12->_residentRunStateManager = v16;
    }

    else
    {
      v18 = [HMDStereoPairSettingsControllerStateManager alloc];
      v15 = [MEMORY[0x277CCAB98] defaultCenter];
      residentRunStateManager = [v14 uuid];
      v19 = [(HMDCompositeSettingControllerManagerStateManager *)v18 initWithDataSource:v12 notificationRegistrationProvider:v15 subscribeWithOptions:1 delegate:v12 uuid:residentRunStateManager];
      v20 = v12->_residentRunStateManager;
      v12->_residentRunStateManager = v19;
    }

    v21 = [MEMORY[0x277CBEB38] dictionary];
    topicToLastReceivedEvent = v12->_topicToLastReceivedEvent;
    v12->_topicToLastReceivedEvent = v21;
  }

  return v12;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t26_22512 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t26_22512, &__block_literal_global_17);
  }

  v3 = logCategory__hmf_once_v27_22513;

  return v3;
}

uint64_t __46__HMDStereoPairSettingsController_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v27_22513;
  logCategory__hmf_once_v27_22513 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end