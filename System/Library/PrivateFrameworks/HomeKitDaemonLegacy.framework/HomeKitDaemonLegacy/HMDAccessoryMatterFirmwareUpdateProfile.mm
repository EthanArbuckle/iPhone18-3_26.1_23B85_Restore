@interface HMDAccessoryMatterFirmwareUpdateProfile
+ (id)logCategory;
- (HMDAccessoryMatterFirmwareUpdateProfile)initWithAccessory:(id)accessory workQueue:(id)queue;
- (HMDHAPAccessory)accessory;
- (HMDMatterSoftwareUpdateProviderDelegate)matterSoftwareUpdateProviderDelegate;
- (NSString)description;
- (id)characteristics;
- (id)logIdentifier;
- (id)privateDescription;
- (void)__handleMatterFirmwareRevisionNumberUpdate:(id)update;
- (void)__handleMatterFirmwareUpdateStatusUpdate:(id)update;
- (void)_enableCharacteristicsNotifications:(BOOL)notifications;
- (void)_handleCharacteristicChanges:(id)changes;
- (void)_processIdleStateWithCharacteristic:(id)characteristic;
- (void)_registerForNotifications;
- (void)dealloc;
- (void)handleAccessoryIsReachable:(id)reachable;
- (void)handleCharacteristicValuesChanged:(id)changed;
- (void)handleDisplayableFirmwareVersionUpdatedNotification:(id)notification;
- (void)handleVIDPIDUpdatedNotification:(id)notification;
- (void)readAndProcessCharacteristics:(id)characteristics withCompletion:(id)completion;
- (void)readMatterFirmwareUpdateCharacteristics;
- (void)setMatterFirmwareRevisionNumber:(id)number;
@end

@implementation HMDAccessoryMatterFirmwareUpdateProfile

- (HMDMatterSoftwareUpdateProviderDelegate)matterSoftwareUpdateProviderDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_matterSoftwareUpdateProviderDelegate);

  return WeakRetained;
}

