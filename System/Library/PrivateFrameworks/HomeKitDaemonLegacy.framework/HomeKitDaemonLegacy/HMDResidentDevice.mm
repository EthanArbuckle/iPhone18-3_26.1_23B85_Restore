@interface HMDResidentDevice
+ (id)batteryStateAsString:(int64_t)string;
+ (id)deriveUUIDFromHomeUUID:(id)d deviceUUID:(id)iD;
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)_updateRawCapabilities:(id)capabilities;
- (BOOL)isBlocked;
- (BOOL)isConfirmed;
- (BOOL)isCurrentDevice;
- (BOOL)isEqual:(id)equal;
- (BOOL)supportsCustomMediaApplicationDestination;
- (BOOL)supportsFirmwareUpdate;
- (BOOL)supportsMediaActions;
- (BOOL)supportsMediaSystem;
- (BOOL)supportsNativeMatter;
- (BOOL)supportsNativeMatterPlugin;
- (BOOL)supportsResidentFirmwareUpdate;
- (BOOL)supportsResidentSelection;
- (BOOL)supportsSharedEventTriggerActivation;
- (BOOL)supportsShortcutActions;
- (HMDDevice)device;
- (HMDHome)home;
- (HMDResidentDevice)initWithCoder:(id)coder;
- (HMDResidentDevice)initWithDevice:(id)device identifier:(id)identifier;
- (HMDResidentDevice)initWithDeviceController:(id)controller identifier:(id)identifier;
- (HMDResidentDevice)initWithModel:(id)model;
- (HMDResidentDeviceManager)residentDeviceManager;
- (HMResidentCapabilities)capabilities;
- (HMResidentCapabilities)capabilitiesInternal;
- (NSData)deviceIRKData;
- (NSData)rawCapabilities;
- (NSString)name;
- (id)appleMediaAccessoryName;
- (id)descriptionWithPointer:(BOOL)pointer;
- (id)deviceController;
- (id)dumpState;
- (id)logIdentifier;
- (id)modelObjectWithChangeType:(unint64_t)type version:(int64_t)version;
- (id)runtimeState;
- (id)shortDescription;
- (unint64_t)hash;
- (unint64_t)legacyResidentCapabilities;
- (unint64_t)productTypeForModelIdentifier:(id)identifier;
- (unint64_t)status;
- (void)__deviceUpdated:(id)updated;
- (void)_handleResidentDeviceUpdateConfirmed:(BOOL)confirmed;
- (void)_residentDeviceModelUpdated:(id)updated newValues:(id)values message:(id)message;
- (void)configureWithHome:(id)home;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
- (void)updateDeviceIRKData:(id)data;
@end

@implementation HMDResidentDevice

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(HMDResidentDevice *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"HM.identifier"];

  home = [(HMDResidentDevice *)self home];
  [coderCopy encodeConditionalObject:home forKey:@"home"];

  device = [(HMDResidentDevice *)self device];
  [coderCopy encodeObject:device forKey:*MEMORY[0x277CD0CD0]];

  v7 = (![coderCopy hmd_isForSharedUser] || !-[HMDResidentDevice isBlocked](self, "isBlocked")) && -[HMDResidentDevice isEnabled](self, "isEnabled");
  [coderCopy encodeBool:v7 forKey:@"HM.enabled"];
  if ([coderCopy hmd_isForXPCTransport])
  {
    [coderCopy encodeInteger:-[HMDResidentDevice status](self forKey:{"status"), @"HM.status"}];
    [coderCopy encodeInteger:-[HMDResidentDevice legacyResidentCapabilities](self forKey:{"legacyResidentCapabilities"), @"HM.capabilities"}];
    supportsResidentSelection = [(HMDResidentDevice *)self supportsResidentSelection];
    [coderCopy encodeBool:supportsResidentSelection forKey:*MEMORY[0x277CD0CF8]];
    if ([coderCopy hmd_isForXPCTransportEntitledForSPIAccess])
    {
      device2 = [(HMDResidentDevice *)self device];
      idsIdentifier = [device2 idsIdentifier];
      [coderCopy encodeObject:idsIdentifier forKey:@"HM.accountIdentifier"];

      device3 = [(HMDResidentDevice *)self device];
      remoteDestinationString = [device3 remoteDestinationString];
      [coderCopy encodeObject:remoteDestinationString forKey:*MEMORY[0x277CCFC50]];

      deviceIRKData = [(HMDResidentDevice *)self deviceIRKData];
      [coderCopy encodeObject:deviceIRKData forKey:*MEMORY[0x277CD0CD8]];
    }
  }

  else
  {
    [coderCopy encodeBool:-[HMDResidentDevice isConfirmed](self forKey:{"isConfirmed"), @"HM.confirmed"}];
  }
}

