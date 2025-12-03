@interface HMDStereoPairSettingsController
+ (id)logCategory;
- (BOOL)_currentDevicePrimaryResident;
- (HMDStereoPairSettingsController)initWithDataSource:(id)source workQueue:(id)queue stateManagerFactory:(id)factory;
- (HMDStereoPairSettingsControllerDataSource)dataSource;
- (NSArray)homes;
- (id)_groupOwnerTopicsForMediaSystem:(id)system;
- (id)_homeUUID;
- (id)_mediaSystemGroupOwnerAccessoryUUID:(id)d;
- (id)_mediaSystemWithAccessoryUUID:(id)d;
- (id)_mediaSystems;
- (id)logIdentifier;
- (id)mediaSystemGroupOwner:(id)owner;
- (void)_postAsStereoPairEventsIfDifferentForHome:(id)home mediaSystem:(id)system keyPath:(id)path setting:(id)setting;
- (void)_processReceivedEvent:(id)event topic:(id)topic home:(id)home mediaSystem:(id)system;
- (void)_subscribeToAddedMediaSystem:(id)system;
- (void)_unsubscribeToRemovedMediaSystem:(id)system;
- (void)didReceiveCachedEvent:(id)event topic:(id)topic source:(id)source;
- (void)didReceiveEvent:(id)event topic:(id)topic;
- (void)didUpdateCurrentRunState:(int64_t)state updatedState:(int64_t)updatedState forHome:(id)home;
- (void)pushLastEvent:(id)event topic:(id)topic;
- (void)startIfPrimaryResident;
- (void)stopIfPrimaryResidentChange;
- (void)subscribeToAddedMediaSystemIfPrimaryResident:(id)resident;
- (void)unsubscribeToRemovedMediaSystemIfPrimaryResident:(id)resident;
@end

@implementation HMDStereoPairSettingsController

- (HMDStereoPairSettingsControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)pushLastEvent:(id)event topic:(id)topic
{
  topicCopy = topic;
  eventCopy = event;
  topicToLastReceivedEvent = [(HMDStereoPairSettingsController *)self topicToLastReceivedEvent];
  [topicToLastReceivedEvent setObject:eventCopy forKeyedSubscript:topicCopy];
}

