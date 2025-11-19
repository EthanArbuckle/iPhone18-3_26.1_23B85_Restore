@interface HMDAccessoryMatterFirmwareUpdateProfile
+ (id)logCategory;
- (HMDAccessoryMatterFirmwareUpdateProfile)initWithAccessory:(id)a3 workQueue:(id)a4;
- (HMDHAPAccessory)accessory;
- (HMDMatterSoftwareUpdateProviderDelegate)matterSoftwareUpdateProviderDelegate;
- (NSString)description;
- (id)characteristics;
- (id)logIdentifier;
- (id)privateDescription;
- (void)__handleMatterFirmwareRevisionNumberUpdate:(id)a3;
- (void)__handleMatterFirmwareUpdateStatusUpdate:(id)a3;
- (void)_enableCharacteristicsNotifications:(BOOL)a3;
- (void)_handleCharacteristicChanges:(id)a3;
- (void)_processIdleStateWithCharacteristic:(id)a3;
- (void)_registerForNotifications;
- (void)dealloc;
- (void)handleAccessoryIsReachable:(id)a3;
- (void)handleCharacteristicValuesChanged:(id)a3;
- (void)handleDisplayableFirmwareVersionUpdatedNotification:(id)a3;
- (void)handleVIDPIDUpdatedNotification:(id)a3;
- (void)readAndProcessCharacteristics:(id)a3 withCompletion:(id)a4;
- (void)readMatterFirmwareUpdateCharacteristics;
- (void)setMatterFirmwareRevisionNumber:(id)a3;
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

- (void)__handleMatterFirmwareUpdateStatusUpdate:(id)a3
{
  v92 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v83 = v8;
    v84 = 2112;
    v85 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling update for %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v4 value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
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
    v19 = [v12 OTAProviderState];

    if (!v19)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = v6;
      v16 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v83 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Missing OTA Provider state in Matter Firmware Update Status TLV", buf, 0xCu);
      goto LABEL_9;
    }

    v20 = [v12 OTAProviderState];
    v21 = [v20 value];

    v22 = objc_autoreleasePoolPush();
    v23 = v6;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v26 = HAPOTAProviderStateAsString();
      *buf = 138543618;
      v83 = v25;
      v84 = 2112;
      v85 = v26;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Matter firmware update state : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v27 = [(HMDAccessoryMatterFirmwareUpdateProfile *)v23 accessory];
    if (!v27)
    {
      v37 = objc_autoreleasePoolPush();
      v38 = v23;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = HMFGetLogIdentifier();
        *buf = 138543362;
        v83 = v40;
        _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@HAP accessory is nil. Cannot handle matter firmware update status characteristic value change", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v37);
      goto LABEL_60;
    }

    v28 = [(HMDAccessoryMatterFirmwareUpdateProfile *)v23 matterSoftwareUpdateProviderDelegate];
    v29 = [v27 softwareUpdate];
    if (!v29)
    {
      v41 = objc_autoreleasePoolPush();
      v42 = v23;
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v44 = v75 = v28;
        *buf = 138543362;
        v83 = v44;
        _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_INFO, "%{public}@Software update object is nil. Cannot update HMDSoftwareUpdate", buf, 0xCu);

        v28 = v75;
      }

      objc_autoreleasePoolPop(v41);
      v29 = 0;
      if (v21 != 6 || !v28)
      {
        goto LABEL_59;
      }

