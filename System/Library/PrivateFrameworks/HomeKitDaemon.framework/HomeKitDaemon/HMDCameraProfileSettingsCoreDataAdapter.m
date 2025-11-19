@interface HMDCameraProfileSettingsCoreDataAdapter
+ (id)logCategory;
- (HMDCameraProfileSettingsCoreDataAdapter)initWithHAPAccessoryUUID:(id)a3 homeUUID:(id)a4 cameraProfileSettingsModelID:(id)a5 derivedPropertiesModelID:(id)a6;
- (id)fetchCameraProfileSettingsModelWithError:(id *)a3;
- (id)fetchDerivedPropertiesModelWithError:(id *)a3;
- (id)logIdentifier;
- (void)updateCameraProfileSettingsModel:(id)a3 completion:(id)a4;
- (void)updateDerivedPropertiesModel:(id)a3 completion:(id)a4;
@end

@implementation HMDCameraProfileSettingsCoreDataAdapter

- (id)logIdentifier
{
  v2 = [(HMDCameraProfileSettingsCoreDataAdapter *)self hapAccessoryUUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)updateDerivedPropertiesModel:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[HMDCoreData sharedInstance];
  v9 = [(HMDCameraProfileSettingsCoreDataAdapter *)self homeUUID];
  v10 = [v8 contextWithHomeUUID:v9];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __83__HMDCameraProfileSettingsCoreDataAdapter_updateDerivedPropertiesModel_completion___block_invoke;
  v14[3] = &unk_278689AB8;
  v14[4] = self;
  v15 = v6;
  v16 = v10;
  v17 = v7;
  v11 = v10;
  v12 = v6;
  v13 = v7;
  [v11 performBlock:v14];
}

void __83__HMDCameraProfileSettingsCoreDataAdapter_updateDerivedPropertiesModel_completion___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) hapAccessoryUUID];
  v3 = [HMCContext findHAPAccessoryWithModelID:v2];

  if (!v3)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [*(a1 + 32) hapAccessoryUUID];
      *buf = 138543618;
      v37 = v13;
      v38 = 2112;
      v39 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Did not find the HAP accessory with model id: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    goto LABEL_19;
  }

  v4 = [*(a1 + 40) hmbPropertyWasSet:@"currentAccessModeField"];
  v5 = v4;
  if (v4)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "currentAccessMode")}];
    [v3 setCameraCurrentAccessMode:v6];
  }

  v7 = [*(a1 + 40) hmbPropertyWasSet:@"currentAccessModeChangeDate"];
  v8 = *(a1 + 40);
  if (v7)
  {
    v9 = [v8 currentAccessModeChangeDate];
    [v3 setCameraCurrentAccessModeChangeDate:v9];

    if (![*(a1 + 40) hmbPropertyWasSet:@"currentAccessModeChangeReasonField"])
    {
LABEL_12:
      v17 = *(a1 + 48);
      v35 = 0;
      v18 = [v17 save:&v35];
      v15 = v35;
      v19 = objc_autoreleasePoolPush();
      v20 = *(a1 + 32);
      v21 = HMFGetOSLogHandle();
      v22 = v21;
      if (v18)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v23 = HMFGetLogIdentifier();
          *buf = 138543362;
          v37 = v23;
          v24 = "%{public}@Successfully updated Core Data with derived properties model";
          v25 = v22;
          v26 = OS_LOG_TYPE_INFO;
          v27 = 12;
LABEL_17:
          _os_log_impl(&dword_229538000, v25, v26, v24, buf, v27);
        }
      }

      else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543618;
        v37 = v23;
        v38 = 2112;
        v39 = v15;
        v24 = "%{public}@Failed to update Core Data with derived properties model, error: %@";
        v25 = v22;
        v26 = OS_LOG_TYPE_ERROR;
        v27 = 22;
        goto LABEL_17;
      }

      objc_autoreleasePoolPop(v19);
LABEL_19:
      v28 = *(a1 + 56);
      if (v28)
      {
        (*(v28 + 16))(v28, v15);
      }

      goto LABEL_22;
    }

