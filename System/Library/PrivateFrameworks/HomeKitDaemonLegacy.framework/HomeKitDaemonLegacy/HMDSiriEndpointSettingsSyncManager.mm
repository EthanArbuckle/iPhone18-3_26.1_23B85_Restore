@interface HMDSiriEndpointSettingsSyncManager
+ (NSArray)siriEndPointHomeKitBackedKeyPaths;
+ (id)logCategory;
- (HMDSiriEndpointSettingsSyncManager)initWithDataSource:(id)a3 subscriptionProvider:(id)a4 notificationCenter:(id)a5 workQueue:(id)a6;
- (HMDSiriEndpointSettingsSyncManagerDataSource)dataSource;
- (id)readValueValueForAccessoryUUID:(id)a3 homeUUID:(id)a4 forKeyPath:(id)a5;
- (int64_t)siriEndpointCertificationReasonForAccessoryUUID:(id)a3 homeUUID:(id)a4 error:(id *)a5;
- (void)_beginManagingAccessory:(id)a3 forHome:(id)a4;
- (void)_beginManagingHome:(id)a3;
- (void)_matchingHomeforUUID:(id)a3 accessoryUUID:(id)a4 home:(id *)a5 accessory:(id *)a6;
- (void)_stopManagingAccessory:(id)a3 forHome:(id)a4;
- (void)_stopManagingHome:(id)a3;
- (void)_synchronizeSettingsForAccessoryUUID:(id)a3 homeUUID:(id)a4;
- (void)_updateManagedHomes;
- (void)_writeSetting:(id)a3 toAccessory:(id)a4 forKeyPath:(id)a5;
- (void)_writeSettingValue:(id)a3 toAccessory:(id)a4 forKeyPath:(id)a5 completionHandler:(id)a6;
- (void)configure;
- (void)didReceiveEvent:(id)a3 topic:(id)a4;
- (void)handleAccessoryIsReachableNotification:(id)a3;
- (void)handleCompositeSettingsControllerDidConfigureNotification:(id)a3;
- (void)handleHAPMediaProfileAddedNotification:(id)a3;
- (void)handleHomeAddedNotification:(id)a3;
- (void)handleHomeRemovedNotification:(id)a3;
- (void)handlePrimaryResidentUpdateNotification:(id)a3;
- (void)handleSiriEndPointAddedNotification:(id)a3;
- (void)registerForAccessoryNotificationsOnHapAccessory:(id)a3;
- (void)unregisterFromAccessoryNotificationsOnHapAccessory:(id)a3;
- (void)writeSettingValue:(id)a3 accessoryUUID:(id)a4 homeUUID:(id)a5 forKeyPath:(id)a6 completionHandler:(id)a7;
@end

@implementation HMDSiriEndpointSettingsSyncManager

- (HMDSiriEndpointSettingsSyncManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (int64_t)siriEndpointCertificationReasonForAccessoryUUID:(id)a3 homeUUID:(id)a4 error:(id *)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v20 = 0;
  v21 = 0;
  [(HMDSiriEndpointSettingsSyncManager *)self _matchingHomeforUUID:v9 accessoryUUID:v8 home:&v21 accessory:&v20];
  v10 = v21;
  v11 = v20;
  v12 = v11;
  if (v11)
  {
    v13 = [v11 computeSiriEndpointCertification];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543874;
      v23 = v17;
      v24 = 2112;
      v25 = v10;
      v26 = 2112;
      v27 = v8;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unable to find matching accessory with UUID: %@ in home (%@) to sync settings", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    if (a5)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      *a5 = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)readValueValueForAccessoryUUID:(id)a3 homeUUID:(id)a4 forKeyPath:(id)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138544130;
    v33 = v14;
    v34 = 2112;
    v35 = v8;
    v36 = 2112;
    v37 = v9;
    v38 = 2112;
    v39 = v10;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Writing endpoint settings for accessoryUUID: %@, homeUUID: %@, keyPath: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  v30 = 0;
  v31 = 0;
  [(HMDSiriEndpointSettingsSyncManager *)v12 _matchingHomeforUUID:v9 accessoryUUID:v8 home:&v31 accessory:&v30];
  v15 = v31;
  v16 = v30;
  if (!v16)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = v12;
    v21 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v22 = HMFGetLogIdentifier();
    *buf = 138543874;
    v33 = v22;
    v34 = 2112;
    v35 = v15;
    v36 = 2112;
    v37 = v8;
    v23 = "%{public}@Unable to find matching accessory with UUID: %@ in home (%@) to sync settings";
    v24 = v21;
    v25 = 32;
LABEL_17:
    _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, v23, buf, v25);

    goto LABEL_18;
  }

  if ([v10 isEqualToString:@"root.siri.allowHeySiri"])
  {
    v17 = [v16 siriEndpointProfile];
    v18 = [v17 siriListening];

    if (v18 == -1)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = v12;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      goto LABEL_18;
    }

LABEL_12:
    v27 = [objc_alloc(MEMORY[0x277CD1DA8]) initWithBoolValue:v18 == 1];
    goto LABEL_19;
  }

  if (![v10 isEqualToString:@"root.siri.tapToAccess"])
  {
    v19 = objc_autoreleasePoolPush();
    v20 = v12;
    v21 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v22 = HMFGetLogIdentifier();
    *buf = 138543618;
    v33 = v22;
    v34 = 2112;
    v35 = v10;
    v23 = "%{public}@Invalid or unrecongnized keyPath: %@";
    v24 = v21;
    v25 = 22;
    goto LABEL_17;
  }

  v26 = [v16 siriEndpointProfile];
  v18 = [v26 siriTouchToUse];

  if (v18 != -1)
  {
    goto LABEL_12;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = v12;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
LABEL_16:
    v22 = HMFGetLogIdentifier();
    *buf = 138544130;
    v33 = v22;
    v34 = 2112;
    v35 = v9;
    v36 = 2112;
    v37 = v8;
    v38 = 2112;
    v39 = v10;
    v23 = "%{public}@Unknown value for home:%@, accessory:%@, keyPath:%@";
    v24 = v21;
    v25 = 42;
    goto LABEL_17;
  }

LABEL_18:

  objc_autoreleasePoolPop(v19);
  v27 = 0;
LABEL_19:

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