- (HMDResidentDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD0CD0]];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v7 = [(HMDResidentDevice *)self initWithDevice:v5 identifier:uUID];

  if (v7)
  {
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"home"];
    objc_storeWeak(&v7->_home, v8);

    if ([coderCopy containsValueForKey:@"HM.identifier"])
    {
      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.identifier"];
      identifier = v7->_identifier;
      v7->_identifier = v9;
    }

    if ([coderCopy containsValueForKey:@"HM.enabled"])
    {
      v7->_enabled = [coderCopy decodeBoolForKey:@"HM.enabled"];
    }

    v7->_confirmed = [coderCopy decodeBoolForKey:@"HM.confirmed"];
  }

  return v7;
}

- (id)logIdentifier
{
  identifier = [(HMDResidentDevice *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (id)dumpState
{
  v17 = MEMORY[0x277CCACA8];
  name = [(HMDResidentDevice *)self name];
  device = [(HMDResidentDevice *)self device];
  identifier = [device identifier];
  uUIDString = [identifier UUIDString];
  [(HMDResidentDevice *)self isEnabled];
  v3 = HMFBooleanToString();
  [(HMDResidentDevice *)self isConfirmed];
  v4 = HMFBooleanToString();
  [(HMDResidentDevice *)self isReachable];
  v14 = HMFBooleanToString();
  v5 = [HMDResidentDevice batteryStateAsString:[(HMDResidentDevice *)self batteryState]];
  deviceIRKData = [(HMDResidentDevice *)self deviceIRKData];
  device2 = [(HMDResidentDevice *)self device];
  idsIdentifier = [device2 idsIdentifier];
  device3 = [(HMDResidentDevice *)self device];
  remoteDestinationString = [device3 remoteDestinationString];
  v11 = [v17 stringWithFormat:@"name: %@, uuid: %@, isEnabled: %@, isConfirmed: %@, isReachable: %@, isReachableByIDS: %@, batteryState: %@, deviceIRKData: %@, idsIdentifier: %@, idsDestination: %@", name, uUIDString, v3, v4, v14, @"N/A", v5, deviceIRKData, idsIdentifier, remoteDestinationString];

  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v11 forKey:*MEMORY[0x277D0F170]];

  return v12;
}

- (void)updateDeviceIRKData:(id)data
{
  dataCopy = data;
  os_unfair_lock_lock_with_options();
  if ([(NSData *)self->_deviceIRKData isEqualToData:dataCopy])
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    objc_storeStrong(&self->_deviceIRKData, data);
    os_unfair_lock_unlock(&self->_lock);
    home = [(HMDResidentDevice *)self home];
    homeManager = [home homeManager];
    identifier = [(HMDResidentDevice *)self identifier];
    [homeManager updateGenerationCounterWithReason:@"Device IRK Data Updated" sourceUUID:identifier shouldNotifyClients:1];
  }
}

- (NSData)deviceIRKData
{
  os_unfair_lock_lock_with_options();
  v3 = self->_deviceIRKData;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)_updateRawCapabilities:(id)capabilities
{
  v28 = *MEMORY[0x277D85DE8];
  capabilitiesCopy = capabilities;
  v6 = [objc_alloc(MEMORY[0x277CD1D60]) initWithProtoData:capabilitiesCopy];
  os_unfair_lock_lock_with_options();
  if (!capabilitiesCopy || self->_rawCapabilities) && ([v6 isEqual:self->_capabilitiesInternal])
  {
    os_unfair_lock_unlock(&self->_lock);
    v7 = 0;
  }

  else
  {
    objc_storeStrong(&self->_rawCapabilities, capabilities);
    v8 = [objc_alloc(MEMORY[0x277CD1D60]) initWithProtoData:capabilitiesCopy];
    capabilitiesInternal = self->_capabilitiesInternal;
    self->_capabilitiesInternal = v8;

    os_unfair_lock_unlock(&self->_lock);
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v13;
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Updated resident capabilities to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    home = [(HMDResidentDevice *)selfCopy home];
    homeManager = [home homeManager];
    identifier = [(HMDResidentDevice *)selfCopy identifier];
    [homeManager updateGenerationCounterWithReason:@"Resident Capabilities Updated" sourceUUID:identifier shouldNotifyClients:1];

    if (v6)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      identifier2 = [(HMDResidentDevice *)selfCopy identifier];
      v22[1] = @"residentCapabilities";
      v23[0] = identifier2;
      v23[1] = v6;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
      [defaultCenter postNotificationName:@"HMDResidentDeviceCapabilitiesUpdatedNotification" object:selfCopy userInfo:v19];
    }

    v7 = 1;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v7;
}

- (NSData)rawCapabilities
{
  os_unfair_lock_lock_with_options();
  v3 = self->_rawCapabilities;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMResidentCapabilities)capabilitiesInternal
{
  os_unfair_lock_lock_with_options();
  v3 = self->_capabilitiesInternal;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)modelObjectWithChangeType:(unint64_t)type version:(int64_t)version
{
  v7 = [HMDResidentDeviceModel alloc];
  identifier = [(HMDResidentDevice *)self identifier];
  home = [(HMDResidentDevice *)self home];
  uuid = [home uuid];
  v11 = [(HMDBackingStoreModelObject *)v7 initWithObjectChangeType:type uuid:identifier parentUUID:uuid];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDResidentDevice isEnabled](self, "isEnabled")}];
  [(HMDResidentDeviceModel *)v11 setEnabled:v12];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDResidentDevice isConfirmed](self, "isConfirmed")}];
  [(HMDResidentDeviceModel *)v11 setConfirmed:v13];

  device = [(HMDResidentDevice *)self device];
  version = [device version];
  v16 = +[HMDHomeKitVersion version4];
  v17 = [version isAtLeastVersion:v16];

  v18 = isWatch();
  if (v18 && (+[HMDDeviceCapabilities deviceCapabilities](HMDDeviceCapabilities, "deviceCapabilities"), version = objc_claimAutoreleasedReturnValue(), ![version supportsCloudDataSync]))
  {
    v20 = 1;
  }

  else
  {
    home2 = [(HMDResidentDevice *)self home];
    v20 = [home2 isOwnerUser] ^ 1;

    if (!v18)
    {
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_8:
      isCurrentDevice = [device isCurrentDevice];
      if (version > 3)
      {
        v22 = isCurrentDevice;
      }

      else
      {
        v22 = 0;
      }

      if (((v22 | v20) & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }
  }

  if (v17)
  {
    goto LABEL_8;
  }

LABEL_12:
  identifier2 = [device identifier];
  uUIDString = [identifier2 UUIDString];
  [(HMDResidentDeviceModel *)v11 setDeviceUUID:uUIDString];

  if (v20 && self->_device)
  {
    [(HMDResidentDeviceModel *)v11 setDevice:?];
    device = self->_device;
    self->_device = 0;
  }

  else
  {
    [(HMDResidentDeviceModel *)v11 setDevice:device];
  }

LABEL_16:

  return v11;
}

- (void)_handleResidentDeviceUpdateConfirmed:(BOOL)confirmed
{
  confirmedCopy = confirmed;
  v25 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  confirmed = self->_confirmed;
  self->_confirmed = confirmedCopy;
  os_unfair_lock_unlock(&self->_lock);
  if (confirmed != confirmedCopy)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = HMFBooleanToString();
      *buf = 138543618;
      v22 = v9;
      v23 = 2114;
      v24 = v10;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Notifying clients of resident device confirmed state changing to %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    home = [(HMDResidentDevice *)selfCopy home];
    uuid = [home uuid];
    v19[1] = @"HMDResidentDeviceResidentNotificationKey";
    v20[0] = uuid;
    v20[1] = selfCopy;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"HMDResidentDeviceConfirmedStateChangedNotification" object:selfCopy userInfo:v13];

    if ((confirmedCopy & 1) == 0)
    {
      device = [(HMDResidentDevice *)selfCopy device];
      isCurrentDevice = [device isCurrentDevice];

      if (isCurrentDevice)
      {
        residentDeviceManager = [(HMDResidentDevice *)selfCopy residentDeviceManager];
        [residentDeviceManager confirmAsResident];
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_residentDeviceModelUpdated:(id)updated newValues:(id)values message:(id)message
{
  v118 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  valuesCopy = values;
  messageCopy = message;
  transactionResult = [messageCopy transactionResult];
  device = [(HMDResidentDevice *)self device];
  isCurrentDevice = [device isCurrentDevice];

  if (isCurrentDevice)
  {
    v13 = ([transactionResult source] & 0xFFFFFFFFFFFFFFFELL) == 2;
  }

  else
  {
    v13 = 0;
  }

  device2 = [(HMDResidentDevice *)self device];

  if (device2)
  {
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    device3 = [(HMDResidentDevice *)self device];
    v16 = [device3 backingStoreObjectsWithChangeType:0 version:4];

    v17 = [v16 countByEnumeratingWithState:&v104 objects:v117 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v105;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v105 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [*(*(&v104 + 1) + 8 * i) dumpDebug:@"LOCAL: "];
        }

        v18 = [v16 countByEnumeratingWithState:&v104 objects:v117 count:16];
      }

      while (v18);
    }
  }

  device4 = [valuesCopy device];

  if (device4)
  {
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    device5 = [valuesCopy device];
    v23 = [device5 backingStoreObjectsWithChangeType:0 version:4];

    v24 = [v23 countByEnumeratingWithState:&v100 objects:v116 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v101;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v101 != v26)
          {
            objc_enumerationMutation(v23);
          }

          [*(*(&v100 + 1) + 8 * j) dumpDebug:@"REMOTE: "];
        }

        v25 = [v23 countByEnumeratingWithState:&v100 objects:v116 count:16];
      }

      while (v25);
    }
  }

  deviceUUID = [valuesCopy deviceUUID];

  v96 = transactionResult;
  if (deviceUUID)
  {
    v29 = objc_alloc(MEMORY[0x277CCAD78]);
    deviceUUID2 = [valuesCopy deviceUUID];
    v31 = [v29 initWithUUIDString:deviceUUID2];

    deviceController = [(HMDResidentDevice *)self deviceController];
    identifier = [deviceController identifier];
    v34 = [v31 hmf_isEqualToUUID:identifier];

    if ((v34 & 1) == 0)
    {
      v35 = objc_autoreleasePoolPush();
      selfCopy = self;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        HMFGetLogIdentifier();
        v39 = v38 = updatedCopy;
        uUIDString = [v31 UUIDString];
        *buf = 138543618;
        v111 = v39;
        v112 = 2112;
        v113 = uUIDString;
        _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@Updating the underlying device with identifier: %@", buf, 0x16u);

        updatedCopy = v38;
      }

      objc_autoreleasePoolPop(v35);
      v41 = [HMDDeviceController placeholderDeviceControllerWithIdentifier:v31];
      os_unfair_lock_lock_with_options();
      deviceController = selfCopy->_deviceController;
      selfCopy->_deviceController = v41;
      v43 = v41;

      os_unfair_lock_unlock(&selfCopy->_lock);
      [(HMDDeviceController *)v43 setDelegate:selfCopy];
      device6 = [(HMDDeviceController *)v43 device];

      __handleUpdatedDevice(selfCopy, device6);
      [v96 markChanged];
    }

    transactionResult = v96;
  }

  device7 = [valuesCopy device];
  if (!device7)
  {
    goto LABEL_30;
  }

  v46 = device7;
  device8 = [(HMDResidentDevice *)self device];
  device9 = [valuesCopy device];
  v49 = [device8 isBackingStorageEqual:device9];

  if ((v49 & 1) == 0)
  {
    if (v13)
    {
      v58 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v60 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        v61 = HMFGetLogIdentifier();
        device10 = [(HMDResidentDevice *)selfCopy2 device];
        [valuesCopy device];
        v64 = v63 = updatedCopy;
        *buf = 138543874;
        v111 = v61;
        v112 = 2112;
        v113 = device10;
        v114 = 2112;
        v115 = v64;
        _os_log_impl(&dword_2531F8000, v60, OS_LOG_TYPE_INFO, "%{public}@Cloud changed our device, preferring local device -- local: %@, cloud :%@", buf, 0x20u);

        updatedCopy = v63;
        transactionResult = v96;
      }

      objc_autoreleasePoolPop(v58);
      v13 = 1;
    }

    else
    {
      deviceController2 = [(HMDResidentDevice *)self deviceController];
      device11 = [valuesCopy device];
      [deviceController2 updateWithDevice:device11 completionHandler:0];
    }
  }

  else
  {
LABEL_30:
    v13 = 0;
  }

  enabled = [valuesCopy enabled];
  if (enabled)
  {
    isEnabled = [(HMDResidentDevice *)self isEnabled];
    enabled2 = [valuesCopy enabled];
    bOOLValue = [enabled2 BOOLValue];

    if (isEnabled != bOOLValue)
    {
      enabled3 = [valuesCopy enabled];
      if (![enabled3 BOOLValue])
      {
LABEL_36:

LABEL_37:
        [transactionResult markChanged];
        enabled4 = [valuesCopy enabled];
        -[HMDResidentDevice _handleResidentDeviceUpdateEnabled:](self, "_handleResidentDeviceUpdateEnabled:", [enabled4 BOOLValue]);

        v108 = @"kEnabledKey";
        v57 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDResidentDevice isEnabled](self, "isEnabled")}];
        v109 = v57;
        enabled = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v109 forKeys:&v108 count:1];

        goto LABEL_48;
      }

      home = [(HMDResidentDevice *)self home];
      if ([home isOwnerUser])
      {

        goto LABEL_36;
      }

      isBlocked = [(HMDResidentDevice *)self isBlocked];

      if (!isBlocked)
      {
        goto LABEL_37;
      }

      v68 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v70 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
      {
        v71 = HMFGetLogIdentifier();
        *buf = 138543362;
        v111 = v71;
        _os_log_impl(&dword_2531F8000, v70, OS_LOG_TYPE_INFO, "%{public}@Not enabling, we are currently blocked", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v68);
    }

    enabled = 0;
  }