LABEL_11:
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 40), "currentAccessModeChangeReason")}];
    [v3 setCameraCurrentAccessModeChangeReason:v16];

    goto LABEL_12;
  }

  if ([v8 hmbPropertyWasSet:@"currentAccessModeChangeReasonField"])
  {
    goto LABEL_11;
  }

  if (v5)
  {
    goto LABEL_12;
  }

  v30 = objc_autoreleasePoolPush();
  v31 = *(a1 + 32);
  v32 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v33 = HMFGetLogIdentifier();
    *buf = 138543362;
    v37 = v33;
    _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Not updating Core Data with derived properties model because nothing changed", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v30);
  v34 = *(a1 + 56);
  if (v34)
  {
    (*(v34 + 16))(v34, 0);
  }

LABEL_22:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)updateCameraProfileSettingsModel:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[HMDCoreData sharedInstance];
  v9 = [(HMDCameraProfileSettingsCoreDataAdapter *)self homeUUID];
  v10 = [v8 contextWithHomeUUID:v9];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __87__HMDCameraProfileSettingsCoreDataAdapter_updateCameraProfileSettingsModel_completion___block_invoke;
  v14[3] = &unk_278689AB8;
  v14[4] = self;
  v15 = v6;
  v16 = v10;
  v17 = v7;
  v11 = v10;
  v12 = v6;
  v13 = v7;
  [v11 performBlock:v14];
}

void __87__HMDCameraProfileSettingsCoreDataAdapter_updateCameraProfileSettingsModel_completion___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) hapAccessoryUUID];
  v3 = [HMCContext findHAPAccessoryWithModelID:v2];

  if (!v3)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [*(a1 + 32) hapAccessoryUUID];
      *buf = 138543618;
      v37 = v13;
      v38 = 2112;
      v39 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Did not find the HAP accessory with model id: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    goto LABEL_23;
  }

  v4 = [*(a1 + 40) hmbPropertyWasSet:@"accessModeAtHomeField"];
  v5 = v4;
  if (v4)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "accessModeAtHome")}];
    [v3 setCameraAccessModeAtHome:v6];
  }

  if ([*(a1 + 40) hmbPropertyWasSet:@"accessModeNotAtHomeField"])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "accessModeNotAtHome")}];
    [v3 setCameraAccessModeNotAtHome:v7];

    v5 = 1;
  }

  if ([*(a1 + 40) hmbPropertyWasSet:@"recordingEventTriggersField"])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "recordingEventTriggers")}];
    [v3 setCameraRecordingEventTriggers:v8];

    v5 = 1;
  }

  if ([*(a1 + 40) hmbPropertyWasSet:@"activityZonesIncludedForSignificantEventDetectionField"])
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "activityZonesIncludedForSignificantEventDetection")}];
    [v3 setCameraActivityZonesIncludedForSignificantEventDetection:v9];

    if (![*(a1 + 40) hmbPropertyWasSet:@"activityZonesField"])
    {
LABEL_16:
      v17 = *(a1 + 48);
      v35 = 0;
      v18 = [v17 save:&v35];
      v15 = v35;
      v19 = objc_autoreleasePoolPush();
      v20 = *(a1 + 32);
      v21 = HMFGetOSLogHandle();
      v22 = v21;
      if (v18)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v23 = HMFGetLogIdentifier();
          *buf = 138543362;
          v37 = v23;
          v24 = "%{public}@Successfully updated Core Data with settings model";
          v25 = v22;
          v26 = OS_LOG_TYPE_INFO;
          v27 = 12;
LABEL_21:
          _os_log_impl(&dword_229538000, v25, v26, v24, buf, v27);
        }
      }

      else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543618;
        v37 = v23;
        v38 = 2112;
        v39 = v15;
        v24 = "%{public}@Failed to update Core Data with settings model, error: %@";
        v25 = v22;
        v26 = OS_LOG_TYPE_ERROR;
        v27 = 22;
        goto LABEL_21;
      }

      objc_autoreleasePoolPop(v19);
LABEL_23:
      v28 = *(a1 + 56);
      if (v28)
      {
        (*(v28 + 16))(v28, v15);
      }

      goto LABEL_26;
    }

