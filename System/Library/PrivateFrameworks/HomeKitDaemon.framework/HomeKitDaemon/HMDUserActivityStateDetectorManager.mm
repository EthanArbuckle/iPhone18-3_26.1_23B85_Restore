@interface HMDUserActivityStateDetectorManager
+ (BOOL)shouldRunManagerForHome:(id)home;
+ (id)logCategory;
- (HMDUserActivityStateDetectorManager)initWithDataSource:(id)source;
- (HMDUserPresenceFeeder)presenceFeeder;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (id)filterEnabledContributors:(id)contributors;
- (id)logIdentifier;
- (id)makeUserActivityStateDetectorsWithContributorTypes:(id)types;
- (void)_updateConfigurationWithCompletionHandler:(id)handler;
- (void)_updateConfigurationWithEnabledContributors:(id)contributors completionHandler:(id)handler;
- (void)configure;
- (void)configurePresenceFeeder;
- (void)handleLocationAuthorizationChanged:(id)changed;
- (void)handlePrimaryResidentDidChangeNotification:(id)notification;
- (void)registerForNotifications;
- (void)setPresenceFeeder:(id)feeder;
- (void)storageDidUpdateEnabledContributors:(id)contributors;
- (void)unconfigure;
- (void)updateConfiguration;
@end

@implementation HMDUserActivityStateDetectorManager

- (id)logIdentifier
{
  dataSource = [(HMDUserActivityStateDetectorManager *)self dataSource];
  logIdentifier = [dataSource logIdentifier];

  return logIdentifier;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  detectors = [(HMDUserActivityStateDetectorManager *)self detectors];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__HMDUserActivityStateDetectorManager_dumpStateWithPrivacyLevel___block_invoke;
  v9[3] = &unk_27868A0F8;
  v7 = dictionary;
  v10 = v7;
  levelCopy = level;
  [detectors hmf_enumerateWithAutoreleasePoolUsingBlock:v9];

  return v7;
}

void __65__HMDUserActivityStateDetectorManager_dumpStateWithPrivacyLevel___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v6 = [v3 stringWithFormat:@"%@", objc_opt_class()];
  v5 = [v4 dumpStateWithPrivacyLevel:*(a1 + 40)];

  [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
}

