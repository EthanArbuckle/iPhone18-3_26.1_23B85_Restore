@interface HMDNotificationRegistryCoreDataAdapter
+ (id)logCategory;
- (BOOL)_deleteAllCharacteristicRegistrationsWithContext:(id)a3;
- (BOOL)_deleteAllMKFRegistrationsForActionSetUUID:(id)a3 hmcContext:(id)a4;
- (BOOL)_deleteAllMKFRegistrationsForMediaProfileUUID:(id)a3 withMediaProperty:(id)a4 hmcContext:(id)a5;
- (BOOL)_deleteAllRegistrationsForCharacteristicIIDs:(id)a3 withAccessoryUUID:(id)a4 hmcContext:(id)a5;
- (BOOL)_deleteAllRegistrationsWithEntityName:(id)a3 withHomeKeypath:(id)a4 hmcContext:(id)a5;
- (BOOL)_disableRegistration:(id)a3;
- (BOOL)_enableRegistration:(id)a3;
- (BOOL)_insertNotificationRegistrationForCharacteristic:(id)a3 notificationThreshold:(id)a4 deviceIdsDestination:(id)a5 homeMember:(id)a6 mkfCharacteristic:(id)a7 context:(id)a8;
- (BOOL)_insertNotificationRegistrationForMKFActionSet:(id)a3 deviceIdsDestination:(id)a4 homeMember:(id)a5 context:(id)a6;
- (BOOL)_insertNotificationRegistrationForMediaProperty:(id)a3 mediaProfile:(id)a4 deviceIdsDestination:(id)a5 homeMember:(id)a6 accessory:(id)a7 context:(id)a8;
- (BOOL)_updateThresholdRegistration:(id)a3 threshold:(id)a4;
- (BOOL)disableNotificationForActionSetUUID:(id)a3 user:(id)a4 deviceIdsDestination:(id)a5;
- (BOOL)disableNotificationForMediaProfile:(id)a3 mediaProperties:(id)a4 user:(id)a5 deviceIdsDestination:(id)a6;
- (BOOL)enableNotificationForActionSetUUID:(id)a3 user:(id)a4 deviceIdsDestination:(id)a5;
- (BOOL)enableNotificationForMediaProfile:(id)a3 mediaProperties:(id)a4 user:(id)a5 deviceIdsDestination:(id)a6;
- (BOOL)enableNotificationsForCharacteristics:(id)a3 user:(id)a4 deviceIdsDestination:(id)a5;
- (BOOL)hasEnabledRegistrationForActionSetUUID:(id)a3;
- (BOOL)removeRegistrationsForActionSetUUID:(id)a3;
- (BOOL)removeRegistrationsForMediaProfile:(id)a3;
- (HMDHome)home;
- (HMDNotificationRegistryCoreDataAdapter)initWithHome:(id)a3;
- (NSSet)actionSetRegistrations;
- (NSSet)mediaRegistrations;
- (id)_characteristicRegistrationsIncludeEnabled:(BOOL)a3 includeDisabled:(BOOL)a4;
- (id)_fetchEnabledMKFRegistrationsForActionSetUUID:(id)a3 context:(id)a4;
- (id)_fetchEnabledMKFRegistrationsForHMDCharacteristic:(id)a3 exceedingChangeThresholdForCurrentValue:(id)a4 context:(id)a5;
- (id)_fetchEnabledMKFRegistrationsForHMDCharacteristics:(id)a3 context:(id)a4;
- (id)_fetchEnabledMKFRegistrationsForMediaProfileUUID:(id)a3 withMediaProperty:(id)a4 context:(id)a5;
- (id)_fetchMKFActionSetWithUUID:(id)a3 context:(id)a4;
- (id)_fetchMKFCharacteristicsFromHMDCharacteristics:(id)a3 context:(id)a4;
- (id)_fetchMKFHAPAccessoryWithUUID:(id)a3 context:(id)a4;
- (id)_fetchMKFRegistrationsWithUserUUID:(id)a3 actionSetUUID:(id)a4 deviceIdsDestination:(id)a5 prefetchPaths:(id)a6 isRestrictedGuest:(BOOL)a7 context:(id)a8;
- (id)_fetchMKFRegistrationsWithUserUUID:(id)a3 withCharacteristicIIDs:(id)a4 withAccessoryUUID:(id)a5 withDeviceIdsDestination:(id)a6 withPrefetchPaths:(id)a7 isRestrictedGuest:(BOOL)a8 context:(id)a9;
- (id)_fetchMKFRegistrationsWithUserUUID:(id)a3 withCharacteristicIIDs:(id)a4 withAccessoryUUIDs:(id)a5 withDeviceIdsDestination:(id)a6 withPrefetchPaths:(id)a7 isRestrictedGuest:(BOOL)a8 context:(id)a9;
- (id)_fetchMKFRegistrationsWithUserUUID:(id)a3 withMediaProfileUUID:(id)a4 withMediaPropertyIn:(id)a5 withDeviceIdsDestination:(id)a6 withAccessoryUUID:(id)a7 withPrefetchPaths:(id)a8 isRestrictedGuest:(BOOL)a9 context:(id)a10;
- (id)_fetchMKFUserAndRegistrationsWithUserUUID:(id)a3 withMediaProfileUUID:(id)a4 withMediaPropertyIn:(id)a5 withDeviceIdsDestination:(id)a6 withAccessoryUUID:(id)a7 withPrefetchPaths:(id)a8 isRestrictedGuest:(BOOL)a9 outHomeMember:(id *)a10 context:(id)a11;
- (id)_fetchRequestForActionSetRegistrationsWithoutAllowedDestinations:(id)a3;
- (id)_fetchRequestForAllActionSetRegistrations;
- (id)_fetchRequestForAllMediaProfileRegistrations;
- (id)_fetchRequestForCharacteristicRegistrationsWithoutAllowedDestinations:(id)a3;
- (id)_fetchRequestForMediaProfileRegistrationsWithoutAllowedDestinations:(id)a3;
- (id)_filterCharacteristicRegistrations:(id)a3 home:(id)a4;
- (id)_processDisableCharacteristicsRequest:(id)a3 registrationsForAccessory:(id)a4 context:(id)a5;
- (id)_processEnableCharacteristicsRequest:(id)a3 homeMember:(id)a4 registrationsForAccessory:(id)a5 context:(id)a6;
- (id)_processGroupedCharacteristicsRequests:(id)a3 user:(id)a4 destination:(id)a5 context:(id)a6;
- (id)_registrationsForCharacteristicIID:(id)a3 exceedingChangeThresholdForCurrentValue:(id)a4 accessoryUUID:(id)a5 moc:(id)a6 error:(id *)a7;
- (id)_registrationsForCharacteristicIIDs:(id)a3 accessoryUUID:(id)a4 moc:(id)a5 error:(id *)a6;
- (id)_requestToFetchMKFRegistrationsWithActionSetUUID:(id)a3 context:(id)a4;
- (id)_requestToFetchMKFRegistrationsWithMediaProfileUUID:(id)a3 withMediaProperty:(id)a4 context:(id)a5;
- (id)characteristicIIDsByAccessoryUUIDForEnabledRegistrationsForDestination:(id)a3;
- (id)destinationsToNotifyForActionSetUUID:(id)a3;
- (id)destinationsToNotifyForCharacteristic:(id)a3 applyChangeThresholding:(BOOL)a4;
- (id)destinationsToNotifyForMediaPropertyResponse:(id)a3;
- (id)destinationsWithEnabledCharacteristicRegistrations;
- (id)disableAllActionSetRegistrations;
- (id)disableAllMediaProfileRegistrations;
- (id)disableNotificationForCharacteristics:(id)a3 user:(id)a4 deviceIdsDestination:(id)a5;
- (id)homeMemberForRegistrations:(id)a3 userUUID:(id)a4 isRestrictedGuest:(BOOL)a5 context:(id)a6;
- (id)mediaPropertiesRegisteredForMediaProfileUniqueIdentifier:(id)a3;
- (id)processCharacteristicsRequests:(id)a3;
- (id)removeActionSetRegistrationsWithoutAllowedDestinations:(id)a3;
- (id)removeAllActionSetRegistrations;
- (id)removeAllMediaProfileRegistrations;
- (id)removeCharacteristicRegistrationsWithoutAllowedDestinations:(id)a3;
- (id)removeMediaRegistrationsWithoutAllowedDestinations:(id)a3;
- (id)shortDescription;
- (void)disableAllCharacteristicRegistrations;
- (void)removeAllCharacteristicRegistrations;
- (void)removeRegistrationsForCharacteristics:(id)a3;
@end

@implementation HMDNotificationRegistryCoreDataAdapter

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)shortDescription
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  v5 = [v4 backingStore];
  v6 = [v5 context];

  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __58__HMDNotificationRegistryCoreDataAdapter_shortDescription__block_invoke;
  v14 = &unk_27868A750;
  v15 = v4;
  v16 = v3;
  v7 = v3;
  v8 = v4;
  [v6 unsafeSynchronousBlock:&v11];
  v9 = [v7 shortDescription];

  return v9;
}

void __58__HMDNotificationRegistryCoreDataAdapter_shortDescription__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) uuid];
  v3 = [HMCContext findHomeWithModelID:v2];

  v4 = [v3 users];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__HMDNotificationRegistryCoreDataAdapter_shortDescription__block_invoke_2;
  v5[3] = &unk_278684D48;
  v6 = *(a1 + 40);
  [v4 na_each:v5];
}

void __58__HMDNotificationRegistryCoreDataAdapter_shortDescription__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 notificationRegistrations];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__HMDNotificationRegistryCoreDataAdapter_shortDescription__block_invoke_3;
  v4[3] = &unk_278684D20;
  v5 = *(a1 + 32);
  [v3 na_each:v4];
}

void __58__HMDNotificationRegistryCoreDataAdapter_shortDescription__block_invoke_3(uint64_t a1, void *a2)
{
  v30 = a2;
  v3 = [v30 castIfNotificationRegistrationCharacteristic];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 enabled];
    v6 = [v5 BOOLValue];

    if (v6)
    {
      v7 = [v4 characteristic];
      v8 = MEMORY[0x277CCACA8];
      v9 = [v7 service];
      v10 = [v9 accessory];
      v11 = [v10 modelID];
      v12 = [v7 instanceID];
      v13 = [v8 stringWithFormat:@"%@:%@", v11, v12];

      v15 = *(a1 + 32);
      v14 = (a1 + 32);
      v16 = [v15 objectForKeyedSubscript:v13];
      if (v16)
      {
        v17 = v16;
        v18 = v4;
LABEL_12:
        v27 = [v18 deviceIdsDestination];
        v28 = [v18 lastModified];
        v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ - %@", v27, v28];
        [v17 addObject:v29];

        v18 = v7;
        goto LABEL_13;
      }

      v18 = v4;
      goto LABEL_11;
    }
  }

  v19 = [v30 castIfNotificationRegistrationMediaProperty];
  v18 = v19;
  if (v19)
  {
    v20 = [v19 enabled];
    v21 = [v20 BOOLValue];

    if (v21)
    {
      v22 = MEMORY[0x277CCACA8];
      v23 = [v18 mediaProfileIdentifier];
      v24 = [v18 mediaProperty];
      v13 = [v22 stringWithFormat:@"%@:%@", v23, v24];

      v25 = *(a1 + 32);
      v14 = (a1 + 32);
      v26 = [v25 objectForKeyedSubscript:v13];
      if (v26)
      {
        v17 = v26;
        v7 = v18;
        goto LABEL_12;
      }

      v7 = v18;
LABEL_11:
      v17 = [MEMORY[0x277CBEB58] set];
      [*v14 setObject:v17 forKeyedSubscript:v13];
      goto LABEL_12;
    }
  }

LABEL_13:
}

- (BOOL)_insertNotificationRegistrationForMKFActionSet:(id)a3 deviceIdsDestination:(id)a4 homeMember:(id)a5 context:(id)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v13 managedObjectContext];
  [v14 hmd_assertIsExecuting];

  v15 = [v12 castIfMemberIsUser];
  if (v15)
  {
    v16 = [MEMORY[0x277CCAD78] UUID];
    v17 = [v15 createNotificationRegistrationsRelationOfTypeNotificationRegistrationActionSetWithModelID:v16];
  }

  else
  {
    v18 = [v12 castIfMemberIsGuest];
    v16 = [v18 castIfGuest];

    if (!v16)
    {
      goto LABEL_7;
    }

    v19 = [MEMORY[0x277CCAD78] UUID];
    v17 = [v16 createNotificationRegistrationsRelationOfTypeNotificationRegistrationActionSetWithModelID:v19];
  }

  if (v17)
  {
    [v17 setActionSet:v10];
    [v17 setDeviceIdsDestination:v11];
    v20 = [MEMORY[0x277CBEAA8] now];
    [v17 setLastModified:v20];

    v21 = 1;
    goto LABEL_10;
  }

LABEL_7:
  v22 = objc_autoreleasePoolPush();
  v23 = self;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = HMFGetLogIdentifier();
    v28 = 138544130;
    v29 = v25;
    v30 = 2112;
    v31 = v11;
    v32 = 2112;
    v33 = v12;
    v34 = 2112;
    v35 = v10;
    _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to create notification registration for deviceIdsDestination %@ homeMember %@ mkfActionSet %@", &v28, 0x2Au);
  }

  objc_autoreleasePoolPop(v22);
  v21 = 0;
  v17 = 0;
LABEL_10:

  v26 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)_insertNotificationRegistrationForMediaProperty:(id)a3 mediaProfile:(id)a4 deviceIdsDestination:(id)a5 homeMember:(id)a6 accessory:(id)a7 context:(id)a8
{
  v52 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v39 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [v18 managedObjectContext];
  [v19 hmd_assertIsExecuting];

  v20 = [v16 castIfMemberIsUser];
  v21 = [v20 castIfUser];

  if (v21)
  {
    v22 = [MEMORY[0x277CCAD78] UUID];
    v23 = [v21 createNotificationRegistrationsRelationOfTypeNotificationRegistrationMediaPropertyWithModelID:v22];
  }

  else
  {
    v24 = [v16 castIfMemberIsGuest];
    v22 = [v24 castIfGuest];

    if (!v22)
    {
      goto LABEL_7;
    }

    [MEMORY[0x277CCAD78] UUID];
    v26 = v25 = self;
    v23 = [v22 createNotificationRegistrationsRelationOfTypeNotificationRegistrationMediaPropertyWithModelID:v26];

    self = v25;
  }

  if (v23)
  {
    [v23 setMediaProperty:v14];
    [v15 uniqueIdentifier];
    v27 = v15;
    v29 = v28 = v14;
    [v23 setMediaProfileIdentifier:v29];

    [v23 setAccessory:v17];
    v30 = v39;
    [v23 setDeviceIdsDestination:v39];
    v31 = [MEMORY[0x277CBEAA8] now];
    [v23 setLastModified:v31];

    v32 = 1;
    goto LABEL_10;
  }

LABEL_7:
  v27 = v15;
  v28 = v14;
  v33 = objc_autoreleasePoolPush();
  v34 = self;
  v35 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    v36 = HMFGetLogIdentifier();
    *buf = 138544642;
    v41 = v36;
    v42 = 2112;
    v43 = v28;
    v44 = 2112;
    v45 = v27;
    v46 = 2112;
    v47 = v39;
    v48 = 2112;
    v49 = v16;
    v50 = 2112;
    v51 = v17;
    _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Failed to create notification registration for media property %@ media profile %@ deviceIdsDestination %@ homeMember %@ mkfAccessory %@", buf, 0x3Eu);
  }

  objc_autoreleasePoolPop(v33);
  v32 = 0;
  v23 = 0;
  v30 = v39;
LABEL_10:

  v37 = *MEMORY[0x277D85DE8];
  return v32;
}

- (BOOL)_insertNotificationRegistrationForCharacteristic:(id)a3 notificationThreshold:(id)a4 deviceIdsDestination:(id)a5 homeMember:(id)a6 mkfCharacteristic:(id)a7 context:(id)a8
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [a8 managedObjectContext];
  [v16 hmd_assertIsExecuting];

  v17 = [v14 castIfMemberIsUser];
  v18 = [v17 castIfUser];

  if (v18)
  {
    v19 = [MEMORY[0x277CCAD78] UUID];
    v20 = [v18 createNotificationRegistrationsRelationOfTypeNotificationRegistrationCharacteristicWithModelID:v19];
  }

  else
  {
    v21 = [v14 castIfMemberIsGuest];
    v19 = [v21 castIfGuest];

    v22 = [MEMORY[0x277CCAD78] UUID];
    v20 = [v19 createNotificationRegistrationsRelationOfTypeNotificationRegistrationCharacteristicWithModelID:v22];
  }

  if (v20)
  {
    [v20 setCharacteristic:v15];
    [v20 setNotificationThreshold:v12];
    [v20 setDeviceIdsDestination:v13];
    v23 = [MEMORY[0x277CBEAA8] now];
    [v20 setLastModified:v23];

    [v20 setEnabled:MEMORY[0x277CBEC38]];
  }

  return v20 != 0;
}

- (BOOL)_updateThresholdRegistration:(id)a3 threshold:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 notificationThreshold];
  v8 = HMFEqualObjects();

  if ((v8 & 1) == 0)
  {
    [v5 setNotificationThreshold:v6];
    [v5 setLastNotifiedValue:0];
  }

  return v8 ^ 1;
}

- (BOOL)_disableRegistration:(id)a3
{
  v3 = a3;
  v4 = [v3 enabled];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    [v3 setEnabled:MEMORY[0x277CBEC28]];
    v6 = [MEMORY[0x277CBEAA8] now];
    [v3 setLastModified:v6];
  }

  return v5;
}

- (BOOL)_enableRegistration:(id)a3
{
  v3 = a3;
  v4 = [v3 enabled];
  v5 = [v4 BOOLValue];

  if ((v5 & 1) == 0)
  {
    [v3 setEnabled:MEMORY[0x277CBEC38]];
    v6 = [MEMORY[0x277CBEAA8] now];
    [v3 setLastModified:v6];
  }

  return v5 ^ 1;
}

- (NSSet)actionSetRegistrations
{
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  v5 = [v4 backingStore];
  v6 = [v5 context];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__HMDNotificationRegistryCoreDataAdapter_actionSetRegistrations__block_invoke;
  v11[3] = &unk_27868A010;
  v11[4] = self;
  v12 = v6;
  v13 = v3;
  v7 = v3;
  v8 = v6;
  [v8 unsafeSynchronousBlock:v11];
  v9 = [v7 copy];

  return v9;
}

void __64__HMDNotificationRegistryCoreDataAdapter_actionSetRegistrations__block_invoke(id *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] _fetchRequestForAllActionSetRegistrations];
  v3 = [a1[5] managedObjectContext];
  v16 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v16];
  v5 = v16;

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = a1[4];
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v9;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch all action set notification registrations, error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __64__HMDNotificationRegistryCoreDataAdapter_actionSetRegistrations__block_invoke_367;
  v14 = &unk_278684CF8;
  v15 = a1[6];
  [v4 na_each:&v11];
  [a1[5] reset];

  v10 = *MEMORY[0x277D85DE8];
}

