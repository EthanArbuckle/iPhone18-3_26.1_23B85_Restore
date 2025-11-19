@interface HMDDoorbellChimeController
+ (id)logCategory;
- (HMDDoorbellChimeController)initWithContext:(id)a3;
- (HMDDoorbellChimeController)initWithWorkQueue:(id)a3 accessory:(id)a4;
- (id)clientIdentifier;
- (id)logIdentifier;
- (unint64_t)_numHomePodsWithDoorbellChimeEnabled;
- (void)_handleCharacteristicsValueUpdatedNotification:(id)a3;
- (void)_notifyAllAccessoriesForDoorbellPressAndPlayChimeSound:(BOOL)a3 significantEvents:(id)a4;
- (void)configure;
- (void)dealloc;
- (void)handleCharacteristicsValueUpdatedNotification:(id)a3;
- (void)handleUpdatedPersonIdentificationInformation;
- (void)listener:(id)a3 didUpdateAvailableCharacteristics:(id)a4;
- (void)notifyAccessoriesViaCoordinationFreePathWithDelay:(double)a3 home:(id)a4 shouldPlayChime:(BOOL)a5 personIdentificationText:(id)a6 accessoriesToNotify:(id)a7 logEvent:(id)a8 accessoryUUID:(id)a9;
@end

@implementation HMDDoorbellChimeController

- (void)listener:(id)a3 didUpdateAvailableCharacteristics:(id)a4
{
  v5 = a4;
  [(HMDDoorbellChimeController *)self setAvailableCharacteristics:v5];
  v9 = [(HMDDoorbellChimeController *)self context];
  v6 = [v9 accessory];
  v7 = [v5 allObjects];

  v8 = [(HMDDoorbellChimeController *)self clientIdentifier];
  [v6 setNotificationsEnabled:1 forCharacteristics:v7 clientIdentifier:v8];
}

- (id)logIdentifier
{
  v2 = [(HMDDoorbellChimeController *)self context];
  v3 = [v2 accessory];
  v4 = [v3 uuid];
  v5 = [v4 UUIDString];

  return v5;
}

- (void)handleCharacteristicsValueUpdatedNotification:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDDoorbellChimeController *)self context];
  v6 = [v5 isCurrentDevicePrimaryResident];

  if (v6)
  {
    v7 = [(HMDDoorbellChimeController *)self context];
    v8 = [v7 workQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __76__HMDDoorbellChimeController_handleCharacteristicsValueUpdatedNotification___block_invoke;
    v14[3] = &unk_2797359B0;
    v14[4] = self;
    v15 = v4;
    dispatch_async(v8, v14);
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring characteristic value updated notification since we are not the primary resident", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_numHomePodsWithDoorbellChimeEnabled
{
  v2 = [(HMDDoorbellChimeController *)self context];
  v3 = [v2 accessory];
  v4 = [v3 home];
  v5 = [v4 accessories];
  v6 = [v5 na_map:&__block_literal_global_39_98176];

  v7 = [v6 na_filter:&__block_literal_global_42];
  v8 = [v7 count];

  return v8;
}

uint64_t __66__HMDDoorbellChimeController__numHomePodsWithDoorbellChimeEnabled__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isHomePod])
  {
    v3 = [v2 isDoorbellChimeSettingEnabled];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void *__66__HMDDoorbellChimeController__numHomePodsWithDoorbellChimeEnabled__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)notifyAccessoriesViaCoordinationFreePathWithDelay:(double)a3 home:(id)a4 shouldPlayChime:(BOOL)a5 personIdentificationText:(id)a6 accessoriesToNotify:(id)a7 logEvent:(id)a8 accessoryUUID:(id)a9
{
  v40 = *MEMORY[0x277D85DE8];
  v16 = a4;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = objc_autoreleasePoolPush();
  v22 = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    *buf = 138543618;
    v37 = v24;
    v38 = 2112;
    v39 = v18;
    _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Taking HomeKit path to notify: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v21);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __169__HMDDoorbellChimeController_notifyAccessoriesViaCoordinationFreePathWithDelay_home_shouldPlayChime_personIdentificationText_accessoriesToNotify_logEvent_accessoryUUID___block_invoke;
  v31[3] = &unk_27972A780;
  v31[4] = v22;
  v35 = a5;
  v25 = v17;
  v32 = v25;
  v34 = a3;
  v26 = v20;
  v33 = v26;
  [v18 na_each:v31];
  if (v25)
  {
    [(HMDDoorbellChimeController *)v22 setLastUnidentifiedChimeDate:0];
  }

  else
  {
    v27 = [MEMORY[0x277CBEAA8] date];
    [(HMDDoorbellChimeController *)v22 setLastUnidentifiedChimeDate:v27];
  }

  v28 = [(HMDDoorbellChimeController *)v22 context];
  v29 = [v28 logEventSubmitter];
  [v29 submitLogEvent:v19];

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __169__HMDDoorbellChimeController_notifyAccessoriesViaCoordinationFreePathWithDelay_home_shouldPlayChime_personIdentificationText_accessoriesToNotify_logEvent_accessoryUUID___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [*(a1 + 32) context];
  v4 = [v3 accessorySupportsCoordinationFreeDoorbellChime:v12];

  v6 = v12;
  if (v4)
  {
    v5 = v12;
    v7 = *(a1 + 40);
    if (*(a1 + 64) == 1)
    {
      if (v7)
      {
        v8 = 3;
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      if (!v7)
      {
        goto LABEL_9;
      }

      v8 = 2;
    }

    v9 = [v12 doorbellChimeProfile];
    v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:*(a1 + 56)];
    [v9 sendDoorbellChimeMessageWithChimeMode:v8 chimeDate:v10 personIdentificationText:*(a1 + 40) accessoryUUID:*(a1 + 48)];

    v6 = v12;
  }

