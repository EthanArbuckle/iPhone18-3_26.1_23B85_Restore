@interface HMDMediaGroupsStageManager
+ (id)logCategory;
- (BOOL)hasSavedIdentifier;
- (HMDMediaGroupsStageManager)initWithIdentifier:(id)a3 userDefaults:(id)a4;
- (HMDMediaGroupsStageManagerDelegate)delegate;
- (id)logIdentifier;
- (id)savedAggregateData;
- (id)transformedDestinationControllersData;
- (id)transformedDestinationForLegacyMediaSystem:(id)a3 role:(unint64_t)a4;
- (id)transformedDestinations;
- (id)transformedGroups;
- (void)clearSavedData;
- (void)commitAggregateData:(id)a3;
- (void)configure;
- (void)notifyOfUpdatedAggregateData;
- (void)refreshManager;
- (void)saveAggregateData:(id)a3;
- (void)saveAssociatedGroupDataForCurrentLegacyAppleTVAccessory:(id)a3;
- (void)saveAssociatedGroupDataForCurrentLegacyHomePodAccessory:(id)a3;
- (void)saveAssociatedGroupDataForLegacyCurrentAccessory:(id)a3;
- (void)saveDataForLegacyMediaSystem:(id)a3;
- (void)saveDestinationControllerData:(id)a3;
- (void)saveDestinations:(id)a3;
- (void)saveGroup:(id)a3;
- (void)saveIdentifier;
- (void)stageNullDestinationForCurrentDestinationControllerIdentifier:(id)a3;
- (void)stagedValue:(id)a3 didExpireValue:(id)a4;
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
  v2 = [(HMDMediaGroupsStageManager *)self identifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)stagedValue:(id)a3 didExpireValue:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling expired staged aggregate data: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMDMediaGroupsStageManager *)v9 refreshManager];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)clearSavedData
{
  v3 = [(HMDMediaGroupsStageManager *)self userDefaults];
  [v3 removeObjectForKey:@"HMDMediaGroupsStageManagerIdentifierKey"];

  v4 = [(HMDMediaGroupsStageManager *)self userDefaults];
  [v4 removeObjectForKey:@"HMDMediaGroupsStageManagerAggregatedDataKey"];
}

- (void)saveGroup:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v8;
    v20 = 2112;
    v21 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Saving group: %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDMediaGroupsStageManager *)v6 savedAggregateData];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = [HMDMediaGroupsAggregateData alloc];
    v11 = [(HMDMediaGroupsAggregateData *)v12 initWithDestinations:MEMORY[0x277CBEBF8] destinationControllersData:MEMORY[0x277CBEBF8]];
  }

  v13 = v11;

  v14 = [(HMDMediaGroupsAggregateData *)v13 mutableCopy];
  v15 = [v14 groups];
  v16 = [v15 arrayByAddingObject:v4];
  [v14 setGroups:v16];

  [(HMDMediaGroupsStageManager *)v6 saveAggregateData:v14];
  v17 = *MEMORY[0x277D85DE8];
}

- (void)saveDestinations:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v8;
    v20 = 2112;
    v21 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Saving destinations: %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDMediaGroupsStageManager *)v6 savedAggregateData];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = [HMDMediaGroupsAggregateData alloc];
    v11 = [(HMDMediaGroupsAggregateData *)v12 initWithDestinations:MEMORY[0x277CBEBF8] destinationControllersData:MEMORY[0x277CBEBF8]];
  }

  v13 = v11;

  v14 = [(HMDMediaGroupsAggregateData *)v13 mutableCopy];
  v15 = [v14 destinations];
  v16 = [v15 arrayByAddingObjectsFromArray:v4];
  [v14 setDestinations:v16];

  [(HMDMediaGroupsStageManager *)v6 saveAggregateData:v14];
  v17 = *MEMORY[0x277D85DE8];
}