void __64__HMDNotificationRegistryCoreDataAdapter_actionSetRegistrations__block_invoke_367(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [v14 user];
  v4 = [v3 modelID];

  if (!v4)
  {
    v5 = [v14 guest];
    v4 = [v5 modelID];
  }

  v6 = *(a1 + 32);
  v7 = [HMDActionSetNotificationRegistration alloc];
  v8 = [v14 actionSet];
  v9 = [v8 modelID];
  v10 = [v14 deviceIdsDestination];
  v11 = [v14 lastModified];
  v12 = [v14 enabled];
  v13 = -[HMDActionSetNotificationRegistration initWithActionSetUUID:deviceIdsDestination:userUUID:lastModified:enabled:](v7, "initWithActionSetUUID:deviceIdsDestination:userUUID:lastModified:enabled:", v9, v10, v4, v11, [v12 BOOLValue]);
  [v6 addObject:v13];
}

- (BOOL)hasEnabledRegistrationForActionSetUUID:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v5 = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  v6 = [v5 backingStore];
  v7 = [v6 context];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__HMDNotificationRegistryCoreDataAdapter_hasEnabledRegistrationForActionSetUUID___block_invoke;
  v11[3] = &unk_278689D20;
  v8 = v7;
  v12 = v8;
  v13 = self;
  v9 = v4;
  v14 = v9;
  v15 = &v16;
  [v8 unsafeSynchronousBlock:v11];
  LOBYTE(v4) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v4;
}

void __81__HMDNotificationRegistryCoreDataAdapter_hasEnabledRegistrationForActionSetUUID___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [*(a1 + 40) _fetchEnabledMKFRegistrationsForActionSetUUID:*(a1 + 48) context:v2];
  v4 = v3;
  if (v3)
  {
    *(*(*(a1 + 56) + 8) + 24) = [v3 count] != 0;
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 40);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 48);
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch notification registrations for action set uuid %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  [*(a1 + 32) reset];

  v10 = *MEMORY[0x277D85DE8];
}

- (id)disableAllActionSetRegistrations
{
  v3 = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  v4 = [v3 backingStore];
  v5 = [v4 context];

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__246802;
  v21 = __Block_byref_object_dispose__246803;
  v22 = 0;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __74__HMDNotificationRegistryCoreDataAdapter_disableAllActionSetRegistrations__block_invoke;
  v12 = &unk_2786869D8;
  v6 = v5;
  v13 = v6;
  v14 = self;
  v15 = &v17;
  v16 = &v23;
  [v6 unsafeSynchronousBlock:&v9];
  if (v24[3])
  {
    [MEMORY[0x277CBEB98] setWithArray:{v18[5], v9, v10, v11, v12}];
  }

  else
  {
    [MEMORY[0x277CBEB98] set];
  }
  v7 = ;

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v7;
}

void __74__HMDNotificationRegistryCoreDataAdapter_disableAllActionSetRegistrations__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [*(a1 + 40) _fetchRequestForAllActionSetRegistrations];
  v23 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v23];
  v5 = v23;
  if (v4)
  {
    v6 = [v4 na_map:&__block_literal_global_366];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    *v28 = 0;
    *&v28[8] = v28;
    *&v28[16] = 0x2020000000;
    v29 = 0;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __74__HMDNotificationRegistryCoreDataAdapter_disableAllActionSetRegistrations__block_invoke_2;
    v22[3] = &unk_278684C70;
    v22[4] = *(a1 + 40);
    v22[5] = v28;
    [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v22];
    if (*(*&v28[8] + 24) == 1 && [v2 hasChanges])
    {
      v9 = *(a1 + 32);
      v21 = v5;
      v10 = [v9 save:&v21];
      v11 = v21;

      *(*(*(a1 + 56) + 8) + 24) = v10;
      if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
      {
        v12 = objc_autoreleasePoolPush();
        v13 = *(a1 + 40);
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = HMFGetLogIdentifier();
          *buf = 138543618;
          v25 = v15;
          v26 = 2112;
          v27 = v11;
          _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unable to remove all media profile registrations, error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v12);
      }
    }

    else
    {
      v11 = v5;
    }

    [*(a1 + 32) reset];
    _Block_object_dispose(v28, 8);
    v5 = v11;
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 40);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *v28 = 138543618;
      *&v28[4] = v19;
      *&v28[12] = 2112;
      *&v28[14] = v5;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch action set registrations, error: %@", v28, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    [*(a1 + 32) reset];
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __74__HMDNotificationRegistryCoreDataAdapter_disableAllActionSetRegistrations__block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) _disableRegistration:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

id __74__HMDNotificationRegistryCoreDataAdapter_disableAllActionSetRegistrations__block_invoke_364(uint64_t a1, void *a2)
{
  v2 = [a2 actionSet];
  v3 = [v2 modelID];

  return v3;
}

- (id)removeActionSetRegistrationsWithoutAllowedDestinations:(id)a3
{
  v4 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__246802;
  v26 = __Block_byref_object_dispose__246803;
  v27 = MEMORY[0x277CBEBF8];
  v5 = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  v6 = [v5 backingStore];
  v7 = [v6 context];

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __97__HMDNotificationRegistryCoreDataAdapter_removeActionSetRegistrationsWithoutAllowedDestinations___block_invoke;
  v12[3] = &unk_278687D38;
  v8 = v7;
  v13 = v8;
  v14 = self;
  v9 = v4;
  v15 = v9;
  v16 = &v22;
  v17 = &v18;
  [v8 unsafeSynchronousBlock:v12];
  if (v19[3])
  {
    [MEMORY[0x277CBEB98] setWithArray:v23[5]];
  }

  else
  {
    [MEMORY[0x277CBEB98] set];
  }
  v10 = ;

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  return v10;
}

void __97__HMDNotificationRegistryCoreDataAdapter_removeActionSetRegistrationsWithoutAllowedDestinations___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [*(a1 + 40) _fetchRequestForActionSetRegistrationsWithoutAllowedDestinations:*(a1 + 48)];
  v27 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v27];
  v5 = v27;
  if (v4)
  {
    v6 = [v4 na_map:&__block_literal_global_363_246811];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __97__HMDNotificationRegistryCoreDataAdapter_removeActionSetRegistrationsWithoutAllowedDestinations___block_invoke_2;
    v24[3] = &unk_278684C70;
    v9 = *(a1 + 32);
    v10 = *(a1 + 64);
    v25 = v9;
    v26 = v10;
    [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v24];
    if (*(*(*(a1 + 64) + 8) + 24) == 1 && [v2 hasChanges])
    {
      v11 = *(a1 + 32);
      v23 = v5;
      v12 = [v11 save:&v23];
      v13 = v23;

      if ((v12 & 1) == 0)
      {
        v14 = objc_autoreleasePoolPush();
        v15 = *(a1 + 40);
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = HMFGetLogIdentifier();
          *buf = 138543618;
          v29 = v17;
          v30 = 2112;
          v31 = v13;
          _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unable to remove all action set registrations, error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
        *(*(*(a1 + 64) + 8) + 24) = 0;
      }
    }

    else
    {
      v13 = v5;
    }

    [*(a1 + 32) reset];

    v5 = v13;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 40);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v21;
      v30 = 2112;
      v31 = v5;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch action set registrations, error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    [*(a1 + 32) reset];
  }

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __97__HMDNotificationRegistryCoreDataAdapter_removeActionSetRegistrationsWithoutAllowedDestinations___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) deleteObject:a2];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

HMDActionSetNotificationRegistration *__97__HMDNotificationRegistryCoreDataAdapter_removeActionSetRegistrationsWithoutAllowedDestinations___block_invoke_360(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 user];
  v4 = [v3 modelID];

  if (!v4)
  {
    v5 = [v2 guest];
    v4 = [v5 modelID];
  }

  v6 = [HMDActionSetNotificationRegistration alloc];
  v7 = [v2 actionSet];
  v8 = [v7 modelID];
  v9 = [v2 deviceIdsDestination];
  v10 = [v2 lastModified];
  v11 = [v2 enabled];
  v12 = -[HMDActionSetNotificationRegistration initWithActionSetUUID:deviceIdsDestination:userUUID:lastModified:enabled:](v6, "initWithActionSetUUID:deviceIdsDestination:userUUID:lastModified:enabled:", v8, v9, v4, v10, [v11 BOOLValue]);

  return v12;
}

- (id)removeAllActionSetRegistrations
{
  v3 = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  v4 = [v3 backingStore];
  v5 = [v4 context];

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__246802;
  v21 = __Block_byref_object_dispose__246803;
  v22 = 0;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __73__HMDNotificationRegistryCoreDataAdapter_removeAllActionSetRegistrations__block_invoke;
  v12 = &unk_2786869D8;
  v6 = v5;
  v13 = v6;
  v14 = self;
  v15 = &v17;
  v16 = &v23;
  [v6 unsafeSynchronousBlock:&v9];
  if (v24[3])
  {
    [MEMORY[0x277CBEB98] setWithArray:{v18[5], v9, v10, v11, v12}];
  }

  else
  {
    [MEMORY[0x277CBEB98] set];
  }
  v7 = ;

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v7;
}

void __73__HMDNotificationRegistryCoreDataAdapter_removeAllActionSetRegistrations__block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [*(a1 + 40) _fetchRequestForAllActionSetRegistrations];
  v27 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v27];
  v5 = v27;
  if (v4)
  {
    v6 = [v4 na_map:&__block_literal_global_359_246816];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __73__HMDNotificationRegistryCoreDataAdapter_removeAllActionSetRegistrations__block_invoke_2;
    v24[3] = &unk_278684C70;
    v9 = *(a1 + 32);
    v10 = *(a1 + 56);
    v25 = v9;
    v26 = v10;
    [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v24];
    if (*(*(*(a1 + 56) + 8) + 24) == 1 && [v2 hasChanges])
    {
      v11 = *(a1 + 32);
      v23 = v5;
      v12 = [v11 save:&v23];
      v13 = v23;

      if ((v12 & 1) == 0)
      {
        v14 = objc_autoreleasePoolPush();
        v15 = *(a1 + 40);
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = HMFGetLogIdentifier();
          *buf = 138543618;
          v29 = v17;
          v30 = 2112;
          v31 = v13;
          _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unable to remove all action set registrations, error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
        *(*(*(a1 + 56) + 8) + 24) = 0;
      }
    }

    else
    {
      v13 = v5;
    }

    [*(a1 + 32) reset];

    v5 = v13;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 40);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v21;
      v30 = 2112;
      v31 = v5;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch action set registrations, error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    [*(a1 + 32) reset];
  }

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __73__HMDNotificationRegistryCoreDataAdapter_removeAllActionSetRegistrations__block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) deleteObject:a2];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

id __73__HMDNotificationRegistryCoreDataAdapter_removeAllActionSetRegistrations__block_invoke_356(uint64_t a1, void *a2)
{
  v2 = [a2 actionSet];
  v3 = [v2 modelID];

  return v3;
}

- (id)destinationsToNotifyForActionSetUUID:(id)a3
{
  v4 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__246802;
  v24 = __Block_byref_object_dispose__246803;
  v25 = MEMORY[0x277CBEBF8];
  v5 = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  v6 = [v5 backingStore];
  v7 = [v6 context];

  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __79__HMDNotificationRegistryCoreDataAdapter_destinationsToNotifyForActionSetUUID___block_invoke;
  v15 = &unk_278689D20;
  v8 = v7;
  v16 = v8;
  v17 = self;
  v9 = v4;
  v18 = v9;
  v19 = &v20;
  [v8 unsafeSynchronousBlock:&v12];
  v10 = [v21[5] copy];

  _Block_object_dispose(&v20, 8);

  return v10;
}

void __79__HMDNotificationRegistryCoreDataAdapter_destinationsToNotifyForActionSetUUID___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [*(a1 + 40) _fetchEnabledMKFRegistrationsForActionSetUUID:*(a1 + 48) context:v2];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 na_map:&__block_literal_global_355];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 40);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 48);
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch notification registrations for action set: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  [*(a1 + 32) reset];

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)removeRegistrationsForActionSetUUID:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v5 = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  v6 = [v5 backingStore];
  v7 = [v6 context];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__HMDNotificationRegistryCoreDataAdapter_removeRegistrationsForActionSetUUID___block_invoke;
  v11[3] = &unk_278689D20;
  v8 = v7;
  v12 = v8;
  v13 = self;
  v9 = v4;
  v14 = v9;
  v15 = &v16;
  [v8 unsafeSynchronousBlock:v11];
  LOBYTE(v4) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v4;
}

void __78__HMDNotificationRegistryCoreDataAdapter_removeRegistrationsForActionSetUUID___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  if ([*(a1 + 40) _deleteAllMKFRegistrationsForActionSetUUID:*(a1 + 48) hmcContext:*(a1 + 32)])
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  if ([v2 hasChanges])
  {
    v3 = *(a1 + 32);
    v11 = 0;
    v4 = [v3 save:&v11];
    v5 = v11;
    if ((v4 & 1) == 0)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = *(a1 + 40);
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = HMFGetLogIdentifier();
        *buf = 138543618;
        v13 = v9;
        v14 = 2112;
        v15 = v5;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unable to save the disable action set notification registration changes requested, error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v6);
      *(*(*(a1 + 56) + 8) + 24) = 0;
    }
  }

  [*(a1 + 32) reset];

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)disableNotificationForActionSetUUID:(id)a3 user:(id)a4 deviceIdsDestination:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v11 = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  v12 = [v11 backingStore];
  v13 = [v12 context];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __104__HMDNotificationRegistryCoreDataAdapter_disableNotificationForActionSetUUID_user_deviceIdsDestination___block_invoke;
  v19[3] = &unk_278689D48;
  v14 = v13;
  v20 = v14;
  v21 = self;
  v15 = v9;
  v22 = v15;
  v16 = v8;
  v23 = v16;
  v17 = v10;
  v24 = v17;
  v25 = &v26;
  [v14 unsafeSynchronousBlock:v19];
  LOBYTE(v9) = *(v27 + 24);

  _Block_object_dispose(&v26, 8);
  return v9;
}

void __104__HMDNotificationRegistryCoreDataAdapter_disableNotificationForActionSetUUID_user_deviceIdsDestination___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) uuid];
  v6 = *(a1 + 56);
  v5 = *(a1 + 64);
  v7 = [*(a1 + 48) isRestrictedGuest];
  v26 = 0;
  v8 = [v3 _fetchMKFUserAndRegistrationsWithUserUUID:v4 actionSetUUID:v6 deviceIdsDestination:v5 prefetchPaths:0 isRestrictedGuest:v7 outHomeMember:&v26 context:v2];
  v9 = v26;

  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 40);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch user and registrations", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __104__HMDNotificationRegistryCoreDataAdapter_disableNotificationForActionSetUUID_user_deviceIdsDestination___block_invoke_351;
    v25[3] = &unk_278684C70;
    v15 = *(a1 + 72);
    v25[4] = *(a1 + 40);
    v25[5] = v15;
    [v8 hmf_enumerateWithAutoreleasePoolUsingBlock:v25];
    if ([v2 hasChanges])
    {
      v16 = *(a1 + 32);
      v24 = 0;
      v17 = [v16 save:&v24];
      v18 = v24;
      if ((v17 & 1) == 0)
      {
        v19 = objc_autoreleasePoolPush();
        v20 = *(a1 + 40);
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543618;
          v28 = v22;
          v29 = 2112;
          v30 = v18;
          _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Unable to save the disable action set notification registration changes requested, error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v19);
        *(*(*(a1 + 72) + 8) + 24) = 0;
      }
    }
  }

  [*(a1 + 32) reset];

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __104__HMDNotificationRegistryCoreDataAdapter_disableNotificationForActionSetUUID_user_deviceIdsDestination___block_invoke_351(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) _disableRegistration:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

- (BOOL)enableNotificationForActionSetUUID:(id)a3 user:(id)a4 deviceIdsDestination:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v11 = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  v12 = [v11 backingStore];
  v13 = [v12 context];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __103__HMDNotificationRegistryCoreDataAdapter_enableNotificationForActionSetUUID_user_deviceIdsDestination___block_invoke;
  v19[3] = &unk_278689D48;
  v14 = v13;
  v20 = v14;
  v21 = self;
  v15 = v9;
  v22 = v15;
  v16 = v8;
  v23 = v16;
  v17 = v10;
  v24 = v17;
  v25 = &v26;
  [v14 unsafeSynchronousBlock:v19];
  LOBYTE(v9) = *(v27 + 24);

  _Block_object_dispose(&v26, 8);
  return v9;
}

void __103__HMDNotificationRegistryCoreDataAdapter_enableNotificationForActionSetUUID_user_deviceIdsDestination___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) uuid];
  v6 = *(a1 + 56);
  v5 = *(a1 + 64);
  v7 = [*(a1 + 48) isRestrictedGuest];
  v40 = 0;
  v8 = [v3 _fetchMKFUserAndRegistrationsWithUserUUID:v4 actionSetUUID:v6 deviceIdsDestination:v5 prefetchPaths:0 isRestrictedGuest:v7 outHomeMember:&v40 context:v2];
  v9 = v40;

  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 40);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v42 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch user and registrations", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    goto LABEL_26;
  }

  v15 = [v8 count];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v16 = v8;
  v17 = [v16 countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v37;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v37 != v19)
        {
          objc_enumerationMutation(v16);
        }

        if ([*(a1 + 40) _enableRegistration:*(*(&v36 + 1) + 8 * i)])
        {
          *(*(*(a1 + 72) + 8) + 24) = 1;
          goto LABEL_19;
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v36 objects:v45 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  if (!v15)
  {
    v29 = [*(a1 + 40) _fetchMKFActionSetWithUUID:*(a1 + 56) context:v2];
    if (v29)
    {
      if ([*(a1 + 40) _insertNotificationRegistrationForMKFActionSet:v29 deviceIdsDestination:*(a1 + 64) homeMember:v9 context:*(a1 + 32)])
      {
        *(*(*(a1 + 72) + 8) + 24) = 1;

        goto LABEL_20;
      }
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      v31 = *(a1 + 40);
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        v34 = *(a1 + 56);
        *buf = 138543618;
        v42 = v33;
        v43 = 2112;
        v44 = v34;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch MKFActionSet for UUID %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
    }

    [*(a1 + 32) reset];

    goto LABEL_27;
  }

LABEL_20:
  if ([v2 hasChanges])
  {
    v21 = *(a1 + 32);
    v35 = 0;
    v22 = [v21 save:&v35];
    v23 = v35;
    if ((v22 & 1) == 0)
    {
      v24 = objc_autoreleasePoolPush();
      v25 = *(a1 + 40);
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543618;
        v42 = v27;
        v43 = 2112;
        v44 = v23;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Unable to save the enable action set registration changes requested, error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      *(*(*(a1 + 72) + 8) + 24) = 0;
    }
  }

LABEL_26:
  [*(a1 + 32) reset];
LABEL_27:

  v28 = *MEMORY[0x277D85DE8];
}