LABEL_47:
      [v28 resetOTAProviderStateForHMDHAPAccessory:v27];
      goto LABEL_59;
    }

    if ([(HMDAccessoryMatterFirmwareUpdateProfile *)v23 wasPreviousStateInstalling]&& v21 == 6)
    {
      v30 = [v27 home];
      if (v30)
      {
        v74 = v28;
        v78 = v29;
        v31 = [v27 supportsCHIP];
        context = objc_autoreleasePoolPush();
        v32 = v23;
        v33 = HMFGetOSLogHandle();
        v34 = os_log_type_enabled(v33, OS_LOG_TYPE_INFO);
        if (v31)
        {
          if (v34)
          {
            v71 = HMFGetLogIdentifier();
            v70 = [v27 name];
            v35 = [v27 displayableFirmwareVersion];
            *buf = 138543874;
            v83 = v71;
            v84 = 2112;
            v85 = v70;
            v86 = 2112;
            v87 = v35;
            v36 = v35;
            _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Sending firmware update UI notification for accessory = %@ with displayableFirmwareVersion = %@ using Iphone as a controller", buf, 0x20u);
          }

          objc_autoreleasePoolPop(context);
          [v30 sendFirmwareUpdateUINotification:v27];
        }

        else
        {
          if (v34)
          {
            v47 = HMFGetLogIdentifier();
            *buf = 138543618;
            v83 = v47;
            v84 = 2112;
            v85 = v27;
            _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Not a matter accessory, no UI notification %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(context);
        }

        v28 = v74;
        v29 = v78;
      }

      [(HMDAccessoryMatterFirmwareUpdateProfile *)v23 setWasPreviousStateInstalling:0];
LABEL_46:
      [v29 updateLocalState:4];
      if (!v28)
      {
        v48 = objc_autoreleasePoolPush();
        v49 = v23;
        v50 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          v51 = HMFGetLogIdentifier();
          *buf = 138543362;
          v83 = v51;
          _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_INFO, "%{public}@Couldn't get a strong ref to the software update provider delegate", buf, 0xCu);

          v28 = 0;
        }

        objc_autoreleasePoolPop(v48);
        goto LABEL_59;
      }

      goto LABEL_47;
    }

    [(HMDAccessoryMatterFirmwareUpdateProfile *)v23 setWasPreviousStateInstalling:0];
    if (v21 <= 2)
    {
      if (!v21)
      {
        v52 = [v27 home];
        v53 = v52;
        if (v52)
        {
          if ([v52 isAutomaticThirdPartyAccessorySoftwareUpdateEnabled])
          {
            v54 = v29;
            v55 = 2;
          }

          else if ([v53 hasAnyResident])
          {
            v54 = v29;
            v55 = 5;
          }

          else
          {
            v54 = v29;
            v55 = 0;
          }

          [v54 updateLocalState:v55];
        }

        else
        {
          v80 = v29;
          v62 = objc_autoreleasePoolPush();
          v63 = v23;
          v64 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v65 = v77 = v28;
            *buf = 138543362;
            v83 = v65;
            _os_log_impl(&dword_229538000, v64, OS_LOG_TYPE_ERROR, "%{public}@hapAccessory home field is not available", buf, 0xCu);

            v28 = v77;
          }

          objc_autoreleasePoolPop(v62);
          v29 = v80;
        }

        goto LABEL_59;
      }

      if (v21 == 1)
      {
        v57 = [(HMDAccessoryMatterFirmwareUpdateProfile *)v23 matterFirmwareRevisionNumber];
        if (!v57)
        {
          goto LABEL_64;
        }

        v58 = v57;
        [v29 version];
        v59 = v76 = v28;
        contexta = [v59 majorVersion];
        [(HMDAccessoryMatterFirmwareUpdateProfile *)v23 matterFirmwareRevisionNumber];
        v60 = v79 = v29;
        v61 = [v60 unsignedIntegerValue];

        v29 = v79;
        v28 = v76;

        if (contexta > v61)
        {
LABEL_64:
          [(HMDAccessoryMatterFirmwareUpdateProfile *)v23 _processIdleStateWithCharacteristic:v4];
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
          _os_log_impl(&dword_229538000, v68, OS_LOG_TYPE_INFO, "%{public}@Prevent moving to REQUESTED state because the latest firmware is already installed on the accessory", buf, 0xCu);

          v28 = v76;
        }

        objc_autoreleasePoolPop(v66);
        v29 = v79;
        goto LABEL_46;
      }

      if (v21 != 2)
      {
LABEL_59:

LABEL_60:
        goto LABEL_61;
      }

      v45 = v29;
      v46 = 2;
    }

    else if (v21 > 4)
    {
      if (v21 == 6)
      {
        goto LABEL_46;
      }

      if (v21 != 5)
      {
        goto LABEL_59;
      }

      [(HMDAccessoryMatterFirmwareUpdateProfile *)v23 setWasPreviousStateInstalling:1];
      v45 = v29;
      v46 = 3;
    }

    else
    {
      v45 = v29;
      if (v21 == 3)
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
  v15 = v6;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = HMFGetLogIdentifier();
    v18 = [v4 value];
    *buf = 138544386;
    v83 = v17;
    v84 = 2112;
    v85 = v4;
    v86 = 2112;
    v87 = v18;
    v88 = 2112;
    v89 = v11;
    v90 = 2112;
    v91 = v13;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse matter firmware update status (%@) - characteristic %@ value %@ error %@", buf, 0x34u);

LABEL_9:
  }

