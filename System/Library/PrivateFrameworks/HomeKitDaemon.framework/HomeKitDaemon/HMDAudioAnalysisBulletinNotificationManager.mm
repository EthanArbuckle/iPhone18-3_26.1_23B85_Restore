@interface HMDAudioAnalysisBulletinNotificationManager
+ (id)logCategory;
+ (id)registrationsForSource:(id)a3 context:(id)a4;
- (BOOL)multipleLocalRegistrationsForAccessory:(id)a3;
- (HMDAudioAnalysisBulletinNotificationManager)initWithHome:(id)a3 workQueue:(id)a4 messageDispatcher:(id)a5 accountManager:(id)a6 evaluator:(id)a7 notificationCenter:(id)a8;
- (HMDBulletinNotificationRegistrationSource)source;
- (HMDHome)home;
- (id)_mkfLocalAnalysisSignificantEventRegistrationsWithManagedObjectContext:(id)a3;
- (id)_remoteAudioAnalysisRegistrationsForUUID:(id)a3;
- (id)localRegistrationForAccessory:(id)a3 enabled:(BOOL *)a4;
- (id)logIdentifier;
- (id)registrations;
- (id)userDevicesToNotify:(id)a3 withEvent:(id)a4;
- (void)_cleanupMultipleRegistrationsAndReplaceWithRegistration:(id)a3 completion:(id)a4;
- (void)_handleAudioAnalysisEventResidentToPrimaryMessage:(id)a3;
- (void)_notifyDevice:(id)a3 event:(id)a4 user:(id)a5;
- (void)_requestSynchronizeRegistrations;
- (void)_synchronizeLocalRegistrationsWithPrimaryResident;
- (void)_updateNotificationRegistration:(id)a3 enabled:(BOOL)a4 completion:(id)a5;
- (void)_updateRegistrationsOnPrimaryWithEnabledRegistrations:(id)a3 disabledRegistrations:(id)a4;
- (void)cleanupMultipleRegistrationsAndReplaceWithRegistration:(id)a3 completion:(id)a4;
- (void)configure;
- (void)handleAudioAnalysisEvent:(id)a3;
- (void)handleCurrentDeviceOrAccountUpdatedNotification:(id)a3;
- (void)handlePrimaryResidentUpdateNotification:(id)a3;
- (void)synchronizeLocalRegistrationsWithPrimaryResident;
- (void)timerDidFire:(id)a3;
- (void)updateNotificationRegistration:(id)a3 enabled:(BOOL)a4 completion:(id)a5;
@end

@implementation HMDAudioAnalysisBulletinNotificationManager

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)_mkfLocalAnalysisSignificantEventRegistrationsWithManagedObjectContext:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAudioAnalysisBulletinNotificationManager *)self home];
  v6 = [v5 appleMediaAccessories];
  v7 = [v6 na_filter:&__block_literal_global_65];
  v8 = [v7 na_map:&__block_literal_global_68_98308];

  v9 = +[MKFLocalBulletinAnalysisRegistration fetchRequest];
  v25 = 0;
  v10 = [v4 executeFetchRequest:v9 error:&v25];
  v11 = v25;
  if (v10)
  {
    if (![v10 count])
    {
      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543362;
        v27 = v15;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@No local registrations fetched", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
    }

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __118__HMDAudioAnalysisBulletinNotificationManager__mkfLocalAnalysisSignificantEventRegistrationsWithManagedObjectContext___block_invoke_69;
    v23[3] = &unk_278677CC8;
    v24 = v8;
    v16 = [v10 na_filter:v23];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v20;
      v28 = 2112;
      v29 = v11;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch local registrations, error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v16 = MEMORY[0x277CBEBF8];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v16;
}

uint64_t __118__HMDAudioAnalysisBulletinNotificationManager__mkfLocalAnalysisSignificantEventRegistrationsWithManagedObjectContext___block_invoke_69(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 accessoryModelID];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (void)_updateRegistrationsOnPrimaryWithEnabledRegistrations:(id)a3 disabledRegistrations:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAudioAnalysisBulletinNotificationManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543874;
    v30 = v12;
    v31 = 2112;
    v32 = v6;
    v33 = 2112;
    v34 = v7;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating registrations on primary resident, [enabled : %@], [disabled : %@]", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [(HMDAudioAnalysisBulletinNotificationManager *)v10 home];
  if ([v13 bulletinNotificationsSupported])
  {
    v14 = [(HMDAudioAnalysisBulletinNotificationManager *)v10 source];
    v15 = v14;
    if (v14)
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __123__HMDAudioAnalysisBulletinNotificationManager__updateRegistrationsOnPrimaryWithEnabledRegistrations_disabledRegistrations___block_invoke;
      v25[3] = &unk_278683340;
      v25[4] = v10;
      v26 = v14;
      v27 = v6;
      v28 = v7;
      [v13 updateBulletinRegistrationOnPrimaryResidentWithSource:v26 enableRegistrations:v27 disableRegistration:v28 completionHandler:v25];
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = v10;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v30 = v23;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve bulletin notification registration source for current device when updating notification registrations", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v10;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v19;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Bulletin notifications are not supported, only modifying local registrations", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __123__HMDAudioAnalysisBulletinNotificationManager__updateRegistrationsOnPrimaryWithEnabledRegistrations_disabledRegistrations___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
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
      v11 = *(a1 + 56);
      v20 = 138544386;
      v21 = v8;
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = v10;
      v26 = 2112;
      v27 = v11;
      v28 = 2112;
      v29 = v3;
      v12 = "%{public}@Unable to update audio analysis registrations resident: source: %@, [enabled : %@], [disabled : %@], error: %@";
      v13 = v7;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 52;
LABEL_6:
      _os_log_impl(&dword_229538000, v13, v14, v12, &v20, v15);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v18 = *(a1 + 56);
    v20 = 138544130;
    v21 = v8;
    v22 = 2112;
    v23 = v16;
    v24 = 2112;
    v25 = v17;
    v26 = 2112;
    v27 = v18;
    v12 = "%{public}@Updating audio analysis registrations primary resident was successful, source: %@, [enabled: %@], [disabled: %@]";
    v13 = v7;
    v14 = OS_LOG_TYPE_INFO;
    v15 = 42;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  v19 = *MEMORY[0x277D85DE8];
}

