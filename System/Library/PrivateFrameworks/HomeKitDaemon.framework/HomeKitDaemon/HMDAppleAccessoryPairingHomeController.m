@interface HMDAppleAccessoryPairingHomeController
+ (id)logCategory;
- (BOOL)handleMessage:(id)a3 from:(id)a4;
- (HMDAppleAccessoryPairingHomeController)initWithState:(id)a3 homeManager:(id)a4 dataSource:(id)a5;
- (id)logIdentifier;
- (id)workContext;
- (void)_handleDeviceNotification:(id)a3;
- (void)checkDeviceVersionAndSendUpgrade;
- (void)cleanupLegacyZone;
- (void)localZone:(id)a3 didProcessModelCreation:(id)a4;
- (void)localZone:(id)a3 didProcessModelDeletion:(id)a4;
- (void)localZone:(id)a3 didProcessModelUpdate:(id)a4;
- (void)postNotificationOfDeviceUpdated;
- (void)postSoftwareUpdateEventForDescriptor:(id)a3;
- (void)postSoftwareUpdateEventForSoftwareUpdate:(id)a3;
- (void)processHMDAppleMediaAccessoryModel:(id)a3;
- (void)processHMDResidentDeviceModel:(id)a3;
- (void)startWithLocalZone:(id)a3;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDAppleAccessoryPairingHomeController

- (id)logIdentifier
{
  v2 = [(HMDAppleAccessoryPairingHomeController *)self state];
  v3 = [v2 accessory];
  v4 = [v3 uuid];
  v5 = [v4 UUIDString];

  return v5;
}