LABEL_10:

  objc_autoreleasePoolPop(v14);
LABEL_61:

  v56 = *MEMORY[0x277D85DE8];
}

- (void)__handleMatterFirmwareRevisionNumberUpdate:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling update for %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v4 value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  [(HMDAccessoryMatterFirmwareUpdateProfile *)v6 setMatterFirmwareRevisionNumber:v11];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_processIdleStateWithCharacteristic:(id)a3
{
  v80 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 previousValue];
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
    v69 = 0;
    v8 = [MEMORY[0x277CFEB98] parsedFromData:v7 error:&v69];
    v9 = v69;
    if (v9)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = self;
      v12 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
LABEL_9:

        objc_autoreleasePoolPop(v10);
LABEL_10:

        goto LABEL_14;
      }

      v13 = HMFGetLogIdentifier();
      v14 = [v4 previousValue];
      *buf = 138544386;
      v71 = v13;
      v72 = 2112;
      v73 = v4;
      v74 = 2112;
      v75 = v14;
      v76 = 2112;
      v77 = v7;
      v78 = 2112;
      v79 = v9;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse matter firmware update status previous value (%@) - characteristic %@ value %@ error %@", buf, 0x34u);

LABEL_8:
      goto LABEL_9;
    }

    v20 = [v8 OTAProviderState];

    if (!v20)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = self;
      v12 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v71 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Missing OTA Provider state previous value in Matter Firmware Update Status TLV", buf, 0xCu);
      goto LABEL_8;
    }

    v21 = [v8 OTAProviderState];
    v22 = [v21 value];

    v23 = objc_autoreleasePoolPush();
    v24 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      v27 = HAPOTAProviderStateAsString();
      *buf = 138543618;
      v71 = v26;
      v72 = 2112;
      v73 = v27;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Matter firmware update state previous value : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    if (v22 == 1 || v22 == 6)
    {
      goto LABEL_10;
    }

    v28 = [(HMDAccessoryMatterFirmwareUpdateProfile *)v24 accessory];
    v29 = v28;
    if (!v28)
    {
      v42 = objc_autoreleasePoolPush();
      v43 = v24;
      v44 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = HMFGetLogIdentifier();
        *buf = 138543362;
        v71 = v45;
        _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_ERROR, "%{public}@HAP accessory is nil. Cannot process initial state from accessory", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v42);
      goto LABEL_46;
    }

    v30 = [v28 home];
    v31 = [v30 homeManager];
    v32 = [v31 accessoryFirmwareUpdateManager];

    if ([v30 isCurrentDevicePrimaryResident] && objc_msgSend(v30, "isAutomaticThirdPartyAccessorySoftwareUpdateEnabled"))
    {
      v33 = [v32 sessionForAccessory:v29];
      v67 = v32;
      if (!v33)
      {
        v34 = objc_autoreleasePoolPush();
        v35 = v24;
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v37 = contexta = v34;
          *buf = 138543362;
          v71 = v37;
          _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@No active firmware update session, attempting to create one", buf, 0xCu);

          v34 = contexta;
        }

        objc_autoreleasePoolPop(v34);
        v32 = v67;
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
            _os_log_impl(&dword_229538000, v61, OS_LOG_TYPE_ERROR, "%{public}@Failed to register and create a firmware update session", buf, 0xCu);

            v32 = v67;
          }

          objc_autoreleasePoolPop(v59);
          goto LABEL_45;
        }
      }

      v38 = v33;
      if ([v33 isMatterFirmwareUpdateRetryAllowed])
      {
        v39 = [(HMDAccessoryMatterFirmwareUpdateProfile *)v24 matterSoftwareUpdateProviderDelegate];
        if (!v39)
        {
          v55 = objc_autoreleasePoolPush();
          v56 = v24;
          v57 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v58 = contextc = v55;
            *buf = 138543362;
            v71 = v58;
            _os_log_impl(&dword_229538000, v57, OS_LOG_TYPE_ERROR, "%{public}@Couldn't get a strong ref to the software update provider delegate", buf, 0xCu);

            v55 = contextc;
          }

          objc_autoreleasePoolPop(v55);
          v32 = v67;
          goto LABEL_45;
        }

        v40 = v39;
        [v38 incrementMatterFirmwareUpdateRetryCount];
        [v40 notifyUpdateRequestedForHMDHAPAccessory:v29 isUserTriggered:0 isRetry:1];
      }

      else
      {
        v51 = objc_autoreleasePoolPush();
        v52 = v24;
        v53 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v54 = contextb = v51;
          *buf = 138543362;
          v71 = v54;
          _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_INFO, "%{public}@Maximum matter firmware update retries reached", buf, 0xCu);

          v51 = contextb;
        }

        objc_autoreleasePoolPop(v51);
        v32 = v67;
      }