- (void)_synchronizeLocalRegistrationsWithPrimaryResident
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAudioAnalysisBulletinNotificationManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Synchronizing local registrations with primary resident", &buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [(HMDAudioAnalysisBulletinNotificationManager *)v5 source];
  if (v8)
  {
    v9 = [(HMDAudioAnalysisBulletinNotificationManager *)v5 home];
    v10 = [v9 backingStore];
    v11 = [v10 context];

    v12 = [v11 managedObjectContext];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v58 = 0x3032000000;
    v59 = __Block_byref_object_copy__98321;
    v60 = __Block_byref_object_dispose__98322;
    v61 = [MEMORY[0x277CBEB58] set];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __96__HMDAudioAnalysisBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke;
    v47[3] = &unk_278689D20;
    v47[4] = v5;
    v48 = v8;
    v13 = v12;
    v49 = v13;
    p_buf = &buf;
    [v11 unsafeSynchronousBlock:v47];
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy__98321;
    v45 = __Block_byref_object_dispose__98322;
    v46 = [MEMORY[0x277CBEB58] set];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __96__HMDAudioAnalysisBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_3;
    v38[3] = &unk_27868A4D8;
    v38[4] = v5;
    v14 = v13;
    v39 = v14;
    v40 = &v41;
    [v14 performBlockAndWait:v38];
    v15 = objc_autoreleasePoolPush();
    v16 = v5;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = HMFGetLogIdentifier();
      v19 = v42[5];
      v20 = *(*(&buf + 1) + 40);
      *v51 = 138543874;
      v52 = v18;
      v53 = 2112;
      v54 = v19;
      v55 = 2112;
      v56 = v20;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEBUG, "%{public}@enabledLocalRegistrations: %@ remoteRegistrations: %@", v51, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    v21 = [MEMORY[0x277CBEB58] set];
    v22 = v42[5];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __96__HMDAudioAnalysisBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_58;
    v35[3] = &unk_278677CA0;
    v37 = &buf;
    v23 = v21;
    v36 = v23;
    [v22 hmf_enumerateWithAutoreleasePoolUsingBlock:v35];
    v24 = [MEMORY[0x277CBEB98] setWithSet:*(*(&buf + 1) + 40)];
    if ([v23 hmf_isEmpty] && objc_msgSend(v24, "hmf_isEmpty"))
    {
      v25 = objc_autoreleasePoolPush();
      v26 = v16;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        *v51 = 138543362;
        v52 = v28;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@No changes detected to sync with primary", v51, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
    }

    else
    {
      v29 = [v23 copy];
      [(HMDAudioAnalysisBulletinNotificationManager *)v16 _updateRegistrationsOnPrimaryWithEnabledRegistrations:v29 disabledRegistrations:v24];
    }

    _Block_object_dispose(&v41, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    v31 = v5;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v33;
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve bulletin notification registration source for current device when synchronizing registrations with primary", &buf, 0xCu);
    }

    objc_autoreleasePoolPop(v30);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __96__HMDAudioAnalysisBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = [objc_opt_class() registrationsForSource:a1[5] context:a1[6]];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __96__HMDAudioAnalysisBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_2;
  v4[3] = &unk_278677C28;
  v4[4] = a1[7];
  [v3 na_each:v4];
}

void __96__HMDAudioAnalysisBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _mkfLocalAnalysisSignificantEventRegistrationsWithManagedObjectContext:*(a1 + 40)];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __96__HMDAudioAnalysisBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_4;
  v3[3] = &unk_278677C50;
  v3[4] = *(a1 + 48);
  [v2 na_each:v3];
}

void __96__HMDAudioAnalysisBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __96__HMDAudioAnalysisBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_2_59;
  v7[3] = &unk_278677C78;
  v5 = v3;
  v8 = v5;
  v6 = [v4 na_firstObjectPassingTest:v7];
  if (v6)
  {
    if (([v5 isEqual:v6] & 1) == 0)
    {
      [*(a1 + 32) addObject:v5];
    }

    [*(*(*(a1 + 40) + 8) + 40) removeObject:v6];
  }

  else
  {
    [*(a1 + 32) addObject:v5];
  }
}

uint64_t __96__HMDAudioAnalysisBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_2_59(uint64_t a1, void *a2)
{
  v3 = [a2 accessoryUUID];
  v4 = [*(a1 + 32) accessoryUUID];
  v5 = [v3 isEqual:v4];

  return v5;
}