- (void)processHMDAppleMediaAccessoryModel:(id)a3
{
  v78 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 deviceUUID];
  if (v5)
  {
  }

  else
  {
    v14 = [v4 device];

    if (v14)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = HMFGetLogIdentifier();
        v72 = 138543618;
        v73 = v18;
        v74 = 2112;
        v75 = v4;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Accessory model does not yet have a device identifier: %@", &v72, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      goto LABEL_46;
    }
  }

  v6 = [(HMDAppleAccessoryPairingHomeController *)self state];
  v7 = [v6 deviceIdentifier];

  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [(HMDAppleAccessoryPairingHomeController *)v9 state];
      v13 = [v12 deviceIdentifier];
      v72 = 138543874;
      v73 = v11;
      v74 = 2112;
      v75 = v13;
      v76 = 2112;
      v77 = v4;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Already have a device identifier %@ for %@", &v72, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v19 = [v4 device];
    v20 = [v19 identifier];
    v21 = [v20 UUIDString];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = [v4 deviceUUID];
    }

    v24 = v23;

    v25 = objc_autoreleasePoolPush();
    v26 = self;
    v27 = HMFGetOSLogHandle();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    if (v24)
    {
      if (v28)
      {
        v29 = HMFGetLogIdentifier();
        v30 = [(HMDAppleAccessoryPairingHomeController *)v26 state];
        v31 = [v30 accessory];
        v32 = [v31 uuid];
        v72 = 138543874;
        v73 = v29;
        v74 = 2112;
        v75 = v32;
        v76 = 2112;
        v77 = v24;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Looks like deviceIdentifier for %@ is: %@", &v72, 0x20u);
      }

      objc_autoreleasePoolPop(v25);
      v33 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v24];
      v34 = [(HMDAppleAccessoryPairingHomeController *)v26 state];
      [v34 setDeviceIdentifier:v33];

      v35 = [(HMDAppleAccessoryPairingHomeController *)v26 dataSource];
      v36 = [(HMDAppleAccessoryPairingHomeController *)v26 state];
      [v35 updatePairingAccessoryState:v36];
    }

    else
    {
      if (v28)
      {
        v37 = HMFGetLogIdentifier();
        v72 = 138543618;
        v73 = v37;
        v74 = 2112;
        v75 = v4;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Still don't have a device identifier for %@", &v72, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
    }
  }

  v38 = [(HMDAppleAccessoryPairingHomeController *)self state];
  v39 = [v38 device];

  if (v39)
  {
    v40 = objc_autoreleasePoolPush();
    v41 = self;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = HMFGetLogIdentifier();
      v44 = [(HMDAppleAccessoryPairingHomeController *)v41 state];
      v45 = [v44 device];
      v72 = 138543874;
      v73 = v43;
      v74 = 2112;
      v75 = v45;
      v76 = 2112;
      v77 = v4;
      _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@Already have a device %@ for %@", &v72, 0x20u);
    }

    objc_autoreleasePoolPop(v40);
  }

  else
  {
    v46 = [v4 device];
    if (v46)
    {
      v47 = objc_autoreleasePoolPush();
      v48 = self;
      v49 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = HMFGetLogIdentifier();
        v72 = 138543618;
        v73 = v50;
        v74 = 2112;
        v75 = v46;
        _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_DEFAULT, "%{public}@And we have a device representation: %@", &v72, 0x16u);
      }

      objc_autoreleasePoolPop(v47);
      v51 = [(HMDAppleAccessoryPairingHomeController *)v48 state];
      [v51 setDevice:v46];

      v52 = [(HMDAppleAccessoryPairingHomeController *)v48 dataSource];
      v53 = [(HMDAppleAccessoryPairingHomeController *)v48 state];
      [v52 updatePairingAccessoryState:v53];
    }
  }

  v54 = [(HMDAppleAccessoryPairingHomeController *)self state];
  v55 = [v54 device];
  if (v55)
  {
    v56 = v55;

LABEL_34:
    v57 = [(HMDAppleAccessoryPairingHomeController *)self dataSource];
    v58 = [v57 hh1ControllerIdentity];

    v59 = objc_autoreleasePoolPush();
    v60 = self;
    v61 = HMFGetOSLogHandle();
    v62 = v61;
    if (v58)
    {
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        v63 = HMFGetLogIdentifier();
        v72 = 138543874;
        v73 = v63;
        v74 = 2112;
        v75 = v56;
        v76 = 2112;
        v77 = v58;
        _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_DEFAULT, "%{public}@Updated pairing identity for device %@: %@", &v72, 0x20u);
      }

      objc_autoreleasePoolPop(v59);
      v64 = +[HMDIdentityRegistry sharedRegistry];
      [v64 registerIdentity:v58 device:v56 object:v60];
    }

    else
    {
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        v65 = HMFGetLogIdentifier();
        v72 = 138543362;
        v73 = v65;
        _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_ERROR, "%{public}@No Pairing Identity. This will cause issues.", &v72, 0xCu);
      }

      objc_autoreleasePoolPop(v59);
    }

    goto LABEL_42;
  }

  v56 = [v4 device];

  if (v56)
  {
    goto LABEL_34;
  }

LABEL_42:
  v66 = [(HMDAppleAccessoryPairingHomeController *)self state];
  v67 = [v66 device];
  if (v67)
  {

LABEL_45:
    v70 = [(HMDAppleAccessoryPairingHomeController *)self upgradeCheckTimer];
    [v70 fire];

    goto LABEL_46;
  }

  v68 = [(HMDAppleAccessoryPairingHomeController *)self state];
  v69 = [v68 deviceIdentifier];

  if (v69)
  {
    goto LABEL_45;
  }

LABEL_46:

  v71 = *MEMORY[0x277D85DE8];
}

- (void)processHMDResidentDeviceModel:(id)a3
{
  v4 = [a3 device];
  v5 = [(HMDAppleAccessoryPairingHomeController *)self state];
  [v5 setDevice:v4];

  v6 = [(HMDAppleAccessoryPairingHomeController *)self dataSource];
  v7 = [(HMDAppleAccessoryPairingHomeController *)self state];
  [v6 updatePairingAccessoryState:v7];

  v8 = [(HMDAppleAccessoryPairingHomeController *)self state];
  v9 = [v8 device];
  v10 = [v9 identifier];
  v11 = [(HMDAppleAccessoryPairingHomeController *)self state];
  v12 = [v11 deviceIdentifier];
  v13 = [v10 isEqual:v12];

  if (v13)
  {
    v14 = [(HMDAppleAccessoryPairingHomeController *)self upgradeCheckTimer];
    [v14 fire];
  }
}

