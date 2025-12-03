@interface HMDMediaGroupsStageManager
+ (id)logCategory;
- (BOOL)hasSavedIdentifier;
- (HMDMediaGroupsStageManager)initWithIdentifier:(id)identifier userDefaults:(id)defaults;
- (HMDMediaGroupsStageManagerDelegate)delegate;
- (id)logIdentifier;
- (id)savedAggregateData;
- (id)transformedDestinationControllersData;
- (id)transformedDestinationForLegacyMediaSystem:(id)system role:(unint64_t)role;
- (id)transformedDestinations;
- (id)transformedGroups;
- (void)clearSavedData;
- (void)commitAggregateData:(id)data;
- (void)configure;
- (void)notifyOfUpdatedAggregateData;
- (void)refreshManager;
- (void)saveAggregateData:(id)data;
- (void)saveAssociatedGroupDataForCurrentLegacyAppleTVAccessory:(id)accessory;
- (void)saveAssociatedGroupDataForCurrentLegacyHomePodAccessory:(id)accessory;
- (void)saveAssociatedGroupDataForLegacyCurrentAccessory:(id)accessory;
- (void)saveDataForLegacyMediaSystem:(id)system;
- (void)saveDestinationControllerData:(id)data;
- (void)saveDestinations:(id)destinations;
- (void)saveGroup:(id)group;
- (void)saveIdentifier;
- (void)stageNullDestinationForCurrentDestinationControllerIdentifier:(id)identifier;
- (void)stagedValue:(id)value didExpireValue:(id)expireValue;
- (void)unstageNullDestinationForCurrentDestinationController;
@end

@implementation HMDMediaGroupsStageManager

- (HMDMediaGroupsStageManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  identifier = [(HMDMediaGroupsStageManager *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (void)stagedValue:(id)value didExpireValue:(id)expireValue
{
  v17 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  expireValueCopy = expireValue;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = expireValueCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling expired staged aggregate data: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMDMediaGroupsStageManager *)selfCopy refreshManager];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)clearSavedData
{
  userDefaults = [(HMDMediaGroupsStageManager *)self userDefaults];
  [userDefaults removeObjectForKey:@"HMDMediaGroupsStageManagerIdentifierKey"];

  userDefaults2 = [(HMDMediaGroupsStageManager *)self userDefaults];
  [userDefaults2 removeObjectForKey:@"HMDMediaGroupsStageManagerAggregatedDataKey"];
}

- (void)saveGroup:(id)group
{
  v22 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v8;
    v20 = 2112;
    v21 = groupCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Saving group: %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  savedAggregateData = [(HMDMediaGroupsStageManager *)selfCopy savedAggregateData];
  v10 = savedAggregateData;
  if (savedAggregateData)
  {
    v11 = savedAggregateData;
  }

  else
  {
    v12 = [HMDMediaGroupsAggregateData alloc];
    v11 = [(HMDMediaGroupsAggregateData *)v12 initWithDestinations:MEMORY[0x277CBEBF8] destinationControllersData:MEMORY[0x277CBEBF8]];
  }

  v13 = v11;

  v14 = [(HMDMediaGroupsAggregateData *)v13 mutableCopy];
  groups = [v14 groups];
  v16 = [groups arrayByAddingObject:groupCopy];
  [v14 setGroups:v16];

  [(HMDMediaGroupsStageManager *)selfCopy saveAggregateData:v14];
  v17 = *MEMORY[0x277D85DE8];
}

- (void)saveDestinations:(id)destinations
{
  v22 = *MEMORY[0x277D85DE8];
  destinationsCopy = destinations;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v8;
    v20 = 2112;
    v21 = destinationsCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Saving destinations: %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  savedAggregateData = [(HMDMediaGroupsStageManager *)selfCopy savedAggregateData];
  v10 = savedAggregateData;
  if (savedAggregateData)
  {
    v11 = savedAggregateData;
  }

  else
  {
    v12 = [HMDMediaGroupsAggregateData alloc];
    v11 = [(HMDMediaGroupsAggregateData *)v12 initWithDestinations:MEMORY[0x277CBEBF8] destinationControllersData:MEMORY[0x277CBEBF8]];
  }

  v13 = v11;

  v14 = [(HMDMediaGroupsAggregateData *)v13 mutableCopy];
  destinations = [v14 destinations];
  v16 = [destinations arrayByAddingObjectsFromArray:destinationsCopy];
  [v14 setDestinations:v16];

  [(HMDMediaGroupsStageManager *)selfCopy saveAggregateData:v14];
  v17 = *MEMORY[0x277D85DE8];
}

- (void)saveDestinationControllerData:(id)data
{
  v22 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v8;
    v20 = 2112;
    v21 = dataCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Saving destination controller data: %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  savedAggregateData = [(HMDMediaGroupsStageManager *)selfCopy savedAggregateData];
  v10 = savedAggregateData;
  if (savedAggregateData)
  {
    v11 = savedAggregateData;
  }

  else
  {
    v12 = [HMDMediaGroupsAggregateData alloc];
    v11 = [(HMDMediaGroupsAggregateData *)v12 initWithDestinations:MEMORY[0x277CBEBF8] destinationControllersData:MEMORY[0x277CBEBF8]];
  }

  v13 = v11;

  v14 = [(HMDMediaGroupsAggregateData *)v13 mutableCopy];
  destinationControllersData = [v14 destinationControllersData];
  v16 = [destinationControllersData arrayByAddingObject:dataCopy];
  [v14 setDestinationControllersData:v16];

  [(HMDMediaGroupsStageManager *)selfCopy saveAggregateData:v14];
  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasSavedIdentifier
{
  v18 = *MEMORY[0x277D85DE8];
  userDefaults = [(HMDMediaGroupsStageManager *)self userDefaults];
  v4 = [userDefaults stringForKey:@"HMDMediaGroupsStageManagerIdentifierKey"];

  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v4];
    if (v5)
    {
      identifier = [(HMDMediaGroupsStageManager *)self identifier];
      v7 = [v5 hmf_isEqualToUUID:identifier];
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      selfCopy = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v14 = 138543618;
        v15 = v11;
        v16 = 2112;
        v17 = v4;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Failed to decode identifier: %@", &v14, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)savedAggregateData
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(HMDMediaGroupsStageManager *)self hasSavedIdentifier])
  {
    userDefaults = [(HMDMediaGroupsStageManager *)self userDefaults];
    v4 = [userDefaults objectForKey:@"HMDMediaGroupsStageManagerAggregatedDataKey"];

    if (v4)
    {
      v5 = [[HMDMediaGroupsAggregateData alloc] initWithProtoBufferData:v4];
      v6 = v5;
      if (v5)
      {
        v7 = v5;
      }

      else
      {
        v8 = objc_autoreleasePoolPush();
        selfCopy = self;
        v10 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = HMFGetLogIdentifier();
          v14 = 138543618;
          v15 = v11;
          v16 = 2112;
          v17 = v4;
          _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to saved aggregate data due to unable to decode data: %@", &v14, 0x16u);
        }

        objc_autoreleasePoolPop(v8);
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)saveIdentifier
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    identifier = [(HMDMediaGroupsStageManager *)selfCopy identifier];
    v12 = 138543618;
    v13 = v6;
    v14 = 2112;
    v15 = identifier;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Saving identifier: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  userDefaults = [(HMDMediaGroupsStageManager *)selfCopy userDefaults];
  identifier2 = [(HMDMediaGroupsStageManager *)selfCopy identifier];
  uUIDString = [identifier2 UUIDString];
  [userDefaults setObject:uUIDString forKey:@"HMDMediaGroupsStageManagerIdentifierKey"];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)saveAggregateData:(id)data
{
  v16 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = dataCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Saving aggregate data: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDMediaGroupsStageManager *)selfCopy saveIdentifier];
  userDefaults = [(HMDMediaGroupsStageManager *)selfCopy userDefaults];
  encodeToProtoBufferData = [dataCopy encodeToProtoBufferData];
  [userDefaults setObject:encodeToProtoBufferData forKey:@"HMDMediaGroupsStageManagerAggregatedDataKey"];

  v11 = *MEMORY[0x277D85DE8];
}