- (NSSet)mediaRegistrations
{
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  v5 = [v4 backingStore];
  v6 = [v5 context];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__HMDNotificationRegistryCoreDataAdapter_mediaRegistrations__block_invoke;
  v11[3] = &unk_27868A010;
  v11[4] = self;
  v12 = v6;
  v13 = v3;
  v7 = v3;
  v8 = v6;
  [v8 unsafeSynchronousBlock:v11];
  v9 = [v7 copy];

  return v9;
}

void __60__HMDNotificationRegistryCoreDataAdapter_mediaRegistrations__block_invoke(id *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] _fetchRequestForAllMediaProfileRegistrations];
  v3 = [a1[5] managedObjectContext];
  v16 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v16];
  v5 = v16;

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = a1[4];
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v9;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch all media property notification registrations, error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __60__HMDNotificationRegistryCoreDataAdapter_mediaRegistrations__block_invoke_349;
  v14 = &unk_278684C48;
  v15 = a1[6];
  [v4 na_each:&v11];
  [a1[5] reset];

  v10 = *MEMORY[0x277D85DE8];
}

void __60__HMDNotificationRegistryCoreDataAdapter_mediaRegistrations__block_invoke_349(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 user];
  v4 = [v3 modelID];

  if (!v4)
  {
    v5 = [v13 guest];
    v4 = [v5 modelID];
  }

  v6 = [HMDMediaPropertyNotificationRegistration alloc];
  v7 = [v13 mediaProfileIdentifier];
  v8 = [v13 mediaProperty];
  v9 = [v13 deviceIdsDestination];
  v10 = [v13 lastModified];
  v11 = [v13 enabled];
  v12 = -[HMDMediaPropertyNotificationRegistration initWithMediaProfileUniqueIdentifier:mediaProperty:deviceIdsDestination:userUUID:lastModified:enabled:](v6, "initWithMediaProfileUniqueIdentifier:mediaProperty:deviceIdsDestination:userUUID:lastModified:enabled:", v7, v8, v9, v4, v10, [v11 BOOLValue]);

  [*(a1 + 32) addObject:v12];
}

- (id)removeMediaRegistrationsWithoutAllowedDestinations:(id)a3
{
  v4 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__246802;
  v28 = __Block_byref_object_dispose__246803;
  v29 = MEMORY[0x277CBEBF8];
  v5 = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  v6 = [v5 backingStore];
  v7 = [v6 context];

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __93__HMDNotificationRegistryCoreDataAdapter_removeMediaRegistrationsWithoutAllowedDestinations___block_invoke;
  v14[3] = &unk_278687D38;
  v8 = v7;
  v15 = v8;
  v16 = self;
  v9 = v4;
  v17 = v9;
  v18 = &v24;
  v19 = &v20;
  [v8 unsafeSynchronousBlock:v14];
  v10 = MEMORY[0x277CBEB98];
  if (*(v21 + 24) == 1)
  {
    v11 = [v25[5] copy];
    v12 = [v10 setWithArray:v11];
  }

  else
  {
    v12 = [MEMORY[0x277CBEB98] set];
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  return v12;
}

void __93__HMDNotificationRegistryCoreDataAdapter_removeMediaRegistrationsWithoutAllowedDestinations___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [*(a1 + 40) _fetchRequestForMediaProfileRegistrationsWithoutAllowedDestinations:*(a1 + 48)];
  v27 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v27];
  v5 = v27;
  if (v4)
  {
    v6 = [v4 na_map:&__block_literal_global_348];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __93__HMDNotificationRegistryCoreDataAdapter_removeMediaRegistrationsWithoutAllowedDestinations___block_invoke_2;
    v24[3] = &unk_278684BB8;
    v9 = *(a1 + 32);
    v10 = *(a1 + 64);
    v25 = v9;
    v26 = v10;
    [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v24];
    if (*(*(*(a1 + 64) + 8) + 24) == 1 && [v2 hasChanges])
    {
      v11 = *(a1 + 32);
      v23 = v5;
      v12 = [v11 save:&v23];
      v13 = v23;

      if ((v12 & 1) == 0)
      {
        v14 = objc_autoreleasePoolPush();
        v15 = *(a1 + 40);
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = HMFGetLogIdentifier();
          *buf = 138543618;
          v29 = v17;
          v30 = 2112;
          v31 = v13;
          _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unable to remove all media profile registrations, error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
        *(*(*(a1 + 64) + 8) + 24) = 0;
      }
    }

    else
    {
      v13 = v5;
    }

    [*(a1 + 32) reset];

    v5 = v13;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 40);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v21;
      v30 = 2112;
      v31 = v5;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch media profile registrations, error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    [*(a1 + 32) reset];
  }

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __93__HMDNotificationRegistryCoreDataAdapter_removeMediaRegistrationsWithoutAllowedDestinations___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) deleteObject:a2];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

HMDMediaPropertyNotificationRegistration *__93__HMDNotificationRegistryCoreDataAdapter_removeMediaRegistrationsWithoutAllowedDestinations___block_invoke_345(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 user];
  v4 = [v3 modelID];

  if (!v4)
  {
    v5 = [v2 guest];
    v4 = [v5 modelID];
  }

  v6 = [HMDMediaPropertyNotificationRegistration alloc];
  v7 = [v2 mediaProfileIdentifier];
  v8 = [v2 mediaProperty];
  v9 = [v2 deviceIdsDestination];
  v10 = [v2 lastModified];
  v11 = [v2 enabled];
  v12 = -[HMDMediaPropertyNotificationRegistration initWithMediaProfileUniqueIdentifier:mediaProperty:deviceIdsDestination:userUUID:lastModified:enabled:](v6, "initWithMediaProfileUniqueIdentifier:mediaProperty:deviceIdsDestination:userUUID:lastModified:enabled:", v7, v8, v9, v4, v10, [v11 BOOLValue]);

  return v12;
}

- (id)disableAllMediaProfileRegistrations
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  v5 = [v4 backingStore];
  v6 = [v5 context];

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __77__HMDNotificationRegistryCoreDataAdapter_disableAllMediaProfileRegistrations__block_invoke;
  v16 = &unk_278689D20;
  v7 = v6;
  v17 = v7;
  v18 = self;
  v8 = v3;
  v19 = v8;
  v20 = &v21;
  [v7 unsafeSynchronousBlock:&v13];
  v9 = MEMORY[0x277CBEB98];
  if (*(v22 + 24) == 1)
  {
    v10 = [v8 copy];
    v11 = [v9 setWithArray:v10];
  }

  else
  {
    v11 = [MEMORY[0x277CBEB98] set];
  }

  _Block_object_dispose(&v21, 8);

  return v11;
}

void __77__HMDNotificationRegistryCoreDataAdapter_disableAllMediaProfileRegistrations__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [*(a1 + 40) _fetchRequestForAllMediaProfileRegistrations];
  v23 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v23];
  v5 = v23;
  if (v4)
  {
    *v28 = 0;
    *&v28[8] = v28;
    *&v28[16] = 0x2020000000;
    v29 = 0;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __77__HMDNotificationRegistryCoreDataAdapter_disableAllMediaProfileRegistrations__block_invoke_344;
    v20[3] = &unk_278684C00;
    v6 = *(a1 + 48);
    v20[4] = *(a1 + 40);
    v22 = v28;
    v21 = v6;
    [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v20];
    if (*(*&v28[8] + 24) == 1 && [v2 hasChanges])
    {
      v7 = *(a1 + 32);
      v19 = v5;
      v8 = [v7 save:&v19];
      v9 = v19;

      *(*(*(a1 + 56) + 8) + 24) = v8;
      if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
      {
        v10 = objc_autoreleasePoolPush();
        v11 = *(a1 + 40);
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = HMFGetLogIdentifier();
          *buf = 138543618;
          v25 = v13;
          v26 = 2112;
          v27 = v9;
          _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to remove all media profile registrations, error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v10);
      }
    }

    else
    {
      v9 = v5;
    }

    [*(a1 + 32) reset];

    _Block_object_dispose(v28, 8);
    v5 = v9;
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 40);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *v28 = 138543618;
      *&v28[4] = v17;
      *&v28[12] = 2112;
      *&v28[14] = v5;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch media profile registrations, error: %@", v28, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    [*(a1 + 32) reset];
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __77__HMDNotificationRegistryCoreDataAdapter_disableAllMediaProfileRegistrations__block_invoke_344(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([*(a1 + 32) _disableRegistration:?])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v3 = *(a1 + 40);
    v4 = [v5 mediaProfileIdentifier];
    [v3 addObject:v4];
  }
}

- (id)removeAllMediaProfileRegistrations
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__246802;
  v27 = __Block_byref_object_dispose__246803;
  v28 = MEMORY[0x277CBEBF8];
  v3 = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  v4 = [v3 backingStore];
  v5 = [v4 context];

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __76__HMDNotificationRegistryCoreDataAdapter_removeAllMediaProfileRegistrations__block_invoke;
  v14 = &unk_2786869D8;
  v6 = v5;
  v15 = v6;
  v16 = self;
  v17 = &v23;
  v18 = &v19;
  [v6 unsafeSynchronousBlock:&v11];
  v7 = MEMORY[0x277CBEB98];
  if (*(v20 + 24) == 1)
  {
    v8 = [v24[5] copy];
    v9 = [v7 setWithArray:v8];
  }

  else
  {
    v9 = [MEMORY[0x277CBEB98] set];
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  return v9;
}

void __76__HMDNotificationRegistryCoreDataAdapter_removeAllMediaProfileRegistrations__block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [*(a1 + 40) _fetchRequestForAllMediaProfileRegistrations];
  v27 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v27];
  v5 = v27;
  if (v4)
  {
    v6 = [v4 na_map:&__block_literal_global_343];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __76__HMDNotificationRegistryCoreDataAdapter_removeAllMediaProfileRegistrations__block_invoke_2;
    v24[3] = &unk_278684BB8;
    v9 = *(a1 + 32);
    v10 = *(a1 + 56);
    v25 = v9;
    v26 = v10;
    [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v24];
    if (*(*(*(a1 + 56) + 8) + 24) == 1 && [v2 hasChanges])
    {
      v11 = *(a1 + 32);
      v23 = v5;
      v12 = [v11 save:&v23];
      v13 = v23;

      if ((v12 & 1) == 0)
      {
        v14 = objc_autoreleasePoolPush();
        v15 = *(a1 + 40);
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = HMFGetLogIdentifier();
          *buf = 138543618;
          v29 = v17;
          v30 = 2112;
          v31 = v13;
          _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unable to remove all media profile registrations, error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
        *(*(*(a1 + 56) + 8) + 24) = 0;
      }
    }

    else
    {
      v13 = v5;
    }

    [*(a1 + 32) reset];

    v5 = v13;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 40);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v21;
      v30 = 2112;
      v31 = v5;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch media profile registrations, error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    [*(a1 + 32) reset];
  }

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __76__HMDNotificationRegistryCoreDataAdapter_removeAllMediaProfileRegistrations__block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) deleteObject:a2];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

- (id)mediaPropertiesRegisteredForMediaProfileUniqueIdentifier:(id)a3
{
  v4 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__246802;
  v24 = __Block_byref_object_dispose__246803;
  v25 = MEMORY[0x277CBEBF8];
  v5 = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  v6 = [v5 backingStore];
  v7 = [v6 context];

  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __99__HMDNotificationRegistryCoreDataAdapter_mediaPropertiesRegisteredForMediaProfileUniqueIdentifier___block_invoke;
  v15 = &unk_278689D20;
  v8 = v7;
  v16 = v8;
  v17 = self;
  v9 = v4;
  v18 = v9;
  v19 = &v20;
  [v8 unsafeSynchronousBlock:&v12];
  v10 = [v21[5] copy];

  _Block_object_dispose(&v20, 8);

  return v10;
}

void __99__HMDNotificationRegistryCoreDataAdapter_mediaPropertiesRegisteredForMediaProfileUniqueIdentifier___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [*(a1 + 40) _fetchEnabledMKFRegistrationsForMediaProfileUUID:*(a1 + 48) withMediaProperty:0 context:v2];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 na_map:&__block_literal_global_340_246840];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 40);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 48);
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch notification registrations for media profile uuid %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  [*(a1 + 32) reset];

  v13 = *MEMORY[0x277D85DE8];
}

- (id)destinationsToNotifyForMediaPropertyResponse:(id)a3
{
  v4 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__246802;
  v24 = __Block_byref_object_dispose__246803;
  v25 = MEMORY[0x277CBEBF8];
  v5 = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  v6 = [v5 backingStore];
  v7 = [v6 context];

  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __87__HMDNotificationRegistryCoreDataAdapter_destinationsToNotifyForMediaPropertyResponse___block_invoke;
  v15 = &unk_278689D20;
  v8 = v7;
  v16 = v8;
  v9 = v4;
  v17 = v9;
  v18 = self;
  v19 = &v20;
  [v8 unsafeSynchronousBlock:&v12];
  v10 = [v21[5] copy];

  _Block_object_dispose(&v20, 8);

  return v10;
}

void __87__HMDNotificationRegistryCoreDataAdapter_destinationsToNotifyForMediaPropertyResponse___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [*(a1 + 40) request];
  v4 = [v3 property];
  v5 = [v3 mediaProfile];
  v6 = *(a1 + 48);
  v7 = [v5 uniqueIdentifier];
  v8 = [v6 _fetchEnabledMKFRegistrationsForMediaProfileUUID:v7 withMediaProperty:v4 context:v2];

  if (v8)
  {
    v9 = [v8 na_map:&__block_literal_global_337_246843];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 48);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = *(a1 + 40);
      v18 = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = v16;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch notification registrations for media property response: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  [*(a1 + 32) reset];

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)removeRegistrationsForMediaProfile:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v5 = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  v6 = [v5 backingStore];
  v7 = [v6 context];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__HMDNotificationRegistryCoreDataAdapter_removeRegistrationsForMediaProfile___block_invoke;
  v11[3] = &unk_278689D20;
  v8 = v7;
  v12 = v8;
  v13 = self;
  v9 = v4;
  v14 = v9;
  v15 = &v16;
  [v8 unsafeSynchronousBlock:v11];
  LOBYTE(v4) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v4;
}

void __77__HMDNotificationRegistryCoreDataAdapter_removeRegistrationsForMediaProfile___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) uniqueIdentifier];
  LODWORD(v3) = [v3 _deleteAllMKFRegistrationsForMediaProfileUUID:v4 withMediaProperty:0 hmcContext:*(a1 + 32)];

  if (v3)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  if ([v2 hasChanges])
  {
    v5 = *(a1 + 32);
    v13 = 0;
    v6 = [v5 save:&v13];
    v7 = v13;
    if ((v6 & 1) == 0)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 40);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543618;
        v15 = v11;
        v16 = 2112;
        v17 = v7;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unable to save the disable media property notification registration changes requested, error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      *(*(*(a1 + 56) + 8) + 24) = 0;
    }
  }

  [*(a1 + 32) reset];

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)disableNotificationForMediaProfile:(id)a3 mediaProperties:(id)a4 user:(id)a5 deviceIdsDestination:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v14 = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  v15 = [v14 backingStore];
  v16 = [v15 context];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __119__HMDNotificationRegistryCoreDataAdapter_disableNotificationForMediaProfile_mediaProperties_user_deviceIdsDestination___block_invoke;
  v23[3] = &unk_278684B90;
  v17 = v16;
  v24 = v17;
  v18 = v10;
  v25 = v18;
  v26 = self;
  v19 = v12;
  v27 = v19;
  v20 = v11;
  v28 = v20;
  v21 = v13;
  v29 = v21;
  v30 = &v31;
  [v17 unsafeSynchronousBlock:v23];
  LOBYTE(v12) = *(v32 + 24);

  _Block_object_dispose(&v31, 8);
  return v12;
}

void __119__HMDNotificationRegistryCoreDataAdapter_disableNotificationForMediaProfile_mediaProperties_user_deviceIdsDestination___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [*(a1 + 40) accessory];
  v4 = [v3 uuid];

  v5 = *(a1 + 48);
  v6 = [*(a1 + 56) uuid];
  v7 = [*(a1 + 40) uniqueIdentifier];
  v9 = *(a1 + 64);
  v8 = *(a1 + 72);
  v10 = [*(a1 + 56) isRestrictedGuest];
  v29 = 0;
  LOBYTE(v26) = v10;
  v11 = [v5 _fetchMKFUserAndRegistrationsWithUserUUID:v6 withMediaProfileUUID:v7 withMediaPropertyIn:v9 withDeviceIdsDestination:v8 withAccessoryUUID:v4 withPrefetchPaths:0 isRestrictedGuest:v26 outHomeMember:&v29 context:v2];
  v12 = v29;

  if (v11 && v12)
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __119__HMDNotificationRegistryCoreDataAdapter_disableNotificationForMediaProfile_mediaProperties_user_deviceIdsDestination___block_invoke_333;
    v28[3] = &unk_278684BB8;
    v13 = *(a1 + 80);
    v28[4] = *(a1 + 48);
    v28[5] = v13;
    [v11 hmf_enumerateWithAutoreleasePoolUsingBlock:v28];
    if ([v2 hasChanges])
    {
      v14 = *(a1 + 32);
      v27 = 0;
      v15 = [v14 save:&v27];
      v16 = v27;
      if ((v15 & 1) == 0)
      {
        v17 = objc_autoreleasePoolPush();
        v18 = *(a1 + 48);
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543618;
          v31 = v20;
          v32 = 2112;
          v33 = v16;
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Unable to save the disable media property notification registration changes requested, error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v17);
        *(*(*(a1 + 80) + 8) + 24) = 0;
      }
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 48);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v24;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch user and registrations", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
  }

  [*(a1 + 32) reset];

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __119__HMDNotificationRegistryCoreDataAdapter_disableNotificationForMediaProfile_mediaProperties_user_deviceIdsDestination___block_invoke_333(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) _disableRegistration:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

- (BOOL)enableNotificationForMediaProfile:(id)a3 mediaProperties:(id)a4 user:(id)a5 deviceIdsDestination:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v14 = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  v15 = [v14 backingStore];
  v16 = [v15 context];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __118__HMDNotificationRegistryCoreDataAdapter_enableNotificationForMediaProfile_mediaProperties_user_deviceIdsDestination___block_invoke;
  v23[3] = &unk_278684B90;
  v17 = v16;
  v24 = v17;
  v18 = v10;
  v25 = v18;
  v26 = self;
  v19 = v12;
  v27 = v19;
  v20 = v11;
  v28 = v20;
  v21 = v13;
  v29 = v21;
  v30 = &v31;
  [v17 unsafeSynchronousBlock:v23];
  LOBYTE(v12) = *(v32 + 24);

  _Block_object_dispose(&v31, 8);
  return v12;
}

