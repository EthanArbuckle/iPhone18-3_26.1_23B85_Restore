@interface HMDDoorbellChimeController
+ (id)logCategory;
- (HMDDoorbellChimeController)initWithContext:(id)context;
- (HMDDoorbellChimeController)initWithWorkQueue:(id)queue accessory:(id)accessory;
- (id)clientIdentifier;
- (id)logIdentifier;
- (unint64_t)_numHomePodsWithDoorbellChimeEnabled;
- (void)_handleCharacteristicsValueUpdatedNotification:(id)notification;
- (void)_notifyAllAccessoriesForDoorbellPressAndPlayChimeSound:(BOOL)sound significantEvents:(id)events;
- (void)configure;
- (void)dealloc;
- (void)handleCharacteristicsValueUpdatedNotification:(id)notification;
- (void)handleUpdatedPersonIdentificationInformation;
- (void)listener:(id)listener didUpdateAvailableCharacteristics:(id)characteristics;
- (void)notifyAccessoriesViaCoordinationFreePathWithDelay:(double)delay home:(id)home shouldPlayChime:(BOOL)chime personIdentificationText:(id)text accessoriesToNotify:(id)notify logEvent:(id)event accessoryUUID:(id)d;
@end

@implementation HMDDoorbellChimeController

- (void)listener:(id)listener didUpdateAvailableCharacteristics:(id)characteristics
{
  characteristicsCopy = characteristics;
  [(HMDDoorbellChimeController *)self setAvailableCharacteristics:characteristicsCopy];
  context = [(HMDDoorbellChimeController *)self context];
  accessory = [context accessory];
  allObjects = [characteristicsCopy allObjects];

  clientIdentifier = [(HMDDoorbellChimeController *)self clientIdentifier];
  [accessory setNotificationsEnabled:1 forCharacteristics:allObjects clientIdentifier:clientIdentifier];
}