- (void)_matchingHomeforUUID:(id)a3 accessoryUUID:(id)a4 home:(id *)a5 accessory:(id *)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = [(HMDSiriEndpointSettingsSyncManager *)self dataSource];
  v13 = v12;
  if (a5)
  {
    v14 = [v12 homesForSiriEndpointSettingsSyncManager:self];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __88__HMDSiriEndpointSettingsSyncManager__matchingHomeforUUID_accessoryUUID_home_accessory___block_invoke;
    v29[3] = &unk_2797323C0;
    v30 = v10;
    v15 = [v14 na_firstObjectPassingTest:v29];

    if (a6)
    {
      v16 = v15;
      *a5 = v15;
      v17 = [v16 hapAccessories];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __88__HMDSiriEndpointSettingsSyncManager__matchingHomeforUUID_accessoryUUID_home_accessory___block_invoke_67;
      v27[3] = &unk_2797304D0;
      v28 = v11;
      *a6 = [v17 na_firstObjectPassingTest:v27];
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543362;
        v32 = v25;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Nil out hap accessory passed", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v22);
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v21;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Nil out parameter home passed", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
  }

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t __88__HMDSiriEndpointSettingsSyncManager__matchingHomeforUUID_accessoryUUID_home_accessory___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

uint64_t __88__HMDSiriEndpointSettingsSyncManager__matchingHomeforUUID_accessoryUUID_home_accessory___block_invoke_67(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

- (void)writeSettingValue:(id)a3 accessoryUUID:(id)a4 homeUUID:(id)a5 forKeyPath:(id)a6 completionHandler:(id)a7
{
  v48 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = objc_autoreleasePoolPush();
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138544386;
    v39 = v20;
    v40 = 2112;
    v41 = v13;
    v42 = 2112;
    v43 = v14;
    v44 = 2112;
    v45 = v12;
    v46 = 2112;
    v47 = v15;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Writing endpoint settings for accessoryUUID: %@, homeUUID: %@, settingValue: %@, keyPath: %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v17);
  v36 = 0;
  v37 = 0;
  [(HMDSiriEndpointSettingsSyncManager *)v18 _matchingHomeforUUID:v14 accessoryUUID:v13 home:&v37 accessory:&v36];
  v21 = v37;
  v22 = v36;
  if (v22)
  {
    v23 = [(HMDSiriEndpointSettingsSyncManager *)v18 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __108__HMDSiriEndpointSettingsSyncManager_writeSettingValue_accessoryUUID_homeUUID_forKeyPath_completionHandler___block_invoke;
    block[3] = &unk_279734668;
    block[4] = v18;
    v32 = v12;
    v33 = v22;
    v34 = v15;
    v35 = v16;
    dispatch_async(v23, block);
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = v18;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v27 = v30 = v24;
      *buf = 138543874;
      v39 = v27;
      v40 = 2112;
      v41 = v21;
      v42 = 2112;
      v43 = v13;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Unable to find matching accessory with UUID: %@ in home (%@) to sync settings", buf, 0x20u);

      v24 = v30;
    }

    objc_autoreleasePoolPop(v24);
    if (v16)
    {
      v28 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      (*(v16 + 2))(v16, v28);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_writeSettingValue:(id)a3 toAccessory:(id)a4 forKeyPath:(id)a5 completionHandler:(id)a6
{
  v96 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HMDSiriEndpointSettingsSyncManager *)self workQueue];
  dispatch_assert_queue_V2(v14);

  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138544130;
    v89 = v18;
    v90 = 2112;
    v91 = v10;
    v92 = 2112;
    v93 = v11;
    v94 = 2112;
    v95 = v12;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Writing setting value: %@ to siri endpoint accessory: %@ for keypath: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v15);
  if ([v12 isEqualToString:@"root.siri.allowHeySiri"])
  {
    v19 = v10;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    if (v21)
    {
      v22 = [v21 BOOLValue];
      v23 = [v11 siriEndpointProfile];
      v84[0] = MEMORY[0x277D85DD0];
      v84[1] = 3221225472;
      v84[2] = __98__HMDSiriEndpointSettingsSyncManager__writeSettingValue_toAccessory_forKeyPath_completionHandler___block_invoke;
      v84[3] = &unk_279735BE8;
      v84[4] = v16;
      v85 = v11;
      v86 = v21;
      v87 = v13;
      [v23 setListening:v22 completionHandler:v84];

      v24 = v85;
LABEL_29:

      goto LABEL_55;
    }

    v33 = objc_autoreleasePoolPush();
    v34 = v16;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138544130;
      v89 = v36;
      v90 = 2112;
      v91 = v19;
      v92 = 2112;
      v93 = v12;
      v94 = 2112;
      v95 = v11;
      v37 = "%{public}@heySiriSettingValue (%@) for keypath %@, accessory: %@, is not of BOOL setting type";
LABEL_52:
      _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, v37, buf, 0x2Au);

      goto LABEL_53;
    }

    goto LABEL_53;
  }

  if ([v12 isEqualToString:@"root.siri.tapToAccess"])
  {
    v25 = v10;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v21 = v26;

    if (v21)
    {
      v27 = [v21 BOOLValue];
      v28 = [v11 siriEndpointProfile];
      v80[0] = MEMORY[0x277D85DD0];
      v80[1] = 3221225472;
      v80[2] = __98__HMDSiriEndpointSettingsSyncManager__writeSettingValue_toAccessory_forKeyPath_completionHandler___block_invoke_61;
      v80[3] = &unk_279735BE8;
      v80[4] = v16;
      v81 = v11;
      v82 = v21;
      v83 = v13;
      [v28 setTouchToUse:v27 completionHandler:v80];

      v24 = v81;
      goto LABEL_29;
    }

    v33 = objc_autoreleasePoolPush();
    v34 = v16;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138544130;
      v89 = v36;
      v90 = 2112;
      v91 = v25;
      v92 = 2112;
      v93 = v12;
      v94 = 2112;
      v95 = v11;
      v37 = "%{public}@tapToAccessSettingValue (%@) for keypath %@, accessory: %@, is not of BOOL setting type";
      goto LABEL_52;
    }

