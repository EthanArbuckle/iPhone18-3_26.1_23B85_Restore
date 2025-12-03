@interface HMDHomeNaturalLightingCurveWriter
+ (id)logCategory;
- (HMDHome)home;
- (HMDHomeNaturalLightingCurveWriter)initWithHome:(id)home;
- (HMDHomeNaturalLightingCurveWriter)initWithHome:(id)home dataSource:(id)source;
- (NSString)logIdentifier;
- (void)setNaturalLightingEnabled:(BOOL)enabled forLightProfiles:(id)profiles completion:(id)completion;
@end

@implementation HMDHomeNaturalLightingCurveWriter

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (NSString)logIdentifier
{
  home = [(HMDHomeNaturalLightingCurveWriter *)self home];
  name = [home name];

  return name;
}

- (void)setNaturalLightingEnabled:(BOOL)enabled forLightProfiles:(id)profiles completion:(id)completion
{
  enabledCopy = enabled;
  v72 = *MEMORY[0x277D85DE8];
  profilesCopy = profiles;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = HMFBooleanToString();
    *buf = 138543874;
    *&buf[4] = v11;
    *&buf[12] = 2112;
    *&buf[14] = v12;
    *&buf[22] = 2112;
    *&buf[24] = profilesCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Setting natural lighting enabled for light profiles %@:%@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  mapTableWithWeakToStrongObjects = [MEMORY[0x277CCAB00] mapTableWithWeakToStrongObjects];
  mapTableWithWeakToStrongObjects2 = [MEMORY[0x277CCAB00] mapTableWithWeakToStrongObjects];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = profilesCopy;
  v13 = [obj countByEnumeratingWithState:&v62 objects:v71 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v63;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v63 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v62 + 1) + 8 * i);
        dataSource = [(HMDHomeNaturalLightingCurveWriter *)selfCopy dataSource];
        date = [dataSource date];
        dataSource2 = [(HMDHomeNaturalLightingCurveWriter *)selfCopy dataSource];
        v21 = [HMDCharacteristicWriteRequest writeRequestForTransitionStartWithLightProfile:v17 naturalLightingEnabled:enabledCopy startDate:date type:0 dataSource:dataSource2];

        if (v21)
        {
          [mapTableWithWeakToStrongObjects2 setObject:v21 forKey:v17];
        }

        else
        {
          v22 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
          [mapTableWithWeakToStrongObjects setObject:v22 forKey:v17];
        }
      }

      v14 = [obj countByEnumeratingWithState:&v62 objects:v71 count:16];
    }

    while (v14);
  }

  v23 = mapTableWithWeakToStrongObjects2;
  if ([mapTableWithWeakToStrongObjects2 count])
  {
    v24 = [MEMORY[0x277CBEB58] set];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v25 = mapTableWithWeakToStrongObjects2;
    v26 = [v25 countByEnumeratingWithState:&v58 objects:v70 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v59;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v59 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = [v25 objectForKey:*(*(&v58 + 1) + 8 * j)];
          [v24 addObject:v30];
        }

        v27 = [v25 countByEnumeratingWithState:&v58 objects:v70 count:16];
      }

      while (v27);
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __91__HMDHomeNaturalLightingCurveWriter_setNaturalLightingEnabled_forLightProfiles_completion___block_invoke;
    aBlock[3] = &unk_2786772E0;
    aBlock[4] = selfCopy;
    v53 = obj;
    v31 = mapTableWithWeakToStrongObjects;
    v54 = mapTableWithWeakToStrongObjects;
    v32 = completionCopy;
    v56 = completionCopy;
    v55 = v25;
    v57 = enabledCopy;
    v33 = _Block_copy(aBlock);
    uUID = [MEMORY[0x277CCAD78] UUID];
    v35 = objc_autoreleasePoolPush();
    v36 = selfCopy;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 0;
      *&buf[8] = 0;
      if (uUID)
      {
        [uUID getUUIDBytes:buf];
      }

      else
      {
        *buf = *MEMORY[0x277D0F960];
      }

      v66 = *buf;
      v43 = [v24 count];
      *buf = 138544386;
      *&buf[4] = v38;
      *&buf[12] = 1042;
      *&buf[14] = 16;
      *&buf[18] = 2098;
      *&buf[20] = &v66;
      *&buf[28] = 2114;
      *&buf[30] = v36;
      v68 = 2048;
      v69 = v43;
      _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@Executing write requests with identifier: %{public,uuid_t}.16P from natural lighting curve writer: %{public}@ count: %lu", buf, 0x30u);
    }

    objc_autoreleasePoolPop(v35);
    home = [(HMDHomeNaturalLightingCurveWriter *)v36 home];
    allObjects = [v24 allObjects];
    [home writeCharacteristicValues:allObjects source:1150 biomeSource:0 identifier:uUID transport:0 qualityOfService:-1 withCompletionHandler:v33];

    v23 = mapTableWithWeakToStrongObjects2;
  }

  else
  {
    v39 = objc_autoreleasePoolPush();
    v40 = selfCopy;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = HMFGetLogIdentifier();
      *buf = 138543874;
      *&buf[4] = v42;
      *&buf[12] = 2112;
      *&buf[14] = mapTableWithWeakToStrongObjects2;
      *&buf[22] = 2112;
      *&buf[24] = obj;
      _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@No characteristic write request for light profiles %@:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v39);
    v32 = completionCopy;
    v31 = mapTableWithWeakToStrongObjects;
    (*(completionCopy + 2))(completionCopy, mapTableWithWeakToStrongObjects);
  }

  v46 = *MEMORY[0x277D85DE8];
}

