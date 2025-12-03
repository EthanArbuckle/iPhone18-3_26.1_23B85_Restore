@interface HMDBulletinBoardNotificationServiceGroup
+ (id)logCategory;
- (BOOL)_isAlarmService:(id)service;
- (BOOL)_isDefaultRoom:(id)room ofHome:(id)home;
- (BOOL)_isNotificationGeneratingService:(id)service;
- (BOOL)_isSupportedAssociationService:(id)service;
- (HMDBulletinBoardNotification)bulletinBoardNotification;
- (HMDBulletinBoardNotificationServiceGroup)initWithBulletinBoardNotification:(id)notification;
- (HMDBulletinBoardNotificationServiceGroup)initWithCoder:(id)coder;
- (NSArray)associatedServices;
- (NSArray)cameraProfiles;
- (NSHashTable)associatedServicesTable;
- (NSHashTable)cameraProfilesTable;
- (NSSet)associatedServiceUUIDs;
- (NSSet)cameraProfileUUIDs;
- (id)_accessoriesInRoom:(id)room ofHome:(id)home;
- (id)_cameraNotificationGeneratingServicesForAccessory:(id)accessory;
- (id)_cameraProfileWithID:(id)d;
- (id)_prepareServiceGroupPayload;
- (id)actionContextForCameraProfileID:(id)d;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (id)logIdentifier;
- (void)_configureServices;
- (void)_handleBulletinBoardNotificationServiceGroupRequest:(id)request;
- (void)_updateAssociatedServices:(id)services associatedCameras:(id)cameras;
- (void)_updateAssociatedServicesTable:(id)table;
- (void)configureBulletinNotification;
- (void)configureWithWorkQueue:(id)queue;
- (void)encodeWithCoder:(id)coder;
- (void)setAssociatedServiceUUIDs:(id)ds;
- (void)setAssociatedServicesTable:(id)table;
- (void)setCameraProfileUUIDs:(id)ds;
- (void)setCameraProfilesTable:(id)table;
@end

@implementation HMDBulletinBoardNotificationServiceGroup

- (HMDBulletinBoardNotification)bulletinBoardNotification
{
  WeakRetained = objc_loadWeakRetained(&self->_bulletinBoardNotification);

  return WeakRetained;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bulletinBoardNotification = [(HMDBulletinBoardNotificationServiceGroup *)self bulletinBoardNotification];
  [coderCopy encodeConditionalObject:bulletinBoardNotification forKey:@"HM.BulletinBoardNotification"];

  cameraProfileUUIDs = [(HMDBulletinBoardNotificationServiceGroup *)self cameraProfileUUIDs];
  allObjects = [cameraProfileUUIDs allObjects];
  [coderCopy encodeObject:allObjects forKey:@"HM.BulletinBoardNotificationCameraProfiles"];

  associatedServiceUUIDs = [(HMDBulletinBoardNotificationServiceGroup *)self associatedServiceUUIDs];
  allObjects2 = [associatedServiceUUIDs allObjects];
  [coderCopy encodeObject:allObjects2 forKey:@"HM.BulletinBoardNotificationServices"];
}

- (HMDBulletinBoardNotificationServiceGroup)initWithCoder:(id)coder
{
  v32 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.BulletinBoardNotification"];
  if (v5)
  {
    v6 = [(HMDBulletinBoardNotificationServiceGroup *)self initWithBulletinBoardNotification:v5];
    if (v6)
    {
      v7 = MEMORY[0x277CBEB98];
      v27[0] = objc_opt_class();
      v27[1] = objc_opt_class();
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
      v9 = [v7 setWithArray:v8];
      v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"HM.BulletinBoardNotificationCameraProfiles"];

      v11 = [MEMORY[0x277CBEB98] setWithArray:v10];
      cameraProfileUUIDs = v6->_cameraProfileUUIDs;
      v6->_cameraProfileUUIDs = v11;

      v13 = MEMORY[0x277CBEB98];
      v26[0] = objc_opt_class();
      v26[1] = objc_opt_class();
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
      v15 = [v13 setWithArray:{v14, v26[0]}];
      v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"HM.BulletinBoardNotificationServices"];

      v17 = [MEMORY[0x277CBEB98] setWithArray:v16];
      associatedServiceUUIDs = v6->_associatedServiceUUIDs;
      v6->_associatedServiceUUIDs = v17;
    }

    selfCopy = v6;
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
      *buf = 138543618;
      v29 = v23;
      v30 = 2112;
      v31 = 0;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded bulletinBoardNotification: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v20 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v20;
}

- (id)logIdentifier
{
  bulletinBoardNotification = [(HMDBulletinBoardNotificationServiceGroup *)self bulletinBoardNotification];
  logIdentifier = [bulletinBoardNotification logIdentifier];

  return logIdentifier;
}