LABEL_53:

    objc_autoreleasePoolPop(v33);
    if (v13)
    {
      v52 = [MEMORY[0x277CCA9B8] hmErrorWithCode:43];
      (*(v13 + 2))(v13, v52);
    }

    goto LABEL_55;
  }

  if ([v12 isEqualToString:@"root.siri.lightWhenUsingSiri"])
  {
    v29 = v10;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v21 = v30;

    if (v21)
    {
      v31 = [v21 BOOLValue];
      v32 = [v11 siriEndpointProfile];
      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = __98__HMDSiriEndpointSettingsSyncManager__writeSettingValue_toAccessory_forKeyPath_completionHandler___block_invoke_62;
      v76[3] = &unk_279735BE8;
      v76[4] = v16;
      v77 = v11;
      v78 = v21;
      v79 = v13;
      [v32 setLightOnUse:v31 completionHandler:v76];

      v24 = v77;
      goto LABEL_29;
    }

    v33 = objc_autoreleasePoolPush();
    v34 = v16;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138544130;
      v89 = v36;
      v90 = 2112;
      v91 = v29;
      v92 = 2112;
      v93 = v12;
      v94 = 2112;
      v95 = v11;
      v37 = "%{public}@lightWhenUsingSiriSettingValue (%@) for keypath %@, accessory: %@, is not of BOOL setting type";
      goto LABEL_52;
    }

    goto LABEL_53;
  }

  if ([v12 isEqualToString:@"root.siri.soundAlert"])
  {
    v38 = v10;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = v38;
    }

    else
    {
      v39 = 0;
    }

    v21 = v39;

    if (v21)
    {
      v40 = [v21 BOOLValue];
      v41 = [v11 siriEndpointProfile];
      v72[0] = MEMORY[0x277D85DD0];
      v72[1] = 3221225472;
      v72[2] = __98__HMDSiriEndpointSettingsSyncManager__writeSettingValue_toAccessory_forKeyPath_completionHandler___block_invoke_63;
      v72[3] = &unk_279735BE8;
      v72[4] = v16;
      v73 = v11;
      v74 = v21;
      v75 = v13;
      [v41 setSoundOnUse:v40 completionHandler:v72];

      v24 = v73;
      goto LABEL_29;
    }

    v33 = objc_autoreleasePoolPush();
    v34 = v16;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138544130;
      v89 = v36;
      v90 = 2112;
      v91 = v38;
      v92 = 2112;
      v93 = v12;
      v94 = 2112;
      v95 = v11;
      v37 = "%{public}@soundWhenUsingSiriSettingValue (%@) for keypath %@, accessory: %@, is not of BOOL setting type";
      goto LABEL_52;
    }

    goto LABEL_53;
  }

  if ([v12 isEqualToString:@"root.airPlay.airPlayEnabled"])
  {
    v42 = v10;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = v42;
    }

    else
    {
      v43 = 0;
    }

    v21 = v43;

    if (v21)
    {
      v44 = [v11 mediaProfile];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v45 = v44;
      }

      else
      {
        v45 = 0;
      }

      v46 = v45;

      if (v46)
      {
        v47 = [v21 BOOLValue];
        v68[0] = MEMORY[0x277D85DD0];
        v68[1] = 3221225472;
        v68[2] = __98__HMDSiriEndpointSettingsSyncManager__writeSettingValue_toAccessory_forKeyPath_completionHandler___block_invoke_65;
        v68[3] = &unk_279735BE8;
        v68[4] = v16;
        v69 = v11;
        v70 = v21;
        v71 = v13;
        [v46 setEnable:v47 completionHandler:v68];
      }

      else
      {
        v59 = objc_autoreleasePoolPush();
        v60 = v16;
        v61 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v62 = v63 = v59;
          *buf = 138544130;
          v89 = v62;
          v90 = 2112;
          v91 = v42;
          v92 = 2112;
          v93 = v12;
          v94 = 2112;
          v95 = v11;
          _os_log_impl(&dword_2531F8000, v61, OS_LOG_TYPE_ERROR, "%{public}@Unable to synchronize airplayEnabledSettingValue (%@) for keypath %@, accessory: %@, as accessory does not have a hapMediaProfile", buf, 0x2Au);

          v59 = v63;
        }

        objc_autoreleasePoolPop(v59);
      }

      goto LABEL_55;
    }

    v54 = objc_autoreleasePoolPush();
    v55 = v16;
    v56 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      v58 = HMFGetLogIdentifier();
      *buf = 138544130;
      v89 = v58;
      v90 = 2112;
      v91 = v42;
      v92 = 2112;
      v93 = v12;
      v94 = 2112;
      v95 = v11;
      _os_log_impl(&dword_2531F8000, v56, OS_LOG_TYPE_ERROR, "%{public}@airplayEnabledSettingValue (%@) for keypath %@, accessory: %@, is not of BOOL setting type", buf, 0x2Au);
    }
  }

  else
  {
    if ([v12 isEqualToString:@"root.siri.siriEnabled"])
    {
      v48 = v10;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v49 = v48;
      }

      else
      {
        v49 = 0;
      }

      v21 = v49;

      if (v21)
      {
        v50 = [v21 BOOLValue];
        v51 = [v11 siriEndpointProfile];
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = __98__HMDSiriEndpointSettingsSyncManager__writeSettingValue_toAccessory_forKeyPath_completionHandler___block_invoke_66;
        v64[3] = &unk_279735BE8;
        v64[4] = v16;
        v65 = v11;
        v66 = v21;
        v67 = v13;
        [v51 setEnable:v50 completionHandler:v64];

        v24 = v65;
        goto LABEL_29;
      }

      v33 = objc_autoreleasePoolPush();
      v34 = v16;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138544130;
        v89 = v36;
        v90 = 2112;
        v91 = v48;
        v92 = 2112;
        v93 = v12;
        v94 = 2112;
        v95 = v11;
        v37 = "%{public}@siriEnabledSettingValue (%@) for keypath %@, accessory: %@, is not of BOOL setting type";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    v54 = objc_autoreleasePoolPush();
    v55 = v16;
    v56 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      v57 = HMFGetLogIdentifier();
      *buf = 138544130;
      v89 = v57;
      v90 = 2112;
      v91 = v12;
      v92 = 2112;
      v93 = v10;
      v94 = 2112;
      v95 = v11;
      _os_log_impl(&dword_2531F8000, v56, OS_LOG_TYPE_ERROR, "%{public}@Unknown keypath (%@) for homekit backed siri endpoint setting value (%@) accessory: %@", buf, 0x2Au);
    }
  }

  objc_autoreleasePoolPop(v54);
  if (!v13)
  {
    goto LABEL_56;
  }

  v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:43];
  (*(v13 + 2))(v13, v21);
LABEL_55:

LABEL_56:
  v53 = *MEMORY[0x277D85DE8];
}

