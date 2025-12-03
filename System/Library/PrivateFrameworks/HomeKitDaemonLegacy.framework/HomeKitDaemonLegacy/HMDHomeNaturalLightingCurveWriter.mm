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
  v78 = *MEMORY[0x277D85DE8];
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
    v73 = v11;
    v74 = 2112;
    v75 = v12;
    v76 = 2112;
    v77 = profilesCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Setting natural lighting enabled for light profiles %@:%@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  mapTableWithWeakToStrongObjects = [MEMORY[0x277CCAB00] mapTableWithWeakToStrongObjects];
  mapTableWithWeakToStrongObjects2 = [MEMORY[0x277CCAB00] mapTableWithWeakToStrongObjects];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v13 = profilesCopy;
  v14 = [v13 countByEnumeratingWithState:&v66 objects:v71 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v67;
    do
    {
      v17 = v13;
      for (i = 0; i != v15; ++i)
      {
        if (*v67 != v16)
        {
          objc_enumerationMutation(v17);
        }

        v19 = *(*(&v66 + 1) + 8 * i);
        dataSource = [(HMDHomeNaturalLightingCurveWriter *)selfCopy dataSource];
        date = [dataSource date];
        dataSource2 = [(HMDHomeNaturalLightingCurveWriter *)selfCopy dataSource];
        v23 = [HMDCharacteristicWriteRequest writeRequestForTransitionStartWithLightProfile:v19 naturalLightingEnabled:enabledCopy startDate:date type:0 dataSource:dataSource2];

        if (v23)
        {
          [mapTableWithWeakToStrongObjects2 setObject:v23 forKey:v19];
        }

        else
        {
          v24 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
          [mapTableWithWeakToStrongObjects setObject:v24 forKey:v19];
        }
      }

      v13 = v17;
      v15 = [v17 countByEnumeratingWithState:&v66 objects:v71 count:16];
    }

    while (v15);
  }

  v25 = mapTableWithWeakToStrongObjects2;
  if ([mapTableWithWeakToStrongObjects2 count])
  {
    v26 = [MEMORY[0x277CBEB58] set];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v27 = mapTableWithWeakToStrongObjects2;
    v28 = [v27 countByEnumeratingWithState:&v62 objects:v70 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v63;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v63 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = [v27 objectForKey:*(*(&v62 + 1) + 8 * j)];
          [v26 addObject:v32];
        }

        v29 = [v27 countByEnumeratingWithState:&v62 objects:v70 count:16];
      }

      while (v29);
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __91__HMDHomeNaturalLightingCurveWriter_setNaturalLightingEnabled_forLightProfiles_completion___block_invoke;
    aBlock[3] = &unk_279727DB0;
    aBlock[4] = selfCopy;
    v57 = v13;
    v58 = mapTableWithWeakToStrongObjects;
    v33 = completionCopy;
    v60 = completionCopy;
    v59 = v27;
    v61 = enabledCopy;
    v34 = _Block_copy(aBlock);
    home = [(HMDHomeNaturalLightingCurveWriter *)selfCopy home];
    allObjects = [v26 allObjects];
    untrackedPlaceholderFlow = [MEMORY[0x277D0F7B8] untrackedPlaceholderFlow];
    v38 = [home performWriteRequests:allObjects withRetries:4 timeInterval:selfCopy loggingObject:untrackedPlaceholderFlow flow:5.0];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __91__HMDHomeNaturalLightingCurveWriter_setNaturalLightingEnabled_forLightProfiles_completion___block_invoke_6;
    v53[3] = &unk_279727DD8;
    v55 = enabledCopy;
    v39 = mapTableWithWeakToStrongObjects;
    v53[4] = selfCopy;
    v54 = v34;
    v40 = v13;
    v41 = v34;
    v42 = [v38 addCompletionBlock:v53];

    v25 = mapTableWithWeakToStrongObjects2;
  }

  else
  {
    v43 = v13;
    v44 = objc_autoreleasePoolPush();
    v45 = selfCopy;
    v46 = HMFGetOSLogHandle();
    v39 = mapTableWithWeakToStrongObjects;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = HMFGetLogIdentifier();
      *buf = 138543874;
      v73 = v47;
      v74 = 2112;
      v75 = mapTableWithWeakToStrongObjects2;
      v76 = 2112;
      v77 = v43;
      _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_ERROR, "%{public}@No characteristic write request for light profiles %@:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v44);
    v33 = completionCopy;
    (*(completionCopy + 2))(completionCopy, mapTableWithWeakToStrongObjects);
    v40 = v43;
  }

  v48 = *MEMORY[0x277D85DE8];
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
              _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to validate response for write request %@:%@", buf, 0x20u);
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

void __91__HMDHomeNaturalLightingCurveWriter_setNaturalLightingEnabled_forLightProfiles_completion___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 48);
    v12 = HMFBooleanToString();
    v14 = 138543874;
    v15 = v10;
    v16 = 2112;
    v17 = v12;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Finished setting natural lighting enabled: %@, with error: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  (*(*(a1 + 40) + 16))();

  v13 = *MEMORY[0x277D85DE8];
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
  if (logCategory__hmf_once_t4_58442 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_58442, &__block_literal_global_58443);
  }

  v3 = logCategory__hmf_once_v5_58444;

  return v3;
}

uint64_t __48__HMDHomeNaturalLightingCurveWriter_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_58444;
  logCategory__hmf_once_v5_58444 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end