LABEL_48:
  confirmed = [valuesCopy confirmed];
  if (confirmed)
  {
    v73 = confirmed;
    isConfirmed = [(HMDResidentDevice *)self isConfirmed];
    confirmed2 = [valuesCopy confirmed];
    bOOLValue2 = [confirmed2 BOOLValue];

    v77 = isConfirmed == bOOLValue2;
    transactionResult = v96;
    if (!v77)
    {
      [v96 markChanged];
      confirmed3 = [valuesCopy confirmed];
      -[HMDResidentDevice _handleResidentDeviceUpdateConfirmed:](self, "_handleResidentDeviceUpdateConfirmed:", [confirmed3 BOOLValue]);
    }
  }

  if ([transactionResult changed])
  {
    residentDeviceManager = [(HMDResidentDevice *)self residentDeviceManager];
    [residentDeviceManager notifyClientsOfUpdatedResidentDevice:self];
  }

  home2 = [(HMDResidentDevice *)self home];
  if (v13)
  {
    v94 = updatedCopy;
    [transactionResult markChanged];
    v81 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v83 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
    {
      v84 = HMFGetLogIdentifier();
      device12 = [(HMDResidentDevice *)selfCopy4 device];
      *buf = 138543618;
      v111 = v84;
      v112 = 2112;
      v113 = device12;
      _os_log_impl(&dword_2531F8000, v83, OS_LOG_TYPE_INFO, "%{public}@Pushing back with current device: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v81);
    v86 = [(HMDResidentDevice *)selfCopy4 modelObjectWithChangeType:2 version:4];
    backingStore = [home2 backingStore];
    v88 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v89 = [backingStore transaction:@"residentUpdated" options:v88];

    [v89 add:v86];
    v98[0] = MEMORY[0x277D85DD0];
    v98[1] = 3221225472;
    v98[2] = __67__HMDResidentDevice__residentDeviceModelUpdated_newValues_message___block_invoke;
    v98[3] = &unk_2797359D8;
    v99 = home2;
    [v89 save:v98];

    updatedCopy = v94;
    transactionResult = v96;
  }

  backingStore2 = [home2 backingStore];
  v97[0] = MEMORY[0x277D85DD0];
  v97[1] = 3221225472;
  v97[2] = __67__HMDResidentDevice__residentDeviceModelUpdated_newValues_message___block_invoke_2;
  v97[3] = &unk_2797359D8;
  v97[4] = self;
  [backingStore2 submitBlock:v97];

  responseHandler = [messageCopy responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [messageCopy responseHandler];
    (responseHandler2)[2](responseHandler2, 0, enabled);
  }

  v93 = *MEMORY[0x277D85DE8];
}

void __67__HMDResidentDevice__residentDeviceModelUpdated_newValues_message___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) residentDeviceManager];
  [v1 run];
}

- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  valuesCopy = values;
  messageCopy = message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = valuesCopy;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (v9)
  {
    [(HMDResidentDevice *)self _residentDeviceModelUpdated:0 newValues:v9 message:messageCopy];
  }

  else
  {
    responseHandler = [messageCopy responseHandler];

    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (*(responseHandler + 16))(responseHandler, v11, 0);

    messageCopy = responseHandler;
  }
}

- (id)appleMediaAccessoryName
{
  home = [(HMDResidentDevice *)self home];
  appleMediaAccessories = [home appleMediaAccessories];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__HMDResidentDevice_appleMediaAccessoryName__block_invoke;
  v8[3] = &unk_279734F10;
  v8[4] = self;
  v5 = [appleMediaAccessories na_firstObjectPassingTest:v8];

  name = [v5 name];

  return name;
}

uint64_t __44__HMDResidentDevice_appleMediaAccessoryName__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 device];
  v5 = [v4 idsIdentifier];
  v6 = [v3 idsIdentifier];

  v7 = [v5 hmf_isEqualToUUID:v6];
  return v7;
}

- (unint64_t)productTypeForModelIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (productTypeForModelIdentifier__onceToken != -1)
  {
    dispatch_once(&productTypeForModelIdentifier__onceToken, &__block_literal_global_82_104750);
  }

  unsignedIntValue = [productTypeForModelIdentifier__modelIdentifierToProductTypeMap objectForKeyedSubscript:identifierCopy];

  if (unsignedIntValue)
  {
    v5 = [productTypeForModelIdentifier__modelIdentifierToProductTypeMap objectForKeyedSubscript:identifierCopy];
    unsignedIntValue = [v5 unsignedIntValue];
  }

  return unsignedIntValue;
}