- (id)logIdentifier
{
  context = [(HMDDoorbellChimeController *)self context];
  accessory = [context accessory];
  uuid = [accessory uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)handleCharacteristicsValueUpdatedNotification:(id)notification
{
  v18 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  context = [(HMDDoorbellChimeController *)self context];
  isCurrentDevicePrimaryResident = [context isCurrentDevicePrimaryResident];

  if (isCurrentDevicePrimaryResident)
  {
    context2 = [(HMDDoorbellChimeController *)self context];
    workQueue = [context2 workQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __76__HMDDoorbellChimeController_handleCharacteristicsValueUpdatedNotification___block_invoke;
    v14[3] = &unk_2797359B0;
    v14[4] = self;
    v15 = notificationCopy;
    dispatch_async(workQueue, v14);
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
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
  context = [(HMDDoorbellChimeController *)self context];
  accessory = [context accessory];
  home = [accessory home];
  accessories = [home accessories];
  v6 = [accessories na_map:&__block_literal_global_39_98176];

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

- (void)notifyAccessoriesViaCoordinationFreePathWithDelay:(double)delay home:(id)home shouldPlayChime:(BOOL)chime personIdentificationText:(id)text accessoriesToNotify:(id)notify logEvent:(id)event accessoryUUID:(id)d
{
  v40 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  textCopy = text;
  notifyCopy = notify;
  eventCopy = event;
  dCopy = d;
  v21 = objc_autoreleasePoolPush();
  selfCopy = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    *buf = 138543618;
    v37 = v24;
    v38 = 2112;
    v39 = notifyCopy;
    _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Taking HomeKit path to notify: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v21);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __169__HMDDoorbellChimeController_notifyAccessoriesViaCoordinationFreePathWithDelay_home_shouldPlayChime_personIdentificationText_accessoriesToNotify_logEvent_accessoryUUID___block_invoke;
  v31[3] = &unk_27972A780;
  v31[4] = selfCopy;
  chimeCopy = chime;
  v25 = textCopy;
  v32 = v25;
  delayCopy = delay;
  v26 = dCopy;
  v33 = v26;
  [notifyCopy na_each:v31];
  if (v25)
  {
    [(HMDDoorbellChimeController *)selfCopy setLastUnidentifiedChimeDate:0];
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(HMDDoorbellChimeController *)selfCopy setLastUnidentifiedChimeDate:date];
  }

  context = [(HMDDoorbellChimeController *)selfCopy context];
  logEventSubmitter = [context logEventSubmitter];
  [logEventSubmitter submitLogEvent:eventCopy];

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

- (void)_notifyAllAccessoriesForDoorbellPressAndPlayChimeSound:(BOOL)sound significantEvents:(id)events
{
  soundCopy = sound;
  v98 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  context = [(HMDDoorbellChimeController *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (soundCopy)
  {
    goto LABEL_6;
  }

  lastUnidentifiedChimeDate = [(HMDDoorbellChimeController *)self lastUnidentifiedChimeDate];

  if (lastUnidentifiedChimeDate)
  {
    lastUnidentifiedChimeDate2 = [(HMDDoorbellChimeController *)self lastUnidentifiedChimeDate];
    [lastUnidentifiedChimeDate2 timeIntervalSinceNow];
    v12 = -v11;

    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      context2 = [(HMDDoorbellChimeController *)selfCopy context];
      [context2 doorbellChimeMaximumAnnounceDelay];
      *buf = 138543874;
      v95 = v16;
      v96 = 2048;
      *v97 = v12;
      *&v97[8] = 2048;
      *&v97[10] = v18;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@It has been %lfs since the last unidentified chime, and our maximum allowed announce delay is %lfs", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    context3 = [(HMDDoorbellChimeController *)selfCopy context];
    [context3 doorbellChimeMaximumAnnounceDelay];
    v21 = v20;

    if (v21 >= v12)
    {
LABEL_6:
      v22 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543874;
        v95 = v25;
        v96 = 1024;
        *v97 = soundCopy;
        *&v97[4] = 2112;
        *&v97[6] = eventsCopy;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Notifying accessories for doorbell press with shouldPlayChime: %{BOOL}d, significantEvents: %@", buf, 0x1Cu);
      }

      objc_autoreleasePoolPop(v22);
      context4 = [(HMDDoorbellChimeController *)selfCopy2 context];
      accessory = [context4 accessory];

      cameraProfiles = [accessory cameraProfiles];
      anyObject = [cameraProfiles anyObject];

      v84 = objc_alloc_init(HMDDoorbellChimeNotificationLogEvent);
      [(HMDDoorbellChimeNotificationLogEvent *)v84 setNumHomePodsWithDoorbellChimeEnabled:[(HMDDoorbellChimeController *)selfCopy2 _numHomePodsWithDoorbellChimeEnabled]];
      if (soundCopy)
      {
        [MEMORY[0x277CBEAA8] date];
      }

      else
      {
        [(HMDDoorbellChimeController *)selfCopy2 lastUnidentifiedChimeDate];
      }
      v30 = ;
      [(HMDDoorbellChimeController *)selfCopy2 setLastUnidentifiedChimeDate:v30];

      if (eventsCopy)
      {
        context5 = [(HMDDoorbellChimeController *)selfCopy2 context];
        doorbellBulletinUtilities = [context5 doorbellBulletinUtilities];
        v33 = [doorbellBulletinUtilities localizedAudioAccessoryAnnounceMessageForSignificantEvents:eventsCopy];
      }

      else if (anyObject)
      {
        context6 = [(HMDDoorbellChimeController *)selfCopy2 context];
        doorbellBulletinUtilities2 = [context6 doorbellBulletinUtilities];
        lastUnidentifiedChimeDate3 = [(HMDDoorbellChimeController *)selfCopy2 lastUnidentifiedChimeDate];
        eventsCopy = [doorbellBulletinUtilities2 significantEventsRelevantToDoorbellPressAtDate:lastUnidentifiedChimeDate3 forCameraProfile:anyObject];

        context7 = [(HMDDoorbellChimeController *)selfCopy2 context];
        doorbellBulletinUtilities3 = [context7 doorbellBulletinUtilities];
        v44 = [doorbellBulletinUtilities3 localizedAudioAccessoryAnnounceMessageForSignificantEvents:eventsCopy];

        if (v44)
        {
          v83 = v44;
          goto LABEL_22;
        }

        v70 = anyObject;
        v71 = accessory;
        v72 = objc_autoreleasePoolPush();
        v73 = selfCopy2;
        v74 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
        {
          v75 = HMFGetLogIdentifier();
          *buf = 138543362;
          v95 = v75;
          _os_log_impl(&dword_2531F8000, v74, OS_LOG_TYPE_INFO, "%{public}@Fetching significant events from the cloud because no person identification text was found", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v72);
        context8 = [(HMDDoorbellChimeController *)v73 context];
        doorbellBulletinUtilities4 = [context8 doorbellBulletinUtilities];
        lastUnidentifiedChimeDate4 = [(HMDDoorbellChimeController *)v73 lastUnidentifiedChimeDate];
        v93[0] = MEMORY[0x277D85DD0];
        v93[1] = 3221225472;
        v93[2] = __103__HMDDoorbellChimeController__notifyAllAccessoriesForDoorbellPressAndPlayChimeSound_significantEvents___block_invoke;
        v93[3] = &unk_27972FFC8;
        v93[4] = v73;
        v79 = v70;
        [doorbellBulletinUtilities4 fetchSignificantEventsRelevantToDoorbellPressAtDate:lastUnidentifiedChimeDate4 forCameraProfile:v70 completion:v93];

        v33 = 0;
        accessory = v71;
        anyObject = v79;
      }

      else
      {
        v33 = 0;
        eventsCopy = 0;
      }

      if (!soundCopy && !v33)
      {
        v34 = objc_autoreleasePoolPush();
        v35 = selfCopy2;
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
      home = [accessory home];
      appleMediaAccessories = [home appleMediaAccessories];
      v92[0] = MEMORY[0x277D85DD0];
      v92[1] = 3221225472;
      v92[2] = __103__HMDDoorbellChimeController__notifyAllAccessoriesForDoorbellPressAndPlayChimeSound_significantEvents___block_invoke_31;
      v92[3] = &unk_279734F10;
      v92[4] = selfCopy2;
      v47 = [appleMediaAccessories na_filter:v92];

      if ([v47 count])
      {
        [(HMDDoorbellChimeController *)selfCopy2 context];
        v80 = v82 = eventsCopy;
        fetchDoorbellDelay = [v80 fetchDoorbellDelay];
        v49 = MEMORY[0x277D2C938];
        [(HMDDoorbellChimeController *)selfCopy2 context];
        v81 = anyObject;
        v51 = v50 = accessory;
        workQueue2 = [v51 workQueue];
        v53 = [v49 schedulerWithDispatchQueue:workQueue2];
        v54 = [fetchDoorbellDelay reschedule:v53];
        v85[0] = MEMORY[0x277D85DD0];
        v85[1] = 3221225472;
        v85[2] = __103__HMDDoorbellChimeController__notifyAllAccessoriesForDoorbellPressAndPlayChimeSound_significantEvents___block_invoke_34;
        v85[3] = &unk_27972A758;
        v85[4] = selfCopy2;
        v86 = home;
        v91 = soundCopy;
        v55 = v83;
        v87 = v83;
        v88 = v47;
        v38 = v84;
        v89 = v84;
        v90 = v50;
        v56 = [v54 addCompletionBlock:v85];

        accessory = v50;
        anyObject = v81;

        eventsCopy = v82;
      }

      else
      {
        v65 = objc_autoreleasePoolPush();
        v66 = selfCopy2;
        v67 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
        {
          v68 = HMFGetLogIdentifier();
          *buf = 138543618;
          v95 = v68;
          v96 = 2112;
          *v97 = accessory;
          _os_log_impl(&dword_2531F8000, v67, OS_LOG_TYPE_INFO, "%{public}@Nothing to notify for chime from %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v65);
        v55 = v83;
        v38 = v84;
      }

      goto LABEL_34;
    }

    v61 = objc_autoreleasePoolPush();
    v62 = selfCopy;
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
    selfCopy3 = self;
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

- (void)_handleCharacteristicsValueUpdatedNotification:(id)notification
{
  v33 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  context = [(HMDDoorbellChimeController *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  v23 = notificationCopy;
  userInfo = [notificationCopy userInfo];
  v8 = [userInfo objectForKeyedSubscript:@"HMDNotificationCharacteristicValueUpdatedChangedCharacteristicsKey"];

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
        selfCopy = self;
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
        [(HMDDoorbellChimeController *)selfCopy _notifyAllAccessoriesForDoorbellPressAndPlayChimeSound:1];
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
  context = [(HMDDoorbellChimeController *)self context];
  accessory = [context accessory];
  uuid = [accessory uuid];
  uUIDString = [uuid UUIDString];
  v7 = [v2 stringWithFormat:@"%@%@", @"HMDDoorbellChimeControllerIdentifier", uUIDString];

  return v7;
}

- (void)handleUpdatedPersonIdentificationInformation
{
  v15 = *MEMORY[0x277D85DE8];
  context = [(HMDDoorbellChimeController *)self context];
  isCurrentDevicePrimaryResident = [context isCurrentDevicePrimaryResident];

  if (isCurrentDevicePrimaryResident)
  {
    context2 = [(HMDDoorbellChimeController *)self context];
    workQueue = [context2 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__HMDDoorbellChimeController_handleUpdatedPersonIdentificationInformation__block_invoke;
    block[3] = &unk_279735D00;
    block[4] = self;
    dispatch_async(workQueue, block);
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
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
  context = [(HMDDoorbellChimeController *)self context];
  listener = [context listener];
  [listener setDelegate:self];

  context2 = [(HMDDoorbellChimeController *)self context];
  listener2 = [context2 listener];
  [listener2 start];

  context3 = [(HMDDoorbellChimeController *)self context];
  notificationCenter = [context3 notificationCenter];
  context4 = [(HMDDoorbellChimeController *)self context];
  accessory = [context4 accessory];
  [notificationCenter addObserver:self selector:sel_handleCharacteristicsValueUpdatedNotification_ name:@"HMDNotificationCharacteristicValueUpdated" object:accessory];
}

- (void)dealloc
{
  context = [(HMDDoorbellChimeController *)self context];
  accessory = [context accessory];
  availableCharacteristics = [(HMDDoorbellChimeController *)self availableCharacteristics];
  allObjects = [availableCharacteristics allObjects];
  clientIdentifier = [(HMDDoorbellChimeController *)self clientIdentifier];
  [accessory setNotificationsEnabled:0 forCharacteristics:allObjects clientIdentifier:clientIdentifier];

  v8.receiver = self;
  v8.super_class = HMDDoorbellChimeController;
  [(HMDDoorbellChimeController *)&v8 dealloc];
}

- (HMDDoorbellChimeController)initWithContext:(id)context
{
  contextCopy = context;
  if (contextCopy)
  {
    v6 = contextCopy;
    v16.receiver = self;
    v16.super_class = HMDDoorbellChimeController;
    v7 = [(HMDDoorbellChimeController *)&v16 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_context, context);
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

- (HMDDoorbellChimeController)initWithWorkQueue:(id)queue accessory:(id)accessory
{
  queueCopy = queue;
  accessoryCopy = accessory;
  if (queueCopy)
  {
    v8 = accessoryCopy;
    if (accessoryCopy)
    {
      v9 = [[HMDDoorbellChimeControllerContext alloc] initWithWorkQueue:queueCopy accessory:accessoryCopy];
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