- (void)localZone:(id)a3 didProcessModelUpdate:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 model];
  v9 = [v8 convertToHMDModelObject];

  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [v9 debugString:0];
    v22 = 138543618;
    v23 = v13;
    v24 = 2112;
    v25 = v14;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Got Legacy Pairing update:\n%@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = v9;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (v17)
  {
    [(HMDAppleAccessoryPairingHomeController *)v11 processHMDAppleMediaAccessoryModel:v17];
  }

  v18 = v15;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  if (v20)
  {
    [(HMDAppleAccessoryPairingHomeController *)v11 processHMDResidentDeviceModel:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)localZone:(id)a3 didProcessModelDeletion:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 model];
  v9 = [v8 convertToHMDModelObject];

  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [v9 debugString:0];
    v25 = 138543618;
    v26 = v13;
    v27 = 2112;
    v28 = v14;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Got Legacy Pairing deletion:\n%@", &v25, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = [v9 uuid];
  v16 = [(HMDAppleAccessoryPairingHomeController *)v11 state];
  v17 = [v16 accessory];
  v18 = [v17 uuid];
  v19 = [v15 hmf_isEqualToUUID:v18];

  if (v19)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = v11;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Got Legacy Pairing deletion for accessory that is being setup removing HH1 zone", &v25, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    [(HMDAppleAccessoryPairingHomeController *)v21 cleanupLegacyZone];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)localZone:(id)a3 didProcessModelCreation:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 model];
  v9 = [v8 convertToHMDModelObject];

  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [v9 debugString:0];
    v19 = 138543618;
    v20 = v13;
    v21 = 2112;
    v22 = v14;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Got Legacy Pairing creation:\n%@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = v9;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (v17)
  {
    [(HMDAppleAccessoryPairingHomeController *)v11 processHMDResidentDeviceModel:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_handleDeviceNotification:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Got device notification.", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDAppleAccessoryPairingHomeController *)v6 checkDeviceVersionAndSendUpgrade];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)postSoftwareUpdateEventForDescriptor:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAppleAccessoryPairingHomeController *)self state];
  v6 = [v5 accessory];
  v7 = [v6 uuid];
  v8 = [v7 UUIDString];

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277CD1E50]);
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v10 = [v9 initWithDescriptor:v4 eventSource:v8 eventTimestamp:?];
    v11 = [(HMDAppleAccessoryPairingHomeController *)self state];
    v12 = [v11 accessory];
    v13 = [v12 uuid];

    v14 = [(HMDAppleAccessoryPairingHomeController *)self homeManager];
    v15 = [(HMDAppleAccessoryPairingHomeController *)self state];
    v16 = [v15 homeUUID];
    v17 = [v14 _homeWithUUID:v16];

    v18 = [v17 uuid];
    v19 = v18;
    if (v13 && v18)
    {
      v20 = [MEMORY[0x277CD16F0] topicFromSuffixID:*MEMORY[0x277CCEA98] homeUUID:v18 accessoryUUID:v13];
      if (v20)
      {
        v21 = [(HMDAppleAccessoryPairingHomeController *)self state];
        [v21 setLastPostedSoftwareUpdateDescriptor:v4];

        v22 = [(HMDAppleAccessoryPairingHomeController *)self homeManager];
        v23 = [v22 eventForwarder];
        [v23 forwardEvent:v10 topic:v20 completion:0];
      }

      else
      {
        v32 = objc_autoreleasePoolPush();
        v33 = self;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v35 = v37 = v32;
          *buf = 138543874;
          v39 = v35;
          v40 = 2112;
          v41 = v19;
          v42 = 2112;
          v43 = v13;
          _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Failed to get SU topic with homeUUID: %@, accessoryUUID: %@", buf, 0x20u);

          v32 = v37;
        }

        objc_autoreleasePoolPop(v32);
      }
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543874;
        v39 = v31;
        v40 = 2112;
        v41 = v19;
        v42 = 2112;
        v43 = v13;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Unexpected nil value in homeUUID: %@, accessoryUUID: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v28);
    }
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v27;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Event source was nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)postSoftwareUpdateEventForSoftwareUpdate:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 state];
  if (v5 <= 2)
  {
    v40 = self;
    v6 = 3;
    v7 = 14;
    v8 = 15;
    if (v5 != 2)
    {
      v8 = 0;
    }

    if (v5 != 1)
    {
      v7 = v8;
    }

    if (v5)
    {
      v6 = v7;
    }

    goto LABEL_17;
  }

  if (v5 == 3)
  {
    v40 = self;
    v6 = 9;
LABEL_17:
    v35 = v6;
LABEL_18:
    v13 = objc_alloc(MEMORY[0x277CD1E48]);
    v39 = [v4 downloadSize];
    v32 = v13;
    if (v39)
    {
      v41 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "downloadSize")}];
    }

    else
    {
      v41 = 0;
    }

    v38 = [v4 documentationMetadata];
    v37 = [v38 URL];
    v29 = [v37 absoluteURL];
    v34 = [v4 documentationMetadata];
    v33 = [v34 digest];
    [v33 algorithm];
    v26 = HMFDigestAlgorithmToString();
    v31 = [v4 documentationMetadata];
    v30 = [v31 digest];
    v27 = [v30 value];
    v14 = MEMORY[0x277CCABB0];
    v28 = [v4 version];
    v15 = [v14 numberWithUnsignedInteger:{objc_msgSend(v28, "majorVersion")}];
    v16 = MEMORY[0x277CCABB0];
    v17 = [v4 version];
    v18 = [v16 numberWithUnsignedInteger:{objc_msgSend(v17, "minorVersion")}];
    v19 = MEMORY[0x277CCABB0];
    v20 = [v4 version];
    v21 = [v19 numberWithUnsignedInteger:{objc_msgSend(v20, "updateVersion")}];
    v22 = [v4 version];
    v23 = [v22 buildVersion];
    LOBYTE(v25) = 1;
    v36 = [v32 initWithStatus:v35 downloadSize:v41 humanReadableUpdateName:0 rampEnabled:0 errorCode:0 serverAssetURL:v29 serverAssetAlgorithm:v26 serverAssetMeasurement:v27 majorVersion:v15 minorVersion:v18 updateVersion:v21 buildVersion:v23 softwareVersionRequiresMetadata:v25];

    if (v39)
    {
    }

    [(HMDAppleAccessoryPairingHomeController *)v40 postSoftwareUpdateEventForDescriptor:v36];

    goto LABEL_24;
  }

  if (v5 == 4)
  {
    v40 = self;
    v6 = 2;
    goto LABEL_17;
  }

  if (v5 != 5)
  {
    v40 = self;
    v35 = 0;
    goto LABEL_18;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543362;
    v43 = v12;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@HMSoftwareUpdateRequested is not supported for HomePod in the HH1 shim", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
LABEL_24:

  v24 = *MEMORY[0x277D85DE8];
}

