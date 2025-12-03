@interface HMDAppleAccessoryPairingHomeController
+ (id)logCategory;
- (BOOL)handleMessage:(id)message from:(id)from;
- (HMDAppleAccessoryPairingHomeController)initWithState:(id)state homeManager:(id)manager dataSource:(id)source;
- (id)logIdentifier;
- (id)workContext;
- (void)_handleDeviceNotification:(id)notification;
- (void)checkDeviceVersionAndSendUpgrade;
- (void)cleanupLegacyZone;
- (void)localZone:(id)zone didProcessModelCreation:(id)creation;
- (void)localZone:(id)zone didProcessModelDeletion:(id)deletion;
- (void)localZone:(id)zone didProcessModelUpdate:(id)update;
- (void)postNotificationOfDeviceUpdated;
- (void)postSoftwareUpdateEventForDescriptor:(id)descriptor;
- (void)postSoftwareUpdateEventForSoftwareUpdate:(id)update;
- (void)processHMDAppleMediaAccessoryModel:(id)model;
- (void)processHMDResidentDeviceModel:(id)model;
- (void)startWithLocalZone:(id)zone;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDAppleAccessoryPairingHomeController

- (id)logIdentifier
{
  state = [(HMDAppleAccessoryPairingHomeController *)self state];
  accessory = [state accessory];
  uuid = [accessory uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)processHMDAppleMediaAccessoryModel:(id)model
{
  v78 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  deviceUUID = [modelCopy deviceUUID];
  if (deviceUUID)
  {
  }

  else
  {
    device = [modelCopy device];

    if (device)
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = HMFGetLogIdentifier();
        v72 = 138543618;
        v73 = v18;
        v74 = 2112;
        v75 = modelCopy;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Accessory model does not yet have a device identifier: %@", &v72, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      goto LABEL_46;
    }
  }

  state = [(HMDAppleAccessoryPairingHomeController *)self state];
  deviceIdentifier = [state deviceIdentifier];

  if (deviceIdentifier)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      state2 = [(HMDAppleAccessoryPairingHomeController *)selfCopy2 state];
      deviceIdentifier2 = [state2 deviceIdentifier];
      v72 = 138543874;
      v73 = v11;
      v74 = 2112;
      v75 = deviceIdentifier2;
      v76 = 2112;
      v77 = modelCopy;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Already have a device identifier %@ for %@", &v72, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    device2 = [modelCopy device];
    identifier = [device2 identifier];
    uUIDString = [identifier UUIDString];
    v22 = uUIDString;
    if (uUIDString)
    {
      deviceUUID2 = uUIDString;
    }

    else
    {
      deviceUUID2 = [modelCopy deviceUUID];
    }

    v24 = deviceUUID2;

    v25 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v27 = HMFGetOSLogHandle();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    if (v24)
    {
      if (v28)
      {
        v29 = HMFGetLogIdentifier();
        state3 = [(HMDAppleAccessoryPairingHomeController *)selfCopy3 state];
        accessory = [state3 accessory];
        uuid = [accessory uuid];
        v72 = 138543874;
        v73 = v29;
        v74 = 2112;
        v75 = uuid;
        v76 = 2112;
        v77 = v24;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Looks like deviceIdentifier for %@ is: %@", &v72, 0x20u);
      }

      objc_autoreleasePoolPop(v25);
      v33 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v24];
      state4 = [(HMDAppleAccessoryPairingHomeController *)selfCopy3 state];
      [state4 setDeviceIdentifier:v33];

      dataSource = [(HMDAppleAccessoryPairingHomeController *)selfCopy3 dataSource];
      state5 = [(HMDAppleAccessoryPairingHomeController *)selfCopy3 state];
      [dataSource updatePairingAccessoryState:state5];
    }

    else
    {
      if (v28)
      {
        v37 = HMFGetLogIdentifier();
        v72 = 138543618;
        v73 = v37;
        v74 = 2112;
        v75 = modelCopy;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Still don't have a device identifier for %@", &v72, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
    }
  }

  state6 = [(HMDAppleAccessoryPairingHomeController *)self state];
  device3 = [state6 device];

  if (device3)
  {
    v40 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = HMFGetLogIdentifier();
      state7 = [(HMDAppleAccessoryPairingHomeController *)selfCopy4 state];
      device4 = [state7 device];
      v72 = 138543874;
      v73 = v43;
      v74 = 2112;
      v75 = device4;
      v76 = 2112;
      v77 = modelCopy;
      _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@Already have a device %@ for %@", &v72, 0x20u);
    }

    objc_autoreleasePoolPop(v40);
  }

  else
  {
    device5 = [modelCopy device];
    if (device5)
    {
      v47 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v49 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = HMFGetLogIdentifier();
        v72 = 138543618;
        v73 = v50;
        v74 = 2112;
        v75 = device5;
        _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_DEFAULT, "%{public}@And we have a device representation: %@", &v72, 0x16u);
      }

      objc_autoreleasePoolPop(v47);
      state8 = [(HMDAppleAccessoryPairingHomeController *)selfCopy5 state];
      [state8 setDevice:device5];

      dataSource2 = [(HMDAppleAccessoryPairingHomeController *)selfCopy5 dataSource];
      state9 = [(HMDAppleAccessoryPairingHomeController *)selfCopy5 state];
      [dataSource2 updatePairingAccessoryState:state9];
    }
  }

  state10 = [(HMDAppleAccessoryPairingHomeController *)self state];
  device6 = [state10 device];
  if (device6)
  {
    device7 = device6;

LABEL_34:
    dataSource3 = [(HMDAppleAccessoryPairingHomeController *)self dataSource];
    hh1ControllerIdentity = [dataSource3 hh1ControllerIdentity];

    v59 = objc_autoreleasePoolPush();
    selfCopy6 = self;
    v61 = HMFGetOSLogHandle();
    v62 = v61;
    if (hh1ControllerIdentity)
    {
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        v63 = HMFGetLogIdentifier();
        v72 = 138543874;
        v73 = v63;
        v74 = 2112;
        v75 = device7;
        v76 = 2112;
        v77 = hh1ControllerIdentity;
        _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_DEFAULT, "%{public}@Updated pairing identity for device %@: %@", &v72, 0x20u);
      }

      objc_autoreleasePoolPop(v59);
      v64 = +[HMDIdentityRegistry sharedRegistry];
      [v64 registerIdentity:hh1ControllerIdentity device:device7 object:selfCopy6];
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

  device7 = [modelCopy device];

  if (device7)
  {
    goto LABEL_34;
  }