void __96__HMDAudioAnalysisBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_4(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 enabled])
  {
    v3 = [[HMDAudioAnalysisEventBulletinNotificationRegistration alloc] initWithLocalBulletinAudioAnalysisRegistration:v4];
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }
}

void __96__HMDAudioAnalysisBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v5 = [HMDBulletinNotificationRegistrationUtilities audioAnalysisNotificationRegistrationFromRemoteRegistration:a2];
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = [v5 registration];
  [v3 addObject:v4];
}

- (void)_requestSynchronizeRegistrations
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [(HMDAudioAnalysisBulletinNotificationManager *)v4 synchronizeWithPrimaryDebounceTimer];
    [v7 isRunning];
    v8 = HMFBooleanToString();
    v11 = 138543618;
    v12 = v6;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Requesting synchronize registrations, debounce timer running: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v9 = [(HMDAudioAnalysisBulletinNotificationManager *)v4 synchronizeWithPrimaryDebounceTimer];
  [v9 resume];

  v10 = *MEMORY[0x277D85DE8];
}

- (HMDBulletinNotificationRegistrationSource)source
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAudioAnalysisBulletinNotificationManager *)self accountManager];
  v4 = [v3 account];
  v5 = [v4 currentDevice];
  v6 = [v5 deviceAddress];

  if (v6)
  {
    v7 = [(HMDAudioAnalysisBulletinNotificationManager *)self home];
    v8 = [v7 currentUser];
    v9 = [v8 uuid];

    if (v9)
    {
      v10 = [[HMDBulletinNotificationRegistrationSource alloc] initWithUserUUID:v9 deviceAddress:v6];
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v21 = 138543362;
        v22 = v18;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve current device user", &v21, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      v10 = 0;
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve current device address", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)synchronizeLocalRegistrationsWithPrimaryResident
{
  v3 = [(HMDAudioAnalysisBulletinNotificationManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__HMDAudioAnalysisBulletinNotificationManager_synchronizeLocalRegistrationsWithPrimaryResident__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

- (id)logIdentifier
{
  v2 = [(HMDAudioAnalysisBulletinNotificationManager *)self home];
  v3 = [v2 uuid];
  v4 = [v3 UUIDString];

  return v4;
}

- (id)userDevicesToNotify:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 uuid];
  v9 = [(HMDAudioAnalysisBulletinNotificationManager *)self _remoteAudioAnalysisRegistrationsForUUID:v8];

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__98321;
  v20 = __Block_byref_object_dispose__98322;
  v21 = objc_opt_new();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__HMDAudioAnalysisBulletinNotificationManager_userDevicesToNotify_withEvent___block_invoke;
  v13[3] = &unk_278677C00;
  v13[4] = self;
  v10 = v7;
  v14 = v10;
  v15 = &v16;
  [v9 na_each:v13];
  v11 = [v17[5] copy];

  _Block_object_dispose(&v16, 8);

  return v11;
}

void __77__HMDAudioAnalysisBulletinNotificationManager_userDevicesToNotify_withEvent___block_invoke(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 registration];
  v5 = [v3 source];
  v6 = [v5 device];
  v7 = [*(a1 + 32) home];
  v8 = [v5 userUUID];
  v9 = [v7 userWithUUID:v8];

  if (v9)
  {
    v10 = [*(a1 + 32) evaluator];
    v11 = [v4 conditions];
    v12 = [v10 conditionsPass:v11 registrationUser:v9];

    v37 = v9;
    if (v12)
    {
      v13 = [v3 registration];
      v14 = [v13 audioAnalysisClassifierOptions];
      v15 = ([*(a1 + 40) reason] & v14) != 0;
    }

    else
    {
      v15 = 0;
    }

    v20 = objc_autoreleasePoolPush();
    v21 = *(a1 + 32);
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v23 = v34 = v20;
      v24 = [v3 registration];
      [v24 conditions];
      v25 = v36 = v4;
      HMFBooleanToString();
      v35 = v15;
      v27 = v26 = v6;
      *buf = 138544130;
      v40 = v23;
      v41 = 2112;
      v42 = v25;
      v43 = 2112;
      v44 = v27;
      v45 = 2112;
      v46 = v26;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@conditions:%@, pass?%@, device:%@", buf, 0x2Au);

      v4 = v36;
      v6 = v26;
      v15 = v35;

      v20 = v34;
    }

    objc_autoreleasePoolPop(v20);
    v9 = v37;
    if ((([v6 isCurrentDevice] ^ 1) & v15) == 1 && v6)
    {
      v38[0] = v6;
      v28 = [v3 source];
      [v28 userUUID];
      v30 = v29 = v4;
      v38[1] = v30;
      [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
      v32 = v31 = v6;

      v4 = v29;
      [*(*(*(a1 + 48) + 8) + 40) addObject:v32];

      v6 = v31;
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 32);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543874;
      v40 = v19;
      v41 = 2112;
      v42 = v4;
      v43 = 2112;
      v44 = v5;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unable to evaluate registration: %@, no matching user for source: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_notifyDevice:(id)a3 event:(id)a4 user:(id)a5
{
  v37[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [HMDRemoteDeviceMessageDestination alloc];
  v12 = [v9 accessoryUUID];
  v13 = [(HMDRemoteDeviceMessageDestination *)v11 initWithTarget:v12 device:v8];

  v14 = [v9 serialize];
  v36 = @"HMDAudioAnalysisBulletinDataMessageKey";
  v37[0] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
  v16 = objc_autoreleasePoolPush();
  v17 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543874;
    v31 = v19;
    v32 = 2112;
    v33 = v8;
    v34 = 2112;
    v35 = v9;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Notifying device:%@, event:%@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v16);
  v20 = [HMDRemoteMessage alloc];
  if ([v10 isRemoteAccessAllowed])
  {
    v21 = -1;
  }

  else
  {
    v21 = 14;
  }

  v22 = [(HMDRemoteMessage *)v20 initWithName:@"HMDAudioAnalysisPrimaryResidentRouteEventRequestMessage" destination:v13 payload:v15 type:0 timeout:1 secure:v21 restriction:60.0];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __72__HMDAudioAnalysisBulletinNotificationManager__notifyDevice_event_user___block_invoke;
  v27[3] = &unk_278686658;
  v27[4] = v17;
  v28 = v8;
  v29 = v9;
  v23 = v9;
  v24 = v8;
  [(HMDRemoteMessage *)v22 setResponseHandler:v27];
  v25 = [(HMDAudioAnalysisBulletinNotificationManager *)v17 messageDispatcher];
  [v25 sendMessage:v22];

  v26 = *MEMORY[0x277D85DE8];
}

void __72__HMDAudioAnalysisBulletinNotificationManager__notifyDevice_event_user___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v21 = 138544130;
      v22 = v11;
      v23 = 2112;
      v24 = v12;
      v25 = 2112;
      v26 = v13;
      v27 = 2112;
      v28 = v5;
      v14 = "%{public}@Failed to notify device:%@ for event:%@ with %@";
      v15 = v10;
      v16 = OS_LOG_TYPE_ERROR;
      v17 = 42;
LABEL_6:
      _os_log_impl(&dword_229538000, v15, v16, v14, &v21, v17);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v18 = *(a1 + 40);
    v19 = *(a1 + 48);
    v21 = 138543874;
    v22 = v11;
    v23 = 2112;
    v24 = v18;
    v25 = 2112;
    v26 = v19;
    v14 = "%{public}@Successfully notified device:%@, event:%@";
    v15 = v10;
    v16 = OS_LOG_TYPE_INFO;
    v17 = 32;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v20 = *MEMORY[0x277D85DE8];
}

- (id)_remoteAudioAnalysisRegistrationsForUUID:(id)a3
{
  v4 = a3;
  v5 = [(HMDAudioAnalysisBulletinNotificationManager *)self home];
  v6 = [v5 backingStore];
  v7 = [v6 context];

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__98321;
  v18 = __Block_byref_object_dispose__98322;
  v19 = MEMORY[0x277CBEBF8];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __88__HMDAudioAnalysisBulletinNotificationManager__remoteAudioAnalysisRegistrationsForUUID___block_invoke;
  v11[3] = &unk_27868A688;
  v8 = v4;
  v12 = v8;
  v13 = &v14;
  [v7 unsafeSynchronousBlock:v11];
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

void __88__HMDAudioAnalysisBulletinNotificationManager__remoteAudioAnalysisRegistrationsForUUID___block_invoke(uint64_t a1)
{
  v7 = [HMCContext findAccessoryWithModelID:*(a1 + 32)];
  v2 = [v7 analysisEventBulletinRegistrations];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 na_map:&__block_literal_global_45];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

- (id)registrations
{
  v3 = [(HMDAudioAnalysisBulletinNotificationManager *)self home];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 accessories];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__HMDAudioAnalysisBulletinNotificationManager_registrations__block_invoke;
    v8[3] = &unk_278677BB8;
    v8[4] = self;
    v6 = [v5 na_flatMap:v8];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

id __60__HMDAudioAnalysisBulletinNotificationManager_registrations__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  v4 = [v2 _remoteAudioAnalysisRegistrationsForUUID:v3];

  return v4;
}

- (void)timerDidFire:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAudioAnalysisBulletinNotificationManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDAudioAnalysisBulletinNotificationManager *)self synchronizeWithPrimaryDebounceTimer];

  if (v6 == v4)
  {
    v11 = [(HMDAudioAnalysisBulletinNotificationManager *)self synchronizeWithPrimaryDebounceTimer];
    [v11 suspend];

    [(HMDAudioAnalysisBulletinNotificationManager *)self _synchronizeLocalRegistrationsWithPrimaryResident];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Unrecognized timer, ignoring", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handlePrimaryResidentUpdateNotification:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling primary resident update notification.", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDAudioAnalysisBulletinNotificationManager *)v6 synchronizeLocalRegistrationsWithPrimaryResident];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleCurrentDeviceOrAccountUpdatedNotification:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling current device or account updated notification", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDAudioAnalysisBulletinNotificationManager *)v6 synchronizeLocalRegistrationsWithPrimaryResident];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleAudioAnalysisEventResidentToPrimaryMessage:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v32 = v8;
    v33 = 2112;
    v34 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Received audio analysis notification message %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDAudioAnalysisBulletinNotificationManager *)v6 home];
  if ([v9 isCurrentDevicePrimaryResident])
  {
    v10 = [v4 messagePayload];
    v11 = [v10 objectForKeyedSubscript:@"HMDAudioAnalysisBulletinDataMessageKey"];
    v12 = [[HMDAudioAnalysisEventBulletin alloc] initWithDictionary:v11];
    v13 = [(HMDAudioAnalysisEventBulletin *)v12 accessoryUUID];
    v14 = [v9 accessoryWithUUID:v13];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if (v16)
    {
      v17 = [(HMDAudioAnalysisBulletinNotificationManager *)v6 userDevicesToNotify:v16 withEvent:v12];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __97__HMDAudioAnalysisBulletinNotificationManager__handleAudioAnalysisEventResidentToPrimaryMessage___block_invoke;
      v29[3] = &unk_278687998;
      v29[4] = v6;
      v30 = v12;
      [v17 na_each:v29];
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = v6;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        [(HMDAudioAnalysisEventBulletin *)v12 accessoryUUID];
        v26 = v28 = v22;
        *buf = 138543618;
        v32 = v25;
        v33 = 2112;
        v34 = v26;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Did not find accessory with UUID:%@", buf, 0x16u);

        v22 = v28;
      }

      objc_autoreleasePoolPop(v22);
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = v6;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v21;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Ignoring audio analysis event, current device is not primary", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __97__HMDAudioAnalysisBulletinNotificationManager__handleAudioAnalysisEventResidentToPrimaryMessage___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count] == 2)
  {
    v4 = [v3 objectAtIndexedSubscript:1];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    v7 = [v3 objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (v6)
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
      v12 = *(a1 + 32);
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v18 = 138543874;
        v19 = v14;
        v20 = 2112;
        v21 = v9;
        v22 = 2112;
        v23 = v6;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@device:%@, uuid:%@", &v18, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
    }

    else
    {
      v15 = [*(a1 + 32) home];
      v16 = [v15 userWithUUID:v6];

      if (v16)
      {
        [*(a1 + 32) _notifyDevice:v9 event:*(a1 + 40) user:v16];
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_cleanupMultipleRegistrationsAndReplaceWithRegistration:(id)a3 completion:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAudioAnalysisBulletinNotificationManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v27 = v12;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Cleaning up multiple registrations and replacing with registration: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [(HMDAudioAnalysisBulletinNotificationManager *)v10 home];
  v14 = [v13 backingStore];
  v15 = [v14 context];

  v16 = [v15 managedObjectContext];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __114__HMDAudioAnalysisBulletinNotificationManager__cleanupMultipleRegistrationsAndReplaceWithRegistration_completion___block_invoke;
  v21[3] = &unk_278689AB8;
  v22 = v6;
  v23 = v16;
  v24 = v10;
  v25 = v7;
  v17 = v7;
  v18 = v16;
  v19 = v6;
  [v18 performBlock:v21];

  v20 = *MEMORY[0x277D85DE8];
}

void __114__HMDAudioAnalysisBulletinNotificationManager__cleanupMultipleRegistrationsAndReplaceWithRegistration_completion___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accessoryUUID];
  v3 = +[MKFLocalBulletinAnalysisRegistration fetchRequest];
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@)", @"accessoryModelID", v2];
  [v3 setPredicate:v4];

  v5 = *(a1 + 40);
  v31 = 0;
  v6 = [v5 executeFetchRequest:v3 error:&v31];
  v7 = v31;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __114__HMDAudioAnalysisBulletinNotificationManager__cleanupMultipleRegistrationsAndReplaceWithRegistration_completion___block_invoke_2;
  v29[3] = &unk_278677B90;
  v30 = *(a1 + 40);
  [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:v29];
  v8 = MEMORY[0x277CBE408];
  v9 = +[MKFLocalBulletinAnalysisRegistration entity];
  v10 = [v9 name];
  v11 = [v8 insertNewObjectForEntityForName:v10 inManagedObjectContext:*(a1 + 40)];

  [v11 setAccessoryModelID:v2];
  [v11 setClassifierOptions:{objc_msgSend(*(a1 + 32), "audioAnalysisClassifierOptions")}];
  [v11 setEnabled:1];
  v12 = *(a1 + 40);
  v13 = [*(a1 + 32) conditions];
  v14 = [HMDBulletinNotificationRegistrationUtilities createAndAddLocalConditionsToRegistration:v11 moc:v12 conditions:v13];

  v15 = *(a1 + 40);
  v28 = v7;
  v16 = [v15 save:&v28];
  v17 = v28;

  [*(a1 + 40) reset];
  v18 = objc_autoreleasePoolPush();
  v19 = *(a1 + 48);
  v20 = HMFGetOSLogHandle();
  v21 = v20;
  if (v16)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v22;
      v34 = 2112;
      v35 = v2;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Successfully cleaned up multiple local registrations for accessory UUID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v23 = [*(a1 + 48) workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __114__HMDAudioAnalysisBulletinNotificationManager__cleanupMultipleRegistrationsAndReplaceWithRegistration_completion___block_invoke_35;
    block[3] = &unk_27868A728;
    block[4] = *(a1 + 48);
    dispatch_async(v23, block);
  }

  else
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543874;
      v33 = v24;
      v34 = 2112;
      v35 = v2;
      v36 = 2112;
      v37 = v17;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to clean up multiple local registrations for accessory UUID: %@ due to error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
  }

  v25 = *(a1 + 56);
  if (v25)
  {
    (*(v25 + 16))(v25, v17);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)cleanupMultipleRegistrationsAndReplaceWithRegistration:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAudioAnalysisBulletinNotificationManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __113__HMDAudioAnalysisBulletinNotificationManager_cleanupMultipleRegistrationsAndReplaceWithRegistration_completion___block_invoke;
  block[3] = &unk_278689F98;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (BOOL)multipleLocalRegistrationsForAccessory:(id)a3
{
  v4 = a3;
  v5 = [(HMDAudioAnalysisBulletinNotificationManager *)self home];
  v6 = [v4 home];
  v7 = [v6 uuid];
  v8 = [v5 uuid];
  v9 = [v7 isEqual:v8];

  if ((v9 & 1) == 0)
  {
    v18 = _HMFPreconditionFailure();
    _Block_object_dispose(&v23, 8);
    _Unwind_Resume(v18);
  }

  v10 = [v4 uuid];
  v11 = [v5 backingStore];
  v12 = [v11 context];

  v13 = [v12 managedObjectContext];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __86__HMDAudioAnalysisBulletinNotificationManager_multipleLocalRegistrationsForAccessory___block_invoke;
  v19[3] = &unk_27868A4D8;
  v14 = v10;
  v20 = v14;
  v15 = v13;
  v21 = v15;
  v22 = &v23;
  [v15 performBlockAndWait:v19];
  v16 = *(v24 + 24);

  _Block_object_dispose(&v23, 8);
  return v16;
}