- (id)transformedDestinationForLegacyMediaSystem:(id)system role:(unint64_t)role
{
  v29 = *MEMORY[0x277D85DE8];
  systemCopy = system;
  components = [systemCopy components];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __78__HMDMediaGroupsStageManager_transformedDestinationForLegacyMediaSystem_role___block_invoke;
  v22[3] = &__block_descriptor_40_e33_B16__0__HMDMediaSystemComponent_8l;
  v22[4] = role;
  v8 = [components na_firstObjectPassingTest:v22];

  accessory = [v8 accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = accessory;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  audioDestination = [v11 audioDestination];
  v13 = audioDestination;
  if (audioDestination)
  {
    v14 = [audioDestination mutableCopy];
    uuid = [systemCopy uuid];
    [v14 setAudioGroupIdentifier:uuid];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543874;
      v24 = v19;
      v25 = 2112;
      v26 = v8;
      v27 = 2112;
      v28 = accessory;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to get destination from component: %@ accessory: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
    v14 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v14;
}

BOOL __78__HMDMediaGroupsStageManager_transformedDestinationForLegacyMediaSystem_role___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 role];
  v4 = [v3 type] == *(a1 + 32);

  return v4;
}

- (void)saveDataForLegacyMediaSystem:(id)system
{
  v49 = *MEMORY[0x277D85DE8];
  systemCopy = system;
  v5 = [(HMDMediaGroupsStageManager *)self transformedDestinationForLegacyMediaSystem:systemCopy role:2];
  v6 = [(HMDMediaGroupsStageManager *)self transformedDestinationForLegacyMediaSystem:systemCopy role:1];
  audioDestination = [systemCopy audioDestination];
  if (v5 && v6)
  {
    configuredName = [systemCopy configuredName];
    v9 = configuredName;
    if (configuredName)
    {
      name = configuredName;
    }

    else
    {
      name = [systemCopy name];
    }

    v39 = name;
    audioDestination2 = [systemCopy audioDestination];
    audioGroupIdentifier = [audioDestination2 audioGroupIdentifier];

    uniqueIdentifier = [v6 uniqueIdentifier];
    uniqueIdentifier2 = [v5 uniqueIdentifier];
    home = [systemCopy home];
    uuid = [home uuid];

    if (uuid && v39)
    {
      v34 = uuid;
      v19 = audioDestination;
      v20 = objc_alloc(MEMORY[0x277CD1C08]);
      [systemCopy uuid];
      v21 = v35 = uniqueIdentifier;
      v23 = uniqueIdentifier2;
      v22 = audioGroupIdentifier;
      v24 = v20;
      audioDestination = v19;
      v25 = [v24 initWithIdentifier:v21 parentIdentifier:v34 name:v39 defaultName:v9 == 0 associatedGroupIdentifier:audioGroupIdentifier leftDestinationIdentifier:v35 rightDestinationIdentifier:uniqueIdentifier2];

      v40[0] = v6;
      v40[1] = v5;
      v40[2] = audioDestination;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:3];
      [(HMDMediaGroupsStageManager *)self saveDestinations:v26];

      uniqueIdentifier = v35;
      [(HMDMediaGroupsStageManager *)self saveGroup:v25];

      uuid = v34;
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      selfCopy = self;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v36 = v27;
        v30 = uniqueIdentifier;
        v32 = v31 = audioDestination;
        *buf = 138544130;
        v42 = v32;
        v43 = 2112;
        v44 = uuid;
        v45 = 2112;
        v46 = v39;
        v47 = 2112;
        v48 = systemCopy;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to stage data due to missing home identifier: %@ name: %@ for media system: %@", buf, 0x2Au);

        audioDestination = v31;
        uniqueIdentifier = v30;
        v27 = v36;
      }

      objc_autoreleasePoolPop(v27);
      v23 = uniqueIdentifier2;
      v22 = audioGroupIdentifier;
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v42 = v14;
      v43 = 2112;
      v44 = systemCopy;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to stage data due to missing destinations for media system: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)saveAssociatedGroupDataForCurrentLegacyAppleTVAccessory:(id)accessory
{
  v30 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  audioDestinationControllerData = [accessoryCopy audioDestinationControllerData];
  destinationIdentifier = [audioDestinationControllerData destinationIdentifier];
  if (destinationIdentifier)
  {
    home = [accessoryCopy home];
    v8 = home;
    if (home)
    {
      appleMediaAccessories = [home appleMediaAccessories];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __86__HMDMediaGroupsStageManager_saveAssociatedGroupDataForCurrentLegacyAppleTVAccessory___block_invoke;
      v22[3] = &unk_27868A8C8;
      v10 = destinationIdentifier;
      v23 = v10;
      selfCopy = self;
      v11 = audioDestinationControllerData;
      v25 = v11;
      [appleMediaAccessories na_each:v22];

      mediaSystems = [v8 mediaSystems];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __86__HMDMediaGroupsStageManager_saveAssociatedGroupDataForCurrentLegacyAppleTVAccessory___block_invoke_2;
      v18[3] = &unk_27868A8F0;
      v19 = v10;
      selfCopy2 = self;
      v21 = v11;
      [mediaSystems na_each:v18];
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v27 = v16;
        v28 = 2112;
        v29 = accessoryCopy;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed stage associated group data due to no home for current accessory: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __86__HMDMediaGroupsStageManager_saveAssociatedGroupDataForCurrentLegacyAppleTVAccessory___block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [a2 audioDestination];
  v4 = [v3 uniqueIdentifier];
  v5 = [v4 hmf_isEqualToUUID:*(a1 + 32)];

  if (v5)
  {
    [*(a1 + 40) saveDestinationControllerData:*(a1 + 48)];
    v6 = *(a1 + 40);
    v9[0] = v3;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    [v6 saveDestinations:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __86__HMDMediaGroupsStageManager_saveAssociatedGroupDataForCurrentLegacyAppleTVAccessory___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 audioDestination];
  v4 = [v3 uniqueIdentifier];
  v5 = [v4 hmf_isEqualToUUID:*(a1 + 32)];

  if (v5)
  {
    [*(a1 + 40) saveDestinationControllerData:*(a1 + 48)];
    [*(a1 + 40) saveDataForLegacyMediaSystem:v6];
  }
}

- (void)saveAssociatedGroupDataForCurrentLegacyHomePodAccessory:(id)accessory
{
  v33 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  audioDestination = [accessoryCopy audioDestination];
  home = [accessoryCopy home];
  v7 = home;
  if (audioDestination && home)
  {
    v8 = [home mediaSystemForAppleMediaAccessory:accessoryCopy];
    v9 = v8;
    if (v8)
    {
      audioDestination2 = [v8 audioDestination];
      if (!audioDestination2)
      {
        v19 = objc_autoreleasePoolPush();
        selfCopy = self;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543618;
          v26 = v22;
          v27 = 2112;
          v28 = v9;
          _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to stage associated data due to no root destination identifier from media system: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v19);
        goto LABEL_17;
      }

      v11 = audioDestination2;
      v12 = [v7 audioDestinationControllerDataForDestination:audioDestination2];
      [(HMDMediaGroupsStageManager *)self saveDataForLegacyMediaSystem:v9];
      if (!v12)
      {
LABEL_13:

LABEL_17:
        goto LABEL_18;
      }
    }

    else
    {
      v11 = audioDestination;
      v17 = [v7 audioDestinationControllerDataForDestination:v11];
      if (!v17)
      {
        goto LABEL_13;
      }

      v12 = v17;
      v24 = v11;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
      [(HMDMediaGroupsStageManager *)self saveDestinations:v18];
    }

    [(HMDMediaGroupsStageManager *)self saveDestinationControllerData:v12];

    goto LABEL_13;
  }

  v13 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138544130;
    v26 = v16;
    v27 = 2112;
    v28 = audioDestination;
    v29 = 2112;
    v30 = v7;
    v31 = 2112;
    v32 = accessoryCopy;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to stage associated data due to no destination: %@ home: %@ for the current HomePod accessory: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v13);
LABEL_18:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)saveAssociatedGroupDataForLegacyCurrentAccessory:(id)accessory
{
  v14 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  if ([accessoryCopy isHomePod])
  {
    [(HMDMediaGroupsStageManager *)self saveAssociatedGroupDataForCurrentLegacyHomePodAccessory:accessoryCopy];
  }

  else if ([accessoryCopy isAppleTV])
  {
    [(HMDMediaGroupsStageManager *)self saveAssociatedGroupDataForCurrentLegacyAppleTVAccessory:accessoryCopy];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = accessoryCopy;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to save associated group data due to unknown category for current accessory: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)commitAggregateData:(id)data
{
  v14 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = dataCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Committing aggregate data: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDMediaGroupsStageManager *)selfCopy setCommittedAggregateData:dataCopy];
  [(HMDMediaGroupsStageManager *)selfCopy refreshManager];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)notifyOfUpdatedAggregateData
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    lastNotifiedAggregateData = [(HMDMediaGroupsStageManager *)selfCopy lastNotifiedAggregateData];
    v15 = 138543618;
    v16 = v6;
    v17 = 2112;
    v18 = lastNotifiedAggregateData;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Notifying of updated aggregate data: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  delegate = [(HMDMediaGroupsStageManager *)selfCopy delegate];
  v9 = delegate;
  if (delegate)
  {
    [delegate didUpdateAggregateDataForMediaGroupsStageManager:selfCopy];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = selfCopy;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify of updated aggregate data due to no delegate", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)transformedGroups
{
  committedAggregateData = [(HMDMediaGroupsStageManager *)self committedAggregateData];
  groups = [committedAggregateData groups];

  stagedAggregateData = [(HMDMediaGroupsStageManager *)self stagedAggregateData];
  value = [stagedAggregateData value];
  groups2 = [value groups];

  if (groups2)
  {
    v8 = addOrReplaceElements(groups2, groups, &__block_literal_global_15_286386);
  }

  else
  {
    v8 = groups;
  }

  v9 = v8;

  return v9;
}

uint64_t __47__HMDMediaGroupsStageManager_transformedGroups__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 identifier];
  v6 = [v4 identifier];

  v7 = [v5 hmf_isEqualToUUID:v6];
  return v7;
}

