@interface HMDResidentDevice
+ (id)batteryStateAsString:(int64_t)a3;
+ (id)deriveUUIDFromHomeUUID:(id)a3 deviceUUID:(id)a4;
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)_updateMessageAddress:(id)a3;
- (BOOL)_updateRawCapabilities:(id)a3;
- (BOOL)isConfirmed;
- (BOOL)isCurrentDevice;
- (BOOL)isDemoDevice;
- (BOOL)isDeviceEquivalentToDeviceAddress:(id)a3;
- (BOOL)isEqual:(id)a3;
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
- (HMDResidentDevice)initWithCoder:(id)a3;
- (HMDResidentDevice)initWithDevice:(id)a3 home:(id)a4 name:(id)a5 rawCapabilities:(id)a6 messageAddress:(id)a7 deviceIRKData:(id)a8;
- (HMDResidentDevice)initWithDevice:(id)a3 identifier:(id)a4;
- (HMDResidentDevice)initWithDeviceController:(id)a3 identifier:(id)a4;
- (HMDResidentDevice)initWithModel:(id)a3;
- (HMDResidentDeviceManager)residentDeviceManager;
- (HMResidentCapabilities)capabilitiesInternal;
- (NSData)deviceIRKData;
- (NSData)rawCapabilities;
- (NSString)name;
- (id)appleMediaAccessoryName;
- (id)descriptionWithPointer:(BOOL)a3;
- (id)deviceController;
- (id)dumpState;
- (id)logIdentifier;
- (id)modelObjectWithChangeType:(unint64_t)a3 version:(int64_t)a4;
- (id)runtimeState;
- (id)shortDescription;
- (unint64_t)hash;
- (unint64_t)legacyResidentCapabilities;
- (unint64_t)productType;
- (unint64_t)productTypeForModelIdentifier:(id)a3;
- (unint64_t)status;
- (void)__deviceUpdated:(id)a3;
- (void)_handleResidentDeviceUpdateConfirmed:(BOOL)a3;
- (void)_residentDeviceModelUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
- (void)configureWithHome:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
- (void)updateDeviceIRKData:(id)a3;
@end

@implementation HMDResidentDevice

- (unint64_t)hash
{
  v2 = [(HMDResidentDevice *)self device];
  v3 = [v2 hash];

  return v3;
}

- (HMDDevice)device
{
  v2 = [(HMDResidentDevice *)self deviceController];
  v3 = [v2 device];

  return v3;
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
  v2 = self;
  v3 = HMDResidentDevice.isDemoDevice.getter();

  return v3 & 1;
}

- (void)encodeWithCoder:(id)a3
{
  v15 = a3;
  v4 = [(HMDResidentDevice *)self identifier];
  [v15 encodeObject:v4 forKey:@"HM.identifier"];

  v5 = [(HMDResidentDevice *)self home];
  [v15 encodeConditionalObject:v5 forKey:@"home"];

  v6 = [(HMDResidentDevice *)self device];
  [v15 encodeObject:v6 forKey:*MEMORY[0x277CD0CD0]];

  [v15 encodeBool:-[HMDResidentDevice isEnabled](self forKey:{"isEnabled"), @"HM.enabled"}];
  if ([v15 hmd_isForXPCTransport])
  {
    v7 = [(HMDResidentDevice *)self name];
    [v15 encodeObject:v7 forKey:@"HM.name"];

    [v15 encodeInteger:-[HMDResidentDevice status](self forKey:{"status"), @"HM.status"}];
    [v15 encodeInteger:-[HMDResidentDevice legacyResidentCapabilities](self forKey:{"legacyResidentCapabilities"), @"HM.capabilities"}];
    v8 = [(HMDResidentDevice *)self supportsResidentSelection];
    [v15 encodeBool:v8 forKey:*MEMORY[0x277CD0CF8]];
    v9 = [(HMDResidentDevice *)self supportsHomeActivityState];
    [v15 encodeBool:v9 forKey:*MEMORY[0x277CD0CF0]];
    if ([v15 hmd_isForXPCTransportEntitledForSPIAccess])
    {
      v10 = [(HMDResidentDevice *)self device];
      v11 = [v10 idsIdentifier];
      [v15 encodeObject:v11 forKey:@"HM.accountIdentifier"];

      v12 = [(HMDResidentDevice *)self device];
      v13 = [v12 remoteDestinationString];
      [v15 encodeObject:v13 forKey:*MEMORY[0x277CCFC50]];

      v14 = [(HMDResidentDevice *)self deviceIRKData];
      [v15 encodeObject:v14 forKey:*MEMORY[0x277CD0CD8]];
    }
  }

  else
  {
    [v15 encodeBool:-[HMDResidentDevice isConfirmed](self forKey:{"isConfirmed"), @"HM.confirmed"}];
  }
}