void __118__HMDNotificationRegistryCoreDataAdapter_enableNotificationForMediaProfile_mediaProperties_user_deviceIdsDestination___block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [*(a1 + 40) accessory];
  v4 = [v3 uuid];

  v5 = *(a1 + 48);
  v6 = [*(a1 + 56) uuid];
  v7 = [*(a1 + 40) uniqueIdentifier];
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = [*(a1 + 56) isRestrictedGuest];
  v42 = 0;
  LOBYTE(v30) = v10;
  v11 = [v5 _fetchMKFUserAndRegistrationsWithUserUUID:v6 withMediaProfileUUID:v7 withMediaPropertyIn:v8 withDeviceIdsDestination:v9 withAccessoryUUID:v4 withPrefetchPaths:0 isRestrictedGuest:v30 outHomeMember:&v42 context:v2];
  v12 = v42;

  if (v11 && v12)
  {
    *&v47 = 0;
    *(&v47 + 1) = &v47;
    v48 = 0x3032000000;
    v49 = __Block_byref_object_copy__246802;
    v50 = __Block_byref_object_dispose__246803;
    v51 = 0;
    v13 = *(a1 + 64);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __118__HMDNotificationRegistryCoreDataAdapter_enableNotificationForMediaProfile_mediaProperties_user_deviceIdsDestination___block_invoke_331;
    v33[3] = &unk_278684B68;
    v14 = v11;
    v15 = *(a1 + 80);
    v34 = v14;
    v40 = v15;
    v41 = &v47;
    v31 = *(a1 + 40);
    v16 = v31.i64[0];
    v35 = vextq_s8(v31, v31, 8uLL);
    v17 = v2;
    v36 = v17;
    v37 = *(a1 + 72);
    v38 = v12;
    v39 = *(a1 + 32);
    [v13 hmf_enumerateWithAutoreleasePoolUsingBlock:v33];
    if ([v17 hasChanges])
    {
      v18 = *(a1 + 32);
      v32 = 0;
      v19 = [v18 save:&v32];
      v20 = v32;
      if ((v19 & 1) == 0)
      {
        v21 = objc_autoreleasePoolPush();
        v22 = *(a1 + 48);
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = HMFGetLogIdentifier();
          *buf = 138543618;
          v44 = v24;
          v45 = 2112;
          v46 = v20;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Unable to save the enable media property notification registration changes requested, error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v21);
        *(*(*(a1 + 80) + 8) + 24) = 0;
      }
    }

    [*(a1 + 32) reset];

    _Block_object_dispose(&v47, 8);
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = *(a1 + 48);
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      LODWORD(v47) = 138543362;
      *(&v47 + 4) = v28;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch user and registrations", &v47, 0xCu);
    }

    objc_autoreleasePoolPop(v25);
    [*(a1 + 32) reset];
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __118__HMDNotificationRegistryCoreDataAdapter_enableNotificationForMediaProfile_mediaProperties_user_deviceIdsDestination___block_invoke_331(uint64_t a1, void *a2, _BYTE *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v6 = *(a1 + 32);
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __118__HMDNotificationRegistryCoreDataAdapter_enableNotificationForMediaProfile_mediaProperties_user_deviceIdsDestination___block_invoke_2;
  v26 = &unk_278684B40;
  v7 = v5;
  v8 = *(a1 + 40);
  v27 = v7;
  v28 = v8;
  v9 = *(a1 + 88);
  v29 = &v31;
  v30 = v9;
  [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:&v23];
  if (v32[3])
  {
    goto LABEL_10;
  }

  v10 = *(*(*(a1 + 96) + 8) + 40);
  if (v10)
  {
    goto LABEL_5;
  }

  v11 = [*(a1 + 48) accessory];
  v12 = *(a1 + 40);
  v13 = [v11 uuid];
  v14 = [v12 _fetchMKFHAPAccessoryWithUUID:v13 context:*(a1 + 56)];
  v15 = *(*(a1 + 96) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  if (*(*(*(a1 + 96) + 8) + 40))
  {

    v10 = *(*(*(a1 + 96) + 8) + 40);
LABEL_5:
    if ([*(a1 + 40) _insertNotificationRegistrationForMediaProperty:v7 mediaProfile:*(a1 + 48) deviceIdsDestination:*(a1 + 64) homeMember:*(a1 + 72) accessory:v10 context:{*(a1 + 80), v23, v24, v25, v26}])
    {
      *(*(*(a1 + 88) + 8) + 24) = 1;
    }

    goto LABEL_10;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = *(a1 + 40);
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = HMFGetLogIdentifier();
    v21 = [v11 uuid];
    *buf = 138543618;
    v36 = v20;
    v37 = 2112;
    v38 = v21;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch MKFHAPAccessory for UUID %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  *a3 = 1;

LABEL_10:
  _Block_object_dispose(&v31, 8);

  v22 = *MEMORY[0x277D85DE8];
}

void __118__HMDNotificationRegistryCoreDataAdapter_enableNotificationForMediaProfile_mediaProperties_user_deviceIdsDestination___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v9 = v6;
  v8 = [v6 mediaProperty];
  LODWORD(v7) = [v7 isEqualToString:v8];

  if (v7)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
    if ([*(a1 + 40) _enableRegistration:v9])
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }
}

- (id)_characteristicRegistrationsIncludeEnabled:(BOOL)a3 includeDisabled:(BOOL)a4
{
  v7 = [MEMORY[0x277CBEB58] set];
  v8 = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  v9 = [v8 backingStore];
  v10 = [v9 context];

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __101__HMDNotificationRegistryCoreDataAdapter__characteristicRegistrationsIncludeEnabled_includeDisabled___block_invoke;
  v18 = &unk_278684B18;
  v22 = a3;
  v23 = a4;
  v19 = self;
  v20 = v10;
  v21 = v7;
  v11 = v7;
  v12 = v10;
  [v12 unsafeSynchronousBlock:&v15];
  v13 = [v11 copy];

  return v13;
}

void __101__HMDNotificationRegistryCoreDataAdapter__characteristicRegistrationsIncludeEnabled_includeDisabled___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a1 + 56) == 1)
  {
    if ((*(a1 + 57) & 1) == 0)
    {
      v2 = *(a1 + 32);
      v3 = 1;
      v4 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (!*(a1 + 57))
  {
LABEL_6:
    v2 = *(a1 + 32);
    v3 = 0;
    goto LABEL_7;
  }

  v2 = *(a1 + 32);
  v3 = 1;
LABEL_7:
  v4 = 0;
LABEL_8:
  v5 = [v2 _fetchRequestForCharacteristicRegistrations:v3 enabled:v4 destination:0 propertiesToFetch:0 relationshipKeyPathsForPrefetching:0];
  v6 = [*(a1 + 40) managedObjectContext];
  v20 = 0;
  v7 = [v6 executeFetchRequest:v5 error:&v20];
  v8 = v20;

  if (!v7)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v12;
      v23 = 2112;
      v24 = v8;
      v13 = "%{public}@Unable to fetch all characteristic registrations, error: %@";
      v14 = v11;
      v15 = OS_LOG_TYPE_ERROR;
      v16 = 22;
LABEL_15:
      _os_log_impl(&dword_229538000, v14, v15, v13, buf, v16);
    }

LABEL_16:

    objc_autoreleasePoolPop(v9);
    goto LABEL_17;
  }

  if (![v7 count])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v12;
      v13 = "%{public}@Found no characteristic registrations";
      v14 = v11;
      v15 = OS_LOG_TYPE_INFO;
      v16 = 12;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __101__HMDNotificationRegistryCoreDataAdapter__characteristicRegistrationsIncludeEnabled_includeDisabled___block_invoke_330;
  v18[3] = &unk_2786846A8;
  v19 = *(a1 + 48);
  [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:v18];

LABEL_17:
  v17 = *MEMORY[0x277D85DE8];
}

void __101__HMDNotificationRegistryCoreDataAdapter__characteristicRegistrationsIncludeEnabled_includeDisabled___block_invoke_330(uint64_t a1, void *a2)
{
  v19 = a2;
  v2 = [v19 user];
  v3 = [v2 modelID];

  if (!v3)
  {
    v4 = [v19 guest];
    v3 = [v4 modelID];
  }

  v15 = [HMDCharacteristicNotificationRegistration alloc];
  v17 = [v19 characteristic];
  v16 = [v17 service];
  v5 = [v16 accessory];
  v6 = [v5 modelID];
  v7 = [v19 characteristic];
  v8 = [v7 instanceID];
  v9 = [v19 deviceIdsDestination];
  v10 = [v19 lastModified];
  v11 = [v19 enabled];
  v12 = [v11 BOOLValue];
  v13 = [v19 notificationThreshold];
  v14 = [(HMDCharacteristicNotificationRegistration *)v15 initWithAccessoryUUID:v6 characteristicInstanceID:v8 deviceIdsDestination:v9 userUUID:v3 lastModified:v10 enabled:v12 notificationThreshold:v13];

  [*(a1 + 32) addObject:v14];
}

- (id)characteristicIIDsByAccessoryUUIDForEnabledRegistrationsForDestination:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  v7 = [v6 backingStore];
  v8 = [v7 context];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __113__HMDNotificationRegistryCoreDataAdapter_characteristicIIDsByAccessoryUUIDForEnabledRegistrationsForDestination___block_invoke;
  v15[3] = &unk_2786891E0;
  v15[4] = self;
  v16 = v4;
  v17 = v8;
  v9 = v5;
  v18 = v9;
  v10 = v8;
  v11 = v4;
  [v10 unsafeSynchronousBlock:v15];
  v12 = v18;
  v13 = v9;

  return v9;
}

void __113__HMDNotificationRegistryCoreDataAdapter_characteristicIIDsByAccessoryUUIDForEnabledRegistrationsForDestination___block_invoke(uint64_t a1)
{
  v49[1] = *MEMORY[0x277D85DE8];
  v49[0] = @"deviceIdsDestination";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:1];
  v48[0] = @"characteristic.instanceID";
  v48[1] = @"characteristic.service.accessory.modelID";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
  v4 = [*(a1 + 32) _fetchRequestForCharacteristicRegistrations:1 enabled:1 destination:*(a1 + 40) propertiesToFetch:v2 relationshipKeyPathsForPrefetching:v3];
  v5 = [*(a1 + 48) managedObjectContext];
  v40 = 0;
  v6 = [v5 executeFetchRequest:v4 error:&v40];
  v7 = v40;

  if (v6)
  {
    if ([v6 count])
    {
      v32 = v7;
      v33 = v4;
      v34 = v3;
      v35 = v2;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v31 = v6;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v37;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v37 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v36 + 1) + 8 * i);
            v14 = [v13 characteristic];
            v15 = [v14 service];
            v16 = [v15 accessory];
            v17 = [v16 modelID];

            v18 = [v13 characteristic];
            v19 = [v18 instanceID];

            v20 = [*(a1 + 56) objectForKeyedSubscript:v17];
            if (!v20)
            {
              v20 = [MEMORY[0x277CBEB58] set];
              [*(a1 + 56) setObject:v20 forKeyedSubscript:v17];
            }

            [v20 addObject:v19];
          }

          v10 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v10);
      }

      v3 = v34;
      v2 = v35;
      v7 = v32;
      v4 = v33;
      v6 = v31;
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = *(a1 + 32);
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543362;
        v43 = v29;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Found no characteristic registrations", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v26);
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 32);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v25 = *(a1 + 40);
      *buf = 138543874;
      v43 = v24;
      v44 = 2112;
      v45 = v25;
      v46 = 2112;
      v47 = v7;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch enabled characteristic registrations for destination: %@, error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    v6 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (id)destinationsWithEnabledCharacteristicRegistrations
{
  v3 = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  v4 = [v3 backingStore];
  v5 = [v4 context];

  v6 = [MEMORY[0x277CBEB58] set];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __92__HMDNotificationRegistryCoreDataAdapter_destinationsWithEnabledCharacteristicRegistrations__block_invoke;
  v11[3] = &unk_27868A010;
  v11[4] = self;
  v12 = v5;
  v13 = v6;
  v7 = v6;
  v8 = v5;
  [v8 unsafeSynchronousBlock:v11];
  v9 = [v7 copy];

  return v9;
}

void __92__HMDNotificationRegistryCoreDataAdapter_destinationsWithEnabledCharacteristicRegistrations__block_invoke(id *a1)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v23[0] = @"deviceIdsDestination";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v3 = [a1[4] _fetchRequestForCharacteristicRegistrations:1 enabled:1 destination:0 propertiesToFetch:v2 relationshipKeyPathsForPrefetching:0];
  v4 = [a1[5] managedObjectContext];
  v18 = 0;
  v5 = [v4 executeFetchRequest:v3 error:&v18];
  v6 = v18;

  if (!v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = a1[4];
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v10;
      v21 = 2112;
      v22 = v6;
      v11 = "%{public}@Unable to fetch all characteristic registrations, error: %@";
      v12 = v9;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 22;
LABEL_8:
      _os_log_impl(&dword_229538000, v12, v13, v11, buf, v14);
    }

LABEL_9:

    objc_autoreleasePoolPop(v7);
    goto LABEL_10;
  }

  if (![v5 count])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = a1[4];
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v20 = v10;
      v11 = "%{public}@Found no characteristic registrations";
      v12 = v9;
      v13 = OS_LOG_TYPE_INFO;
      v14 = 12;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __92__HMDNotificationRegistryCoreDataAdapter_destinationsWithEnabledCharacteristicRegistrations__block_invoke_329;
  v16[3] = &unk_2786846A8;
  v17 = a1[6];
  [v5 hmf_enumerateWithAutoreleasePoolUsingBlock:v16];

LABEL_10:
  v15 = *MEMORY[0x277D85DE8];
}

void __92__HMDNotificationRegistryCoreDataAdapter_destinationsWithEnabledCharacteristicRegistrations__block_invoke_329(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 deviceIdsDestination];
  [v2 addObject:v3];
}

- (id)removeCharacteristicRegistrationsWithoutAllowedDestinations:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  v7 = [v6 backingStore];
  v8 = [v7 context];

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __102__HMDNotificationRegistryCoreDataAdapter_removeCharacteristicRegistrationsWithoutAllowedDestinations___block_invoke;
  v15[3] = &unk_278689D98;
  v9 = v8;
  v16 = v9;
  v17 = self;
  v10 = v4;
  v18 = v10;
  v20 = &v21;
  v11 = v5;
  v19 = v11;
  [v9 unsafeSynchronousBlock:v15];
  if (*(v22 + 24) == 1)
  {
    v12 = [v11 copy];
  }

  else
  {
    v12 = [MEMORY[0x277CBEB98] set];
  }

  v13 = v12;

  _Block_object_dispose(&v21, 8);

  return v13;
}

void __102__HMDNotificationRegistryCoreDataAdapter_removeCharacteristicRegistrationsWithoutAllowedDestinations___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [*(a1 + 40) _fetchRequestForCharacteristicRegistrationsWithoutAllowedDestinations:*(a1 + 48)];
  v4 = [*(a1 + 32) managedObjectContext];
  v35 = 0;
  v5 = [v4 executeFetchRequest:v3 error:&v35];
  v6 = v35;

  if (!v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 40);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v10;
      v38 = 2112;
      v39 = v6;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch all characteristic registrations without allowed destinations, error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  if ([v5 count])
  {
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __102__HMDNotificationRegistryCoreDataAdapter_removeCharacteristicRegistrationsWithoutAllowedDestinations___block_invoke_327;
    v33[3] = &unk_278684AC8;
    v33[4] = *(a1 + 40);
    v34 = *(a1 + 56);
    [v5 na_each:v33];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __102__HMDNotificationRegistryCoreDataAdapter_removeCharacteristicRegistrationsWithoutAllowedDestinations___block_invoke_328;
    v30[3] = &unk_278684AF0;
    v11 = *(a1 + 32);
    v12 = *(a1 + 64);
    v31 = v11;
    v32 = v12;
    [v5 hmf_enumerateWithAutoreleasePoolUsingBlock:v30];
    if (*(*(*(a1 + 64) + 8) + 24))
    {
      if ([v2 hasChanges])
      {
        v13 = *(a1 + 32);
        v29 = v6;
        v14 = [v13 save:&v29];
        v15 = v29;

        if ((v14 & 1) == 0)
        {
          v16 = objc_autoreleasePoolPush();
          v17 = *(a1 + 40);
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = HMFGetLogIdentifier();
            *buf = 138543618;
            v37 = v19;
            v38 = 2112;
            v39 = v15;
            _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unable to save context after removing characteristic registrations without allowed destinations, error: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v16);
          *(*(*(a1 + 64) + 8) + 24) = 0;
        }

        v6 = v15;
      }
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = *(a1 + 40);
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543362;
        v37 = v27;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Did not delete characteristic registrations without allowed destinations", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v24);
    }

    [*(a1 + 32) reset];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = *(a1 + 40);
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v37 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@No notifications without allowed destinations", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    [*(a1 + 32) reset];
    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __102__HMDNotificationRegistryCoreDataAdapter_removeCharacteristicRegistrationsWithoutAllowedDestinations___block_invoke_327(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 user];
  v4 = [v3 modelID];

  if (!v4)
  {
    v5 = [v2 guest];
    v4 = [v5 modelID];
  }

  v25 = [HMDCharacteristicNotificationRegistration alloc];
  v23 = [v2 characteristic];
  v22 = [v23 service];
  v21 = [v22 accessory];
  v6 = [v21 modelID];
  v7 = [v2 characteristic];
  v8 = [v7 instanceID];
  v9 = [v2 deviceIdsDestination];
  v10 = [v2 lastModified];
  v11 = [v2 enabled];
  v12 = [v11 BOOLValue];
  v13 = [v2 notificationThreshold];
  v14 = v25;
  v26 = v4;
  v15 = [(HMDCharacteristicNotificationRegistration *)v14 initWithAccessoryUUID:v6 characteristicInstanceID:v8 deviceIdsDestination:v9 userUUID:v4 lastModified:v10 enabled:v12 notificationThreshold:v13];

  v16 = objc_autoreleasePoolPush();
  v17 = *(a1 + 32);
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543618;
    v28 = v19;
    v29 = 2112;
    v30 = v15;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Removing registration: %@ that is not in set of allowed destinations", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  [*(a1 + 40) addObject:v15];

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __102__HMDNotificationRegistryCoreDataAdapter_removeCharacteristicRegistrationsWithoutAllowedDestinations___block_invoke_328(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) deleteObject:a2];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

- (void)disableAllCharacteristicRegistrations
{
  v3 = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  v4 = [v3 backingStore];
  v5 = [v4 context];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__HMDNotificationRegistryCoreDataAdapter_disableAllCharacteristicRegistrations__block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [v6 unsafeSynchronousBlock:v7];
}

void __79__HMDNotificationRegistryCoreDataAdapter_disableAllCharacteristicRegistrations__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _fetchRequestForCharacteristicRegistrations:1 enabled:1 destination:0 propertiesToFetch:0 relationshipKeyPathsForPrefetching:0];
  v3 = [*(a1 + 40) managedObjectContext];
  v25 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v25];
  v5 = v25;

  if (!v4)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v17;
      v28 = 2112;
      v29 = v5;
      v18 = "%{public}@Unable to fetch all characteristic registrations to disable, error: %@";
      v19 = v16;
      v20 = OS_LOG_TYPE_ERROR;
      v21 = 22;
LABEL_14:
      _os_log_impl(&dword_229538000, v19, v20, v18, buf, v21);
    }