- (id)actionContextForCameraProfileID:(id)d
{
  v105 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(HMDBulletinBoardNotificationServiceGroup *)self _cameraProfileWithID:dCopy];
  if (v5)
  {
    associatedServices = [(HMDBulletinBoardNotificationServiceGroup *)self associatedServices];
    v7 = objc_opt_new();
    v8 = 0x277CBE000uLL;
    if (![v5 isMicrophonePresent])
    {
      goto LABEL_4;
    }

    bulletinBoardNotification = [(HMDBulletinBoardNotificationServiceGroup *)self bulletinBoardNotification];
    service = [bulletinBoardNotification service];
    type = [service type];
    v12 = [type isEqualToString:*MEMORY[0x277CFE8D8]];

    if ((v12 & 1) == 0)
    {
      v18 = HMDLocalizedStringForKey(@"BULLETIN_MICROPHONE_ACTION");
      v19 = @"microphone_toggleButton";
      v99[0] = @"itemType";
      v99[1] = @"identifier";
      v100[0] = @"MICROPHONE";
      v100[1] = @"microphone_toggleButton";
      v78 = @"microphone_toggleButton";
      v79 = v18;
      v99[2] = @"title";
      v100[2] = v18;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v100 forKeys:v99 count:3];
      [v7 addObject:v20];
    }

    else
    {
LABEL_4:
      v78 = 0;
      v79 = 0;
    }

    v21 = objc_opt_new();
    v91[0] = MEMORY[0x277D85DD0];
    v91[1] = 3221225472;
    v91[2] = __76__HMDBulletinBoardNotificationServiceGroup_actionContextForCameraProfileID___block_invoke;
    v91[3] = &unk_27866F768;
    v22 = v21;
    v92 = v22;
    v80 = associatedServices;
    [associatedServices hmf_enumerateWithAutoreleasePoolUsingBlock:v91];
    v23 = *MEMORY[0x277CFE878];
    v24 = [v22 objectForKeyedSubscript:*MEMORY[0x277CFE878]];
    v81 = v5;
    v82 = dCopy;
    v83 = v7;
    v84 = v22;
    if ([v24 count])
    {
      accessory = [v5 accessory];
      home = [accessory home];
      date = [MEMORY[0x277CBEAA8] date];
      v28 = home;
      v29 = date;
      v30 = v29;
      if (v28)
      {
        date2 = v29;
        if (!v29)
        {
          date2 = [MEMORY[0x277CBEAA8] date];
        }

        homeLocationHandler = [v28 homeLocationHandler];
        location = [homeLocationHandler location];

        v34 = [HMDLocation sunriseTimeForLocation:location];
        v35 = [HMDLocation sunsetTimeForLocation:location];
        [date2 timeIntervalSince1970];
        v37 = v36;
        [v35 timeIntervalSince1970];
        v39 = v38;
        [v34 timeIntervalSince1970];
        if (v39 <= v40)
        {
          v41 = v37 >= v40 || v37 <= v39;
        }

        else
        {
          v41 = v37 < v39 && v37 > v40;
        }

        v7 = v83;
        v22 = v84;
        if (v41)
        {
          v74 = 0;
          v75 = 0;
          v76 = 0;
          v77 = 0;
          v8 = 0x277CBE000;
LABEL_26:
          v46 = objc_alloc_init(MEMORY[0x277CCACA8]);
          v47 = *MEMORY[0x277CFE898];
          v48 = [v22 objectForKeyedSubscript:*MEMORY[0x277CFE898]];
          v49 = [v48 count];

          v50 = *MEMORY[0x277CFE880];
          v51 = [v22 objectForKeyedSubscript:*MEMORY[0x277CFE880]];
          v52 = [v51 count];

          if (!v52 && !v49)
          {
            v53 = 0;
            v54 = 0;
            v5 = v81;
            v55 = v83;
            v56 = v8;
LABEL_42:
            v67 = HMDLocalizedStringForKey(@"BULLETIN_DISMISS_ACTION_TITLE");
            v68 = [MEMORY[0x277CE1F80] actionWithIdentifier:@"DISMISS" title:v67 options:0];
            v93[0] = @"categoryID";
            v93[1] = @"bulletinActionButtonDescription";
            v94[0] = @"HomeAppBulletinCategory";
            v94[1] = v55;
            v93[2] = *MEMORY[0x277CCF308];
            contextSPIUniqueIdentifier = [v5 contextSPIUniqueIdentifier];
            [contextSPIUniqueIdentifier UUIDString];
            v71 = v70 = v55;
            v93[3] = @"dismissButton";
            v94[2] = v71;
            v94[3] = v68;
            v17 = [*(v56 + 2752) dictionaryWithObjects:v94 forKeys:v93 count:4];

            dCopy = v82;
            goto LABEL_43;
          }

          array = [MEMORY[0x277CBEB18] array];
          v58 = [v84 objectForKeyedSubscript:v47];
          v87[0] = MEMORY[0x277D85DD0];
          v87[1] = 3221225472;
          v87[2] = __76__HMDBulletinBoardNotificationServiceGroup_actionContextForCameraProfileID___block_invoke_3;
          v87[3] = &unk_27866F790;
          v59 = array;
          v88 = v59;
          [v58 hmf_enumerateWithAutoreleasePoolUsingBlock:v87];
          v60 = [v84 objectForKeyedSubscript:v50];
          v85[0] = MEMORY[0x277D85DD0];
          v85[1] = 3221225472;
          v85[2] = __76__HMDBulletinBoardNotificationServiceGroup_actionContextForCameraProfileID___block_invoke_4;
          v85[3] = &unk_27866F790;
          v54 = v59;
          v86 = v54;
          [v60 hmf_enumerateWithAutoreleasePoolUsingBlock:v85];
          v53 = *MEMORY[0x277CFE800];
          if (v52 && v49)
          {
            v61 = [v60 count];
            v62 = @"BULLETIN_ALARM_AND_UNLOCK_ACTION_TITLE";
          }

          else
          {
            if (v52 == 0 || v49 != 0)
            {
              if (v49)
              {
                v63 = v52 != 0;
              }

              else
              {
                v63 = 1;
              }

              v55 = v83;
              v64 = 0x277CBE000;
              if (v63)
              {
                v5 = v81;
LABEL_41:
                v95[0] = @"itemType";
                v95[1] = @"identifier";
                v96[0] = @"SERVICE";
                v96[1] = v53;
                v95[2] = @"title";
                v95[3] = @"services.uuid";
                v96[2] = v46;
                v96[3] = v54;
                v66 = [*(v64 + 2752) dictionaryWithObjects:v96 forKeys:v95 count:4];
                [v55 addObject:v66];

                v56 = v64;
                goto LABEL_42;
              }

              v65 = HMDLocalizedStringForKey(@"BULLETIN_DISARM_SECURITY_ACTION_TITLE");

              v46 = v53;
              v53 = *MEMORY[0x277CFE808];
              v5 = v81;
LABEL_40:

              v46 = v65;
              goto LABEL_41;
            }

            v61 = [v60 count];
            v62 = @"BULLETIN_UNLOCK_ACTION_TITLE";
          }

          v65 = HMDLocalizedStringForKeyWithCount(v62, v61);
          v5 = v81;
          v55 = v83;
          v64 = 0x277CBE000uLL;
          goto LABEL_40;
        }
      }

      else
      {
      }

      v24 = [v22 objectForKeyedSubscript:v23];
      array2 = [MEMORY[0x277CBEB18] array];
      v89[0] = MEMORY[0x277D85DD0];
      v89[1] = 3221225472;
      v89[2] = __76__HMDBulletinBoardNotificationServiceGroup_actionContextForCameraProfileID___block_invoke_2;
      v89[3] = &unk_27866F790;
      v43 = array2;
      v90 = v43;
      [v24 hmf_enumerateWithAutoreleasePoolUsingBlock:v89];
      v44 = *MEMORY[0x277CFE7F8];
      v45 = HMDLocalizedStringForKeyWithCount(@"BULLETIN_LIGHTS_ACTION_TITLE", [v43 count]);
      v97[0] = @"itemType";
      v97[1] = @"identifier";
      v98[0] = @"SERVICE";
      v98[1] = v44;
      v76 = v43;
      v77 = v44;
      v97[2] = @"title";
      v97[3] = @"services.uuid";
      v75 = v45;
      v98[2] = v45;
      v98[3] = v43;
      v8 = 0x277CBE000uLL;
      v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:v97 count:4];
      [v7 addObject:?];
    }

    else
    {
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v77 = 0;
    }

    goto LABEL_26;
  }

  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543618;
    v102 = v16;
    v103 = 2112;
    v104 = dCopy;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Could not find the camera profile with unique id %@, not providing any context", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  v17 = 0;