void __51__HMDResidentDevice_productTypeForModelIdentifier___block_invoke()
{
  v4[9] = *MEMORY[0x277D85DE8];
  v3[0] = @"AppleTV5,3";
  v3[1] = @"AppleTV6,2";
  v4[0] = &unk_286628BA0;
  v4[1] = &unk_286628BB8;
  v3[2] = @"AppleTV14,1";
  v3[3] = @"AppleTV14,1";
  v4[2] = &unk_286628BD0;
  v4[3] = &unk_286628BE8;
  v3[4] = @"AppleTV11,1";
  v3[5] = @"AudioAccessory1,2";
  v4[4] = &unk_286628C00;
  v4[5] = &unk_286628C18;
  v3[6] = @"AudioAccessory1,1";
  v3[7] = @"AudioAccessory5,1";
  v4[6] = &unk_286628C30;
  v4[7] = &unk_286628C48;
  v3[8] = @"AudioAccessory6,1";
  v4[8] = &unk_286628C60;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:9];
  v1 = productTypeForModelIdentifier__modelIdentifierToProductTypeMap;
  productTypeForModelIdentifier__modelIdentifierToProductTypeMap = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (void)__deviceUpdated:(id)updated
{
  v17 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  object = [updatedCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = object;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  device = [(HMDResidentDevice *)self device];

  if (v7 == device)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Received notification device was updated", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    residentDeviceManager = [(HMDResidentDevice *)selfCopy residentDeviceManager];
    [residentDeviceManager notifyClientsOfUpdatedResidentDevice:selfCopy];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)deviceController
{
  os_unfair_lock_lock_with_options();
  v3 = self->_deviceController;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMDDevice)device
{
  deviceController = [(HMDResidentDevice *)self deviceController];
  device = [deviceController device];

  return device;
}

- (BOOL)isCurrentDevice
{
  device = [(HMDResidentDevice *)self device];
  isCurrentDevice = [device isCurrentDevice];

  return isCurrentDevice;
}

- (id)runtimeState
{
  v11[4] = *MEMORY[0x277D85DE8];
  v10[0] = *MEMORY[0x277CD0CE0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDResidentDevice isEnabled](self, "isEnabled")}];
  v11[0] = v3;
  v10[1] = *MEMORY[0x277CD0CE8];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDResidentDevice status](self, "status")}];
  v11[1] = v4;
  v10[2] = *MEMORY[0x277CD0CC8];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDResidentDevice legacyResidentCapabilities](self, "legacyResidentCapabilities")}];
  v11[2] = v5;
  v10[3] = *MEMORY[0x277CD0D00];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDResidentDevice supportsResidentSelection](self, "supportsResidentSelection")}];
  v11[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)supportsNativeMatterPlugin
{
  capabilitiesInternal = [(HMDResidentDevice *)self capabilitiesInternal];
  supportsNativeMatterPlugin = [capabilitiesInternal supportsNativeMatterPlugin];

  return supportsNativeMatterPlugin;
}