- (id)transformedDestinationControllersData
{
  stagedAggregateData = [(HMDMediaGroupsStageManager *)self stagedAggregateData];
  value = [stagedAggregateData value];
  destinationControllersData = [value destinationControllersData];

  stagedUnpairedCurrentDestinationControllerIdentifier = [(HMDMediaGroupsStageManager *)self stagedUnpairedCurrentDestinationControllerIdentifier];
  committedAggregateData = [(HMDMediaGroupsStageManager *)self committedAggregateData];
  destinationControllersData2 = [committedAggregateData destinationControllersData];

  if (destinationControllersData)
  {
    v9 = addOrReplaceElements(destinationControllersData, destinationControllersData2, &__block_literal_global_11_286391);

    destinationControllersData2 = v9;
  }

  if (stagedUnpairedCurrentDestinationControllerIdentifier)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__HMDMediaGroupsStageManager_transformedDestinationControllersData__block_invoke_2;
    v12[3] = &unk_27868A880;
    v13 = stagedUnpairedCurrentDestinationControllerIdentifier;
    v10 = [destinationControllersData2 na_map:v12];

    destinationControllersData2 = v10;
  }

  return destinationControllersData2;
}

id __67__HMDMediaGroupsStageManager_transformedDestinationControllersData__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  if ([v4 hmf_isEqualToUUID:*(a1 + 32)])
  {
    v5 = [v3 destinationIdentifier];

    if (v5)
    {
      v6 = [v3 mutableCopy];
      [v6 setDestinationIdentifier:0];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v6 = v3;
LABEL_6:

  return v6;
}

uint64_t __67__HMDMediaGroupsStageManager_transformedDestinationControllersData__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 identifier];
  v6 = [v4 identifier];

  v7 = [v5 hmf_isEqualToUUID:v6];
  return v7;
}