void __98__HMDSiriEndpointSettingsSyncManager__writeSettingValue_toAccessory_forKeyPath_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    [*(a1 + 48) BOOLValue];
    v9 = HMFBooleanToString();
    v10 = HMFBooleanToString();
    v13 = 138544386;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Synchronized hey siri enabled on %@ to %@ with success: %@ (%@)", &v13, 0x34u);
  }

  objc_autoreleasePoolPop(v4);
  v11 = *(a1 + 56);
  if (v11)
  {
    (*(v11 + 16))(v11, v3);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __98__HMDSiriEndpointSettingsSyncManager__writeSettingValue_toAccessory_forKeyPath_completionHandler___block_invoke_61(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    [*(a1 + 48) BOOLValue];
    v9 = HMFBooleanToString();
    v10 = HMFBooleanToString();
    v13 = 138544386;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Synchronized tap to access on %@ to %@ with success: %@ (%@)", &v13, 0x34u);
  }

  objc_autoreleasePoolPop(v4);
  v11 = *(a1 + 56);
  if (v11)
  {
    (*(v11 + 16))(v11, v3);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __98__HMDSiriEndpointSettingsSyncManager__writeSettingValue_toAccessory_forKeyPath_completionHandler___block_invoke_62(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    [*(a1 + 48) BOOLValue];
    v9 = HMFBooleanToString();
    v10 = HMFBooleanToString();
    v13 = 138544386;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Synchronized light on use on %@ to %@ with success: %@ (%@)", &v13, 0x34u);
  }

  objc_autoreleasePoolPop(v4);
  v11 = *(a1 + 56);
  if (v11)
  {
    (*(v11 + 16))(v11, v3);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __98__HMDSiriEndpointSettingsSyncManager__writeSettingValue_toAccessory_forKeyPath_completionHandler___block_invoke_63(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    [*(a1 + 48) BOOLValue];
    v9 = HMFBooleanToString();
    v10 = HMFBooleanToString();
    v13 = 138544386;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Synchronized sound on use on %@ to %@ with success: %@ (%@)", &v13, 0x34u);
  }

  objc_autoreleasePoolPop(v4);
  v11 = *(a1 + 56);
  if (v11)
  {
    (*(v11 + 16))(v11, v3);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __98__HMDSiriEndpointSettingsSyncManager__writeSettingValue_toAccessory_forKeyPath_completionHandler___block_invoke_65(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    [*(a1 + 48) BOOLValue];
    v9 = HMFBooleanToString();
    v10 = HMFBooleanToString();
    v13 = 138544386;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Synchronized airplayEnabled on %@ to %@ with success: %@ (%@)", &v13, 0x34u);
  }

  objc_autoreleasePoolPop(v4);
  v11 = *(a1 + 56);
  if (v11)
  {
    (*(v11 + 16))(v11, v3);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __98__HMDSiriEndpointSettingsSyncManager__writeSettingValue_toAccessory_forKeyPath_completionHandler___block_invoke_66(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    [*(a1 + 48) BOOLValue];
    v9 = HMFBooleanToString();
    v10 = HMFBooleanToString();
    v13 = 138544386;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Synchronized siriEnabled on %@ to %@ with success: %@ (%@)", &v13, 0x34u);
  }

  objc_autoreleasePoolPop(v4);
  v11 = *(a1 + 56);
  if (v11)
  {
    (*(v11 + 16))(v11, v3);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_writeSetting:(id)a3 toAccessory:(id)a4 forKeyPath:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    v14 = [objc_alloc(MEMORY[0x277CD1DA8]) initWithBoolValue:{objc_msgSend(v13, "BOOLValue")}];
    [(HMDSiriEndpointSettingsSyncManager *)self _writeSettingValue:v14 toAccessory:v9 forKeyPath:v10];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unexpected setting type received.", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_synchronizeSettingsForAccessoryUUID:(id)a3 homeUUID:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDSiriEndpointSettingsSyncManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543874;
    v38 = v12;
    v39 = 2112;
    v40 = v6;
    v41 = 2112;
    v42 = v7;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Synchronizing homekit backed siri endpoint settings for accessoryUUID: %@, homeUUID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [(HMDSiriEndpointSettingsSyncManager *)v10 dataSource];
  v14 = [v13 homesForSiriEndpointSettingsSyncManager:v10];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __84__HMDSiriEndpointSettingsSyncManager__synchronizeSettingsForAccessoryUUID_homeUUID___block_invoke;
  v35[3] = &unk_2797323C0;
  v15 = v7;
  v36 = v15;
  v16 = [v14 na_firstObjectPassingTest:v35];

  v17 = [v16 hapAccessories];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __84__HMDSiriEndpointSettingsSyncManager__synchronizeSettingsForAccessoryUUID_homeUUID___block_invoke_2;
  v33[3] = &unk_2797304D0;
  v18 = v6;
  v34 = v18;
  v19 = [v17 na_firstObjectPassingTest:v33];

  if (v19)
  {
    v20 = [v13 compositeSettingsControllerManagerForSiriEndpointSettingsSyncManager:v10];
    if (v20)
    {
      v21 = +[HMDSiriEndpointSettingsSyncManager siriEndPointHomeKitBackedKeyPaths];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __84__HMDSiriEndpointSettingsSyncManager__synchronizeSettingsForAccessoryUUID_homeUUID___block_invoke_56;
      v31[3] = &unk_27972B2A8;
      v31[4] = v10;
      v32 = v19;
      [v20 localFetchSettingsForUUID:v18 homeUUID:v15 withKeyPaths:v21 completion:v31];
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = v10;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543874;
        v38 = v29;
        v39 = 2112;
        v40 = v16;
        v41 = 2112;
        v42 = v18;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Unable to data source settings manager to sync settings for home: %@, accessory: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v26);
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v10;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543874;
      v38 = v25;
      v39 = 2112;
      v40 = v16;
      v41 = 2112;
      v42 = v18;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unable to find matching accessory with UUID: %@ in home (%@) to sync settings", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v22);
  }

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __84__HMDSiriEndpointSettingsSyncManager__synchronizeSettingsForAccessoryUUID_homeUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

uint64_t __84__HMDSiriEndpointSettingsSyncManager__synchronizeSettingsForAccessoryUUID_homeUUID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

void __84__HMDSiriEndpointSettingsSyncManager__synchronizeSettingsForAccessoryUUID_homeUUID___block_invoke_56(uint64_t a1, void *a2, void *a3, void *a4)
{
  v72 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v55 = a3;
  v54 = a4;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v57 objects:v71 count:16];
  if (v9)
  {
    v10 = v9;
    v56 = *v58;
    v53 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v58 != v56)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v57 + 1) + 8 * v11);
        v13 = +[HMDSiriEndpointSettingsSyncManager siriEndPointHomeKitBackedKeyPaths];
        v14 = [v12 keyPath];
        v15 = [v13 containsObject:v14];

        if ((v15 & 1) == 0)
        {
          v17 = objc_autoreleasePoolPush();
          v18 = *(a1 + 32);
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = HMFGetLogIdentifier();
            v21 = [v12 keyPath];
            *buf = 138544130;
            v62 = v20;
            v63 = 2112;
            v64 = v21;
            v65 = 2112;
            v66 = v55;
            v67 = 2112;
            v68 = v54;
            v23 = v19;
            v24 = OS_LOG_TYPE_INFO;
            v25 = "%{public}@Did fetch settings value event for an unexpected keypath %@, uuid: %@, homeUUID: %@";
            v26 = 42;
            goto LABEL_12;
          }

LABEL_14:

          objc_autoreleasePoolPop(v17);
          goto LABEL_15;
        }

        v16 = [v12 error];

        if (v16)
        {
          v17 = objc_autoreleasePoolPush();
          v18 = *(a1 + 32);
          v19 = HMFGetOSLogHandle();
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_14;
          }

          v20 = HMFGetLogIdentifier();
          v21 = [v12 keyPath];
          v22 = [v12 error];
          *buf = 138544386;
          v62 = v20;
          v63 = 2112;
          v64 = v21;
          v65 = 2112;
          v66 = v55;
          v67 = 2112;
          v68 = v54;
          v69 = 2112;
          v70 = v22;
          _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Error fetching settings value event for keypath %@, uuid: %@, homeUUID: %@ error: %@", buf, 0x34u);

          v8 = v53;
LABEL_13:

          goto LABEL_14;
        }

        v27 = [v12 setting];

        if (!v27)
        {
          v17 = objc_autoreleasePoolPush();
          v18 = *(a1 + 32);
          v19 = HMFGetOSLogHandle();
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_14;
          }

          v20 = HMFGetLogIdentifier();
          v21 = [v12 keyPath];
          *buf = 138544386;
          v62 = v20;
          v63 = 2112;
          v64 = v21;
          v65 = 2112;
          v66 = v55;
          v67 = 2112;
          v68 = v54;
          v69 = 2112;
          v70 = v12;
          v23 = v19;
          v24 = OS_LOG_TYPE_ERROR;
          v25 = "%{public}@Error fetching settings value event for keypath %@, uuid: %@, homeUUID: %@ no setting returned in result: %@";
          v26 = 52;
LABEL_12:
          _os_log_impl(&dword_2531F8000, v23, v24, v25, buf, v26);
          goto LABEL_13;
        }

        v28 = [v12 setting];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v29 = v28;
        }

        else
        {
          v29 = 0;
        }

        v30 = v29;
        if (v30)
        {
          v31 = [objc_alloc(MEMORY[0x277CD1DA8]) initWithBoolValue:{objc_msgSend(v30, "BOOLValue")}];
        }

        else
        {
          v32 = v28;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v33 = v32;
          }

          else
          {
            v33 = 0;
          }

          v34 = v33;

          if (v34)
          {
            v35 = objc_alloc(MEMORY[0x277CD1DC8]);
            v36 = [v34 stringValue];
            v31 = [v35 initWithStringValue:v36];
          }

          else
          {
            v37 = v32;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v38 = v37;
            }

            else
            {
              v38 = 0;
            }

            v36 = v38;

            if (v36)
            {
              v39 = objc_alloc(MEMORY[0x277CD1DB8]);
              v40 = [v36 numberValue];
              v31 = [v39 initWithIntegerValue:{objc_msgSend(v40, "integerValue")}];
            }

            else
            {
              v41 = v37;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v42 = v41;
              }

              else
              {
                v42 = 0;
              }

              v40 = v42;

              if (v40)
              {
                v50 = objc_alloc(MEMORY[0x277CD1DC0]);
                v52 = [v40 inputLanguageCode];
                v51 = [v40 outputVoiceLanguageCode];
                v49 = [v40 outputVoiceGenderCode];
                v48 = [v40 voiceName];
                v31 = [v50 initWithInputLanguageCode:v52 outputVoiceLanguageCode:v51 outputVoiceGenderCode:v49 voiceName:v48];
              }

              else
              {
                v31 = 0;
              }
            }
          }

          v8 = v53;
        }

        v43 = *(a1 + 32);
        v44 = *(a1 + 40);
        v45 = [v12 keyPath];
        [v43 _writeSettingValue:v31 toAccessory:v44 forKeyPath:v45];