LABEL_15:
    v16 = [*(a1 + 40) activityZones];
    [v3 setCameraActivityZones:v16];

    goto LABEL_16;
  }

  if ([*(a1 + 40) hmbPropertyWasSet:@"activityZonesField"])
  {
    goto LABEL_15;
  }

  if (v5)
  {
    goto LABEL_16;
  }

  v30 = objc_autoreleasePoolPush();
  v31 = *(a1 + 32);
  v32 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v33 = HMFGetLogIdentifier();
    *buf = 138543362;
    v37 = v33;
    _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Not updating Core Data with settings model because nothing changed", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v30);
  v34 = *(a1 + 56);
  if (v34)
  {
    (*(v34 + 16))(v34, 0);
  }

LABEL_26:

  v29 = *MEMORY[0x277D85DE8];
}

- (id)fetchDerivedPropertiesModelWithError:(id *)a3
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__230646;
  v22 = __Block_byref_object_dispose__230647;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__230646;
  v16 = __Block_byref_object_dispose__230647;
  v17 = 0;
  v5 = +[HMDCoreData sharedInstance];
  v6 = [(HMDCameraProfileSettingsCoreDataAdapter *)self homeUUID];
  v7 = [v5 contextWithHomeUUID:v6];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__HMDCameraProfileSettingsCoreDataAdapter_fetchDerivedPropertiesModelWithError___block_invoke;
  v11[3] = &unk_2786825E8;
  v11[4] = self;
  v11[5] = &v12;
  v11[6] = &v18;
  [v7 unsafeSynchronousBlock:v11];
  if (a3)
  {
    v8 = v13[5];
    if (v8)
    {
      *a3 = v8;
    }
  }

  v9 = v19[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);

  return v9;
}