- (void)storageDidUpdateEnabledContributors:(id)contributors
{
  contributorsCopy = contributors;
  dataSource = [(HMDUserActivityStateDetectorManager *)self dataSource];
  queue = [dataSource queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__HMDUserActivityStateDetectorManager_storageDidUpdateEnabledContributors___block_invoke;
  v8[3] = &unk_27868A750;
  v8[4] = self;
  v9 = contributorsCopy;
  v7 = contributorsCopy;
  dispatch_async(queue, v8);
}

- (void)handlePrimaryResidentDidChangeNotification:(id)notification
{
  v29 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  dataSource = [(HMDUserActivityStateDetectorManager *)self dataSource];
  currentPrimaryResident = [dataSource currentPrimaryResident];

  if (currentPrimaryResident)
  {
    if ([currentPrimaryResident supportsHomeActivityState])
    {
      presenceFeeder = [(HMDUserActivityStateDetectorManager *)self presenceFeeder];

      if (presenceFeeder)
      {
        v8 = objc_autoreleasePoolPush();
        selfCopy = self;
        v10 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v11 = HMFGetLogIdentifier();
          name = [notificationCopy name];
          v25 = 138543618;
          v26 = v11;
          v27 = 2112;
          v28 = name;
          _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Handling %@, removing presenceFeeder", &v25, 0x16u);
        }

        objc_autoreleasePoolPop(v8);
        [(HMDUserActivityStateDetectorManager *)selfCopy setPresenceFeeder:0];
      }
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = HMFGetLogIdentifier();
        name2 = [notificationCopy name];
        v25 = 138543618;
        v26 = v16;
        v27 = 2112;
        v28 = name2;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Handling %@, configuring presenceFeeder", &v25, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      [(HMDUserActivityStateDetectorManager *)selfCopy2 configurePresenceFeeder];
    }
  }

  v18 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    name3 = [notificationCopy name];
    v25 = 138543618;
    v26 = v21;
    v27 = 2112;
    v28 = name3;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Handling %@, sending reports", &v25, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  userActivityReportCoordinator = [(HMDUserActivityStateDetectorManager *)selfCopy3 userActivityReportCoordinator];
  [userActivityReportCoordinator sendCoordinatedReportsForReason:7];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)handleLocationAuthorizationChanged:(id)changed
{
  changedCopy = changed;
  dataSource = [(HMDUserActivityStateDetectorManager *)self dataSource];
  queue = [dataSource queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__HMDUserActivityStateDetectorManager_handleLocationAuthorizationChanged___block_invoke;
  v8[3] = &unk_27868A750;
  v9 = changedCopy;
  selfCopy = self;
  v7 = changedCopy;
  dispatch_async(queue, v8);
}

void __74__HMDUserActivityStateDetectorManager_handleLocationAuthorizationChanged___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 hmf_numberForKey:@"HMLocationAuthorizationKey"];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 40);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    [v3 integerValue];
    v8 = HMLocationAuthorizationAsString();
    v9 = [*(a1 + 32) userInfo];
    *buf = 138543874;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Handling location authorization changed notification : %@ / %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  if (v3)
  {
    v10 = [v3 integerValue];
    v11 = [*(a1 + 40) userActivityReportCoordinator];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __74__HMDUserActivityStateDetectorManager_handleLocationAuthorizationChanged___block_invoke_22;
    v17[3] = &unk_27868A0D0;
    v17[4] = *(a1 + 40);
    v17[5] = v10;
    [v11 beginCoordinationWithCompletion:v17];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 40);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@No location authorization key detected in the notification user info.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __74__HMDUserActivityStateDetectorManager_handleLocationAuthorizationChanged___block_invoke_22(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSource];
  v3 = [v2 queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __74__HMDUserActivityStateDetectorManager_handleLocationAuthorizationChanged___block_invoke_2;
  v5[3] = &unk_27868A0D0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v5[5] = v4;
  dispatch_async(v3, v5);
}