- (HMDResidentDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD0CD0]];
  v6 = [MEMORY[0x277CCAD78] UUID];
  v7 = [(HMDResidentDevice *)self initWithDevice:v5 identifier:v6];

  if (v7)
  {
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"home"];
    objc_storeWeak(&v7->_home, v8);

    if ([v4 containsValueForKey:@"HM.identifier"])
    {
      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.identifier"];
      identifier = v7->_identifier;
      v7->_identifier = v9;
    }

    if ([v4 containsValueForKey:@"HM.enabled"])
    {
      v7->_enabled = [v4 decodeBoolForKey:@"HM.enabled"];
    }

    v7->_confirmed = [v4 decodeBoolForKey:@"HM.confirmed"];
  }

  return v7;
}

- (id)logIdentifier
{
  v2 = [(HMDResidentDevice *)self identifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)dumpState
{
  v16 = MEMORY[0x277CCACA8];
  v15 = [(HMDResidentDevice *)self name];
  v18 = [(HMDResidentDevice *)self device];
  v17 = [v18 identifier];
  v20 = [v17 UUIDString];
  [(HMDResidentDevice *)self isEnabled];
  v19 = HMFBooleanToString();
  [(HMDResidentDevice *)self isConfirmed];
  v14 = HMFBooleanToString();
  [(HMDResidentDevice *)self isReachable];
  v3 = HMFBooleanToString();
  [(HMDResidentDevice *)self isReachableByIDS];
  v4 = HMFBooleanToString();
  v5 = [HMDResidentDevice batteryStateAsString:[(HMDResidentDevice *)self batteryState]];
  v6 = [(HMDResidentDevice *)self deviceIRKData];
  v7 = [(HMDResidentDevice *)self device];
  v8 = [v7 idsIdentifier];
  v9 = [(HMDResidentDevice *)self device];
  v10 = [v9 remoteDestinationString];
  v11 = [v16 stringWithFormat:@"name: %@, uuid: %@, isEnabled: %@, isConfirmed: %@, isReachable: %@, isReachableByIDS: %@, batteryState: %@, deviceIRKData: %@, idsIdentifier: %@, idsDestination: %@", v15, v20, v19, v14, v3, v4, v5, v6, v8, v10];

  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v11 forKey:*MEMORY[0x277D0F170]];

  return v12;
}

- (void)updateDeviceIRKData:(id)a3
{
  v8 = a3;
  os_unfair_lock_lock_with_options();
  if ([(NSData *)self->_deviceIRKData isEqualToData:v8])
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    objc_storeStrong(&self->_deviceIRKData, a3);
    os_unfair_lock_unlock(&self->_lock);
    v5 = [(HMDResidentDevice *)self home];
    v6 = [v5 homeManager];
    v7 = [(HMDResidentDevice *)self identifier];
    [v6 updateGenerationCounterWithReason:@"Device IRK Data Updated" sourceUUID:v7 shouldNotifyClients:1];
  }
}

- (NSData)deviceIRKData
{
  os_unfair_lock_lock_with_options();
  v3 = self->_deviceIRKData;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)_updateMessageAddress:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  os_unfair_lock_lock_with_options();
  v6 = [(HMDDeviceAddress *)self->_messageAddress isEqual:v5];
  if (v6)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    objc_storeStrong(&self->_messageAddress, a3);
    os_unfair_lock_unlock(&self->_lock);
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v10;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Updated device message address to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [(HMDResidentDevice *)v8 messageAddress];
    v16[1] = @"HMDResidentDeviceResidentNotificationKey";
    v17[0] = v11;
    v17[1] = v8;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 postNotificationName:@"HMDResidentDeviceAddressChangedNotification" object:v8 userInfo:v12];
  }

  v14 = *MEMORY[0x277D85DE8];
  return !v6;
}