void __80__HMDCameraProfileSettingsCoreDataAdapter_fetchDerivedPropertiesModelWithError___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) hapAccessoryUUID];
  v3 = [HMCContext findHAPAccessoryWithModelID:v2];

  if (v3)
  {
    v4 = [v3 cameraCurrentAccessMode];
    if (v4 || ([v3 cameraCurrentAccessModeChangeReason], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {

LABEL_5:
      v5 = [HMDCameraProfileSettingsDerivedPropertiesModel alloc];
      v6 = [*(a1 + 32) derivedPropertiesModelID];
      v7 = [*(a1 + 32) hapAccessoryUUID];
      v8 = [(HMBModel *)v5 initWithModelID:v6 parentModelID:v7];
      v9 = *(*(a1 + 48) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v11 = [v3 cameraCurrentAccessMode];
      [*(*(*(a1 + 48) + 8) + 40) setCurrentAccessMode:{objc_msgSend(v11, "unsignedIntegerValue")}];

      v12 = [v3 cameraCurrentAccessModeChangeReason];
      [*(*(*(a1 + 48) + 8) + 40) setCurrentAccessModeChangeReason:{objc_msgSend(v12, "unsignedIntegerValue")}];

      v13 = [v3 cameraCurrentAccessModeChangeDate];
      [*(*(*(a1 + 48) + 8) + 40) setCurrentAccessModeChangeDate:v13];

      goto LABEL_9;
    }

    v23 = [v3 cameraCurrentAccessModeChangeDate];

    if (v23)
    {
      goto LABEL_5;
    }

    v24 = objc_autoreleasePoolPush();
    v25 = *(a1 + 32);
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      v28 = 138543362;
      v29 = v27;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Derived properties do not exist yet on accessory", &v28, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [*(a1 + 32) hapAccessoryUUID];
      v28 = 138543618;
      v29 = v17;
      v30 = 2112;
      v31 = v18;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Did not find the accessory with model id: %@", &v28, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    v20 = *(*(a1 + 40) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;
  }

LABEL_9:

  v22 = *MEMORY[0x277D85DE8];
}

- (id)fetchCameraProfileSettingsModelWithError:(id *)a3
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__230646;
  v22 = __Block_byref_object_dispose__230647;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__230646;
  v16 = __Block_byref_object_dispose__230647;
  v17 = 0;
  v5 = +[HMDCoreData sharedInstance];
  v6 = [(HMDCameraProfileSettingsCoreDataAdapter *)self homeUUID];
  v7 = [v5 contextWithHomeUUID:v6];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __84__HMDCameraProfileSettingsCoreDataAdapter_fetchCameraProfileSettingsModelWithError___block_invoke;
  v11[3] = &unk_2786825E8;
  v11[4] = self;
  v11[5] = &v12;
  v11[6] = &v18;
  [v7 unsafeSynchronousBlock:v11];
  if (a3)
  {
    v8 = v13[5];
    if (v8)
    {
      *a3 = v8;
    }
  }

  v9 = v19[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);

  return v9;
}

void __84__HMDCameraProfileSettingsCoreDataAdapter_fetchCameraProfileSettingsModelWithError___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) hapAccessoryUUID];
  v3 = [HMCContext findHAPAccessoryWithModelID:v2];

  if (v3)
  {
    v4 = [v3 cameraAccessModeAtHome];
    if (v4)
    {

LABEL_8:
      v14 = [HMDCameraProfileSettingsModel alloc];
      v15 = [*(a1 + 32) cameraProfileSettingsModelID];
      v16 = [*(a1 + 32) hapAccessoryUUID];
      v17 = [(HMBModel *)v14 initWithModelID:v15 parentModelID:v16];
      v18 = *(*(a1 + 48) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;

      [*(*(*(a1 + 48) + 8) + 40) setVersion:1];
      v20 = [v3 cameraAccessModeAtHome];
      [*(*(*(a1 + 48) + 8) + 40) setAccessModeAtHome:{objc_msgSend(v20, "unsignedIntegerValue")}];

      v21 = [v3 cameraAccessModeNotAtHome];
      [*(*(*(a1 + 48) + 8) + 40) setAccessModeNotAtHome:{objc_msgSend(v21, "unsignedIntegerValue")}];

      v22 = [v3 cameraRecordingEventTriggers];
      [*(*(*(a1 + 48) + 8) + 40) setRecordingEventTriggers:{objc_msgSend(v22, "unsignedIntegerValue")}];

      v23 = [v3 cameraActivityZonesIncludedForSignificantEventDetection];
      [*(*(*(a1 + 48) + 8) + 40) setActivityZonesIncludedForSignificantEventDetection:{objc_msgSend(v23, "BOOLValue")}];

      v24 = [v3 cameraActivityZones];
      v25 = v24;
      if (!v24)
      {
        v25 = [MEMORY[0x277CBEB98] set];
      }

      [*(*(*(a1 + 48) + 8) + 40) setActivityZones:v25];
      if (!v24)
      {
      }

      goto LABEL_13;
    }

    v13 = [v3 cameraAccessModeNotAtHome];

    if (v13)
    {
      goto LABEL_8;
    }

    v27 = objc_autoreleasePoolPush();
    v28 = *(a1 + 32);
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = HMFGetLogIdentifier();
      v31 = 138543362;
      v32 = v30;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@Camera profile settings do not exist yet on accessory", &v31, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [*(a1 + 32) hapAccessoryUUID];
      v31 = 138543618;
      v32 = v8;
      v33 = 2112;
      v34 = v9;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Did not find the HAP accessory with model id: %@", &v31, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

LABEL_13:

  v26 = *MEMORY[0x277D85DE8];
}

- (HMDCameraProfileSettingsCoreDataAdapter)initWithHAPAccessoryUUID:(id)a3 homeUUID:(id)a4 cameraProfileSettingsModelID:(id)a5 derivedPropertiesModelID:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!v12)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!v13)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v15 = v14;
  if (!v14)
  {
LABEL_11:
    v19 = _HMFPreconditionFailure();
    return +[(HMDCameraProfileSettingsCoreDataAdapter *)v19];
  }

  v21.receiver = self;
  v21.super_class = HMDCameraProfileSettingsCoreDataAdapter;
  v16 = [(HMDCameraProfileSettingsCoreDataAdapter *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_hapAccessoryUUID, a3);
    objc_storeStrong(&v17->_homeUUID, a4);
    objc_storeStrong(&v17->_cameraProfileSettingsModelID, a5);
    objc_storeStrong(&v17->_derivedPropertiesModelID, a6);
  }

  return v17;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t14_230674 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t14_230674, &__block_literal_global_230675);
  }

  v3 = logCategory__hmf_once_v15_230676;

  return v3;
}

void __54__HMDCameraProfileSettingsCoreDataAdapter_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v15_230676;
  logCategory__hmf_once_v15_230676 = v1;
}

@end