- (BOOL)supportsNativeMatter
{
  capabilitiesInternal = [(HMDResidentDevice *)self capabilitiesInternal];
  supportsNativeMatter = [capabilitiesInternal supportsNativeMatter];

  return supportsNativeMatter;
}

- (BOOL)supportsResidentSelection
{
  capabilitiesInternal = [(HMDResidentDevice *)self capabilitiesInternal];
  supportsResidentSelection = [capabilitiesInternal supportsResidentSelection];

  return supportsResidentSelection;
}

- (BOOL)supportsCustomMediaApplicationDestination
{
  device = [(HMDResidentDevice *)self device];
  capabilities = [device capabilities];
  device2 = [(HMDResidentDevice *)self device];
  v6 = residentCapabilitiesForDevice(capabilities, device2);

  return (v6 >> 24) & 1;
}

- (BOOL)supportsResidentFirmwareUpdate
{
  device = [(HMDResidentDevice *)self device];
  capabilities = [device capabilities];
  device2 = [(HMDResidentDevice *)self device];
  v6 = residentCapabilitiesForDevice(capabilities, device2);

  return (v6 >> 23) & 1;
}

- (BOOL)supportsFirmwareUpdate
{
  device = [(HMDResidentDevice *)self device];
  capabilities = [device capabilities];
  device2 = [(HMDResidentDevice *)self device];
  v6 = residentCapabilitiesForDevice(capabilities, device2);

  return (v6 >> 11) & 1;
}

- (BOOL)supportsShortcutActions
{
  device = [(HMDResidentDevice *)self device];
  capabilities = [device capabilities];
  device2 = [(HMDResidentDevice *)self device];
  v6 = residentCapabilitiesForDevice(capabilities, device2);

  return (v6 >> 8) & 1;
}

- (BOOL)supportsMediaActions
{
  device = [(HMDResidentDevice *)self device];
  capabilities = [device capabilities];
  device2 = [(HMDResidentDevice *)self device];
  v6 = residentCapabilitiesForDevice(capabilities, device2);

  return (v6 >> 9) & 1;
}

- (BOOL)supportsMediaSystem
{
  device = [(HMDResidentDevice *)self device];
  capabilities = [device capabilities];
  device2 = [(HMDResidentDevice *)self device];
  v6 = residentCapabilitiesForDevice(capabilities, device2);

  return (v6 >> 4) & 1;
}