- (BOOL)_updateRawCapabilities:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x277CD1D60]) initWithProtoData:v5];
  os_unfair_lock_lock_with_options();
  if (!v5 || self->_rawCapabilities) && ([v6 isEqual:self->_capabilitiesInternal])
  {
    os_unfair_lock_unlock(&self->_lock);
    v7 = 0;
  }

  else
  {
    objc_storeStrong(&self->_rawCapabilities, a3);
    v8 = [objc_alloc(MEMORY[0x277CD1D60]) initWithProtoData:v5];
    capabilitiesInternal = self->_capabilitiesInternal;
    self->_capabilitiesInternal = v8;

    os_unfair_lock_unlock(&self->_lock);
    v10 = objc_autoreleasePoolPush();
    v11 = self;
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
    v14 = [(HMDResidentDevice *)v11 home];
    v15 = [v14 homeManager];
    v16 = [(HMDResidentDevice *)v11 identifier];
    [v15 updateGenerationCounterWithReason:@"Resident Capabilities Updated" sourceUUID:v16 shouldNotifyClients:1];

    if (v6)
    {
      v17 = [MEMORY[0x277CCAB98] defaultCenter];
      v18 = [(HMDResidentDevice *)v11 identifier];
      v22[1] = @"residentCapabilities";
      v23[0] = v18;
      v23[1] = v6;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
      [v17 postNotificationName:@"HMDResidentDeviceCapabilitiesUpdatedNotification" object:v11 userInfo:v19];
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

- (id)modelObjectWithChangeType:(unint64_t)a3 version:(int64_t)a4
{
  v7 = [HMDResidentDeviceModel alloc];
  v8 = [(HMDResidentDevice *)self identifier];
  v9 = [(HMDResidentDevice *)self home];
  v10 = [v9 uuid];
  v11 = [(HMDBackingStoreModelObject *)v7 initWithObjectChangeType:a3 uuid:v8 parentUUID:v10];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDResidentDevice isEnabled](self, "isEnabled")}];
  [(HMDResidentDeviceModel *)v11 setEnabled:v12];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDResidentDevice isConfirmed](self, "isConfirmed")}];
  [(HMDResidentDeviceModel *)v11 setConfirmed:v13];

  v14 = [(HMDResidentDevice *)self rawCapabilities];
  [(HMDResidentDeviceModel *)v11 setResidentCapabilities:v14];

  v15 = [(HMDResidentDevice *)self device];
  v16 = [v15 version];
  v17 = +[HMDHomeKitVersion version4];
  LODWORD(v10) = [v16 isAtLeastVersion:v17];

  isWatch();
  v18 = [(HMDResidentDevice *)self home];
  v19 = [v18 isOwnerUser];

  if (!v10 || ((v20 = [v15 isCurrentDevice], a4 > 3) ? (v21 = v20) : (v21 = 0), (v21 & 1) != 0 || v19 != 1))
  {
    v22 = [v15 identifier];
    v23 = [v22 UUIDString];
    [(HMDResidentDeviceModel *)v11 setDeviceUUID:v23];

    if ((v19 & 1) != 0 || !self->_device)
    {
      [(HMDResidentDeviceModel *)v11 setDevice:v15];
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

- (void)_handleResidentDeviceUpdateConfirmed:(BOOL)a3
{
  v3 = a3;
  v25 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  confirmed = self->_confirmed;
  self->_confirmed = v3;
  os_unfair_lock_unlock(&self->_lock);
  if (confirmed != v3)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
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
    v11 = [(HMDResidentDevice *)v7 home];
    v12 = [v11 uuid];
    v19[1] = @"HMDResidentDeviceResidentNotificationKey";
    v20[0] = v12;
    v20[1] = v7;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 postNotificationName:@"HMDResidentDeviceConfirmedStateChangedNotification" object:v7 userInfo:v13];

    if ((v3 & 1) == 0)
    {
      v15 = [(HMDResidentDevice *)v7 device];
      v16 = [v15 isCurrentDevice];

      if (v16)
      {
        v17 = [(HMDResidentDevice *)v7 residentDeviceManager];
        [v17 confirmAsResident];
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_residentDeviceModelUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v113 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v90 = a5;
  v10 = [v90 transactionResult];
  v11 = [(HMDResidentDevice *)self device];
  v12 = [v11 isCurrentDevice];

  if (v12)
  {
    v13 = ([v10 source] & 0xFFFFFFFFFFFFFFFELL) == 2;
  }

  else
  {
    v13 = 0;
  }

  v14 = [(HMDResidentDevice *)self device];

  if (v14)
  {
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v15 = [(HMDResidentDevice *)self device];
    v16 = [v15 backingStoreObjectsWithChangeType:0 version:4];

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

  v21 = [v9 device];

  if (v21)
  {
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v22 = [v9 device];
    v23 = [v22 backingStoreObjectsWithChangeType:0 version:4];

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

  v28 = [v9 deviceUUID];

  v91 = v10;
  if (v28)
  {
    v29 = objc_alloc(MEMORY[0x277CCAD78]);
    v30 = [v9 deviceUUID];
    v31 = [v29 initWithUUIDString:v30];

    v32 = [(HMDResidentDevice *)self deviceController];
    v33 = [v32 identifier];
    v34 = [v31 hmf_isEqualToUUID:v33];

    if ((v34 & 1) == 0)
    {
      v35 = objc_autoreleasePoolPush();
      v36 = self;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        HMFGetLogIdentifier();
        v39 = v38 = v8;
        v40 = [v31 UUIDString];
        *buf = 138543618;
        v106 = v39;
        v107 = 2112;
        v108 = v40;
        _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@Updating the underlying device with identifier: %@", buf, 0x16u);

        v8 = v38;
      }

      objc_autoreleasePoolPop(v35);
      v41 = [HMDDeviceController placeholderDeviceControllerWithIdentifier:v31];
      os_unfair_lock_lock_with_options();
      deviceController = v36->_deviceController;
      v36->_deviceController = v41;
      v43 = v41;

      os_unfair_lock_unlock(&v36->_lock);
      [(HMDDeviceController *)v43 setDelegate:v36];
      v44 = [(HMDDeviceController *)v43 device];

      __handleUpdatedDevice(v36, v44);
      [v91 markChanged];
    }

    v10 = v91;
  }

  v45 = [v9 device];
  if (!v45)
  {
    goto LABEL_30;
  }

  v46 = v45;
  v47 = [(HMDResidentDevice *)self device];
  v48 = [v9 device];
  v49 = [v47 isBackingStorageEqual:v48];

  if ((v49 & 1) == 0)
  {
    if (v13)
    {
      v56 = objc_autoreleasePoolPush();
      v57 = self;
      v58 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
      {
        v59 = HMFGetLogIdentifier();
        v60 = [(HMDResidentDevice *)v57 device];
        [v9 device];
        v62 = v61 = v8;
        *buf = 138543874;
        v106 = v59;
        v107 = 2112;
        v108 = v60;
        v109 = 2112;
        v110 = v62;
        _os_log_impl(&dword_229538000, v58, OS_LOG_TYPE_INFO, "%{public}@Cloud changed our device, preferring local device -- local: %@, cloud :%@", buf, 0x20u);

        v8 = v61;
        v10 = v91;
      }

      objc_autoreleasePoolPop(v56);
      v13 = 1;
    }

    else
    {
      v87 = [(HMDResidentDevice *)self deviceController];
      v88 = [v9 device];
      [v87 updateWithDevice:v88 completionHandler:0];
    }
  }

  else
  {
LABEL_30:
    v13 = 0;
  }

  v50 = [v9 enabled];
  if (v50)
  {
    v51 = [(HMDResidentDevice *)self isEnabled];
    v52 = [v9 enabled];
    v53 = [v52 BOOLValue];

    if (v51 == v53)
    {
      v50 = 0;
    }

    else
    {
      [v10 markChanged];
      v54 = [v9 enabled];
      -[HMDResidentDevice _handleResidentDeviceUpdateEnabled:](self, "_handleResidentDeviceUpdateEnabled:", [v54 BOOLValue]);

      v103 = @"kEnabledKey";
      v55 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDResidentDevice isEnabled](self, "isEnabled")}];
      v104 = v55;
      v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
    }
  }

  v63 = [v9 confirmed];
  if (v63)
  {
    v64 = v63;
    v65 = [(HMDResidentDevice *)self isConfirmed];
    v66 = [v9 confirmed];
    v67 = [v66 BOOLValue];

    v68 = v65 == v67;
    v10 = v91;
    if (!v68)
    {
      [v91 markChanged];
      v69 = [v9 confirmed];
      -[HMDResidentDevice _handleResidentDeviceUpdateConfirmed:](self, "_handleResidentDeviceUpdateConfirmed:", [v69 BOOLValue]);
    }
  }

  v70 = [v9 residentCapabilities];

  if (v70)
  {
    v71 = [v9 residentCapabilities];
    [(HMDResidentDevice *)self _updateRawCapabilities:v71];
  }

  if ([v10 changed])
  {
    v72 = [(HMDResidentDevice *)self residentDeviceManager];
    [v72 notifyClientsOfUpdatedResidentDevice:self];
  }

  v73 = [(HMDResidentDevice *)self home];
  if (v13)
  {
    v89 = v8;
    [v10 markChanged];
    v74 = objc_autoreleasePoolPush();
    v75 = self;
    v76 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
    {
      v77 = HMFGetLogIdentifier();
      v78 = [(HMDResidentDevice *)v75 device];
      *buf = 138543618;
      v106 = v77;
      v107 = 2112;
      v108 = v78;
      _os_log_impl(&dword_229538000, v76, OS_LOG_TYPE_INFO, "%{public}@Pushing back with current device: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v74);
    v79 = [(HMDResidentDevice *)v75 modelObjectWithChangeType:2 version:4];
    v80 = [v73 backingStore];
    v81 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v82 = [v80 transaction:@"residentUpdated" options:v81];

    [v82 add:v79];
    v93[0] = MEMORY[0x277D85DD0];
    v93[1] = 3221225472;
    v93[2] = __67__HMDResidentDevice__residentDeviceModelUpdated_newValues_message___block_invoke;
    v93[3] = &unk_27868A250;
    v94 = v73;
    [v82 save:v93];

    v8 = v89;
    v10 = v91;
  }

  v83 = [v73 backingStore];
  v92[0] = MEMORY[0x277D85DD0];
  v92[1] = 3221225472;
  v92[2] = __67__HMDResidentDevice__residentDeviceModelUpdated_newValues_message___block_invoke_2;
  v92[3] = &unk_27868A250;
  v92[4] = self;
  [v83 submitBlock:v92];

  v84 = [v90 responseHandler];

  if (v84)
  {
    v85 = [v90 responseHandler];
    (v85)[2](v85, 0, v50);
  }

  v86 = *MEMORY[0x277D85DE8];
}

void __67__HMDResidentDevice__residentDeviceModelUpdated_newValues_message___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) residentDeviceManager];
  [v1 run];
}

- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v12 = a4;
  v7 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v12;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (v9)
  {
    [(HMDResidentDevice *)self _residentDeviceModelUpdated:0 newValues:v9 message:v7];
  }

  else
  {
    v10 = [v7 responseHandler];

    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (*(v10 + 16))(v10, v11, 0);

    v7 = v10;
  }
}

- (id)appleMediaAccessoryName
{
  v3 = [(HMDResidentDevice *)self home];
  v4 = [v3 appleMediaAccessories];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__HMDResidentDevice_appleMediaAccessoryName__block_invoke;
  v8[3] = &unk_278688F28;
  v8[4] = self;
  v5 = [v4 na_firstObjectPassingTest:v8];

  v6 = [v5 name];

  return v6;
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

- (unint64_t)productTypeForModelIdentifier:(id)a3
{
  v3 = a3;
  if (productTypeForModelIdentifier__onceToken != -1)
  {
    dispatch_once(&productTypeForModelIdentifier__onceToken, &__block_literal_global_156925);
  }

  v4 = [productTypeForModelIdentifier__modelIdentifierToProductTypeMap objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = [productTypeForModelIdentifier__modelIdentifierToProductTypeMap objectForKeyedSubscript:v3];
    v4 = [v5 unsignedIntValue];
  }

  return v4;
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

- (void)__deviceUpdated:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
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

  v8 = [(HMDResidentDevice *)self device];

  if (v7 == v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Received notification device was updated", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [(HMDResidentDevice *)v10 residentDeviceManager];
    [v13 notifyClientsOfUpdatedResidentDevice:v10];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)isCurrentDevice
{
  v2 = [(HMDResidentDevice *)self device];
  v3 = [v2 isCurrentDevice];

  return v3;
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
  v2 = [(HMDResidentDevice *)self capabilitiesInternal];
  v3 = [v2 supportsHomeActivityState];

  return v3;
}

- (BOOL)supportsNativeMatterPlugin
{
  v2 = [(HMDResidentDevice *)self capabilitiesInternal];
  v3 = [v2 supportsNativeMatterPlugin];

  return v3;
}

- (BOOL)supportsNativeMatter
{
  v2 = [(HMDResidentDevice *)self capabilitiesInternal];
  v3 = [v2 supportsNativeMatter];

  return v3;
}

- (BOOL)supportsResidentSelection
{
  v2 = [(HMDResidentDevice *)self capabilitiesInternal];
  v3 = [v2 supportsResidentSelection];

  return v3;
}

- (BOOL)supportsCustomMediaApplicationDestination
{
  v2 = [(HMDResidentDevice *)self capabilitiesInternal];
  v3 = residentCapabilitiesForDevice(v2);

  return (v3 >> 24) & 1;
}

- (BOOL)supportsResidentFirmwareUpdate
{
  v2 = [(HMDResidentDevice *)self capabilitiesInternal];
  v3 = residentCapabilitiesForDevice(v2);

  return (v3 >> 23) & 1;
}

- (BOOL)supportsFirmwareUpdate
{
  v2 = [(HMDResidentDevice *)self capabilitiesInternal];
  v3 = residentCapabilitiesForDevice(v2);

  return (v3 >> 11) & 1;
}

- (BOOL)supportsShortcutActions
{
  v2 = [(HMDResidentDevice *)self capabilitiesInternal];
  v3 = residentCapabilitiesForDevice(v2);

  return (v3 >> 8) & 1;
}

- (BOOL)supportsMediaActions
{
  v2 = [(HMDResidentDevice *)self capabilitiesInternal];
  v3 = residentCapabilitiesForDevice(v2);

  return (v3 >> 9) & 1;
}

- (BOOL)supportsMediaSystem
{
  v2 = [(HMDResidentDevice *)self capabilitiesInternal];
  v3 = residentCapabilitiesForDevice(v2);

  return (v3 >> 4) & 1;
}

- (unint64_t)productType
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(HMDResidentDevice *)self isCurrentDevice])
  {
    v3 = [(HMDResidentDevice *)self device];
    v4 = [v3 productInfo];
  }

  else
  {
    v3 = +[HMDAppleAccountManager sharedManager];
    v5 = [(HMDResidentDevice *)self device];
    v6 = [v5 idsIdentifier];
    v4 = [v3 idsDeviceForIDSIdentifier:v6];
  }

  v7 = [v4 modelIdentifier];

  if (v7)
  {
    v8 = [(HMDResidentDevice *)self productTypeForModelIdentifier:v7];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
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
  v2 = [(HMDResidentDevice *)self capabilitiesInternal];
  v3 = residentCapabilitiesForDevice(v2);

  return (v3 >> 3) & 1;
}