LABEL_43:

  v72 = *MEMORY[0x277D85DE8];

  return v17;
}

void __76__HMDBulletinBoardNotificationServiceGroup_actionContextForCameraProfileID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = v3;
  v5 = [v3 serviceType];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    v7 = *(a1 + 32);
    v8 = [v9 serviceType];
    [v7 setObject:v6 forKeyedSubscript:v8];
  }

  [v6 addObject:v9];
}

void __76__HMDBulletinBoardNotificationServiceGroup_actionContextForCameraProfileID___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 contextSPIUniqueIdentifier];
  v3 = [v4 UUIDString];
  [v2 addObject:v3];
}

void __76__HMDBulletinBoardNotificationServiceGroup_actionContextForCameraProfileID___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 contextSPIUniqueIdentifier];
  v3 = [v4 UUIDString];
  [v2 addObject:v3];
}

void __76__HMDBulletinBoardNotificationServiceGroup_actionContextForCameraProfileID___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 contextSPIUniqueIdentifier];
  v3 = [v4 UUIDString];
  [v2 addObject:v3];
}

- (id)_cameraProfileWithID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  cameraProfiles = [(HMDBulletinBoardNotificationServiceGroup *)self cameraProfiles];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__HMDBulletinBoardNotificationServiceGroup__cameraProfileWithID___block_invoke;
  v15[3] = &unk_27866F740;
  v6 = dCopy;
  v16 = v6;
  v7 = [cameraProfiles indexOfObjectPassingTest:v15];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not find the camera profile with unique id %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = 0;
  }

  else
  {
    v12 = [cameraProfiles objectAtIndex:v7];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t __65__HMDBulletinBoardNotificationServiceGroup__cameraProfileWithID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
{
  v31 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  array = [MEMORY[0x277CBEB18] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  associatedServices = [(HMDBulletinBoardNotificationServiceGroup *)self associatedServices];
  v7 = [associatedServices countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(associatedServices);
        }

        v11 = [*(*(&v25 + 1) + 8 * i) description];
        [array addObject:v11];
      }

      v8 = [associatedServices countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v8);
  }

  [dictionary setObject:array forKeyedSubscript:*MEMORY[0x277D0F078]];
  array2 = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  cameraProfiles = [(HMDBulletinBoardNotificationServiceGroup *)self cameraProfiles];
  v14 = [cameraProfiles countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(cameraProfiles);
        }

        v18 = [*(*(&v21 + 1) + 8 * j) description];
        [array2 addObject:v18];
      }

      v15 = [cameraProfiles countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v15);
  }

  [dictionary setObject:array2 forKeyedSubscript:*MEMORY[0x277D0F068]];
  v19 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (NSArray)cameraProfiles
{
  os_unfair_lock_lock_with_options();
  allObjects = [(NSHashTable *)self->_cameraProfilesTable allObjects];
  os_unfair_lock_unlock(&self->_lock);

  return allObjects;
}