- (BOOL)supportsSharedEventTriggerActivation
{
  device = [(HMDResidentDevice *)self device];
  capabilities = [device capabilities];
  device2 = [(HMDResidentDevice *)self device];
  v6 = residentCapabilitiesForDevice(capabilities, device2);

  return (v6 >> 3) & 1;
}

- (BOOL)isConfirmed
{
  residentDeviceManager = [(HMDResidentDevice *)self residentDeviceManager];
  if ([residentDeviceManager isResidentElectionV2Enabled])
  {
    primaryResidentUUID = [residentDeviceManager primaryResidentUUID];
    if (primaryResidentUUID)
    {
      identifier = [(HMDResidentDevice *)self identifier];
      confirmed = [primaryResidentUUID isEqual:identifier];
    }

    else
    {
      confirmed = 0;
    }
  }

  else
  {
    os_unfair_lock_lock_with_options();
    confirmed = self->_confirmed;
    os_unfair_lock_unlock(&self->_lock);
  }

  return confirmed & 1;
}

- (unint64_t)status
{
  if ([(HMDResidentDevice *)self isEnabled])
  {
    isReachable = [(HMDResidentDevice *)self isReachable];
  }

  else
  {
    isReachable = 0;
  }

  home = [(HMDResidentDevice *)self home];
  primaryResident = [home primaryResident];
  v6 = [primaryResident isEqual:self];

  if (v6)
  {
    v7 = isReachable | 2;
  }

  else
  {
    v7 = isReachable;
  }

  if ([(HMDResidentDevice *)self isLowBattery])
  {
    v7 |= 8uLL;
  }

  if ([(HMDResidentDevice *)self batteryState]== 1)
  {
    return v7 | 4;
  }

  else
  {
    return v7;
  }
}

- (HMDResidentDeviceManager)residentDeviceManager
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_residentDeviceManager);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (HMDHome)home
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_home);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      device = [(HMDResidentDevice *)equalCopy device];
      device2 = [(HMDResidentDevice *)self device];
      v7 = [device isEqual:device2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  device = [(HMDResidentDevice *)self device];
  v3 = [device hash];

  return v3;
}

- (id)descriptionWithPointer:(BOOL)pointer
{
  pointerCopy = pointer;
  v5 = shouldLogPrivateInformation();
  device = [(HMDResidentDevice *)self device];
  v7 = device;
  if ((v5 & 1) == 0)
  {
    privateDescription = [device privateDescription];

    v7 = privateDescription;
  }

  v9 = MEMORY[0x277CCACA8];
  shortDescription = [(HMDResidentDevice *)self shortDescription];
  if (pointerCopy)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", self];
  }

  else
  {
    v11 = &stru_286509E58;
  }

  [(HMDResidentDevice *)self isEnabled];
  v12 = HMFBooleanToString();
  [(HMDResidentDevice *)self isConfirmed];
  v13 = HMFBooleanToString();
  [(HMDResidentDevice *)self isReachable];
  v14 = HMFBooleanToString();
  v15 = [v9 stringWithFormat:@"<%@%@, Enabled = %@, Confirmed = %@, Reachable = %@, Device = %@>", shortDescription, v11, v12, v13, v14, v7];

  if (pointerCopy)
  {
  }

  return v15;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  identifier = [(HMDResidentDevice *)self identifier];
  uUIDString = [identifier UUIDString];
  device = [(HMDResidentDevice *)self device];
  name = [device name];
  device2 = [(HMDResidentDevice *)self device];
  version = [device2 version];
  v11 = [v3 stringWithFormat:@"%@ %@ %@ Ver: %@", shortDescription, uUIDString, name, version];

  return v11;
}

- (HMResidentCapabilities)capabilities
{
  device = [(HMDResidentDevice *)self device];
  capabilities = [device capabilities];

  return capabilities;
}

- (unint64_t)legacyResidentCapabilities
{
  device = [(HMDResidentDevice *)self device];
  capabilities = [device capabilities];
  device2 = [(HMDResidentDevice *)self device];
  v6 = residentCapabilitiesForDevice(capabilities, device2);

  return v6;
}

- (BOOL)isBlocked
{
  device = [(HMDResidentDevice *)self device];

  if (!device)
  {
    return 0;
  }

  if (isBlocked_onceToken != -1)
  {
    dispatch_once(&isBlocked_onceToken, &__block_literal_global_104792);
  }

  device2 = [(HMDResidentDevice *)self device];
  version = [device2 version];
  v6 = [version isAtLeastVersion:isBlocked_unblockedVersion];

  return v6 ^ 1;
}