- (void)saveDestinationControllerData:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v8;
    v20 = 2112;
    v21 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Saving destination controller data: %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDMediaGroupsStageManager *)v6 savedAggregateData];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = [HMDMediaGroupsAggregateData alloc];
    v11 = [(HMDMediaGroupsAggregateData *)v12 initWithDestinations:MEMORY[0x277CBEBF8] destinationControllersData:MEMORY[0x277CBEBF8]];
  }

  v13 = v11;

  v14 = [(HMDMediaGroupsAggregateData *)v13 mutableCopy];
  v15 = [v14 destinationControllersData];
  v16 = [v15 arrayByAddingObject:v4];
  [v14 setDestinationControllersData:v16];

  [(HMDMediaGroupsStageManager *)v6 saveAggregateData:v14];
  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasSavedIdentifier
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(HMDMediaGroupsStageManager *)self userDefaults];
  v4 = [v3 stringForKey:@"HMDMediaGroupsStageManagerIdentifierKey"];

  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v4];
    if (v5)
    {
      v6 = [(HMDMediaGroupsStageManager *)self identifier];
      v7 = [v5 hmf_isEqualToUUID:v6];
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v9 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v14 = 138543618;
        v15 = v11;
        v16 = 2112;
        v17 = v4;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Failed to decode identifier: %@", &v14, 0x16u);
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
    v3 = [(HMDMediaGroupsStageManager *)self userDefaults];
    v4 = [v3 objectForKey:@"HMDMediaGroupsStageManagerAggregatedDataKey"];

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
        v9 = self;
        v10 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = HMFGetLogIdentifier();
          v14 = 138543618;
          v15 = v11;
          v16 = 2112;
          v17 = v4;
          _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to saved aggregate data due to unable to decode data: %@", &v14, 0x16u);
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
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [(HMDMediaGroupsStageManager *)v4 identifier];
    v12 = 138543618;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Saving identifier: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = [(HMDMediaGroupsStageManager *)v4 userDefaults];
  v9 = [(HMDMediaGroupsStageManager *)v4 identifier];
  v10 = [v9 UUIDString];
  [v8 setObject:v10 forKey:@"HMDMediaGroupsStageManagerIdentifierKey"];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)saveAggregateData:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Saving aggregate data: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDMediaGroupsStageManager *)v6 saveIdentifier];
  v9 = [(HMDMediaGroupsStageManager *)v6 userDefaults];
  v10 = [v4 encodeToProtoBufferData];
  [v9 setObject:v10 forKey:@"HMDMediaGroupsStageManagerAggregatedDataKey"];

  v11 = *MEMORY[0x277D85DE8];
}

- (id)transformedDestinationForLegacyMediaSystem:(id)a3 role:(unint64_t)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 components];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __78__HMDMediaGroupsStageManager_transformedDestinationForLegacyMediaSystem_role___block_invoke;
  v22[3] = &__block_descriptor_40_e33_B16__0__HMDMediaSystemComponent_8l;
  v22[4] = a4;
  v8 = [v7 na_firstObjectPassingTest:v22];

  v9 = [v8 accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [v11 audioDestination];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 mutableCopy];
    v15 = [v6 uuid];
    [v14 setAudioGroupIdentifier:v15];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543874;
      v24 = v19;
      v25 = 2112;
      v26 = v8;
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to get destination from component: %@ accessory: %@", buf, 0x20u);
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