- (NSArray)associatedServices
{
  os_unfair_lock_lock_with_options();
  allObjects = [(NSHashTable *)self->_associatedServicesTable allObjects];
  os_unfair_lock_unlock(&self->_lock);

  return allObjects;
}

- (void)setAssociatedServicesTable:(id)table
{
  tableCopy = table;
  os_unfair_lock_lock_with_options();
  associatedServicesTable = self->_associatedServicesTable;
  self->_associatedServicesTable = tableCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSHashTable)associatedServicesTable
{
  os_unfair_lock_lock_with_options();
  v3 = self->_associatedServicesTable;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setCameraProfilesTable:(id)table
{
  tableCopy = table;
  os_unfair_lock_lock_with_options();
  cameraProfilesTable = self->_cameraProfilesTable;
  self->_cameraProfilesTable = tableCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSHashTable)cameraProfilesTable
{
  os_unfair_lock_lock_with_options();
  v3 = self->_cameraProfilesTable;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setAssociatedServiceUUIDs:(id)ds
{
  dsCopy = ds;
  os_unfair_lock_lock_with_options();
  v4 = [dsCopy copy];
  associatedServiceUUIDs = self->_associatedServiceUUIDs;
  self->_associatedServiceUUIDs = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSSet)associatedServiceUUIDs
{
  os_unfair_lock_lock_with_options();
  v3 = self->_associatedServiceUUIDs;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setCameraProfileUUIDs:(id)ds
{
  dsCopy = ds;
  os_unfair_lock_lock_with_options();
  v4 = [dsCopy copy];
  cameraProfileUUIDs = self->_cameraProfileUUIDs;
  self->_cameraProfileUUIDs = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSSet)cameraProfileUUIDs
{
  os_unfair_lock_lock_with_options();
  v3 = self->_cameraProfileUUIDs;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)_prepareServiceGroupPayload
{
  v11[2] = *MEMORY[0x277D85DE8];
  cameraProfileUUIDs = [(HMDBulletinBoardNotificationServiceGroup *)self cameraProfileUUIDs];
  allObjects = [cameraProfileUUIDs allObjects];

  associatedServiceUUIDs = [(HMDBulletinBoardNotificationServiceGroup *)self associatedServiceUUIDs];
  allObjects2 = [associatedServiceUUIDs allObjects];

  v10[0] = @"HM.BulletinBoardNotificationCameraProfiles";
  v10[1] = @"HM.BulletinBoardNotificationServices";
  v11[0] = allObjects;
  v11[1] = allObjects2;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)_updateAssociatedServicesTable:(id)table
{
  v17 = *MEMORY[0x277D85DE8];
  tableCopy = table;
  weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allValues = [tableCopy allValues];
  v7 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        [weakObjectsHashTable addObject:*(*(&v12 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(HMDBulletinBoardNotificationServiceGroup *)self setAssociatedServicesTable:weakObjectsHashTable];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)_updateAssociatedServices:(id)services associatedCameras:(id)cameras
{
  v63 = *MEMORY[0x277D85DE8];
  servicesCopy = services;
  camerasCopy = cameras;
  v8 = MEMORY[0x277CBEB98];
  allKeys = [camerasCopy allKeys];
  v10 = [v8 setWithArray:allKeys];

  v11 = MEMORY[0x277CBEB98];
  allKeys2 = [servicesCopy allKeys];
  v13 = [v11 setWithArray:allKeys2];

  associatedServiceUUIDs = [(HMDBulletinBoardNotificationServiceGroup *)self associatedServiceUUIDs];
  v15 = [associatedServiceUUIDs isEqualToSet:v13];

  v50 = servicesCopy;
  if (v15)
  {
    associatedServicesTable = [(HMDBulletinBoardNotificationServiceGroup *)self associatedServicesTable];
    v17 = [associatedServicesTable count];

    if (v17)
    {
      goto LABEL_8;
    }

    selfCopy = self;
  }

  else
  {
    [(HMDBulletinBoardNotificationServiceGroup *)self setAssociatedServiceUUIDs:v13];
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v60 = v22;
      v61 = 2112;
      v62 = v13;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Updating associated services with %@", buf, 0x16u);

      servicesCopy = v50;
    }

    objc_autoreleasePoolPop(v19);
    selfCopy = selfCopy2;
  }

  [(HMDBulletinBoardNotificationServiceGroup *)selfCopy _updateAssociatedServicesTable:servicesCopy];
LABEL_8:
  weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v49 = camerasCopy;
  allValues = [camerasCopy allValues];
  v25 = [allValues countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v55;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v55 != v27)
        {
          objc_enumerationMutation(allValues);
        }

        cameraProfile = [*(*(&v54 + 1) + 8 * i) cameraProfile];
        [weakObjectsHashTable addObject:cameraProfile];
      }

      v26 = [allValues countByEnumeratingWithState:&v54 objects:v58 count:16];
    }

    while (v26);
  }

  bulletinBoardNotification = [(HMDBulletinBoardNotificationServiceGroup *)self bulletinBoardNotification];
  cameraProfileUUIDs = [(HMDBulletinBoardNotificationServiceGroup *)self cameraProfileUUIDs];
  v32 = [cameraProfileUUIDs isEqualToSet:v10];

  if ((v32 & 1) == 0)
  {
    v40 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      v43 = HMFGetLogIdentifier();
      *buf = 138543618;
      v60 = v43;
      v61 = 2112;
      v62 = v10;
      _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_INFO, "%{public}@Updating associated cameras with %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v40);
    [(HMDBulletinBoardNotificationServiceGroup *)selfCopy3 setCameraProfileUUIDs:v10];
    [(HMDBulletinBoardNotificationServiceGroup *)selfCopy3 setCameraProfilesTable:weakObjectsHashTable];
    [bulletinBoardNotification updateRegistrations];
    v35 = v50;
    goto LABEL_25;
  }

  cameraProfilesTable = [(HMDBulletinBoardNotificationServiceGroup *)self cameraProfilesTable];
  v34 = HMFEqualObjects();

  if ((v34 & 1) == 0)
  {
    [(HMDBulletinBoardNotificationServiceGroup *)self setCameraProfilesTable:weakObjectsHashTable];
  }

  v35 = v50;
  if ((v15 & 1) == 0)
  {
LABEL_25:
    service = [bulletinBoardNotification service];
    accessory = [service accessory];
    home = [accessory home];

    [home saveWithReason:@"HMDBulletinBoardNotificationServiceGroupUpdatedSaveReason" postSyncNotification:0];
    accessoryBulletinNotificationManager = [home accessoryBulletinNotificationManager];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __88__HMDBulletinBoardNotificationServiceGroup__updateAssociatedServices_associatedCameras___block_invoke;
    v51[3] = &unk_278688D58;
    v51[4] = self;
    v52 = v13;
    v53 = v10;
    [accessoryBulletinNotificationManager updateServiceGroup:self completion:v51];

    goto LABEL_26;
  }

  v36 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v38 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    v39 = HMFGetLogIdentifier();
    *buf = 138543362;
    v60 = v39;
    _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_DEBUG, "%{public}@No change in service and camera associations", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v36);
LABEL_26:

  v48 = *MEMORY[0x277D85DE8];
}