- (BOOL)isConfirmed
{
  v3 = [(HMDResidentDevice *)self residentDeviceManager];
  if ([v3 isResidentElectionV2Enabled])
  {
    v4 = [v3 primaryResidentUUID];
    if (v4)
    {
      v5 = [(HMDResidentDevice *)self identifier];
      confirmed = [v4 isEqual:v5];
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

    v4 = [(HMDResidentDevice *)self home];
    if ([v4 supportsResidentSelection] && -[HMDResidentDevice isReachableByIDS](self, "isReachableByIDS"))
    {
      v5 = [(HMDResidentDevice *)self supportsResidentSelection];

      if (!v5)
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
  v6 = [(HMDResidentDevice *)self home];
  v7 = [v6 primaryResident];
  v8 = [v7 isEqual:self];

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

- (BOOL)isDeviceEquivalentToDeviceAddress:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(HMDResidentDevice *)self messageAddress];
    v6 = [v5 isEquivalentToDeviceAddress:v4];

    if (v6)
    {
      goto LABEL_4;
    }

    v7 = [(HMDResidentDevice *)self device];
    v8 = [v7 idsIdentifier];
    v9 = [v4 idsIdentifier];
    v10 = [v8 isEqual:v9];

    if (v10)
    {
LABEL_4:
      v11 = 1;
    }

    else
    {
      v12 = [(HMDResidentDevice *)self device];
      v13 = [v12 globalHandles];
      v14 = [v13 firstObject];
      v15 = [v4 idsDestination];
      v16 = [HMDDeviceHandle deviceHandleForDestination:v15];
      v11 = [v14 isEqual:v16];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(HMDResidentDevice *)v4 device];
      v6 = [(HMDResidentDevice *)self device];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)descriptionWithPointer:(BOOL)a3
{
  v3 = a3;
  v5 = shouldLogPrivateInformation();
  v6 = [(HMDResidentDevice *)self device];
  v7 = v6;
  if ((v5 & 1) == 0)
  {
    v8 = [v6 privateDescription];

    v7 = v8;
  }

  v9 = MEMORY[0x277CCACA8];
  v10 = [(HMDResidentDevice *)self shortDescription];
  v19 = v3;
  if (v3)
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
  v16 = [(HMDResidentDevice *)self capabilities];
  v17 = [v9 stringWithFormat:@"<%@%@, Enabled = %@, Confirmed = %@, Reachable = %@, Reachable by IDS = %@, Capabilities = %@, Device = %@>", v10, v11, v12, v13, v14, v15, v16, v7];

  if (v19)
  {
  }

  return v17;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() shortDescription];
  v5 = [(HMDResidentDevice *)self identifier];
  v6 = [v5 UUIDString];
  v7 = [(HMDResidentDevice *)self device];
  v8 = [v7 name];
  v9 = [(HMDResidentDevice *)self device];
  v10 = [v9 version];
  v11 = [v3 stringWithFormat:@"%@ %@ %@ Ver: %@", v4, v6, v8, v10];

  return v11;
}

- (unint64_t)legacyResidentCapabilities
{
  v2 = [(HMDResidentDevice *)self capabilitiesInternal];
  v3 = residentCapabilitiesForDevice(v2);

  return v3;
}

- (void)configureWithHome:(id)a3
{
  obj = a3;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_home, obj);
  v4 = [obj residentDeviceManager];
  objc_storeWeak(&self->_residentDeviceManager, v4);

  os_unfair_lock_unlock(&self->_lock);
  [(HMDDeviceController *)self->_deviceController setDelegate:self];
  v5 = [(HMDResidentDevice *)self device];
  __registerForDeviceNotifications(self, v5);

  device = self->_device;
  self->_device = 0;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = HMDResidentDevice;
  [(HMDResidentDevice *)&v4 dealloc];
}