- (void)didReceiveCachedEvent:(id)event topic:(id)topic source:(id)source
{
  v22 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  topicCopy = topic;
  sourceCopy = source;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v16 = 138543874;
    v17 = v14;
    v18 = 2112;
    v19 = eventCopy;
    v20 = 2112;
    v21 = topicCopy;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Process cached event: %@ topic: %@", &v16, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  [(HMDStereoPairSettingsController *)selfCopy didReceiveEvent:eventCopy topic:topicCopy];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveEvent:(id)event topic:(id)topic
{
  v37 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  topicCopy = topic;
  v8 = [MEMORY[0x277CD19F0] decodeTopic:topicCopy];
  asAccessorySettingTopic = [v8 asAccessorySettingTopic];
  v10 = asAccessorySettingTopic;
  if (!asAccessorySettingTopic)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v21;
      v31 = 2112;
      v32 = topicCopy;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse topic: %@", buf, 0x16u);
LABEL_8:
    }

LABEL_9:

    objc_autoreleasePoolPop(v18);
    goto LABEL_10;
  }

  accessoryUUID = [asAccessorySettingTopic accessoryUUID];
  v12 = [(HMDStereoPairSettingsController *)self _mediaSystemWithAccessoryUUID:accessoryUUID];

  if (!v12)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      accessoryUUID2 = [v10 accessoryUUID];
      *buf = 138544130;
      v30 = v21;
      v31 = 2112;
      v32 = eventCopy;
      v33 = 2112;
      v34 = topicCopy;
      v35 = 2112;
      v36 = accessoryUUID2;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Received event: %@ topic: %@, failed to find media system with accessory: %@", buf, 0x2Au);

      goto LABEL_8;
    }

    goto LABEL_9;
  }

  _homeUUID = [(HMDStereoPairSettingsController *)self _homeUUID];
  uuid = [v12 uuid];
  workQueue = [(HMDStereoPairSettingsController *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__HMDStereoPairSettingsController_didReceiveEvent_topic___block_invoke;
  block[3] = &unk_2797352C0;
  block[4] = self;
  v25 = eventCopy;
  v26 = topicCopy;
  v27 = _homeUUID;
  v28 = uuid;
  v16 = uuid;
  v17 = _homeUUID;
  dispatch_async(workQueue, block);

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

- (id)_mediaSystemWithAccessoryUUID:(id)d
{
  dCopy = d;
  _mediaSystems = [(HMDStereoPairSettingsController *)self _mediaSystems];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__HMDStereoPairSettingsController__mediaSystemWithAccessoryUUID___block_invoke;
  v9[3] = &unk_279723F68;
  v9[4] = self;
  v10 = dCopy;
  v6 = dCopy;
  v7 = [_mediaSystems na_firstObjectPassingTest:v9];

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
  _homeUUID = [(HMDStereoPairSettingsController *)self _homeUUID];
  uUIDString = [_homeUUID UUIDString];

  return uUIDString;
}

- (void)didUpdateCurrentRunState:(int64_t)state updatedState:(int64_t)updatedState forHome:(id)home
{
  v21 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  _homeUUID = [(HMDStereoPairSettingsController *)self _homeUUID];
  if ([_homeUUID isEqual:homeCopy])
  {
    if (state != 3 || updatedState == 3)
    {
      if (state != 3 && updatedState == 3)
      {
        v14 = objc_autoreleasePoolPush();
        selfCopy = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v17 = HMFGetLogIdentifier();
          v19 = 138543362;
          v20 = v17;
          _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@State change from primary to non-primary: subscribe to the group owner", &v19, 0xCu);
        }

        objc_autoreleasePoolPop(v14);
        [(HMDStereoPairSettingsController *)selfCopy startIfPrimaryResident];
      }
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v13;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@State change from primary to non-primary: unsubscribe to the group owner", &v19, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      [(HMDStereoPairSettingsController *)selfCopy2 stopIfPrimaryResidentChange];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (NSArray)homes
{
  dataSource = [(HMDStereoPairSettingsController *)self dataSource];
  home = [dataSource home];

  homeManager = [home homeManager];
  homes = [homeManager homes];

  return homes;
}

- (id)_mediaSystems
{
  dataSource = [(HMDStereoPairSettingsController *)self dataSource];
  uuidToMediaSystems = [dataSource uuidToMediaSystems];
  allValues = [uuidToMediaSystems allValues];

  return allValues;
}

- (BOOL)_currentDevicePrimaryResident
{
  dataSource = [(HMDStereoPairSettingsController *)self dataSource];
  home = [dataSource home];

  LOBYTE(dataSource) = [home isCurrentDeviceConfirmedPrimaryResident];
  return dataSource;
}

- (void)_unsubscribeToRemovedMediaSystem:(id)system
{
  v34 = *MEMORY[0x277D85DE8];
  systemCopy = system;
  _homeUUID = [(HMDStereoPairSettingsController *)self _homeUUID];
  v6 = [(HMDStereoPairSettingsController *)self _mediaSystemGroupOwnerAccessoryUUID:systemCopy];
  v7 = v6;
  if (_homeUUID && v6)
  {
    v8 = [(HMDStereoPairSettingsController *)self _groupOwnerTopicsForMediaSystem:systemCopy];
    v9 = v8;
    if (v8 && [v8 count])
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138544130;
        v27 = v13;
        v28 = 2112;
        v29 = _homeUUID;
        v30 = 2112;
        v31 = v7;
        v32 = 2112;
        v33 = v9;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@unsubscribing to home: %@, (owner) accessory: %@ topics: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v10);
      dataSource = [(HMDStereoPairSettingsController *)selfCopy dataSource];
      localAndRemoteSubscriptionProvider = [dataSource localAndRemoteSubscriptionProvider];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __68__HMDStereoPairSettingsController__unsubscribeToRemovedMediaSystem___block_invoke;
      v25[3] = &unk_279734EB8;
      v25[4] = selfCopy;
      [localAndRemoteSubscriptionProvider changeRegistrationsForConsumer:selfCopy topicFilterAdditions:MEMORY[0x277CBEBF8] topicFilterRemovals:v9 completion:v25];
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543874;
        v27 = v23;
        v28 = 2112;
        v29 = _homeUUID;
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
    selfCopy3 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v19;
      v28 = 2112;
      v29 = systemCopy;
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

- (id)mediaSystemGroupOwner:(id)owner
{
  v42 = *MEMORY[0x277D85DE8];
  ownerCopy = owner;
  v5 = ownerCopy;
  if (ownerCopy)
  {
    v31 = ownerCopy;
    [ownerCopy components];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v6 = v36 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v7)
    {
      v8 = v7;
      selfCopy = self;
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
            v20 = selfCopy;
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

          accessory = [v9 accessory];
          serialNumber = [accessory serialNumber];
          accessory2 = [v12 accessory];
          serialNumber2 = [accessory2 serialNumber];
          v17 = [serialNumber compare:serialNumber2];

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
    selfCopy2 = self;
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

- (id)_mediaSystemGroupOwnerAccessoryUUID:(id)d
{
  v3 = [(HMDStereoPairSettingsController *)self mediaSystemGroupOwner:d];
  v4 = v3;
  if (v3)
  {
    accessory = [v3 accessory];
    uuid = [accessory uuid];
  }

  else
  {
    uuid = 0;
  }

  return uuid;
}

- (id)_homeUUID
{
  dataSource = [(HMDStereoPairSettingsController *)self dataSource];
  home = [dataSource home];

  uuid = [home uuid];

  return uuid;
}

- (void)_postAsStereoPairEventsIfDifferentForHome:(id)home mediaSystem:(id)system keyPath:(id)path setting:(id)setting
{
  v56 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  systemCopy = system;
  pathCopy = path;
  settingCopy = setting;
  dataSource = [(HMDStereoPairSettingsController *)self dataSource];
  workQueue = [(HMDStereoPairSettingsController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v18 = v17 = settingCopy;
    *buf = 138543874;
    v51 = v18;
    v52 = 2112;
    v53 = systemCopy;
    v54 = 2112;
    v55 = pathCopy;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Forward media system %@ keypath: %@", buf, 0x20u);

    settingCopy = v17;
  }

  objc_autoreleasePoolPop(v14);
  uUIDString = [systemCopy UUIDString];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v46 = uUIDString;
  v45 = [objc_alloc(MEMORY[0x277CD1AD8]) initWithSetting:settingCopy eventSource:uUIDString eventTimestamp:v20];
  v21 = HMImmutableSettingChangeEventTopicFromMediaSystem();
  v22 = dataSource;
  eventStoreReadHandle = [dataSource eventStoreReadHandle];
  v24 = [eventStoreReadHandle lastEventForTopic:v21];
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
    v41 = settingCopy;
    v43 = pathCopy;
    v27 = objc_autoreleasePoolPush();
    v28 = selfCopy;
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
    settingCopy = v41;
    pathCopy = v43;
  }

  if (!v25 || ![v25 isEqual:settingCopy])
  {
    v22 = dataSource;
LABEL_15:
    eventForwarder = [v22 eventForwarder];
    v37 = v45;
    [eventForwarder forwardEvent:v45 topic:v21 completion:&__block_literal_global_15];

    goto LABEL_16;
  }

  v31 = settingCopy;
  v32 = objc_autoreleasePoolPush();
  v33 = selfCopy;
  v34 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v35 = v44 = pathCopy;
    [v31 keyPath];
    v36 = v42 = v32;
    *buf = 138543618;
    v51 = v35;
    v52 = 2114;
    v53 = v36;
    _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@Skip sending event for keyPath: %{public}@ as it matches stored", buf, 0x16u);

    v32 = v42;
    pathCopy = v44;
  }

  objc_autoreleasePoolPop(v32);
  settingCopy = v31;
  v22 = dataSource;
  v37 = v45;
LABEL_16:

  v39 = *MEMORY[0x277D85DE8];
}

- (void)_processReceivedEvent:(id)event topic:(id)topic home:(id)home mediaSystem:(id)system
{
  v42 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  topicCopy = topic;
  homeCopy = home;
  systemCopy = system;
  workQueue = [(HMDStereoPairSettingsController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v15 = [HMDLegacyAccessorySettingsAdaptor parsedBoolSettingEvent:eventCopy topic:topicCopy];
  v16 = v15;
  if (v15)
  {
    keyPath = [v15 keyPath];
    [(HMDStereoPairSettingsController *)self _postAsStereoPairEventsIfDifferentForHome:homeCopy mediaSystem:systemCopy keyPath:keyPath setting:v16];
  }

  else
  {
    v18 = [HMDLegacyAccessorySettingsAdaptor parsedIntegerSettingEvent:eventCopy topic:topicCopy];
    keyPath = v18;
    if (v18)
    {
      keyPath2 = [v18 keyPath];
      [(HMDStereoPairSettingsController *)self _postAsStereoPairEventsIfDifferentForHome:homeCopy mediaSystem:systemCopy keyPath:keyPath2 setting:keyPath];
    }

    else
    {
      v20 = [HMDLegacyAccessorySettingsAdaptor parsedLanguageSetting:eventCopy topic:topicCopy];
      keyPath2 = v20;
      if (v20)
      {
        keyPath3 = [v20 keyPath];
        [(HMDStereoPairSettingsController *)self _postAsStereoPairEventsIfDifferentForHome:homeCopy mediaSystem:systemCopy keyPath:keyPath3 setting:keyPath2];
      }

      else
      {
        v22 = [HMDLegacyAccessorySettingsAdaptor parsedLanguageListSetting:eventCopy topic:topicCopy];
        context = objc_autoreleasePoolPush();
        selfCopy = self;
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
          keyPath4 = [v22 keyPath];
          [(HMDStereoPairSettingsController *)selfCopy _postAsStereoPairEventsIfDifferentForHome:homeCopy mediaSystem:systemCopy keyPath:keyPath4 setting:v26];
        }

        else
        {
          v28 = objc_autoreleasePoolPush();
          v29 = selfCopy;
          v30 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v31 = contexta = v28;
            *buf = 138543874;
            v37 = v31;
            v38 = 2112;
            v39 = eventCopy;
            v40 = 2112;
            v41 = topicCopy;
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

- (void)_subscribeToAddedMediaSystem:(id)system
{
  v38 = *MEMORY[0x277D85DE8];
  systemCopy = system;
  _homeUUID = [(HMDStereoPairSettingsController *)self _homeUUID];
  v6 = [(HMDStereoPairSettingsController *)self _mediaSystemGroupOwnerAccessoryUUID:systemCopy];
  v7 = v6;
  if (_homeUUID && v6)
  {
    v8 = [(HMDStereoPairSettingsController *)self _groupOwnerTopicsForMediaSystem:systemCopy];
    v9 = v8;
    if (v8 && [v8 count])
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138544130;
        v31 = v13;
        v32 = 2112;
        v33 = _homeUUID;
        v34 = 2112;
        v35 = v7;
        v36 = 2112;
        v37 = v9;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Subscribing to home: %@, (owner) accessory: %@ topics: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v10);
      dataSource = [(HMDStereoPairSettingsController *)selfCopy dataSource];
      localAndRemoteSubscriptionProvider = [dataSource localAndRemoteSubscriptionProvider];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __64__HMDStereoPairSettingsController__subscribeToAddedMediaSystem___block_invoke;
      v25[3] = &unk_279728780;
      v25[4] = selfCopy;
      v26 = v9;
      v27 = v7;
      v28 = _homeUUID;
      v29 = systemCopy;
      [localAndRemoteSubscriptionProvider changeRegistrationsForConsumer:selfCopy topicFilterAdditions:v26 topicFilterRemovals:MEMORY[0x277CBEBF8] completion:v25];
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543874;
        v31 = v23;
        v32 = 2112;
        v33 = _homeUUID;
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
    selfCopy3 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v19;
      v32 = 2112;
      v33 = systemCopy;
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

- (id)_groupOwnerTopicsForMediaSystem:(id)system
{
  v34 = *MEMORY[0x277D85DE8];
  systemCopy = system;
  _homeUUID = [(HMDStereoPairSettingsController *)self _homeUUID];
  v6 = [(HMDStereoPairSettingsController *)self _mediaSystemGroupOwnerAccessoryUUID:systemCopy];
  v7 = v6;
  if (_homeUUID && v6)
  {
    defaultSettingsAllKeyPaths = [MEMORY[0x277CD1790] defaultSettingsAllKeyPaths];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __67__HMDStereoPairSettingsController__groupOwnerTopicsForMediaSystem___block_invoke;
    v27[3] = &unk_279734EE0;
    v9 = _homeUUID;
    v28 = v9;
    v10 = v7;
    v29 = v10;
    v11 = [defaultSettingsAllKeyPaths na_map:v27];

    languageKeyPaths = [MEMORY[0x277CD1790] languageKeyPaths];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __67__HMDStereoPairSettingsController__groupOwnerTopicsForMediaSystem___block_invoke_2;
    v24 = &unk_279734EE0;
    v25 = v9;
    v26 = v10;
    v13 = [languageKeyPaths na_map:&v21];
    v14 = [v13 arrayByAddingObjectsFromArray:{v11, v21, v22, v23, v24}];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v18;
      v32 = 2112;
      v33 = systemCopy;
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
  _currentDevicePrimaryResident = [(HMDStereoPairSettingsController *)self _currentDevicePrimaryResident];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (_currentDevicePrimaryResident)
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
    dataSource = [(HMDStereoPairSettingsController *)selfCopy dataSource];
    uuidToMediaSystems = [dataSource uuidToMediaSystems];
    allValues = [uuidToMediaSystems allValues];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = allValues;
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

          [(HMDStereoPairSettingsController *)selfCopy _unsubscribeToRemovedMediaSystem:*(*(&v20 + 1) + 8 * v17++), v20];
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v15);
    }

    topicToLastReceivedEvent = [(HMDStereoPairSettingsController *)selfCopy topicToLastReceivedEvent];
    [topicToLastReceivedEvent removeAllObjects];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)unsubscribeToRemovedMediaSystemIfPrimaryResident:(id)resident
{
  residentCopy = resident;
  if ([(HMDStereoPairSettingsController *)self _currentDevicePrimaryResident])
  {
    [(HMDStereoPairSettingsController *)self _unsubscribeToRemovedMediaSystem:residentCopy];
  }
}

- (void)subscribeToAddedMediaSystemIfPrimaryResident:(id)resident
{
  residentCopy = resident;
  if ([(HMDStereoPairSettingsController *)self _currentDevicePrimaryResident])
  {
    [(HMDStereoPairSettingsController *)self _subscribeToAddedMediaSystem:residentCopy];
  }
}

- (void)startIfPrimaryResident
{
  v27 = *MEMORY[0x277D85DE8];
  if ([(HMDStereoPairSettingsController *)self _currentDevicePrimaryResident])
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      dataSource = [(HMDStereoPairSettingsController *)selfCopy dataSource];
      home = [dataSource home];
      *buf = 138543618;
      v24 = v6;
      v25 = 2112;
      v26 = home;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Current device for home %@ is primary resident", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    dataSource2 = [(HMDStereoPairSettingsController *)selfCopy dataSource];
    uuidToMediaSystems = [dataSource2 uuidToMediaSystems];
    allValues = [uuidToMediaSystems allValues];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = allValues;
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

          [(HMDStereoPairSettingsController *)selfCopy _subscribeToAddedMediaSystem:*(*(&v18 + 1) + 8 * v16++), v18];
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v14);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (HMDStereoPairSettingsController)initWithDataSource:(id)source workQueue:(id)queue stateManagerFactory:(id)factory
{
  sourceCopy = source;
  queueCopy = queue;
  factoryCopy = factory;
  v24.receiver = self;
  v24.super_class = HMDStereoPairSettingsController;
  v11 = [(HMDStereoPairSettingsController *)&v24 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_dataSource, sourceCopy);
    objc_storeStrong(&v12->_workQueue, queue);
    home = [sourceCopy home];
    v14 = home;
    if (factoryCopy)
    {
      uuid = [home uuid];
      v16 = factoryCopy[2](factoryCopy, uuid);
      residentRunStateManager = v12->_residentRunStateManager;
      v12->_residentRunStateManager = v16;
    }

    else
    {
      v18 = [HMDStereoPairSettingsControllerStateManager alloc];
      uuid = [MEMORY[0x277CCAB98] defaultCenter];
      residentRunStateManager = [v14 uuid];
      v19 = [(HMDCompositeSettingControllerManagerStateManager *)v18 initWithDataSource:v12 notificationRegistrationProvider:uuid subscribeWithOptions:1 delegate:v12 uuid:residentRunStateManager];
      v20 = v12->_residentRunStateManager;
      v12->_residentRunStateManager = v19;
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    topicToLastReceivedEvent = v12->_topicToLastReceivedEvent;
    v12->_topicToLastReceivedEvent = dictionary;
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