- (void)saveDataForLegacyMediaSystem:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDMediaGroupsStageManager *)self transformedDestinationForLegacyMediaSystem:v4 role:2];
  v6 = [(HMDMediaGroupsStageManager *)self transformedDestinationForLegacyMediaSystem:v4 role:1];
  v7 = [v4 audioDestination];
  if (v5 && v6)
  {
    v8 = [v4 configuredName];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [v4 name];
    }

    v39 = v10;
    v15 = [v4 audioDestination];
    v38 = [v15 audioGroupIdentifier];

    v16 = [v6 uniqueIdentifier];
    v37 = [v5 uniqueIdentifier];
    v17 = [v4 home];
    v18 = [v17 uuid];

    if (v18 && v39)
    {
      v34 = v18;
      v19 = v7;
      v20 = objc_alloc(MEMORY[0x277CD1C08]);
      [v4 uuid];
      v21 = v35 = v16;
      v23 = v37;
      v22 = v38;
      v24 = v20;
      v7 = v19;
      v25 = [v24 initWithIdentifier:v21 parentIdentifier:v34 name:v39 defaultName:v9 == 0 associatedGroupIdentifier:v38 leftDestinationIdentifier:v35 rightDestinationIdentifier:v37];

      v40[0] = v6;
      v40[1] = v5;
      v40[2] = v7;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:3];
      [(HMDMediaGroupsStageManager *)self saveDestinations:v26];

      v16 = v35;
      [(HMDMediaGroupsStageManager *)self saveGroup:v25];

      v18 = v34;
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      v28 = self;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v36 = v27;
        v30 = v16;
        v32 = v31 = v7;
        *buf = 138544130;
        v42 = v32;
        v43 = 2112;
        v44 = v18;
        v45 = 2112;
        v46 = v39;
        v47 = 2112;
        v48 = v4;
        _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to stage data due to missing home identifier: %@ name: %@ for media system: %@", buf, 0x2Au);

        v7 = v31;
        v16 = v30;
        v27 = v36;
      }

      objc_autoreleasePoolPop(v27);
      v23 = v37;
      v22 = v38;
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v42 = v14;
      v43 = 2112;
      v44 = v4;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to stage data due to missing destinations for media system: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)saveAssociatedGroupDataForCurrentLegacyAppleTVAccessory:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 audioDestinationControllerData];
  v6 = [v5 destinationIdentifier];
  if (v6)
  {
    v7 = [v4 home];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 appleMediaAccessories];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __86__HMDMediaGroupsStageManager_saveAssociatedGroupDataForCurrentLegacyAppleTVAccessory___block_invoke;
      v22[3] = &unk_279726628;
      v10 = v6;
      v23 = v10;
      v24 = self;
      v11 = v5;
      v25 = v11;
      [v9 na_each:v22];

      v12 = [v8 mediaSystems];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __86__HMDMediaGroupsStageManager_saveAssociatedGroupDataForCurrentLegacyAppleTVAccessory___block_invoke_2;
      v18[3] = &unk_279726650;
      v19 = v10;
      v20 = self;
      v21 = v11;
      [v12 na_each:v18];
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v27 = v16;
        v28 = 2112;
        v29 = v4;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed stage associated group data due to no home for current accessory: %@", buf, 0x16u);
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

- (void)saveAssociatedGroupDataForCurrentLegacyHomePodAccessory:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 audioDestination];
  v6 = [v4 home];
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [v6 mediaSystemForAppleMediaAccessory:v4];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 audioDestination];
      if (!v10)
      {
        v19 = objc_autoreleasePoolPush();
        v20 = self;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543618;
          v26 = v22;
          v27 = 2112;
          v28 = v9;
          _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to stage associated data due to no root destination identifier from media system: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v19);
        goto LABEL_17;
      }

      v11 = v10;
      v12 = [v7 audioDestinationControllerDataForDestination:v10];
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
      v11 = v5;
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
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138544130;
    v26 = v16;
    v27 = 2112;
    v28 = v5;
    v29 = 2112;
    v30 = v7;
    v31 = 2112;
    v32 = v4;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to stage associated data due to no destination: %@ home: %@ for the current HomePod accessory: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v13);