- (HMDHAPAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (void)__handleMatterFirmwareUpdateStatusUpdate:(id)update
{
  v92 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v83 = v8;
    v84 = 2112;
    v85 = updateCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling update for %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  value = [updateCopy value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = value;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v81 = 0;
  v12 = [MEMORY[0x277CFEB98] parsedFromData:v11 error:&v81];
  v13 = v81;
  if (!v13)
  {
    oTAProviderState = [v12 OTAProviderState];

    if (!oTAProviderState)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = selfCopy;
      v16 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v83 = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Missing OTA Provider state in Matter Firmware Update Status TLV", buf, 0xCu);
      goto LABEL_9;
    }

    oTAProviderState2 = [v12 OTAProviderState];
    value2 = [oTAProviderState2 value];

    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v26 = HAPOTAProviderStateAsString();
      *buf = 138543618;
      v83 = v25;
      v84 = 2112;
      v85 = v26;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Matter firmware update state : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    accessory = [(HMDAccessoryMatterFirmwareUpdateProfile *)v23 accessory];
    if (!accessory)
    {
      v37 = objc_autoreleasePoolPush();
      v38 = v23;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = HMFGetLogIdentifier();
        *buf = 138543362;
        v83 = v40;
        _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_ERROR, "%{public}@HAP accessory is nil. Cannot handle matter firmware update status characteristic value change", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v37);
      goto LABEL_60;
    }

    matterSoftwareUpdateProviderDelegate = [(HMDAccessoryMatterFirmwareUpdateProfile *)v23 matterSoftwareUpdateProviderDelegate];
    softwareUpdate = [accessory softwareUpdate];
    if (!softwareUpdate)
    {
      v41 = objc_autoreleasePoolPush();
      v42 = v23;
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v44 = v75 = matterSoftwareUpdateProviderDelegate;
        *buf = 138543362;
        v83 = v44;
        _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_INFO, "%{public}@Software update object is nil. Cannot update HMDSoftwareUpdate", buf, 0xCu);

        matterSoftwareUpdateProviderDelegate = v75;
      }

      objc_autoreleasePoolPop(v41);
      softwareUpdate = 0;
      if (value2 != 6 || !matterSoftwareUpdateProviderDelegate)
      {
        goto LABEL_59;
      }

LABEL_47:
      [matterSoftwareUpdateProviderDelegate resetOTAProviderStateForHMDHAPAccessory:accessory];
      goto LABEL_59;
    }

    if ([(HMDAccessoryMatterFirmwareUpdateProfile *)v23 wasPreviousStateInstalling]&& value2 == 6)
    {
      home = [accessory home];
      if (home)
      {
        v74 = matterSoftwareUpdateProviderDelegate;
        v78 = softwareUpdate;
        supportsCHIP = [accessory supportsCHIP];
        context = objc_autoreleasePoolPush();
        v32 = v23;
        v33 = HMFGetOSLogHandle();
        v34 = os_log_type_enabled(v33, OS_LOG_TYPE_INFO);
        if (supportsCHIP)
        {
          if (v34)
          {
            v71 = HMFGetLogIdentifier();
            name = [accessory name];
            displayableFirmwareVersion = [accessory displayableFirmwareVersion];
            *buf = 138543874;
            v83 = v71;
            v84 = 2112;
            v85 = name;
            v86 = 2112;
            v87 = displayableFirmwareVersion;
            v36 = displayableFirmwareVersion;
            _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@Sending firmware update UI notification for accessory = %@ with displayableFirmwareVersion = %@ using Iphone as a controller", buf, 0x20u);
          }

          objc_autoreleasePoolPop(context);
          [home sendFirmwareUpdateUINotification:accessory];
        }

        else
        {
          if (v34)
          {
            v47 = HMFGetLogIdentifier();
            *buf = 138543618;
            v83 = v47;
            v84 = 2112;
            v85 = accessory;
            _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@Not a matter accessory, no UI notification %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(context);
        }

        matterSoftwareUpdateProviderDelegate = v74;
        softwareUpdate = v78;
      }

      [(HMDAccessoryMatterFirmwareUpdateProfile *)v23 setWasPreviousStateInstalling:0];
LABEL_46:
      [softwareUpdate updateLocalState:4];
      if (!matterSoftwareUpdateProviderDelegate)
      {
        v48 = objc_autoreleasePoolPush();
        v49 = v23;
        v50 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          v51 = HMFGetLogIdentifier();
          *buf = 138543362;
          v83 = v51;
          _os_log_impl(&dword_2531F8000, v50, OS_LOG_TYPE_INFO, "%{public}@Couldn't get a strong ref to the software update provider delegate", buf, 0xCu);

          matterSoftwareUpdateProviderDelegate = 0;
        }

        objc_autoreleasePoolPop(v48);
        goto LABEL_59;
      }

      goto LABEL_47;
    }

    [(HMDAccessoryMatterFirmwareUpdateProfile *)v23 setWasPreviousStateInstalling:0];
    if (value2 <= 2)
    {
      if (!value2)
      {
        home2 = [accessory home];
        v53 = home2;
        if (home2)
        {
          if ([home2 isAutomaticThirdPartyAccessorySoftwareUpdateEnabled])
          {
            v54 = softwareUpdate;
            v55 = 2;
          }

          else
          {
            v54 = softwareUpdate;
            v55 = 5;
          }

          [v54 updateLocalState:v55];
        }

        else
        {
          v80 = softwareUpdate;
          v62 = objc_autoreleasePoolPush();
          v63 = v23;
          v64 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v65 = v77 = matterSoftwareUpdateProviderDelegate;
            *buf = 138543362;
            v83 = v65;
            _os_log_impl(&dword_2531F8000, v64, OS_LOG_TYPE_ERROR, "%{public}@hapAccessory home field is not available", buf, 0xCu);

            matterSoftwareUpdateProviderDelegate = v77;
          }

          objc_autoreleasePoolPop(v62);
          softwareUpdate = v80;
        }

        goto LABEL_59;
      }

      if (value2 == 1)
      {
        matterFirmwareRevisionNumber = [(HMDAccessoryMatterFirmwareUpdateProfile *)v23 matterFirmwareRevisionNumber];
        if (!matterFirmwareRevisionNumber)
        {
          goto LABEL_64;
        }

        v58 = matterFirmwareRevisionNumber;
        [softwareUpdate version];
        v59 = v76 = matterSoftwareUpdateProviderDelegate;
        contexta = [v59 majorVersion];
        [(HMDAccessoryMatterFirmwareUpdateProfile *)v23 matterFirmwareRevisionNumber];
        v60 = v79 = softwareUpdate;
        unsignedIntegerValue = [v60 unsignedIntegerValue];

        softwareUpdate = v79;
        matterSoftwareUpdateProviderDelegate = v76;

        if (contexta > unsignedIntegerValue)
        {
LABEL_64:
          [(HMDAccessoryMatterFirmwareUpdateProfile *)v23 _processIdleStateWithCharacteristic:updateCopy];
          goto LABEL_59;
        }

        v66 = objc_autoreleasePoolPush();
        v67 = v23;
        v68 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
        {
          v69 = HMFGetLogIdentifier();
          *buf = 138543362;
          v83 = v69;
          _os_log_impl(&dword_2531F8000, v68, OS_LOG_TYPE_INFO, "%{public}@Prevent moving to REQUESTED state because the latest firmware is already installed on the accessory", buf, 0xCu);

          matterSoftwareUpdateProviderDelegate = v76;
        }

        objc_autoreleasePoolPop(v66);
        softwareUpdate = v79;
        goto LABEL_46;
      }

      if (value2 != 2)
      {
LABEL_59:

LABEL_60:
        goto LABEL_61;
      }

      v45 = softwareUpdate;
      v46 = 2;
    }

    else if (value2 > 4)
    {
      if (value2 == 6)
      {
        goto LABEL_46;
      }

      if (value2 != 5)
      {
        goto LABEL_59;
      }

      [(HMDAccessoryMatterFirmwareUpdateProfile *)v23 setWasPreviousStateInstalling:1];
      v45 = softwareUpdate;
      v46 = 3;
    }

    else
    {
      v45 = softwareUpdate;
      if (value2 == 3)
      {
        v46 = 5;
      }

      else
      {
        v46 = 1;
      }
    }

    [v45 updateLocalState:v46];
    goto LABEL_59;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = selfCopy;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = HMFGetLogIdentifier();
    value3 = [updateCopy value];
    *buf = 138544386;
    v83 = v17;
    v84 = 2112;
    v85 = updateCopy;
    v86 = 2112;
    v87 = value3;
    v88 = 2112;
    v89 = v11;
    v90 = 2112;
    v91 = v13;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse matter firmware update status (%@) - characteristic %@ value %@ error %@", buf, 0x34u);