LABEL_15:

    objc_autoreleasePoolPop(v14);
    goto LABEL_16;
  }

  if (![v4 count])
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v17;
      v18 = "%{public}@Found no characteristic registrations to disable";
      v19 = v16;
      v20 = OS_LOG_TYPE_INFO;
      v21 = 12;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __79__HMDNotificationRegistryCoreDataAdapter_disableAllCharacteristicRegistrations__block_invoke_326;
  v24[3] = &unk_2786846A8;
  v24[4] = *(a1 + 32);
  [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v24];
  v6 = [*(a1 + 40) managedObjectContext];
  if ([v6 hasChanges])
  {
    v7 = *(a1 + 40);
    v23 = 0;
    v8 = [v7 save:&v23];
    v9 = v23;
    if ((v8 & 1) == 0)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = *(a1 + 32);
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543618;
        v27 = v13;
        v28 = 2112;
        v29 = v9;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to save context after disabling all characteristic registrations, error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
    }
  }

  [*(a1 + 40) reset];

LABEL_16:
  v22 = *MEMORY[0x277D85DE8];
}

- (void)removeAllCharacteristicRegistrations
{
  v3 = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  v4 = [v3 backingStore];
  v5 = [v4 context];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__HMDNotificationRegistryCoreDataAdapter_removeAllCharacteristicRegistrations__block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v5;
  v9 = self;
  v6 = v5;
  [v6 unsafeSynchronousBlock:v7];
}

void __78__HMDNotificationRegistryCoreDataAdapter_removeAllCharacteristicRegistrations__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  if ([*(a1 + 40) _deleteAllCharacteristicRegistrationsWithContext:*(a1 + 32)] && objc_msgSend(v2, "hasChanges"))
  {
    v3 = *(a1 + 32);
    v11 = 0;
    v4 = [v3 save:&v11];
    v5 = v11;
    if ((v4 & 1) == 0)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = *(a1 + 40);
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = HMFGetLogIdentifier();
        *buf = 138543618;
        v13 = v9;
        v14 = 2112;
        v15 = v5;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unable to save context after removing all characteristic registrations, error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v6);
    }
  }

  [*(a1 + 32) reset];

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_filterCharacteristicRegistrations:(id)a3 home:(id)a4
{
  v5 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__HMDNotificationRegistryCoreDataAdapter__filterCharacteristicRegistrations_home___block_invoke;
  v9[3] = &unk_278684AA0;
  v10 = v5;
  v6 = v5;
  v7 = [a3 na_map:v9];

  return v7;
}

id __82__HMDNotificationRegistryCoreDataAdapter__filterCharacteristicRegistrations_home___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 user];

  if (v4)
  {
    v5 = [v3 deviceIdsDestination];
  }

  else
  {
    v5 = [v3 guest];

    if (v5)
    {
      v7 = *(a1 + 32);
      v8 = [v3 guest];
      v9 = [v8 modelID];
      v10 = [v7 userWithUUID:v9];

      if ([v10 isAccessCurrentlyAllowedBySchedule])
      {
        v5 = [v3 deviceIdsDestination];
      }

      else
      {

        v5 = 0;
      }
    }
  }

  return v5;
}

- (id)destinationsToNotifyForCharacteristic:(id)a3 applyChangeThresholding:(BOOL)a4
{
  v6 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__246802;
  v26 = __Block_byref_object_dispose__246803;
  v27 = MEMORY[0x277CBEBF8];
  v7 = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  v8 = [v7 backingStore];
  v9 = [v8 context];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __104__HMDNotificationRegistryCoreDataAdapter_destinationsToNotifyForCharacteristic_applyChangeThresholding___block_invoke;
  v15[3] = &unk_278684A78;
  v10 = v9;
  v16 = v10;
  v11 = v6;
  v21 = a4;
  v17 = v11;
  v18 = self;
  v20 = &v22;
  v12 = v7;
  v19 = v12;
  [v10 unsafeSynchronousBlock:v15];
  v13 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v13;
}

void __104__HMDNotificationRegistryCoreDataAdapter_destinationsToNotifyForCharacteristic_applyChangeThresholding___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [*(a1 + 40) value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (*(a1 + 72))
  {
    v6 = *(a1 + 48);
    if (v5)
    {
      v7 = [*(a1 + 48) _fetchEnabledMKFRegistrationsForHMDCharacteristic:*(a1 + 40) exceedingChangeThresholdForCurrentValue:v5 context:v2];
    }

    else
    {
      v20 = [MEMORY[0x277CBEA60] arrayWithObject:*(a1 + 40)];
      v7 = [v6 _fetchEnabledMKFRegistrationsForHMDCharacteristics:v20 context:v2];
    }

    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __104__HMDNotificationRegistryCoreDataAdapter_destinationsToNotifyForCharacteristic_applyChangeThresholding___block_invoke_2;
    v28[3] = &unk_278684A50;
    v29 = v5;
    [v7 na_each:v28];

    if (!v7)
    {
LABEL_16:
      v21 = objc_autoreleasePoolPush();
      v22 = *(a1 + 48);
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        v25 = *(a1 + 40);
        *buf = 138543618;
        v31 = v24;
        v32 = 2112;
        v33 = v25;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch registrations for characteristic %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      goto LABEL_19;
    }
  }

  else
  {
    v8 = *(a1 + 48);
    v9 = [MEMORY[0x277CBEA60] arrayWithObject:*(a1 + 40)];
    v7 = [v8 _fetchEnabledMKFRegistrationsForHMDCharacteristics:v9 context:v2];

    if (!v7)
    {
      goto LABEL_16;
    }
  }

  v10 = [*(a1 + 48) _filterCharacteristicRegistrations:v7 home:*(a1 + 56)];
  v11 = *(*(a1 + 64) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if ([v2 hasChanges])
  {
    v13 = *(a1 + 32);
    v27 = 0;
    v14 = [v13 save:&v27];
    v15 = v27;
    if ((v14 & 1) == 0)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 48);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543618;
        v31 = v19;
        v32 = 2112;
        v33 = v15;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unable to save context after updating characteristic registrations lastNotifiedValues, error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
    }
  }

LABEL_19:
  [*(a1 + 32) reset];

  v26 = *MEMORY[0x277D85DE8];
}

void __104__HMDNotificationRegistryCoreDataAdapter_destinationsToNotifyForCharacteristic_applyChangeThresholding___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 notificationThreshold];

  if (v3)
  {
    v4 = [*(a1 + 32) copy];
    [v5 setLastNotifiedValue:v4];
  }
}

- (void)removeRegistrationsForCharacteristics:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(HMDNotificationRegistryCoreDataAdapter *)self home];
    v6 = [v5 backingStore];
    v7 = [v6 context];

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __80__HMDNotificationRegistryCoreDataAdapter_removeRegistrationsForCharacteristics___block_invoke;
    v9[3] = &unk_27868A010;
    v10 = v7;
    v11 = v4;
    v12 = self;
    v8 = v7;
    [v8 unsafeSynchronousBlock:v9];
  }
}

void __80__HMDNotificationRegistryCoreDataAdapter_removeRegistrationsForCharacteristics___block_invoke(id *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] managedObjectContext];
  v3 = [a1[5] objectAtIndexedSubscript:0];
  v4 = [v3 service];
  v5 = [v4 accessory];
  v6 = [v5 uuid];

  v7 = [a1[5] na_map:&__block_literal_global_317];
  v8 = updatedCharacteristicIIDs(v7);

  if ([a1[6] _deleteAllRegistrationsForCharacteristicIIDs:v8 withAccessoryUUID:v6 hmcContext:a1[4]] && objc_msgSend(v2, "hasChanges"))
  {
    v9 = a1[4];
    v17 = 0;
    v10 = [v9 save:&v17];
    v11 = v17;
    if ((v10 & 1) == 0)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = a1[6];
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543874;
        v19 = v15;
        v20 = 2112;
        v21 = @"YES";
        v22 = 2112;
        v23 = v11;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unable to save the remove characteristic notification registration changes requested, deleteResult %@, error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
    }
  }

  [a1[4] reset];

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_processDisableCharacteristicsRequest:(id)a3 registrationsForAccessory:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 managedObjectContext];
  [v11 hmd_assertIsExecuting];

  v12 = [v8 characteristicThresholds];
  v13 = [MEMORY[0x277CBEB18] array];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __114__HMDNotificationRegistryCoreDataAdapter__processDisableCharacteristicsRequest_registrationsForAccessory_context___block_invoke;
  v21[3] = &unk_278684838;
  v14 = v12;
  v22 = v14;
  v23 = self;
  v25 = v27;
  v26 = &v29;
  v15 = v13;
  v24 = v15;
  [v9 hmf_enumerateWithAutoreleasePoolUsingBlock:v21];
  v16 = [HMDNotificationRegistryCoreDataCharacteristicsRequestResult alloc];
  v17 = *(v30 + 24);
  v18 = [v15 copy];
  v19 = [(HMDNotificationRegistryCoreDataCharacteristicsRequestResult *)v16 initWithCoreDataRequest:v8 didSucceed:1 didModify:v17 didModifyThresholdOnly:0 modifiedCharacteristics:v18];

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(&v29, 8);

  return v19;
}

void __114__HMDNotificationRegistryCoreDataAdapter__processDisableCharacteristicsRequest_registrationsForAccessory_context___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __114__HMDNotificationRegistryCoreDataAdapter__processDisableCharacteristicsRequest_registrationsForAccessory_context___block_invoke_2;
  v13[3] = &unk_278684A28;
  v8 = v6;
  v9 = *(a1 + 40);
  v14 = v8;
  v15 = v9;
  v17 = *(a1 + 64);
  v12 = *(a1 + 48);
  v10 = v12;
  v16 = v12;
  [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:v13];
  v11 = *(*(*(a1 + 56) + 8) + 24);
  if ([*(a1 + 32) count] <= v11)
  {
    *a4 = 1;
  }
}

void __114__HMDNotificationRegistryCoreDataAdapter__processDisableCharacteristicsRequest_registrationsForAccessory_context___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  v6 = [v13 characteristic];
  v7 = [v6 instanceID];
  v8 = [*(a1 + 32) characteristic];
  v9 = [v8 instanceID];
  v10 = HAPEqualInstanceIDs();

  if (v10)
  {
    ++*(*(*(a1 + 56) + 8) + 24);
    *a4 = 1;
    if ([*(a1 + 40) _disableRegistration:*(a1 + 32)])
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
      v11 = *(a1 + 48);
      v12 = [v13 characteristic];
      [v11 addObject:v12];
    }
  }
}

- (id)_processEnableCharacteristicsRequest:(id)a3 homeMember:(id)a4 registrationsForAccessory:(id)a5 context:(id)a6
{
  v10 = a3;
  v29 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v12 managedObjectContext];
  [v13 hmd_assertIsExecuting];

  v14 = [v10 characteristicThresholds];
  v15 = [MEMORY[0x277CBEB18] array];
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 1;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3032000000;
  v42[3] = __Block_byref_object_copy__246802;
  v42[4] = __Block_byref_object_dispose__246803;
  v43 = 0;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __124__HMDNotificationRegistryCoreDataAdapter__processEnableCharacteristicsRequest_homeMember_registrationsForAccessory_context___block_invoke;
  v30[3] = &unk_278684A00;
  v28 = v11;
  v31 = v28;
  v32 = self;
  v38 = &v52;
  v16 = v15;
  v33 = v16;
  v39 = &v48;
  v40 = v42;
  v17 = v14;
  v34 = v17;
  v18 = v12;
  v35 = v18;
  v41 = &v44;
  v19 = v10;
  v36 = v19;
  v20 = v29;
  v37 = v20;
  [v17 hmf_enumerateWithAutoreleasePoolUsingBlock:v30];
  v21 = [HMDNotificationRegistryCoreDataCharacteristicsRequestResult alloc];
  v22 = *(v45 + 24);
  v23 = *(v53 + 24);
  v24 = *(v49 + 24);
  v25 = [v16 copy];
  v26 = [(HMDNotificationRegistryCoreDataCharacteristicsRequestResult *)v21 initWithCoreDataRequest:v19 didSucceed:v22 didModify:v23 didModifyThresholdOnly:v24 modifiedCharacteristics:v25];

  _Block_object_dispose(v42, 8);
  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v52, 8);

  return v26;
}

void __124__HMDNotificationRegistryCoreDataAdapter__processEnableCharacteristicsRequest_homeMember_registrationsForAccessory_context___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v7 = *(a1 + 32);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __124__HMDNotificationRegistryCoreDataAdapter__processEnableCharacteristicsRequest_homeMember_registrationsForAccessory_context___block_invoke_2;
  v39[3] = &unk_2786849B8;
  v8 = v6;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v40 = v8;
  v41 = v9;
  v11 = *(a1 + 88);
  v43 = &v46;
  v44 = v11;
  v12 = v10;
  v13 = *(a1 + 96);
  v42 = v12;
  v45 = v13;
  [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:v39];
  if ((v47[3] & 1) == 0)
  {
    if (*(*(*(a1 + 104) + 8) + 40))
    {
      goto LABEL_4;
    }

    v14 = *(a1 + 40);
    v15 = [*(a1 + 56) na_map:&__block_literal_global_315_246889];
    v16 = [*(a1 + 64) managedObjectContext];
    v17 = [v14 _fetchMKFCharacteristicsFromHMDCharacteristics:v15 context:v16];
    v18 = *(*(a1 + 104) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    if (*(*(*(a1 + 104) + 8) + 40))
    {
LABEL_4:
      v20 = *(a1 + 40);
      v21 = [v8 characteristic];
      v22 = [v8 threshold];
      v23 = [*(a1 + 72) request];
      v24 = [v23 deviceIdsDestination];
      v25 = *(a1 + 80);
      v26 = [*(*(*(a1 + 104) + 8) + 40) objectAtIndexedSubscript:a3];
      v27 = [v20 _insertNotificationRegistrationForCharacteristic:v21 notificationThreshold:v22 deviceIdsDestination:v24 homeMember:v25 mkfCharacteristic:v26 context:*(a1 + 64)];

      if (v27)
      {
        *(*(*(a1 + 88) + 8) + 24) = 1;
        v28 = *(a1 + 48);
        v29 = [v8 characteristic];
        [v28 addObject:v29];

        goto LABEL_12;
      }

      v30 = objc_autoreleasePoolPush();
      v31 = *(a1 + 40);
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        v34 = [v8 characteristic];
        *buf = 138543618;
        v51 = v33;
        v52 = 2112;
        v53 = v34;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Unable to insert notification registration for characteristic: %@", buf, 0x16u);
      }
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      v31 = *(a1 + 40);
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v35 = HMFGetLogIdentifier();
        v36 = *(a1 + 56);
        *buf = 138543618;
        v51 = v35;
        v52 = 2112;
        v53 = v36;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Unable to find MKFCharacteristics for characteristics: %@", buf, 0x16u);
      }
    }

    objc_autoreleasePoolPop(v30);
    *(*(*(a1 + 112) + 8) + 24) = 0;
    *a4 = 1;
  }

LABEL_12:

  _Block_object_dispose(&v46, 8);
  v37 = *MEMORY[0x277D85DE8];
}

void __124__HMDNotificationRegistryCoreDataAdapter__processEnableCharacteristicsRequest_homeMember_registrationsForAccessory_context___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v17 = a2;
  v6 = [v17 characteristic];
  v7 = [v6 instanceID];
  v8 = [*(a1 + 32) characteristic];
  v9 = [v8 instanceID];
  v10 = HAPEqualInstanceIDs();

  if (v10)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    *a4 = 1;
    if ([*(a1 + 40) _enableRegistration:v17])
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
      v11 = *(a1 + 48);
      v12 = [*(a1 + 32) characteristic];
      [v11 addObject:v12];
    }

    v13 = *(a1 + 40);
    v14 = [*(a1 + 32) threshold];
    LODWORD(v13) = [v13 _updateThresholdRegistration:v17 threshold:v14];

    if (v13 && (*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
    {
      *(*(*(a1 + 72) + 8) + 24) = 1;
      v15 = *(a1 + 48);
      v16 = [*(a1 + 32) characteristic];
      [v15 addObject:v16];
    }
  }
}

- (id)_processGroupedCharacteristicsRequests:(id)a3 user:(id)a4 destination:(id)a5 context:(id)a6
{
  v68[3] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v13 managedObjectContext];
  [v14 hmd_assertIsExecuting];

  v15 = [MEMORY[0x277CBEB58] set];
  v16 = [MEMORY[0x277CBEB58] set];
  v17 = [MEMORY[0x277CBEB38] dictionary];
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __106__HMDNotificationRegistryCoreDataAdapter__processGroupedCharacteristicsRequests_user_destination_context___block_invoke;
  v62[3] = &unk_2786848F8;
  v18 = v15;
  v63 = v18;
  v19 = v16;
  v64 = v19;
  v47 = v17;
  v65 = v47;
  v50 = v10;
  [v10 hmf_enumerateWithAutoreleasePoolUsingBlock:v62];
  v48 = v13;
  v20 = [v13 managedObjectContext];
  v68[0] = @"characteristic.service.accessory.modelID";
  v68[1] = @"characteristic.instanceID";
  v68[2] = @"lastModified";
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:3];
  v22 = [v11 uuid];
  v23 = [v19 allObjects];
  v46 = v18;
  v24 = [v18 allObjects];
  v61 = 0;
  v44 = v21;
  v45 = v20;
  v49 = v12;
  v25 = -[HMDNotificationRegistryCoreDataAdapter _fetchMKFUserAndRegistrationsWithUserUUID:withCharacteristicIIDs:withAccessoryUUIDs:withDeviceIdsDestination:withPrefetchPaths:isRestrictedGuest:outHomeMember:context:](self, "_fetchMKFUserAndRegistrationsWithUserUUID:withCharacteristicIIDs:withAccessoryUUIDs:withDeviceIdsDestination:withPrefetchPaths:isRestrictedGuest:outHomeMember:context:", v22, v23, v24, v12, v21, [v11 isRestrictedGuest], &v61, v20);
  v26 = v61;

  if (v25 && v26)
  {
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __106__HMDNotificationRegistryCoreDataAdapter__processGroupedCharacteristicsRequests_user_destination_context___block_invoke_2_311;
    v59[3] = &unk_278684968;
    v27 = v47;
    v60 = v47;
    [v25 na_filter:v59];
    v28 = v43 = v11;
    v29 = [MEMORY[0x277CBEB38] dictionary];
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __106__HMDNotificationRegistryCoreDataAdapter__processGroupedCharacteristicsRequests_user_destination_context___block_invoke_4;
    v57[3] = &unk_2786846A8;
    v30 = v29;
    v58 = v30;
    [v28 hmf_enumerateWithAutoreleasePoolUsingBlock:v57];
    v31 = [MEMORY[0x277CBEB58] set];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __106__HMDNotificationRegistryCoreDataAdapter__processGroupedCharacteristicsRequests_user_destination_context___block_invoke_5;
    v51[3] = &unk_278684990;
    v52 = v30;
    v53 = self;
    v54 = v26;
    v32 = v48;
    v55 = v48;
    v56 = v31;
    v33 = v31;
    v34 = v30;
    v35 = v50;
    [v50 hmf_enumerateWithAutoreleasePoolUsingBlock:v51];
    v36 = [v33 copy];

    v11 = v43;
  }

  else
  {
    v37 = objc_autoreleasePoolPush();
    v38 = self;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = HMFGetLogIdentifier();
      *buf = 138543362;
      v67 = v40;
      _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch home member and registrations", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v37);
    v35 = v50;
    v36 = [v50 na_map:&__block_literal_global_310_246896];
    v27 = v47;
    v32 = v48;
  }

  v41 = *MEMORY[0x277D85DE8];

  return v36;
}