- (void)checkDeviceVersionAndSendUpgrade
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAppleAccessoryPairingHomeController *)self state];
  v4 = [v3 deviceIdentifier];
  if (v4)
  {

    goto LABEL_4;
  }

  v5 = [(HMDAppleAccessoryPairingHomeController *)self state];
  v6 = [v5 device];

  if (v6)
  {
LABEL_4:
    v7 = [(HMDAppleAccessoryPairingHomeController *)self dataSource];
    v8 = [(HMDAppleAccessoryPairingHomeController *)self state];
    v9 = [v8 device];
    v10 = [v9 identifier];
    v11 = [v7 deviceForIdentifier:v10];

    if (!v11)
    {
      goto LABEL_10;
    }

    v12 = [v11 version];
    if (!v12)
    {
      goto LABEL_10;
    }

    v13 = v12;
    v14 = [v11 version];
    v15 = +[HMDHomeKitVersion version10];
    v16 = [v14 isAtLeastVersion:v15];

    if (v16)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543362;
        v33 = v20;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Previously legacy HomePod has been updated to a HH2.0 viable HomeKit", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      [(HMDAppleAccessoryPairingHomeController *)v18 postNotificationOfDeviceUpdated];
      [(HMDAppleAccessoryPairingHomeController *)v18 cleanupLegacyZone];
    }

    else
    {
LABEL_10:
      v21 = objc_autoreleasePoolPush();
      v22 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543362;
        v33 = v24;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Querying HomePod to determine if it has upgradable software.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
      v25 = [(HMDAppleAccessoryPairingHomeController *)v22 workContext];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __74__HMDAppleAccessoryPairingHomeController_checkDeviceVersionAndSendUpgrade__block_invoke;
      v31[3] = &unk_27868A728;
      v31[4] = v22;
      [v25 performBlock:v31];
    }

    goto LABEL_14;
  }

  v27 = objc_autoreleasePoolPush();
  v28 = self;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = HMFGetLogIdentifier();
    *buf = 138543362;
    v33 = v30;
    _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to query HomePod for update status (no device).", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v27);
