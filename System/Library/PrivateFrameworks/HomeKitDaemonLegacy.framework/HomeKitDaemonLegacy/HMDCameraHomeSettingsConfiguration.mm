@interface HMDCameraHomeSettingsConfiguration
- (HMDCameraHomeSettingsConfiguration)initWithHome:(id)home;
@end

@implementation HMDCameraHomeSettingsConfiguration

- (HMDCameraHomeSettingsConfiguration)initWithHome:(id)home
{
  v72 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v64.receiver = self;
  v64.super_class = HMDCameraHomeSettingsConfiguration;
  v5 = [(HMDCameraHomeSettingsConfiguration *)&v64 init];
  v6 = v5;
  if (v5)
  {
    v50 = v5;
    array = [MEMORY[0x277CBEB18] array];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v51 = homeCopy;
    accessories = [homeCopy accessories];
    v9 = [accessories countByEnumeratingWithState:&v60 objects:v71 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v61;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v61 != v11)
          {
            objc_enumerationMutation(accessories);
          }

          v13 = *(*(&v60 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = v13;
          }

          else
          {
            v14 = 0;
          }

          v15 = v14;

          cameraProfiles = [v15 cameraProfiles];
          v17 = [cameraProfiles count];

          if (v17)
          {
            v18 = [[HMDCameraAccessorySettingsConfiguration alloc] initWithCameraAccessory:v15];
            [array addObject:v18];
          }
        }

        v10 = [accessories countByEnumeratingWithState:&v60 objects:v71 count:16];
      }

      while (v10);
    }

    v19 = [MEMORY[0x277CBEA60] arrayWithArray:array];
    cameraSettings = v50->_cameraSettings;
    v50->_cameraSettings = v19;

    v21 = objc_autoreleasePoolPush();
    v22 = v50;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = HMFGetLogIdentifier();
      cameraSettings = [(HMDCameraHomeSettingsConfiguration *)v22 cameraSettings];
      *buf = 138543618;
      v68 = v24;
      v69 = 2112;
      v70 = cameraSettings;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_DEBUG, "%{public}@Camera accessory settings: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    array2 = [MEMORY[0x277CBEB18] array];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    users = [v51 users];
    v28 = [users countByEnumeratingWithState:&v56 objects:v66 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v57;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v57 != v30)
          {
            objc_enumerationMutation(users);
          }

          v32 = [[HMDCameraUserSettingsConfiguration alloc] initWithUser:*(*(&v56 + 1) + 8 * j)];
          [array2 addObject:v32];
        }

        v29 = [users countByEnumeratingWithState:&v56 objects:v66 count:16];
      }

      while (v29);
    }

    v33 = [MEMORY[0x277CBEA60] arrayWithArray:array2];
    userSettings = v22->_userSettings;
    v22->_userSettings = v33;

    v35 = objc_autoreleasePoolPush();
    v36 = v22;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      v38 = HMFGetLogIdentifier();
      userSettings = [(HMDCameraHomeSettingsConfiguration *)v36 userSettings];
      *buf = 138543618;
      v68 = v38;
      v69 = 2112;
      v70 = userSettings;
      _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_DEBUG, "%{public}@Camera user settings: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
    homeCopy = v51;
    personManagerSettings = [v51 personManagerSettings];
    v36->_faceClassificationEnabled = [personManagerSettings isFaceClassificationEnabled];

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    residentDeviceManager = [v51 residentDeviceManager];
    availableResidentDevices = [residentDeviceManager availableResidentDevices];

    v43 = [availableResidentDevices countByEnumeratingWithState:&v52 objects:v65 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v53;
      do
      {
        for (k = 0; k != v44; ++k)
        {
          if (*v53 != v45)
          {
            objc_enumerationMutation(availableResidentDevices);
          }

          v47 = *(*(&v52 + 1) + 8 * k);
          if ([v47 isEnabled])
          {
            v36->_enabledResidentsDeviceCapabilities |= [v47 legacyResidentCapabilities];
          }
        }

        v44 = [availableResidentDevices countByEnumeratingWithState:&v52 objects:v65 count:16];
      }

      while (v44);
    }

    v36->_owner = [v51 isOwnerUser];
    v6 = v50;
  }

  v48 = *MEMORY[0x277D85DE8];
  return v6;
}

@end