LABEL_44:

LABEL_45:
LABEL_46:

      goto LABEL_10;
    }

    v41 = [v29 softwareUpdate];
    v38 = v41;
    if (v41)
    {
      if ([v41 state])
      {
        [v38 updateLocalState:0];
        goto LABEL_44;
      }

      v68 = v32;
      context = objc_autoreleasePoolPush();
      v50 = v24;
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
      v68 = v32;
      context = objc_autoreleasePoolPush();
      v46 = v24;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v48 = HMFGetLogIdentifier();
        *buf = 138543362;
        v71 = v48;
        v49 = "%{public}@Software update object is nil. Cannot process idle state from accessory";
LABEL_42:
        _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_INFO, v49, buf, 0xCu);
      }
    }

    v32 = v68;

    objc_autoreleasePoolPop(context);
    goto LABEL_44;
  }

  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543362;
    v71 = v18;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Not processing idle state as previous value is nil", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v15);
LABEL_14:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_handleCharacteristicChanges:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 type];
        v11 = [v10 isEqualToString:@"0000026D-0000-1000-8000-0026BB765291"];

        if (v11)
        {
          [(HMDAccessoryMatterFirmwareUpdateProfile *)self __handleMatterFirmwareRevisionNumberUpdate:v9];
        }

        else
        {
          v12 = [v9 type];
          v13 = [v12 isEqualToString:@"0000026E-0000-1000-8000-0026BB765291"];

          if (v13)
          {
            [(HMDAccessoryMatterFirmwareUpdateProfile *)self __handleMatterFirmwareUpdateStatusUpdate:v9];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleCharacteristicValuesChanged:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryMatterFirmwareUpdateProfile *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__HMDAccessoryMatterFirmwareUpdateProfile_handleCharacteristicValuesChanged___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
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
  v3 = [(HMDAccessoryMatterFirmwareUpdateProfile *)self accessory];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = [MEMORY[0x277CBEB98] setWithObjects:{@"0000026D-0000-1000-8000-0026BB765291", 0}];
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{@"0000026E-0000-1000-8000-0026BB765291", 0}];
    v7 = [v3 findCharacteristicsByTypes:v6 forServiceType:@"00000236-0000-1000-8000-0026BB765291"];
    [v4 addObjectsFromArray:v7];

    v8 = [v3 findCharacteristicsByTypes:v5 forServiceType:@"0000003E-0000-1000-8000-0026BB765291"];
    [v4 addObjectsFromArray:v8];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@HAP accessory is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v4 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)readMatterFirmwareUpdateCharacteristics
{
  v3 = [(HMDAccessoryMatterFirmwareUpdateProfile *)self characteristics];
  [(HMDAccessoryMatterFirmwareUpdateProfile *)self readAndProcessCharacteristics:v3 withCompletion:&__block_literal_global_44_30146];
}