- (id)transformedDestinations
{
  committedAggregateData = [(HMDMediaGroupsStageManager *)self committedAggregateData];
  destinations = [committedAggregateData destinations];

  stagedAggregateData = [(HMDMediaGroupsStageManager *)self stagedAggregateData];
  value = [stagedAggregateData value];
  destinations2 = [value destinations];

  if (destinations2)
  {
    v8 = addOrReplaceElements(destinations2, destinations, &__block_literal_global_286395);
  }

  else
  {
    v8 = destinations;
  }

  v9 = v8;

  return v9;
}

uint64_t __53__HMDMediaGroupsStageManager_transformedDestinations__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 uniqueIdentifier];
  v6 = [v4 uniqueIdentifier];

  v7 = [v5 hmf_isEqualToUUID:v6];
  return v7;
}

- (void)refreshManager
{
  v20 = *MEMORY[0x277D85DE8];
  committedAggregateData = [(HMDMediaGroupsStageManager *)self committedAggregateData];
  v4 = [committedAggregateData mutableCopy];

  transformedDestinations = [(HMDMediaGroupsStageManager *)self transformedDestinations];
  [v4 setDestinations:transformedDestinations];

  transformedDestinationControllersData = [(HMDMediaGroupsStageManager *)self transformedDestinationControllersData];
  [v4 setDestinationControllersData:transformedDestinationControllersData];

  transformedGroups = [(HMDMediaGroupsStageManager *)self transformedGroups];
  [v4 setGroups:transformedGroups];

  lastNotifiedAggregateData = [(HMDMediaGroupsStageManager *)self lastNotifiedAggregateData];
  v9 = [lastNotifiedAggregateData isEqual:v4];

  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      lastNotifiedAggregateData2 = [(HMDMediaGroupsStageManager *)selfCopy lastNotifiedAggregateData];
      v16 = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = lastNotifiedAggregateData2;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Refresh resulted in no change to aggregate data: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  else
  {
    [(HMDMediaGroupsStageManager *)self setLastNotifiedAggregateData:v4];
    [(HMDMediaGroupsStageManager *)self notifyOfUpdatedAggregateData];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)unstageNullDestinationForCurrentDestinationController
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Unstage null destination for current destination controller", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDMediaGroupsStageManager *)selfCopy setStagedUnpairedCurrentDestinationControllerIdentifier:0];
  [(HMDMediaGroupsStageManager *)selfCopy refreshManager];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)stageNullDestinationForCurrentDestinationControllerIdentifier:(id)identifier
{
  v14 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = identifierCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Stage null destination for current destination controller identifier: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDMediaGroupsStageManager *)selfCopy setStagedUnpairedCurrentDestinationControllerIdentifier:identifierCopy];
  [(HMDMediaGroupsStageManager *)selfCopy refreshManager];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)configure
{
  v16 = *MEMORY[0x277D85DE8];
  savedAggregateData = [(HMDMediaGroupsStageManager *)self savedAggregateData];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (savedAggregateData)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v8;
      v14 = 2112;
      v15 = savedAggregateData;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Configuring with staged aggregate data: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    stagedAggregateData = [(HMDMediaGroupsStageManager *)selfCopy stagedAggregateData];
    [stagedAggregateData stageValue:savedAggregateData withTimeout:300.0];

    [(HMDMediaGroupsStageManager *)selfCopy refreshManager];
    [(HMDMediaGroupsStageManager *)selfCopy clearSavedData];
  }

  else
  {
    if (v7)
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Configuring without staged data", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (HMDMediaGroupsStageManager)initWithIdentifier:(id)identifier userDefaults:(id)defaults
{
  identifierCopy = identifier;
  defaultsCopy = defaults;
  if (defaultsCopy)
  {
    v9 = defaultsCopy;
    v10 = [HMDMediaGroupsAggregateData alloc];
    v11 = [(HMDMediaGroupsAggregateData *)v10 initWithDestinations:MEMORY[0x277CBEBF8] destinationControllersData:MEMORY[0x277CBEBF8]];
    v20.receiver = self;
    v20.super_class = HMDMediaGroupsStageManager;
    v12 = [(HMDMediaGroupsStageManager *)&v20 init];
    v13 = v12;
    if (v12)
    {
      objc_storeStrong(&v12->_identifier, identifier);
      objc_storeStrong(&v13->_userDefaults, defaults);
      objc_storeStrong(&v13->_committedAggregateData, v11);
      objc_storeStrong(&v13->_lastNotifiedAggregateData, v11);
      v14 = [objc_alloc(MEMORY[0x277D0F900]) initWithValue:0];
      stagedAggregateData = v13->_stagedAggregateData;
      v13->_stagedAggregateData = v14;

      [(HMFStagedValue *)v13->_stagedAggregateData setDelegate:v13];
      stagedUnpairedCurrentDestinationControllerIdentifier = v13->_stagedUnpairedCurrentDestinationControllerIdentifier;
      v13->_stagedUnpairedCurrentDestinationControllerIdentifier = 0;
    }

    return v13;
  }

  else
  {
    v18 = _HMFPreconditionFailure();
    return +[(HMDMediaGroupsStageManager *)v18];
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t24_286413 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t24_286413, &__block_literal_global_25_286414);
  }

  v3 = logCategory__hmf_once_v25_286415;

  return v3;
}

void __41__HMDMediaGroupsStageManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v25_286415;
  logCategory__hmf_once_v25_286415 = v1;
}

@end