LABEL_14:
  v26 = *MEMORY[0x277D85DE8];
}

void __74__HMDAppleAccessoryPairingHomeController_checkDeviceVersionAndSendUpgrade__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) queryFuture];

  if (v2)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = HMFGetLogIdentifier();
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "suppressedQueries")}];
      *buf = 138543618;
      v23 = v6;
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Outstanding query request to HomePod, suppressing query (suppressed %@ so far)", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    [*(a1 + 32) setSuppressedQueries:{objc_msgSend(*(a1 + 32), "suppressedQueries") + 1}];
  }

  else
  {
    [*(a1 + 32) setSuppressedQueries:0];
    v8 = *(a1 + 32);
    v9 = [v8 state];
    v10 = [v9 accessory];
    v11 = [v10 uuid];
    v12 = __sendMessageWithFutureResult(v8, v11, *MEMORY[0x277CD1070], MEMORY[0x277CBEC10]);

    v13 = [*(a1 + 32) workContext];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __74__HMDAppleAccessoryPairingHomeController_checkDeviceVersionAndSendUpgrade__block_invoke_100;
    v21[3] = &unk_27867FAF0;
    v21[4] = *(a1 + 32);
    v14 = [v12 inContext:v13 then:v21];
    v15 = [*(a1 + 32) workContext];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __74__HMDAppleAccessoryPairingHomeController_checkDeviceVersionAndSendUpgrade__block_invoke_106;
    v19[3] = &unk_27867FAF0;
    v20 = *(a1 + 32);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __74__HMDAppleAccessoryPairingHomeController_checkDeviceVersionAndSendUpgrade__block_invoke_107;
    v18[3] = &unk_278689CD8;
    v18[4] = v20;
    v16 = [v14 inContext:v15 then:v19 orRecover:v18];
    [*(a1 + 32) setQueryFuture:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __74__HMDAppleAccessoryPairingHomeController_checkDeviceVersionAndSendUpgrade__block_invoke_100(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) setSuppressedQueries:0];
  v4 = *MEMORY[0x277CD1090];
  v5 = [v3 hmf_dataForKey:*MEMORY[0x277CD1090]];
  if (v5)
  {
    v31 = 0;
    v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v31];
    v7 = v31;
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    v11 = v10;
    if (v6)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543618;
        v35 = v12;
        v36 = 2112;
        v37 = v6;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Requesting device update to: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      [*(a1 + 32) postSoftwareUpdateEventForSoftwareUpdate:v6];
      v32 = v4;
      v33 = v5;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v14 = *(a1 + 32);
      v15 = [v14 state];
      v16 = [v15 accessory];
      v17 = [v16 uuid];
      v18 = __sendMessageWithFutureResult(v14, v17, *MEMORY[0x277CD1080], v13);
      if (!v18)
      {
        _HMFPreconditionFailure();
      }

      v19 = v18;

      v20 = 3;
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543618;
        v35 = v27;
        v36 = 2112;
        v37 = v7;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive software update from software update data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v28 = v7;
      if (v28)
      {
        v13 = v28;
      }

      else
      {
        [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
        objc_claimAutoreleasedReturnValue();
        v13 = 0;
      }

      v20 = 2;
    }
  }

  else
  {
    v21 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    v22 = objc_autoreleasePoolPush();
    v23 = *(a1 + 32);
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v25;
      v36 = 2112;
      v37 = v21;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Payload did not have software update status: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v26 = v21;
    if (v26)
    {
      v6 = v26;
      v20 = 2;
      v7 = v6;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
      v6 = 0;
      v7 = 0;
      v20 = 2;
    }
  }

  v29 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t __74__HMDAppleAccessoryPairingHomeController_checkDeviceVersionAndSendUpgrade__block_invoke_106(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) setSuppressedQueries:0];
  [*(a1 + 32) setQueryFuture:0];
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Message update response: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __74__HMDAppleAccessoryPairingHomeController_checkDeviceVersionAndSendUpgrade__block_invoke_107(uint64_t a1)
{
  [*(a1 + 32) setQueryFuture:0];
  if ([*(a1 + 32) suppressedQueries])
  {
    [*(a1 + 32) setSuppressedQueries:0];
    [*(a1 + 32) checkDeviceVersionAndSendUpgrade];
  }

  return 1;
}

