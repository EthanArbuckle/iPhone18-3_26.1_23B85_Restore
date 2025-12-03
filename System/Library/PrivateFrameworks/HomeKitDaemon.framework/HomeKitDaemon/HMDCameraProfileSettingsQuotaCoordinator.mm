@interface HMDCameraProfileSettingsQuotaCoordinator
+ (id)clientErrorFromCanUpdateAccessModeError:(id)error;
+ (id)logCategory;
- (BOOL)_requiresDisablingCloudStorageForAccessMode:(unint64_t)mode cameraHomePresence:(unint64_t)presence;
- (BOOL)_requiresEnablingCloudStorageForAccessMode:(unint64_t)mode;
- (HMDCameraProfileSettingsQuotaCoordinator)initWithWorkQueue:(id)queue accessory:(id)accessory;
- (HMDCameraProfileSettingsQuotaCoordinator)initWithWorkQueue:(id)queue accessory:(id)accessory quotaManager:(id)manager;
- (HMDCameraProfileSettingsQuotaCoordinatorDelegate)delegate;
- (HMDHAPAccessory)accessory;
- (id)cameraClipsZoneName;
- (id)logIdentifier;
- (void)_disableRecordingAccessModesWithCompletion:(id)completion;
- (void)_performOperationWithBlock:(id)block;
- (void)_synchronizeCloudStorageWithCurrentCamerasWithCompletion:(id)completion;
- (void)_synchronizeCloudStorageWithRecordingAccessModesWithCompletion:(id)completion;
- (void)_updateCloudStorageAndSettingsWithAccessMode:(unint64_t)mode forCameraHomePresence:(unint64_t)presence completion:(id)completion;
- (void)disableRecordingAccessModes;
- (void)synchronizeCloudStorageWithRecordingAccessModes;
- (void)updateCloudStorageAndSettingsWithAccessMode:(unint64_t)mode forCameraHomePresence:(unint64_t)presence completion:(id)completion;
@end

@implementation HMDCameraProfileSettingsQuotaCoordinator

- (HMDHAPAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (HMDCameraProfileSettingsQuotaCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  accessory = [(HMDCameraProfileSettingsQuotaCoordinator *)self accessory];
  logIdentifier = [accessory logIdentifier];

  return logIdentifier;
}

- (void)_disableRecordingAccessModesWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMDCameraProfileSettingsQuotaCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  delegate = [(HMDCameraProfileSettingsQuotaCoordinator *)self delegate];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __87__HMDCameraProfileSettingsQuotaCoordinator__disableRecordingAccessModesWithCompletion___block_invoke;
  v7[3] = &unk_278687C98;
  v7[4] = self;
  [delegate updateSettingsModelUsingBlock:v7 completion:completionCopy];
}