LABEL_15:
        ++v11;
      }

      while (v10 != v11);
      v46 = [v8 countByEnumeratingWithState:&v57 objects:v71 count:16];
      v10 = v46;
    }

    while (v46);
  }

  v47 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryIsReachableNotification:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v7 home];
    if (v8)
    {
      os_unfair_lock_lock_with_options();
      v9 = [(HMDSiriEndpointSettingsSyncManager *)self homeUUIDsManagedByCurrentDevice];
      v10 = [v8 uuid];
      v11 = [v9 containsObject:v10];

      if (v11)
      {
        os_unfair_lock_unlock(&self->_lock);
        v12 = [(HMDSiriEndpointSettingsSyncManager *)self workQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __77__HMDSiriEndpointSettingsSyncManager_handleAccessoryIsReachableNotification___block_invoke;
        block[3] = &unk_279734960;
        block[4] = self;
        v27 = v7;
        v28 = v8;
        dispatch_async(v12, block);
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        v22 = self;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = HMFGetLogIdentifier();
          *buf = 138543874;
          v30 = v24;
          v31 = 2112;
          v32 = v8;
          v33 = 2112;
          v34 = v7;
          _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Received accessory reachability notification for unmanaged home %@ accessory %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v21);
        os_unfair_lock_unlock(&self->_lock);
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543874;
        v30 = v20;
        v31 = 2112;
        v32 = v7;
        v33 = 2112;
        v34 = v4;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Unable to synchronize settings after receiving endpoint reachable notification with no home for HAP accessory: %@. %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
    }
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
      v30 = v16;
      v31 = 2112;
      v32 = v4;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Unable to synchronize settings after receiving endpoint reachable notification with no HAP accessory. %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __77__HMDSiriEndpointSettingsSyncManager_handleAccessoryIsReachableNotification___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) uuid];
  v3 = [*(a1 + 48) uuid];
  [v2 _synchronizeSettingsForAccessoryUUID:v4 homeUUID:v3];
}

- (void)handleHAPMediaProfileAddedNotification:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v7 home];
    if (v8)
    {
      os_unfair_lock_lock_with_options();
      v9 = [(HMDSiriEndpointSettingsSyncManager *)self homeUUIDsManagedByCurrentDevice];
      v10 = [v8 uuid];
      v11 = [v9 containsObject:v10];

      if (v11)
      {
        os_unfair_lock_unlock(&self->_lock);
        v12 = [(HMDSiriEndpointSettingsSyncManager *)self workQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __77__HMDSiriEndpointSettingsSyncManager_handleHAPMediaProfileAddedNotification___block_invoke;
        block[3] = &unk_279734960;
        block[4] = self;
        v27 = v7;
        v28 = v8;
        dispatch_async(v12, block);
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        v22 = self;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = HMFGetLogIdentifier();
          *buf = 138543874;
          v30 = v24;
          v31 = 2112;
          v32 = v8;
          v33 = 2112;
          v34 = v7;
          _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Received HAPMediaProfileAdded notification for unmanaged home %@ accessory %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v21);
        os_unfair_lock_unlock(&self->_lock);
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543874;
        v30 = v20;
        v31 = 2112;
        v32 = v7;
        v33 = 2112;
        v34 = v4;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Unable to synchronize settings after receiving HAPMediaProfile notification with no home for HAP accessory: %@. %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
    }
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
      v30 = v16;
      v31 = 2112;
      v32 = v4;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Unable to synchronize settings after receiving HAPMediaProfile added notification with no HAP accessory. %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __77__HMDSiriEndpointSettingsSyncManager_handleHAPMediaProfileAddedNotification___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) uuid];
  v3 = [*(a1 + 48) uuid];
  [v2 _synchronizeSettingsForAccessoryUUID:v4 homeUUID:v3];
}