- (void)postNotificationOfDeviceUpdated
{
  v3 = [(HMDAppleAccessoryPairingHomeController *)self state];
  v14 = [v3 lastPostedSoftwareUpdateDescriptor];

  if (v14)
  {
    [v14 setStatus:2];
    [(HMDAppleAccessoryPairingHomeController *)self postSoftwareUpdateEventForDescriptor:v14];
  }

  v4 = [(HMDAppleAccessoryPairingHomeController *)self homeManager];
  v5 = [(HMDAppleAccessoryPairingHomeController *)self state];
  v6 = [v5 homeUUID];
  v7 = [v4 _homeWithUUID:v6];

  v8 = [(HMDAppleAccessoryPairingHomeController *)self state];
  v9 = [v8 accessory];
  v10 = [v9 uuid];
  v11 = [v7 accessoryWithUUID:v10];

  if (v11)
  {
    v12 = [(HMDAppleAccessoryPairingHomeController *)self dataSource];
    v13 = [v12 bulletinBoard];
    [v13 insertHH2SoftwareUpdateCompleteEventBulletinForAccessory:v11];
  }
}

- (void)cleanupLegacyZone
{
  v3 = [(HMDAppleAccessoryPairingHomeController *)self upgradeCheckTimer];
  [v3 suspend];

  v4 = [(HMDAppleAccessoryPairingHomeController *)self homeManager];
  v5 = [v4 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HMDAppleAccessoryPairingHomeController_cleanupLegacyZone__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v5, block);
}

void __59__HMDAppleAccessoryPairingHomeController_cleanupLegacyZone__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) localZone];
  v3 = [v2 localDatabase];
  v4 = [*(a1 + 32) localZone];
  v5 = [v3 removeZone:v4];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__HMDAppleAccessoryPairingHomeController_cleanupLegacyZone__block_invoke_2;
  v9[3] = &unk_27868A200;
  v9[4] = *(a1 + 32);
  v6 = [v5 addSuccessBlock:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__HMDAppleAccessoryPairingHomeController_cleanupLegacyZone__block_invoke_96;
  v8[3] = &unk_27868A250;
  v8[4] = *(a1 + 32);
  v7 = [v5 addFailureBlock:v8];
}

void __59__HMDAppleAccessoryPairingHomeController_cleanupLegacyZone__block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Successfully removed legacy pairing zone.", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) homeManager];
  v9 = [v8 legacyAccessoryPairingController];
  v10 = [*(a1 + 32) state];
  v11 = [v10 cloudZoneID];
  [v9 removeControllerForZone:v11];

  v12 = *MEMORY[0x277D85DE8];
}

void __59__HMDAppleAccessoryPairingHomeController_cleanupLegacyZone__block_invoke_96(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Unable to remove temporary pairing zone: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (id)workContext
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__HMDAppleAccessoryPairingHomeController_workContext__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  if (workContext__hmf_once_t20 != -1)
  {
    dispatch_once(&workContext__hmf_once_t20, block);
  }

  return workContext__hmf_once_v21;
}