void __74__HMDUserActivityStateDetectorManager_handleLocationAuthorizationChanged___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v13 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Beginning the coordination for sending location auth change reports", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) detectors];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__HMDUserActivityStateDetectorManager_handleLocationAuthorizationChanged___block_invoke_23;
  v11[3] = &__block_descriptor_40_e45_v32__0__HMDUserActivityStateDetector_8Q16_B24l;
  v11[4] = *(a1 + 40);
  [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:v11];

  v7 = [*(a1 + 32) dataSource];
  v8 = [v7 queue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__HMDUserActivityStateDetectorManager_handleLocationAuthorizationChanged___block_invoke_2_24;
  v10[3] = &unk_27868A728;
  v10[4] = *(a1 + 32);
  dispatch_async(v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __74__HMDUserActivityStateDetectorManager_handleLocationAuthorizationChanged___block_invoke_2_24(uint64_t a1)
{
  v2 = [*(a1 + 32) userActivityReportCoordinator];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __74__HMDUserActivityStateDetectorManager_handleLocationAuthorizationChanged___block_invoke_3;
  v3[3] = &unk_27868A728;
  v3[4] = *(a1 + 32);
  [v2 endCoordinationWithReason:4 completion:v3];
}

void __74__HMDUserActivityStateDetectorManager_handleLocationAuthorizationChanged___block_invoke_3(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Sent all the reports from every detectors due to location auth change", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)registerForNotifications
{
  dataSource = [(HMDUserActivityStateDetectorManager *)self dataSource];
  notificationCenter = [dataSource notificationCenter];
  [notificationCenter addObserver:self selector:sel_handlePrimaryResidentDidChangeNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentGenerationIDNotification" object:0];

  dataSource2 = [(HMDUserActivityStateDetectorManager *)self dataSource];
  notificationCenter2 = [dataSource2 notificationCenter];
  [notificationCenter2 addObserver:self selector:sel_handleLocationAuthorizationChanged_ name:@"HMLocationAuthorizationChangedNotification" object:0];
}

- (void)configurePresenceFeeder
{
  v21 = *MEMORY[0x277D85DE8];
  presenceFeeder = [(HMDUserActivityStateDetectorManager *)self presenceFeeder];

  if (!presenceFeeder)
  {
    dataSource = [(HMDUserActivityStateDetectorManager *)self dataSource];
    createPresenceFeeder = [dataSource createPresenceFeeder];
    [(HMDUserActivityStateDetectorManager *)self setPresenceFeeder:createPresenceFeeder];

    presenceFeeder2 = [(HMDUserActivityStateDetectorManager *)self presenceFeeder];
    dataSource2 = [(HMDUserActivityStateDetectorManager *)self dataSource];
    home = [dataSource2 home];
    dataSource3 = [(HMDUserActivityStateDetectorManager *)self dataSource];
    messageDispatcher = [dataSource3 messageDispatcher];
    [presenceFeeder2 configure:home messageDispatcher:messageDispatcher];

    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      presenceFeeder3 = [(HMDUserActivityStateDetectorManager *)selfCopy presenceFeeder];
      v17 = 138543618;
      v18 = v14;
      v19 = 2112;
      v20 = presenceFeeder3;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Configured presenceFeeder: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)setPresenceFeeder:(id)feeder
{
  feederCopy = feeder;
  os_unfair_lock_lock_with_options();
  presenceFeeder = self->_presenceFeeder;
  self->_presenceFeeder = feederCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDUserPresenceFeeder)presenceFeeder
{
  os_unfair_lock_lock_with_options();
  v3 = self->_presenceFeeder;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)makeUserActivityStateDetectorsWithContributorTypes:(id)types
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __90__HMDUserActivityStateDetectorManager_makeUserActivityStateDetectorsWithContributorTypes___block_invoke;
  v5[3] = &unk_27868A088;
  v5[4] = self;
  v3 = [types na_map:v5];

  return v3;
}

id __90__HMDUserActivityStateDetectorManager_makeUserActivityStateDetectorsWithContributorTypes___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 unsignedIntegerValue];
  switch(v4)
  {
    case 4:
      v5 = [*(a1 + 32) dataSource];
      v6 = [v5 makeUserActivityVacationStateDetector];
      goto LABEL_7;
    case 3:
      v5 = [*(a1 + 32) dataSource];
      v6 = [v5 makeUserActivityComingHomeStateDetector];
      goto LABEL_7;
    case 1:
      v5 = [*(a1 + 32) dataSource];
      v6 = [v5 makeUserActivityHomeAwayStateDetector];
LABEL_7:
      v7 = v6;

      goto LABEL_11;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Cannot create detector of contributor type: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v7 = 0;
LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)filterEnabledContributors:(id)contributors
{
  v26 = *MEMORY[0x277D85DE8];
  contributorsCopy = contributors;
  dataSource = [(HMDUserActivityStateDetectorManager *)self dataSource];
  currentUser = [dataSource currentUser];

  if (currentUser)
  {
    privilege = [currentUser privilege];
    if (privilege >= 5)
    {
      v8 = 0;
    }

    else
    {
      v8 = 0x1Bu >> privilege;
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Current user is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 0;
  }

  if ([contributorsCopy count])
  {
    goto LABEL_13;
  }

  v13 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v16;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Enabled Contributors is empty - falling back to checking supportsAdaptiveTemperatureAutomations flag", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v13);
  dataSource2 = [(HMDUserActivityStateDetectorManager *)selfCopy2 dataSource];
  supportsAdaptiveTemperatureAutomations = [dataSource2 supportsAdaptiveTemperatureAutomations];

  if (supportsAdaptiveTemperatureAutomations)
  {

    contributorsCopy = &unk_283E75DE8;
LABEL_13:
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __65__HMDUserActivityStateDetectorManager_filterEnabledContributors___block_invoke;
    v22[3] = &unk_27868A060;
    v22[4] = self;
    v23 = v8 & 1;
    v19 = [contributorsCopy na_filter:v22];
    goto LABEL_14;
  }

  v19 = &unk_283E75DD0;
LABEL_14:

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

uint64_t __65__HMDUserActivityStateDetectorManager_filterEnabledContributors___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 unsignedIntegerValue];
  switch(v4)
  {
    case 1:
      v8 = 1;
      goto LABEL_13;
    case 4:
      v5 = [*(a1 + 32) dataSource];
      v6 = [v5 supportsUserActivityVacationStateDetector];
      break;
    case 3:
      v5 = [*(a1 + 32) dataSource];
      v6 = [v5 supportsUserActivityComingHomeStateDetector];
      break;
    default:
      v9 = objc_autoreleasePoolPush();
      v10 = *(a1 + 32);
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v15 = 138543618;
        v16 = v12;
        v17 = 2112;
        v18 = v3;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Unhandled contributor type: %@", &v15, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      goto LABEL_12;
  }

  v7 = v6;

  if (!v7)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

  v8 = *(a1 + 40);
LABEL_13:

  v13 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

- (void)_updateConfigurationWithEnabledContributors:(id)contributors completionHandler:(id)handler
{
  v71 = *MEMORY[0x277D85DE8];
  contributorsCopy = contributors;
  aBlock = handler;
  dataSource = [(HMDUserActivityStateDetectorManager *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  v49 = contributorsCopy;
  v9 = [(HMDUserActivityStateDetectorManager *)self filterEnabledContributors:contributorsCopy];
  v52 = [MEMORY[0x277CBEB58] setWithArray:v9];
  v51 = [MEMORY[0x277CBEB58] set];
  v10 = [MEMORY[0x277CBEB58] set];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  detectors = [(HMDUserActivityStateDetectorManager *)self detectors];
  v12 = [detectors countByEnumeratingWithState:&v60 objects:v70 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v61;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v61 != v14)
        {
          objc_enumerationMutation(detectors);
        }

        v16 = *(*(&v60 + 1) + 8 * i);
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(objc_opt_class(), "contributorType")}];
        v18 = [v9 containsObject:v17];

        if (v18)
        {
          [v51 addObject:v16];
          v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(objc_opt_class(), "contributorType")}];
          [v52 removeObject:v19];
        }

        else
        {
          [v10 addObject:v16];
        }
      }

      v13 = [detectors countByEnumeratingWithState:&v60 objects:v70 count:16];
    }

    while (v13);
  }

  if ([v52 count] || objc_msgSend(v10, "count"))
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    v23 = v49;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [v49 na_map:&__block_literal_global_197206];
      v26 = [v9 na_map:&__block_literal_global_197206];
      *buf = 138543874;
      v65 = v24;
      v66 = 2114;
      v67 = v25;
      v68 = 2114;
      v69 = v26;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Updating Configuration with Enabled Contributors: %{public}@, filtered: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
    v27 = [(HMDUserActivityStateDetectorManager *)selfCopy makeUserActivityStateDetectorsWithContributorTypes:v52];
    allObjects = [v27 allObjects];
    [v51 addObjectsFromArray:allObjects];

    allObjects2 = [v51 allObjects];
    [(HMDUserActivityStateDetectorManager *)selfCopy setDetectors:allObjects2];

    v30 = aBlock;
    if ([v10 count])
    {
      v31 = objc_autoreleasePoolPush();
      v32 = selfCopy;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543618;
        v65 = v34;
        v66 = 2112;
        v67 = v10;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Removing detectors: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v31);
      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = __101__HMDUserActivityStateDetectorManager__updateConfigurationWithEnabledContributors_completionHandler___block_invoke;
      v59[3] = &unk_278689FE8;
      v59[4] = v32;
      [v10 hmf_enumerateWithAutoreleasePoolUsingBlock:v59];
    }

    v35 = dispatch_group_create();
    if ([v27 count])
    {
      v36 = objc_autoreleasePoolPush();
      v37 = selfCopy;
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v40 = v39 = v36;
        *buf = 138543618;
        v65 = v40;
        v66 = 2112;
        v67 = v27;
        _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@Adding detectors: %@", buf, 0x16u);

        v36 = v39;
        v23 = v49;
        v30 = aBlock;
      }

      objc_autoreleasePoolPop(v36);
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __101__HMDUserActivityStateDetectorManager__updateConfigurationWithEnabledContributors_completionHandler___block_invoke_6;
      v56[3] = &unk_27868A038;
      v57 = v35;
      v58 = v37;
      [v27 hmf_enumerateWithAutoreleasePoolUsingBlock:v56];
    }

    dataSource2 = [(HMDUserActivityStateDetectorManager *)selfCopy dataSource];
    queue2 = [dataSource2 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __101__HMDUserActivityStateDetectorManager__updateConfigurationWithEnabledContributors_completionHandler___block_invoke_7;
    block[3] = &unk_278689F98;
    block[4] = selfCopy;
    v54 = v10;
    v55 = v30;
    dispatch_group_notify(v35, queue2, block);
  }

  else
  {
    v44 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      v47 = HMFGetLogIdentifier();
      *buf = 138543362;
      v65 = v47;
      _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_DEBUG, "%{public}@Configuration is not changing", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v44);
    v30 = aBlock;
    v48 = _Block_copy(aBlock);
    v27 = v48;
    v23 = v49;
    if (v48)
    {
      (*(v48 + 2))(v48);
    }
  }

  v43 = *MEMORY[0x277D85DE8];
}