LABEL_9:

  return MEMORY[0x2821F96F8](v5, v6);
}

- (void)_notifyAllAccessoriesForDoorbellPressAndPlayChimeSound:(BOOL)a3 significantEvents:(id)a4
{
  v4 = a3;
  v98 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(HMDDoorbellChimeController *)self context];
  v8 = [v7 workQueue];
  dispatch_assert_queue_V2(v8);

  if (v4)
  {
    goto LABEL_6;
  }

  v9 = [(HMDDoorbellChimeController *)self lastUnidentifiedChimeDate];

  if (v9)
  {
    v10 = [(HMDDoorbellChimeController *)self lastUnidentifiedChimeDate];
    [v10 timeIntervalSinceNow];
    v12 = -v11;

    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [(HMDDoorbellChimeController *)v14 context];
      [v17 doorbellChimeMaximumAnnounceDelay];
      *buf = 138543874;
      v95 = v16;
      v96 = 2048;
      *v97 = v12;
      *&v97[8] = 2048;
      *&v97[10] = v18;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@It has been %lfs since the last unidentified chime, and our maximum allowed announce delay is %lfs", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    v19 = [(HMDDoorbellChimeController *)v14 context];
    [v19 doorbellChimeMaximumAnnounceDelay];
    v21 = v20;

    if (v21 >= v12)
    {
LABEL_6:
      v22 = objc_autoreleasePoolPush();
      v23 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543874;
        v95 = v25;
        v96 = 1024;
        *v97 = v4;
        *&v97[4] = 2112;
        *&v97[6] = v6;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Notifying accessories for doorbell press with shouldPlayChime: %{BOOL}d, significantEvents: %@", buf, 0x1Cu);
      }

      objc_autoreleasePoolPop(v22);
      v26 = [(HMDDoorbellChimeController *)v23 context];
      v27 = [v26 accessory];

      v28 = [v27 cameraProfiles];
      v29 = [v28 anyObject];

      v84 = objc_alloc_init(HMDDoorbellChimeNotificationLogEvent);
      [(HMDDoorbellChimeNotificationLogEvent *)v84 setNumHomePodsWithDoorbellChimeEnabled:[(HMDDoorbellChimeController *)v23 _numHomePodsWithDoorbellChimeEnabled]];
      if (v4)
      {
        [MEMORY[0x277CBEAA8] date];
      }

      else
      {
        [(HMDDoorbellChimeController *)v23 lastUnidentifiedChimeDate];
      }
      v30 = ;
      [(HMDDoorbellChimeController *)v23 setLastUnidentifiedChimeDate:v30];

      if (v6)
      {
        v31 = [(HMDDoorbellChimeController *)v23 context];
        v32 = [v31 doorbellBulletinUtilities];
        v33 = [v32 localizedAudioAccessoryAnnounceMessageForSignificantEvents:v6];
      }

      else if (v29)
      {
        v39 = [(HMDDoorbellChimeController *)v23 context];
        v40 = [v39 doorbellBulletinUtilities];
        v41 = [(HMDDoorbellChimeController *)v23 lastUnidentifiedChimeDate];
        v6 = [v40 significantEventsRelevantToDoorbellPressAtDate:v41 forCameraProfile:v29];

        v42 = [(HMDDoorbellChimeController *)v23 context];
        v43 = [v42 doorbellBulletinUtilities];
        v44 = [v43 localizedAudioAccessoryAnnounceMessageForSignificantEvents:v6];

        if (v44)
        {
          v83 = v44;
          goto LABEL_22;
        }

        v70 = v29;
        v71 = v27;
        v72 = objc_autoreleasePoolPush();
        v73 = v23;
        v74 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
        {
          v75 = HMFGetLogIdentifier();
          *buf = 138543362;
          v95 = v75;
          _os_log_impl(&dword_2531F8000, v74, OS_LOG_TYPE_INFO, "%{public}@Fetching significant events from the cloud because no person identification text was found", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v72);
        v76 = [(HMDDoorbellChimeController *)v73 context];
        v77 = [v76 doorbellBulletinUtilities];
        v78 = [(HMDDoorbellChimeController *)v73 lastUnidentifiedChimeDate];
        v93[0] = MEMORY[0x277D85DD0];
        v93[1] = 3221225472;
        v93[2] = __103__HMDDoorbellChimeController__notifyAllAccessoriesForDoorbellPressAndPlayChimeSound_significantEvents___block_invoke;
        v93[3] = &unk_27972FFC8;
        v93[4] = v73;
        v79 = v70;
        [v77 fetchSignificantEventsRelevantToDoorbellPressAtDate:v78 forCameraProfile:v70 completion:v93];

        v33 = 0;
        v27 = v71;
        v29 = v79;
      }

      else
      {
        v33 = 0;
        v6 = 0;
      }

      if (!v4 && !v33)
      {
        v34 = objc_autoreleasePoolPush();
        v35 = v23;
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v37 = HMFGetLogIdentifier();
          *buf = 138543362;
          v95 = v37;
          _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@Not playing chime and found no persons to announce, so doing nothing", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v34);
        v38 = v84;
LABEL_34:

        goto LABEL_35;
      }

      v83 = v33;
LABEL_22:
      v45 = [v27 home];
      v46 = [v45 appleMediaAccessories];
      v92[0] = MEMORY[0x277D85DD0];
      v92[1] = 3221225472;
      v92[2] = __103__HMDDoorbellChimeController__notifyAllAccessoriesForDoorbellPressAndPlayChimeSound_significantEvents___block_invoke_31;
      v92[3] = &unk_279734F10;
      v92[4] = v23;
      v47 = [v46 na_filter:v92];

      if ([v47 count])
      {
        [(HMDDoorbellChimeController *)v23 context];
        v80 = v82 = v6;
        v48 = [v80 fetchDoorbellDelay];
        v49 = MEMORY[0x277D2C938];
        [(HMDDoorbellChimeController *)v23 context];
        v81 = v29;
        v51 = v50 = v27;
        v52 = [v51 workQueue];
        v53 = [v49 schedulerWithDispatchQueue:v52];
        v54 = [v48 reschedule:v53];
        v85[0] = MEMORY[0x277D85DD0];
        v85[1] = 3221225472;
        v85[2] = __103__HMDDoorbellChimeController__notifyAllAccessoriesForDoorbellPressAndPlayChimeSound_significantEvents___block_invoke_34;
        v85[3] = &unk_27972A758;
        v85[4] = v23;
        v86 = v45;
        v91 = v4;
        v55 = v83;
        v87 = v83;
        v88 = v47;
        v38 = v84;
        v89 = v84;
        v90 = v50;
        v56 = [v54 addCompletionBlock:v85];

        v27 = v50;
        v29 = v81;

        v6 = v82;
      }

      else
      {
        v65 = objc_autoreleasePoolPush();
        v66 = v23;
        v67 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
        {
          v68 = HMFGetLogIdentifier();
          *buf = 138543618;
          v95 = v68;
          v96 = 2112;
          *v97 = v27;
          _os_log_impl(&dword_2531F8000, v67, OS_LOG_TYPE_INFO, "%{public}@Nothing to notify for chime from %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v65);
        v55 = v83;
        v38 = v84;
      }

      goto LABEL_34;
    }

    v61 = objc_autoreleasePoolPush();
    v62 = v14;
    v63 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
    {
      v64 = HMFGetLogIdentifier();
      *buf = 138543362;
      v95 = v64;
      _os_log_impl(&dword_2531F8000, v63, OS_LOG_TYPE_INFO, "%{public}@Not notifying accessories since we have exceeded our maximum allowed announce delay", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v61);
    [(HMDDoorbellChimeController *)v62 setLastUnidentifiedChimeDate:0];
  }

  else
  {
    v57 = objc_autoreleasePoolPush();
    v58 = self;
    v59 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
    {
      v60 = HMFGetLogIdentifier();
      *buf = 138543362;
      v95 = v60;
      _os_log_impl(&dword_2531F8000, v59, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring updated person information because there was not a recent doorbell press", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v57);
  }

LABEL_35:

  v69 = *MEMORY[0x277D85DE8];
}

void __103__HMDDoorbellChimeController__notifyAllAccessoriesForDoorbellPressAndPlayChimeSound_significantEvents___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) context];
  v5 = [v4 workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __103__HMDDoorbellChimeController__notifyAllAccessoriesForDoorbellPressAndPlayChimeSound_significantEvents___block_invoke_2;
  v7[3] = &unk_2797359B0;
  v7[4] = *(a1 + 32);
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

uint64_t __103__HMDDoorbellChimeController__notifyAllAccessoriesForDoorbellPressAndPlayChimeSound_significantEvents___block_invoke_31(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 context];
  v5 = [v4 accessorySupportsCoordinationFreeDoorbellChime:v3];

  return v5;
}

void __103__HMDDoorbellChimeController__notifyAllAccessoriesForDoorbellPressAndPlayChimeSound_significantEvents___block_invoke_34(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  [a2 doubleValue];
  v5 = v4;
  v6 = *(a1 + 80);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = [*(a1 + 72) uuid];
  [v3 notifyAccessoriesViaCoordinationFreePathWithDelay:v7 home:v6 shouldPlayChime:v8 personIdentificationText:v9 accessoriesToNotify:v10 logEvent:v11 accessoryUUID:v5];
}

uint64_t __103__HMDDoorbellChimeController__notifyAllAccessoriesForDoorbellPressAndPlayChimeSound_significantEvents___block_invoke_2(uint64_t a1)
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Attempting to announce any persons without re-playing chime after finished fetching significant events from the cloud", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _notifyAllAccessoriesForDoorbellPressAndPlayChimeSound:0 significantEvents:*(a1 + 40)];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_handleCharacteristicsValueUpdatedNotification:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDDoorbellChimeController *)self context];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  v23 = v4;
  v7 = [v4 userInfo];
  v8 = [v7 objectForKeyedSubscript:@"HMDNotificationCharacteristicValueUpdatedChangedCharacteristicsKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v22 = v10;
  [v10 na_filter:&__block_literal_global_98195];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = v27 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        v17 = objc_autoreleasePoolPush();
        v18 = self;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543618;
          v29 = v20;
          v30 = 2112;
          v31 = v16;
          _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Handling doorbell input event characteristic: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v17);
        [(HMDDoorbellChimeController *)v18 _notifyAllAccessoriesForDoorbellPressAndPlayChimeSound:1];
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v13);
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __77__HMDDoorbellChimeController__handleCharacteristicsValueUpdatedNotification___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 type];
  if ([v3 isEqualToString:*MEMORY[0x277CCF910]])
  {
    v4 = [v2 service];
    v5 = [v4 type];
    v6 = [v5 isEqualToString:*MEMORY[0x277CD0E38]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)clientIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMDDoorbellChimeController *)self context];
  v4 = [v3 accessory];
  v5 = [v4 uuid];
  v6 = [v5 UUIDString];
  v7 = [v2 stringWithFormat:@"%@%@", @"HMDDoorbellChimeControllerIdentifier", v6];

  return v7;
}

