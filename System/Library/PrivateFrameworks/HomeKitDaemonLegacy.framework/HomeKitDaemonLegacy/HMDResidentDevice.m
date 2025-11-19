@interface HMDResidentDevice
+ (id)batteryStateAsString:(int64_t)a3;
+ (id)deriveUUIDFromHomeUUID:(id)a3 deviceUUID:(id)a4;
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)_updateRawCapabilities:(id)a3;
- (BOOL)isBlocked;
- (BOOL)isConfirmed;
- (BOOL)isCurrentDevice;
- (BOOL)isEqual:(id)a3;
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
- (HMDResidentDevice)initWithCoder:(id)a3;
- (HMDResidentDevice)initWithDevice:(id)a3 identifier:(id)a4;
- (HMDResidentDevice)initWithDeviceController:(id)a3 identifier:(id)a4;
- (HMDResidentDevice)initWithModel:(id)a3;
- (HMDResidentDeviceManager)residentDeviceManager;
- (HMResidentCapabilities)capabilities;
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

- (void)encodeWithCoder:(id)a3
{
  v14 = a3;
  v4 = [(HMDResidentDevice *)self identifier];
  [v14 encodeObject:v4 forKey:@"HM.identifier"];

  v5 = [(HMDResidentDevice *)self home];
  [v14 encodeConditionalObject:v5 forKey:@"home"];

  v6 = [(HMDResidentDevice *)self device];
  [v14 encodeObject:v6 forKey:*MEMORY[0x277CD0CD0]];

  v7 = (![v14 hmd_isForSharedUser] || !-[HMDResidentDevice isBlocked](self, "isBlocked")) && -[HMDResidentDevice isEnabled](self, "isEnabled");
  [v14 encodeBool:v7 forKey:@"HM.enabled"];
  if ([v14 hmd_isForXPCTransport])
  {
    [v14 encodeInteger:-[HMDResidentDevice status](self forKey:{"status"), @"HM.status"}];
    [v14 encodeInteger:-[HMDResidentDevice legacyResidentCapabilities](self forKey:{"legacyResidentCapabilities"), @"HM.capabilities"}];
    v8 = [(HMDResidentDevice *)self supportsResidentSelection];
    [v14 encodeBool:v8 forKey:*MEMORY[0x277CD0CF8]];
    if ([v14 hmd_isForXPCTransportEntitledForSPIAccess])
    {
      v9 = [(HMDResidentDevice *)self device];
      v10 = [v9 idsIdentifier];
      [v14 encodeObject:v10 forKey:@"HM.accountIdentifier"];

      v11 = [(HMDResidentDevice *)self device];
      v12 = [v11 remoteDestinationString];
      [v14 encodeObject:v12 forKey:*MEMORY[0x277CCFC50]];

      v13 = [(HMDResidentDevice *)self deviceIRKData];
      [v14 encodeObject:v13 forKey:*MEMORY[0x277CD0CD8]];
    }
  }

  else
  {
    [v14 encodeBool:-[HMDResidentDevice isConfirmed](self forKey:{"isConfirmed"), @"HM.confirmed"}];
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
  v17 = MEMORY[0x277CCACA8];
  v16 = [(HMDResidentDevice *)self name];
  v19 = [(HMDResidentDevice *)self device];
  v18 = [v19 identifier];
  v15 = [v18 UUIDString];
  [(HMDResidentDevice *)self isEnabled];
  v3 = HMFBooleanToString();
  [(HMDResidentDevice *)self isConfirmed];
  v4 = HMFBooleanToString();
  [(HMDResidentDevice *)self isReachable];
  v14 = HMFBooleanToString();
  v5 = [HMDResidentDevice batteryStateAsString:[(HMDResidentDevice *)self batteryState]];
  v6 = [(HMDResidentDevice *)self deviceIRKData];
  v7 = [(HMDResidentDevice *)self device];
  v8 = [v7 idsIdentifier];
  v9 = [(HMDResidentDevice *)self device];
  v10 = [v9 remoteDestinationString];
  v11 = [v17 stringWithFormat:@"name: %@, uuid: %@, isEnabled: %@, isConfirmed: %@, isReachable: %@, isReachableByIDS: %@, batteryState: %@, deviceIRKData: %@, idsIdentifier: %@, idsDestination: %@", v16, v15, v3, v4, v14, @"N/A", v5, v6, v8, v10];

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
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Updated resident capabilities to %@", buf, 0x16u);
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

  v14 = [(HMDResidentDevice *)self device];
  v15 = [v14 version];
  v16 = +[HMDHomeKitVersion version4];
  v17 = [v15 isAtLeastVersion:v16];

  v18 = isWatch();
  if (v18 && (+[HMDDeviceCapabilities deviceCapabilities](HMDDeviceCapabilities, "deviceCapabilities"), v15 = objc_claimAutoreleasedReturnValue(), ![v15 supportsCloudDataSync]))
  {
    v20 = 1;
  }

  else
  {
    v19 = [(HMDResidentDevice *)self home];
    v20 = [v19 isOwnerUser] ^ 1;

    if (!v18)
    {
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_8:
      v21 = [v14 isCurrentDevice];
      if (a4 > 3)
      {
        v22 = v21;
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
  v23 = [v14 identifier];
  v24 = [v23 UUIDString];
  [(HMDResidentDeviceModel *)v11 setDeviceUUID:v24];

  if (v20 && self->_device)
  {
    [(HMDResidentDeviceModel *)v11 setDevice:?];
    device = self->_device;
    self->_device = 0;
  }

  else
  {
    [(HMDResidentDeviceModel *)v11 setDevice:v14];
  }

LABEL_16:

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
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Notifying clients of resident device confirmed state changing to %{public}@", buf, 0x16u);
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
  v118 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v95 = a5;
  v10 = [v95 transactionResult];
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
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v15 = [(HMDResidentDevice *)self device];
    v16 = [v15 backingStoreObjectsWithChangeType:0 version:4];

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

  v21 = [v9 device];

  if (v21)
  {
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v22 = [v9 device];
    v23 = [v22 backingStoreObjectsWithChangeType:0 version:4];

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

  v28 = [v9 deviceUUID];

  v96 = v10;
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
        v111 = v39;
        v112 = 2112;
        v113 = v40;
        _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@Updating the underlying device with identifier: %@", buf, 0x16u);

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
      [v96 markChanged];
    }

    v10 = v96;
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
      v58 = objc_autoreleasePoolPush();
      v59 = self;
      v60 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        v61 = HMFGetLogIdentifier();
        v62 = [(HMDResidentDevice *)v59 device];
        [v9 device];
        v64 = v63 = v8;
        *buf = 138543874;
        v111 = v61;
        v112 = 2112;
        v113 = v62;
        v114 = 2112;
        v115 = v64;
        _os_log_impl(&dword_2531F8000, v60, OS_LOG_TYPE_INFO, "%{public}@Cloud changed our device, preferring local device -- local: %@, cloud :%@", buf, 0x20u);

        v8 = v63;
        v10 = v96;
      }

      objc_autoreleasePoolPop(v58);
      v13 = 1;
    }

    else
    {
      v65 = [(HMDResidentDevice *)self deviceController];
      v66 = [v9 device];
      [v65 updateWithDevice:v66 completionHandler:0];
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

    if (v51 != v53)
    {
      v54 = [v9 enabled];
      if (![v54 BOOLValue])
      {
LABEL_36:

LABEL_37:
        [v10 markChanged];
        v56 = [v9 enabled];
        -[HMDResidentDevice _handleResidentDeviceUpdateEnabled:](self, "_handleResidentDeviceUpdateEnabled:", [v56 BOOLValue]);

        v108 = @"kEnabledKey";
        v57 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDResidentDevice isEnabled](self, "isEnabled")}];
        v109 = v57;
        v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v109 forKeys:&v108 count:1];

        goto LABEL_48;
      }

      v55 = [(HMDResidentDevice *)self home];
      if ([v55 isOwnerUser])
      {

        goto LABEL_36;
      }

      v67 = [(HMDResidentDevice *)self isBlocked];

      if (!v67)
      {
        goto LABEL_37;
      }

      v68 = objc_autoreleasePoolPush();
      v69 = self;
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

    v50 = 0;
  }