void __106__HMDNotificationRegistryCoreDataAdapter__processGroupedCharacteristicsRequests_user_destination_context___block_invoke(id *a1, void *a2)
{
  v3 = [a2 characteristicThresholds];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __106__HMDNotificationRegistryCoreDataAdapter__processGroupedCharacteristicsRequests_user_destination_context___block_invoke_2;
  v4[3] = &unk_2786848D0;
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  [v3 hmf_enumerateWithAutoreleasePoolUsingBlock:v4];
}

uint64_t __106__HMDNotificationRegistryCoreDataAdapter__processGroupedCharacteristicsRequests_user_destination_context___block_invoke_2_311(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 characteristic];
  v6 = [v5 service];
  v7 = [v6 accessory];
  v8 = [v7 modelID];
  v9 = [v4 objectForKeyedSubscript:v8];

  v10 = [v9 allObjects];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __106__HMDNotificationRegistryCoreDataAdapter__processGroupedCharacteristicsRequests_user_destination_context___block_invoke_3;
  v14[3] = &unk_278684940;
  v15 = v3;
  v11 = v3;
  v12 = [v10 na_any:v14];

  return v12;
}

void __106__HMDNotificationRegistryCoreDataAdapter__processGroupedCharacteristicsRequests_user_destination_context___block_invoke_4(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 characteristic];
  v4 = [v3 service];
  v5 = [v4 accessory];
  v6 = [v5 modelID];

  v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
  if (!v7)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
  }

  [v7 addObject:v8];
}

void __106__HMDNotificationRegistryCoreDataAdapter__processGroupedCharacteristicsRequests_user_destination_context___block_invoke_5(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = *(a1 + 32);
  v4 = [v11 request];
  v5 = [v4 accessoryUUID];
  v6 = [v3 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v7 = [v11 request];
  v8 = [v7 enable];

  v9 = *(a1 + 40);
  if (v8)
  {
    [v9 _processEnableCharacteristicsRequest:v11 homeMember:*(a1 + 48) registrationsForAccessory:v6 context:*(a1 + 56)];
  }

  else
  {
    [v9 _processDisableCharacteristicsRequest:v11 registrationsForAccessory:v6 context:*(a1 + 56)];
  }
  v10 = ;
  [*(a1 + 64) addObject:v10];
}

uint64_t __106__HMDNotificationRegistryCoreDataAdapter__processGroupedCharacteristicsRequests_user_destination_context___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 characteristic];
  v5 = [v4 instanceID];
  v6 = HAPEqualInstanceIDs();

  return v6;
}

HMDNotificationRegistryCoreDataCharacteristicsRequestResult *__106__HMDNotificationRegistryCoreDataAdapter__processGroupedCharacteristicsRequests_user_destination_context___block_invoke_307(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [HMDNotificationRegistryCoreDataCharacteristicsRequestResult alloc];
  v4 = [(HMDNotificationRegistryCoreDataCharacteristicsRequestResult *)v3 initWithCoreDataRequest:v2 didSucceed:0 didModify:0 didModifyThresholdOnly:0 modifiedCharacteristics:MEMORY[0x277CBEBF8]];

  return v4;
}

void __106__HMDNotificationRegistryCoreDataAdapter__processGroupedCharacteristicsRequests_user_destination_context___block_invoke_2(void *a1, void *a2)
{
  v17 = a2;
  v3 = [v17 characteristic];
  v4 = [v3 accessory];

  v5 = a1[4];
  v6 = [v4 uuid];
  [v5 addObject:v6];

  v7 = a1[5];
  v8 = [v17 characteristic];
  v9 = [v8 instanceID];
  [v7 addObject:v9];

  v10 = a1[6];
  v11 = [v4 uuid];
  v12 = [v10 objectForKeyedSubscript:v11];

  if (!v12)
  {
    v12 = [MEMORY[0x277CBEB58] set];
    v13 = a1[6];
    v14 = [v4 uuid];
    [v13 setObject:v12 forKeyedSubscript:v14];
  }

  v15 = [v17 characteristic];
  v16 = [v15 instanceID];
  [v12 addObject:v16];
}

- (id)processCharacteristicsRequests:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [MEMORY[0x277CBEB58] set];
    v6 = [MEMORY[0x277CBEB38] dictionary];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __73__HMDNotificationRegistryCoreDataAdapter_processCharacteristicsRequests___block_invoke;
    v25[3] = &unk_278684860;
    v7 = v6;
    v26 = v7;
    [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v25];
    v8 = [(HMDNotificationRegistryCoreDataAdapter *)self home];
    v9 = [v8 backingStore];
    v10 = [v9 context];

    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __73__HMDNotificationRegistryCoreDataAdapter_processCharacteristicsRequests___block_invoke_2;
    v19 = &unk_278689550;
    v20 = v7;
    v21 = self;
    v22 = v10;
    v23 = v5;
    v24 = v4;
    v11 = v5;
    v12 = v10;
    v13 = v7;
    [v12 unsafeSynchronousBlock:&v16];
    v14 = [v11 copy];
  }

  else
  {
    v14 = [MEMORY[0x277CBEB98] set];
  }

  return v14;
}

void __73__HMDNotificationRegistryCoreDataAdapter_processCharacteristicsRequests___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 request];
  v4 = [v3 deviceIdsDestination];

  v5 = [*(a1 + 32) objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = [MEMORY[0x277CBEB58] set];
  }

  [v5 addObject:v6];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];
}

void __73__HMDNotificationRegistryCoreDataAdapter_processCharacteristicsRequests___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __73__HMDNotificationRegistryCoreDataAdapter_processCharacteristicsRequests___block_invoke_3;
  v16[3] = &unk_278684888;
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v16[4] = *(a1 + 40);
  v17 = v3;
  v18 = *(a1 + 56);
  [v2 enumerateKeysAndObjectsUsingBlock:v16];
  if ([*(a1 + 56) na_any:&__block_literal_global_301])
  {
    v4 = *(a1 + 48);
    v15 = 0;
    v5 = [v4 save:&v15];
    v6 = v15;
    if ((v5 & 1) == 0)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = *(a1 + 40);
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        *buf = 138543618;
        v20 = v10;
        v21 = 2112;
        v22 = v6;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Unable to save the characteristic notification registration changes requested, error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      [*(a1 + 56) removeAllObjects];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __73__HMDNotificationRegistryCoreDataAdapter_processCharacteristicsRequests___block_invoke_302;
      v13[3] = &unk_278684860;
      v11 = *(a1 + 64);
      v14 = *(a1 + 56);
      [v11 hmf_enumerateWithAutoreleasePoolUsingBlock:v13];
    }
  }

  [*(a1 + 48) reset];

  v12 = *MEMORY[0x277D85DE8];
}

void __73__HMDNotificationRegistryCoreDataAdapter_processCharacteristicsRequests___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if (([v5 hmf_isEmpty] & 1) == 0)
  {
    v6 = [v5 anyObject];
    v7 = [v6 request];
    v8 = [v7 user];

    v9 = [*(a1 + 32) _processGroupedCharacteristicsRequests:v5 user:v8 destination:v12 context:*(a1 + 40)];
    v10 = *(a1 + 48);
    v11 = [v9 allObjects];
    [v10 addObjectsFromArray:v11];
  }
}

void __73__HMDNotificationRegistryCoreDataAdapter_processCharacteristicsRequests___block_invoke_302(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [HMDNotificationRegistryCoreDataCharacteristicsRequestResult alloc];
  v5 = [(HMDNotificationRegistryCoreDataCharacteristicsRequestResult *)v4 initWithCoreDataRequest:v3 didSucceed:0 didModify:0 didModifyThresholdOnly:0 modifiedCharacteristics:MEMORY[0x277CBEBF8]];

  [v2 addObject:v5];
}

uint64_t __73__HMDNotificationRegistryCoreDataAdapter_processCharacteristicsRequests___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 didSucceed])
  {
    if ([v2 didModify])
    {
      v3 = 1;
    }

    else
    {
      v3 = [v2 didModifyThresholdOnly];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)disableNotificationForCharacteristics:(id)a3 user:(id)a4 deviceIdsDestination:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
    v12 = [(HMDNotificationRegistryCoreDataAdapter *)self home];
    v13 = [v12 backingStore];
    v14 = [v13 context];

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __106__HMDNotificationRegistryCoreDataAdapter_disableNotificationForCharacteristics_user_deviceIdsDestination___block_invoke;
    v19[3] = &unk_278684B90;
    v15 = v14;
    v20 = v15;
    v21 = v8;
    v22 = self;
    v23 = v9;
    v24 = v10;
    v26 = &v27;
    v16 = v11;
    v25 = v16;
    [v15 unsafeSynchronousBlock:v19];
    if (*(v28 + 24) == 1)
    {
      v17 = [v16 copy];
    }

    else
    {
      v17 = MEMORY[0x277CBEBF8];
    }

    _Block_object_dispose(&v27, 8);
  }

  else
  {
    v17 = MEMORY[0x277CBEBF8];
  }

  return v17;
}

void __106__HMDNotificationRegistryCoreDataAdapter_disableNotificationForCharacteristics_user_deviceIdsDestination___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [*(a1 + 40) objectAtIndexedSubscript:0];
  v4 = [v3 service];
  v5 = [v4 accessory];
  v6 = [v5 uuid];

  v7 = [*(a1 + 40) na_map:&__block_literal_global_291_246907];
  v8 = *(a1 + 48);
  v9 = [*(a1 + 56) uuid];
  v10 = *(a1 + 64);
  v11 = [MEMORY[0x277CBEA60] arrayWithObject:@"characteristic.instanceID"];
  v12 = [*(a1 + 56) isRestrictedGuest];
  v40 = 0;
  v13 = [v8 _fetchMKFUserAndRegistrationsWithUserUUID:v9 withCharacteristicIIDs:v7 withAccessoryUUID:v6 withDeviceIdsDestination:v10 withPrefetchPaths:v11 isRestrictedGuest:v12 outHomeMember:&v40 context:v2];
  v14 = v40;

  if (v13 && v14)
  {
    if ([v13 count])
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v46 = 0x2020000000;
      v47 = 0;
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __106__HMDNotificationRegistryCoreDataAdapter_disableNotificationForCharacteristics_user_deviceIdsDestination___block_invoke_292;
      v34[3] = &unk_278684838;
      v15 = *(a1 + 40);
      v16 = *(a1 + 48);
      v35 = v15;
      v36 = v16;
      v18 = *(a1 + 72);
      v17 = *(a1 + 80);
      p_buf = &buf;
      v39 = v17;
      v37 = v18;
      [v13 hmf_enumerateWithAutoreleasePoolUsingBlock:v34];
      if ([v2 hasChanges] && ((v19 = *(a1 + 32), v33 = 0, v20 = objc_msgSend(v19, "save:", &v33), (v21 = v33) == 0) ? (v22 = v20) : (v22 = 0), (v22 & 1) == 0))
      {
        v27 = v21;
        context = objc_autoreleasePoolPush();
        v28 = *(a1 + 48);
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = HMFGetLogIdentifier();
          *v41 = 138543618;
          v42 = v30;
          v43 = 2112;
          v44 = v27;
          _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Unable to save the disable characteristic notification registration changes requested, error: %@", v41, 0x16u);
        }

        objc_autoreleasePoolPop(context);
        *(*(*(a1 + 80) + 8) + 24) = 0;
      }

      else
      {
        [*(a1 + 32) reset];
      }

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      [*(a1 + 32) reset];
    }
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = *(a1 + 48);
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v26;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch home member and registrations", &buf, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
    [*(a1 + 32) reset];
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __106__HMDNotificationRegistryCoreDataAdapter_disableNotificationForCharacteristics_user_deviceIdsDestination___block_invoke_292(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __106__HMDNotificationRegistryCoreDataAdapter_disableNotificationForCharacteristics_user_deviceIdsDestination___block_invoke_2_293;
  v13[3] = &unk_278684810;
  v8 = v6;
  v9 = *(a1 + 40);
  v14 = v8;
  v15 = v9;
  v17 = *(a1 + 64);
  v12 = *(a1 + 48);
  v10 = v12;
  v16 = v12;
  [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:v13];
  v11 = *(*(*(a1 + 56) + 8) + 24);
  if ([*(a1 + 32) count] <= v11)
  {
    *a4 = 1;
  }
}

void __106__HMDNotificationRegistryCoreDataAdapter_disableNotificationForCharacteristics_user_deviceIdsDestination___block_invoke_2_293(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v6 = [v10 instanceID];
  v7 = [*(a1 + 32) characteristic];
  v8 = [v7 instanceID];
  v9 = HAPEqualInstanceIDs();

  if (v9)
  {
    ++*(*(*(a1 + 56) + 8) + 24);
    *a4 = 1;
    if ([*(a1 + 40) _disableRegistration:*(a1 + 32)])
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
      [*(a1 + 48) addObject:v10];
    }
  }
}

- (BOOL)enableNotificationsForCharacteristics:(id)a3 user:(id)a4 deviceIdsDestination:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    v11 = [(HMDNotificationRegistryCoreDataAdapter *)self home];
    v12 = v11;
    if (v11)
    {
      v28 = 0;
      v29 = &v28;
      v30 = 0x2020000000;
      v31 = 0;
      v26[0] = 0;
      v26[1] = v26;
      v26[2] = 0x2020000000;
      v27 = 1;
      v13 = [v11 backingStore];
      v14 = [v13 context];

      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __106__HMDNotificationRegistryCoreDataAdapter_enableNotificationsForCharacteristics_user_deviceIdsDestination___block_invoke;
      v18[3] = &unk_2786847E8;
      v15 = v14;
      v19 = v15;
      v20 = v8;
      v21 = self;
      v22 = v9;
      v23 = v10;
      v24 = v26;
      v25 = &v28;
      [v15 unsafeSynchronousBlock:v18];
      v16 = *(v29 + 24);

      _Block_object_dispose(v26, 8);
      _Block_object_dispose(&v28, 8);
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

void __106__HMDNotificationRegistryCoreDataAdapter_enableNotificationsForCharacteristics_user_deviceIdsDestination___block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [*(a1 + 40) objectAtIndexedSubscript:0];
  v4 = [v3 service];
  v5 = [v4 accessory];
  v34 = [v5 uuid];

  v6 = [*(a1 + 40) na_map:&__block_literal_global_286_246912];
  v7 = *(a1 + 48);
  v8 = [*(a1 + 56) uuid];
  v9 = *(a1 + 64);
  v10 = [*(a1 + 56) isRestrictedGuest];
  v46 = 0;
  v11 = [v7 _fetchMKFUserAndRegistrationsWithUserUUID:v8 withCharacteristicIIDs:v6 withAccessoryUUID:v34 withDeviceIdsDestination:v9 withPrefetchPaths:0 isRestrictedGuest:v10 outHomeMember:&v46 context:v2];
  v12 = v46;

  if (v11 && v12)
  {
    *&v51 = 0;
    *(&v51 + 1) = &v51;
    v52 = 0x3032000000;
    v53 = __Block_byref_object_copy__246802;
    v54 = __Block_byref_object_dispose__246803;
    v55 = 0;
    v13 = *(a1 + 40);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __106__HMDNotificationRegistryCoreDataAdapter_enableNotificationsForCharacteristics_user_deviceIdsDestination___block_invoke_287;
    v36[3] = &unk_2786847C0;
    v14 = v11;
    v15 = *(a1 + 80);
    v37 = v14;
    v43 = v15;
    v44 = &v51;
    v33 = *(a1 + 40);
    v16 = v33.i64[0];
    v38 = vextq_s8(v33, v33, 8uLL);
    v17 = v2;
    v19 = *(a1 + 64);
    v18 = *(a1 + 72);
    v39 = v17;
    v45 = v18;
    v40 = v19;
    v41 = v12;
    v42 = *(a1 + 32);
    [v13 hmf_enumerateWithAutoreleasePoolUsingBlock:v36];
    if (*(*(*(a1 + 72) + 8) + 24) == 1 && [v17 hasChanges])
    {
      v20 = *(a1 + 32);
      v35 = 0;
      v21 = [v20 save:&v35];
      v22 = v35;
      v23 = v22;
      *(*(*(a1 + 72) + 8) + 24) = v21;
      if (*(*(*(a1 + 72) + 8) + 24) != 1 || v22)
      {
        v24 = objc_autoreleasePoolPush();
        v25 = *(a1 + 48);
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543618;
          v48 = v27;
          v49 = 2112;
          v50 = v23;
          _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Unable to save the enable characteristic notification registration changes requested, error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v24);
        *(*(*(a1 + 80) + 8) + 24) = 0;
      }
    }

    else
    {
      *(*(*(a1 + 80) + 8) + 24) = 0;
    }

    [*(a1 + 32) reset];

    _Block_object_dispose(&v51, 8);
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    v29 = *(a1 + 48);
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      LODWORD(v51) = 138543362;
      *(&v51 + 4) = v31;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch home member and registrations", &v51, 0xCu);
    }

    objc_autoreleasePoolPop(v28);
    *(*(*(a1 + 72) + 8) + 24) = 0;
    [*(a1 + 32) reset];
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __106__HMDNotificationRegistryCoreDataAdapter_enableNotificationsForCharacteristics_user_deviceIdsDestination___block_invoke_287(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v8 = *(a1 + 32);
  v26 = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __106__HMDNotificationRegistryCoreDataAdapter_enableNotificationsForCharacteristics_user_deviceIdsDestination___block_invoke_2_288;
  v29 = &unk_278684798;
  v9 = v7;
  v10 = *(a1 + 40);
  v30 = v9;
  v31 = v10;
  v11 = *(a1 + 88);
  v32 = &v34;
  v33 = v11;
  [v8 hmf_enumerateWithAutoreleasePoolUsingBlock:&v26];
  if ((v35[3] & 1) == 0)
  {
    v12 = *(*(*(a1 + 96) + 8) + 40);
    if (v12 || ([*(a1 + 40) _fetchMKFCharacteristicsFromHMDCharacteristics:*(a1 + 48) context:{*(a1 + 56), v26, v27, v28, v29}], v13 = objc_claimAutoreleasedReturnValue(), v14 = *(*(a1 + 96) + 8), v15 = *(v14 + 40), *(v14 + 40) = v13, v15, (v12 = *(*(*(a1 + 96) + 8) + 40)) != 0))
    {
      v16 = *(a1 + 40);
      v17 = *(a1 + 64);
      v18 = *(a1 + 72);
      v19 = [v12 objectAtIndexedSubscript:{a3, v26, v27, v28, v29}];
      LOBYTE(v17) = [v16 _insertNotificationRegistrationForCharacteristic:v9 notificationThreshold:0 deviceIdsDestination:v17 homeMember:v18 mkfCharacteristic:v19 context:*(a1 + 80)];

      if (v17)
      {
        *(*(*(a1 + 88) + 8) + 24) = 1;
        goto LABEL_10;
      }
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = *(a1 + 40);
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        v24 = *(a1 + 48);
        *buf = 138543618;
        v39 = v23;
        v40 = 2112;
        v41 = v24;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Unable to find MKFCharacteristics for characteristics: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
    }

    *(*(*(a1 + 104) + 8) + 24) = 0;
    *a4 = 1;
  }

LABEL_10:

  _Block_object_dispose(&v34, 8);
  v25 = *MEMORY[0x277D85DE8];
}