- (void)handleUpdatedPersonIdentificationInformation
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(HMDDoorbellChimeController *)self context];
  v4 = [v3 isCurrentDevicePrimaryResident];

  if (v4)
  {
    v5 = [(HMDDoorbellChimeController *)self context];
    v6 = [v5 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__HMDDoorbellChimeController_handleUpdatedPersonIdentificationInformation__block_invoke;
    block[3] = &unk_279735D00;
    block[4] = self;
    dispatch_async(v6, block);
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v14 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring new significant event since we are not the primary resident", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)configure
{
  v3 = [(HMDDoorbellChimeController *)self context];
  v4 = [v3 listener];
  [v4 setDelegate:self];

  v5 = [(HMDDoorbellChimeController *)self context];
  v6 = [v5 listener];
  [v6 start];

  v10 = [(HMDDoorbellChimeController *)self context];
  v7 = [v10 notificationCenter];
  v8 = [(HMDDoorbellChimeController *)self context];
  v9 = [v8 accessory];
  [v7 addObserver:self selector:sel_handleCharacteristicsValueUpdatedNotification_ name:@"HMDNotificationCharacteristicValueUpdated" object:v9];
}

- (void)dealloc
{
  v3 = [(HMDDoorbellChimeController *)self context];
  v4 = [v3 accessory];
  v5 = [(HMDDoorbellChimeController *)self availableCharacteristics];
  v6 = [v5 allObjects];
  v7 = [(HMDDoorbellChimeController *)self clientIdentifier];
  [v4 setNotificationsEnabled:0 forCharacteristics:v6 clientIdentifier:v7];

  v8.receiver = self;
  v8.super_class = HMDDoorbellChimeController;
  [(HMDDoorbellChimeController *)&v8 dealloc];
}

- (HMDDoorbellChimeController)initWithContext:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v16.receiver = self;
    v16.super_class = HMDDoorbellChimeController;
    v7 = [(HMDDoorbellChimeController *)&v16 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_context, a3);
      v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
      availableCharacteristics = v8->_availableCharacteristics;
      v8->_availableCharacteristics = v9;
    }

    return v8;
  }

  else
  {
    v12 = _HMFPreconditionFailure();
    return [(HMDDoorbellChimeController *)v12 initWithWorkQueue:v13 accessory:v14, v15];
  }
}

- (HMDDoorbellChimeController)initWithWorkQueue:(id)a3 accessory:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = v7;
    if (v7)
    {
      v9 = [[HMDDoorbellChimeControllerContext alloc] initWithWorkQueue:v6 accessory:v7];
      v10 = [(HMDDoorbellChimeController *)self initWithContext:v9];

      return v10;
    }
  }

  else
  {
    _HMFPreconditionFailure();
  }

  v12 = _HMFPreconditionFailure();
  return +[(HMDDoorbellChimeController *)v12];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t14_98225 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t14_98225, &__block_literal_global_44_98226);
  }

  v3 = logCategory__hmf_once_v15_98227;

  return v3;
}

uint64_t __41__HMDDoorbellChimeController_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v15_98227;
  logCategory__hmf_once_v15_98227 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end