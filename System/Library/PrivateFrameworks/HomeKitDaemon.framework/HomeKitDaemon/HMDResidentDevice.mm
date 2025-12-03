@interface HMDResidentDevice
+ (id)batteryStateAsString:(int64_t)string;
+ (id)deriveUUIDFromHomeUUID:(id)d deviceUUID:(id)iD;
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)_updateMessageAddress:(id)address;
- (BOOL)_updateRawCapabilities:(id)capabilities;
- (BOOL)isConfirmed;
- (BOOL)isCurrentDevice;
- (BOOL)isDemoDevice;
- (BOOL)isDeviceEquivalentToDeviceAddress:(id)address;
- (BOOL)isEqual:(id)equal;
- (BOOL)supportsCustomMediaApplicationDestination;
- (BOOL)supportsFirmwareUpdate;
- (BOOL)supportsHomeActivityState;
- (BOOL)supportsMediaActions;
- (BOOL)supportsMediaSystem;
- (BOOL)supportsNativeMatter;
- (BOOL)supportsNativeMatterPlugin;
- (BOOL)supportsResidentFirmwareUpdate;
- (BOOL)supportsResidentSelection;
- (BOOL)supportsSharedEventTriggerActivation;
- (BOOL)supportsShortcutActions;
- (HMDDevice)device;
- (HMDDeviceAddress)messageAddress;
- (HMDHome)home;
- (HMDResidentDevice)initWithCoder:(id)coder;
- (HMDResidentDevice)initWithDevice:(id)device home:(id)home name:(id)name rawCapabilities:(id)capabilities messageAddress:(id)address deviceIRKData:(id)data;
- (HMDResidentDevice)initWithDevice:(id)device identifier:(id)identifier;
- (HMDResidentDevice)initWithDeviceController:(id)controller identifier:(id)identifier;
- (HMDResidentDevice)initWithModel:(id)model;
- (HMDResidentDeviceManager)residentDeviceManager;
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
- (unint64_t)productType;
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

- (unint64_t)hash
{
  device = [(HMDResidentDevice *)self device];
  v3 = [device hash];

  return v3;
}

- (HMDDevice)device
{
  deviceController = [(HMDResidentDevice *)self deviceController];
  device = [deviceController device];

  return device;
}