void __86__HMDAudioAnalysisBulletinNotificationManager_multipleLocalRegistrationsForAccessory___block_invoke(void *a1)
{
  v2 = +[MKFLocalBulletinAnalysisRegistration fetchRequest];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@)", @"accessoryModelID", a1[4]];
  [v2 setPredicate:v3];

  v4 = a1[5];
  v7 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v7];
  v6 = v7;
  *(*(a1[6] + 8) + 24) = [v5 count] > 1;
}

- (void)_updateNotificationRegistration:(id)a3 enabled:(BOOL)a4 completion:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(HMDAudioAnalysisBulletinNotificationManager *)self workQueue];
  dispatch_assert_queue_V2(v10);

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = HMFBooleanToString();
    *buf = 138543874;
    v31 = v14;
    v32 = 2112;
    v33 = v8;
    v34 = 2112;
    v35 = v15;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Updating registration: %@ enabled: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v16 = [(HMDAudioAnalysisBulletinNotificationManager *)v12 home];
  v17 = [v16 backingStore];
  v18 = [v17 context];

  v19 = [v18 managedObjectContext];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __98__HMDAudioAnalysisBulletinNotificationManager__updateNotificationRegistration_enabled_completion___block_invoke;
  v24[3] = &unk_278687E38;
  v25 = v8;
  v26 = v19;
  v29 = a4;
  v27 = v12;
  v28 = v9;
  v20 = v9;
  v21 = v19;
  v22 = v8;
  [v21 performBlock:v24];

  v23 = *MEMORY[0x277D85DE8];
}