LABEL_18:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)saveAssociatedGroupDataForLegacyCurrentAccessory:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isHomePod])
  {
    [(HMDMediaGroupsStageManager *)self saveAssociatedGroupDataForCurrentLegacyHomePodAccessory:v4];
  }

  else if ([v4 isAppleTV])
  {
    [(HMDMediaGroupsStageManager *)self saveAssociatedGroupDataForCurrentLegacyAppleTVAccessory:v4];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to save associated group data due to unknown category for current accessory: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)commitAggregateData:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Committing aggregate data: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDMediaGroupsStageManager *)v6 setCommittedAggregateData:v4];
  [(HMDMediaGroupsStageManager *)v6 refreshManager];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)notifyOfUpdatedAggregateData
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [(HMDMediaGroupsStageManager *)v4 lastNotifiedAggregateData];
    v15 = 138543618;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Notifying of updated aggregate data: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = [(HMDMediaGroupsStageManager *)v4 delegate];
  v9 = v8;
  if (v8)
  {
    [v8 didUpdateAggregateDataForMediaGroupsStageManager:v4];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = v4;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify of updated aggregate data due to no delegate", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)transformedGroups
{
  v3 = [(HMDMediaGroupsStageManager *)self committedAggregateData];
  v4 = [v3 groups];

  v5 = [(HMDMediaGroupsStageManager *)self stagedAggregateData];
  v6 = [v5 value];
  v7 = [v6 groups];

  if (v7)
  {
    v8 = addOrReplaceElements(v7, v4, &__block_literal_global_15_49125);
  }

  else
  {
    v8 = v4;
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
  v3 = [(HMDMediaGroupsStageManager *)self stagedAggregateData];
  v4 = [v3 value];
  v5 = [v4 destinationControllersData];

  v6 = [(HMDMediaGroupsStageManager *)self stagedUnpairedCurrentDestinationControllerIdentifier];
  v7 = [(HMDMediaGroupsStageManager *)self committedAggregateData];
  v8 = [v7 destinationControllersData];

  if (v5)
  {
    v9 = addOrReplaceElements(v5, v8, &__block_literal_global_11_49130);

    v8 = v9;
  }

  if (v6)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__HMDMediaGroupsStageManager_transformedDestinationControllersData__block_invoke_2;
    v12[3] = &unk_2797265E0;
    v13 = v6;
    v10 = [v8 na_map:v12];

    v8 = v10;
  }

  return v8;
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
  v3 = [(HMDMediaGroupsStageManager *)self committedAggregateData];
  v4 = [v3 destinations];

  v5 = [(HMDMediaGroupsStageManager *)self stagedAggregateData];
  v6 = [v5 value];
  v7 = [v6 destinations];

  if (v7)
  {
    v8 = addOrReplaceElements(v7, v4, &__block_literal_global_49134);
  }

  else
  {
    v8 = v4;
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
  v3 = [(HMDMediaGroupsStageManager *)self committedAggregateData];
  v4 = [v3 mutableCopy];

  v5 = [(HMDMediaGroupsStageManager *)self transformedDestinations];
  [v4 setDestinations:v5];

  v6 = [(HMDMediaGroupsStageManager *)self transformedDestinationControllersData];
  [v4 setDestinationControllersData:v6];

  v7 = [(HMDMediaGroupsStageManager *)self transformedGroups];
  [v4 setGroups:v7];

  v8 = [(HMDMediaGroupsStageManager *)self lastNotifiedAggregateData];
  v9 = [v8 isEqual:v4];

  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [(HMDMediaGroupsStageManager *)v11 lastNotifiedAggregateData];
      v16 = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Refresh resulted in no change to aggregate data: %@", &v16, 0x16u);
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
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Unstage null destination for current destination controller", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDMediaGroupsStageManager *)v4 setStagedUnpairedCurrentDestinationControllerIdentifier:0];
  [(HMDMediaGroupsStageManager *)v4 refreshManager];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)stageNullDestinationForCurrentDestinationControllerIdentifier:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Stage null destination for current destination controller identifier: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDMediaGroupsStageManager *)v6 setStagedUnpairedCurrentDestinationControllerIdentifier:v4];
  [(HMDMediaGroupsStageManager *)v6 refreshManager];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)configure
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HMDMediaGroupsStageManager *)self savedAggregateData];
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v8;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Configuring with staged aggregate data: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v9 = [(HMDMediaGroupsStageManager *)v5 stagedAggregateData];
    [v9 stageValue:v3 withTimeout:300.0];

    [(HMDMediaGroupsStageManager *)v5 refreshManager];
    [(HMDMediaGroupsStageManager *)v5 clearSavedData];
  }

  else
  {
    if (v7)
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Configuring without staged data", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (HMDMediaGroupsStageManager)initWithIdentifier:(id)a3 userDefaults:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = v8;
    v10 = [HMDMediaGroupsAggregateData alloc];
    v11 = [(HMDMediaGroupsAggregateData *)v10 initWithDestinations:MEMORY[0x277CBEBF8] destinationControllersData:MEMORY[0x277CBEBF8]];
    v20.receiver = self;
    v20.super_class = HMDMediaGroupsStageManager;
    v12 = [(HMDMediaGroupsStageManager *)&v20 init];
    v13 = v12;
    if (v12)
    {
      objc_storeStrong(&v12->_identifier, a3);
      objc_storeStrong(&v13->_userDefaults, a4);
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
  if (logCategory__hmf_once_t24_49151 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t24_49151, &__block_literal_global_25_49152);
  }

  v3 = logCategory__hmf_once_v25_49153;

  return v3;
}

uint64_t __41__HMDMediaGroupsStageManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v25_49153;
  logCategory__hmf_once_v25_49153 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end