void __106__HMDNotificationRegistryCoreDataAdapter_enableNotificationsForCharacteristics_user_deviceIdsDestination___block_invoke_2_288(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v6 = [v10 characteristic];
  v7 = [v6 instanceID];
  v8 = [*(a1 + 32) instanceID];
  v9 = HAPEqualInstanceIDs();

  if (v9)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
    if ([*(a1 + 40) _enableRegistration:v10])
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }
}

- (id)_fetchRequestForAllActionSetRegistrations
{
  v3 = objc_alloc(MEMORY[0x277CBE428]);
  v4 = +[_MKFNotificationRegistrationActionSet entity];
  v5 = [v4 name];
  v6 = [v3 initWithEntityName:v5];

  v7 = MEMORY[0x277CCAC30];
  v8 = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  v9 = [v8 uuid];
  v10 = [v7 predicateWithFormat:@"%K == %@", @"actionSet.home.modelID", v9];
  [v6 setPredicate:v10];

  return v6;
}

- (id)_fetchRequestForAllMediaProfileRegistrations
{
  v3 = objc_alloc(MEMORY[0x277CBE428]);
  v4 = +[_MKFNotificationRegistrationMediaProperty entity];
  v5 = [v4 name];
  v6 = [v3 initWithEntityName:v5];

  v7 = MEMORY[0x277CCAC30];
  v8 = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  v9 = [v8 uuid];
  v10 = [v7 predicateWithFormat:@"%K == %@", @"accessory.home.modelID", v9];
  [v6 setPredicate:v10];

  return v6;
}

- (id)_fetchRequestForActionSetRegistrationsWithoutAllowedDestinations:(id)a3
{
  v21[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  v6 = objc_alloc(MEMORY[0x277CBE428]);
  v7 = +[_MKFNotificationRegistrationActionSet entity];
  v8 = [v7 name];
  v9 = [v6 initWithEntityName:v8];

  v10 = MEMORY[0x277CCAC30];
  v11 = [v5 uuid];
  v12 = [v10 predicateWithFormat:@"(%K == %@) AND NOT (%K IN %@)", @"user.home.modelID", v11, @"deviceIdsDestination", v4];

  [v9 setPredicate:v12];
  v13 = MEMORY[0x277CCAC30];
  v14 = [v5 uuid];
  v15 = [v13 predicateWithFormat:@"(%K == %@) AND NOT (%K IN %@)", @"guest.home.modelID", v14, @"deviceIdsDestination", v4];

  v16 = MEMORY[0x277CCA920];
  v21[0] = v12;
  v21[1] = v15;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v18 = [v16 orPredicateWithSubpredicates:v17];
  [v9 setPredicate:v18];

  v19 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_fetchRequestForMediaProfileRegistrationsWithoutAllowedDestinations:(id)a3
{
  v21[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  v6 = objc_alloc(MEMORY[0x277CBE428]);
  v7 = +[_MKFNotificationRegistrationMediaProperty entity];
  v8 = [v7 name];
  v9 = [v6 initWithEntityName:v8];

  v10 = MEMORY[0x277CCAC30];
  v11 = [v5 uuid];
  v12 = [v10 predicateWithFormat:@"(%K == %@) AND NOT (%K IN %@)", @"user.home.modelID", v11, @"deviceIdsDestination", v4];

  [v9 setPredicate:v12];
  v13 = MEMORY[0x277CCAC30];
  v14 = [v5 uuid];
  v15 = [v13 predicateWithFormat:@"(%K == %@) AND NOT (%K IN %@)", @"guest.home.modelID", v14, @"deviceIdsDestination", v4];

  v16 = MEMORY[0x277CCA920];
  v21[0] = v12;
  v21[1] = v15;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v18 = [v16 orPredicateWithSubpredicates:v17];
  [v9 setPredicate:v18];

  v19 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_fetchRequestForCharacteristicRegistrationsWithoutAllowedDestinations:(id)a3
{
  v21[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  v6 = objc_alloc(MEMORY[0x277CBE428]);
  v7 = +[_MKFNotificationRegistrationCharacteristic entity];
  v8 = [v7 name];
  v9 = [v6 initWithEntityName:v8];

  v10 = MEMORY[0x277CCAC30];
  v11 = [v5 uuid];
  v12 = [v10 predicateWithFormat:@"(%K == %@) AND NOT (%K IN %@)", @"user.home.modelID", v11, @"deviceIdsDestination", v4];

  [v9 setPredicate:v12];
  v13 = MEMORY[0x277CCAC30];
  v14 = [v5 uuid];
  v15 = [v13 predicateWithFormat:@"(%K == %@) AND NOT (%K IN %@)", @"guest.home.modelID", v14, @"deviceIdsDestination", v4];

  v16 = MEMORY[0x277CCA920];
  v21[0] = v12;
  v21[1] = v15;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v18 = [v16 orPredicateWithSubpredicates:v17];
  [v9 setPredicate:v18];

  v19 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_fetchMKFRegistrationsWithUserUUID:(id)a3 actionSetUUID:(id)a4 deviceIdsDestination:(id)a5 prefetchPaths:(id)a6 isRestrictedGuest:(BOOL)a7 context:(id)a8
{
  v9 = a7;
  v47 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  [v18 hmd_assertIsExecuting];
  v19 = objc_alloc(MEMORY[0x277CBE428]);
  v20 = +[_MKFNotificationRegistrationActionSet entity];
  v21 = [v20 name];
  v22 = [v19 initWithEntityName:v21];

  [v22 setRelationshipKeyPathsForPrefetching:v17];
  v23 = @"user.modelID";
  if (v9)
  {
    v23 = @"guest.modelID";
  }

  v24 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@) AND (%K == %@) AND (%K == %@)", v23, v14, @"actionSet.modelID", v15, @"deviceIdsDestination", v16];
  [v22 setPredicate:v24];

  v34 = 0;
  v25 = [v18 executeFetchRequest:v22 error:&v34];
  v26 = v34;
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    context = objc_autoreleasePoolPush();
    v28 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138544642;
      v36 = v32;
      v37 = 2112;
      v38 = v14;
      v39 = 2112;
      v40 = v15;
      v41 = 2112;
      v42 = v16;
      v43 = 2112;
      v44 = v17;
      v45 = 2112;
      v46 = v26;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch action set registrations for userUUID %@ actionSetUUID %@ deviceIdsDestination %@ prefetchPaths %@, error: %@", buf, 0x3Eu);
    }

    objc_autoreleasePoolPop(context);
  }

  v30 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)_fetchMKFUserAndRegistrationsWithUserUUID:(id)a3 withMediaProfileUUID:(id)a4 withMediaPropertyIn:(id)a5 withDeviceIdsDestination:(id)a6 withAccessoryUUID:(id)a7 withPrefetchPaths:(id)a8 isRestrictedGuest:(BOOL)a9 outHomeMember:(id *)a10 context:(id)a11
{
  v16 = a3;
  v17 = a11;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  [v17 hmd_assertIsExecuting];
  v23 = [MEMORY[0x277CBEB18] arrayWithArray:v18];

  [v23 addObject:@"user"];
  LOBYTE(v27) = a9;
  v24 = [(HMDNotificationRegistryCoreDataAdapter *)self _fetchMKFRegistrationsWithUserUUID:v16 withMediaProfileUUID:v22 withMediaPropertyIn:v21 withDeviceIdsDestination:v20 withAccessoryUUID:v19 withPrefetchPaths:v23 isRestrictedGuest:v27 context:v17];

  if (v24)
  {
    *a10 = [(HMDNotificationRegistryCoreDataAdapter *)self homeMemberForRegistrations:v24 userUUID:v16 isRestrictedGuest:a9 context:v17];
    v25 = v24;
  }

  return v24;
}

- (id)_fetchMKFRegistrationsWithUserUUID:(id)a3 withMediaProfileUUID:(id)a4 withMediaPropertyIn:(id)a5 withDeviceIdsDestination:(id)a6 withAccessoryUUID:(id)a7 withPrefetchPaths:(id)a8 isRestrictedGuest:(BOOL)a9 context:(id)a10
{
  v57 = *MEMORY[0x277D85DE8];
  v38 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a10;
  [v20 hmd_assertIsExecuting];
  v21 = objc_alloc(MEMORY[0x277CBE428]);
  v22 = +[_MKFNotificationRegistrationMediaProperty entity];
  v23 = [v22 name];
  v24 = [v21 initWithEntityName:v23];

  v25 = v18;
  v39 = v19;
  [v24 setRelationshipKeyPathsForPrefetching:v19];
  v26 = @"user.modelID";
  if (a9)
  {
    v26 = @"guest.modelID";
  }

  v27 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@) AND (%K == %@) AND (%K IN %@) AND (%K == %@) AND (%K == %@)", v26, v38, @"mediaProfileIdentifier", v15, @"mediaProperty", v16, @"deviceIdsDestination", v17, @"accessory.modelID", v18];
  [v24 setPredicate:v27];

  v40 = 0;
  v28 = [v20 executeFetchRequest:v24 error:&v40];
  v29 = v40;
  if (v28)
  {
    v30 = v28;
  }

  else
  {
    context = objc_autoreleasePoolPush();
    v31 = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v37 = HMFGetLogIdentifier();
      *buf = 138545154;
      v42 = v37;
      v43 = 2112;
      v44 = v38;
      v45 = 2112;
      v46 = v15;
      v47 = 2112;
      v48 = v16;
      v49 = 2112;
      v50 = v17;
      v51 = 2112;
      v52 = v18;
      v53 = 2112;
      v54 = v39;
      v55 = 2112;
      v56 = v29;
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch media property registrations for userUUID %@ mediaProfileUUID %@ mediaProperties %@ deviceIdsDestination %@ accessoryUUID %@ prefetchPaths %@, error: %@", buf, 0x52u);
    }

    objc_autoreleasePoolPop(context);
    v25 = v18;
  }

  v33 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)homeMemberForRegistrations:(id)a3 userUUID:(id)a4 isRestrictedGuest:(BOOL)a5 context:(id)a6
{
  v7 = a5;
  v26 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if ([v10 count])
  {
    v13 = [v10 firstObject];
    v14 = v13;
    if (v7)
    {
      [v13 guest];
    }

    else
    {
      [v13 user];
    }
    v15 = ;
  }

  else
  {
    v15 = [(HMDNotificationRegistryCoreDataAdapter *)self _fetchHomeMemberWithUUID:v11 context:v12];
    if (!v15)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v22 = 138543618;
        v23 = v19;
        v24 = 2112;
        v25 = v11;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unable to find the home member with UUID: %@", &v22, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v15 = 0;
    }
  }

  v20 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)_fetchMKFRegistrationsWithUserUUID:(id)a3 withCharacteristicIIDs:(id)a4 withAccessoryUUIDs:(id)a5 withDeviceIdsDestination:(id)a6 withPrefetchPaths:(id)a7 isRestrictedGuest:(BOOL)a8 context:(id)a9
{
  v9 = a8;
  v53 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a9;
  [v20 hmd_assertIsExecuting];
  if ([v16 hmf_isEmpty])
  {
    v21 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v38 = self;
    v22 = objc_alloc(MEMORY[0x277CBE428]);
    v23 = +[_MKFNotificationRegistrationCharacteristic entity];
    v24 = [v23 name];
    v25 = [v22 initWithEntityName:v24];

    v26 = MEMORY[0x277CCAC30];
    v27 = updatedCharacteristicIIDs(v16);
    v28 = v27;
    v29 = @"user.modelID";
    if (v9)
    {
      v29 = @"guest.modelID";
    }

    v30 = [v26 predicateWithFormat:@"(%K == %@) AND (%K IN %@) AND (%K IN %@) AND (%K == %@)", v29, v15, @"characteristic.instanceID", v27, @"characteristic.service.accessory.modelID", v17, @"deviceIdsDestination", v18];
    [v25 setPredicate:v30];

    if (v19)
    {
      [v25 setRelationshipKeyPathsForPrefetching:v19];
    }

    v40 = 0;
    v21 = [v20 executeFetchRequest:v25 error:&v40];
    v31 = v40;
    if (v21)
    {
      v32 = v21;
    }

    else
    {
      context = objc_autoreleasePoolPush();
      v39 = v38;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138544642;
        v42 = v36;
        v43 = 2112;
        v44 = v15;
        v45 = 2112;
        v46 = v16;
        v47 = 2112;
        v48 = v17;
        v49 = 2112;
        v50 = v18;
        v51 = 2112;
        v52 = v31;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch notification registrations for userOrGuest uuid %@ characteristic IIDs %@ accessory UUIDs %@ deviceIdsDestination %@, error: %@", buf, 0x3Eu);
      }

      objc_autoreleasePoolPop(context);
    }
  }

  v34 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)_fetchMKFRegistrationsWithUserUUID:(id)a3 withCharacteristicIIDs:(id)a4 withAccessoryUUID:(id)a5 withDeviceIdsDestination:(id)a6 withPrefetchPaths:(id)a7 isRestrictedGuest:(BOOL)a8 context:(id)a9
{
  v9 = a8;
  v53 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a9;
  [v20 hmd_assertIsExecuting];
  if ([v16 hmf_isEmpty])
  {
    v21 = 0;
  }

  else
  {
    v38 = self;
    v22 = objc_alloc(MEMORY[0x277CBE428]);
    v23 = +[_MKFNotificationRegistrationCharacteristic entity];
    v24 = [v23 name];
    v25 = [v22 initWithEntityName:v24];

    v26 = MEMORY[0x277CCAC30];
    v27 = updatedCharacteristicIIDs(v16);
    v28 = v27;
    v29 = @"user.modelID";
    if (v9)
    {
      v29 = @"guest.modelID";
    }

    v30 = [v26 predicateWithFormat:@"(%K == %@) AND (%K IN %@) AND (%K == %@) AND (%K == %@)", v29, v15, @"characteristic.instanceID", v27, @"characteristic.service.accessory.modelID", v17, @"deviceIdsDestination", v18];
    [v25 setPredicate:v30];

    if (v19)
    {
      [v25 setRelationshipKeyPathsForPrefetching:v19];
    }

    v40 = 0;
    v21 = [v20 executeFetchRequest:v25 error:&v40];
    v31 = v40;
    if (v21)
    {
      v32 = v21;
    }

    else
    {
      context = objc_autoreleasePoolPush();
      v39 = v38;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138544642;
        v42 = v36;
        v43 = 2112;
        v44 = v15;
        v45 = 2112;
        v46 = v16;
        v47 = 2112;
        v48 = v17;
        v49 = 2112;
        v50 = v18;
        v51 = 2112;
        v52 = v31;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch notification registrations for userOrGuest uuid %@ characteristic IIDs %@ accessory UUID %@ deviceIdsDestination %@, error: %@", buf, 0x3Eu);
      }

      objc_autoreleasePoolPop(context);
    }
  }

  v34 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)_fetchMKFCharacteristicsFromHMDCharacteristics:(id)a3 context:(id)a4
{
  v72 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [v7 hmd_assertIsExecuting];
  if (v6 && [v6 count])
  {
    v56 = self;
    v8 = [v6 objectAtIndexedSubscript:0];
    v9 = [v8 service];

    v10 = [v9 accessory];
    v11 = [v10 uuid];

    v59 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v12 = objc_alloc(MEMORY[0x277CBE428]);
    v13 = +[_MKFCharacteristic entity];
    v14 = [v13 name];
    v15 = [v12 initWithEntityName:v14];

    v58 = v11;
    v60 = v7;
    if ([v6 count] == 1)
    {
      v54 = v9;
      v16 = MEMORY[0x277CCAC30];
      v17 = [v6 objectAtIndexedSubscript:0];
      v18 = [v17 instanceID];
      v19 = HAPInstanceIDFromValue();
      v20 = MEMORY[0x277CCABB0];
      v21 = [v6 objectAtIndexedSubscript:0];
      v22 = [v21 instanceID];
      v23 = [v20 numberWithLongLong:{objc_msgSend(v22, "longLongValue")}];
      v24 = [v16 predicateWithFormat:@"(%K == %@ OR %K == %@) AND (%K == %@)", @"instanceID", v19, @"instanceID", v23, @"service.accessory.modelID", v11];
      [v15 setPredicate:v24];

      v65 = 0;
      v25 = v15;
      v26 = [v60 executeFetchRequest:v15 error:&v65];
      v27 = v65;
      if (v26 && [v26 count])
      {
        v28 = [v26 objectAtIndexedSubscript:0];
        v29 = v59;
        [v59 setObject:v28 atIndexedSubscript:0];

        v30 = v59;
        v9 = v54;
      }

      else
      {
        v37 = objc_autoreleasePoolPush();
        v38 = v56;
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = HMFGetLogIdentifier();
          v41 = [v6 objectAtIndexedSubscript:0];
          v42 = [v41 instanceID];
          *buf = 138543874;
          v67 = v40;
          v68 = 2112;
          v69 = v42;
          v70 = 2112;
          v71 = v27;
          _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch MKF Characteristic for characteristic instance id: %@, error: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v37);
        v30 = 0;
        v9 = v54;
        v29 = v59;
      }
    }

    else
    {
      v31 = [v6 na_map:&__block_literal_global_241_246992];
      v32 = MEMORY[0x277CCAC30];
      v33 = updatedCharacteristicIIDs(v31);
      v34 = [v32 predicateWithFormat:@"(%K IN %@) AND (%K == %@)", @"instanceID", v33, @"service.accessory.modelID", v11];
      [v15 setPredicate:v34];

      v64 = 0;
      v26 = [v7 executeFetchRequest:v15 error:&v64];
      v27 = v64;
      if (v26 && [v26 count])
      {
        v25 = v15;
        v61[0] = MEMORY[0x277D85DD0];
        v61[1] = 3221225472;
        v61[2] = __97__HMDNotificationRegistryCoreDataAdapter__fetchMKFCharacteristicsFromHMDCharacteristics_context___block_invoke_242;
        v61[3] = &unk_278684770;
        v62 = v26;
        v29 = v59;
        v35 = v59;
        v63 = v35;
        [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:v61];
        v36 = [v35 count];
        if (v36 == [v6 count])
        {
          v30 = v35;
        }

        else
        {
          v47 = objc_autoreleasePoolPush();
          v57 = v56;
          v48 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v49 = v55 = v47;
            v50 = [v35 count];
            v51 = [v6 count];
            *buf = 138543874;
            v67 = v49;
            v68 = 2048;
            v69 = v50;
            v29 = v59;
            v70 = 2048;
            v71 = v51;
            _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch all MKFCharacteristics (%lu) for input characteristics (%lu)", buf, 0x20u);

            v47 = v55;
          }

          objc_autoreleasePoolPop(v47);
          v30 = 0;
        }
      }

      else
      {
        v25 = v15;
        v43 = objc_autoreleasePoolPush();
        v44 = v56;
        v45 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v46 = HMFGetLogIdentifier();
          *buf = 138543618;
          v67 = v46;
          v68 = 2112;
          v69 = v27;
          _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch MKF Characteristics array for characteristics, error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v43);
        v30 = 0;
        v29 = v59;
      }
    }

    v7 = v60;
  }

  else
  {
    v30 = 0;
  }

  v52 = *MEMORY[0x277D85DE8];

  return v30;
}