LABEL_42:
  state11 = [(HMDAppleAccessoryPairingHomeController *)self state];
  device8 = [state11 device];
  if (device8)
  {

LABEL_45:
    upgradeCheckTimer = [(HMDAppleAccessoryPairingHomeController *)self upgradeCheckTimer];
    [upgradeCheckTimer fire];

    goto LABEL_46;
  }

  state12 = [(HMDAppleAccessoryPairingHomeController *)self state];
  deviceIdentifier3 = [state12 deviceIdentifier];

  if (deviceIdentifier3)
  {
    goto LABEL_45;
  }

LABEL_46:

  v71 = *MEMORY[0x277D85DE8];
}

- (void)processHMDResidentDeviceModel:(id)model
{
  device = [model device];
  state = [(HMDAppleAccessoryPairingHomeController *)self state];
  [state setDevice:device];

  dataSource = [(HMDAppleAccessoryPairingHomeController *)self dataSource];
  state2 = [(HMDAppleAccessoryPairingHomeController *)self state];
  [dataSource updatePairingAccessoryState:state2];

  state3 = [(HMDAppleAccessoryPairingHomeController *)self state];
  device2 = [state3 device];
  identifier = [device2 identifier];
  state4 = [(HMDAppleAccessoryPairingHomeController *)self state];
  deviceIdentifier = [state4 deviceIdentifier];
  v13 = [identifier isEqual:deviceIdentifier];

  if (v13)
  {
    upgradeCheckTimer = [(HMDAppleAccessoryPairingHomeController *)self upgradeCheckTimer];
    [upgradeCheckTimer fire];
  }
}