void __98__HMDAudioAnalysisBulletinNotificationManager__updateNotificationRegistration_enabled_completion___block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [*(a1 + 32) accessoryUUID];
  v5 = *(a1 + 40);
  v53 = v4;
  v6 = [MKFLocalBulletinAnalysisRegistration fetchAudioAnalysisModeRegistrationForAccessoryUUID:"fetchAudioAnalysisModeRegistrationForAccessoryUUID:managedObjectContext:" managedObjectContext:?];
  if (!v6)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 48);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = *(a1 + 32);
      v17 = *(a1 + 64);
      v18 = HMFBooleanToString();
      *buf = 138543874;
      v57 = v15;
      v58 = 2112;
      v59 = v16;
      v60 = 2112;
      v61 = v18;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Local registration doesn't exist for registration: %@ enabled: %@, creating one now", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    v19 = MEMORY[0x277CBE408];
    v20 = +[MKFLocalBulletinAnalysisRegistration entity];
    v21 = [v20 name];
    v7 = [v19 insertNewObjectForEntityForName:v21 inManagedObjectContext:*(a1 + 40)];

    [v7 setAccessoryModelID:v53];
    [v7 setClassifierOptions:{objc_msgSend(*(a1 + 32), "audioAnalysisClassifierOptions")}];
    [v7 setEnabled:*(a1 + 64)];
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v6 enabled];
  v9 = *(a1 + 64);
  v10 = v9 != v8;
  if (v9 != v8)
  {
    [v7 setEnabled:?];
  }

  v11 = [v7 classifierOptions];
  if (v11 != [*(a1 + 32) audioAnalysisClassifierOptions])
  {
    [v7 setClassifierOptions:{objc_msgSend(*(a1 + 32), "audioAnalysisClassifierOptions")}];
LABEL_9:
    v10 = 1;
  }

  v22 = [v7 conditions];
  v23 = [MEMORY[0x277CBEB98] set];
  if (v22)
  {
    v24 = [HMDBulletinNotificationRegistrationUtilities conditionsFromLocalConditions:v22];

    v23 = v24;
  }

  v25 = [*(a1 + 32) conditions];
  v26 = [v23 isEqualToSet:v25];

  if (v26)
  {
    if (!v10)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v22)
    {
      [v7 removeConditions:v22];
    }

    v27 = *(a1 + 40);
    v28 = [*(a1 + 32) conditions];
    v29 = [HMDBulletinNotificationRegistrationUtilities createAndAddLocalConditionsToRegistration:v7 moc:v27 conditions:v28];
  }

  if (*(a1 + 64))
  {
    v30 = v2;
  }

  else
  {
    v30 = v3;
  }

  [v30 addObject:*(a1 + 32)];