void __88__HMDBulletinBoardNotificationServiceGroup__updateAssociatedServices_associatedCameras___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v18 = 138544130;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v10;
      v24 = 2112;
      v25 = v3;
      v11 = "%{public}@Error updating bulletin notification manager with associated services: %@ and cameras: %@, error: %@";
      v12 = v7;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 42;
LABEL_6:
      _os_log_impl(&dword_229538000, v12, v13, v11, &v18, v14);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    v18 = 138543874;
    v19 = v8;
    v20 = 2112;
    v21 = v15;
    v22 = 2112;
    v23 = v16;
    v11 = "%{public}@Updated bulletin notification manager with associated services: %@ and cameras: %@";
    v12 = v7;
    v13 = OS_LOG_TYPE_INFO;
    v14 = 32;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  v17 = *MEMORY[0x277D85DE8];
}

- (void)_configureServices
{
  selfCopy = self;
  v110[1] = *MEMORY[0x277D85DE8];
  bulletinBoardNotification = [(HMDBulletinBoardNotificationServiceGroup *)self bulletinBoardNotification];
  service = [bulletinBoardNotification service];

  accessory = [service accessory];
  room = [accessory room];

  if (room)
  {
    home = [room home];
    if (home)
    {
      accessory2 = [service accessory];
      if (accessory2)
      {
        [home hapAccessories];
        v70 = room;
        v71 = service;
        v72 = v69 = home;
        if ([(HMDBulletinBoardNotificationServiceGroup *)selfCopy _isDefaultRoom:room ofHome:home])
        {
          v110[0] = accessory2;
          v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v110 count:1];
        }

        else
        {
          v9 = [(HMDBulletinBoardNotificationServiceGroup *)selfCopy _accessoriesInRoom:room ofHome:home];
        }

        v25 = v9;
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        v68 = accessory2;
        v67 = [(HMDBulletinBoardNotificationServiceGroup *)selfCopy _cameraNotificationGeneratingServicesForAccessory:accessory2];
        v96 = 0u;
        v97 = 0u;
        v98 = 0u;
        v99 = 0u;
        obj = v25;
        v81 = dictionary;
        v77 = [obj countByEnumeratingWithState:&v96 objects:v109 count:16];
        if (v77)
        {
          v75 = *v97;
          do
          {
            v27 = 0;
            do
            {
              if (*v97 != v75)
              {
                objc_enumerationMutation(obj);
              }

              v79 = v27;
              v28 = *(*(&v96 + 1) + 8 * v27);
              v92 = 0u;
              v93 = 0u;
              v94 = 0u;
              v95 = 0u;
              services = [v28 services];
              v30 = [services countByEnumeratingWithState:&v92 objects:v108 count:16];
              if (v30)
              {
                v31 = v30;
                v32 = *v93;
                do
                {
                  v33 = 0;
                  v82 = v31;
                  do
                  {
                    if (*v93 != v32)
                    {
                      objc_enumerationMutation(services);
                    }

                    v34 = *(*(&v92 + 1) + 8 * v33);
                    if ([(HMDBulletinBoardNotificationServiceGroup *)selfCopy _isSupportedAssociationService:v34])
                    {
                      v35 = objc_autoreleasePoolPush();
                      v36 = selfCopy;
                      v37 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
                      {
                        HMFGetLogIdentifier();
                        v38 = v32;
                        v39 = selfCopy;
                        v41 = v40 = services;
                        serviceType = [v34 serviceType];
                        *buf = 138543874;
                        v103 = v41;
                        v104 = 2112;
                        v105 = v34;
                        v106 = 2112;
                        v107 = serviceType;
                        _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_DEBUG, "%{public}@Service %@ with type %@ is a supported service for association", buf, 0x20u);

                        dictionary = v81;
                        services = v40;
                        selfCopy = v39;
                        v32 = v38;
                        v31 = v82;
                      }

                      objc_autoreleasePoolPop(v35);
                      serviceIdentifier = [v34 serviceIdentifier];
                      [dictionary setObject:v34 forKeyedSubscript:serviceIdentifier];
                    }

                    ++v33;
                  }

                  while (v31 != v33);
                  v31 = [services countByEnumeratingWithState:&v92 objects:v108 count:16];
                }

                while (v31);
              }

              v27 = v79 + 1;
            }

            while (v79 + 1 != v77);
            v77 = [obj countByEnumeratingWithState:&v96 objects:v109 count:16];
          }

          while (v77);
        }

        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v73 = v72;
        v78 = [v73 countByEnumeratingWithState:&v88 objects:v101 count:16];
        if (v78)
        {
          v76 = *v89;
          do
          {
            v44 = 0;
            do
            {
              if (*v89 != v76)
              {
                objc_enumerationMutation(v73);
              }

              v80 = v44;
              v45 = *(*(&v88 + 1) + 8 * v44);
              v84 = 0u;
              v85 = 0u;
              v86 = 0u;
              v87 = 0u;
              services2 = [v45 services];
              v46 = [services2 countByEnumeratingWithState:&v84 objects:v100 count:16];
              if (v46)
              {
                v47 = v46;
                v48 = *v85;
                do
                {
                  for (i = 0; i != v47; ++i)
                  {
                    if (*v85 != v48)
                    {
                      objc_enumerationMutation(services2);
                    }

                    v50 = *(*(&v84 + 1) + 8 * i);
                    if ([(HMDBulletinBoardNotificationServiceGroup *)selfCopy _isAlarmService:v50])
                    {
                      v51 = objc_autoreleasePoolPush();
                      v52 = selfCopy;
                      v53 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
                      {
                        v54 = HMFGetLogIdentifier();
                        serviceType2 = [v50 serviceType];
                        *buf = 138543874;
                        v103 = v54;
                        v104 = 2112;
                        v105 = v50;
                        v106 = 2112;
                        v107 = serviceType2;
                        _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_DEBUG, "%{public}@Service %@ with type %@ contains an alarm system, adding it to association", buf, 0x20u);

                        dictionary = v81;
                      }

                      objc_autoreleasePoolPop(v51);
                      serviceIdentifier2 = [v50 serviceIdentifier];
                      [dictionary setObject:v50 forKeyedSubscript:serviceIdentifier2];
                    }
                  }

                  v47 = [services2 countByEnumeratingWithState:&v84 objects:v100 count:16];
                }

                while (v47);
              }

              v44 = v80 + 1;
            }

            while (v80 + 1 != v78);
            v78 = [v73 countByEnumeratingWithState:&v88 objects:v101 count:16];
          }

          while (v78);
        }

        v57 = objc_autoreleasePoolPush();
        v58 = selfCopy;
        v59 = HMFGetOSLogHandle();
        v60 = v67;
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          v61 = HMFGetLogIdentifier();
          *buf = 138543618;
          v103 = v61;
          v104 = 2112;
          v105 = v67;
          _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_DEBUG, "%{public}@Configuring with camera notification services: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v57);
        service = v71;
        if ([v67 count])
        {
          v62 = v58;
          v63 = dictionary;
          v64 = v67;
        }

        else
        {
          v63 = MEMORY[0x277CBEC10];
          v62 = v58;
          v64 = MEMORY[0x277CBEC10];
        }

        [(HMDBulletinBoardNotificationServiceGroup *)v62 _updateAssociatedServices:v63 associatedCameras:v64, v67];
        v65 = dictionary;
        v15 = v69;
        v10 = v70;
        v20 = v68;
      }

      else
      {
        v20 = 0;
        v15 = home;
        v10 = room;
        v21 = objc_autoreleasePoolPush();
        v22 = selfCopy;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = HMFGetLogIdentifier();
          *buf = 138543362;
          v103 = v24;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@No accessory, bailing out", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v21);
      }
    }

    else
    {
      v15 = 0;
      v10 = room;
      v16 = objc_autoreleasePoolPush();
      v17 = selfCopy;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v103 = v19;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@No home, bailing out", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
    }
  }

  else
  {
    v10 = 0;
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v103 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@No room, bailing out", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  v66 = *MEMORY[0x277D85DE8];
}