- (HMDResidentDevice)initWithDeviceController:(id)a3 identifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v13.receiver = self;
    v13.super_class = HMDResidentDevice;
    v9 = [(HMDResidentDevice *)&v13 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_identifier, a4);
      v10->_enabled = 1;
      v10->_reachable = 1;
      v10->_reachableByIDS = 1;
      objc_storeStrong(&v10->_deviceController, a3);
    }

    self = v10;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSString)name
{
  v3 = [(HMDResidentDevice *)self appleMediaAccessoryName];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
LABEL_5:
    v7 = v5;
    goto LABEL_6;
  }

  name = self->_name;
  if (name)
  {
    v5 = name;
    goto LABEL_5;
  }

  v9 = [(HMDResidentDevice *)self device];
  v7 = [v9 name];

LABEL_6:

  return v7;
}

- (HMDResidentDevice)initWithDevice:(id)a3 home:(id)a4 name:(id)a5 rawCapabilities:(id)a6 messageAddress:(id)a7 deviceIRKData:(id)a8
{
  v30 = a5;
  v15 = a6;
  v29 = a7;
  obj = a8;
  v28 = a8;
  v16 = a4;
  v17 = a3;
  v18 = objc_opt_class();
  v19 = [v16 uuid];

  v20 = [v17 identifier];
  v21 = [v18 deriveUUIDFromHomeUUID:v19 deviceUUID:v20];

  v22 = [(HMDResidentDevice *)self initWithDevice:v17 identifier:v21];
  if (v22)
  {
    objc_storeStrong(&v22->_name, a5);
    if (v15)
    {
      objc_storeStrong(&v22->_rawCapabilities, a6);
      v23 = [objc_alloc(MEMORY[0x277CD1D60]) initWithProtoData:{v15, obj, v28, v29, v30}];
      capabilitiesInternal = v22->_capabilitiesInternal;
      v22->_capabilitiesInternal = v23;
    }

    objc_storeStrong(&v22->_messageAddress, a7);
    objc_storeStrong(&v22->_deviceIRKData, obj);
    v25 = v22;
  }

  return v22;
}