void __53__HMDAppleAccessoryPairingHomeController_workContext__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D0F7A8]);
  v6 = [*(a1 + 32) homeManager];
  v3 = [v6 workQueue];
  v4 = [v2 initWithQueue:v3];
  v5 = workContext__hmf_once_v21;
  workContext__hmf_once_v21 = v4;
}

- (void)startWithLocalZone:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!self->_localZone)
  {
    objc_storeStrong(&self->_localZone, a3);
    v6 = [(HMDAppleAccessoryPairingHomeController *)self localZone];
    [v6 addObserverForAllModels:self];

    v7 = [(HMDAppleAccessoryPairingHomeController *)self localZone];
    [v7 startUp];

    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [(HMDAppleAccessoryPairingHomeController *)v9 state];
      v13 = [v12 cloudZoneID];
      v14 = [v13 name];
      *buf = 138543618;
      v29 = v11;
      v30 = 2112;
      v31 = v14;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Starting state machine for zone: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v15 = [(HMDAppleAccessoryPairingHomeController *)v9 localZone];
    v16 = [v15 mirror];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    v19 = [v18 registerSubscriptionForExternalRecordType:0];
    v20 = [MEMORY[0x277D17108] optionsWithLabel:@"Startup zone fetch"];
    v21 = [v18 performCloudPullWithOptions:v20];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __61__HMDAppleAccessoryPairingHomeController_startWithLocalZone___block_invoke;
    v27[3] = &unk_27868A200;
    v27[4] = v9;
    v22 = [v21 addSuccessBlock:v27];

    v23 = [v18 startUp];

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __61__HMDAppleAccessoryPairingHomeController_startWithLocalZone___block_invoke_92;
    v26[3] = &unk_27868A200;
    v26[4] = v9;
    v24 = [v23 addSuccessBlock:v26];
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __61__HMDAppleAccessoryPairingHomeController_startWithLocalZone___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Initial zone fetch completed, checking for update.", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) upgradeCheckTimer];
  [v8 resume];

  v9 = *MEMORY[0x277D85DE8];
}