- (id)_cameraNotificationGeneratingServicesForAccessory:(id)accessory
{
  v41 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = accessoryCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    [v8 cameraProfiles];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v38 = 0u;
    v30 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v30)
    {
      v26 = v6;
      v9 = 0;
      v28 = *v36;
      v29 = dictionary;
      do
      {
        v10 = 0;
        v11 = v9;
        do
        {
          if (*v36 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v35 + 1) + 8 * v10);
          v9 = [[HMDBulletinBoardCameraNotificationAssociation alloc] initWithCameraProfile:v12];

          uniqueIdentifier = [v12 uniqueIdentifier];
          uUIDString = [uniqueIdentifier UUIDString];
          [dictionary setObject:v9 forKeyedSubscript:uUIDString];

          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v15 = v8;
          services = [v8 services];
          v17 = [services countByEnumeratingWithState:&v31 objects:v39 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v32;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v32 != v19)
                {
                  objc_enumerationMutation(services);
                }

                v21 = *(*(&v31 + 1) + 8 * i);
                if ([(HMDBulletinBoardNotificationServiceGroup *)self _isNotificationGeneratingService:v21])
                {
                  notificationGeneratingServicesWithCamera = [(HMDBulletinBoardCameraNotificationAssociation *)v9 notificationGeneratingServicesWithCamera];
                  [notificationGeneratingServicesWithCamera addObject:v21];
                }
              }

              v18 = [services countByEnumeratingWithState:&v31 objects:v39 count:16];
            }

            while (v18);
          }

          ++v10;
          v11 = v9;
          dictionary = v29;
          v8 = v15;
        }

        while (v10 != v30);
        v30 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v30);

      v6 = v26;
    }

    v23 = [dictionary copy];
  }

  else
  {
    v23 = dictionary;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)_accessoriesInRoom:(id)room ofHome:(id)home
{
  v27 = *MEMORY[0x277D85DE8];
  roomCopy = room;
  homeCopy = home;
  [MEMORY[0x277CBEB18] array];
  v21 = v20 = homeCopy;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  hapAccessories = [homeCopy hapAccessories];
  v8 = [hapAccessories countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(hapAccessories);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        room = [v12 room];
        uuid = [room uuid];
        uuid2 = [roomCopy uuid];
        v16 = [uuid isEqual:uuid2];

        if (v16)
        {
          [v21 addObject:v12];
        }
      }

      v9 = [hapAccessories countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  v17 = [v21 copy];
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (BOOL)_isDefaultRoom:(id)room ofHome:(id)home
{
  homeCopy = home;
  uuid = [room uuid];
  roomForEntireHome = [homeCopy roomForEntireHome];

  uuid2 = [roomForEntireHome uuid];
  v9 = [uuid isEqual:uuid2];

  return v9;
}

- (void)configureBulletinNotification
{
  v13 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDBulletinBoardNotificationServiceGroup *)self workQueue];

  if (workQueue)
  {
    workQueue2 = [(HMDBulletinBoardNotificationServiceGroup *)self workQueue];
    dispatch_assert_queue_V2(workQueue2);

    v5 = *MEMORY[0x277D85DE8];

    [(HMDBulletinBoardNotificationServiceGroup *)self _configureServices];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@configureBulletinNotification called before configure", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = *MEMORY[0x277D85DE8];
  }
}