LABEL_9:
  }

LABEL_10:

  objc_autoreleasePoolPop(v14);
LABEL_61:

  v56 = *MEMORY[0x277D85DE8];
}

- (void)__handleMatterFirmwareRevisionNumberUpdate:(id)update
{
  v17 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = updateCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling update for %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  value = [updateCopy value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = value;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  [(HMDAccessoryMatterFirmwareUpdateProfile *)selfCopy setMatterFirmwareRevisionNumber:v11];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_processIdleStateWithCharacteristic:(id)characteristic
{
  v80 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  previousValue = [characteristicCopy previousValue];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = previousValue;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v69 = 0;
    v8 = [MEMORY[0x277CFEB98] parsedFromData:v7 error:&v69];
    v9 = v69;
    if (v9)
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v12 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
LABEL_9:

        objc_autoreleasePoolPop(v10);
LABEL_10:

        goto LABEL_14;
      }

      v13 = HMFGetLogIdentifier();
      previousValue2 = [characteristicCopy previousValue];
      *buf = 138544386;
      v71 = v13;
      v72 = 2112;
      v73 = characteristicCopy;
      v74 = 2112;
      v75 = previousValue2;
      v76 = 2112;
      v77 = v7;
      v78 = 2112;
      v79 = v9;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse matter firmware update status previous value (%@) - characteristic %@ value %@ error %@", buf, 0x34u);

LABEL_8:
      goto LABEL_9;
    }

    oTAProviderState = [v8 OTAProviderState];

    if (!oTAProviderState)
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v12 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v71 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Missing OTA Provider state previous value in Matter Firmware Update Status TLV", buf, 0xCu);
      goto LABEL_8;
    }

    oTAProviderState2 = [v8 OTAProviderState];
    value = [oTAProviderState2 value];

    v23 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      v27 = HAPOTAProviderStateAsString();
      *buf = 138543618;
      v71 = v26;
      v72 = 2112;
      v73 = v27;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Matter firmware update state previous value : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    if (value == 1 || value == 6)
    {
      goto LABEL_10;
    }

    accessory = [(HMDAccessoryMatterFirmwareUpdateProfile *)selfCopy3 accessory];
    v29 = accessory;
    if (!accessory)
    {
      v42 = objc_autoreleasePoolPush();
      v43 = selfCopy3;
      v44 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = HMFGetLogIdentifier();
        *buf = 138543362;
        v71 = v45;
        _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_ERROR, "%{public}@HAP accessory is nil. Cannot process initial state from accessory", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v42);
      goto LABEL_46;
    }

    home = [accessory home];
    homeManager = [home homeManager];
    accessoryFirmwareUpdateManager = [homeManager accessoryFirmwareUpdateManager];

    if ([home isCurrentDevicePrimaryResident] && objc_msgSend(home, "isAutomaticThirdPartyAccessorySoftwareUpdateEnabled"))
    {
      v33 = [accessoryFirmwareUpdateManager sessionForAccessory:v29];
      v67 = accessoryFirmwareUpdateManager;
      if (!v33)
      {
        v34 = objc_autoreleasePoolPush();
        v35 = selfCopy3;
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v37 = contexta = v34;
          *buf = 138543362;
          v71 = v37;
          _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@No active firmware update session, attempting to create one", buf, 0xCu);

          v34 = contexta;
        }

        objc_autoreleasePoolPop(v34);
        accessoryFirmwareUpdateManager = v67;
        v33 = [v67 registerAndCreateSessionForAccessory:v29 updateUARPParameters:1];
        if (!v33)
        {
          v59 = objc_autoreleasePoolPush();
          v60 = v35;
          v61 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            v62 = HMFGetLogIdentifier();
            *buf = 138543362;
            v71 = v62;
            _os_log_impl(&dword_2531F8000, v61, OS_LOG_TYPE_ERROR, "%{public}@Failed to register and create a firmware update session", buf, 0xCu);

            accessoryFirmwareUpdateManager = v67;
          }

          objc_autoreleasePoolPop(v59);
          goto LABEL_45;
        }
      }

      v38 = v33;
      if ([v33 isMatterFirmwareUpdateRetryAllowed])
      {
        matterSoftwareUpdateProviderDelegate = [(HMDAccessoryMatterFirmwareUpdateProfile *)selfCopy3 matterSoftwareUpdateProviderDelegate];
        if (!matterSoftwareUpdateProviderDelegate)
        {
          v55 = objc_autoreleasePoolPush();
          v56 = selfCopy3;
          v57 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v58 = contextc = v55;
            *buf = 138543362;
            v71 = v58;
            _os_log_impl(&dword_2531F8000, v57, OS_LOG_TYPE_ERROR, "%{public}@Couldn't get a strong ref to the software update provider delegate", buf, 0xCu);

            v55 = contextc;
          }

          objc_autoreleasePoolPop(v55);
          accessoryFirmwareUpdateManager = v67;
          goto LABEL_45;
        }

        v40 = matterSoftwareUpdateProviderDelegate;
        [v38 incrementMatterFirmwareUpdateRetryCount];
        [v40 notifyUpdateRequestedForHMDHAPAccessory:v29 isUserTriggered:0 isRetry:1];
      }

      else
      {
        v51 = objc_autoreleasePoolPush();
        v52 = selfCopy3;
        v53 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v54 = contextb = v51;
          *buf = 138543362;
          v71 = v54;
          _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_INFO, "%{public}@Maximum matter firmware update retries reached", buf, 0xCu);

          v51 = contextb;
        }

        objc_autoreleasePoolPop(v51);
        accessoryFirmwareUpdateManager = v67;
      }