void __101__HMDUserActivityStateDetectorManager__updateConfigurationWithEnabledContributors_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Unconfiguring detector: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [v3 unconfigure];

  v8 = *MEMORY[0x277D85DE8];
}

void __101__HMDUserActivityStateDetectorManager__updateConfigurationWithEnabledContributors_completionHandler___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __101__HMDUserActivityStateDetectorManager__updateConfigurationWithEnabledContributors_completionHandler___block_invoke_2;
  v6[3] = &unk_27868A010;
  v4 = *(a1 + 32);
  v6[4] = *(a1 + 40);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  [v5 configureWithCompletion:v6];
}

void __101__HMDUserActivityStateDetectorManager__updateConfigurationWithEnabledContributors_completionHandler___block_invoke_7(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) userActivityReportCoordinator];
    v13 = 138543618;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Updating configuration of userActivityReportCoordinator: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) userActivityReportCoordinator];
  v8 = [*(a1 + 32) detectors];
  v9 = [*(a1 + 40) allObjects];
  [v7 configureWithDetectors:v8 removeDetectors:v9];

  v10 = _Block_copy(*(a1 + 48));
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __101__HMDUserActivityStateDetectorManager__updateConfigurationWithEnabledContributors_completionHandler___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Configured detector: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  dispatch_group_leave(*(a1 + 48));
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_updateConfigurationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  storage = [(HMDUserActivityStateDetectorManager *)self storage];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__HMDUserActivityStateDetectorManager__updateConfigurationWithCompletionHandler___block_invoke;
  v7[3] = &unk_278689FC0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [storage fetchEnabledContributors:v7];
}