void __61__HMDAppleAccessoryPairingHomeController_startWithLocalZone___block_invoke_92(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 32) state];
    v9 = [v8 cloudZoneID];
    v10 = [v9 name];
    *buf = 138543618;
    v44 = v7;
    v45 = 2112;
    v46 = v10;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@State machine completely started for zone: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v11 = [*(a1 + 32) localZone];
  v12 = [*(a1 + 32) state];
  v13 = [v12 accessory];
  v14 = [v13 uuid];
  v42 = 0;
  v15 = [v11 fetchModelWithModelID:v14 error:&v42];
  v16 = v42;

  if (v15)
  {
    v17 = v15;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    v20 = [v19 convertToHMDModelObject];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      v24 = v23;

      if (v24)
      {
        [*(a1 + 32) processHMDAppleMediaAccessoryModel:v24];
      }

      else
      {
        v36 = objc_autoreleasePoolPush();
        v37 = *(a1 + 32);
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v39 = v41 = v36;
          *buf = 138543618;
          v44 = v39;
          v45 = 2112;
          v46 = v22;
          _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Expected a HMDAppleMediaAccessory but %@ does not look like one.", buf, 0x16u);

          v36 = v41;
        }

        objc_autoreleasePoolPop(v36);
      }
    }

    else
    {
      v32 = objc_autoreleasePoolPush();
      v33 = *(a1 + 32);
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = HMFGetLogIdentifier();
        *buf = 138543618;
        v44 = v35;
        v45 = 2112;
        v46 = v17;
        _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Unable to extract a HMDBSO from %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v32);
    }
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = *(a1 + 32);
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      v29 = [*(a1 + 32) state];
      v30 = [v29 accessory];
      v31 = [v30 uuid];
      *buf = 138543874;
      v44 = v28;
      v45 = 2112;
      v46 = v31;
      v47 = 2112;
      v48 = v16;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch extant HMDMediaAccessoryModel for %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v25);
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (BOOL)handleMessage:(id)a3 from:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 uuidForKey:*MEMORY[0x277CCF0B0]];
  v9 = [v6 name];
  v10 = [v9 isEqual:*MEMORY[0x277CD2070]];

  if (v10)
  {
    v11 = [(HMDAppleAccessoryPairingHomeController *)self state];
    v12 = [v11 accessory];
    v13 = [v12 uuid];
    v14 = [v8 isEqual:v13];

    if (v14)
    {
      v15 = [v7 uuid];
      v16 = [(HMDAppleAccessoryPairingHomeController *)self state];
      [v16 setHomeUUID:v15];

      v17 = objc_autoreleasePoolPush();
      v18 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = HMFGetLogIdentifier();
        v21 = [(HMDAppleAccessoryPairingHomeController *)v18 state];
        v22 = [v21 accessory];
        v23 = [v22 uuid];
        [v7 uuid];
        v24 = v38 = v17;
        *buf = 138543874;
        v42 = v20;
        v43 = 2112;
        v44 = v23;
        v45 = 2112;
        v46 = v24;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Adding Legacy HomePod %@ To Home: %@", buf, 0x20u);

        v17 = v38;
      }

      objc_autoreleasePoolPop(v17);
      v25 = [(HMDAppleAccessoryPairingHomeController *)v18 state];
      [v25 setState:1];

      v26 = [(HMDAppleAccessoryPairingHomeController *)v18 dataSource];
      v27 = [(HMDAppleAccessoryPairingHomeController *)v18 state];
      [v26 updatePairingAccessoryState:v27];
    }
  }

  else
  {
    v28 = [v6 name];
    v29 = [v28 isEqual:*MEMORY[0x277CD24F0]];

    if (v29)
    {
      v30 = [(HMDAppleAccessoryPairingHomeController *)self state];
      v31 = [v30 accessory];
      v32 = [v31 uuid];
      v33 = [v8 isEqual:v32];

      if (v33)
      {
        v34 = [(HMDAppleAccessoryPairingHomeController *)self homeManager];
        v35 = [v34 workQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __61__HMDAppleAccessoryPairingHomeController_handleMessage_from___block_invoke;
        block[3] = &unk_27868A750;
        block[4] = self;
        v40 = v8;
        dispatch_async(v35, block);
      }
    }
  }

  v36 = *MEMORY[0x277D85DE8];
  return 0;
}

void __61__HMDAppleAccessoryPairingHomeController_handleMessage_from___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) localZone];
  v2 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 40)];
  v3 = [MEMORY[0x277D17108] optionsWithLabel:@"Accessory Remove"];
  v4 = [v5 removeModelIDs:v2 options:v3];
}

- (void)timerDidFire:(id)a3
{
  v4 = a3;
  v5 = [(HMDAppleAccessoryPairingHomeController *)self upgradeCheckTimer];

  if (v5 == v4)
  {

    [(HMDAppleAccessoryPairingHomeController *)self checkDeviceVersionAndSendUpgrade];
  }
}

- (HMDAppleAccessoryPairingHomeController)initWithState:(id)a3 homeManager:(id)a4 dataSource:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = HMDAppleAccessoryPairingHomeController;
  v12 = [(HMDAppleAccessoryPairingHomeController *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_state, a3);
    objc_storeStrong(&v13->_homeManager, a4);
    objc_storeStrong(&v13->_dataSource, a5);
    v14 = [v11 timerWithInterval:12 options:120.0];
    upgradeCheckTimer = v13->_upgradeCheckTimer;
    v13->_upgradeCheckTimer = v14;

    [(HMFTimer *)v13->_upgradeCheckTimer setDelegate:v13];
    v13->_suppressedQueries = 0;
    v16 = [v11 notificationCenter];
    [v16 addObserver:v13 selector:sel__handleDeviceNotification_ name:@"HMDAppleAccountManagerResolved" object:0];
  }

  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t54_203342 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t54_203342, &__block_literal_global_203343);
  }

  v3 = logCategory__hmf_once_v55_203344;

  return v3;
}

void __53__HMDAppleAccessoryPairingHomeController_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v55_203344;
  logCategory__hmf_once_v55_203344 = v1;
}

@end