LABEL_44:

LABEL_45:
LABEL_46:

      goto LABEL_10;
    }

    softwareUpdate = [v29 softwareUpdate];
    v38 = softwareUpdate;
    if (softwareUpdate)
    {
      if ([softwareUpdate state])
      {
        [v38 updateLocalState:0];
        goto LABEL_44;
      }

      v68 = accessoryFirmwareUpdateManager;
      context = objc_autoreleasePoolPush();
      v50 = selfCopy3;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v48 = HMFGetLogIdentifier();
        *buf = 138543362;
        v71 = v48;
        v49 = "%{public}@Software update state is available, no action needed";
        goto LABEL_42;
      }
    }

    else
    {
      v68 = accessoryFirmwareUpdateManager;
      context = objc_autoreleasePoolPush();
      v46 = selfCopy3;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v48 = HMFGetLogIdentifier();
        *buf = 138543362;
        v71 = v48;
        v49 = "%{public}@Software update object is nil. Cannot process idle state from accessory";
LABEL_42:
        _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_INFO, v49, buf, 0xCu);
      }
    }

    accessoryFirmwareUpdateManager = v68;

    objc_autoreleasePoolPop(context);
    goto LABEL_44;
  }

  v15 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543362;
    v71 = v18;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Not processing idle state as previous value is nil", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v15);