void __81__HMDUserActivityStateDetectorManager__updateConfigurationWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dataSource];
  v5 = [v4 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__HMDUserActivityStateDetectorManager__updateConfigurationWithCompletionHandler___block_invoke_2;
  block[3] = &unk_278689F98;
  v6 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  dispatch_async(v5, block);
}

- (void)updateConfiguration
{
  dataSource = [(HMDUserActivityStateDetectorManager *)self dataSource];
  queue = [dataSource queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HMDUserActivityStateDetectorManager_updateConfiguration__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)unconfigure
{
  detectors = [(HMDUserActivityStateDetectorManager *)self detectors];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__HMDUserActivityStateDetectorManager_unconfigure__block_invoke;
  v4[3] = &unk_278689F70;
  v4[4] = self;
  [detectors hmf_enumerateWithAutoreleasePoolUsingBlock:v4];
}

void __50__HMDUserActivityStateDetectorManager_unconfigure__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Unconfiguring detector: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [v3 unconfigure];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)configure
{
  dataSource = [(HMDUserActivityStateDetectorManager *)self dataSource];
  queue = [dataSource queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HMDUserActivityStateDetectorManager_configure__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

void __48__HMDUserActivityStateDetectorManager_configure__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [v2 storage];
  [v3 setDelegate:v2];

  v4 = [*(a1 + 32) storage];
  [v4 configure];

  v5 = [*(a1 + 32) dataSource];
  v6 = [v5 currentPrimaryResident];

  if (v6 && ([v6 supportsHomeActivityState] & 1) == 0)
  {
    [*(a1 + 32) configurePresenceFeeder];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543874;
      v15 = v10;
      v16 = 2112;
      v17 = v6;
      v18 = 1024;
      v19 = [v6 supportsHomeActivityState];
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Not configuring presence feeder. primaryResident: %@, primaryResident.supportsHomeActivityState: %{BOOL}d", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *(a1 + 32);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__HMDUserActivityStateDetectorManager_configure__block_invoke_1;
  v13[3] = &unk_27868A728;
  v13[4] = v11;
  [v11 _updateConfigurationWithCompletionHandler:v13];

  v12 = *MEMORY[0x277D85DE8];
}

- (HMDUserActivityStateDetectorManager)initWithDataSource:(id)source
{
  sourceCopy = source;
  v14.receiver = self;
  v14.super_class = HMDUserActivityStateDetectorManager;
  v6 = [(HMDUserActivityStateDetectorManager *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, source);
    makeUserActivityReportCoordinator = [sourceCopy makeUserActivityReportCoordinator];
    userActivityReportCoordinator = v7->_userActivityReportCoordinator;
    v7->_userActivityReportCoordinator = makeUserActivityReportCoordinator;

    makeHomeActivityStateManagerStorage = [sourceCopy makeHomeActivityStateManagerStorage];
    storage = v7->_storage;
    v7->_storage = makeHomeActivityStateManagerStorage;

    detectors = v7->_detectors;
    v7->_detectors = MEMORY[0x277CBEBF8];
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t28_282664 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t28_282664, &__block_literal_global_282665);
  }

  v3 = logCategory__hmf_once_v29_282666;

  return v3;
}

void __50__HMDUserActivityStateDetectorManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v29_282666;
  logCategory__hmf_once_v29_282666 = v1;
}