- (BOOL)_isNotificationGeneratingService:(id)service
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CFE8D8];
  v10[0] = *MEMORY[0x277CFE840];
  v10[1] = v3;
  v4 = MEMORY[0x277CBEA60];
  serviceCopy = service;
  v6 = [v4 arrayWithObjects:v10 count:2];
  serviceType = [serviceCopy serviceType];

  LOBYTE(v4) = [v6 containsObject:serviceType];
  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)_isAlarmService:(id)service
{
  v3 = [service findCharacteristicWithType:*MEMORY[0x277CFE6D0]];

  return v3 != 0;
}

- (BOOL)_isSupportedAssociationService:(id)service
{
  v11[4] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CFE838];
  v11[0] = *MEMORY[0x277CFE878];
  v11[1] = v3;
  v4 = *MEMORY[0x277CFE880];
  v11[2] = *MEMORY[0x277CFE858];
  v11[3] = v4;
  v5 = MEMORY[0x277CBEA60];
  serviceCopy = service;
  v7 = [v5 arrayWithObjects:v11 count:4];
  serviceType = [serviceCopy serviceType];

  LOBYTE(v5) = [v7 containsObject:serviceType];
  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)_handleBulletinBoardNotificationServiceGroupRequest:(id)request
{
  v17 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  responseHandler = [requestCopy responseHandler];

  if (responseHandler)
  {
    _prepareServiceGroupPayload = [(HMDBulletinBoardNotificationServiceGroup *)self _prepareServiceGroupPayload];
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = _prepareServiceGroupPayload;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Responding to a request for notification service group with payload %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    responseHandler2 = [requestCopy responseHandler];
    (responseHandler2)[2](responseHandler2, 0, _prepareServiceGroupPayload);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)configureWithWorkQueue:(id)queue
{
  queueCopy = queue;
  if (queueCopy)
  {
    v8 = queueCopy;
    [(HMDBulletinBoardNotificationServiceGroup *)self setWorkQueue:queueCopy];
  }

  else
  {
    v5 = _HMFPreconditionFailure();
    [(HMDBulletinBoardNotificationServiceGroup *)v5 initWithBulletinBoardNotification:v6, v7];
  }
}

- (HMDBulletinBoardNotificationServiceGroup)initWithBulletinBoardNotification:(id)notification
{
  notificationCopy = notification;
  v16.receiver = self;
  v16.super_class = HMDBulletinBoardNotificationServiceGroup;
  v5 = [(HMDBulletinBoardNotificationServiceGroup *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_bulletinBoardNotification, notificationCopy);
    v7 = [MEMORY[0x277CBEB98] set];
    cameraProfileUUIDs = v6->_cameraProfileUUIDs;
    v6->_cameraProfileUUIDs = v7;

    v9 = [MEMORY[0x277CBEB98] set];
    associatedServiceUUIDs = v6->_associatedServiceUUIDs;
    v6->_associatedServiceUUIDs = v9;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    cameraProfilesTable = v6->_cameraProfilesTable;
    v6->_cameraProfilesTable = weakObjectsHashTable;

    weakObjectsHashTable2 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    associatedServicesTable = v6->_associatedServicesTable;
    v6->_associatedServicesTable = weakObjectsHashTable2;
  }

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t26_14103 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t26_14103, &__block_literal_global_14104);
  }

  v3 = logCategory__hmf_once_v27_14105;

  return v3;
}

void __55__HMDBulletinBoardNotificationServiceGroup_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v27_14105;
  logCategory__hmf_once_v27_14105 = v1;
}

@end