LABEL_22:
  if ([v2 hmf_isEmpty] && objc_msgSend(v3, "hmf_isEmpty"))
  {
    v31 = objc_autoreleasePoolPush();
    v32 = *(a1 + 48);
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v34 = v2;
      v36 = v35 = v3;
      *buf = 138543362;
      v57 = v36;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Skipping save and not messaging primary because notification registration update resulted in no changes", buf, 0xCu);

      v3 = v35;
      v2 = v34;
    }

    objc_autoreleasePoolPop(v31);
    v37 = *(a1 + 56);
    if (v37)
    {
      (*(v37 + 16))(v37, 0);
    }
  }

  else
  {
    v51 = v2;
    v38 = v3;
    v39 = *(a1 + 40);
    v55 = 0;
    v40 = [v39 save:{&v55, v51}];
    v41 = v55;
    [*(a1 + 40) reset];
    v42 = objc_autoreleasePoolPush();
    v43 = *(a1 + 48);
    v44 = HMFGetOSLogHandle();
    v45 = v44;
    if (v40)
    {
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        v46 = HMFGetLogIdentifier();
        *buf = 138543874;
        v57 = v46;
        v58 = 2112;
        v59 = v52;
        v60 = 2112;
        v61 = v38;
        _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_INFO, "%{public}@Successfully updated local enabled registrations: %@, disabled registrations: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v42);
      v47 = [*(a1 + 48) workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __98__HMDAudioAnalysisBulletinNotificationManager__updateNotificationRegistration_enabled_completion___block_invoke_26;
      block[3] = &unk_27868A728;
      block[4] = *(a1 + 48);
      dispatch_async(v47, block);
    }

    else
    {
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v48 = HMFGetLogIdentifier();
        *buf = 138544130;
        v57 = v48;
        v58 = 2112;
        v59 = v52;
        v60 = 2112;
        v61 = v38;
        v62 = 2112;
        v63 = v41;
        _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_ERROR, "%{public}@Failed to update local enabled registrations: %@, disabled registrations: %@ due to error: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v42);
    }

    v49 = *(a1 + 56);
    v3 = v38;
    if (v49)
    {
      (*(v49 + 16))(v49, v41);
    }

    v2 = v52;
  }

  v50 = *MEMORY[0x277D85DE8];
}