- (id)deviceController
{
  os_unfair_lock_lock_with_options();
  v3 = self->_deviceController;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMDDeviceAddress)messageAddress
{
  os_unfair_lock_lock_with_options();
  v3 = self->_messageAddress;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)isDemoDevice
{
  selfCopy = self;
  v3 = HMDResidentDevice.isDemoDevice.getter();

  return v3 & 1;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(HMDResidentDevice *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"HM.identifier"];

  home = [(HMDResidentDevice *)self home];
  [coderCopy encodeConditionalObject:home forKey:@"home"];

  device = [(HMDResidentDevice *)self device];
  [coderCopy encodeObject:device forKey:*MEMORY[0x277CD0CD0]];

  [coderCopy encodeBool:-[HMDResidentDevice isEnabled](self forKey:{"isEnabled"), @"HM.enabled"}];
  if ([coderCopy hmd_isForXPCTransport])
  {
    name = [(HMDResidentDevice *)self name];
    [coderCopy encodeObject:name forKey:@"HM.name"];

    [coderCopy encodeInteger:-[HMDResidentDevice status](self forKey:{"status"), @"HM.status"}];
    [coderCopy encodeInteger:-[HMDResidentDevice legacyResidentCapabilities](self forKey:{"legacyResidentCapabilities"), @"HM.capabilities"}];
    supportsResidentSelection = [(HMDResidentDevice *)self supportsResidentSelection];
    [coderCopy encodeBool:supportsResidentSelection forKey:*MEMORY[0x277CD0CF8]];
    supportsHomeActivityState = [(HMDResidentDevice *)self supportsHomeActivityState];
    [coderCopy encodeBool:supportsHomeActivityState forKey:*MEMORY[0x277CD0CF0]];
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
  v16 = MEMORY[0x277CCACA8];
  name = [(HMDResidentDevice *)self name];
  device = [(HMDResidentDevice *)self device];
  identifier = [device identifier];
  uUIDString = [identifier UUIDString];
  [(HMDResidentDevice *)self isEnabled];
  v19 = HMFBooleanToString();
  [(HMDResidentDevice *)self isConfirmed];
  v14 = HMFBooleanToString();
  [(HMDResidentDevice *)self isReachable];
  v3 = HMFBooleanToString();
  [(HMDResidentDevice *)self isReachableByIDS];
  v4 = HMFBooleanToString();
  v5 = [HMDResidentDevice batteryStateAsString:[(HMDResidentDevice *)self batteryState]];
  deviceIRKData = [(HMDResidentDevice *)self deviceIRKData];
  device2 = [(HMDResidentDevice *)self device];
  idsIdentifier = [device2 idsIdentifier];
  device3 = [(HMDResidentDevice *)self device];
  remoteDestinationString = [device3 remoteDestinationString];
  v11 = [v16 stringWithFormat:@"name: %@, uuid: %@, isEnabled: %@, isConfirmed: %@, isReachable: %@, isReachableByIDS: %@, batteryState: %@, deviceIRKData: %@, idsIdentifier: %@, idsDestination: %@", name, uUIDString, v19, v14, v3, v4, v5, deviceIRKData, idsIdentifier, remoteDestinationString];

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

- (BOOL)_updateMessageAddress:(id)address
{
  v22 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  os_unfair_lock_lock_with_options();
  v6 = [(HMDDeviceAddress *)self->_messageAddress isEqual:addressCopy];
  if (v6)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    objc_storeStrong(&self->_messageAddress, address);
    os_unfair_lock_unlock(&self->_lock);
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v10;
      v20 = 2112;
      v21 = addressCopy;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Updated device message address to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    messageAddress = [(HMDResidentDevice *)selfCopy messageAddress];
    v16[1] = @"HMDResidentDeviceResidentNotificationKey";
    v17[0] = messageAddress;
    v17[1] = selfCopy;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"HMDResidentDeviceAddressChangedNotification" object:selfCopy userInfo:v12];
  }

  v14 = *MEMORY[0x277D85DE8];
  return !v6;
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
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Updated resident capabilities to %@", buf, 0x16u);
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

  rawCapabilities = [(HMDResidentDevice *)self rawCapabilities];
  [(HMDResidentDeviceModel *)v11 setResidentCapabilities:rawCapabilities];

  device = [(HMDResidentDevice *)self device];
  version = [device version];
  v17 = +[HMDHomeKitVersion version4];
  LODWORD(uuid) = [version isAtLeastVersion:v17];

  isWatch();
  home2 = [(HMDResidentDevice *)self home];
  isOwnerUser = [home2 isOwnerUser];

  if (!uuid || ((v20 = [device isCurrentDevice], version > 3) ? (v21 = v20) : (v21 = 0), (v21 & 1) != 0 || isOwnerUser != 1))
  {
    identifier2 = [device identifier];
    uUIDString = [identifier2 UUIDString];
    [(HMDResidentDeviceModel *)v11 setDeviceUUID:uUIDString];

    if ((isOwnerUser & 1) != 0 || !self->_device)
    {
      [(HMDResidentDeviceModel *)v11 setDevice:device];
    }

    else
    {
      [(HMDResidentDeviceModel *)v11 setDevice:?];
      device = self->_device;
      self->_device = 0;
    }
  }

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
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Notifying clients of resident device confirmed state changing to %{public}@", buf, 0x16u);
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
  v113 = *MEMORY[0x277D85DE8];
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
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    device3 = [(HMDResidentDevice *)self device];
    v16 = [device3 backingStoreObjectsWithChangeType:0 version:4];

    v17 = [v16 countByEnumeratingWithState:&v99 objects:v112 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v100;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v100 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [*(*(&v99 + 1) + 8 * i) dumpDebug:@"LOCAL: "];
        }

        v18 = [v16 countByEnumeratingWithState:&v99 objects:v112 count:16];
      }

      while (v18);
    }
  }

  device4 = [valuesCopy device];

  if (device4)
  {
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    device5 = [valuesCopy device];
    v23 = [device5 backingStoreObjectsWithChangeType:0 version:4];

    v24 = [v23 countByEnumeratingWithState:&v95 objects:v111 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v96;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v96 != v26)
          {
            objc_enumerationMutation(v23);
          }

          [*(*(&v95 + 1) + 8 * j) dumpDebug:@"REMOTE: "];
        }

        v25 = [v23 countByEnumeratingWithState:&v95 objects:v111 count:16];
      }

      while (v25);
    }
  }

  deviceUUID = [valuesCopy deviceUUID];

  v91 = transactionResult;
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
        v106 = v39;
        v107 = 2112;
        v108 = uUIDString;
        _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@Updating the underlying device with identifier: %@", buf, 0x16u);

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
      [v91 markChanged];
    }

    transactionResult = v91;
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
      v56 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v58 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
      {
        v59 = HMFGetLogIdentifier();
        device10 = [(HMDResidentDevice *)selfCopy2 device];
        [valuesCopy device];
        v62 = v61 = updatedCopy;
        *buf = 138543874;
        v106 = v59;
        v107 = 2112;
        v108 = device10;
        v109 = 2112;
        v110 = v62;
        _os_log_impl(&dword_229538000, v58, OS_LOG_TYPE_INFO, "%{public}@Cloud changed our device, preferring local device -- local: %@, cloud :%@", buf, 0x20u);

        updatedCopy = v61;
        transactionResult = v91;
      }

      objc_autoreleasePoolPop(v56);
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

    if (isEnabled == bOOLValue)
    {
      enabled = 0;
    }

    else
    {
      [transactionResult markChanged];
      enabled3 = [valuesCopy enabled];
      -[HMDResidentDevice _handleResidentDeviceUpdateEnabled:](self, "_handleResidentDeviceUpdateEnabled:", [enabled3 BOOLValue]);

      v103 = @"kEnabledKey";
      v55 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDResidentDevice isEnabled](self, "isEnabled")}];
      v104 = v55;
      enabled = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
    }
  }

  confirmed = [valuesCopy confirmed];
  if (confirmed)
  {
    v64 = confirmed;
    isConfirmed = [(HMDResidentDevice *)self isConfirmed];
    confirmed2 = [valuesCopy confirmed];
    bOOLValue2 = [confirmed2 BOOLValue];

    v68 = isConfirmed == bOOLValue2;
    transactionResult = v91;
    if (!v68)
    {
      [v91 markChanged];
      confirmed3 = [valuesCopy confirmed];
      -[HMDResidentDevice _handleResidentDeviceUpdateConfirmed:](self, "_handleResidentDeviceUpdateConfirmed:", [confirmed3 BOOLValue]);
    }
  }

  residentCapabilities = [valuesCopy residentCapabilities];

  if (residentCapabilities)
  {
    residentCapabilities2 = [valuesCopy residentCapabilities];
    [(HMDResidentDevice *)self _updateRawCapabilities:residentCapabilities2];
  }

  if ([transactionResult changed])
  {
    residentDeviceManager = [(HMDResidentDevice *)self residentDeviceManager];
    [residentDeviceManager notifyClientsOfUpdatedResidentDevice:self];
  }

  home = [(HMDResidentDevice *)self home];
  if (v13)
  {
    v89 = updatedCopy;
    [transactionResult markChanged];
    v74 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v76 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
    {
      v77 = HMFGetLogIdentifier();
      device12 = [(HMDResidentDevice *)selfCopy3 device];
      *buf = 138543618;
      v106 = v77;
      v107 = 2112;
      v108 = device12;
      _os_log_impl(&dword_229538000, v76, OS_LOG_TYPE_INFO, "%{public}@Pushing back with current device: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v74);
    v79 = [(HMDResidentDevice *)selfCopy3 modelObjectWithChangeType:2 version:4];
    backingStore = [home backingStore];
    v81 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v82 = [backingStore transaction:@"residentUpdated" options:v81];

    [v82 add:v79];
    v93[0] = MEMORY[0x277D85DD0];
    v93[1] = 3221225472;
    v93[2] = __67__HMDResidentDevice__residentDeviceModelUpdated_newValues_message___block_invoke;
    v93[3] = &unk_27868A250;
    v94 = home;
    [v82 save:v93];

    updatedCopy = v89;
    transactionResult = v91;
  }

  backingStore2 = [home backingStore];
  v92[0] = MEMORY[0x277D85DD0];
  v92[1] = 3221225472;
  v92[2] = __67__HMDResidentDevice__residentDeviceModelUpdated_newValues_message___block_invoke_2;
  v92[3] = &unk_27868A250;
  v92[4] = self;
  [backingStore2 submitBlock:v92];

  responseHandler = [messageCopy responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [messageCopy responseHandler];
    (responseHandler2)[2](responseHandler2, 0, enabled);
  }

  v86 = *MEMORY[0x277D85DE8];
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
  v8[3] = &unk_278688F28;
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
    dispatch_once(&productTypeForModelIdentifier__onceToken, &__block_literal_global_156925);
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
  v4[0] = &unk_283E735F8;
  v4[1] = &unk_283E73610;
  v3[2] = @"AppleTV14,1";
  v3[3] = @"AppleTV14,1";
  v4[2] = &unk_283E73628;
  v4[3] = &unk_283E73640;
  v3[4] = @"AppleTV11,1";
  v3[5] = @"AudioAccessory1,2";
  v4[4] = &unk_283E73658;
  v4[5] = &unk_283E73670;
  v3[6] = @"AudioAccessory1,1";
  v3[7] = @"AudioAccessory5,1";
  v4[6] = &unk_283E73688;
  v4[7] = &unk_283E736A0;
  v3[8] = @"AudioAccessory6,1";
  v4[8] = &unk_283E736B8;
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
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Received notification device was updated", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    residentDeviceManager = [(HMDResidentDevice *)selfCopy residentDeviceManager];
    [residentDeviceManager notifyClientsOfUpdatedResidentDevice:selfCopy];
  }

  v14 = *MEMORY[0x277D85DE8];
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

- (BOOL)supportsHomeActivityState
{
  capabilitiesInternal = [(HMDResidentDevice *)self capabilitiesInternal];
  supportsHomeActivityState = [capabilitiesInternal supportsHomeActivityState];

  return supportsHomeActivityState;
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
  capabilitiesInternal = [(HMDResidentDevice *)self capabilitiesInternal];
  v3 = residentCapabilitiesForDevice(capabilitiesInternal);

  return (v3 >> 24) & 1;
}

- (BOOL)supportsResidentFirmwareUpdate
{
  capabilitiesInternal = [(HMDResidentDevice *)self capabilitiesInternal];
  v3 = residentCapabilitiesForDevice(capabilitiesInternal);

  return (v3 >> 23) & 1;
}

- (BOOL)supportsFirmwareUpdate
{
  capabilitiesInternal = [(HMDResidentDevice *)self capabilitiesInternal];
  v3 = residentCapabilitiesForDevice(capabilitiesInternal);

  return (v3 >> 11) & 1;
}

- (BOOL)supportsShortcutActions
{
  capabilitiesInternal = [(HMDResidentDevice *)self capabilitiesInternal];
  v3 = residentCapabilitiesForDevice(capabilitiesInternal);

  return (v3 >> 8) & 1;
}

- (BOOL)supportsMediaActions
{
  capabilitiesInternal = [(HMDResidentDevice *)self capabilitiesInternal];
  v3 = residentCapabilitiesForDevice(capabilitiesInternal);

  return (v3 >> 9) & 1;
}

- (BOOL)supportsMediaSystem
{
  capabilitiesInternal = [(HMDResidentDevice *)self capabilitiesInternal];
  v3 = residentCapabilitiesForDevice(capabilitiesInternal);

  return (v3 >> 4) & 1;
}

- (unint64_t)productType
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(HMDResidentDevice *)self isCurrentDevice])
  {
    device = [(HMDResidentDevice *)self device];
    productInfo = [device productInfo];
  }

  else
  {
    device = +[HMDAppleAccountManager sharedManager];
    device2 = [(HMDResidentDevice *)self device];
    idsIdentifier = [device2 idsIdentifier];
    productInfo = [device idsDeviceForIDSIdentifier:idsIdentifier];
  }

  modelIdentifier = [productInfo modelIdentifier];

  if (modelIdentifier)
  {
    v8 = [(HMDResidentDevice *)self productTypeForModelIdentifier:modelIdentifier];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Could not find the model identifier.", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)supportsSharedEventTriggerActivation
{
  capabilitiesInternal = [(HMDResidentDevice *)self capabilitiesInternal];
  v3 = residentCapabilitiesForDevice(capabilitiesInternal);

  return (v3 >> 3) & 1;
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
    if ([(HMDResidentDevice *)self isReachable])
    {
LABEL_3:
      v3 = 1;
      goto LABEL_10;
    }

    home = [(HMDResidentDevice *)self home];
    if ([home supportsResidentSelection] && -[HMDResidentDevice isReachableByIDS](self, "isReachableByIDS"))
    {
      supportsResidentSelection = [(HMDResidentDevice *)self supportsResidentSelection];

      if (!supportsResidentSelection)
      {
        goto LABEL_3;
      }
    }

    else
    {
    }
  }

  v3 = 0;
LABEL_10:
  home2 = [(HMDResidentDevice *)self home];
  primaryResident = [home2 primaryResident];
  v8 = [primaryResident isEqual:self];

  if (v8)
  {
    v9 = v3 | 2;
  }

  else
  {
    v9 = v3;
  }

  if ([(HMDResidentDevice *)self isLowBattery])
  {
    v9 |= 8uLL;
  }

  if ([(HMDResidentDevice *)self batteryState]== 1)
  {
    return v9 | 4;
  }

  else
  {
    return v9;
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

- (BOOL)isDeviceEquivalentToDeviceAddress:(id)address
{
  addressCopy = address;
  if (addressCopy)
  {
    messageAddress = [(HMDResidentDevice *)self messageAddress];
    v6 = [messageAddress isEquivalentToDeviceAddress:addressCopy];

    if (v6)
    {
      goto LABEL_4;
    }

    device = [(HMDResidentDevice *)self device];
    idsIdentifier = [device idsIdentifier];
    idsIdentifier2 = [addressCopy idsIdentifier];
    v10 = [idsIdentifier isEqual:idsIdentifier2];

    if (v10)
    {
LABEL_4:
      v11 = 1;
    }

    else
    {
      device2 = [(HMDResidentDevice *)self device];
      globalHandles = [device2 globalHandles];
      firstObject = [globalHandles firstObject];
      idsDestination = [addressCopy idsDestination];
      v16 = [HMDDeviceHandle deviceHandleForDestination:idsDestination];
      v11 = [firstObject isEqual:v16];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
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
  v19 = pointerCopy;
  if (pointerCopy)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", self];
  }

  else
  {
    v11 = &stru_283CF9D50;
  }

  [(HMDResidentDevice *)self isEnabled];
  v12 = HMFBooleanToString();
  [(HMDResidentDevice *)self isConfirmed];
  v13 = HMFBooleanToString();
  [(HMDResidentDevice *)self isReachable];
  v14 = HMFBooleanToString();
  [(HMDResidentDevice *)self isReachableByIDS];
  v15 = HMFBooleanToString();
  capabilities = [(HMDResidentDevice *)self capabilities];
  v17 = [v9 stringWithFormat:@"<%@%@, Enabled = %@, Confirmed = %@, Reachable = %@, Reachable by IDS = %@, Capabilities = %@, Device = %@>", shortDescription, v11, v12, v13, v14, v15, capabilities, v7];

  if (v19)
  {
  }

  return v17;
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

- (unint64_t)legacyResidentCapabilities
{
  capabilitiesInternal = [(HMDResidentDevice *)self capabilitiesInternal];
  v3 = residentCapabilitiesForDevice(capabilitiesInternal);

  return v3;
}

- (void)configureWithHome:(id)home
{
  obj = home;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_home, obj);
  residentDeviceManager = [obj residentDeviceManager];
  objc_storeWeak(&self->_residentDeviceManager, residentDeviceManager);

  os_unfair_lock_unlock(&self->_lock);
  [(HMDDeviceController *)self->_deviceController setDelegate:self];
  device = [(HMDResidentDevice *)self device];
  __registerForDeviceNotifications(self, device);

  device = self->_device;
  self->_device = 0;
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
      v10->_reachableByIDS = 1;
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
  appleMediaAccessoryName = [(HMDResidentDevice *)self appleMediaAccessoryName];
  v4 = appleMediaAccessoryName;
  if (appleMediaAccessoryName)
  {
    v5 = appleMediaAccessoryName;
LABEL_5:
    name = v5;
    goto LABEL_6;
  }

  name = self->_name;
  if (name)
  {
    v5 = name;
    goto LABEL_5;
  }

  device = [(HMDResidentDevice *)self device];
  name = [device name];

LABEL_6:

  return name;
}

- (HMDResidentDevice)initWithDevice:(id)device home:(id)home name:(id)name rawCapabilities:(id)capabilities messageAddress:(id)address deviceIRKData:(id)data
{
  nameCopy = name;
  capabilitiesCopy = capabilities;
  addressCopy = address;
  obj = data;
  dataCopy = data;
  homeCopy = home;
  deviceCopy = device;
  v18 = objc_opt_class();
  uuid = [homeCopy uuid];

  identifier = [deviceCopy identifier];
  v21 = [v18 deriveUUIDFromHomeUUID:uuid deviceUUID:identifier];

  v22 = [(HMDResidentDevice *)self initWithDevice:deviceCopy identifier:v21];
  if (v22)
  {
    objc_storeStrong(&v22->_name, name);
    if (capabilitiesCopy)
    {
      objc_storeStrong(&v22->_rawCapabilities, capabilities);
      v23 = [objc_alloc(MEMORY[0x277CD1D60]) initWithProtoData:{capabilitiesCopy, obj, dataCopy, addressCopy, nameCopy}];
      capabilitiesInternal = v22->_capabilitiesInternal;
      v22->_capabilitiesInternal = v23;
    }

    objc_storeStrong(&v22->_messageAddress, address);
    objc_storeStrong(&v22->_deviceIRKData, obj);
    v25 = v22;
  }

  return v22;
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
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@[%@] Device is required.", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    selfCopy = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (HMDResidentDevice)initWithModel:(id)model
{
  v39 = *MEMORY[0x277D85DE8];
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

      residentCapabilities = [modelCopy residentCapabilities];
      if (residentCapabilities)
      {
        objc_storeStrong(&v13->_rawCapabilities, residentCapabilities);
        v17 = [objc_alloc(MEMORY[0x277CD1D60]) initWithProtoData:residentCapabilities];
        capabilitiesInternal = v13->_capabilitiesInternal;
        v13->_capabilitiesInternal = v17;
      }
    }

    selfCopy = v13;
    v20 = selfCopy;
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      deviceUUID3 = [modelCopy deviceUUID];
      uuid2 = [modelCopy uuid];
      uUIDString = [uuid2 UUIDString];
      device4 = [modelCopy device];
      v28 = @"YES";
      v31 = 138544130;
      v32 = v23;
      if (!device4)
      {
        v28 = @"NO";
      }

      v33 = 2112;
      v34 = deviceUUID3;
      v35 = 2112;
      v36 = uUIDString;
      v37 = 2112;
      v38 = v28;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Could not retrieve device with UUID %@ for resident: %@; device encoding present: %@", &v31, 0x2Au);
    }

    objc_autoreleasePoolPop(v21);
    v20 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v20;
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
  if (logCategory__hmf_once_t31_156994 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t31_156994, &__block_literal_global_139_156995);
  }

  v3 = logCategory__hmf_once_v32_156996;

  return v3;
}

void __32__HMDResidentDevice_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v32_156996;
  logCategory__hmf_once_v32_156996 = v1;
}

+ (id)batteryStateAsString:(int64_t)string
{
  if ((string - 1) > 2)
  {
    return @"HMFPowerBatteryStateUnknown";
  }

  else
  {
    return off_27867BE98[string - 1];
  }
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end