LABEL_14:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_handleCharacteristicChanges:(id)changes
{
  v20 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [changesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(changesCopy);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        type = [v9 type];
        v11 = [type isEqualToString:@"0000026D-0000-1000-8000-0026BB765291"];

        if (v11)
        {
          [(HMDAccessoryMatterFirmwareUpdateProfile *)self __handleMatterFirmwareRevisionNumberUpdate:v9];
        }

        else
        {
          type2 = [v9 type];
          v13 = [type2 isEqualToString:@"0000026E-0000-1000-8000-0026BB765291"];

          if (v13)
          {
            [(HMDAccessoryMatterFirmwareUpdateProfile *)self __handleMatterFirmwareUpdateStatusUpdate:v9];
          }
        }
      }

      v6 = [changesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleCharacteristicValuesChanged:(id)changed
{
  changedCopy = changed;
  workQueue = [(HMDAccessoryMatterFirmwareUpdateProfile *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__HMDAccessoryMatterFirmwareUpdateProfile_handleCharacteristicValuesChanged___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(workQueue, v7);
}

void __77__HMDAccessoryMatterFirmwareUpdateProfile_handleCharacteristicValuesChanged___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 hmf_arrayForKey:@"kModifiedCharacteristicsKey"];

  if ([v3 count])
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v15 = v3;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        v9 = 0;
        do
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * v9);
          v11 = [*(a1 + 40) accessory];
          v12 = [v10 accessory];
          v13 = HMFEqualObjects();

          if (v13)
          {
            [v4 addObject:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    [*(a1 + 40) _handleCharacteristicChanges:v4];
    v3 = v15;
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)characteristics
{
  v17 = *MEMORY[0x277D85DE8];
  accessory = [(HMDAccessoryMatterFirmwareUpdateProfile *)self accessory];
  if (accessory)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = [MEMORY[0x277CBEB98] setWithObjects:{@"0000026D-0000-1000-8000-0026BB765291", 0}];
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{@"0000026E-0000-1000-8000-0026BB765291", 0}];
    v7 = [accessory findCharacteristicsByTypes:v6 forServiceType:@"00000236-0000-1000-8000-0026BB765291"];
    [v4 addObjectsFromArray:v7];

    v8 = [accessory findCharacteristicsByTypes:v5 forServiceType:@"0000003E-0000-1000-8000-0026BB765291"];
    [v4 addObjectsFromArray:v8];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@HAP accessory is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v4 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)readMatterFirmwareUpdateCharacteristics
{
  characteristics = [(HMDAccessoryMatterFirmwareUpdateProfile *)self characteristics];
  [(HMDAccessoryMatterFirmwareUpdateProfile *)self readAndProcessCharacteristics:characteristics withCompletion:&__block_literal_global_44_138198];
}

- (void)readAndProcessCharacteristics:(id)characteristics withCompletion:(id)completion
{
  v40 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  completionCopy = completion;
  accessory = [(HMDAccessoryMatterFirmwareUpdateProfile *)self accessory];
  v9 = accessory;
  if (accessory && [accessory supportsCHIP])
  {
    v10 = [characteristicsCopy count] == 0;
    v11 = objc_autoreleasePoolPush();
    val = self;
    v12 = HMFGetOSLogHandle();
    v13 = v12;
    if (v10)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543362;
        v37 = v24;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEBUG, "%{public}@No characteristics to read and process", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      completionCopy[2](completionCopy);
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543618;
        v37 = v14;
        v38 = 2112;
        v39 = characteristicsCopy;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Reading characteristics: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(characteristicsCopy, "count")}];
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v16 = characteristicsCopy;
      v17 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v17)
      {
        v18 = *v32;
        do
        {
          v19 = 0;
          do
          {
            if (*v32 != v18)
            {
              objc_enumerationMutation(v16);
            }

            v20 = [HMDCharacteristicRequest requestWithCharacteristic:*(*(&v31 + 1) + 8 * v19), val];
            [v15 addObject:v20];

            ++v19;
          }

          while (v17 != v19);
          v17 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v17);
      }

      objc_initWeak(buf, val);
      home = [v9 home];
      v22 = [v15 copy];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __88__HMDAccessoryMatterFirmwareUpdateProfile_readAndProcessCharacteristics_withCompletion___block_invoke;
      v27[3] = &unk_279731AF8;
      objc_copyWeak(&v30, buf);
      v29 = completionCopy;
      v23 = v15;
      v28 = v23;
      [home readCharacteristicValues:v22 source:1000 qualityOfService:-1 withCompletionHandler:v27];

      objc_destroyWeak(&v30);
      objc_destroyWeak(buf);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __88__HMDAccessoryMatterFirmwareUpdateProfile_readAndProcessCharacteristics_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v34 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v35 = WeakRetained;
    v8 = v5;
    if (v5)
    {
      *v50 = 0;
      *&v50[8] = v50;
      *&v50[16] = 0x3032000000;
      v51 = __Block_byref_object_copy__138204;
      v52 = __Block_byref_object_dispose__138205;
      v33 = a1;
      v53 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      obj = *(a1 + 32);
      v9 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
      if (v9)
      {
        v10 = *v42;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v42 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v41 + 1) + 8 * i);
            v13 = [v12 characteristic];
            v40 = 0;
            v14 = [v8 hmd_valueOfCharacteristic:v13 error:&v40];
            v15 = v40;

            if (v14)
            {
              v16 = *(*&v50[8] + 40);
              v17 = [v12 characteristic];
              [v16 addObject:v17];
            }

            else
            {
              v18 = objc_autoreleasePoolPush();
              v19 = v35;
              v20 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
              {
                v21 = HMFGetLogIdentifier();
                v22 = [v12 characteristic];
                *buf = 138543618;
                v46 = v21;
                v47 = 2112;
                v48 = v22;
                _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Read failed for %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v18);
            }
          }

          v9 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
        }

        while (v9);
      }

      v23 = [v35 workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __88__HMDAccessoryMatterFirmwareUpdateProfile_readAndProcessCharacteristics_withCompletion___block_invoke_41;
      block[3] = &unk_279731DC8;
      block[4] = v35;
      v39 = v50;
      v38 = *(v33 + 40);
      dispatch_async(v23, block);

      _Block_object_dispose(v50, 8);
    }

    else
    {
      v26 = a1;
      v27 = objc_autoreleasePoolPush();
      v28 = v7;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        v31 = *(v26 + 32);
        *v50 = 138543874;
        *&v50[4] = v30;
        *&v50[12] = 2112;
        *&v50[14] = v31;
        *&v50[22] = 2112;
        v51 = v34;
        _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Read of characteristics %@ failed with error %@", v50, 0x20u);
      }

      objc_autoreleasePoolPop(v27);
      (*(*(v26 + 40) + 16))();
    }

    v7 = v35;
  }

  else
  {
    v8 = v5;
    v24 = _Block_copy(*(a1 + 40));
    v25 = v24;
    if (v24)
    {
      (*(v24 + 2))(v24);
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

uint64_t __88__HMDAccessoryMatterFirmwareUpdateProfile_readAndProcessCharacteristics_withCompletion___block_invoke_41(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(*(*(a1 + 48) + 8) + 40);
    v11 = 138543618;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Read succeeded for %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *(a1 + 32);
  v8 = [*(*(*(a1 + 48) + 8) + 40) copy];
  [v7 _handleCharacteristicChanges:v8];

  result = (*(*(a1 + 40) + 16))();
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleDisplayableFirmwareVersionUpdatedNotification:(id)notification
{
  workQueue = [(HMDAccessoryMatterFirmwareUpdateProfile *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__HMDAccessoryMatterFirmwareUpdateProfile_handleDisplayableFirmwareVersionUpdatedNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __95__HMDAccessoryMatterFirmwareUpdateProfile_handleDisplayableFirmwareVersionUpdatedNotification___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Matter firmware version string updated", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) __handleAccessoryIsReachable];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleVIDPIDUpdatedNotification:(id)notification
{
  workQueue = [(HMDAccessoryMatterFirmwareUpdateProfile *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__HMDAccessoryMatterFirmwareUpdateProfile_handleVIDPIDUpdatedNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __75__HMDAccessoryMatterFirmwareUpdateProfile_handleVIDPIDUpdatedNotification___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@VID/PID updated", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) __handleAccessoryIsReachable];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleAccessoryIsReachable:(id)reachable
{
  workQueue = [(HMDAccessoryMatterFirmwareUpdateProfile *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HMDAccessoryMatterFirmwareUpdateProfile_handleAccessoryIsReachable___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __70__HMDAccessoryMatterFirmwareUpdateProfile_handleAccessoryIsReachable___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Accessory is now reachable", &v17, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) accessory];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 home];
    v9 = [v8 homeManager];
    v10 = [v9 accessoryFirmwareUpdateManager];
    v11 = [v10 registerAndCreateSessionForAccessory:v7 updateUARPParameters:1];

    [*(a1 + 32) __handleAccessoryIsReachable];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@HAP accessory is nil", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_enableCharacteristicsNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  accessory = [(HMDAccessoryMatterFirmwareUpdateProfile *)self accessory];
  characteristics = [(HMDAccessoryMatterFirmwareUpdateProfile *)self characteristics];
  [accessory setNotificationsEnabled:1 forCharacteristics:characteristics clientIdentifier:@"com.apple.HomeKitDaemon.accessoryMatterFirmwareUpdate"];

  if (notificationsCopy)
  {
    characteristics2 = [(HMDAccessoryMatterFirmwareUpdateProfile *)self characteristics];
    [(HMDAccessoryMatterFirmwareUpdateProfile *)self readAndProcessCharacteristics:characteristics2 withCompletion:&__block_literal_global_38_138214];
  }
}

- (void)_registerForNotifications
{
  v19 = *MEMORY[0x277D85DE8];
  accessory = [(HMDAccessoryMatterFirmwareUpdateProfile *)self accessory];
  if (accessory)
  {
    notificationCenter = [(HMDAccessoryMatterFirmwareUpdateProfile *)self notificationCenter];
    [notificationCenter addObserver:self selector:sel_handleCharacteristicValuesChanged_ name:@"HMDAccessoryCharacteristicsChangedNotification" object:accessory];

    notificationCenter2 = [(HMDAccessoryMatterFirmwareUpdateProfile *)self notificationCenter];
    [notificationCenter2 addObserver:self selector:sel_handleAccessoryIsReachable_ name:@"HMDAccessoryIsReachableNotification" object:accessory];

    notificationCenter3 = [(HMDAccessoryMatterFirmwareUpdateProfile *)self notificationCenter];
    [notificationCenter3 addObserver:self selector:sel_handleVIDPIDUpdatedNotification_ name:@"HMDAccessoryVendorIDProductIDUpdatedNotification" object:accessory];

    notificationCenter4 = [(HMDAccessoryMatterFirmwareUpdateProfile *)self notificationCenter];
    [notificationCenter4 addObserver:self selector:sel_handleDisplayableFirmwareVersionUpdatedNotification_ name:@"HMDAccessoryFirmwareDisplayableVersionUpdatedNotification" object:accessory];

    [(HMDAccessoryMatterFirmwareUpdateProfile *)self _enableCharacteristicsNotifications:1];
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v11;
      v12 = "%{public}@Registered for Matter firmware update notifications";
      v13 = v10;
      v14 = OS_LOG_TYPE_INFO;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v13, v14, v12, &v17, 0xCu);
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v11;
      v12 = "%{public}@Not registering for notifications as accessory is nil";
      v13 = v10;
      v14 = OS_LOG_TYPE_ERROR;
      goto LABEL_6;
    }
  }

  objc_autoreleasePoolPop(v8);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)setMatterFirmwareRevisionNumber:(id)number
{
  v25 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  v6 = numberCopy;
  if (numberCopy)
  {
    if (!self->_matterFirmwareRevisionNumber || ([numberCopy isEqualToNumber:?] & 1) == 0)
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        matterFirmwareRevisionNumber = self->_matterFirmwareRevisionNumber;
        v19 = 138543874;
        v20 = v10;
        v21 = 2112;
        v22 = matterFirmwareRevisionNumber;
        v23 = 2112;
        v24 = v6;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Updating Matter firmware revision number from %@ to %@", &v19, 0x20u);
      }

      objc_autoreleasePoolPop(v7);
      objc_storeStrong(&self->_matterFirmwareRevisionNumber, number);
      notificationCenter = [(HMDAccessoryMatterFirmwareUpdateProfile *)selfCopy notificationCenter];
      accessory = [(HMDAccessoryMatterFirmwareUpdateProfile *)selfCopy accessory];
      [notificationCenter postNotificationName:@"HMDAccessoryFirmwareUpdateMatterFirmwareRevisionNumberChangedNotification" object:accessory userInfo:0];
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Not setting matter firmware revision number to nil", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (HMDAccessoryMatterFirmwareUpdateProfile)initWithAccessory:(id)accessory workQueue:(id)queue
{
  accessoryCopy = accessory;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = HMDAccessoryMatterFirmwareUpdateProfile;
  v8 = [(HMDAccessoryMatterFirmwareUpdateProfile *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_accessory, accessoryCopy);
    objc_storeStrong(&v9->_workQueue, queue);
    matterFirmwareRevisionNumber = v9->_matterFirmwareRevisionNumber;
    v9->_matterFirmwareRevisionNumber = 0;

    v9->_wasPreviousStateInstalling = 0;
  }

  return v9;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = HMDAccessoryMatterFirmwareUpdateProfile;
  [(HMDAccessoryMatterFirmwareUpdateProfile *)&v4 dealloc];
}

- (id)logIdentifier
{
  accessory = [(HMDAccessoryMatterFirmwareUpdateProfile *)self accessory];
  logIdentifier = [accessory logIdentifier];

  return logIdentifier;
}

- (id)privateDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  accessory = [(HMDAccessoryMatterFirmwareUpdateProfile *)self accessory];
  uuid = [accessory uuid];
  uUIDString = [uuid UUIDString];
  v8 = [v3 stringWithFormat:@"<%@ %@>", v4, uUIDString];

  return v8;
}

- (NSString)description
{
  accessory = [(HMDAccessoryMatterFirmwareUpdateProfile *)self accessory];
  v3 = MEMORY[0x277CCACA8];
  name = [accessory name];
  uniqueIdentifier = [accessory uniqueIdentifier];
  v6 = [v3 stringWithFormat:@"Matter Firmware Update Profile %@, %@", name, uniqueIdentifier];

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_138241 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_138241, &__block_literal_global_138242);
  }

  v3 = logCategory__hmf_once_v1_138243;

  return v3;
}

uint64_t __54__HMDAccessoryMatterFirmwareUpdateProfile_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_138243;
  logCategory__hmf_once_v1_138243 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end