- (void)updateNotificationRegistration:(id)a3 enabled:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(HMDAudioAnalysisBulletinNotificationManager *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __97__HMDAudioAnalysisBulletinNotificationManager_updateNotificationRegistration_enabled_completion___block_invoke;
  v13[3] = &unk_278685C18;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (id)localRegistrationForAccessory:(id)a3 enabled:(BOOL *)a4
{
  v6 = a3;
  v7 = [(HMDAudioAnalysisBulletinNotificationManager *)self home];
  v8 = [v6 home];
  v9 = [v8 uuid];
  v10 = [v7 uuid];
  v11 = [v9 isEqual:v10];

  if ((v11 & 1) == 0)
  {
    v19 = _HMFPreconditionFailure();
    _Block_object_dispose(&v25, 8);
    _Block_object_dispose(&v29, 8);
    _Unwind_Resume(v19);
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__98321;
  v33 = __Block_byref_object_dispose__98322;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v12 = [v7 backingStore];
  v13 = [v12 context];

  v14 = [v13 managedObjectContext];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __85__HMDAudioAnalysisBulletinNotificationManager_localRegistrationForAccessory_enabled___block_invoke;
  v20[3] = &unk_2786869D8;
  v15 = v6;
  v21 = v15;
  v16 = v14;
  v22 = v16;
  v23 = &v29;
  v24 = &v25;
  [v16 performBlockAndWait:v20];
  if (a4)
  {
    *a4 = *(v26 + 24);
  }

  v17 = v30[5];

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);

  return v17;
}

void __85__HMDAudioAnalysisBulletinNotificationManager_localRegistrationForAccessory_enabled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) uuid];
  v6 = [MKFLocalBulletinAnalysisRegistration fetchAudioAnalysisModeRegistrationForAccessoryUUID:v2 managedObjectContext:*(a1 + 40)];

  if (v6)
  {
    v3 = [[HMDAudioAnalysisEventBulletinNotificationRegistration alloc] initWithLocalBulletinAudioAnalysisRegistration:v6];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    *(*(*(a1 + 56) + 8) + 24) = [v6 enabled];
  }
}