+ (BOOL)shouldRunManagerForHome:(id)home
{
  v27 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  currentUser = [homeCopy currentUser];
  v6 = currentUser;
  if (!currentUser || ([currentUser isAllowedToContributeActivityStates] & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      uuid = [homeCopy uuid];
      v21 = 138543874;
      v22 = v12;
      v23 = 2112;
      v24 = uuid;
      v25 = 2112;
      v26 = v6;
      v14 = "%{public}@[%@] HMDUserActivityStateDetectorManager is not allowed because currentUser is nil or the user is not allowed to contribute to activity states: %@";
      v15 = v11;
      v16 = 32;
LABEL_13:
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, v14, &v21, v16);

      goto LABEL_14;
    }

    goto LABEL_14;
  }

  primaryResident = [homeCopy primaryResident];

  if (!primaryResident)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      uuid = [homeCopy uuid];
      v21 = 138543618;
      v22 = v12;
      v23 = 2112;
      v24 = uuid;
      v14 = "%{public}@[%@] HMDUserActivityStateDetectorManager is not allowed because there's no known primary resident";
LABEL_12:
      v15 = v11;
      v16 = 22;
      goto LABEL_13;
    }

LABEL_14:

    objc_autoreleasePoolPop(v9);
    v8 = 0;
    goto LABEL_15;
  }

  if ((isThisDeviceDesignatedFMFDevice() & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      uuid = [homeCopy uuid];
      v21 = 138543618;
      v22 = v12;
      v23 = 2112;
      v24 = uuid;
      v14 = "%{public}@[%@] HMDUserActivityStateDetectorManager is not allowed because this device is not the designated FMF device";
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v8 = 1;
LABEL_15:

  v19 = *MEMORY[0x277D85DE8];
  return v8;
}

@end