- (void)handleCompositeSettingsControllerDidConfigureNotification:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v31 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Did handle CompositeSettingsControllerDidConfigure notification", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v4 userInfo];
  v10 = [v9 objectForKeyedSubscript:@"HMDHomeUUIDOwnerUUIDKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = [v12 hmf_UUIDForKey:@"HMDCompositeSettingControllerHomeUUIDNotificationKey"];
  v14 = [v12 hmf_UUIDForKey:@"HMDCompositeSettingControllerOwnerUUIDNotificationKey"];
  if (v14 && v13)
  {
    os_unfair_lock_lock_with_options();
    v15 = [(HMDSiriEndpointSettingsSyncManager *)v6 homeUUIDsManagedByCurrentDevice];
    v16 = [v15 containsObject:v13];

    if (v16)
    {
      os_unfair_lock_unlock(&v6->_lock);
      v17 = [(HMDSiriEndpointSettingsSyncManager *)v6 workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __96__HMDSiriEndpointSettingsSyncManager_handleCompositeSettingsControllerDidConfigureNotification___block_invoke;
      block[3] = &unk_279734960;
      block[4] = v6;
      v28 = v14;
      v29 = v13;
      dispatch_async(v17, block);
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = v6;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543618;
        v31 = v25;
        v32 = 2112;
        v33 = v13;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Home:%@ not managed", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      os_unfair_lock_unlock(&v6->_lock);
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = v6;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543874;
      v31 = v21;
      v32 = 2112;
      v33 = v14;
      v34 = 2112;
      v35 = v13;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Nil hapAccessoryUUID:%@ or homeUUID:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)handleSiriEndPointAddedNotification:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v7 home];
    if (v8)
    {
      os_unfair_lock_lock_with_options();
      v9 = [(HMDSiriEndpointSettingsSyncManager *)self homeUUIDsManagedByCurrentDevice];
      v10 = [v8 uuid];
      v11 = [v9 containsObject:v10];

      os_unfair_lock_unlock(&self->_lock);
      if (v11)
      {
        v12 = [(HMDSiriEndpointSettingsSyncManager *)self workQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __74__HMDSiriEndpointSettingsSyncManager_handleSiriEndPointAddedNotification___block_invoke;
        block[3] = &unk_279734960;
        block[4] = self;
        v23 = v7;
        v24 = v8;
        dispatch_async(v12, block);
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543874;
        v26 = v20;
        v27 = 2112;
        v28 = v7;
        v29 = 2112;
        v30 = v4;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Unable to synchronize settings after receiving endpoint added notification with no home for HAP accessory: %@. %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
    }
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
      v26 = v16;
      v27 = 2112;
      v28 = v4;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Unable to synchronize settings after receiving endpoint added notification with no HAP accessory. %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeAddedNotification:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Settings sync manager received home added notification: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDSiriEndpointSettingsSyncManager *)v6 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__HMDSiriEndpointSettingsSyncManager_handleHomeAddedNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = v6;
  dispatch_async(v9, block);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeRemovedNotification:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v27 = v8;
    v28 = 2112;
    v29 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Settings sync manager received home removed notification: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v4 userInfo];
  v10 = [v9 objectForKey:@"HMDHomeNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    os_unfair_lock_lock_with_options();
    v13 = [(HMDSiriEndpointSettingsSyncManager *)v6 homeUUIDsManagedByCurrentDevice];
    v14 = [v12 uuid];
    v15 = [v13 containsObject:v14];

    if (v15)
    {
      v16 = [(HMDSiriEndpointSettingsSyncManager *)v6 homeUUIDsManagedByCurrentDevice];
      v17 = [v12 uuid];
      [v16 removeObject:v17];

      os_unfair_lock_unlock(&v6->_lock);
      v18 = [(HMDSiriEndpointSettingsSyncManager *)v6 workQueue];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __68__HMDSiriEndpointSettingsSyncManager_handleHomeRemovedNotification___block_invoke;
      v24[3] = &unk_2797359B0;
      v24[4] = v6;
      v25 = v12;
      dispatch_async(v18, v24);
    }

    else
    {
      os_unfair_lock_unlock(&v6->_lock);
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = v6;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v22;
      v28 = 2112;
      v29 = v4;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@No home found for home removed notification: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)handlePrimaryResidentUpdateNotification:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 name];
    *buf = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling %@ notification", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [(HMDSiriEndpointSettingsSyncManager *)v6 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HMDSiriEndpointSettingsSyncManager_handlePrimaryResidentUpdateNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = v6;
  dispatch_async(v10, block);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveEvent:(id)a3 topic:(id)a4
{
  v69 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CD19F0] decodeTopic:v7];
  v9 = [v8 asAccessorySettingTopic];

  if (!v9)
  {
    goto LABEL_33;
  }

  v10 = [v9 accessorySettingKeyPath];

  if (!v10)
  {
    v29 = objc_autoreleasePoolPush();
    v30 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543874;
      v62 = v32;
      v63 = 2112;
      v64 = v6;
      v65 = 2112;
      v66 = v7;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Nil Keypath for settings update event: %@ topic: %@", buf, 0x20u);
    }

    goto LABEL_19;
  }

  v11 = [v9 homeUUID];

  if (!v11)
  {
    v29 = objc_autoreleasePoolPush();
    v30 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543874;
      v62 = v33;
      v63 = 2112;
      v64 = v6;
      v65 = 2112;
      v66 = v7;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Nil homeUUID for settings update event: %@ topic: %@", buf, 0x20u);
    }

    goto LABEL_19;
  }

  v12 = [v9 accessoryUUID];

  if (!v12)
  {
    v29 = objc_autoreleasePoolPush();
    v30 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543874;
      v62 = v34;
      v63 = 2112;
      v64 = v6;
      v65 = 2112;
      v66 = v7;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Nil accessoryUUID for settings update event: %@ topic: %@", buf, 0x20u);
    }

LABEL_19:

    objc_autoreleasePoolPop(v29);
    goto LABEL_33;
  }

  v60 = 0;
  v13 = [MEMORY[0x277CD1AD8] decodeSettingFromEvent:v6 error:&v60];
  v51 = v60;
  if (!v13)
  {
    v35 = objc_autoreleasePoolPush();
    v36 = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543874;
      v62 = v38;
      v63 = 2112;
      v64 = v6;
      v65 = 2112;
      v66 = v7;
      _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_ERROR, "%{public}@Nil settings value for settings update event: %@ topic: %@", buf, 0x20u);
    }

    goto LABEL_24;
  }

  v14 = +[HMDSiriEndpointSettingsSyncManager siriEndPointHomeKitBackedKeyPaths];
  v15 = [v9 accessorySettingKeyPath];
  v16 = [v14 containsObject:v15];

  if ((v16 & 1) == 0)
  {
    v35 = objc_autoreleasePoolPush();
    v39 = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      v40 = HMFGetLogIdentifier();
      *buf = 138543874;
      v62 = v40;
      v63 = 2112;
      v64 = v6;
      v65 = 2112;
      v66 = v7;
      _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_DEBUG, "%{public}@Did receive settings value event for an unwatched keypath. Event: %@ Topic: %@", buf, 0x20u);
    }

LABEL_24:

    objc_autoreleasePoolPop(v35);
    goto LABEL_33;
  }

  v17 = [(HMDSiriEndpointSettingsSyncManager *)self dataSource];
  v18 = [v17 homesForSiriEndpointSettingsSyncManager:self];
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __60__HMDSiriEndpointSettingsSyncManager_didReceiveEvent_topic___block_invoke;
  v58[3] = &unk_2797323C0;
  v19 = v9;
  v59 = v19;
  v50 = [v18 na_firstObjectPassingTest:v58];

  os_unfair_lock_lock_with_options();
  v20 = [(HMDSiriEndpointSettingsSyncManager *)self homeUUIDsManagedByCurrentDevice];
  v21 = [v50 uuid];
  v22 = [v20 containsObject:v21];

  if (v22)
  {
    os_unfair_lock_unlock(&self->_lock);
    v23 = [v50 hapAccessories];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __60__HMDSiriEndpointSettingsSyncManager_didReceiveEvent_topic___block_invoke_50;
    v56[3] = &unk_2797304D0;
    v24 = v19;
    v57 = v24;
    v25 = [v23 na_firstObjectPassingTest:v56];

    if (!v25 || ([v25 siriEndpointProfile], v26 = objc_claimAutoreleasedReturnValue(), v27 = v26 == 0, v26, v27))
    {
      v45 = objc_autoreleasePoolPush();
      v46 = self;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = HMFGetLogIdentifier();
        *buf = 138544130;
        v62 = v48;
        v63 = 2112;
        v64 = v50;
        v65 = 2112;
        v66 = v6;
        v67 = 2112;
        v68 = v7;
        _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_ERROR, "%{public}@Unable to find matching siri endpoint enabled accessory in home (%@) for settings update event: %@ topic: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v45);
    }

    else
    {
      v28 = [(HMDSiriEndpointSettingsSyncManager *)self workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__HMDSiriEndpointSettingsSyncManager_didReceiveEvent_topic___block_invoke_52;
      block[3] = &unk_279734870;
      block[4] = self;
      v53 = v13;
      v54 = v25;
      v55 = v24;
      dispatch_async(v28, block);
    }
  }

  else
  {
    v41 = objc_autoreleasePoolPush();
    v42 = self;
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v44 = HMFGetLogIdentifier();
      *buf = 138543874;
      v62 = v44;
      v63 = 2112;
      v64 = v6;
      v65 = 2112;
      v66 = v7;
      _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_INFO, "%{public}@Received settings update event: %@ topic: %@ for unmanaged home", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v41);
    os_unfair_lock_unlock(&self->_lock);
  }