void __97__HMDNotificationRegistryCoreDataAdapter__fetchMKFCharacteristicsFromHMDCharacteristics_context___block_invoke_242(uint64_t a1, void *a2)
{
  v3 = a2;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __97__HMDNotificationRegistryCoreDataAdapter__fetchMKFCharacteristicsFromHMDCharacteristics_context___block_invoke_2;
  v6[3] = &unk_278684748;
  v5 = v3;
  v7 = v5;
  v8 = *(a1 + 40);
  v9 = v10;
  [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v6];

  _Block_object_dispose(v10, 8);
}

void __97__HMDNotificationRegistryCoreDataAdapter__fetchMKFCharacteristicsFromHMDCharacteristics_context___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v6 = [*(a1 + 32) instanceID];
  v7 = [v9 instanceID];
  v8 = HAPEqualInstanceIDs();

  if (v8)
  {
    [*(a1 + 40) addObject:v9];
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (id)_fetchEnabledMKFRegistrationsForHMDCharacteristics:(id)a3 context:(id)a4
{
  v48[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [v7 hmd_assertIsExecuting];
  if (!v6 || ![v6 count])
  {
    v18 = 0;
    goto LABEL_15;
  }

  v8 = [v6 objectAtIndexedSubscript:0];
  v9 = [v8 service];
  v10 = [v9 accessory];
  v11 = [v10 uuid];

  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__246802;
  v40 = __Block_byref_object_dispose__246803;
  v41 = [MEMORY[0x277CBEB18] array];
  if ([v6 count] == 1)
  {
    v12 = [v6 objectAtIndexedSubscript:0];
    v13 = [v12 instanceID];
    v48[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:1];
    v35 = 0;
    v15 = [(HMDNotificationRegistryCoreDataAdapter *)self _registrationsForCharacteristicIIDs:v14 accessoryUUID:v11 moc:v7 error:&v35];
    v16 = v35;
    v17 = [v15 na_filter:&__block_literal_global_221_247006];

    if (!v17)
    {
      v27 = objc_autoreleasePoolPush();
      v28 = self;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        v31 = [v6 objectAtIndexedSubscript:0];
        v32 = [v31 instanceID];
        *buf = 138543874;
        v43 = v30;
        v44 = 2112;
        v45 = v32;
        v46 = 2112;
        v47 = v16;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch MKFNotificationRegistrationCharacteristic for characteristic instance id: %@, error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v27);
      v18 = 0;
      goto LABEL_14;
    }

    [v37[5] addObjectsFromArray:v17];
    v18 = v37[5];
  }

  else
  {
    v19 = [v6 na_map:&__block_literal_global_225_247008];
    v34 = 0;
    v20 = [(HMDNotificationRegistryCoreDataAdapter *)self _registrationsForCharacteristicIIDs:v19 accessoryUUID:v11 moc:v7 error:&v34];
    v16 = v34;
    v17 = [v20 na_filter:&__block_literal_global_227_247009];

    if (v17)
    {
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __101__HMDNotificationRegistryCoreDataAdapter__fetchEnabledMKFRegistrationsForHMDCharacteristics_context___block_invoke_228;
      v33[3] = &unk_278684720;
      v33[4] = &v36;
      [v17 hmf_enumerateWithAutoreleasePoolUsingBlock:v33];
      v18 = v37[5];
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v22 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543874;
        v43 = v24;
        v44 = 2112;
        v45 = v6;
        v46 = 2112;
        v47 = v16;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch MKFNotificationRegistrationCharacteristic for characteristics %@, error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v21);
      v18 = 0;
    }
  }

LABEL_14:
  _Block_object_dispose(&v36, 8);

LABEL_15:
  v25 = *MEMORY[0x277D85DE8];

  return v18;
}

uint64_t __101__HMDNotificationRegistryCoreDataAdapter__fetchEnabledMKFRegistrationsForHMDCharacteristics_context___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 enabled];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t __101__HMDNotificationRegistryCoreDataAdapter__fetchEnabledMKFRegistrationsForHMDCharacteristics_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 enabled];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)_deleteAllMKFRegistrationsForActionSetUUID:(id)a3 hmcContext:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 managedObjectContext];
  [v8 hmd_assertIsExecuting];
  v9 = [(HMDNotificationRegistryCoreDataAdapter *)self _requestToFetchMKFRegistrationsWithActionSetUUID:v6 context:v8];
  v21 = 0;
  v10 = [v8 executeFetchRequest:v9 error:&v21];
  v11 = v21;
  if (!v10)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543874;
      v23 = v16;
      v24 = 2112;
      v25 = v6;
      v26 = 2112;
      v27 = v11;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to batch delete action set registrations for action set uuid: %@ error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    goto LABEL_7;
  }

  if (![v10 count])
  {
LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __96__HMDNotificationRegistryCoreDataAdapter__deleteAllMKFRegistrationsForActionSetUUID_hmcContext___block_invoke;
  v19[3] = &unk_2786846F8;
  v20 = v7;
  [v10 hmf_enumerateWithAutoreleasePoolUsingBlock:v19];

  v12 = 1;
LABEL_8:

  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)_fetchEnabledMKFRegistrationsForActionSetUUID:(id)a3 context:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [v7 hmd_assertIsExecuting];
  v8 = objc_alloc(MEMORY[0x277CBE428]);
  v9 = +[_MKFNotificationRegistrationActionSet entity];
  v10 = [v9 name];
  v11 = [v8 initWithEntityName:v10];

  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@) AND (%K == YES)", @"actionSet.modelID", v6, @"enabled"];
  [v11 setPredicate:v12];

  v22 = 0;
  v13 = [v7 executeFetchRequest:v11 error:&v22];
  v14 = v22;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543874;
      v24 = v19;
      v25 = 2112;
      v26 = v6;
      v27 = 2112;
      v28 = v14;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch action set registrations for action set uuid: %@ error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_requestToFetchMKFRegistrationsWithActionSetUUID:(id)a3 context:(id)a4
{
  v5 = a3;
  [a4 hmd_assertIsExecuting];
  v6 = objc_alloc(MEMORY[0x277CBE428]);
  v7 = +[_MKFNotificationRegistrationActionSet entity];
  v8 = [v7 name];
  v9 = [v6 initWithEntityName:v8];

  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"actionSet.modelID", v5];

  [v9 setPredicate:v10];

  return v9;
}

- (BOOL)_deleteAllMKFRegistrationsForMediaProfileUUID:(id)a3 withMediaProperty:(id)a4 hmcContext:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 managedObjectContext];
  [v11 hmd_assertIsExecuting];
  v12 = [(HMDNotificationRegistryCoreDataAdapter *)self _requestToFetchMKFRegistrationsWithMediaProfileUUID:v8 withMediaProperty:v9 context:v11];
  v25 = 0;
  v13 = [v11 executeFetchRequest:v12 error:&v25];
  v14 = v25;
  if (!v13)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v19 = v22 = v16;
      *buf = 138543874;
      v27 = v19;
      v28 = 2112;
      v29 = v8;
      v30 = 2112;
      v31 = v14;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to batch delete media profile registrations for media profile uuid: %@ error: %@", buf, 0x20u);

      v16 = v22;
    }

    objc_autoreleasePoolPop(v16);
    goto LABEL_7;
  }

  if (![v13 count])
  {
LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __117__HMDNotificationRegistryCoreDataAdapter__deleteAllMKFRegistrationsForMediaProfileUUID_withMediaProperty_hmcContext___block_invoke;
  v23[3] = &unk_2786846D0;
  v24 = v10;
  [v13 hmf_enumerateWithAutoreleasePoolUsingBlock:v23];

  v15 = 1;
LABEL_8:

  v20 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)_fetchEnabledMKFRegistrationsForMediaProfileUUID:(id)a3 withMediaProperty:(id)a4 context:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v10 hmd_assertIsExecuting];
  v11 = objc_alloc(MEMORY[0x277CBE428]);
  v12 = +[_MKFNotificationRegistrationMediaProperty entity];
  v13 = [v12 name];
  v14 = [v11 initWithEntityName:v13];

  if (v9)
  {
    [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@) AND (%K == %@) AND (%K == YES)", @"mediaProfileIdentifier", v8, @"mediaProperty", v9, @"enabled"];
  }

  else
  {
    [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@) AND (%K == YES)", @"mediaProfileIdentifier", v8, @"enabled", v25, v26];
  }
  v15 = ;
  [v14 setPredicate:v15];

  v27 = 0;
  v16 = [v10 executeFetchRequest:v14 error:&v27];
  v17 = v27;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543874;
      v29 = v22;
      v30 = 2112;
      v31 = v8;
      v32 = 2112;
      v33 = v17;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch media profile registrations for media profile uuid: %@ error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_requestToFetchMKFRegistrationsWithMediaProfileUUID:(id)a3 withMediaProperty:(id)a4 context:(id)a5
{
  v7 = a4;
  v8 = a3;
  [a5 hmd_assertIsExecuting];
  v9 = objc_alloc(MEMORY[0x277CBE428]);
  v10 = +[_MKFNotificationRegistrationMediaProperty entity];
  v11 = [v10 name];
  v12 = [v9 initWithEntityName:v11];

  if (v7)
  {
    [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@) AND (%K == %@)", @"mediaProfileIdentifier", v8, @"mediaProperty", v7];
  }

  else
  {
    [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"mediaProfileIdentifier", v8, v15, v16];
  }
  v13 = ;

  [v12 setPredicate:v13];

  return v12;
}

- (BOOL)_deleteAllRegistrationsForCharacteristicIIDs:(id)a3 withAccessoryUUID:(id)a4 hmcContext:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 managedObjectContext];
  [v11 hmd_assertIsExecuting];
  v23 = 0;
  v12 = [(HMDNotificationRegistryCoreDataAdapter *)self _registrationsForCharacteristicIIDs:v8 accessoryUUID:v9 moc:v11 error:&v23];
  v13 = v23;
  if (!v12)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138544130;
      v25 = v18;
      v26 = 2112;
      v27 = v8;
      v28 = 2112;
      v29 = v9;
      v30 = 2112;
      v31 = v13;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to batch delete registrations for characteristic IIDs %@ accessory UUID %@, error: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v15);
    goto LABEL_7;
  }

  if (![v12 count])
  {
LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __116__HMDNotificationRegistryCoreDataAdapter__deleteAllRegistrationsForCharacteristicIIDs_withAccessoryUUID_hmcContext___block_invoke;
  v21[3] = &unk_2786846A8;
  v22 = v10;
  [v12 hmf_enumerateWithAutoreleasePoolUsingBlock:v21];

  v14 = 1;
LABEL_8:

  v19 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)_registrationsForCharacteristicIID:(id)a3 exceedingChangeThresholdForCurrentValue:(id)a4 accessoryUUID:(id)a5 moc:(id)a6 error:(id *)a7
{
  v26[1] = *MEMORY[0x277D85DE8];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  [v11 hmd_assertIsExecuting];
  v15 = objc_alloc(MEMORY[0x277CBE428]);
  v16 = +[_MKFNotificationRegistrationCharacteristic entity];
  v17 = [v16 name];
  v18 = [v15 initWithEntityName:v17];

  v19 = MEMORY[0x277CCAC30];
  v26[0] = v14;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v21 = updatedCharacteristicIIDs(v20);
  v22 = [v19 predicateWithFormat:@"(%K IN %@)                               AND (%K == %@)                               AND                                (                                    (%K == nil)                                     OR (%K == nil)                                     OR (%@ < %K - %K)                                     OR (%@ > %K + %K)                                )", @"characteristic.instanceID", v21, @"characteristic.service.accessory.modelID", v12, @"notificationThreshold", @"lastNotifiedValue", v13, @"lastNotifiedValue", @"notificationThreshold", v13, @"lastNotifiedValue", @"notificationThreshold"];

  [v18 setPredicate:v22];
  v23 = [v11 executeFetchRequest:v18 error:a7];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)_fetchEnabledMKFRegistrationsForHMDCharacteristic:(id)a3 exceedingChangeThresholdForCurrentValue:(id)a4 context:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v10 hmd_assertIsExecuting];
  if (v8)
  {
    v11 = [v8 service];
    v12 = [v11 accessory];
    v13 = [v12 uuid];

    v14 = [v8 instanceID];
    v27 = 0;
    v15 = [(HMDNotificationRegistryCoreDataAdapter *)self _registrationsForCharacteristicIID:v14 exceedingChangeThresholdForCurrentValue:v9 accessoryUUID:v13 moc:v10 error:&v27];
    v16 = v27;
    v17 = [v15 na_filter:&__block_literal_global_247037];

    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        [v8 instanceID];
        v23 = v26 = v19;
        *buf = 138543874;
        v29 = v22;
        v30 = 2112;
        v31 = v23;
        v32 = 2112;
        v33 = v16;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch MKFNotificationRegistrationCharacteristic above threshold for characteristic instance id: %@, error: %@", buf, 0x20u);

        v19 = v26;
      }

      objc_autoreleasePoolPop(v19);
    }
  }

  else
  {
    v17 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v17;
}

uint64_t __140__HMDNotificationRegistryCoreDataAdapter__fetchEnabledMKFRegistrationsForHMDCharacteristic_exceedingChangeThresholdForCurrentValue_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 enabled];
  v3 = [v2 BOOLValue];

  return v3;
}

- (id)_registrationsForCharacteristicIIDs:(id)a3 accessoryUUID:(id)a4 moc:(id)a5 error:(id *)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  [v9 hmd_assertIsExecuting];
  v12 = objc_alloc(MEMORY[0x277CBE428]);
  v13 = +[_MKFNotificationRegistrationCharacteristic entity];
  v14 = [v13 name];
  v15 = [v12 initWithEntityName:v14];

  v16 = MEMORY[0x277CCAC30];
  v17 = updatedCharacteristicIIDs(v11);

  v18 = [v16 predicateWithFormat:@"(%K IN %@) AND (%K == %@)", @"characteristic.instanceID", v17, @"characteristic.service.accessory.modelID", v10];

  [v15 setPredicate:v18];
  v19 = [v9 executeFetchRequest:v15 error:a6];

  return v19;
}

- (BOOL)_deleteAllCharacteristicRegistrationsWithContext:(id)a3
{
  v4 = a3;
  v5 = +[_MKFNotificationRegistrationCharacteristic entity];
  v6 = [v5 name];
  v7 = [(HMDNotificationRegistryCoreDataAdapter *)self _deleteAllRegistrationsWithEntityName:v6 withHomeKeypath:@"user.home.modelID" hmcContext:v4];

  v8 = +[_MKFNotificationRegistrationCharacteristic entity];
  v9 = [v8 name];
  LOBYTE(self) = [(HMDNotificationRegistryCoreDataAdapter *)self _deleteAllRegistrationsWithEntityName:v9 withHomeKeypath:@"guest.home.modelID" hmcContext:v4];

  return (v7 | self) & 1;
}

- (BOOL)_deleteAllRegistrationsWithEntityName:(id)a3 withHomeKeypath:(id)a4 hmcContext:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 managedObjectContext];
  [v11 hmd_assertIsExecuting];
  v12 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:v8];
  v13 = MEMORY[0x277CCAC30];
  v14 = [(HMDNotificationRegistryCoreDataAdapter *)self home];
  v15 = [v14 uuid];
  v16 = [v13 predicateWithFormat:@"(%K == %@)", v9, v15];
  [v12 setPredicate:v16];

  v29 = 0;
  v17 = [v11 executeFetchRequest:v12 error:&v29];
  v18 = v29;
  if (!v17)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v23 = v26 = v20;
      *buf = 138543618;
      v31 = v23;
      v32 = 2112;
      v33 = v18;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch and delete all registrations, error: %@", buf, 0x16u);

      v20 = v26;
    }

    objc_autoreleasePoolPop(v20);
    goto LABEL_7;
  }

  if (![v17 count])
  {
LABEL_7:
    v19 = 0;
    goto LABEL_8;
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __107__HMDNotificationRegistryCoreDataAdapter__deleteAllRegistrationsWithEntityName_withHomeKeypath_hmcContext___block_invoke;
  v27[3] = &unk_278684660;
  v28 = v10;
  [v17 hmf_enumerateWithAutoreleasePoolUsingBlock:v27];

  v19 = 1;
LABEL_8:

  v24 = *MEMORY[0x277D85DE8];
  return v19;
}

- (id)_fetchMKFActionSetWithUUID:(id)a3 context:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [v7 hmd_assertIsExecuting];
  v8 = objc_alloc(MEMORY[0x277CBE428]);
  v9 = +[_MKFActionSet entity];
  v10 = [v9 name];
  v11 = [v8 initWithEntityName:v10];

  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@)", @"modelID", v6];
  [v11 setPredicate:v12];

  v22 = 0;
  v13 = [v7 executeFetchRequest:v11 error:&v22];
  v14 = v22;
  if (v13 && [v13 count])
  {
    v15 = [v13 objectAtIndexedSubscript:0];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543874;
      v24 = v19;
      v25 = 2112;
      v26 = v6;
      v27 = 2112;
      v28 = v14;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch action set for uuid %@, error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
    v15 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)_fetchMKFHAPAccessoryWithUUID:(id)a3 context:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [v7 hmd_assertIsExecuting];
  v8 = objc_alloc(MEMORY[0x277CBE428]);
  v9 = +[_MKFAccessory entity];
  v10 = [v9 name];
  v11 = [v8 initWithEntityName:v10];

  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@)", @"modelID", v6];
  [v11 setPredicate:v12];

  v22 = 0;
  v13 = [v7 executeFetchRequest:v11 error:&v22];
  v14 = v22;
  if (v13 && [v13 count])
  {
    v15 = [v13 objectAtIndexedSubscript:0];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543874;
      v24 = v19;
      v25 = 2112;
      v26 = v6;
      v27 = 2112;
      v28 = v14;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch accessory for uuid %@, error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
    v15 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v15;
}

- (HMDNotificationRegistryCoreDataAdapter)initWithHome:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HMDNotificationRegistryCoreDataAdapter;
  v5 = [(HMDNotificationRegistryCoreDataAdapter *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_home, v4);
  }

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t86 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t86, &__block_literal_global_382);
  }

  v3 = logCategory__hmf_once_v87;

  return v3;
}

void __53__HMDNotificationRegistryCoreDataAdapter_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v87;
  logCategory__hmf_once_v87 = v1;
}

@end