- (void)localZone:(id)zone didProcessModelUpdate:(id)update
{
  v26 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  updateCopy = update;
  model = [updateCopy model];
  convertToHMDModelObject = [model convertToHMDModelObject];

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [convertToHMDModelObject debugString:0];
    v22 = 138543618;
    v23 = v13;
    v24 = 2112;
    v25 = v14;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Got Legacy Pairing update:\n%@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = convertToHMDModelObject;
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
    [(HMDAppleAccessoryPairingHomeController *)selfCopy processHMDAppleMediaAccessoryModel:v17];
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
    [(HMDAppleAccessoryPairingHomeController *)selfCopy processHMDResidentDeviceModel:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)localZone:(id)zone didProcessModelDeletion:(id)deletion
{
  v29 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  deletionCopy = deletion;
  model = [deletionCopy model];
  convertToHMDModelObject = [model convertToHMDModelObject];

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [convertToHMDModelObject debugString:0];
    v25 = 138543618;
    v26 = v13;
    v27 = 2112;
    v28 = v14;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Got Legacy Pairing deletion:\n%@", &v25, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  uuid = [convertToHMDModelObject uuid];
  state = [(HMDAppleAccessoryPairingHomeController *)selfCopy state];
  accessory = [state accessory];
  uuid2 = [accessory uuid];
  v19 = [uuid hmf_isEqualToUUID:uuid2];

  if (v19)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
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

- (void)localZone:(id)zone didProcessModelCreation:(id)creation
{
  v23 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  creationCopy = creation;
  model = [creationCopy model];
  convertToHMDModelObject = [model convertToHMDModelObject];

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [convertToHMDModelObject debugString:0];
    v19 = 138543618;
    v20 = v13;
    v21 = 2112;
    v22 = v14;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Got Legacy Pairing creation:\n%@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = convertToHMDModelObject;
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
    [(HMDAppleAccessoryPairingHomeController *)selfCopy processHMDResidentDeviceModel:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_handleDeviceNotification:(id)notification
{
  v12 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Got device notification.", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDAppleAccessoryPairingHomeController *)selfCopy checkDeviceVersionAndSendUpgrade];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)postSoftwareUpdateEventForDescriptor:(id)descriptor
{
  v44 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  state = [(HMDAppleAccessoryPairingHomeController *)self state];
  accessory = [state accessory];
  uuid = [accessory uuid];
  uUIDString = [uuid UUIDString];

  if (uUIDString)
  {
    v9 = objc_alloc(MEMORY[0x277CD1E50]);
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v10 = [v9 initWithDescriptor:descriptorCopy eventSource:uUIDString eventTimestamp:?];
    state2 = [(HMDAppleAccessoryPairingHomeController *)self state];
    accessory2 = [state2 accessory];
    uuid2 = [accessory2 uuid];

    homeManager = [(HMDAppleAccessoryPairingHomeController *)self homeManager];
    state3 = [(HMDAppleAccessoryPairingHomeController *)self state];
    homeUUID = [state3 homeUUID];
    v17 = [homeManager _homeWithUUID:homeUUID];

    uuid3 = [v17 uuid];
    v19 = uuid3;
    if (uuid2 && uuid3)
    {
      v20 = [MEMORY[0x277CD16F0] topicFromSuffixID:*MEMORY[0x277CCEA98] homeUUID:uuid3 accessoryUUID:uuid2];
      if (v20)
      {
        state4 = [(HMDAppleAccessoryPairingHomeController *)self state];
        [state4 setLastPostedSoftwareUpdateDescriptor:descriptorCopy];

        homeManager2 = [(HMDAppleAccessoryPairingHomeController *)self homeManager];
        eventForwarder = [homeManager2 eventForwarder];
        [eventForwarder forwardEvent:v10 topic:v20 completion:0];
      }

      else
      {
        v32 = objc_autoreleasePoolPush();
        selfCopy = self;
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
          v43 = uuid2;
          _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Failed to get SU topic with homeUUID: %@, accessoryUUID: %@", buf, 0x20u);

          v32 = v37;
        }

        objc_autoreleasePoolPop(v32);
      }
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543874;
        v39 = v31;
        v40 = 2112;
        v41 = v19;
        v42 = 2112;
        v43 = uuid2;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Unexpected nil value in homeUUID: %@, accessoryUUID: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v28);
    }
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy3 = self;
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

- (void)postSoftwareUpdateEventForSoftwareUpdate:(id)update
{
  v44 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  state = [updateCopy state];
  if (state <= 2)
  {
    selfCopy4 = self;
    v6 = 3;
    v7 = 14;
    v8 = 15;
    if (state != 2)
    {
      v8 = 0;
    }

    if (state != 1)
    {
      v7 = v8;
    }

    if (state)
    {
      v6 = v7;
    }

    goto LABEL_17;
  }

  if (state == 3)
  {
    selfCopy4 = self;
    v6 = 9;
LABEL_17:
    v35 = v6;
LABEL_18:
    v13 = objc_alloc(MEMORY[0x277CD1E48]);
    downloadSize = [updateCopy downloadSize];
    v32 = v13;
    if (downloadSize)
    {
      v41 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(updateCopy, "downloadSize")}];
    }

    else
    {
      v41 = 0;
    }

    documentationMetadata = [updateCopy documentationMetadata];
    v37 = [documentationMetadata URL];
    absoluteURL = [v37 absoluteURL];
    documentationMetadata2 = [updateCopy documentationMetadata];
    digest = [documentationMetadata2 digest];
    [digest algorithm];
    v26 = HMFDigestAlgorithmToString();
    documentationMetadata3 = [updateCopy documentationMetadata];
    digest2 = [documentationMetadata3 digest];
    value = [digest2 value];
    v14 = MEMORY[0x277CCABB0];
    version = [updateCopy version];
    v15 = [v14 numberWithUnsignedInteger:{objc_msgSend(version, "majorVersion")}];
    v16 = MEMORY[0x277CCABB0];
    version2 = [updateCopy version];
    v18 = [v16 numberWithUnsignedInteger:{objc_msgSend(version2, "minorVersion")}];
    v19 = MEMORY[0x277CCABB0];
    version3 = [updateCopy version];
    v21 = [v19 numberWithUnsignedInteger:{objc_msgSend(version3, "updateVersion")}];
    version4 = [updateCopy version];
    buildVersion = [version4 buildVersion];
    LOBYTE(v25) = 1;
    v36 = [v32 initWithStatus:v35 downloadSize:v41 humanReadableUpdateName:0 rampEnabled:0 errorCode:0 serverAssetURL:absoluteURL serverAssetAlgorithm:v26 serverAssetMeasurement:value majorVersion:v15 minorVersion:v18 updateVersion:v21 buildVersion:buildVersion softwareVersionRequiresMetadata:v25];

    if (downloadSize)
    {
    }

    [(HMDAppleAccessoryPairingHomeController *)selfCopy4 postSoftwareUpdateEventForDescriptor:v36];

    goto LABEL_24;
  }

  if (state == 4)
  {
    selfCopy4 = self;
    v6 = 2;
    goto LABEL_17;
  }

  if (state != 5)
  {
    selfCopy4 = self;
    v35 = 0;
    goto LABEL_18;
  }

  v9 = objc_autoreleasePoolPush();
  selfCopy5 = self;
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
  state = [(HMDAppleAccessoryPairingHomeController *)self state];
  deviceIdentifier = [state deviceIdentifier];
  if (deviceIdentifier)
  {

    goto LABEL_4;
  }

  state2 = [(HMDAppleAccessoryPairingHomeController *)self state];
  device = [state2 device];

  if (device)
  {
LABEL_4:
    dataSource = [(HMDAppleAccessoryPairingHomeController *)self dataSource];
    state3 = [(HMDAppleAccessoryPairingHomeController *)self state];
    device2 = [state3 device];
    identifier = [device2 identifier];
    v11 = [dataSource deviceForIdentifier:identifier];

    if (!v11)
    {
      goto LABEL_10;
    }

    version = [v11 version];
    if (!version)
    {
      goto LABEL_10;
    }

    v13 = version;
    version2 = [v11 version];
    v15 = +[HMDHomeKitVersion version10];
    v16 = [version2 isAtLeastVersion:v15];

    if (v16)
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543362;
        v33 = v20;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Previously legacy HomePod has been updated to a HH2.0 viable HomeKit", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      [(HMDAppleAccessoryPairingHomeController *)selfCopy postNotificationOfDeviceUpdated];
      [(HMDAppleAccessoryPairingHomeController *)selfCopy cleanupLegacyZone];
    }

    else
    {
LABEL_10:
      v21 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543362;
        v33 = v24;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Querying HomePod to determine if it has upgradable software.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
      workContext = [(HMDAppleAccessoryPairingHomeController *)selfCopy2 workContext];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __74__HMDAppleAccessoryPairingHomeController_checkDeviceVersionAndSendUpgrade__block_invoke;
      v31[3] = &unk_27868A728;
      v31[4] = selfCopy2;
      [workContext performBlock:v31];
    }

    goto LABEL_14;
  }

  v27 = objc_autoreleasePoolPush();
  selfCopy3 = self;
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
  state = [(HMDAppleAccessoryPairingHomeController *)self state];
  lastPostedSoftwareUpdateDescriptor = [state lastPostedSoftwareUpdateDescriptor];

  if (lastPostedSoftwareUpdateDescriptor)
  {
    [lastPostedSoftwareUpdateDescriptor setStatus:2];
    [(HMDAppleAccessoryPairingHomeController *)self postSoftwareUpdateEventForDescriptor:lastPostedSoftwareUpdateDescriptor];
  }

  homeManager = [(HMDAppleAccessoryPairingHomeController *)self homeManager];
  state2 = [(HMDAppleAccessoryPairingHomeController *)self state];
  homeUUID = [state2 homeUUID];
  v7 = [homeManager _homeWithUUID:homeUUID];

  state3 = [(HMDAppleAccessoryPairingHomeController *)self state];
  accessory = [state3 accessory];
  uuid = [accessory uuid];
  v11 = [v7 accessoryWithUUID:uuid];

  if (v11)
  {
    dataSource = [(HMDAppleAccessoryPairingHomeController *)self dataSource];
    bulletinBoard = [dataSource bulletinBoard];
    [bulletinBoard insertHH2SoftwareUpdateCompleteEventBulletinForAccessory:v11];
  }
}

- (void)cleanupLegacyZone
{
  upgradeCheckTimer = [(HMDAppleAccessoryPairingHomeController *)self upgradeCheckTimer];
  [upgradeCheckTimer suspend];

  homeManager = [(HMDAppleAccessoryPairingHomeController *)self homeManager];
  workQueue = [homeManager workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HMDAppleAccessoryPairingHomeController_cleanupLegacyZone__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
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

- (void)startWithLocalZone:(id)zone
{
  v32 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  if (!self->_localZone)
  {
    objc_storeStrong(&self->_localZone, zone);
    localZone = [(HMDAppleAccessoryPairingHomeController *)self localZone];
    [localZone addObserverForAllModels:self];

    localZone2 = [(HMDAppleAccessoryPairingHomeController *)self localZone];
    [localZone2 startUp];

    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      state = [(HMDAppleAccessoryPairingHomeController *)selfCopy state];
      cloudZoneID = [state cloudZoneID];
      name = [cloudZoneID name];
      *buf = 138543618;
      v29 = v11;
      v30 = 2112;
      v31 = name;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Starting state machine for zone: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    localZone3 = [(HMDAppleAccessoryPairingHomeController *)selfCopy localZone];
    mirror = [localZone3 mirror];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = mirror;
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
    v27[4] = selfCopy;
    v22 = [v21 addSuccessBlock:v27];

    startUp = [v18 startUp];

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __61__HMDAppleAccessoryPairingHomeController_startWithLocalZone___block_invoke_92;
    v26[3] = &unk_27868A200;
    v26[4] = selfCopy;
    v24 = [startUp addSuccessBlock:v26];
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

- (BOOL)handleMessage:(id)message from:(id)from
{
  v47 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  fromCopy = from;
  v8 = [messageCopy uuidForKey:*MEMORY[0x277CCF0B0]];
  name = [messageCopy name];
  v10 = [name isEqual:*MEMORY[0x277CD2070]];

  if (v10)
  {
    state = [(HMDAppleAccessoryPairingHomeController *)self state];
    accessory = [state accessory];
    uuid = [accessory uuid];
    v14 = [v8 isEqual:uuid];

    if (v14)
    {
      uuid2 = [fromCopy uuid];
      state2 = [(HMDAppleAccessoryPairingHomeController *)self state];
      [state2 setHomeUUID:uuid2];

      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = HMFGetLogIdentifier();
        state3 = [(HMDAppleAccessoryPairingHomeController *)selfCopy state];
        accessory2 = [state3 accessory];
        uuid3 = [accessory2 uuid];
        [fromCopy uuid];
        v24 = v38 = v17;
        *buf = 138543874;
        v42 = v20;
        v43 = 2112;
        v44 = uuid3;
        v45 = 2112;
        v46 = v24;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Adding Legacy HomePod %@ To Home: %@", buf, 0x20u);

        v17 = v38;
      }

      objc_autoreleasePoolPop(v17);
      state4 = [(HMDAppleAccessoryPairingHomeController *)selfCopy state];
      [state4 setState:1];

      dataSource = [(HMDAppleAccessoryPairingHomeController *)selfCopy dataSource];
      state5 = [(HMDAppleAccessoryPairingHomeController *)selfCopy state];
      [dataSource updatePairingAccessoryState:state5];
    }
  }

  else
  {
    name2 = [messageCopy name];
    v29 = [name2 isEqual:*MEMORY[0x277CD24F0]];

    if (v29)
    {
      state6 = [(HMDAppleAccessoryPairingHomeController *)self state];
      accessory3 = [state6 accessory];
      uuid4 = [accessory3 uuid];
      v33 = [v8 isEqual:uuid4];

      if (v33)
      {
        homeManager = [(HMDAppleAccessoryPairingHomeController *)self homeManager];
        workQueue = [homeManager workQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __61__HMDAppleAccessoryPairingHomeController_handleMessage_from___block_invoke;
        block[3] = &unk_27868A750;
        block[4] = self;
        v40 = v8;
        dispatch_async(workQueue, block);
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

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  upgradeCheckTimer = [(HMDAppleAccessoryPairingHomeController *)self upgradeCheckTimer];

  if (upgradeCheckTimer == fireCopy)
  {

    [(HMDAppleAccessoryPairingHomeController *)self checkDeviceVersionAndSendUpgrade];
  }
}

- (HMDAppleAccessoryPairingHomeController)initWithState:(id)state homeManager:(id)manager dataSource:(id)source
{
  stateCopy = state;
  managerCopy = manager;
  sourceCopy = source;
  v18.receiver = self;
  v18.super_class = HMDAppleAccessoryPairingHomeController;
  v12 = [(HMDAppleAccessoryPairingHomeController *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_state, state);
    objc_storeStrong(&v13->_homeManager, manager);
    objc_storeStrong(&v13->_dataSource, source);
    v14 = [sourceCopy timerWithInterval:12 options:120.0];
    upgradeCheckTimer = v13->_upgradeCheckTimer;
    v13->_upgradeCheckTimer = v14;

    [(HMFTimer *)v13->_upgradeCheckTimer setDelegate:v13];
    v13->_suppressedQueries = 0;
    notificationCenter = [sourceCopy notificationCenter];
    [notificationCenter addObserver:v13 selector:sel__handleDeviceNotification_ name:@"HMDAppleAccountManagerResolved" object:0];
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