- (HMDResidentDevice)initWithDevice:(id)a3 identifier:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = [HMDDeviceController deviceControllerForDevice:v7];
    v10 = [(HMDResidentDevice *)self initWithDeviceController:v9 identifier:v8];

    if (v10)
    {
      objc_storeStrong(&v10->_device, a3);
    }

    self = v10;
    v11 = self;
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
    v11 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

- (HMDResidentDevice)initWithModel:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 deviceUUID];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CCAD78]);
    v7 = [v4 deviceUUID];
    v8 = [v6 initWithUUIDString:v7];

    v5 = [HMDDeviceController placeholderDeviceControllerWithIdentifier:v8];
  }

  v9 = [v4 device];

  if (v9)
  {
    if (!v5)
    {
      v10 = [v4 device];
      v5 = [HMDDeviceController deviceControllerForDevice:v10];
    }

    v11 = [v4 device];
    [v5 updateWithDevice:v11 completionHandler:0];
  }

  if (v5)
  {
    v12 = [v4 uuid];
    v13 = [(HMDResidentDevice *)self initWithDeviceController:v5 identifier:v12];

    if (v13)
    {
      v14 = [v4 enabled];
      v13->_enabled = [v14 BOOLValue];

      v15 = [v4 confirmed];
      v13->_confirmed = [v15 BOOLValue];

      v16 = [v4 residentCapabilities];
      if (v16)
      {
        objc_storeStrong(&v13->_rawCapabilities, v16);
        v17 = [objc_alloc(MEMORY[0x277CD1D60]) initWithProtoData:v16];
        capabilitiesInternal = v13->_capabilitiesInternal;
        v13->_capabilitiesInternal = v17;
      }
    }

    v19 = v13;
    v20 = v19;
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v19 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [v4 deviceUUID];
      v25 = [v4 uuid];
      v26 = [v25 UUIDString];
      v27 = [v4 device];
      v28 = @"YES";
      v31 = 138544130;
      v32 = v23;
      if (!v27)
      {
        v28 = @"NO";
      }

      v33 = 2112;
      v34 = v24;
      v35 = 2112;
      v36 = v26;
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

+ (id)deriveUUIDFromHomeUUID:(id)a3 deviceUUID:(id)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a4 UUIDString];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  v8 = [MEMORY[0x277CCAD78] hm_deriveUUIDFromBaseUUID:v5 withSalts:v7];

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

+ (id)batteryStateAsString:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return @"HMFPowerBatteryStateUnknown";
  }

  else
  {
    return off_27867BE98[a3 - 1];
  }
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end