LABEL_33:
  v49 = *MEMORY[0x277D85DE8];
}

uint64_t __60__HMDSiriEndpointSettingsSyncManager_didReceiveEvent_topic___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) homeUUID];
  v5 = [v3 hmf_isEqualToUUID:v4];

  return v5;
}

uint64_t __60__HMDSiriEndpointSettingsSyncManager_didReceiveEvent_topic___block_invoke_50(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) accessoryUUID];
  v5 = [v3 hmf_isEqualToUUID:v4];

  return v5;
}

void __60__HMDSiriEndpointSettingsSyncManager_didReceiveEvent_topic___block_invoke_52(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = [*(a1 + 56) accessorySettingKeyPath];
  [v1 _writeSetting:v2 toAccessory:v3 forKeyPath:v4];
}

- (void)_updateManagedHomes
{
  v70 = *MEMORY[0x277D85DE8];
  v3 = [(HMDSiriEndpointSettingsSyncManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v60 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Updating homes for siri endpoint settings sync", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [MEMORY[0x277CBEB58] set];
  v9 = [(HMDSiriEndpointSettingsSyncManager *)v5 dataSource];
  v10 = [v9 homesForSiriEndpointSettingsSyncManager:v5];

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v55 objects:v69 count:16];
  if (v12)
  {
    v13 = *v56;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v56 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v55 + 1) + 8 * i);
        if ([v15 isCurrentDeviceConfirmedPrimaryResident])
        {
          [v8 addObject:v15];
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v55 objects:v69 count:16];
    }

    while (v12);
  }

  os_unfair_lock_lock_with_options();
  v16 = [(HMDSiriEndpointSettingsSyncManager *)v5 homeUUIDsManagedByCurrentDevice];
  v17 = [v16 copy];

  os_unfair_lock_unlock(&v5->_lock);
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __57__HMDSiriEndpointSettingsSyncManager__updateManagedHomes__block_invoke;
  v53[3] = &unk_2797323C0;
  v18 = v17;
  v54 = v18;
  v19 = [v8 na_filter:v53];
  v20 = [v19 na_map:&__block_literal_global_44_110765];
  v21 = MEMORY[0x277CBEB98];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __57__HMDSiriEndpointSettingsSyncManager__updateManagedHomes__block_invoke_3;
  v50[3] = &unk_2797322A0;
  v22 = v18;
  v51 = v22;
  v41 = v8;
  v52 = v41;
  v23 = [v11 na_filter:v50];
  v24 = [v21 setWithArray:v23];

  v25 = [v24 na_map:&__block_literal_global_47_110767];
  os_unfair_lock_lock_with_options();
  v26 = [(HMDSiriEndpointSettingsSyncManager *)v5 homeUUIDsManagedByCurrentDevice];
  [v26 unionSet:v20];

  v27 = [(HMDSiriEndpointSettingsSyncManager *)v5 homeUUIDsManagedByCurrentDevice];
  [v27 minusSet:v25];

  os_unfair_lock_unlock(&v5->_lock);
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v28 = v19;
  v29 = [v28 countByEnumeratingWithState:&v46 objects:v68 count:16];
  if (v29)
  {
    v30 = *v47;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v47 != v30)
        {
          objc_enumerationMutation(v28);
        }

        [(HMDSiriEndpointSettingsSyncManager *)v5 _beginManagingHome:*(*(&v46 + 1) + 8 * j)];
      }

      v29 = [v28 countByEnumeratingWithState:&v46 objects:v68 count:16];
    }

    while (v29);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v32 = v24;
  v33 = [v32 countByEnumeratingWithState:&v42 objects:v67 count:16];
  if (v33)
  {
    v34 = *v43;
    do
    {
      for (k = 0; k != v33; ++k)
      {
        if (*v43 != v34)
        {
          objc_enumerationMutation(v32);
        }

        [(HMDSiriEndpointSettingsSyncManager *)v5 _stopManagingHome:*(*(&v42 + 1) + 8 * k)];
      }

      v33 = [v32 countByEnumeratingWithState:&v42 objects:v67 count:16];
    }

    while (v33);
  }

  v36 = objc_autoreleasePoolPush();
  v37 = v5;
  v38 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    v39 = HMFGetLogIdentifier();
    *buf = 138544130;
    v60 = v39;
    v61 = 2112;
    v62 = v32;
    v63 = 2112;
    v64 = v28;
    v65 = 2112;
    v66 = v22;
    _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@Updated homes for siri endpoint setting sync by removing: %@ and adding: %@ to existing homes: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v36);
  v40 = *MEMORY[0x277D85DE8];
}

uint64_t __57__HMDSiriEndpointSettingsSyncManager__updateManagedHomes__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

uint64_t __57__HMDSiriEndpointSettingsSyncManager__updateManagedHomes__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 uuid];
  if ([v4 containsObject:v5])
  {
    v6 = [*(a1 + 40) containsObject:v3] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)unregisterFromAccessoryNotificationsOnHapAccessory:(id)a3
{
  v4 = a3;
  v5 = [(HMDSiriEndpointSettingsSyncManager *)self notificationCenter];
  [v5 removeObserver:self name:@"HMDAccessoryIsReachableNotification" object:v4];

  v6 = [(HMDSiriEndpointSettingsSyncManager *)self notificationCenter];
  [v6 removeObserver:self name:@"HMDHAPMediaProfileAddedNotification" object:v4];
}

- (void)registerForAccessoryNotificationsOnHapAccessory:(id)a3
{
  v4 = a3;
  v5 = [(HMDSiriEndpointSettingsSyncManager *)self notificationCenter];
  [v5 addObserver:self selector:sel_handleAccessoryIsReachableNotification_ name:@"HMDAccessoryIsReachableNotification" object:v4];

  v6 = [(HMDSiriEndpointSettingsSyncManager *)self notificationCenter];
  [v6 addObserver:self selector:sel_handleHAPMediaProfileAddedNotification_ name:@"HMDHAPMediaProfileAddedNotification" object:v4];
}

- (void)_stopManagingAccessory:(id)a3 forHome:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDSiriEndpointSettingsSyncManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = +[HMDSiriEndpointSettingsSyncManager siriEndPointHomeKitBackedKeyPaths];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__HMDSiriEndpointSettingsSyncManager__stopManagingAccessory_forHome___block_invoke;
  v15[3] = &unk_27972E468;
  v16 = v7;
  v17 = v6;
  v10 = v6;
  v11 = v7;
  v12 = [v9 na_map:v15];

  v13 = [(HMDSiriEndpointSettingsSyncManager *)self subscriptionProvider];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__HMDSiriEndpointSettingsSyncManager__stopManagingAccessory_forHome___block_invoke_2;
  v14[3] = &unk_2797359D8;
  v14[4] = self;
  [v13 unregisterConsumer:self topicFilters:v12 completion:v14];

  [(HMDSiriEndpointSettingsSyncManager *)self unregisterFromAccessoryNotificationsOnHapAccessory:v10];
}

id __69__HMDSiriEndpointSettingsSyncManager__stopManagingAccessory_forHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 uuid];
  v6 = [*(a1 + 40) uuid];
  v7 = MEMORY[0x259C01CC0](v5, v6, v4);

  return v7;
}