void __91__HMDHomeNaturalLightingCurveWriter_setNaturalLightingEnabled_forLightProfiles_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v29 = a2;
  v32 = a3;
  if (*(a1 + 32))
  {
    v5 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = *(a1 + 56);
    v6 = [obj countByEnumeratingWithState:&v34 objects:v48 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v35;
      *&v7 = 138543874;
      v28 = v7;
      do
      {
        v10 = 0;
        v11 = v5;
        v30 = v8;
        do
        {
          if (*v35 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v34 + 1) + 8 * v10);
          v13 = [*(a1 + 56) objectForKey:{v12, v28}];
          v14 = *(a1 + 72);
          v33 = v11;
          v15 = [v32 hmd_isValidResponseForWriteRequest:v13 naturalLightingEnabled:v14 error:&v33];
          v5 = v33;

          if ((v15 & 1) == 0)
          {
            v16 = v9;
            v17 = objc_autoreleasePoolPush();
            v18 = a1;
            v19 = *(a1 + 32);
            v20 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v21 = HMFGetLogIdentifier();
              *buf = v28;
              v43 = v21;
              v44 = 2112;
              v45 = v32;
              v46 = 2112;
              v47 = v29;
              _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to validate response for write request %@:%@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v17);
            a1 = v18;
            [*(v18 + 48) setObject:v5 forKey:v12];
            v9 = v16;
            v8 = v30;
          }

          ++v10;
          v11 = v5;
        }

        while (v8 != v10);
        v8 = [obj countByEnumeratingWithState:&v34 objects:v48 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = *(a1 + 40);
    v22 = [obj countByEnumeratingWithState:&v38 objects:v49 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v39;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v39 != v24)
          {
            objc_enumerationMutation(obj);
          }

          [*(a1 + 48) setObject:v5 forKey:*(*(&v38 + 1) + 8 * i)];
        }

        v23 = [obj countByEnumeratingWithState:&v38 objects:v49 count:16];
      }

      while (v23);
    }
  }

  v26 = *(a1 + 48);
  (*(*(a1 + 64) + 16))();

  v27 = *MEMORY[0x277D85DE8];
}

- (HMDHomeNaturalLightingCurveWriter)initWithHome:(id)home
{
  homeCopy = home;
  v5 = objc_alloc_init(HMDLightProfileDataSource);
  v6 = [(HMDHomeNaturalLightingCurveWriter *)self initWithHome:homeCopy dataSource:v5];

  return v6;
}

- (HMDHomeNaturalLightingCurveWriter)initWithHome:(id)home dataSource:(id)source
{
  homeCopy = home;
  sourceCopy = source;
  v11.receiver = self;
  v11.super_class = HMDHomeNaturalLightingCurveWriter;
  v8 = [(HMDHomeNaturalLightingCurveWriter *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_home, homeCopy);
    objc_storeStrong(&v9->_dataSource, source);
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_92003 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_92003, &__block_literal_global_92004);
  }

  v3 = logCategory__hmf_once_v5_92005;

  return v3;
}

void __48__HMDHomeNaturalLightingCurveWriter_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_92005;
  logCategory__hmf_once_v5_92005 = v1;
}

@end