void __87__HMDCameraProfileSettingsQuotaCoordinator__disableRecordingAccessModesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    [v3 accessModeAtHome];
    v8 = HMCameraAccessModeAsString();
    [v3 accessModeNotAtHome];
    v9 = HMCameraAccessModeAsString();
    v21 = 138543874;
    v22 = v7;
    v23 = 2112;
    v24 = v8;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Asked to disable recording access modes given current accessModeAtHome: %@ accessModeNotAtHome: %@", &v21, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  [v3 accessModeAtHome];
  if (HMIsRecordingAllowedForCameraAccessMode())
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      [v3 accessModeAtHome];
      v14 = HMCameraAccessModeAsString();
      v21 = 138543618;
      v22 = v13;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Disabling recording access modes by updating at home access mode to %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    [v3 setAccessModeAtHome:1];
  }

  [v3 accessModeNotAtHome];
  if (HMIsRecordingAllowedForCameraAccessMode())
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      [v3 accessModeNotAtHome];
      v19 = HMCameraAccessModeAsString();
      v21 = 138543618;
      v22 = v18;
      v23 = 2112;
      v24 = v19;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Disabling recording access modes by updating not at home access mode to %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    [v3 setAccessModeNotAtHome:1];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_synchronizeCloudStorageWithCurrentCamerasWithCompletion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  workQueue = [(HMDCameraProfileSettingsQuotaCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v33 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Synchronizing cloud storage with current cameras", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  accessory = [(HMDCameraProfileSettingsQuotaCoordinator *)selfCopy accessory];
  home = [accessory home];
  homeManager = [home homeManager];

  if (homeManager)
  {
    quotaManager = [(HMDCameraProfileSettingsQuotaCoordinator *)selfCopy quotaManager];
    fetchNamesForZonesWithEnabledCloudStorage = [quotaManager fetchNamesForZonesWithEnabledCloudStorage];
    v15 = MEMORY[0x277D2C938];
    workQueue2 = [(HMDCameraProfileSettingsQuotaCoordinator *)selfCopy workQueue];
    v17 = [v15 schedulerWithDispatchQueue:workQueue2];
    v18 = [fetchNamesForZonesWithEnabledCloudStorage reschedule:v17];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __101__HMDCameraProfileSettingsQuotaCoordinator__synchronizeCloudStorageWithCurrentCamerasWithCompletion___block_invoke;
    v29[3] = &unk_278687C70;
    v29[4] = selfCopy;
    v30 = homeManager;
    v19 = completionCopy;
    v31 = v19;
    v20 = [v18 addSuccessBlock:v29];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __101__HMDCameraProfileSettingsQuotaCoordinator__synchronizeCloudStorageWithCurrentCamerasWithCompletion___block_invoke_21;
    v27[3] = &unk_278689A68;
    v27[4] = selfCopy;
    v28 = v19;
    v21 = [v20 addFailureBlock:v27];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v25;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Asked to synchronize cloud storage with current cameras but home manager reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    (*(completionCopy + 2))(completionCopy, 0);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __101__HMDCameraProfileSettingsQuotaCoordinator__synchronizeCloudStorageWithCurrentCamerasWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v78 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v75 = v7;
    v76 = 2112;
    v77 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Synchronizing cloud storage using enabled cloud storage zone names: %@", buf, 0x16u);
  }

  v44 = v3;

  objc_autoreleasePoolPop(v4);
  v8 = [MEMORY[0x277CBEB58] set];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v45 = a1;
  obj = [*(a1 + 40) homes];
  v48 = [obj countByEnumeratingWithState:&v66 objects:v73 count:16];
  if (v48)
  {
    v47 = *v67;
    do
    {
      v9 = 0;
      do
      {
        if (*v67 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v49 = v9;
        v10 = *(*(&v66 + 1) + 8 * v9);
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v50 = [v10 hapAccessories];
        v11 = [v50 countByEnumeratingWithState:&v62 objects:v72 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v63;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v63 != v13)
              {
                objc_enumerationMutation(v50);
              }

              v15 = *(*(&v62 + 1) + 8 * i);
              v58 = 0u;
              v59 = 0u;
              v60 = 0u;
              v61 = 0u;
              v16 = [v15 cameraProfiles];
              v17 = [v16 countByEnumeratingWithState:&v58 objects:v71 count:16];
              if (v17)
              {
                v18 = v17;
                v19 = *v59;
                do
                {
                  for (j = 0; j != v18; ++j)
                  {
                    if (*v59 != v19)
                    {
                      objc_enumerationMutation(v16);
                    }

                    v21 = [*(*(&v58 + 1) + 8 * j) clipManager];
                    v22 = v21;
                    if (v21)
                    {
                      v23 = [v21 zoneName];
                      [v8 addObject:v23];
                    }
                  }

                  v18 = [v16 countByEnumeratingWithState:&v58 objects:v71 count:16];
                }

                while (v18);
              }
            }

            v12 = [v50 countByEnumeratingWithState:&v62 objects:v72 count:16];
          }

          while (v12);
        }

        v9 = v49 + 1;
      }

      while (v49 + 1 != v48);
      v48 = [obj countByEnumeratingWithState:&v66 objects:v73 count:16];
    }

    while (v48);
  }

  v24 = [MEMORY[0x277CBEB18] array];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v51 = v44;
  v25 = [v51 countByEnumeratingWithState:&v54 objects:v70 count:16];
  v26 = v45;
  if (v25)
  {
    v27 = v25;
    v28 = *v55;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v55 != v28)
        {
          objc_enumerationMutation(v51);
        }

        v30 = *(*(&v54 + 1) + 8 * k);
        if (([v8 containsObject:v30] & 1) == 0)
        {
          v31 = objc_autoreleasePoolPush();
          v32 = *(v26 + 32);
          v33 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = HMFGetLogIdentifier();
            *buf = 138543618;
            v75 = v34;
            v76 = 2112;
            v77 = v30;
            _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@Disabling cloud storage for unknown zone name: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v31);
          v26 = v45;
          v35 = [*(v45 + 32) quotaManager];
          v36 = [v35 disableCloudStorageForZoneWithName:v30];
          [v24 addObject:v36];
        }
      }

      v27 = [v51 countByEnumeratingWithState:&v54 objects:v70 count:16];
    }

    while (v27);
  }

  if ([v24 count])
  {
    v37 = [MEMORY[0x277D2C900] chainFutures:v24];
    v38 = MEMORY[0x277D2C938];
    v39 = [*(v26 + 32) workQueue];
    v40 = [v38 schedulerWithDispatchQueue:v39];
    v41 = [v37 reschedule:v40];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __101__HMDCameraProfileSettingsQuotaCoordinator__synchronizeCloudStorageWithCurrentCamerasWithCompletion___block_invoke_19;
    v52[3] = &unk_278687C48;
    v52[4] = *(v26 + 32);
    v53 = *(v26 + 48);
    v42 = [v41 addCompletionBlock:v52];
  }

  else
  {
    (*(*(v26 + 48) + 16))();
  }

  v43 = *MEMORY[0x277D85DE8];
}