void __69__HMDSiriEndpointSettingsSyncManager__stopManagingAccessory_forHome___block_invoke_2(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Unsubscribed endpoint setting sync manager with result: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_beginManagingAccessory:(id)a3 forHome:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDSiriEndpointSettingsSyncManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = +[HMDSiriEndpointSettingsSyncManager siriEndPointHomeKitBackedKeyPaths];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __70__HMDSiriEndpointSettingsSyncManager__beginManagingAccessory_forHome___block_invoke;
  v21[3] = &unk_27972E468;
  v10 = v7;
  v22 = v10;
  v11 = v6;
  v23 = v11;
  v12 = [v9 na_map:v21];

  [(HMDSiriEndpointSettingsSyncManager *)self unregisterFromAccessoryNotificationsOnHapAccessory:v11];
  [(HMDSiriEndpointSettingsSyncManager *)self registerForAccessoryNotificationsOnHapAccessory:v11];
  v13 = [(HMDSiriEndpointSettingsSyncManager *)self subscriptionProvider];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __70__HMDSiriEndpointSettingsSyncManager__beginManagingAccessory_forHome___block_invoke_2;
  v17[3] = &unk_27972B260;
  v17[4] = self;
  v18 = v12;
  v19 = v11;
  v20 = v10;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  [v13 registerConsumer:self topicFilters:v16 completion:v17];
}

id __70__HMDSiriEndpointSettingsSyncManager__beginManagingAccessory_forHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 uuid];
  v6 = [*(a1 + 40) uuid];
  v7 = MEMORY[0x259C01CC0](v5, v6, v4);

  return v7;
}

void __70__HMDSiriEndpointSettingsSyncManager__beginManagingAccessory_forHome___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 40);
    v12 = HMFBooleanToString();
    v17 = 138544130;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    v21 = 2112;
    v22 = v12;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Subscribed endpoint setting sync manager for changed topics (%@) with result: %@ (%@)", &v17, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  v13 = *(a1 + 32);
  v14 = [*(a1 + 48) uuid];
  v15 = [*(a1 + 56) uuid];
  [v13 _synchronizeSettingsForAccessoryUUID:v14 homeUUID:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_stopManagingHome:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDSiriEndpointSettingsSyncManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v4 hapAccessories];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v11 siriEndpointProfile];

        if (v12)
        {
          [(HMDSiriEndpointSettingsSyncManager *)self _stopManagingAccessory:v11 forHome:v4];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_beginManagingHome:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDSiriEndpointSettingsSyncManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v4 hapAccessories];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v11 siriEndpointProfile];

        if (v12)
        {
          [(HMDSiriEndpointSettingsSyncManager *)self _beginManagingAccessory:v11 forHome:v4];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)configure
{
  v3 = [(HMDSiriEndpointSettingsSyncManager *)self notificationCenter];
  [v3 addObserver:self selector:sel_handlePrimaryResidentUpdateNotification_ name:@"HMDResidentDeviceManagerAddResidentNotification" object:0];

  v4 = [(HMDSiriEndpointSettingsSyncManager *)self notificationCenter];
  [v4 addObserver:self selector:sel_handlePrimaryResidentUpdateNotification_ name:@"HMDResidentDeviceManagerUpdateResidentNotification" object:0];

  v5 = [(HMDSiriEndpointSettingsSyncManager *)self notificationCenter];
  [v5 addObserver:self selector:sel_handlePrimaryResidentUpdateNotification_ name:@"HMDResidentDeviceManagerRemoveResidentNotification" object:0];

  v6 = [(HMDSiriEndpointSettingsSyncManager *)self notificationCenter];
  [v6 addObserver:self selector:sel_handlePrimaryResidentUpdateNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:0];

  v7 = [(HMDSiriEndpointSettingsSyncManager *)self notificationCenter];
  [v7 addObserver:self selector:sel_handlePrimaryResidentUpdateNotification_ name:@"HMDResidentDeviceConfirmedStateChangedNotification" object:0];

  v8 = [(HMDSiriEndpointSettingsSyncManager *)self notificationCenter];
  [v8 addObserver:self selector:sel_handleSiriEndPointAddedNotification_ name:@"HMDSiriEndpointProfileAddedNotification" object:0];

  v9 = [(HMDSiriEndpointSettingsSyncManager *)self notificationCenter];
  [v9 addObserver:self selector:sel_handleCompositeSettingsControllerDidConfigureNotification_ name:@"HMDCompositeSettingsControllerDidConfigureNotification" object:0];

  v10 = [(HMDSiriEndpointSettingsSyncManager *)self notificationCenter];
  [v10 addObserver:self selector:sel_handleHomeRemovedNotification_ name:@"HMDHomeRemovedNotification" object:0];

  v11 = [(HMDSiriEndpointSettingsSyncManager *)self notificationCenter];
  [v11 addObserver:self selector:sel_handleHomeAddedNotification_ name:@"HMDHomeAddedNotification" object:0];

  v12 = [(HMDSiriEndpointSettingsSyncManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HMDSiriEndpointSettingsSyncManager_configure__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v12, block);
}

- (HMDSiriEndpointSettingsSyncManager)initWithDataSource:(id)a3 subscriptionProvider:(id)a4 notificationCenter:(id)a5 workQueue:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = HMDSiriEndpointSettingsSyncManager;
  v14 = [(HMDSiriEndpointSettingsSyncManager *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_dataSource, v10);
    objc_storeStrong(&v15->_subscriptionProvider, a4);
    v16 = [MEMORY[0x277CBEB58] set];
    homeUUIDsManagedByCurrentDevice = v15->_homeUUIDsManagedByCurrentDevice;
    v15->_homeUUIDsManagedByCurrentDevice = v16;

    objc_storeStrong(&v15->_notificationCenter, a5);
    objc_storeStrong(&v15->_workQueue, a6);
    v15->_lock._os_unfair_lock_opaque = 0;
  }

  return v15;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_110789 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_110789, &__block_literal_global_29_110790);
  }

  v3 = logCategory__hmf_once_v1_110791;

  return v3;
}

uint64_t __49__HMDSiriEndpointSettingsSyncManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_110791;
  logCategory__hmf_once_v1_110791 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (NSArray)siriEndPointHomeKitBackedKeyPaths
{
  if (siriEndPointHomeKitBackedKeyPaths_onceToken != -1)
  {
    dispatch_once(&siriEndPointHomeKitBackedKeyPaths_onceToken, &__block_literal_global_110796);
  }

  v3 = siriEndPointHomeKitBackedKeyPaths_siriEndPointHomeKitBackedKeyPaths;

  return v3;
}

void __71__HMDSiriEndpointSettingsSyncManager_siriEndPointHomeKitBackedKeyPaths__block_invoke()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = @"root.siri.lightWhenUsingSiri";
  v3[1] = @"root.siri.soundAlert";
  v3[2] = @"root.airPlay.airPlayEnabled";
  v3[3] = @"root.siri.siriEnabled";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:4];
  v1 = siriEndPointHomeKitBackedKeyPaths_siriEndPointHomeKitBackedKeyPaths;
  siriEndPointHomeKitBackedKeyPaths_siriEndPointHomeKitBackedKeyPaths = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end