- (void)readAndProcessCharacteristics:(id)a3 withCompletion:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessoryMatterFirmwareUpdateProfile *)self accessory];
  v9 = v8;
  if (v8 && [v8 supportsCHIP])
  {
    v10 = [v6 count] == 0;
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
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEBUG, "%{public}@No characteristics to read and process", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      v7[2](v7);
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543618;
        v37 = v14;
        v38 = 2112;
        v39 = v6;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Reading characteristics: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v16 = v6;
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
      v21 = [v9 home];
      v22 = [v15 copy];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __88__HMDAccessoryMatterFirmwareUpdateProfile_readAndProcessCharacteristics_withCompletion___block_invoke;
      v27[3] = &unk_278685EC0;
      objc_copyWeak(&v30, buf);
      v29 = v7;
      v23 = v15;
      v28 = v23;
      [v21 readCharacteristicValues:v22 source:1000 qualityOfService:-1 withCompletionHandler:v27];

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
      v51 = __Block_byref_object_copy__30152;
      v52 = __Block_byref_object_dispose__30153;
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
                _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Read failed for %@", buf, 0x16u);
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
      block[3] = &unk_278682E60;
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
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Read of characteristics %@ failed with error %@", v50, 0x20u);
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Read succeeded for %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *(a1 + 32);
  v8 = [*(*(*(a1 + 48) + 8) + 40) copy];
  [v7 _handleCharacteristicChanges:v8];

  result = (*(*(a1 + 40) + 16))();
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleDisplayableFirmwareVersionUpdatedNotification:(id)a3
{
  v4 = [(HMDAccessoryMatterFirmwareUpdateProfile *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__HMDAccessoryMatterFirmwareUpdateProfile_handleDisplayableFirmwareVersionUpdatedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Matter firmware version string updated", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) __handleAccessoryIsReachable];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleVIDPIDUpdatedNotification:(id)a3
{
  v4 = [(HMDAccessoryMatterFirmwareUpdateProfile *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__HMDAccessoryMatterFirmwareUpdateProfile_handleVIDPIDUpdatedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@VID/PID updated", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) __handleAccessoryIsReachable];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleAccessoryIsReachable:(id)a3
{
  v4 = [(HMDAccessoryMatterFirmwareUpdateProfile *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HMDAccessoryMatterFirmwareUpdateProfile_handleAccessoryIsReachable___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Accessory is now reachable", &v17, 0xCu);
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
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@HAP accessory is nil", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_enableCharacteristicsNotifications:(BOOL)a3
{
  v3 = a3;
  v5 = [(HMDAccessoryMatterFirmwareUpdateProfile *)self accessory];
  v6 = [(HMDAccessoryMatterFirmwareUpdateProfile *)self characteristics];
  [v5 setNotificationsEnabled:1 forCharacteristics:v6 clientIdentifier:@"com.apple.HomeKitDaemon.accessoryMatterFirmwareUpdate"];

  if (v3)
  {
    v7 = [(HMDAccessoryMatterFirmwareUpdateProfile *)self characteristics];
    [(HMDAccessoryMatterFirmwareUpdateProfile *)self readAndProcessCharacteristics:v7 withCompletion:&__block_literal_global_38];
  }
}

- (void)_registerForNotifications
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryMatterFirmwareUpdateProfile *)self accessory];
  if (v3)
  {
    v4 = [(HMDAccessoryMatterFirmwareUpdateProfile *)self notificationCenter];
    [v4 addObserver:self selector:sel_handleCharacteristicValuesChanged_ name:@"HMDAccessoryCharacteristicsChangedNotification" object:v3];

    v5 = [(HMDAccessoryMatterFirmwareUpdateProfile *)self notificationCenter];
    [v5 addObserver:self selector:sel_handleAccessoryIsReachable_ name:@"HMDAccessoryIsReachableNotification" object:v3];

    v6 = [(HMDAccessoryMatterFirmwareUpdateProfile *)self notificationCenter];
    [v6 addObserver:self selector:sel_handleVIDPIDUpdatedNotification_ name:@"HMDAccessoryVendorIDProductIDUpdatedNotification" object:v3];

    v7 = [(HMDAccessoryMatterFirmwareUpdateProfile *)self notificationCenter];
    [v7 addObserver:self selector:sel_handleDisplayableFirmwareVersionUpdatedNotification_ name:@"HMDAccessoryFirmwareDisplayableVersionUpdatedNotification" object:v3];

    [(HMDAccessoryMatterFirmwareUpdateProfile *)self _enableCharacteristicsNotifications:1];
    v8 = objc_autoreleasePoolPush();
    v9 = self;
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
      _os_log_impl(&dword_229538000, v13, v14, v12, &v17, 0xCu);
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v15 = self;
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

- (void)setMatterFirmwareRevisionNumber:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    if (!self->_matterFirmwareRevisionNumber || ([v5 isEqualToNumber:?] & 1) == 0)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = self;
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
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Updating Matter firmware revision number from %@ to %@", &v19, 0x20u);
      }

      objc_autoreleasePoolPop(v7);
      objc_storeStrong(&self->_matterFirmwareRevisionNumber, a3);
      v12 = [(HMDAccessoryMatterFirmwareUpdateProfile *)v8 notificationCenter];
      v13 = [(HMDAccessoryMatterFirmwareUpdateProfile *)v8 accessory];
      [v12 postNotificationName:@"HMDAccessoryFirmwareUpdateMatterFirmwareRevisionNumberChangedNotification" object:v13 userInfo:0];
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Not setting matter firmware revision number to nil", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (HMDAccessoryMatterFirmwareUpdateProfile)initWithAccessory:(id)a3 workQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = HMDAccessoryMatterFirmwareUpdateProfile;
  v8 = [(HMDAccessoryMatterFirmwareUpdateProfile *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_accessory, v6);
    objc_storeStrong(&v9->_workQueue, a4);
    matterFirmwareRevisionNumber = v9->_matterFirmwareRevisionNumber;
    v9->_matterFirmwareRevisionNumber = 0;

    v9->_wasPreviousStateInstalling = 0;
  }

  return v9;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = HMDAccessoryMatterFirmwareUpdateProfile;
  [(HMDAccessoryMatterFirmwareUpdateProfile *)&v4 dealloc];
}

- (id)logIdentifier
{
  v2 = [(HMDAccessoryMatterFirmwareUpdateProfile *)self accessory];
  v3 = [v2 logIdentifier];

  return v3;
}

- (id)privateDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HMDAccessoryMatterFirmwareUpdateProfile *)self accessory];
  v6 = [v5 uuid];
  v7 = [v6 UUIDString];
  v8 = [v3 stringWithFormat:@"<%@ %@>", v4, v7];

  return v8;
}

- (NSString)description
{
  v2 = [(HMDAccessoryMatterFirmwareUpdateProfile *)self accessory];
  v3 = MEMORY[0x277CCACA8];
  v4 = [v2 name];
  v5 = [v2 uniqueIdentifier];
  v6 = [v3 stringWithFormat:@"Matter Firmware Update Profile %@, %@", v4, v5];

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_30187 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_30187, &__block_literal_global_30188);
  }

  v3 = logCategory__hmf_once_v1_30189;

  return v3;
}

void __54__HMDAccessoryMatterFirmwareUpdateProfile_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_30189;
  logCategory__hmf_once_v1_30189 = v1;
}

@end