- (void)handleAudioAnalysisEvent:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAudioAnalysisBulletinNotificationManager *)self home];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 primaryResident];
    v8 = [HMDRemoteDeviceMessageDestination alloc];
    v9 = [(HMDAudioAnalysisBulletinNotificationManager *)self messageTargetUUID];
    v10 = [v7 device];
    v11 = [(HMDRemoteDeviceMessageDestination *)v8 initWithTarget:v9 device:v10];

    v12 = [HMDRemoteMessage messageWithName:@"HMDAudioAnalysisResidentToPrimaryEventRequestMessage" destination:v11 payload:v4];
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v23 = 138543618;
      v24 = v16;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Routing message from resident to primary, %@", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    if ([v6 isCurrentDeviceConfirmedPrimaryResident])
    {
      [(HMDAudioAnalysisBulletinNotificationManager *)v14 _handleAudioAnalysisEventResidentToPrimaryMessage:v12];
    }

    else
    {
      v21 = [(HMDAudioAnalysisBulletinNotificationManager *)v14 messageDispatcher];
      [v21 sendMessage:v12];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@nil home", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)configure
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAudioAnalysisBulletinNotificationManager *)self home];
  if (v3)
  {
    v4 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
    [v4 setTransportRestriction:8];
    v5 = [HMDUserMessagePolicy userMessagePolicyWithHome:v3 userPrivilege:3 remoteAccessRequired:0, v4];
    v26[1] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];

    v7 = [(HMDAudioAnalysisBulletinNotificationManager *)self messageDispatcher];
    [v7 registerForMessage:@"HMDAudioAnalysisResidentToPrimaryEventRequestMessage" receiver:self policies:v6 selector:sel__handleAudioAnalysisEventResidentToPrimaryMessage_];

    v8 = [(HMDAudioAnalysisBulletinNotificationManager *)self notificationCenter];
    v9 = [(HMDAudioAnalysisBulletinNotificationManager *)self accountManager];
    [v8 addObserver:self selector:sel_handleCurrentDeviceOrAccountUpdatedNotification_ name:@"HMDAppleAccountManagerDeviceUpdatedNotification" object:v9];

    v10 = [(HMDAudioAnalysisBulletinNotificationManager *)self notificationCenter];
    v11 = [(HMDAudioAnalysisBulletinNotificationManager *)self accountManager];
    [v10 addObserver:self selector:sel_handleCurrentDeviceOrAccountUpdatedNotification_ name:@"HMDAppleAccountManagerAccountUpdatedNotification" object:v11];

    v12 = [(HMDAudioAnalysisBulletinNotificationManager *)self notificationCenter];
    v13 = [v3 residentDeviceManager];
    [v12 addObserver:self selector:sel_handlePrimaryResidentUpdateNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:v13];

    v14 = [(HMDAudioAnalysisBulletinNotificationManager *)self notificationCenter];
    v15 = [v3 residentDeviceManager];
    [v14 addObserver:self selector:sel_handlePrimaryResidentUpdateNotification_ name:@"HMDResidentDeviceConfirmedStateChangedNotification" object:v15];

    v16 = [(HMDAudioAnalysisBulletinNotificationManager *)self synchronizeWithPrimaryDebounceTimerFactory];
    v17 = v16[2](v16, 28, 5.0);
    [(HMDAudioAnalysisBulletinNotificationManager *)self setSynchronizeWithPrimaryDebounceTimer:v17];

    v18 = [(HMDAudioAnalysisBulletinNotificationManager *)self synchronizeWithPrimaryDebounceTimer];
    [v18 setDelegate:self];

    v19 = [(HMDAudioAnalysisBulletinNotificationManager *)self workQueue];
    v20 = [(HMDAudioAnalysisBulletinNotificationManager *)self synchronizeWithPrimaryDebounceTimer];
    [v20 setDelegateQueue:v19];
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v24;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Nil home on configure", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (HMDAudioAnalysisBulletinNotificationManager)initWithHome:(id)a3 workQueue:(id)a4 messageDispatcher:(id)a5 accountManager:(id)a6 evaluator:(id)a7 notificationCenter:(id)a8
{
  v14 = a3;
  v25 = a4;
  v24 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v26.receiver = self;
  v26.super_class = HMDAudioAnalysisBulletinNotificationManager;
  v18 = [(HMDAudioAnalysisBulletinNotificationManager *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_workQueue, a4);
    objc_storeStrong(&v19->_messageDispatcher, a5);
    objc_storeStrong(&v19->_accountManager, a6);
    objc_storeStrong(&v19->_evaluator, a7);
    objc_storeStrong(&v19->_notificationCenter, a8);
    v20 = [v14 uuid];
    uuid = v19->_uuid;
    v19->_uuid = v20;

    objc_storeWeak(&v19->_home, v14);
    synchronizeWithPrimaryDebounceTimerFactory = v19->_synchronizeWithPrimaryDebounceTimerFactory;
    v19->_synchronizeWithPrimaryDebounceTimerFactory = &__block_literal_global_98393;
  }

  return v19;
}

id __132__HMDAudioAnalysisBulletinNotificationManager_initWithHome_workQueue_messageDispatcher_accountManager_evaluator_notificationCenter___block_invoke(double a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:a3 options:a1];

  return v3;
}

+ (id)registrationsForSource:(id)a3 context:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[_MKFAnalysisEventBulletinRegistration fetchRequest];
  v9 = MEMORY[0x277CCAC30];
  v10 = [v6 userUUID];
  v11 = [v6 deviceAddress];
  v12 = [v11 idsIdentifier];
  v13 = [v6 deviceAddress];
  v14 = [v13 idsDestination];
  v15 = [v9 predicateWithFormat:@"(%K == %@) && (%K == %@) && (%K == %@)", @"user.modelID", v10, @"deviceIdsIdentifier", v12, @"deviceIdsDestination", v14];
  [v8 setPredicate:v15];

  v25 = 0;
  v16 = [v7 executeFetchRequest:v8 error:&v25];
  v17 = v25;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = a1;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v22;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch audio analysis bulletin registrations for source: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v18 = MEMORY[0x277CBEBF8];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t27_98415 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t27_98415, &__block_literal_global_51_98416);
  }

  v3 = logCategory__hmf_once_v28_98417;

  return v3;
}

void __58__HMDAudioAnalysisBulletinNotificationManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v28_98417;
  logCategory__hmf_once_v28_98417 = v1;
}

@end