uint64_t __30__HMDResidentDevice_isBlocked__block_invoke()
{
  v0 = +[HMDHomeKitVersion version4_1];
  v1 = isBlocked_unblockedVersion;
  isBlocked_unblockedVersion = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)configureWithHome:(id)home
{
  v15 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_home, homeCopy);
  residentDeviceManager = [homeCopy residentDeviceManager];
  objc_storeWeak(&self->_residentDeviceManager, residentDeviceManager);

  os_unfair_lock_unlock(&self->_lock);
  [(HMDDeviceController *)self->_deviceController setDelegate:self];
  device = [(HMDResidentDevice *)self device];
  __registerForDeviceNotifications(self, device);

  device = self->_device;
  self->_device = 0;

  if (-[HMDResidentDevice isBlocked](self, "isBlocked") && ([homeCopy isOwnerUser] & 1) == 0)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Disabling as we are blocked", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    [(HMDResidentDevice *)selfCopy setEnabled:0];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = HMDResidentDevice;
  [(HMDResidentDevice *)&v4 dealloc];
}

- (HMDResidentDevice)initWithDeviceController:(id)controller identifier:(id)identifier
{
  controllerCopy = controller;
  identifierCopy = identifier;
  if (controllerCopy)
  {
    v13.receiver = self;
    v13.super_class = HMDResidentDevice;
    v9 = [(HMDResidentDevice *)&v13 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_identifier, identifier);
      v10->_enabled = 1;
      v10->_reachable = 1;
      objc_storeStrong(&v10->_deviceController, controller);
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NSString)name
{
  device = [(HMDResidentDevice *)self device];
  name = [device name];

  return name;
}

- (HMDResidentDevice)initWithDevice:(id)device identifier:(id)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  identifierCopy = identifier;
  if (deviceCopy)
  {
    v9 = [HMDDeviceController deviceControllerForDevice:deviceCopy];
    v10 = [(HMDResidentDevice *)self initWithDeviceController:v9 identifier:identifierCopy];

    if (v10)
    {
      objc_storeStrong(&v10->_device, device);
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = +[HMDResidentDevice shortDescription];
      v18 = 138543618;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@[%@] Device is required.", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    selfCopy = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (HMDResidentDevice)initWithModel:(id)model
{
  v36 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  deviceUUID = [modelCopy deviceUUID];

  if (deviceUUID)
  {
    v6 = objc_alloc(MEMORY[0x277CCAD78]);
    deviceUUID2 = [modelCopy deviceUUID];
    v8 = [v6 initWithUUIDString:deviceUUID2];

    deviceUUID = [HMDDeviceController placeholderDeviceControllerWithIdentifier:v8];
  }

  device = [modelCopy device];

  if (device)
  {
    if (!deviceUUID)
    {
      device2 = [modelCopy device];
      deviceUUID = [HMDDeviceController deviceControllerForDevice:device2];
    }

    device3 = [modelCopy device];
    [deviceUUID updateWithDevice:device3 completionHandler:0];
  }

  if (deviceUUID)
  {
    uuid = [modelCopy uuid];
    v13 = [(HMDResidentDevice *)self initWithDeviceController:deviceUUID identifier:uuid];

    if (v13)
    {
      enabled = [modelCopy enabled];
      v13->_enabled = [enabled BOOLValue];

      confirmed = [modelCopy confirmed];
      v13->_confirmed = [confirmed BOOLValue];
    }

    selfCopy = v13;
    v17 = selfCopy;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      deviceUUID3 = [modelCopy deviceUUID];
      uuid2 = [modelCopy uuid];
      uUIDString = [uuid2 UUIDString];
      device4 = [modelCopy device];
      v25 = @"YES";
      v28 = 138544130;
      v29 = v20;
      if (!device4)
      {
        v25 = @"NO";
      }

      v30 = 2112;
      v31 = deviceUUID3;
      v32 = 2112;
      v33 = uUIDString;
      v34 = 2112;
      v35 = v25;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Could not retrieve device with UUID %@ for resident: %@; device encoding present: %@", &v28, 0x2Au);
    }

    objc_autoreleasePoolPop(v18);
    v17 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (id)deriveUUIDFromHomeUUID:(id)d deviceUUID:(id)iD
{
  v11[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  uUIDString = [iD UUIDString];
  v11[0] = uUIDString;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  v8 = [MEMORY[0x277CCAD78] hm_deriveUUIDFromBaseUUID:dCopy withSalts:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t29_104816 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t29_104816, &__block_literal_global_139);
  }

  v3 = logCategory__hmf_once_v30_104817;

  return v3;
}

uint64_t __32__HMDResidentDevice_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v30_104817;
  logCategory__hmf_once_v30_104817 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)batteryStateAsString:(int64_t)string
{
  if ((string - 1) > 2)
  {
    return @"HMFPowerBatteryStateUnknown";
  }

  else
  {
    return off_27972ADC8[string - 1];
  }
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end