LABEL_48:
  v72 = [v9 confirmed];
  if (v72)
  {
    v73 = v72;
    v74 = [(HMDResidentDevice *)self isConfirmed];
    v75 = [v9 confirmed];
    v76 = [v75 BOOLValue];

    v77 = v74 == v76;
    v10 = v96;
    if (!v77)
    {
      [v96 markChanged];
      v78 = [v9 confirmed];
      -[HMDResidentDevice _handleResidentDeviceUpdateConfirmed:](self, "_handleResidentDeviceUpdateConfirmed:", [v78 BOOLValue]);
    }
  }

  if ([v10 changed])
  {
    v79 = [(HMDResidentDevice *)self residentDeviceManager];
    [v79 notifyClientsOfUpdatedResidentDevice:self];
  }

  v80 = [(HMDResidentDevice *)self home];
  if (v13)
  {
    v94 = v8;
    [v10 markChanged];
    v81 = objc_autoreleasePoolPush();
    v82 = self;
    v83 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
    {
      v84 = HMFGetLogIdentifier();
      v85 = [(HMDResidentDevice *)v82 device];
      *buf = 138543618;
      v111 = v84;
      v112 = 2112;
      v113 = v85;
      _os_log_impl(&dword_2531F8000, v83, OS_LOG_TYPE_INFO, "%{public}@Pushing back with current device: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v81);
    v86 = [(HMDResidentDevice *)v82 modelObjectWithChangeType:2 version:4];
    v87 = [v80 backingStore];
    v88 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v89 = [v87 transaction:@"residentUpdated" options:v88];

    [v89 add:v86];
    v98[0] = MEMORY[0x277D85DD0];
    v98[1] = 3221225472;
    v98[2] = __67__HMDResidentDevice__residentDeviceModelUpdated_newValues_message___block_invoke;
    v98[3] = &unk_2797359D8;
    v99 = v80;
    [v89 save:v98];

    v8 = v94;
    v10 = v96;
  }

  v90 = [v80 backingStore];
  v97[0] = MEMORY[0x277D85DD0];
  v97[1] = 3221225472;
  v97[2] = __67__HMDResidentDevice__residentDeviceModelUpdated_newValues_message___block_invoke_2;
  v97[3] = &unk_2797359D8;
  v97[4] = self;
  [v90 submitBlock:v97];

  v91 = [v95 responseHandler];

  if (v91)
  {
    v92 = [v95 responseHandler];
    (v92)[2](v92, 0, v50);
  }

  v93 = *MEMORY[0x277D85DE8];
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
  v8[3] = &unk_279734F10;
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
    dispatch_once(&productTypeForModelIdentifier__onceToken, &__block_literal_global_82_104750);
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
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Received notification device was updated", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [(HMDResidentDevice *)v10 residentDeviceManager];
    [v13 notifyClientsOfUpdatedResidentDevice:v10];
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
  v2 = [(HMDResidentDevice *)self deviceController];
  v3 = [v2 device];

  return v3;
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
  v3 = [(HMDResidentDevice *)self device];
  v4 = [v3 capabilities];
  v5 = [(HMDResidentDevice *)self device];
  v6 = residentCapabilitiesForDevice(v4, v5);

  return (v6 >> 24) & 1;
}

- (BOOL)supportsResidentFirmwareUpdate
{
  v3 = [(HMDResidentDevice *)self device];
  v4 = [v3 capabilities];
  v5 = [(HMDResidentDevice *)self device];
  v6 = residentCapabilitiesForDevice(v4, v5);

  return (v6 >> 23) & 1;
}

- (BOOL)supportsFirmwareUpdate
{
  v3 = [(HMDResidentDevice *)self device];
  v4 = [v3 capabilities];
  v5 = [(HMDResidentDevice *)self device];
  v6 = residentCapabilitiesForDevice(v4, v5);

  return (v6 >> 11) & 1;
}

- (BOOL)supportsShortcutActions
{
  v3 = [(HMDResidentDevice *)self device];
  v4 = [v3 capabilities];
  v5 = [(HMDResidentDevice *)self device];
  v6 = residentCapabilitiesForDevice(v4, v5);

  return (v6 >> 8) & 1;
}

- (BOOL)supportsMediaActions
{
  v3 = [(HMDResidentDevice *)self device];
  v4 = [v3 capabilities];
  v5 = [(HMDResidentDevice *)self device];
  v6 = residentCapabilitiesForDevice(v4, v5);

  return (v6 >> 9) & 1;
}

- (BOOL)supportsMediaSystem
{
  v3 = [(HMDResidentDevice *)self device];
  v4 = [v3 capabilities];
  v5 = [(HMDResidentDevice *)self device];
  v6 = residentCapabilitiesForDevice(v4, v5);

  return (v6 >> 4) & 1;
}

- (BOOL)supportsSharedEventTriggerActivation
{
  v3 = [(HMDResidentDevice *)self device];
  v4 = [v3 capabilities];
  v5 = [(HMDResidentDevice *)self device];
  v6 = residentCapabilitiesForDevice(v4, v5);

  return (v6 >> 3) & 1;
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
    v3 = [(HMDResidentDevice *)self isReachable];
  }

  else
  {
    v3 = 0;
  }

  v4 = [(HMDResidentDevice *)self home];
  v5 = [v4 primaryResident];
  v6 = [v5 isEqual:self];

  if (v6)
  {
    v7 = v3 | 2;
  }

  else
  {
    v7 = v3;
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

- (unint64_t)hash
{
  v2 = [(HMDResidentDevice *)self device];
  v3 = [v2 hash];

  return v3;
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
  if (v3)
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
  v15 = [v9 stringWithFormat:@"<%@%@, Enabled = %@, Confirmed = %@, Reachable = %@, Device = %@>", v10, v11, v12, v13, v14, v7];

  if (v3)
  {
  }

  return v15;
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

- (HMResidentCapabilities)capabilities
{
  v2 = [(HMDResidentDevice *)self device];
  v3 = [v2 capabilities];

  return v3;
}

- (unint64_t)legacyResidentCapabilities
{
  v3 = [(HMDResidentDevice *)self device];
  v4 = [v3 capabilities];
  v5 = [(HMDResidentDevice *)self device];
  v6 = residentCapabilitiesForDevice(v4, v5);

  return v6;
}

- (BOOL)isBlocked
{
  v3 = [(HMDResidentDevice *)self device];

  if (!v3)
  {
    return 0;
  }

  if (isBlocked_onceToken != -1)
  {
    dispatch_once(&isBlocked_onceToken, &__block_literal_global_104792);
  }

  v4 = [(HMDResidentDevice *)self device];
  v5 = [v4 version];
  v6 = [v5 isAtLeastVersion:isBlocked_unblockedVersion];

  return v6 ^ 1;
}

uint64_t __30__HMDResidentDevice_isBlocked__block_invoke()
{
  v0 = +[HMDHomeKitVersion version4_1];
  v1 = isBlocked_unblockedVersion;
  isBlocked_unblockedVersion = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)configureWithHome:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_home, v4);
  v5 = [v4 residentDeviceManager];
  objc_storeWeak(&self->_residentDeviceManager, v5);

  os_unfair_lock_unlock(&self->_lock);
  [(HMDDeviceController *)self->_deviceController setDelegate:self];
  v6 = [(HMDResidentDevice *)self device];
  __registerForDeviceNotifications(self, v6);

  device = self->_device;
  self->_device = 0;

  if (-[HMDResidentDevice isBlocked](self, "isBlocked") && ([v4 isOwnerUser] & 1) == 0)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Disabling as we are blocked", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    [(HMDResidentDevice *)v9 setEnabled:0];
  }

  v12 = *MEMORY[0x277D85DE8];
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
  v2 = [(HMDResidentDevice *)self device];
  v3 = [v2 name];

  return v3;
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
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@[%@] Device is required.", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v11 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

- (HMDResidentDevice)initWithModel:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
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
    }

    v16 = v13;
    v17 = v16;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v16 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [v4 deviceUUID];
      v22 = [v4 uuid];
      v23 = [v22 UUIDString];
      v24 = [v4 device];
      v25 = @"YES";
      v28 = 138544130;
      v29 = v20;
      if (!v24)
      {
        v25 = @"NO";
      }

      v30 = 2112;
      v31 = v21;
      v32 = 2112;
      v33 = v23;
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

+ (id)batteryStateAsString:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return @"HMFPowerBatteryStateUnknown";
  }

  else
  {
    return off_27972ADC8[a3 - 1];
  }
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end