void __101__HMDCameraProfileSettingsQuotaCoordinator__synchronizeCloudStorageWithCurrentCamerasWithCompletion___block_invoke_21(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch names for zones with enabled cloud storage: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

void __101__HMDCameraProfileSettingsQuotaCoordinator__synchronizeCloudStorageWithCurrentCamerasWithCompletion___block_invoke_19(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v11;
      v12 = "%{public}@Successfully disabled cloud storage while synchronizing with current cameras";
      v13 = v10;
      v14 = OS_LOG_TYPE_DEFAULT;
      v15 = 12;
LABEL_6:
      _os_log_impl(&dword_229538000, v13, v14, v12, &v19, v15);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v11;
    v21 = 2112;
    v22 = v6;
    v12 = "%{public}@Failed to disable cloud storage while synchronizing with current cameras: %@";
    v13 = v10;
    v14 = OS_LOG_TYPE_ERROR;
    v15 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  (*(*(a1 + 40) + 16))(*(a1 + 40), v5 != 0, v16, v17);

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_synchronizeCloudStorageWithRecordingAccessModesWithCompletion:(id)completion
{
  v47 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  workQueue = [(HMDCameraProfileSettingsQuotaCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v46 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Synchronizing cloud storage with recording access modes", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  cameraClipsZoneName = [(HMDCameraProfileSettingsQuotaCoordinator *)selfCopy cameraClipsZoneName];
  if (cameraClipsZoneName)
  {
    delegate = [(HMDCameraProfileSettingsQuotaCoordinator *)selfCopy delegate];
    currentSettings = [delegate currentSettings];

    [currentSettings accessModeAtHome];
    v13 = HMIsRecordingAllowedForCameraAccessMode();
    [currentSettings accessModeNotAtHome];
    v14 = HMIsRecordingAllowedForCameraAccessMode();
    quotaManager = [(HMDCameraProfileSettingsQuotaCoordinator *)selfCopy quotaManager];
    v36 = quotaManager;
    if ((v13 & 1) != 0 || v14)
    {
      v16 = [quotaManager enableCloudStorageForZoneWithName:cameraClipsZoneName];
      v30 = MEMORY[0x277D2C938];
      workQueue2 = [(HMDCameraProfileSettingsQuotaCoordinator *)selfCopy workQueue];
      v19 = [v30 schedulerWithDispatchQueue:workQueue2];
      v20 = [v16 reschedule:v19];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __107__HMDCameraProfileSettingsQuotaCoordinator__synchronizeCloudStorageWithRecordingAccessModesWithCompletion___block_invoke;
      v43[3] = &unk_278687C20;
      v43[4] = selfCopy;
      v34 = &v44;
      v21 = completionCopy;
      v31 = completionCopy;
      v44 = v31;
      v23 = [v20 addSuccessBlock:v43];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __107__HMDCameraProfileSettingsQuotaCoordinator__synchronizeCloudStorageWithRecordingAccessModesWithCompletion___block_invoke_13;
      v41[3] = &unk_278689A68;
      v41[4] = selfCopy;
      v24 = &v42;
      v42 = v31;
      v25 = v41;
    }

    else
    {
      v16 = [quotaManager disableCloudStorageForZoneWithName:cameraClipsZoneName];
      v17 = MEMORY[0x277D2C938];
      workQueue2 = [(HMDCameraProfileSettingsQuotaCoordinator *)selfCopy workQueue];
      v19 = [v17 schedulerWithDispatchQueue:workQueue2];
      v20 = [v16 reschedule:v19];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __107__HMDCameraProfileSettingsQuotaCoordinator__synchronizeCloudStorageWithRecordingAccessModesWithCompletion___block_invoke_14;
      v39[3] = &unk_278687C20;
      v39[4] = selfCopy;
      v34 = &v40;
      v21 = completionCopy;
      v22 = completionCopy;
      v40 = v22;
      v23 = [v20 addSuccessBlock:v39];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __107__HMDCameraProfileSettingsQuotaCoordinator__synchronizeCloudStorageWithRecordingAccessModesWithCompletion___block_invoke_15;
      v37[3] = &unk_278689A68;
      v37[4] = selfCopy;
      v24 = &v38;
      v38 = v22;
      v25 = v37;
    }

    v32 = [v23 addFailureBlock:{v25, v34}];

    completionCopy = v21;
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = selfCopy;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v46 = v29;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Could not determine camera clips zone name for synchronizing cloud storage with recording access modes", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v26);
    currentSettings = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (*(completionCopy + 2))(completionCopy, currentSettings);
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __107__HMDCameraProfileSettingsQuotaCoordinator__synchronizeCloudStorageWithRecordingAccessModesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Successfully enabled recording while synchronizing cloud storage", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

void __107__HMDCameraProfileSettingsQuotaCoordinator__synchronizeCloudStorageWithRecordingAccessModesWithCompletion___block_invoke_13(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() clientErrorFromCanUpdateAccessModeError:v3];
  v6 = [v5 code];
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (v6 == 2006)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to enable recording while synchronizing cloud storage due to quota exceeded error: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 32) _disableRecordingAccessModesWithCompletion:*(a1 + 40)];
  }

  else
  {
    if (v10)
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to enable recording while synchronizing cloud storage: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    (*(*(a1 + 40) + 16))();
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __107__HMDCameraProfileSettingsQuotaCoordinator__synchronizeCloudStorageWithRecordingAccessModesWithCompletion___block_invoke_14(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Successfully disabled recording while synchronizing cloud storage", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

void __107__HMDCameraProfileSettingsQuotaCoordinator__synchronizeCloudStorageWithRecordingAccessModesWithCompletion___block_invoke_15(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to disable recording while synchronizing cloud storage: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_requiresEnablingCloudStorageForAccessMode:(unint64_t)mode
{
  workQueue = [(HMDCameraProfileSettingsQuotaCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (HMIsRecordingAllowedForCameraAccessMode())
  {
    delegate = [(HMDCameraProfileSettingsQuotaCoordinator *)self delegate];
    currentSettings = [delegate currentSettings];

    [currentSettings accessModeAtHome];
    if (HMIsRecordingAllowedForCameraAccessMode())
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      [currentSettings accessModeNotAtHome];
      v7 = HMIsRecordingAllowedForCameraAccessMode() ^ 1;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)_performOperationWithBlock:(id)block
{
  blockCopy = block;
  workQueue = [(HMDCameraProfileSettingsQuotaCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_alloc_init(MEMORY[0x277D0F780]);
  objc_initWeak(&location, v6);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __71__HMDCameraProfileSettingsQuotaCoordinator__performOperationWithBlock___block_invoke;
  v12 = &unk_278687BF8;
  objc_copyWeak(&v15, &location);
  selfCopy = self;
  v7 = blockCopy;
  v14 = v7;
  [v6 addExecutionBlock:&v9];
  v8 = [(HMDCameraProfileSettingsQuotaCoordinator *)self operationQueue:v9];
  [v8 addOperation:v6];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __71__HMDCameraProfileSettingsQuotaCoordinator__performOperationWithBlock___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = [a1[4] workQueue];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __71__HMDCameraProfileSettingsQuotaCoordinator__performOperationWithBlock___block_invoke_2;
    v4[3] = &unk_27868A7A0;
    v6 = a1[5];
    v5 = WeakRetained;
    dispatch_async(v3, v4);
  }
}

void __71__HMDCameraProfileSettingsQuotaCoordinator__performOperationWithBlock___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __71__HMDCameraProfileSettingsQuotaCoordinator__performOperationWithBlock___block_invoke_3;
  v2[3] = &unk_27868A250;
  v1 = *(a1 + 40);
  v3 = *(a1 + 32);
  (*(v1 + 16))(v1, v2);
}

uint64_t __71__HMDCameraProfileSettingsQuotaCoordinator__performOperationWithBlock___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 cancelWithError:a2];
  }

  else
  {
    return [v2 finish];
  }
}

- (id)cameraClipsZoneName
{
  accessory = [(HMDCameraProfileSettingsQuotaCoordinator *)self accessory];
  cameraProfiles = [accessory cameraProfiles];
  anyObject = [cameraProfiles anyObject];
  clipManager = [anyObject clipManager];
  zoneName = [clipManager zoneName];

  return zoneName;
}

- (void)disableRecordingAccessModes
{
  workQueue = [(HMDCameraProfileSettingsQuotaCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__HMDCameraProfileSettingsQuotaCoordinator_disableRecordingAccessModes__block_invoke;
  v4[3] = &unk_278687BD0;
  v4[4] = self;
  [(HMDCameraProfileSettingsQuotaCoordinator *)self _performOperationWithBlock:v4];
}

- (void)synchronizeCloudStorageWithRecordingAccessModes
{
  workQueue = [(HMDCameraProfileSettingsQuotaCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __91__HMDCameraProfileSettingsQuotaCoordinator_synchronizeCloudStorageWithRecordingAccessModes__block_invoke;
  v4[3] = &unk_278687BD0;
  v4[4] = self;
  [(HMDCameraProfileSettingsQuotaCoordinator *)self _performOperationWithBlock:v4];
}

- (BOOL)_requiresDisablingCloudStorageForAccessMode:(unint64_t)mode cameraHomePresence:(unint64_t)presence
{
  workQueue = [(HMDCameraProfileSettingsQuotaCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ((HMIsRecordingAllowedForCameraAccessMode() & 1) == 0)
  {
    delegate = [(HMDCameraProfileSettingsQuotaCoordinator *)self delegate];
    currentSettings = [delegate currentSettings];

    if (presence == 4)
    {
      [currentSettings accessModeAtHome];
      if ((HMIsRecordingAllowedForCameraAccessMode() & 1) == 0)
      {
        [currentSettings accessModeNotAtHome];
        LOBYTE(delegate) = HMIsRecordingAllowedForCameraAccessMode();
        goto LABEL_10;
      }
    }

    else
    {
      if (presence != 3)
      {
LABEL_10:

        return delegate & 1;
      }

      [currentSettings accessModeAtHome];
      if (HMIsRecordingAllowedForCameraAccessMode())
      {
        [currentSettings accessModeNotAtHome];
        LOBYTE(delegate) = HMIsRecordingAllowedForCameraAccessMode() ^ 1;
        goto LABEL_10;
      }
    }

    LOBYTE(delegate) = 0;
    goto LABEL_10;
  }

  LOBYTE(delegate) = 0;
  return delegate & 1;
}

- (void)_updateCloudStorageAndSettingsWithAccessMode:(unint64_t)mode forCameraHomePresence:(unint64_t)presence completion:(id)completion
{
  v53 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  workQueue = [(HMDCameraProfileSettingsQuotaCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = HMCameraAccessModeAsString();
    v15 = HMCameraHomePresenceAsString();
    *buf = 138543874;
    v48 = v13;
    v49 = 2112;
    v50 = v14;
    v51 = 2112;
    v52 = v15;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Updating access mode to %@ for presence: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  cameraClipsZoneName = [(HMDCameraProfileSettingsQuotaCoordinator *)selfCopy cameraClipsZoneName];
  if (cameraClipsZoneName)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __122__HMDCameraProfileSettingsQuotaCoordinator__updateCloudStorageAndSettingsWithAccessMode_forCameraHomePresence_completion___block_invoke;
    aBlock[3] = &unk_278687B80;
    aBlock[4] = selfCopy;
    v44 = completionCopy;
    modeCopy = mode;
    presenceCopy = presence;
    v17 = _Block_copy(aBlock);
    if ([(HMDCameraProfileSettingsQuotaCoordinator *)selfCopy _requiresEnablingCloudStorageForAccessMode:mode])
    {
      quotaManager = [(HMDCameraProfileSettingsQuotaCoordinator *)selfCopy quotaManager];
      v19 = [quotaManager enableCloudStorageForZoneWithName:cameraClipsZoneName];
      v20 = MEMORY[0x277D2C938];
      workQueue2 = [(HMDCameraProfileSettingsQuotaCoordinator *)selfCopy workQueue];
      v22 = [v20 schedulerWithDispatchQueue:workQueue2];
      v23 = [v19 reschedule:v22];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __122__HMDCameraProfileSettingsQuotaCoordinator__updateCloudStorageAndSettingsWithAccessMode_forCameraHomePresence_completion___block_invoke_2;
      v41[3] = &unk_278687BA8;
      v42 = v17;
      v24 = [v23 addCompletionBlock:v41];

      v25 = v42;
    }

    else
    {
      if (![(HMDCameraProfileSettingsQuotaCoordinator *)selfCopy _requiresDisablingCloudStorageForAccessMode:mode cameraHomePresence:presence])
      {
        (*(v17 + 2))(v17, 0);
        goto LABEL_13;
      }

      quotaManager2 = [(HMDCameraProfileSettingsQuotaCoordinator *)selfCopy quotaManager];
      v32 = [quotaManager2 disableCloudStorageForZoneWithName:cameraClipsZoneName];
      v33 = MEMORY[0x277D2C938];
      workQueue3 = [(HMDCameraProfileSettingsQuotaCoordinator *)selfCopy workQueue];
      v35 = [v33 schedulerWithDispatchQueue:workQueue3];
      v36 = [v32 reschedule:v35];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __122__HMDCameraProfileSettingsQuotaCoordinator__updateCloudStorageAndSettingsWithAccessMode_forCameraHomePresence_completion___block_invoke_3;
      v39[3] = &unk_278687BA8;
      v40 = v17;
      v37 = [v36 addCompletionBlock:v39];

      v25 = v40;
    }

LABEL_13:
    goto LABEL_14;
  }

  v26 = objc_autoreleasePoolPush();
  v27 = selfCopy;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v29 = HMFGetLogIdentifier();
    *buf = 138543362;
    v48 = v29;
    _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Could not determine camera clips zone name for updating cloud storage and settings", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v26);
  v30 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  (*(completionCopy + 2))(completionCopy, v30);

LABEL_14:
  v38 = *MEMORY[0x277D85DE8];
}

void __122__HMDCameraProfileSettingsQuotaCoordinator__updateCloudStorageAndSettingsWithAccessMode_forCameraHomePresence_completion___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = [objc_opt_class() clientErrorFromCanUpdateAccessModeError:v3];
    v5 = [v4 code];
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    v9 = v8;
    if (v5 == 2006)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = HMFGetLogIdentifier();
        *buf = 138543618;
        v22 = v10;
        v23 = 2112;
        v24 = v3;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Synchronizing cloud storage while updating access mode due to quota exceeded error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v6);
      v11 = *(a1 + 32);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __122__HMDCameraProfileSettingsQuotaCoordinator__updateCloudStorageAndSettingsWithAccessMode_forCameraHomePresence_completion___block_invoke_4;
      v16[3] = &unk_278687B38;
      v16[4] = v11;
      v17 = v3;
      v19 = *(a1 + 40);
      v4 = v4;
      v18 = v4;
      v20 = *(a1 + 48);
      [v11 _synchronizeCloudStorageWithCurrentCamerasWithCompletion:v16];
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543618;
        v22 = v12;
        v23 = 2114;
        v24 = v3;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Cannot make access mode change: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v6);
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v4 = [*(a1 + 32) delegate];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __122__HMDCameraProfileSettingsQuotaCoordinator__updateCloudStorageAndSettingsWithAccessMode_forCameraHomePresence_completion___block_invoke_6;
    v14[3] = &__block_descriptor_48_e39_v16__0__HMDCameraProfileSettingsModel_8l;
    v15 = vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL);
    [v4 updateSettingsModelUsingBlock:v14 completion:*(a1 + 40)];
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __122__HMDCameraProfileSettingsQuotaCoordinator__updateCloudStorageAndSettingsWithAccessMode_forCameraHomePresence_completion___block_invoke_4(uint64_t a1, char a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Retrying updating access mode after disabling cloud storage", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    result = [*(a1 + 32) _updateCloudStorageAndSettingsWithAccessMode:*(a1 + 64) forCameraHomePresence:*(a1 + 72) completion:*(a1 + 56)];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      v14 = 138543618;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to enable recording while updating access mode due to quota exceeded error: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v12 = *(a1 + 48);
    result = (*(*(a1 + 56) + 16))();
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void __122__HMDCameraProfileSettingsQuotaCoordinator__updateCloudStorageAndSettingsWithAccessMode_forCameraHomePresence_completion___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4 == 4)
  {
    v5 = v3;
    [v3 setAccessModeNotAtHome:*(a1 + 40)];
  }

  else
  {
    if (v4 != 3)
    {
      goto LABEL_6;
    }

    v5 = v3;
    [v3 setAccessModeAtHome:*(a1 + 40)];
  }

  v3 = v5;
LABEL_6:
}

- (void)updateCloudStorageAndSettingsWithAccessMode:(unint64_t)mode forCameraHomePresence:(unint64_t)presence completion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMDCameraProfileSettingsQuotaCoordinator *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __121__HMDCameraProfileSettingsQuotaCoordinator_updateCloudStorageAndSettingsWithAccessMode_forCameraHomePresence_completion___block_invoke;
  v11[3] = &unk_278687B10;
  modeCopy = mode;
  presenceCopy = presence;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [(HMDCameraProfileSettingsQuotaCoordinator *)self _performOperationWithBlock:v11];
}

void __121__HMDCameraProfileSettingsQuotaCoordinator_updateCloudStorageAndSettingsWithAccessMode_forCameraHomePresence_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __121__HMDCameraProfileSettingsQuotaCoordinator_updateCloudStorageAndSettingsWithAccessMode_forCameraHomePresence_completion___block_invoke_2;
  v8[3] = &unk_278687AE8;
  v9 = v3;
  v6 = *(a1 + 32);
  v10 = *(a1 + 40);
  v7 = v3;
  [v6 _updateCloudStorageAndSettingsWithAccessMode:v4 forCameraHomePresence:v5 completion:v8];
}

void __121__HMDCameraProfileSettingsQuotaCoordinator_updateCloudStorageAndSettingsWithAccessMode_forCameraHomePresence_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3, v5);
  (*(*(a1 + 40) + 16))();
}

- (HMDCameraProfileSettingsQuotaCoordinator)initWithWorkQueue:(id)queue accessory:(id)accessory quotaManager:(id)manager
{
  queueCopy = queue;
  accessoryCopy = accessory;
  managerCopy = manager;
  v17.receiver = self;
  v17.super_class = HMDCameraProfileSettingsQuotaCoordinator;
  v12 = [(HMDCameraProfileSettingsQuotaCoordinator *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_workQueue, queue);
    objc_storeWeak(&v13->_accessory, accessoryCopy);
    objc_storeStrong(&v13->_quotaManager, manager);
    v14 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = v13->_operationQueue;
    v13->_operationQueue = v14;

    [(NSOperationQueue *)v13->_operationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v13->_operationQueue setUnderlyingQueue:v13->_workQueue];
  }

  return v13;
}

- (HMDCameraProfileSettingsQuotaCoordinator)initWithWorkQueue:(id)queue accessory:(id)accessory
{
  accessoryCopy = accessory;
  queueCopy = queue;
  v8 = +[HMDCameraClipsQuotaManager defaultManager];
  v9 = [(HMDCameraProfileSettingsQuotaCoordinator *)self initWithWorkQueue:queueCopy accessory:accessoryCopy quotaManager:v8];

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t23_265766 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t23_265766, &__block_literal_global_265767);
  }

  v3 = logCategory__hmf_once_v24_265768;

  return v3;
}

void __55__HMDCameraProfileSettingsQuotaCoordinator_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v24_265768;
  logCategory__hmf_once_v24_265768 = v1;
}

+ (id)clientErrorFromCanUpdateAccessModeError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqualToString:@"HMDCameraClipsQuotaErrorDomain"];

  if (v5)
  {
    code = [errorCopy code];
    v7 = MEMORY[0x277CCA9B8];
    if (code == 1)
    {
      v8 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2006];
      goto LABEL_6;
    }
  }

  else
  {
    v7 = MEMORY[0x277CCA9B8];
  }

  v8 = [v7 hmErrorWithCode:48];
LABEL_6:
  v9 = v8;

  return v9;
}

@end