@interface HMDCameraBulletinNotificationManager
+ (id)_cameraAccessModeRegistrationsForSource:(id)source context:(id)context;
+ (id)_cameraReachabilityRegistrationsForSource:(id)source context:(id)context;
+ (id)_cameraSignificantEventRegistrationsForSource:(id)source context:(id)context;
+ (id)logCategory;
- (BOOL)_filterPassesForCameraSignificantEvent:(id)event registration:(id)registration;
- (BOOL)_shouldNotifyForActivityForSignificantEvent:(id)event remoteRegistration:(id)registration;
- (BOOL)_shouldNotifyForDoorbellPressForSignificantEvent:(id)event registration:(id)registration;
- (HMDBulletinNotificationRegistrationSource)source;
- (HMDCameraBulletinNotificationManager)initWithHome:(id)home workQueue:(id)queue messageDispatcher:(id)dispatcher accountManager:(id)manager faceClassificationResolver:(id)resolver doorbellPressTracker:(id)tracker evaluator:(id)evaluator notificationCenter:(id)self0;
- (HMDHome)home;
- (NSArray)cameraAccessModeRegistrations;
- (NSArray)cameraAccessModeRegistrationsForCurrentDevice;
- (NSArray)cameraReachabilityRegistrations;
- (NSArray)cameraReachabilityRegistrationsForCurrentDevice;
- (NSArray)cameraSignificantEventRegistrations;
- (NSArray)cameraSignificantEventRegistrationsForCurrentDevice;
- (id)_cameraAccessModeBulletinNotificationRegistrationsForAccessory:(id)accessory;
- (id)_cameraProfileWithUUID:(id)d;
- (id)_cameraReachabilityBulletinNotificationRegistrationsForAccessory:(id)accessory;
- (id)_cameraSignificantEventBulletinNotificationRegistrationsForCameraIdentifier:(id)identifier;
- (id)_currentHomeCameraAccessoryUUIDs;
- (id)_deviceToNotifyForRegistration:(id)registration source:(id)source;
- (id)_mkfLocalCameraAccessModeRegistrationsWithManagedObjectContext:(id)context;
- (id)_mkfLocalCameraReachabilityRegistrationsWithManagedObjectContext:(id)context;
- (id)_mkfLocalCameraSignificantEventRegistrationsWithManagedObjectContext:(id)context;
- (id)_recentDoorbellPressIntervalForSignificantEventDate:(id)date;
- (id)cameraUserNotificationSettingsForAccessory:(id)accessory;
- (id)devicesToNotifyForAccessModeChangeForAccessory:(id)accessory;
- (id)devicesToNotifyForCameraReachabilityForAccessory:(id)accessory;
- (id)logIdentifier;
- (void)_handleCameraSignificantEventBulletinNotificationRegistration:(id)registration removed:(BOOL)removed;
- (void)_handleCameraSignificantEventBulletinNotifyPrimaryResidentMessage:(id)message;
- (void)_handleCameraSignificantEventNotificationMessage:(id)message;
- (void)_handleCurrentDeviceOrAccountUpdatedNotification:(id)notification;
- (void)_handleDeviceBecameNotPrimary;
- (void)_handleDeviceBecamePrimary;
- (void)_handlePrimaryResidentUpdateNotification:(id)notification;
- (void)_handleSignificantEvent:(id)event cameraProfileUUID:(id)d;
- (void)_handleSignificantEvent:(id)event remoteRegistration:(id)registration;
- (void)_handleSignificantEventWithUUID:(id)d reason:(unint64_t)reason dateOfOccurrence:(id)occurrence confidenceLevel:(unint64_t)level faceClassifications:(id)classifications cameraProfile:(id)profile;
- (void)_notifyDevice:(id)device aboutSignificantEvent:(id)event notificationReasons:(unint64_t)reasons;
- (void)_notifyObserversOfSignificantEventUUID:(id)d cameraProfileUUID:(id)iD notificationReasons:(unint64_t)reasons;
- (void)_notifyPrimaryResidentOfSignificantEvent:(id)event withCameraProfileUUID:(id)d;
- (void)_requestSynchronizeRegistrations;
- (void)_synchronizeLocalRegistrationsWithPrimaryResident;
- (void)_updateRegistrationsOnPrimaryWithEnabledRegistrations:(id)registrations disabledRegistrations:(id)disabledRegistrations;
- (void)addCameraSignificantEventNotificationObserver:(id)observer cameraIdentifier:(id)identifier;
- (void)configureWithDeviceIsResidentCapable:(BOOL)capable;
- (void)handleCurrentDeviceOrAccountUpdatedNotification:(id)notification;
- (void)handlePrimaryResidentUpdateNotification:(id)notification;
- (void)handleRemovedCameraAccessory:(id)accessory;
- (void)handleSignificantEvent:(id)event cameraProfileUUID:(id)d;
- (void)removeCameraSignificantEventNotificationObserver:(id)observer cameraIdentifier:(id)identifier;
- (void)timerDidFire:(id)fire;
- (void)updateNotificationRegistrationsWithSettings:(id)settings accessory:(id)accessory doorbellPressNotificationEnabled:(BOOL)enabled completion:(id)completion;
@end

@implementation HMDCameraBulletinNotificationManager

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  home = [(HMDCameraBulletinNotificationManager *)self home];
  uuid = [home uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)timerDidFire:(id)fire
{
  v15 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  workQueue = [(HMDCameraBulletinNotificationManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  synchronizeWithPrimaryDebounceTimer = [(HMDCameraBulletinNotificationManager *)self synchronizeWithPrimaryDebounceTimer];

  if (synchronizeWithPrimaryDebounceTimer == fireCopy)
  {
    synchronizeWithPrimaryDebounceTimer2 = [(HMDCameraBulletinNotificationManager *)self synchronizeWithPrimaryDebounceTimer];
    [synchronizeWithPrimaryDebounceTimer2 suspend];

    [(HMDCameraBulletinNotificationManager *)self _synchronizeLocalRegistrationsWithPrimaryResident];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
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

- (void)handleCurrentDeviceOrAccountUpdatedNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDCameraBulletinNotificationManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __88__HMDCameraBulletinNotificationManager_handleCurrentDeviceOrAccountUpdatedNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

- (void)handlePrimaryResidentUpdateNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDCameraBulletinNotificationManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__HMDCameraBulletinNotificationManager_handlePrimaryResidentUpdateNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

- (void)_handleCameraSignificantEventBulletinNotifyPrimaryResidentMessage:(id)message
{
  v43 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraBulletinNotificationManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  home = [(HMDCameraBulletinNotificationManager *)self home];
  isCurrentDeviceConfirmedPrimaryResident = [home isCurrentDeviceConfirmedPrimaryResident];

  if (isCurrentDeviceConfirmedPrimaryResident)
  {
    v8 = [messageCopy dictionaryForKey:@"HMDBulletinNotificationSignificantEventParamsKey"];
    v38 = 0;
    v9 = [HMDCameraSignificantEventBulletinParamsDictionaryTransformer reverseTransformedValue:v8 error:&v38];
    v10 = v38;
    if (v9)
    {
      cameraProfileUUID = [v9 cameraProfileUUID];
      v12 = [(HMDCameraBulletinNotificationManager *)self _cameraProfileWithUUID:cameraProfileUUID];

      if (v12)
      {
        uUID = [v9 UUID];
        reason = [v9 reason];
        dateOfOccurrence = [v9 dateOfOccurrence];
        confidenceLevel = [v9 confidenceLevel];
        [v9 faceClassifications];
        v16 = v9;
        v17 = messageCopy;
        v18 = v8;
        v20 = v19 = v10;
        [(HMDCameraBulletinNotificationManager *)self _handleSignificantEventWithUUID:uUID reason:reason dateOfOccurrence:dateOfOccurrence confidenceLevel:confidenceLevel faceClassifications:v20 cameraProfile:v12];

        v10 = v19;
        v8 = v18;
        messageCopy = v17;
        v9 = v16;

        [messageCopy respondWithSuccess];
      }

      else
      {
        v30 = objc_autoreleasePoolPush();
        selfCopy = self;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = HMFGetLogIdentifier();
          messagePayload = [messageCopy messagePayload];
          *buf = 138543618;
          v40 = v33;
          v41 = 2112;
          v42 = messagePayload;
          _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Could not find camera profile in message payload: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v30);
        v35 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
        [messageCopy respondWithError:v35];

        v12 = 0;
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        messagePayload2 = [messageCopy messagePayload];
        *buf = 138543618;
        v40 = v28;
        v41 = 2112;
        v42 = messagePayload2;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Could not find significant event in message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      v12 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
      [messageCopy respondWithError:v12];
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v40 = v24;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Received HMDCameraSignificantEventBulletinNotifyPrimaryMessage on non-primary device, ignoring", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (id)_cameraProfileWithUUID:(id)d
{
  v33 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  home = [(HMDCameraBulletinNotificationManager *)self home];
  cameraAccessories = [home cameraAccessories];

  v22 = [cameraAccessories countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v22)
  {
    v7 = *v28;
    v21 = *v28;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(cameraAccessories);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        cameraProfiles = [v9 cameraProfiles];
        v11 = [cameraProfiles countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v24;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v24 != v13)
              {
                objc_enumerationMutation(cameraProfiles);
              }

              v15 = *(*(&v23 + 1) + 8 * j);
              uniqueIdentifier = [v15 uniqueIdentifier];
              v17 = [uniqueIdentifier isEqual:dCopy];

              if (v17)
              {
                v18 = v15;

                goto LABEL_19;
              }
            }

            v12 = [cameraProfiles countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v7 = v21;
      }

      v18 = 0;
      v22 = [cameraAccessories countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v22);
  }

  else
  {
    v18 = 0;
  }

LABEL_19:

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)_handleCameraSignificantEventNotificationMessage:(id)message
{
  v49 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraBulletinNotificationManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [messageCopy uuidForKey:@"HMDBulletinNotificationCameraSignificantEventUUIDMessageKey"];
  if (v6)
  {
    v7 = [messageCopy uuidForKey:@"HMDBulletinNotificationCameraProfileUUIDMessageKey"];
    if (v7)
    {
      remoteSourceDevice = [messageCopy remoteSourceDevice];
      if (remoteSourceDevice)
      {
        v9 = remoteSourceDevice;
        v10 = [messageCopy numberForKey:@"HMDBulletinNotificationCameraSignificantEventModesMessageKey"];
        if (!v10)
        {
          v11 = objc_autoreleasePoolPush();
          selfCopy = self;
          v13 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = HMFGetLogIdentifier();
            messagePayload = [messageCopy messagePayload];
            *buf = 138543618;
            v40 = v14;
            v41 = 2112;
            v42 = messagePayload;
            _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Notification reasons missing from payload: %@, populating with hard-coded value", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v11);
          v10 = &unk_283E722A8;
        }

        unsignedIntegerValue = [v10 unsignedIntegerValue];
        v17 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier();
          NSPrintF();
          v21 = v38 = v17;
          *buf = 138544386;
          v40 = v20;
          v41 = 2112;
          v42 = v6;
          v43 = 2112;
          v44 = v7;
          v45 = 2112;
          v46 = v21;
          v47 = 2112;
          v48 = v9;
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Received message for camera significant event with UUID: %@ cameraProfileUUID: %@ notificationReasons: %@ from device: %@", buf, 0x34u);

          v17 = v38;
        }

        objc_autoreleasePoolPop(v17);
        [(HMDCameraBulletinNotificationManager *)selfCopy2 _notifyObserversOfSignificantEventUUID:v6 cameraProfileUUID:v7 notificationReasons:unsignedIntegerValue];
        [messageCopy respondWithSuccess];
      }

      else
      {
        v32 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = HMFGetLogIdentifier();
          *buf = 138543618;
          v40 = v35;
          v41 = 2112;
          v42 = messageCopy;
          _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Failed to get remote device for message: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v32);
        v36 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
        [messageCopy respondWithError:v36];

        v9 = 0;
      }
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        messagePayload2 = [messageCopy messagePayload];
        *buf = 138543618;
        v40 = v30;
        v41 = 2112;
        v42 = messagePayload2;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Could not find camera profile UUID in message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
      v9 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
      [messageCopy respondWithError:v9];
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      messagePayload3 = [messageCopy messagePayload];
      *buf = 138543618;
      v40 = v25;
      v41 = 2112;
      v42 = messagePayload3;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Could not find camera significant event UUID in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v7 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
    [messageCopy respondWithError:v7];
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)_notifyObserversOfSignificantEventUUID:(id)d cameraProfileUUID:(id)iD notificationReasons:(unint64_t)reasons
{
  dCopy = d;
  iDCopy = iD;
  os_unfair_lock_lock_with_options();
  observersByCameraIdentifier = [(HMDCameraBulletinNotificationManager *)self observersByCameraIdentifier];
  v11 = [observersByCameraIdentifier objectForKeyedSubscript:iDCopy];
  allObjects = [v11 allObjects];

  os_unfair_lock_unlock(&self->_lock);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __117__HMDCameraBulletinNotificationManager__notifyObserversOfSignificantEventUUID_cameraProfileUUID_notificationReasons___block_invoke;
  v15[3] = &unk_278674910;
  v15[4] = self;
  v16 = dCopy;
  v17 = iDCopy;
  reasonsCopy = reasons;
  v13 = iDCopy;
  v14 = dCopy;
  [allObjects na_each:v15];
}

void __117__HMDCameraBulletinNotificationManager__notifyObserversOfSignificantEventUUID_cameraProfileUUID_notificationReasons___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v12 = *(a1 + 56);
      v10 = NSPrintF();
      *buf = 138544386;
      v14 = v7;
      v15 = 2112;
      v16 = v3;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Notifying observer: %@ about camera significant event with UUID: %@ cameraProfileUUID: %@ notificationReasons: %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v4);
    [v3 notificationManager:*(a1 + 32) didReceiveNotificationForCameraSignificantEventIdentifier:*(a1 + 40) notificationReasons:*(a1 + 56)];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_mkfLocalCameraAccessModeRegistrationsWithManagedObjectContext:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  _currentHomeCameraAccessoryUUIDs = [(HMDCameraBulletinNotificationManager *)self _currentHomeCameraAccessoryUUIDs];
  v6 = +[MKFLocalBulletinCameraAccessModeRegistration fetchRequest];
  v18 = 0;
  v7 = [contextCopy executeFetchRequest:v6 error:&v18];
  v8 = v18;
  if (v7)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __103__HMDCameraBulletinNotificationManager__mkfLocalCameraAccessModeRegistrationsWithManagedObjectContext___block_invoke;
    v16[3] = &unk_2786748E8;
    v17 = _currentHomeCameraAccessoryUUIDs;
    v9 = [v7 na_filter:v16];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v13;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch local camera access mode registrations, error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v9 = MEMORY[0x277CBEBF8];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t __103__HMDCameraBulletinNotificationManager__mkfLocalCameraAccessModeRegistrationsWithManagedObjectContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 accessoryModelID];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (id)_mkfLocalCameraReachabilityRegistrationsWithManagedObjectContext:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  _currentHomeCameraAccessoryUUIDs = [(HMDCameraBulletinNotificationManager *)self _currentHomeCameraAccessoryUUIDs];
  v6 = +[MKFLocalBulletinCameraReachabilityRegistration fetchRequest];
  v18 = 0;
  v7 = [contextCopy executeFetchRequest:v6 error:&v18];
  v8 = v18;
  if (v7)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __105__HMDCameraBulletinNotificationManager__mkfLocalCameraReachabilityRegistrationsWithManagedObjectContext___block_invoke;
    v16[3] = &unk_2786748C0;
    v17 = _currentHomeCameraAccessoryUUIDs;
    v9 = [v7 na_filter:v16];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v13;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch local camera reachability registrations, error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v9 = MEMORY[0x277CBEBF8];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t __105__HMDCameraBulletinNotificationManager__mkfLocalCameraReachabilityRegistrationsWithManagedObjectContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 accessoryModelID];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (id)_mkfLocalCameraSignificantEventRegistrationsWithManagedObjectContext:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  _currentHomeCameraAccessoryUUIDs = [(HMDCameraBulletinNotificationManager *)self _currentHomeCameraAccessoryUUIDs];
  v6 = +[MKFLocalBulletinCameraSignificantEventRegistration fetchRequest];
  v18 = 0;
  v7 = [contextCopy executeFetchRequest:v6 error:&v18];
  v8 = v18;
  if (v7)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __109__HMDCameraBulletinNotificationManager__mkfLocalCameraSignificantEventRegistrationsWithManagedObjectContext___block_invoke;
    v16[3] = &unk_278674898;
    v17 = _currentHomeCameraAccessoryUUIDs;
    v9 = [v7 na_filter:v16];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v13;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch local camera significant event registrations, error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v9 = MEMORY[0x277CBEBF8];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t __109__HMDCameraBulletinNotificationManager__mkfLocalCameraSignificantEventRegistrationsWithManagedObjectContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 accessoryModelID];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (id)_currentHomeCameraAccessoryUUIDs
{
  home = [(HMDCameraBulletinNotificationManager *)self home];
  cameraAccessories = [home cameraAccessories];
  v4 = [cameraAccessories na_map:&__block_literal_global_139_57759];

  v5 = [MEMORY[0x277CBEB98] setWithArray:v4];

  return v5;
}

- (void)_updateRegistrationsOnPrimaryWithEnabledRegistrations:(id)registrations disabledRegistrations:(id)disabledRegistrations
{
  v35 = *MEMORY[0x277D85DE8];
  registrationsCopy = registrations;
  disabledRegistrationsCopy = disabledRegistrations;
  workQueue = [(HMDCameraBulletinNotificationManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543874;
    v30 = v12;
    v31 = 2112;
    v32 = registrationsCopy;
    v33 = 2112;
    v34 = disabledRegistrationsCopy;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating registrations on primary resident, [enabled : %@], [disabled : %@]", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  home = [(HMDCameraBulletinNotificationManager *)selfCopy home];
  if ([home bulletinNotificationsSupported])
  {
    source = [(HMDCameraBulletinNotificationManager *)selfCopy source];
    v15 = source;
    if (source)
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __116__HMDCameraBulletinNotificationManager__updateRegistrationsOnPrimaryWithEnabledRegistrations_disabledRegistrations___block_invoke;
      v25[3] = &unk_278683340;
      v25[4] = selfCopy;
      v26 = source;
      v27 = registrationsCopy;
      v28 = disabledRegistrationsCopy;
      [home updateBulletinRegistrationOnPrimaryResidentWithSource:v26 enableRegistrations:v27 disableRegistration:v28 completionHandler:v25];
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = selfCopy;
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
    v17 = selfCopy;
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

void __116__HMDCameraBulletinNotificationManager__updateRegistrationsOnPrimaryWithEnabledRegistrations_disabledRegistrations___block_invoke(uint64_t a1, void *a2)
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
      v12 = "%{public}@Unable to update camera registrations on primary resident: source: %@, [enabled : %@], [disabled : %@], error: %@";
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
    v12 = "%{public}@Updating camera registrations with primary resident was successful, source: %@, [enabled: %@], [disabled: %@]";
    v13 = v7;
    v14 = OS_LOG_TYPE_INFO;
    v15 = 42;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  v19 = *MEMORY[0x277D85DE8];
}

- (void)_handleCurrentDeviceOrAccountUpdatedNotification:(id)notification
{
  v13 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  workQueue = [(HMDCameraBulletinNotificationManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling current device or account updated notification", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  [(HMDCameraBulletinNotificationManager *)selfCopy _requestSynchronizeRegistrations];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handlePrimaryResidentUpdateNotification:(id)notification
{
  v20 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  workQueue = [(HMDCameraBulletinNotificationManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v18 = 138543362;
    v19 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling primary resident update notification", &v18, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  [(HMDCameraBulletinNotificationManager *)selfCopy _requestSynchronizeRegistrations];
  home = [(HMDCameraBulletinNotificationManager *)selfCopy home];
  isCurrentDeviceConfirmedPrimaryResident = [home isCurrentDeviceConfirmedPrimaryResident];

  currentPrimary = [(HMDCameraBulletinNotificationManager *)selfCopy currentPrimary];
  if (isCurrentDeviceConfirmedPrimaryResident)
  {
    if (currentPrimary)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = selfCopy;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v18 = 138543362;
        v19 = v16;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@We are already the primary", &v18, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
    }

    else
    {
      [(HMDCameraBulletinNotificationManager *)selfCopy _handleDeviceBecamePrimary];
    }
  }

  else if (currentPrimary)
  {
    [(HMDCameraBulletinNotificationManager *)selfCopy _handleDeviceBecameNotPrimary];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_synchronizeLocalRegistrationsWithPrimaryResident
{
  v111 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraBulletinNotificationManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Synchronizing local registrations with primary resident", &buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  source = [(HMDCameraBulletinNotificationManager *)selfCopy source];
  if (source)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v107 = 0x3032000000;
    v108 = __Block_byref_object_copy__57771;
    v109 = __Block_byref_object_dispose__57772;
    v110 = [MEMORY[0x277CBEB58] set];
    v94 = 0;
    v95 = &v94;
    v96 = 0x3032000000;
    v97 = __Block_byref_object_copy__57771;
    v98 = __Block_byref_object_dispose__57772;
    v99 = [MEMORY[0x277CBEB58] set];
    v88 = 0;
    v89 = &v88;
    v90 = 0x3032000000;
    v91 = __Block_byref_object_copy__57771;
    v92 = __Block_byref_object_dispose__57772;
    v93 = [MEMORY[0x277CBEB58] set];
    home = [(HMDCameraBulletinNotificationManager *)selfCopy home];
    backingStore = [home backingStore];
    context = [backingStore context];

    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __89__HMDCameraBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke;
    v82[3] = &unk_2786746E0;
    v82[4] = selfCopy;
    v83 = source;
    v12 = context;
    v84 = v12;
    p_buf = &buf;
    v86 = &v94;
    v87 = &v88;
    [v12 unsafeSynchronousBlock:v82];
    v76 = 0;
    v77 = &v76;
    v78 = 0x3032000000;
    v79 = __Block_byref_object_copy__57771;
    v80 = __Block_byref_object_dispose__57772;
    v81 = [MEMORY[0x277CBEB58] set];
    v70 = 0;
    v71 = &v70;
    v72 = 0x3032000000;
    v73 = __Block_byref_object_copy__57771;
    v74 = __Block_byref_object_dispose__57772;
    v75 = [MEMORY[0x277CBEB58] set];
    v64 = 0;
    v65 = &v64;
    v66 = 0x3032000000;
    v67 = __Block_byref_object_copy__57771;
    v68 = __Block_byref_object_dispose__57772;
    v69 = [MEMORY[0x277CBEB58] set];
    managedObjectContext = [v12 managedObjectContext];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __89__HMDCameraBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_5;
    v59[3] = &unk_278674780;
    v59[4] = selfCopy;
    v14 = managedObjectContext;
    v60 = v14;
    v61 = &v76;
    v62 = &v70;
    v63 = &v64;
    [v14 performBlockAndWait:v59];
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = HMFGetLogIdentifier();
      v19 = v77[5];
      v20 = *(*(&buf + 1) + 40);
      *v100 = 138543874;
      v101 = v18;
      v102 = 2112;
      v103 = v19;
      v104 = 2112;
      v105 = v20;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEBUG, "%{public}@enabledLocalSignificantEventRegistrations: %@ remoteSignificantEventRegistrations: %@", v100, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    v21 = objc_autoreleasePoolPush();
    v22 = v16;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = HMFGetLogIdentifier();
      v25 = v71[5];
      v26 = v95[5];
      *v100 = 138543874;
      v101 = v24;
      v102 = 2112;
      v103 = v25;
      v104 = 2112;
      v105 = v26;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_DEBUG, "%{public}@enabledLocalReachabilityRegistrations: %@ remoteReachabilityRegistrations: %@", v100, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    v27 = objc_autoreleasePoolPush();
    v28 = v22;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v30 = HMFGetLogIdentifier();
      v31 = v65[5];
      v32 = v89[5];
      *v100 = 138543874;
      v101 = v30;
      v102 = 2112;
      v103 = v31;
      v104 = 2112;
      v105 = v32;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_DEBUG, "%{public}@enabledLocalAccessModeRegistrations: %@ remoteAccessModeRegistrations: %@", v100, 0x20u);
    }

    objc_autoreleasePoolPop(v27);
    v33 = [MEMORY[0x277CBEB58] set];
    v34 = [MEMORY[0x277CBEB58] set];
    v35 = v77[5];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __89__HMDCameraBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_124;
    v56[3] = &unk_2786747D0;
    v58 = &buf;
    v36 = v33;
    v57 = v36;
    [v35 hmf_enumerateWithAutoreleasePoolUsingBlock:v56];
    [v34 unionSet:*(*(&buf + 1) + 40)];
    v37 = v71[5];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __89__HMDCameraBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_3_128;
    v53[3] = &unk_278674820;
    v55 = &v94;
    v38 = v36;
    v54 = v38;
    [v37 hmf_enumerateWithAutoreleasePoolUsingBlock:v53];
    [v34 unionSet:v95[5]];
    v39 = v65[5];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __89__HMDCameraBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_5_132;
    v50[3] = &unk_278674870;
    v52 = &v88;
    v40 = v38;
    v51 = v40;
    [v39 hmf_enumerateWithAutoreleasePoolUsingBlock:v50];
    [v34 unionSet:v89[5]];
    if ([v40 hmf_isEmpty] && objc_msgSend(v34, "hmf_isEmpty"))
    {
      v41 = objc_autoreleasePoolPush();
      v42 = v28;
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = HMFGetLogIdentifier();
        *v100 = 138543362;
        v101 = v44;
        _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_INFO, "%{public}@No changes detected to sync with primary", v100, 0xCu);
      }

      objc_autoreleasePoolPop(v41);
    }

    else
    {
      [(HMDCameraBulletinNotificationManager *)v28 _updateRegistrationsOnPrimaryWithEnabledRegistrations:v40 disabledRegistrations:v34];
    }

    _Block_object_dispose(&v64, 8);
    _Block_object_dispose(&v70, 8);

    _Block_object_dispose(&v76, 8);
    _Block_object_dispose(&v88, 8);

    _Block_object_dispose(&v94, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v45 = objc_autoreleasePoolPush();
    v46 = selfCopy;
    v47 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v48;
      _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve bulletin notification registration source for current device when synchronizing registrations with primary", &buf, 0xCu);
    }

    objc_autoreleasePoolPop(v45);
  }

  v49 = *MEMORY[0x277D85DE8];
}

void __89__HMDCameraBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) managedObjectContext];
  v6 = [v3 _cameraSignificantEventRegistrationsForSource:v4 context:v5];

  v7 = *(a1 + 32);
  v8 = objc_opt_class();
  v9 = *(a1 + 40);
  v10 = [*(a1 + 48) managedObjectContext];
  v11 = [v8 _cameraReachabilityRegistrationsForSource:v9 context:v10];

  v12 = *(a1 + 32);
  v13 = objc_opt_class();
  v14 = *(a1 + 40);
  v15 = [*(a1 + 48) managedObjectContext];
  v16 = [v13 _cameraAccessModeRegistrationsForSource:v14 context:v15];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __89__HMDCameraBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_2;
  v19[3] = &unk_278674668;
  v19[4] = *(a1 + 56);
  [v6 na_each:v19];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __89__HMDCameraBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_3;
  v18[3] = &unk_278674690;
  v18[4] = *(a1 + 64);
  [v11 na_each:v18];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __89__HMDCameraBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_4;
  v17[3] = &unk_2786746B8;
  v17[4] = *(a1 + 72);
  [v16 na_each:v17];
}

void __89__HMDCameraBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) _mkfLocalCameraSignificantEventRegistrationsWithManagedObjectContext:*(a1 + 40)];
  v3 = [*(a1 + 32) _mkfLocalCameraReachabilityRegistrationsWithManagedObjectContext:*(a1 + 40)];
  v4 = [*(a1 + 32) _mkfLocalCameraAccessModeRegistrationsWithManagedObjectContext:*(a1 + 40)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __89__HMDCameraBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_6;
  v7[3] = &unk_278674708;
  v7[4] = *(a1 + 48);
  [v2 na_each:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __89__HMDCameraBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_7;
  v6[3] = &unk_278674730;
  v6[4] = *(a1 + 56);
  [v3 na_each:v6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __89__HMDCameraBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_8;
  v5[3] = &unk_278674758;
  v5[4] = *(a1 + 64);
  [v4 na_each:v5];
}

void __89__HMDCameraBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_124(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __89__HMDCameraBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_2_125;
  v7[3] = &unk_2786747A8;
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

void __89__HMDCameraBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_3_128(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __89__HMDCameraBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_4_129;
  v7[3] = &unk_2786747F8;
  v5 = v3;
  v8 = v5;
  v6 = [v4 na_firstObjectPassingTest:v7];
  if (v6)
  {
    [*(*(*(a1 + 40) + 8) + 40) removeObject:v6];
  }

  else
  {
    [*(a1 + 32) addObject:v5];
  }
}

void __89__HMDCameraBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_5_132(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __89__HMDCameraBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_6_133;
  v7[3] = &unk_278674848;
  v5 = v3;
  v8 = v5;
  v6 = [v4 na_firstObjectPassingTest:v7];
  if (v6)
  {
    [*(*(*(a1 + 40) + 8) + 40) removeObject:v6];
  }

  else
  {
    [*(a1 + 32) addObject:v5];
  }
}

uint64_t __89__HMDCameraBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_6_133(uint64_t a1, void *a2)
{
  v3 = [a2 accessoryUUID];
  v4 = [*(a1 + 32) accessoryUUID];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t __89__HMDCameraBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_4_129(uint64_t a1, void *a2)
{
  v3 = [a2 accessoryUUID];
  v4 = [*(a1 + 32) accessoryUUID];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t __89__HMDCameraBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_2_125(uint64_t a1, void *a2)
{
  v3 = [a2 cameraIdentifier];
  v4 = [*(a1 + 32) cameraIdentifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

void __89__HMDCameraBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_6(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 enabled])
  {
    v3 = [HMDBulletinNotificationRegistrationUtilities cameraSignificantEventRegistrationFromLocalRegistration:v4];
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }
}

void __89__HMDCameraBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_7(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 enabled])
  {
    v3 = [HMDBulletinNotificationRegistrationUtilities cameraReachabilityRegistrationFromLocalRegistration:v4];
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }
}

void __89__HMDCameraBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_8(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 enabled])
  {
    v3 = [HMDBulletinNotificationRegistrationUtilities cameraAccessModeRegistrationFromLocalRegistration:v4];
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }
}

void __89__HMDCameraBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v5 = [HMDBulletinNotificationRegistrationUtilities cameraSignificantEventRegistrationFromMKFRegistration:a2];
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = [v5 registration];
  [v3 addObject:v4];
}

void __89__HMDCameraBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v5 = [HMDBulletinNotificationRegistrationUtilities cameraReachabilityRegistrationFromMKFRegistration:a2];
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = [v5 registration];
  [v3 addObject:v4];
}

void __89__HMDCameraBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_4(uint64_t a1, uint64_t a2)
{
  v5 = [HMDBulletinNotificationRegistrationUtilities cameraAccessModeRegistrationFromMKFRegistration:a2];
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = [v5 registration];
  [v3 addObject:v4];
}

- (void)_requestSynchronizeRegistrations
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    synchronizeWithPrimaryDebounceTimer = [(HMDCameraBulletinNotificationManager *)selfCopy synchronizeWithPrimaryDebounceTimer];
    [synchronizeWithPrimaryDebounceTimer isRunning];
    v8 = HMFBooleanToString();
    v11 = 138543618;
    v12 = v6;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Requesting synchronize registrations, debounce timer running: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  synchronizeWithPrimaryDebounceTimer2 = [(HMDCameraBulletinNotificationManager *)selfCopy synchronizeWithPrimaryDebounceTimer];
  [synchronizeWithPrimaryDebounceTimer2 resume];

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_recentDoorbellPressIntervalForSignificantEventDate:(id)date
{
  v3 = MEMORY[0x277CBEAA8];
  dateCopy = date;
  v5 = [v3 dateWithTimeInterval:dateCopy sinceDate:-60.0];
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:dateCopy sinceDate:330.0];

  v7 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v5 endDate:v6];

  return v7;
}

- (void)_handleDeviceBecameNotPrimary
{
  v13 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraBulletinNotificationManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v12 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Handling device became non-primary resident", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [(HMDCameraBulletinNotificationManager *)selfCopy setCurrentPrimary:0];
  cameraSignificantEventRegistrations = [(HMDCameraBulletinNotificationManager *)selfCopy cameraSignificantEventRegistrations];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__HMDCameraBulletinNotificationManager__handleDeviceBecameNotPrimary__block_invoke;
  v10[3] = &unk_278674640;
  v10[4] = selfCopy;
  [cameraSignificantEventRegistrations na_each:v10];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleDeviceBecamePrimary
{
  v13 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraBulletinNotificationManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v12 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Handling device became primary resident", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [(HMDCameraBulletinNotificationManager *)selfCopy setCurrentPrimary:1];
  cameraSignificantEventRegistrations = [(HMDCameraBulletinNotificationManager *)selfCopy cameraSignificantEventRegistrations];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__HMDCameraBulletinNotificationManager__handleDeviceBecamePrimary__block_invoke;
  v10[3] = &unk_278674640;
  v10[4] = selfCopy;
  [cameraSignificantEventRegistrations na_each:v10];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleCameraSignificantEventBulletinNotificationRegistration:(id)registration removed:(BOOL)removed
{
  v33 = *MEMORY[0x277D85DE8];
  registrationCopy = registration;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = HMFBooleanToString();
    *buf = 138543874;
    v28 = v10;
    v29 = 2112;
    v30 = registrationCopy;
    v31 = 2112;
    v32 = v11;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Handling Camera Significant Event Bulletin Notification Registration: %@, removed: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  registration = [registrationCopy registration];
  home = [(HMDCameraBulletinNotificationManager *)selfCopy home];
  cameraAccessories = [home cameraAccessories];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __110__HMDCameraBulletinNotificationManager__handleCameraSignificantEventBulletinNotificationRegistration_removed___block_invoke;
  v25[3] = &unk_2786830C8;
  v15 = registration;
  v26 = v15;
  v16 = [cameraAccessories na_firstObjectPassingTest:v25];

  if (v16)
  {
    v17 = [v16 findCharacteristicType:*MEMORY[0x277CCF910] forServiceType:*MEMORY[0x277CD0E38]];
    if (v17)
    {
      if (!removed && ([v15 notificationModes] & 2) != 0)
      {
        if (([v15 notificationModes] & 2) == 0)
        {
          goto LABEL_9;
        }

        doorbellPressTracker = [(HMDCameraBulletinNotificationManager *)selfCopy doorbellPressTracker];
        [doorbellPressTracker startTrackingPressesForDoorbellAccessory:v16 registration:v15];
      }

      else
      {
        doorbellPressTracker = [(HMDCameraBulletinNotificationManager *)selfCopy doorbellPressTracker];
        [doorbellPressTracker stopTrackingPressesForDoorbellAccessory:v16 registration:v15];
      }
    }

LABEL_9:

    goto LABEL_13;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = selfCopy;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = HMFGetLogIdentifier();
    cameraIdentifier = [v15 cameraIdentifier];
    *buf = 138543618;
    v28 = v22;
    v29 = 2112;
    v30 = cameraIdentifier;
    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to find HAP Accessory with UUID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v19);
LABEL_13:

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __110__HMDCameraBulletinNotificationManager__handleCameraSignificantEventBulletinNotificationRegistration_removed___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) cameraIdentifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (void)_notifyDevice:(id)device aboutSignificantEvent:(id)event notificationReasons:(unint64_t)reasons
{
  v32[3] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  eventCopy = event;
  v31[0] = @"HMDBulletinNotificationCameraSignificantEventUUIDMessageKey";
  uniqueIdentifier = [eventCopy uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v32[0] = uUIDString;
  v31[1] = @"HMDBulletinNotificationCameraProfileUUIDMessageKey";
  cameraProfileUUID = [eventCopy cameraProfileUUID];
  uUIDString2 = [cameraProfileUUID UUIDString];
  v32[1] = uUIDString2;
  v31[2] = @"HMDBulletinNotificationCameraSignificantEventModesMessageKey";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:reasons];
  v32[2] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];

  v16 = [HMDRemoteDeviceMessageDestination alloc];
  messageTargetUUID = [(HMDCameraBulletinNotificationManager *)self messageTargetUUID];
  v18 = [(HMDRemoteDeviceMessageDestination *)v16 initWithTarget:messageTargetUUID device:deviceCopy];

  v19 = [[HMDRemoteMessage alloc] initWithName:@"HMDBulletinNotificationCameraSignificantEventMessage" destination:v18 payload:v15 type:3 timeout:1 secure:60.0];
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __96__HMDCameraBulletinNotificationManager__notifyDevice_aboutSignificantEvent_notificationReasons___block_invoke;
  v27 = &unk_278686658;
  selfCopy = self;
  v29 = deviceCopy;
  v30 = eventCopy;
  v20 = eventCopy;
  v21 = deviceCopy;
  [(HMDRemoteMessage *)v19 setResponseHandler:&v24];
  v22 = [(HMDCameraBulletinNotificationManager *)self messageDispatcher:v24];
  [v22 sendMessage:v19];

  v23 = *MEMORY[0x277D85DE8];
}

void __96__HMDCameraBulletinNotificationManager__notifyDevice_aboutSignificantEvent_notificationReasons___block_invoke(uint64_t a1, void *a2, void *a3)
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
      v14 = "%{public}@Failed to notify device: %@ of significant event: %@ error: %@";
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
    v14 = "%{public}@Successfully notified device: %@ of significant event: %@";
    v15 = v10;
    v16 = OS_LOG_TYPE_INFO;
    v17 = 32;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v20 = *MEMORY[0x277D85DE8];
}

- (void)_handleSignificantEvent:(id)event remoteRegistration:(id)registration
{
  v43 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  registrationCopy = registration;
  workQueue = [(HMDCameraBulletinNotificationManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  source = [registrationCopy source];
  device = [source device];

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    uniqueIdentifier = [eventCopy uniqueIdentifier];
    *buf = 138543874;
    v36 = v14;
    v37 = 2114;
    v38 = uniqueIdentifier;
    v39 = 2112;
    v40 = registrationCopy;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Checking if significant event %{public}@ matches registration: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  registration = [registrationCopy registration];
  v17 = [(HMDCameraBulletinNotificationManager *)selfCopy _shouldNotifyForDoorbellPressForSignificantEvent:eventCopy registration:registration];
  v18 = [(HMDCameraBulletinNotificationManager *)selfCopy _shouldNotifyForActivityForSignificantEvent:eventCopy remoteRegistration:registrationCopy];
  if (v17 || v18)
  {
    v19 = 2;
    if (!v17)
    {
      v19 = 0;
    }

    v20 = v19 | v18;
    isCurrentDevice = [device isCurrentDevice];
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
    if (isCurrentDevice)
    {
      if (v25)
      {
        HMFGetLogIdentifier();
        v26 = v34 = v22;
        uniqueIdentifier2 = [eventCopy uniqueIdentifier];
        v28 = NSPrintF();
        *buf = 138543874;
        v36 = v26;
        v37 = 2114;
        v38 = uniqueIdentifier2;
        v39 = 2112;
        v40 = v28;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Notifying current device of significant event: %{public}@ notification reasons: %@", buf, 0x20u);

        v22 = v34;
      }

      objc_autoreleasePoolPop(v22);
      uniqueIdentifier3 = [eventCopy uniqueIdentifier];
      cameraProfileUUID = [eventCopy cameraProfileUUID];
      [(HMDCameraBulletinNotificationManager *)v23 _notifyObserversOfSignificantEventUUID:uniqueIdentifier3 cameraProfileUUID:cameraProfileUUID notificationReasons:v20];
    }

    else
    {
      if (v25)
      {
        v31 = HMFGetLogIdentifier();
        v32 = NSPrintF();
        *buf = 138544130;
        v36 = v31;
        v37 = 2112;
        v38 = eventCopy;
        v39 = 2112;
        v40 = v32;
        v41 = 2112;
        v42 = device;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Sending notification for significant event: %@ notification reasons: %@ to remote device: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v22);
      [(HMDCameraBulletinNotificationManager *)v23 _notifyDevice:device aboutSignificantEvent:eventCopy notificationReasons:v20];
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldNotifyForActivityForSignificantEvent:(id)event remoteRegistration:(id)registration
{
  v36 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  registrationCopy = registration;
  registration = [registrationCopy registration];
  source = [registrationCopy source];
  if ([registration notificationModes])
  {
    if ([(HMDCameraBulletinNotificationManager *)self _filterPassesForCameraSignificantEvent:eventCopy registration:registration])
    {
      home = [(HMDCameraBulletinNotificationManager *)self home];
      userUUID = [source userUUID];
      v12 = [home userWithUUID:userUUID];

      if (v12)
      {
        evaluator = [(HMDCameraBulletinNotificationManager *)self evaluator];
        conditions = [registration conditions];
        v15 = [evaluator conditionsPass:conditions registrationUser:v12];

        if (v15)
        {
          v16 = 1;
LABEL_16:

          goto LABEL_17;
        }

        v22 = objc_autoreleasePoolPush();
        selfCopy = self;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = HMFGetLogIdentifier();
          uniqueIdentifier = [eventCopy uniqueIdentifier];
          v30 = 138543618;
          v31 = v25;
          v32 = 2114;
          v33 = uniqueIdentifier;
          _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Condition(s) did not pass for significant event: %{public}@", &v30, 0x16u);

          goto LABEL_14;
        }
      }

      else
      {
        v22 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = HMFGetLogIdentifier();
          v30 = 138543874;
          v31 = v25;
          v32 = 2112;
          v33 = registration;
          v34 = 2112;
          v35 = source;
          _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unable to evaluate registration: %@, no matching user for source: %@", &v30, 0x20u);
LABEL_14:
        }
      }

      objc_autoreleasePoolPop(v22);
      v16 = 0;
      goto LABEL_16;
    }

    v17 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      uniqueIdentifier2 = [eventCopy uniqueIdentifier];
      v30 = 138543618;
      v31 = v20;
      v32 = 2114;
      v33 = uniqueIdentifier2;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Filter did not pass for significant event: %{public}@", &v30, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
  }

  v16 = 0;
LABEL_17:

  v28 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)_shouldNotifyForDoorbellPressForSignificantEvent:(id)event registration:(id)registration
{
  v32 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  registrationCopy = registration;
  if (([registrationCopy notificationModes] & 2) != 0)
  {
    home = [(HMDCameraBulletinNotificationManager *)self home];
    cameraAccessories = [home cameraAccessories];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __102__HMDCameraBulletinNotificationManager__shouldNotifyForDoorbellPressForSignificantEvent_registration___block_invoke;
    v24[3] = &unk_2786830C8;
    v11 = eventCopy;
    v25 = v11;
    v12 = [cameraAccessories na_firstObjectPassingTest:v24];

    dateOfOccurrence = [v11 dateOfOccurrence];
    v14 = [(HMDCameraBulletinNotificationManager *)self _recentDoorbellPressIntervalForSignificantEventDate:dateOfOccurrence];

    doorbellPressTracker = [(HMDCameraBulletinNotificationManager *)self doorbellPressTracker];
    v8 = [doorbellPressTracker doorbellPressInDateInterval:v14 doorbellAccessory:v12];

    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      HMFBooleanToString();
      v20 = v23 = v12;
      *buf = 138543874;
      v27 = v19;
      v28 = 2112;
      v29 = v11;
      v30 = 2112;
      v31 = v20;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Doorbell press near significant event: %@, %@", buf, 0x20u);

      v12 = v23;
    }

    objc_autoreleasePoolPop(v16);
  }

  else
  {
    v8 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t __102__HMDCameraBulletinNotificationManager__shouldNotifyForDoorbellPressForSignificantEvent_registration___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 cameraProfiles];
  v4 = [v3 na_map:&__block_literal_global_114];

  v5 = [*(a1 + 32) cameraProfileUUID];
  v6 = [v4 containsObject:v5];

  return v6;
}

- (void)_notifyPrimaryResidentOfSignificantEvent:(id)event withCameraProfileUUID:(id)d
{
  v38 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  dCopy = d;
  workQueue = [(HMDCameraBulletinNotificationManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = [[HMDCameraSignificantEventBulletinParams alloc] initWithSignificantEvent:eventCopy cameraProfileUUID:dCopy];
  v31 = 0;
  v10 = [HMDCameraSignificantEventBulletinParamsDictionaryTransformer transformedValue:v9 error:&v31];
  v11 = v31;
  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  v15 = v14;
  if (v10)
  {
    v28 = v11;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v16;
      v36 = 2112;
      v37 = eventCopy;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Notifying primary resident of significant event: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v32 = @"HMDBulletinNotificationSignificantEventParamsKey";
    v33 = v10;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    home = [(HMDCameraBulletinNotificationManager *)selfCopy home];
    primaryResident = [home primaryResident];

    v20 = [HMDRemoteDeviceMessageDestination alloc];
    messageTargetUUID = [(HMDCameraBulletinNotificationManager *)selfCopy messageTargetUUID];
    device = [primaryResident device];
    v23 = [(HMDRemoteDeviceMessageDestination *)v20 initWithTarget:messageTargetUUID device:device];

    v24 = [[HMDRemoteMessage alloc] initWithName:@"HMDBulletinNotificationNotifyPrimaryResidentOfCameraSignificantEventMessage" destination:v23 payload:v17 type:3 timeout:1 secure:60.0];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __103__HMDCameraBulletinNotificationManager__notifyPrimaryResidentOfSignificantEvent_withCameraProfileUUID___block_invoke;
    v29[3] = &unk_278688370;
    v29[4] = selfCopy;
    v30 = eventCopy;
    [(HMDRemoteMessage *)v24 setResponseHandler:v29];
    messageDispatcher = [(HMDCameraBulletinNotificationManager *)selfCopy messageDispatcher];
    [messageDispatcher sendMessage:v24];

    v11 = v28;
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v26;
      v36 = 2112;
      v37 = v11;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Unable to transform significant event payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __103__HMDCameraBulletinNotificationManager__notifyPrimaryResidentOfSignificantEvent_withCameraProfileUUID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
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
      v19 = 138543874;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v5;
      v13 = "%{public}@Failed to notify primary resident of significant event: %@ error: %@";
      v14 = v10;
      v15 = OS_LOG_TYPE_ERROR;
      v16 = 32;
LABEL_6:
      _os_log_impl(&dword_229538000, v14, v15, v13, &v19, v16);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v17 = *(a1 + 40);
    v19 = 138543618;
    v20 = v11;
    v21 = 2112;
    v22 = v17;
    v13 = "%{public}@Successfully notified primary resident of significant event: %@";
    v14 = v10;
    v15 = OS_LOG_TYPE_INFO;
    v16 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)_filterPassesForCameraSignificantEvent:(id)event registration:(id)registration
{
  eventCopy = event;
  registrationCopy = registration;
  if ([eventCopy reason] == 6)
  {
    goto LABEL_7;
  }

  v7 = MEMORY[0x277CBEB98];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(eventCopy, "reason")}];
  v9 = [v7 setWithObject:v8];
  v10 = HMCameraSignificantEventTypesFromReasons();

  if (([registrationCopy significantEventTypes] & v10) == 0)
  {
    v15 = 0;
    goto LABEL_13;
  }

  if ([eventCopy reason] == 2 && objc_msgSend(registrationCopy, "personFamiliarityOptions"))
  {
    faceClassification = [eventCopy faceClassification];
    person = [faceClassification person];
    name = [person name];

    if (name)
    {
      v14 = 4;
    }

    else
    {
      faceClassification2 = [eventCopy faceClassification];

      if (faceClassification2)
      {
        v14 = 2;
      }

      else
      {
        v14 = 1;
      }
    }

    v15 = ([registrationCopy personFamiliarityOptions] & v14) != 0;
  }

  else
  {
LABEL_7:
    v15 = 1;
  }

LABEL_13:

  return v15;
}

- (void)_handleSignificantEvent:(id)event cameraProfileUUID:(id)d
{
  v26 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  dCopy = d;
  workQueue = [(HMDCameraBulletinNotificationManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  home = [(HMDCameraBulletinNotificationManager *)self home];
  isCurrentDeviceConfirmedPrimaryResident = [home isCurrentDeviceConfirmedPrimaryResident];

  if (isCurrentDeviceConfirmedPrimaryResident)
  {
    v11 = [(HMDCameraBulletinNotificationManager *)self _cameraProfileWithUUID:dCopy];
    if (v11)
    {
      uUID = [eventCopy UUID];
      reason = [eventCopy reason];
      dateOfOccurrence = [eventCopy dateOfOccurrence];
      confidenceLevel = [eventCopy confidenceLevel];
      faceClassifications = [eventCopy faceClassifications];
      [(HMDCameraBulletinNotificationManager *)self _handleSignificantEventWithUUID:uUID reason:reason dateOfOccurrence:dateOfOccurrence confidenceLevel:confidenceLevel faceClassifications:faceClassifications cameraProfile:v11];
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v22 = 138543618;
        v23 = v20;
        v24 = 2112;
        v25 = dCopy;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Could not find camera profile for UUID: %@", &v22, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
    }
  }

  else
  {
    [(HMDCameraBulletinNotificationManager *)self _notifyPrimaryResidentOfSignificantEvent:eventCopy withCameraProfileUUID:dCopy];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_handleSignificantEventWithUUID:(id)d reason:(unint64_t)reason dateOfOccurrence:(id)occurrence confidenceLevel:(unint64_t)level faceClassifications:(id)classifications cameraProfile:(id)profile
{
  v56 = *MEMORY[0x277D85DE8];
  dCopy = d;
  occurrenceCopy = occurrence;
  classificationsCopy = classifications;
  profileCopy = profile;
  workQueue = [(HMDCameraBulletinNotificationManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v19 = objc_autoreleasePoolPush();
  selfCopy = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138544898;
    v43 = v22;
    v44 = 2112;
    v45 = dCopy;
    v46 = 2048;
    reasonCopy = reason;
    v48 = 2112;
    v49 = occurrenceCopy;
    v50 = 2048;
    levelCopy = level;
    v52 = 2112;
    v53 = classificationsCopy;
    v54 = 2112;
    v55 = profileCopy;
    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Handling significant event: [UUID: %@, Reason: %lu, DateOfOccurrence: %@, ConfidenceLevel: %lu, FaceClassifications: %@] from camera: %@", buf, 0x48u);
  }

  objc_autoreleasePoolPop(v19);
  home = [(HMDCameraBulletinNotificationManager *)selfCopy home];
  hapAccessory = [profileCopy hapAccessory];
  uuid = [hapAccessory uuid];

  v26 = [(HMDCameraBulletinNotificationManager *)selfCopy _cameraSignificantEventBulletinNotificationRegistrationsForCameraIdentifier:uuid];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __146__HMDCameraBulletinNotificationManager__handleSignificantEventWithUUID_reason_dateOfOccurrence_confidenceLevel_faceClassifications_cameraProfile___block_invoke;
  v33[3] = &unk_2786745F8;
  v34 = classificationsCopy;
  v35 = home;
  v36 = selfCopy;
  v37 = dCopy;
  reasonCopy2 = reason;
  levelCopy2 = level;
  v38 = occurrenceCopy;
  v39 = profileCopy;
  v27 = profileCopy;
  v28 = occurrenceCopy;
  v29 = dCopy;
  v30 = home;
  v31 = classificationsCopy;
  [v26 na_each:v33];

  v32 = *MEMORY[0x277D85DE8];
}

void __146__HMDCameraBulletinNotificationManager__handleSignificantEventWithUUID_reason_dateOfOccurrence_confidenceLevel_faceClassifications_cameraProfile___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  if (*(a1 + 80) == 2 && [*(a1 + 32) count])
  {
    v3 = *(a1 + 40);
    v4 = [v16 source];
    v5 = [v4 userUUID];
    v6 = [v3 userWithUUID:v5];

    v7 = [*(a1 + 48) faceClassificationResolver];
    v8 = [v7 faceClassificationForSignificantEventFaceClassifications:*(a1 + 32) user:v6];
  }

  else
  {
    v8 = 0;
  }

  v9 = objc_alloc(MEMORY[0x277CD1930]);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v13 = *(a1 + 80);
  v12 = *(a1 + 88);
  v14 = [*(a1 + 72) uniqueIdentifier];
  v15 = [v9 initWithUniqueIdentifier:v10 reason:v13 dateOfOccurrence:v11 confidenceLevel:v12 cameraProfileUUID:v14 faceClassification:v8];

  [*(a1 + 48) _handleSignificantEvent:v15 remoteRegistration:v16];
}

- (id)_cameraAccessModeBulletinNotificationRegistrationsForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__57771;
  v18 = __Block_byref_object_dispose__57772;
  v19 = MEMORY[0x277CBEBF8];
  home = [(HMDCameraBulletinNotificationManager *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __103__HMDCameraBulletinNotificationManager__cameraAccessModeBulletinNotificationRegistrationsForAccessory___block_invoke;
  v11[3] = &unk_27868A688;
  v8 = accessoryCopy;
  v12 = v8;
  v13 = &v14;
  [context unsafeSynchronousBlock:v11];
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

void __103__HMDCameraBulletinNotificationManager__cameraAccessModeBulletinNotificationRegistrationsForAccessory___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) uuid];
  v8 = [HMCContext findAccessoryWithModelID:v2];

  v3 = [v8 cameraAccessModeBulletinRegistrations];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 na_map:&__block_literal_global_102_57822];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

- (id)_cameraReachabilityBulletinNotificationRegistrationsForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__57771;
  v18 = __Block_byref_object_dispose__57772;
  v19 = MEMORY[0x277CBEBF8];
  home = [(HMDCameraBulletinNotificationManager *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __105__HMDCameraBulletinNotificationManager__cameraReachabilityBulletinNotificationRegistrationsForAccessory___block_invoke;
  v11[3] = &unk_27868A688;
  v8 = accessoryCopy;
  v12 = v8;
  v13 = &v14;
  [context unsafeSynchronousBlock:v11];
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

void __105__HMDCameraBulletinNotificationManager__cameraReachabilityBulletinNotificationRegistrationsForAccessory___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) uuid];
  v8 = [HMCContext findAccessoryWithModelID:v2];

  v3 = [v8 cameraReachabilityBulletinRegistrations];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 na_map:&__block_literal_global_100];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

- (id)_cameraSignificantEventBulletinNotificationRegistrationsForCameraIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__57771;
  v18 = __Block_byref_object_dispose__57772;
  v19 = MEMORY[0x277CBEBF8];
  home = [(HMDCameraBulletinNotificationManager *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __116__HMDCameraBulletinNotificationManager__cameraSignificantEventBulletinNotificationRegistrationsForCameraIdentifier___block_invoke;
  v11[3] = &unk_27868A688;
  v8 = identifierCopy;
  v12 = v8;
  v13 = &v14;
  [context unsafeSynchronousBlock:v11];
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

void __116__HMDCameraBulletinNotificationManager__cameraSignificantEventBulletinNotificationRegistrationsForCameraIdentifier___block_invoke(uint64_t a1)
{
  v7 = [HMCContext findAccessoryWithModelID:*(a1 + 32)];
  v2 = [v7 cameraSignificantEventBulletinRegistrations];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 na_map:&__block_literal_global_98];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

- (void)handleRemovedCameraAccessory:(id)accessory
{
  v24 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v21 = v8;
    v22 = 2112;
    v23 = accessoryCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling removed camera: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  home = [(HMDCameraBulletinNotificationManager *)selfCopy home];
  backingStore = [home backingStore];
  context = [backingStore context];

  managedObjectContext = [context managedObjectContext];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__HMDCameraBulletinNotificationManager_handleRemovedCameraAccessory___block_invoke;
  v16[3] = &unk_27868A010;
  v17 = accessoryCopy;
  v18 = managedObjectContext;
  v19 = selfCopy;
  v13 = managedObjectContext;
  v14 = accessoryCopy;
  [v13 performBlock:v16];

  v15 = *MEMORY[0x277D85DE8];
}

void __69__HMDCameraBulletinNotificationManager_handleRemovedCameraAccessory___block_invoke(id *a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] uuid];
  v3 = [MKFLocalBulletinCameraSignificantEventRegistration fetchCameraSignificantEventRegistrationForAccessoryUUID:v2 managedObjectContext:a1[5]];

  if (v3)
  {
    [a1[5] deleteObject:v3];
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    v5 = a1[6];
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = a1[4];
      *buf = 138543618;
      v34 = v7;
      v35 = 2112;
      v36 = v8;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Unable to find local significant event registration to match removed camera: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v9 = [a1[4] uuid];
  v10 = [MKFLocalBulletinCameraAccessModeRegistration fetchCameraAccessModeRegistrationForAccessoryUUID:v9 managedObjectContext:a1[5]];

  if (v10)
  {
    [a1[5] deleteObject:v10];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = a1[6];
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = a1[4];
      *buf = 138543618;
      v34 = v14;
      v35 = 2112;
      v36 = v15;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unable to find local access mode registration to match removed camera: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v16 = [a1[4] uuid];
  v17 = [MKFLocalBulletinCameraReachabilityRegistration fetchCameraReachabilityRegistrationForAccessoryUUID:v16 managedObjectContext:a1[5]];

  if (v17)
  {
    [a1[5] deleteObject:v17];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = a1[6];
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = a1[4];
      *buf = 138543618;
      v34 = v21;
      v35 = 2112;
      v36 = v22;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Unable to find local reachability registration to match removed camera: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
  }

  v23 = a1[5];
  v32 = 0;
  [v23 save:&v32];
  v24 = v32;
  v25 = objc_autoreleasePoolPush();
  v26 = a1[6];
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = HMFGetLogIdentifier();
    v31 = a1[4];
    v29 = HMFBooleanToString();
    *buf = 138544898;
    v34 = v28;
    v35 = 2112;
    v36 = v3;
    v37 = 2112;
    v38 = v10;
    v39 = 2112;
    v40 = v17;
    v41 = 2112;
    v42 = v31;
    v43 = 2112;
    v44 = v29;
    v45 = 2112;
    v46 = v24;
    _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Removing local registrations: %@, %@, %@ for removed camera: %@ was successful: %@ error: %@", buf, 0x48u);
  }

  objc_autoreleasePoolPop(v25);
  [a1[5] reset];

  v30 = *MEMORY[0x277D85DE8];
}

- (void)removeCameraSignificantEventNotificationObserver:(id)observer cameraIdentifier:(id)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  identifierCopy = identifier;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v15 = 138543874;
    v16 = v11;
    v17 = 2112;
    v18 = observerCopy;
    v19 = 2112;
    v20 = identifierCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Removing camera significant event notification observer: %@ for camera identifier: %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  os_unfair_lock_lock_with_options();
  observersByCameraIdentifier = [(HMDCameraBulletinNotificationManager *)selfCopy observersByCameraIdentifier];
  v13 = [observersByCameraIdentifier objectForKeyedSubscript:identifierCopy];

  [v13 removeObject:observerCopy];
  os_unfair_lock_unlock(&selfCopy->_lock);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)addCameraSignificantEventNotificationObserver:(id)observer cameraIdentifier:(id)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  identifierCopy = identifier;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v16 = 138543874;
    v17 = v11;
    v18 = 2112;
    v19 = observerCopy;
    v20 = 2112;
    v21 = identifierCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Adding camera significant event notification observer: %@ for camera identifier: %@", &v16, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  os_unfair_lock_lock_with_options();
  observersByCameraIdentifier = [(HMDCameraBulletinNotificationManager *)selfCopy observersByCameraIdentifier];
  weakObjectsHashTable = [observersByCameraIdentifier objectForKeyedSubscript:identifierCopy];

  if (!weakObjectsHashTable)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observersByCameraIdentifier2 = [(HMDCameraBulletinNotificationManager *)selfCopy observersByCameraIdentifier];
    [observersByCameraIdentifier2 setObject:weakObjectsHashTable forKeyedSubscript:identifierCopy];
  }

  [weakObjectsHashTable addObject:observerCopy];

  os_unfair_lock_unlock(&selfCopy->_lock);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleSignificantEvent:(id)event cameraProfileUUID:(id)d
{
  eventCopy = event;
  dCopy = d;
  workQueue = [(HMDCameraBulletinNotificationManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__HMDCameraBulletinNotificationManager_handleSignificantEvent_cameraProfileUUID___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = eventCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = eventCopy;
  dispatch_async(workQueue, block);
}

- (id)devicesToNotifyForAccessModeChangeForAccessory:(id)accessory
{
  v4 = [(HMDCameraBulletinNotificationManager *)self _cameraAccessModeBulletinNotificationRegistrationsForAccessory:accessory];
  v5 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v4, "count")}];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __87__HMDCameraBulletinNotificationManager_devicesToNotifyForAccessModeChangeForAccessory___block_invoke;
  v12 = &unk_2786745D0;
  selfCopy = self;
  v14 = v5;
  v6 = v5;
  [v4 na_each:&v9];
  v7 = [v6 copy];

  return v7;
}

void __87__HMDCameraBulletinNotificationManager_devicesToNotifyForAccessModeChangeForAccessory___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 registration];
  v6 = [v4 source];

  v8 = [v3 _deviceToNotifyForRegistration:v5 source:v6];

  v7 = v8;
  if (v8)
  {
    [*(a1 + 40) addObject:v8];
    v7 = v8;
  }
}

- (id)devicesToNotifyForCameraReachabilityForAccessory:(id)accessory
{
  v4 = [(HMDCameraBulletinNotificationManager *)self _cameraReachabilityBulletinNotificationRegistrationsForAccessory:accessory];
  v5 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v4, "count")}];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __89__HMDCameraBulletinNotificationManager_devicesToNotifyForCameraReachabilityForAccessory___block_invoke;
  v12 = &unk_2786745A8;
  selfCopy = self;
  v14 = v5;
  v6 = v5;
  [v4 na_each:&v9];
  v7 = [v6 copy];

  return v7;
}

void __89__HMDCameraBulletinNotificationManager_devicesToNotifyForCameraReachabilityForAccessory___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 registration];
  v6 = [v4 source];

  v9 = [v3 _deviceToNotifyForRegistration:v5 source:v6];

  v7 = v9;
  if (v9)
  {
    v8 = [v9 isCurrentDevice];
    v7 = v9;
    if ((v8 & 1) == 0)
    {
      [*(a1 + 40) addObject:v9];
      v7 = v9;
    }
  }
}

- (id)_deviceToNotifyForRegistration:(id)registration source:(id)source
{
  v40 = *MEMORY[0x277D85DE8];
  registrationCopy = registration;
  sourceCopy = source;
  home = [(HMDCameraBulletinNotificationManager *)self home];
  userUUID = [sourceCopy userUUID];
  v10 = [home userWithUUID:userUUID];

  if (v10)
  {
    evaluator = [(HMDCameraBulletinNotificationManager *)self evaluator];
    conditions = [registrationCopy conditions];
    v13 = [evaluator conditionsPass:conditions registrationUser:v10];

    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = HMFBooleanToString();
      v32 = 138544130;
      v33 = v17;
      v34 = 2112;
      v35 = v18;
      v36 = 2112;
      v37 = registrationCopy;
      v38 = 2112;
      v39 = sourceCopy;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Condition(s) passed: %@ for registration: %@ from source: %@", &v32, 0x2Au);
    }

    objc_autoreleasePoolPop(v14);
    device = [sourceCopy device];
    v20 = device;
    if (v13 && ([device isCurrentDevice] & 1) == 0)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = selfCopy;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = HMFGetLogIdentifier();
        v32 = 138544130;
        v33 = v29;
        v34 = 2112;
        v35 = v20;
        v36 = 2112;
        v37 = sourceCopy;
        v38 = 2112;
        v39 = registrationCopy;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Resolved remote device: %@ to notify from source %@ for registration %@", &v32, 0x2Au);
      }

      objc_autoreleasePoolPop(v26);
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v32 = 138543874;
      v33 = v25;
      v34 = 2112;
      v35 = registrationCopy;
      v36 = 2112;
      v37 = sourceCopy;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unable to evaluate registration: %@, no matching user for source: %@", &v32, 0x20u);
    }

    objc_autoreleasePoolPop(v22);
    v21 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)updateNotificationRegistrationsWithSettings:(id)settings accessory:(id)accessory doorbellPressNotificationEnabled:(BOOL)enabled completion:(id)completion
{
  enabledCopy = enabled;
  v100 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  accessoryCopy = accessory;
  completionCopy = completion;
  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    shortDescription = [accessoryCopy shortDescription];
    v17 = HMFBooleanToString();
    *buf = 138544130;
    v93 = v15;
    v94 = 2112;
    v95 = shortDescription;
    v96 = 2112;
    v97 = settingsCopy;
    v98 = 2112;
    v99 = v17;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Updating notification registrations for accessory: %@, settings: %@, doorbellPressNotificationEnabled: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v12);
  home = [(HMDCameraBulletinNotificationManager *)selfCopy home];
  home2 = [accessoryCopy home];
  uuid = [home2 uuid];
  uuid2 = [home uuid];
  v22 = [uuid isEqual:uuid2];

  if ((v22 & 1) == 0)
  {
    _HMFPreconditionFailure();
  }

  v78 = completionCopy;
  v79 = home;
  if (enabledCopy)
  {
    v23 = 2;
  }

  else
  {
    v23 = 0;
  }

  isSmartBulletinBoardNotificationEnabled = [(HMDCameraAccessModeBulletinNotificationRegistration *)settingsCopy isSmartBulletinBoardNotificationEnabled];
  smartBulletinBoardNotificationCondition = [(HMDCameraAccessModeBulletinNotificationRegistration *)settingsCopy smartBulletinBoardNotificationCondition];
  [(HMDCameraBulletinNotificationManager *)selfCopy conditionsFromPredicate:smartBulletinBoardNotificationCondition];
  v26 = v72 = enabledCopy;
  v75 = [MEMORY[0x277CD1D18] bitwiseAndValueWithKeyPath:*MEMORY[0x277CCF598] inPredicate:smartBulletinBoardNotificationCondition validValues:31];
  integerValue = [v75 integerValue];
  v77 = smartBulletinBoardNotificationCondition;
  v74 = [MEMORY[0x277CD1D18] bitwiseAndValueWithKeyPath:*MEMORY[0x277CCF5A0] inPredicate:smartBulletinBoardNotificationCondition validValues:7];
  integerValue2 = [v74 integerValue];
  v29 = [HMDCameraSignificantEventBulletinNotificationRegistration alloc];
  v30 = accessoryCopy;
  uuid3 = [accessoryCopy uuid];
  v76 = v26;
  v32 = [(HMDCameraSignificantEventBulletinNotificationRegistration *)v29 initWithCameraIdentifier:uuid3 notificationModes:v23 | isSmartBulletinBoardNotificationEnabled significantEventTypes:integerValue personFamiliarityOptions:integerValue2 conditions:v26];

  v33 = [(HMDCameraAccessModeBulletinNotificationRegistration *)settingsCopy isSmartBulletinBoardNotificationEnabled]| v72;
  v34 = objc_autoreleasePoolPush();
  v35 = selfCopy;
  v36 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    v37 = HMFGetLogIdentifier();
    v38 = HMFBooleanToString();
    *buf = 138543874;
    v93 = v37;
    v94 = 2112;
    v95 = v38;
    v96 = 2112;
    v97 = v32;
    _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@Setting significant event registration enabled to %@ for %@", buf, 0x20u);
  }

  v71 = v33;
  v73 = v32;

  objc_autoreleasePoolPop(v34);
  v39 = [HMDCameraReachabilityBulletinNotificationRegistration alloc];
  v40 = v30;
  uuid4 = [v30 uuid];
  v42 = [MEMORY[0x277CBEB98] set];
  v43 = [(HMDCameraReachabilityBulletinNotificationRegistration *)v39 initWithAccessoryUUID:uuid4 conditions:v42];

  isReachabilityEventNotificationEnabled = [(HMDCameraAccessModeBulletinNotificationRegistration *)settingsCopy isReachabilityEventNotificationEnabled];
  v45 = objc_autoreleasePoolPush();
  v46 = v35;
  v47 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
  {
    v48 = HMFGetLogIdentifier();
    v49 = HMFBooleanToString();
    *buf = 138543874;
    v93 = v48;
    v94 = 2112;
    v95 = v49;
    v96 = 2112;
    v97 = v43;
    _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_INFO, "%{public}@Setting reachability registration enabled to %@ for %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v45);
  v50 = [HMDCameraAccessModeBulletinNotificationRegistration alloc];
  uuid5 = [v30 uuid];
  v52 = [MEMORY[0x277CBEB98] set];
  v53 = [(HMDCameraAccessModeBulletinNotificationRegistration *)v50 initWithAccessoryUUID:uuid5 conditions:v52];

  isAccessModeChangeNotificationEnabled = [(HMDCameraAccessModeBulletinNotificationRegistration *)settingsCopy isAccessModeChangeNotificationEnabled];
  v55 = objc_autoreleasePoolPush();
  v56 = v46;
  v57 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
  {
    v58 = HMFGetLogIdentifier();
    HMFBooleanToString();
    v60 = v59 = isReachabilityEventNotificationEnabled;
    *buf = 138543874;
    v93 = v58;
    v94 = 2112;
    v95 = v60;
    v96 = 2112;
    v97 = v53;
    _os_log_impl(&dword_229538000, v57, OS_LOG_TYPE_INFO, "%{public}@Setting access mode registration enabled to %@ for %@", buf, 0x20u);

    isReachabilityEventNotificationEnabled = v59;
  }

  objc_autoreleasePoolPop(v55);
  backingStore = [v79 backingStore];
  context = [backingStore context];

  managedObjectContext = [context managedObjectContext];
  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = __138__HMDCameraBulletinNotificationManager_updateNotificationRegistrationsWithSettings_accessory_doorbellPressNotificationEnabled_completion___block_invoke;
  v81[3] = &unk_278674580;
  v82 = v40;
  v83 = managedObjectContext;
  v84 = v56;
  v85 = v73;
  v89 = v71;
  v90 = isReachabilityEventNotificationEnabled;
  v86 = v43;
  v87 = v53;
  v91 = isAccessModeChangeNotificationEnabled;
  v88 = v78;
  v64 = v78;
  v65 = v53;
  v66 = v43;
  v67 = v73;
  v68 = managedObjectContext;
  v69 = v40;
  [v68 performBlock:v81];

  v70 = *MEMORY[0x277D85DE8];
}

void __138__HMDCameraBulletinNotificationManager_updateNotificationRegistrationsWithSettings_accessory_doorbellPressNotificationEnabled_completion___block_invoke(uint64_t a1)
{
  v59 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [*(a1 + 32) uuid];
  v5 = [MKFLocalBulletinCameraSignificantEventRegistration fetchCameraSignificantEventRegistrationForAccessoryUUID:v4 managedObjectContext:*(a1 + 40)];

  v6 = [*(a1 + 32) uuid];
  v7 = [MKFLocalBulletinCameraReachabilityRegistration fetchCameraReachabilityRegistrationForAccessoryUUID:v6 managedObjectContext:*(a1 + 40)];

  v8 = [*(a1 + 32) uuid];
  v9 = [MKFLocalBulletinCameraAccessModeRegistration fetchCameraAccessModeRegistrationForAccessoryUUID:v8 managedObjectContext:*(a1 + 40)];

  v46 = v9;
  if (v5 || v7 || v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 48);
    v16 = HMFGetOSLogHandle();
    v12 = v16;
    if (v5 && v7 && v9)
    {
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        goto LABEL_14;
      }

      v17 = HMFGetLogIdentifier();
      [*(a1 + 32) uuid];
      v19 = v18 = v3;
      *buf = 138543618;
      v50 = v17;
      v51 = 2112;
      v52 = v19;
      v20 = "%{public}@Updating existing local registrations for camera: %@";
      v21 = v12;
      v22 = OS_LOG_TYPE_INFO;
      v23 = 22;
    }

    else
    {
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_14;
      }

      v17 = HMFGetLogIdentifier();
      [*(a1 + 32) uuid];
      v19 = v18 = v3;
      *buf = 138544386;
      v50 = v17;
      v51 = 2112;
      v52 = v19;
      v53 = 2112;
      v54 = v5;
      v55 = 2112;
      v56 = v7;
      v57 = 2112;
      v58 = v46;
      v20 = "%{public}@updateNotificationRegistrationWithSettings detected inconsistent registrations for camera: %@, significantEvent: %@, reachability: %@, accessMode: %@";
      v21 = v12;
      v22 = OS_LOG_TYPE_FAULT;
      v23 = 52;
    }

    _os_log_impl(&dword_229538000, v21, v22, v20, buf, v23);

    v3 = v18;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 48);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v14 = v13 = v3;
      v15 = [*(a1 + 32) uuid];
      *buf = 138543618;
      v50 = v14;
      v51 = 2112;
      v52 = v15;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Creating initial local registrations for camera: %@", buf, 0x16u);

      v3 = v13;
    }
  }

LABEL_14:

  objc_autoreleasePoolPop(v10);
  if ([*(a1 + 48) _updateLocalStoreWithCameraSignificantEventBulletinRegistration:*(a1 + 56) existingMKFLocalRegistration:v5 enabled:*(a1 + 88) moc:*(a1 + 40)])
  {
    if (*(a1 + 88))
    {
      v24 = v2;
    }

    else
    {
      v24 = v3;
    }

    [v24 addObject:*(a1 + 56)];
  }

  v25 = v46;
  if ([*(a1 + 48) _updateLocalStoreWithCameraReachabilityBulletinRegistration:*(a1 + 64) existingMKFLocalRegistration:v7 enabled:*(a1 + 89) moc:*(a1 + 40)])
  {
    if (*(a1 + 89))
    {
      v26 = v2;
    }

    else
    {
      v26 = v3;
    }

    [v26 addObject:*(a1 + 64)];
  }

  if ([*(a1 + 48) _updateLocalStoreWithCameraAccessModeBulletinRegistration:*(a1 + 72) existingMKFLocalRegistration:v46 enabled:*(a1 + 90) moc:*(a1 + 40)])
  {
    if (*(a1 + 90))
    {
      v27 = v2;
    }

    else
    {
      v27 = v3;
    }

    [v27 addObject:*(a1 + 72)];
  }

  if ([v2 hmf_isEmpty] && objc_msgSend(v3, "hmf_isEmpty"))
  {
    v28 = objc_autoreleasePoolPush();
    v29 = *(a1 + 48);
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543362;
      v50 = v31;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Skipping save and not messaging primary because notification registration update resulted in no changes", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v28);
    v32 = *(a1 + 80);
    if (v32)
    {
      (*(v32 + 16))(v32, 0);
    }
  }

  else
  {
    v33 = v3;
    v34 = *(a1 + 40);
    v48 = 0;
    v35 = [v34 save:&v48];
    v36 = v48;
    [*(a1 + 40) reset];
    v37 = objc_autoreleasePoolPush();
    v38 = *(a1 + 48);
    v39 = HMFGetOSLogHandle();
    v40 = v39;
    if (v35)
    {
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v41 = HMFGetLogIdentifier();
        *buf = 138543874;
        v50 = v41;
        v51 = 2112;
        v52 = v2;
        v53 = 2112;
        v54 = v33;
        _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, "%{public}@Successfully updated local enabled registrations: %@, disabled registrations: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v37);
      v42 = [*(a1 + 48) workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __138__HMDCameraBulletinNotificationManager_updateNotificationRegistrationsWithSettings_accessory_doorbellPressNotificationEnabled_completion___block_invoke_76;
      block[3] = &unk_27868A728;
      block[4] = *(a1 + 48);
      dispatch_async(v42, block);
    }

    else
    {
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v43 = HMFGetLogIdentifier();
        *buf = 138544130;
        v50 = v43;
        v51 = 2112;
        v52 = v2;
        v53 = 2112;
        v54 = v33;
        v55 = 2112;
        v56 = v36;
        _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@Failed to update local enabled registrations: %@, disabled registrations: %@ due to error: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v37);
    }

    v44 = *(a1 + 80);
    v3 = v33;
    if (v44)
    {
      (*(v44 + 16))(v44, v36);
    }

    v25 = v46;
  }

  v45 = *MEMORY[0x277D85DE8];
}

- (id)cameraUserNotificationSettingsForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  home = [(HMDCameraBulletinNotificationManager *)self home];
  home2 = [accessoryCopy home];
  uuid = [home2 uuid];
  uuid2 = [home uuid];
  v9 = [uuid isEqual:uuid2];

  if ((v9 & 1) == 0)
  {
    v17 = _HMFPreconditionFailure();
    _Block_object_dispose(&v30, 8);
    _Block_object_dispose(&v34, 8);
    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(&v42, 8);
    _Block_object_dispose(&v48, 8);
    _Unwind_Resume(v17);
  }

  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__57771;
  v46 = __Block_byref_object_dispose__57772;
  v47 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  backingStore = [home backingStore];
  context = [backingStore context];

  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __83__HMDCameraBulletinNotificationManager_cameraUserNotificationSettingsForAccessory___block_invoke;
  v21 = &unk_278674558;
  v12 = context;
  v22 = v12;
  v13 = accessoryCopy;
  v25 = &v48;
  v26 = &v42;
  v27 = &v38;
  v28 = &v34;
  v29 = &v30;
  v23 = v13;
  selfCopy = self;
  [v12 unsafeSynchronousBlock:&v18];
  if (v31[3])
  {
    v14 = objc_alloc_init(MEMORY[0x277CD1C50]);
    [v14 setSmartBulletinBoardNotificationEnabled:{*(v49 + 24), v18, v19, v20, v21, v22}];
    [v14 setSmartBulletinBoardNotificationCondition:v43[5]];
    [v14 setReachabilityEventNotificationEnabled:*(v39 + 24)];
    [v14 setAccessModeChangeNotificationEnabled:*(v35 + 24)];
    v15 = [v14 copy];
  }

  else
  {
    v15 = 0;
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);

  _Block_object_dispose(&v48, 8);

  return v15;
}

void __83__HMDCameraBulletinNotificationManager_cameraUserNotificationSettingsForAccessory___block_invoke(uint64_t a1)
{
  v42[3] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [*(a1 + 40) uuid];
  v4 = [MKFLocalBulletinCameraSignificantEventRegistration fetchCameraSignificantEventRegistrationForAccessoryUUID:v3 managedObjectContext:v2];

  v5 = [*(a1 + 40) uuid];
  v6 = [MKFLocalBulletinCameraReachabilityRegistration fetchCameraReachabilityRegistrationForAccessoryUUID:v5 managedObjectContext:v2];

  v7 = [*(a1 + 40) uuid];
  v8 = [MKFLocalBulletinCameraAccessModeRegistration fetchCameraAccessModeRegistrationForAccessoryUUID:v7 managedObjectContext:v2];

  if (!v4 || !v6 || !v8)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 48);
    v12 = HMFGetOSLogHandle();
    v13 = v12;
    if (v4 || v6 || v8)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [*(a1 + 40) uuid];
        *buf = 138544386;
        v33 = v14;
        v34 = 2112;
        v35 = v15;
        v36 = 2112;
        v37 = v4;
        v38 = 2112;
        v39 = v6;
        v40 = 2112;
        v41 = v8;
        v16 = "%{public}@cameraUserNotificationSettingsForAccessory detected inconsistent registrations for camera: %@, significantEvent: %@, reachability: %@, accessMode: %@";
        v17 = v13;
        v18 = OS_LOG_TYPE_FAULT;
        v19 = 52;
        goto LABEL_13;
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [*(a1 + 40) uuid];
      *buf = 138543618;
      v33 = v14;
      v34 = 2112;
      v35 = v15;
      v16 = "%{public}@Did not find any local registrations for camera: %@";
      v17 = v13;
      v18 = OS_LOG_TYPE_INFO;
      v19 = 22;
LABEL_13:
      _os_log_impl(&dword_229538000, v17, v18, v16, buf, v19);
    }

    objc_autoreleasePoolPop(v10);
    goto LABEL_19;
  }

  if ([v4 enabled])
  {
    v9 = [v4 notificationModes] & 1;
  }

  else
  {
    v9 = 0;
  }

  *(*(*(a1 + 56) + 8) + 24) = v9;
  v20 = [HMDBulletinNotificationRegistrationUtilities cameraSignificantEventRegistrationFromLocalRegistration:v4];
  v21 = [v20 predicate];
  v22 = *(*(a1 + 64) + 8);
  v23 = *(v22 + 40);
  *(v22 + 40) = v21;

  *(*(*(a1 + 72) + 8) + 24) = [v6 enabled];
  *(*(*(a1 + 80) + 8) + 24) = [v8 enabled];
  *(*(*(a1 + 88) + 8) + 24) = 1;
  v24 = objc_autoreleasePoolPush();
  v25 = *(a1 + 48);
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v27 = HMFGetLogIdentifier();
    v42[0] = v4;
    v42[1] = v6;
    v42[2] = v8;
    [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:3];
    v28 = v31 = v24;
    v29 = [*(a1 + 40) uuid];
    *buf = 138543874;
    v33 = v27;
    v34 = 2112;
    v35 = v28;
    v36 = 2112;
    v37 = v29;
    _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEBUG, "%{public}@Found local registrations: %@ for camera: %@", buf, 0x20u);

    v24 = v31;
  }

  objc_autoreleasePoolPop(v24);
LABEL_19:

  v30 = *MEMORY[0x277D85DE8];
}

- (void)configureWithDeviceIsResidentCapable:(BOOL)capable
{
  capableCopy = capable;
  v57 = *MEMORY[0x277D85DE8];
  if (self)
  {
    home = [(HMDCameraBulletinNotificationManager *)self home];
    if ([home cameraNotificationSettingsMigrationFileExistsOnDisk])
    {
      loadMigrationCameraNotificationSettingsFromDisk = [home loadMigrationCameraNotificationSettingsFromDisk];
      v7 = objc_autoreleasePoolPush();
      if (loadMigrationCameraNotificationSettingsFromDisk)
      {
        v8 = loadMigrationCameraNotificationSettingsFromDisk;
        v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v8, "count")}];
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v52 = __74__HMDCameraBulletinNotificationManager_validateRegistrationsForMigration___block_invoke;
        v53 = &unk_278674938;
        selfCopy = self;
        selfCopy2 = v8;
        v55 = selfCopy2;
        v11 = v9;
        v56 = v11;
        [(HMDCameraBulletinNotificationManager *)selfCopy2 hmf_enumerateWithAutoreleasePoolUsingBlock:&buf];
        if ([v11 count])
        {
          home2 = [(HMDCameraBulletinNotificationManager *)self home];
          backingStore = [home2 backingStore];
          context = [backingStore context];

          managedObjectContext = [context managedObjectContext];
          v46[0] = MEMORY[0x277D85DD0];
          v46[1] = 3221225472;
          v46[2] = __74__HMDCameraBulletinNotificationManager_validateRegistrationsForMigration___block_invoke_152;
          v46[3] = &unk_27868A010;
          v46[4] = self;
          v47 = v11;
          v48 = managedObjectContext;
          v16 = managedObjectContext;
          [v16 performBlockAndWait:v46];
        }
      }

      else
      {
        selfCopy2 = self;
        v11 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v17 = HMFGetLogIdentifier();
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v17;
          _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unable to load camera notification settings from migration file", &buf, 0xCu);
        }
      }

      objc_autoreleasePoolPop(v7);
    }
  }

  home3 = [(HMDCameraBulletinNotificationManager *)self home];
  v19 = [HMDUserMessagePolicy userMessagePolicyWithHome:home3 userPrivilege:0 remoteAccessRequired:0];
  v20 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  messageDispatcher = [(HMDCameraBulletinNotificationManager *)self messageDispatcher];
  v50[0] = v20;
  v50[1] = v19;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:2];
  [messageDispatcher registerForMessage:@"HMDBulletinNotificationCameraSignificantEventMessage" receiver:self policies:v22 selector:sel__handleCameraSignificantEventNotificationMessage_];

  messageDispatcher2 = [(HMDCameraBulletinNotificationManager *)self messageDispatcher];
  v49[0] = v20;
  v49[1] = v19;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:2];
  [messageDispatcher2 registerForMessage:@"HMDBulletinNotificationNotifyPrimaryResidentOfCameraSignificantEventMessage" receiver:self policies:v24 selector:sel__handleCameraSignificantEventBulletinNotifyPrimaryResidentMessage_];

  notificationCenter = [(HMDCameraBulletinNotificationManager *)self notificationCenter];
  residentDeviceManager = [home3 residentDeviceManager];
  [notificationCenter addObserver:self selector:sel_handlePrimaryResidentUpdateNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:residentDeviceManager];

  notificationCenter2 = [(HMDCameraBulletinNotificationManager *)self notificationCenter];
  accountManager = [(HMDCameraBulletinNotificationManager *)self accountManager];
  [notificationCenter2 addObserver:self selector:sel_handleCurrentDeviceOrAccountUpdatedNotification_ name:@"HMDAppleAccountManagerDeviceUpdatedNotification" object:accountManager];

  notificationCenter3 = [(HMDCameraBulletinNotificationManager *)self notificationCenter];
  accountManager2 = [(HMDCameraBulletinNotificationManager *)self accountManager];
  [notificationCenter3 addObserver:self selector:sel_handleCurrentDeviceOrAccountUpdatedNotification_ name:@"HMDAppleAccountManagerAccountUpdatedNotification" object:accountManager2];

  synchronizeWithPrimaryDebounceTimerFactory = [(HMDCameraBulletinNotificationManager *)self synchronizeWithPrimaryDebounceTimerFactory];
  v32 = synchronizeWithPrimaryDebounceTimerFactory[2](synchronizeWithPrimaryDebounceTimerFactory, 28, 5.0);
  [(HMDCameraBulletinNotificationManager *)self setSynchronizeWithPrimaryDebounceTimer:v32];

  synchronizeWithPrimaryDebounceTimer = [(HMDCameraBulletinNotificationManager *)self synchronizeWithPrimaryDebounceTimer];
  [synchronizeWithPrimaryDebounceTimer setDelegate:self];

  workQueue = [(HMDCameraBulletinNotificationManager *)self workQueue];
  synchronizeWithPrimaryDebounceTimer2 = [(HMDCameraBulletinNotificationManager *)self synchronizeWithPrimaryDebounceTimer];
  [synchronizeWithPrimaryDebounceTimer2 setDelegateQueue:workQueue];

  if (capableCopy)
  {
    [(HMDCameraBulletinNotificationManager *)self setCurrentPrimary:0];
    isCurrentDeviceConfirmedPrimaryResident = [home3 isCurrentDeviceConfirmedPrimaryResident];
    v37 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v39 = HMFGetOSLogHandle();
    v40 = os_log_type_enabled(v39, OS_LOG_TYPE_INFO);
    if (isCurrentDeviceConfirmedPrimaryResident)
    {
      if (v40)
      {
        v41 = HMFGetLogIdentifier();
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v41;
        _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@Configuring as primary resident", &buf, 0xCu);
      }

      objc_autoreleasePoolPop(v37);
      workQueue2 = [(HMDCameraBulletinNotificationManager *)selfCopy3 workQueue];
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __77__HMDCameraBulletinNotificationManager_configureWithDeviceIsResidentCapable___block_invoke;
      v45[3] = &unk_27868A728;
      v45[4] = selfCopy3;
      dispatch_async(workQueue2, v45);
    }

    else
    {
      if (v40)
      {
        v43 = HMFGetLogIdentifier();
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v43;
        _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@Configuring as non-primary resident", &buf, 0xCu);
      }

      objc_autoreleasePoolPop(v37);
    }
  }

  v44 = *MEMORY[0x277D85DE8];
}

void __74__HMDCameraBulletinNotificationManager_validateRegistrationsForMigration___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
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

  if (v5)
  {
    v6 = [(__CFString *)v5 objectForKeyedSubscript:@"HMD.CNS.A"];
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
      v9 = [(__CFString *)v5 objectForKeyedSubscript:@"HMD.CNS"];
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

      if (v11)
      {
        [*(a1 + 48) setObject:v11 forKeyedSubscript:v8];
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        v22 = *(a1 + 32);
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = HMFGetLogIdentifier();
          v26 = 138543874;
          v27 = v24;
          v28 = 2112;
          v29 = @"HMD.CNS";
          v30 = 2112;
          v31 = v3;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Invalid object for %@: %@", &v26, 0x20u);
        }

        objc_autoreleasePoolPop(v21);
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = *(a1 + 32);
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v26 = 138543874;
        v27 = v20;
        v28 = 2112;
        v29 = @"HMD.CNS.A";
        v30 = 2112;
        v31 = v3;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Invalid object for %@: %@", &v26, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = *(a1 + 40);
      v26 = 138543874;
      v27 = v15;
      v28 = 2112;
      v29 = v3;
      v30 = 2112;
      v31 = v16;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unexpected object type: %@, %@", &v26, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __74__HMDCameraBulletinNotificationManager_validateRegistrationsForMigration___block_invoke_152(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) copy];
  v4 = *(a1 + 48);
  v22 = v3;
  v5 = v4;
  v6 = v5;
  if (v2)
  {
    [v5 hmd_assertIsExecuting];
    v7 = objc_autoreleasePoolPush();
    v8 = v2;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v10;
      *&buf[12] = 2112;
      *&buf[14] = v22;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Migrating bulletin registrations: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __69__HMDCameraBulletinNotificationManager_migrateRegistrations_context___block_invoke;
    v29 = &unk_278674960;
    v30 = v8;
    v11 = v6;
    v31 = v11;
    [v22 enumerateKeysAndObjectsUsingBlock:buf];
    if ([v11 hasChanges])
    {
      v23 = 0;
      v12 = [v11 hmd_saveWithTransactionAuthor:7 error:&v23];
      v13 = v23;
      v14 = objc_autoreleasePoolPush();
      v15 = v8;
      v16 = HMFGetOSLogHandle();
      v17 = v16;
      if (v12)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v18 = HMFGetLogIdentifier();
          *v24 = 138543362;
          v25 = v18;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Successfully migrated bulletin registrations", v24, 0xCu);
        }

        objc_autoreleasePoolPop(v14);
        v19 = [v15 home];
        [v19 removeCameraNotificationSettingsMigrationFileFromDisk];
      }

      else
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v20 = HMFGetLogIdentifier();
          *v24 = 138543618;
          v25 = v20;
          v26 = 2112;
          v27 = v22;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to migrate bulletin registrations: %@", v24, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
        [v11 rollback];
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __69__HMDCameraBulletinNotificationManager_migrateRegistrations_context___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v101 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v71 = a2;
  v67 = a3;
  v6 = v4;
  if (v5)
  {
    v70 = v6;
    [v6 hmd_assertIsExecuting];
    v68 = +[MKFLocalBulletinAccessoryRegistration fetchRequest];
    v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"accessoryModelID", v71];
    [v68 setPredicate:v7];

    v90 = 0;
    v69 = [v70 executeFetchRequest:v68 error:&v90];
    v66 = v90;
    v8 = v69;
    if (!v69)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = v5;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v12;
        *&buf[12] = 2112;
        *&buf[14] = v66;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch existing registrations: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      v8 = 0;
    }

    v84 = 0;
    v85 = &v84;
    v86 = 0x3032000000;
    v87 = __Block_byref_object_copy__57771;
    v88 = __Block_byref_object_dispose__57772;
    v89 = 0;
    v78 = 0;
    v79 = &v78;
    v80 = 0x3032000000;
    v81 = __Block_byref_object_copy__57771;
    v82 = __Block_byref_object_dispose__57772;
    v83 = 0;
    v72 = 0;
    v73 = &v72;
    v74 = 0x3032000000;
    v75 = __Block_byref_object_copy__57771;
    v76 = __Block_byref_object_dispose__57772;
    v77 = 0;
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __89__HMDCameraBulletinNotificationManager_ensureRegistrationsForAccessory_settings_context___block_invoke;
    v92 = &unk_278674988;
    v95 = &v78;
    v96 = &v72;
    v93 = v5;
    v94 = &v84;
    [v8 hmf_enumerateWithAutoreleasePoolUsingBlock:buf];
    v13 = v85[5];
    v14 = v71;
    v15 = v67;
    v16 = v70;
    [v16 hmd_assertIsExecuting];
    if (v13)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = v5;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        *v97 = 138543618;
        v98 = v20;
        v99 = 2112;
        v100 = v13;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Already have a camera access mode registration: %@", v97, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
    }

    else
    {
      v21 = [[MKFLocalBulletinCameraAccessModeRegistration alloc] initWithContext:v16];
      [(MKFLocalBulletinCameraAccessModeRegistration *)v21 setAccessoryModelID:v14];
      v22 = [MEMORY[0x277CBEB98] set];
      [(MKFLocalBulletinCameraAccessModeRegistration *)v21 setConditions:v22];

      if (isTVOSDevice())
      {
        v23 = 0;
      }

      else
      {
        v23 = [v15 isAccessModeChangeNotificationEnabled];
      }

      [(MKFLocalBulletinCameraAccessModeRegistration *)v21 setEnabled:v23];
      v24 = objc_autoreleasePoolPush();
      v25 = v5;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        *v97 = 138543618;
        v98 = v27;
        v99 = 2112;
        v100 = v21;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Created new camera access mode registration: %@", v97, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
    }

    v28 = v79[5];
    v29 = v14;
    v30 = v15;
    v31 = v16;
    [v31 hmd_assertIsExecuting];
    if (v28)
    {
      v32 = objc_autoreleasePoolPush();
      v33 = v5;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = HMFGetLogIdentifier();
        *v97 = 138543618;
        v98 = v35;
        v99 = 2112;
        v100 = v28;
        _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@Already have a camera reachability registration: %@", v97, 0x16u);
      }

      objc_autoreleasePoolPop(v32);
    }

    else
    {
      v36 = [[MKFLocalBulletinCameraReachabilityRegistration alloc] initWithContext:v31];
      [(MKFLocalBulletinCameraReachabilityRegistration *)v36 setAccessoryModelID:v29];
      v37 = [MEMORY[0x277CBEB98] set];
      [(MKFLocalBulletinCameraReachabilityRegistration *)v36 setConditions:v37];

      if (isTVOSDevice())
      {
        v38 = 0;
      }

      else
      {
        v38 = [v30 isReachabilityEventNotificationEnabled];
      }

      [(MKFLocalBulletinCameraReachabilityRegistration *)v36 setEnabled:v38];
      v39 = objc_autoreleasePoolPush();
      v40 = v5;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = HMFGetLogIdentifier();
        *v97 = 138543618;
        v98 = v42;
        v99 = 2112;
        v100 = v36;
        _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, "%{public}@Created new camera reachability registration: %@", v97, 0x16u);
      }

      objc_autoreleasePoolPop(v39);
    }

    v43 = v73[5];
    v44 = v29;
    v45 = v30;
    v46 = v31;
    [v46 hmd_assertIsExecuting];
    if (v43)
    {
      v47 = objc_autoreleasePoolPush();
      v48 = v5;
      v49 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        v50 = HMFGetLogIdentifier();
        *v97 = 138543618;
        v98 = v50;
        v99 = 2112;
        v100 = v43;
        _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_INFO, "%{public}@Already have a camera significant event registration: %@", v97, 0x16u);
      }

      objc_autoreleasePoolPop(v47);
    }

    else
    {
      v51 = [[MKFLocalBulletinCameraSignificantEventRegistration alloc] initWithContext:v46];
      [(MKFLocalBulletinCameraSignificantEventRegistration *)v51 setAccessoryModelID:v44];
      v52 = [MEMORY[0x277CBEB98] set];
      [(MKFLocalBulletinCameraSignificantEventRegistration *)v51 setConditions:v52];

      [(MKFLocalBulletinCameraSignificantEventRegistration *)v51 setNotificationModes:0];
      [(MKFLocalBulletinCameraSignificantEventRegistration *)v51 setSignificantEventTypes:0];
      [(MKFLocalBulletinCameraSignificantEventRegistration *)v51 setPersonFamiliarityOptions:0];
      if (isHomePod())
      {
        v53 = 0;
      }

      else
      {
        v53 = [v45 isSmartBulletinBoardNotificationEnabled];
      }

      [(MKFLocalBulletinCameraSignificantEventRegistration *)v51 setEnabled:v53];
      if ([v45 isSmartBulletinBoardNotificationEnabled])
      {
        [(MKFLocalBulletinCameraSignificantEventRegistration *)v51 setNotificationModes:1];
        v54 = [v45 smartBulletinBoardNotificationCondition];
        v65 = [MEMORY[0x277CD1D18] bitwiseAndValueWithKeyPath:*MEMORY[0x277CCF598] inPredicate:v54 validValues:31];
        v55 = [v65 integerValue];
        v56 = [MEMORY[0x277CD1D18] bitwiseAndValueWithKeyPath:*MEMORY[0x277CCF5A0] inPredicate:v54 validValues:7];
        v57 = [v56 integerValue];
        [(MKFLocalBulletinCameraSignificantEventRegistration *)v51 setSignificantEventTypes:v55];
        [(MKFLocalBulletinCameraSignificantEventRegistration *)v51 setPersonFamiliarityOptions:v57];
        v58 = [v5 conditionsFromPredicate:v54];
        v59 = [HMDBulletinNotificationRegistrationUtilities createAndAddLocalConditionsToRegistration:v51 moc:v46 conditions:v58];
        [(MKFLocalBulletinCameraSignificantEventRegistration *)v51 setConditions:v59];
      }

      v60 = objc_autoreleasePoolPush();
      v61 = v5;
      v62 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
      {
        v63 = HMFGetLogIdentifier();
        *v97 = 138543618;
        v98 = v63;
        v99 = 2112;
        v100 = v51;
        _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_INFO, "%{public}@Created new camera significant event registration: %@", v97, 0x16u);
      }

      objc_autoreleasePoolPop(v60);
    }

    _Block_object_dispose(&v72, 8);
    _Block_object_dispose(&v78, 8);

    _Block_object_dispose(&v84, 8);
    v6 = v70;
  }

  v64 = *MEMORY[0x277D85DE8];
}

void __89__HMDCameraBulletinNotificationManager_ensureRegistrationsForAccessory_settings_context___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [v4 entity];
  v6 = +[MKFLocalBulletinCameraAccessModeRegistration entity];
  v7 = [v5 isKindOfEntity:v6];

  if (v7)
  {
    v8 = *(a1 + 40);
LABEL_7:
    objc_storeStrong((*(v8 + 8) + 40), a2);
    goto LABEL_8;
  }

  v9 = [v4 entity];
  v10 = +[MKFLocalBulletinCameraReachabilityRegistration entity];
  v11 = [v9 isKindOfEntity:v10];

  if (v11)
  {
    v8 = *(a1 + 48);
    goto LABEL_7;
  }

  v12 = [v4 entity];
  v13 = +[MKFLocalBulletinCameraSignificantEventRegistration entity];
  v14 = [v12 isKindOfEntity:v13];

  if (v14)
  {
    v8 = *(a1 + 56);
    goto LABEL_7;
  }

  v16 = [v4 entity];
  v17 = +[MKFLocalBulletinCharacteristicRegistration entity];
  v18 = [v16 isKindOfEntity:v17];

  if ((v18 & 1) == 0)
  {
    v19 = [v4 entity];
    v20 = +[MKFLocalBulletinServiceRegistration entity];
    v21 = [v19 isKindOfEntity:v20];

    if ((v21 & 1) == 0)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = *(a1 + 32);
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v26 = 138543618;
        v27 = v25;
        v28 = 2112;
        v29 = v4;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unknown type of local registration, ignoring: %@", &v26, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
    }
  }

LABEL_8:

  v15 = *MEMORY[0x277D85DE8];
}

- (HMDBulletinNotificationRegistrationSource)source
{
  v23 = *MEMORY[0x277D85DE8];
  accountManager = [(HMDCameraBulletinNotificationManager *)self accountManager];
  account = [accountManager account];
  currentDevice = [account currentDevice];
  deviceAddress = [currentDevice deviceAddress];

  if (deviceAddress)
  {
    home = [(HMDCameraBulletinNotificationManager *)self home];
    currentUser = [home currentUser];
    uuid = [currentUser uuid];

    if (uuid)
    {
      v10 = [[HMDBulletinNotificationRegistrationSource alloc] initWithUserUUID:uuid deviceAddress:deviceAddress];
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
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
    selfCopy2 = self;
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

- (NSArray)cameraAccessModeRegistrationsForCurrentDevice
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__57771;
  v17 = __Block_byref_object_dispose__57772;
  v18 = MEMORY[0x277CBEBF8];
  home = [(HMDCameraBulletinNotificationManager *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  managedObjectContext = [context managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __85__HMDCameraBulletinNotificationManager_cameraAccessModeRegistrationsForCurrentDevice__block_invoke;
  v10[3] = &unk_27868A4D8;
  v10[4] = self;
  v7 = managedObjectContext;
  v11 = v7;
  v12 = &v13;
  [v7 performBlockAndWait:v10];
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __85__HMDCameraBulletinNotificationManager_cameraAccessModeRegistrationsForCurrentDevice__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _mkfLocalCameraAccessModeRegistrationsWithManagedObjectContext:*(a1 + 40)];
  v2 = [v5 na_map:&__block_literal_global_50];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id __85__HMDCameraBulletinNotificationManager_cameraAccessModeRegistrationsForCurrentDevice__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 enabled])
  {
    v3 = [HMDBulletinNotificationRegistrationUtilities cameraAccessModeRegistrationFromLocalRegistration:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)cameraAccessModeRegistrations
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__57771;
  v15 = __Block_byref_object_dispose__57772;
  v16 = MEMORY[0x277CBEBF8];
  home = [(HMDCameraBulletinNotificationManager *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__HMDCameraBulletinNotificationManager_cameraAccessModeRegistrations__block_invoke;
  v8[3] = &unk_27868A688;
  v5 = home;
  v9 = v5;
  v10 = &v11;
  [context unsafeSynchronousBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __69__HMDCameraBulletinNotificationManager_cameraAccessModeRegistrations__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [*(a1 + 32) uuid];
  v4 = [HMCContext findHomeWithModelID:v3];

  v5 = [v4 users];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__HMDCameraBulletinNotificationManager_cameraAccessModeRegistrations__block_invoke_2;
  v10[3] = &unk_278684D48;
  v11 = v2;
  v6 = v2;
  [v5 na_each:v10];

  v7 = [v6 na_map:&__block_literal_global_47_57904];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void __69__HMDCameraBulletinNotificationManager_cameraAccessModeRegistrations__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 bulletinRegistrations];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__HMDCameraBulletinNotificationManager_cameraAccessModeRegistrations__block_invoke_3;
  v4[3] = &unk_27867ED28;
  v5 = *(a1 + 32);
  [v3 na_each:v4];
}

void __69__HMDCameraBulletinNotificationManager_cameraAccessModeRegistrations__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 castIfCameraAccessModeBulletinRegistration];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

- (NSArray)cameraReachabilityRegistrationsForCurrentDevice
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__57771;
  v17 = __Block_byref_object_dispose__57772;
  v18 = MEMORY[0x277CBEBF8];
  home = [(HMDCameraBulletinNotificationManager *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  managedObjectContext = [context managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __87__HMDCameraBulletinNotificationManager_cameraReachabilityRegistrationsForCurrentDevice__block_invoke;
  v10[3] = &unk_27868A4D8;
  v10[4] = self;
  v7 = managedObjectContext;
  v11 = v7;
  v12 = &v13;
  [v7 performBlockAndWait:v10];
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __87__HMDCameraBulletinNotificationManager_cameraReachabilityRegistrationsForCurrentDevice__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _mkfLocalCameraReachabilityRegistrationsWithManagedObjectContext:*(a1 + 40)];
  v2 = [v5 na_map:&__block_literal_global_44_57907];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id __87__HMDCameraBulletinNotificationManager_cameraReachabilityRegistrationsForCurrentDevice__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 enabled])
  {
    v3 = [HMDBulletinNotificationRegistrationUtilities cameraReachabilityRegistrationFromLocalRegistration:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)cameraReachabilityRegistrations
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__57771;
  v15 = __Block_byref_object_dispose__57772;
  v16 = MEMORY[0x277CBEBF8];
  home = [(HMDCameraBulletinNotificationManager *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__HMDCameraBulletinNotificationManager_cameraReachabilityRegistrations__block_invoke;
  v8[3] = &unk_27868A688;
  v5 = home;
  v9 = v5;
  v10 = &v11;
  [context unsafeSynchronousBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __71__HMDCameraBulletinNotificationManager_cameraReachabilityRegistrations__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [*(a1 + 32) uuid];
  v4 = [HMCContext findHomeWithModelID:v3];

  v5 = [v4 users];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__HMDCameraBulletinNotificationManager_cameraReachabilityRegistrations__block_invoke_2;
  v10[3] = &unk_278684D48;
  v11 = v2;
  v6 = v2;
  [v5 na_each:v10];

  v7 = [v6 na_map:&__block_literal_global_41];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void __71__HMDCameraBulletinNotificationManager_cameraReachabilityRegistrations__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 bulletinRegistrations];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__HMDCameraBulletinNotificationManager_cameraReachabilityRegistrations__block_invoke_3;
  v4[3] = &unk_27867ED28;
  v5 = *(a1 + 32);
  [v3 na_each:v4];
}

void __71__HMDCameraBulletinNotificationManager_cameraReachabilityRegistrations__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 castIfCameraReachabilityBulletinRegistration];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

- (NSArray)cameraSignificantEventRegistrationsForCurrentDevice
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__57771;
  v17 = __Block_byref_object_dispose__57772;
  v18 = MEMORY[0x277CBEBF8];
  home = [(HMDCameraBulletinNotificationManager *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  managedObjectContext = [context managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __91__HMDCameraBulletinNotificationManager_cameraSignificantEventRegistrationsForCurrentDevice__block_invoke;
  v10[3] = &unk_27868A4D8;
  v10[4] = self;
  v7 = managedObjectContext;
  v11 = v7;
  v12 = &v13;
  [v7 performBlockAndWait:v10];
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __91__HMDCameraBulletinNotificationManager_cameraSignificantEventRegistrationsForCurrentDevice__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _mkfLocalCameraSignificantEventRegistrationsWithManagedObjectContext:*(a1 + 40)];
  v2 = [v5 na_map:&__block_literal_global_38_57910];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id __91__HMDCameraBulletinNotificationManager_cameraSignificantEventRegistrationsForCurrentDevice__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 enabled])
  {
    v3 = [HMDBulletinNotificationRegistrationUtilities cameraSignificantEventRegistrationFromLocalRegistration:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)cameraSignificantEventRegistrations
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__57771;
  v15 = __Block_byref_object_dispose__57772;
  v16 = MEMORY[0x277CBEBF8];
  home = [(HMDCameraBulletinNotificationManager *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__HMDCameraBulletinNotificationManager_cameraSignificantEventRegistrations__block_invoke;
  v8[3] = &unk_27868A688;
  v5 = home;
  v9 = v5;
  v10 = &v11;
  [context unsafeSynchronousBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __75__HMDCameraBulletinNotificationManager_cameraSignificantEventRegistrations__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [*(a1 + 32) uuid];
  v4 = [HMCContext findHomeWithModelID:v3];

  v5 = [v4 users];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__HMDCameraBulletinNotificationManager_cameraSignificantEventRegistrations__block_invoke_2;
  v10[3] = &unk_278684D48;
  v11 = v2;
  v6 = v2;
  [v5 na_each:v10];

  v7 = [v6 na_map:&__block_literal_global_33];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void __75__HMDCameraBulletinNotificationManager_cameraSignificantEventRegistrations__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 bulletinRegistrations];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __75__HMDCameraBulletinNotificationManager_cameraSignificantEventRegistrations__block_invoke_3;
  v4[3] = &unk_27867ED28;
  v5 = *(a1 + 32);
  [v3 na_each:v4];
}

void __75__HMDCameraBulletinNotificationManager_cameraSignificantEventRegistrations__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 castIfCameraSignificantEventBulletinRegistration];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

- (HMDCameraBulletinNotificationManager)initWithHome:(id)home workQueue:(id)queue messageDispatcher:(id)dispatcher accountManager:(id)manager faceClassificationResolver:(id)resolver doorbellPressTracker:(id)tracker evaluator:(id)evaluator notificationCenter:(id)self0
{
  homeCopy = home;
  queueCopy = queue;
  dispatcherCopy = dispatcher;
  managerCopy = manager;
  resolverCopy = resolver;
  trackerCopy = tracker;
  evaluatorCopy = evaluator;
  centerCopy = center;
  v32.receiver = self;
  v32.super_class = HMDCameraBulletinNotificationManager;
  v18 = [(HMDCameraBulletinNotificationManager *)&v32 init];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_home, homeCopy);
    objc_storeStrong(&v19->_workQueue, queue);
    objc_storeStrong(&v19->_messageDispatcher, dispatcher);
    uuid = [homeCopy uuid];
    messageTargetUUID = v19->_messageTargetUUID;
    v19->_messageTargetUUID = uuid;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    observersByCameraIdentifier = v19->_observersByCameraIdentifier;
    v19->_observersByCameraIdentifier = dictionary;

    v19->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v19->_accountManager, manager);
    objc_storeStrong(&v19->_faceClassificationResolver, resolver);
    objc_storeStrong(&v19->_doorbellPressTracker, tracker);
    objc_storeStrong(&v19->_notificationCenter, center);
    objc_storeStrong(&v19->_evaluator, evaluator);
    synchronizeWithPrimaryDebounceTimerFactory = v19->_synchronizeWithPrimaryDebounceTimerFactory;
    v19->_synchronizeWithPrimaryDebounceTimerFactory = &__block_literal_global_57915;
  }

  return v19;
}

id __173__HMDCameraBulletinNotificationManager_initWithHome_workQueue_messageDispatcher_accountManager_faceClassificationResolver_doorbellPressTracker_evaluator_notificationCenter___block_invoke(double a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:a3 options:a1];

  return v3;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t98 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t98, &__block_literal_global_165_57926);
  }

  v3 = logCategory__hmf_once_v99;

  return v3;
}

void __51__HMDCameraBulletinNotificationManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v99;
  logCategory__hmf_once_v99 = v1;
}

+ (id)_cameraReachabilityRegistrationsForSource:(id)source context:(id)context
{
  v30 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  contextCopy = context;
  v8 = +[_MKFCameraReachabilityBulletinRegistration fetchRequest];
  v9 = MEMORY[0x277CCAC30];
  userUUID = [sourceCopy userUUID];
  deviceAddress = [sourceCopy deviceAddress];
  idsIdentifier = [deviceAddress idsIdentifier];
  deviceAddress2 = [sourceCopy deviceAddress];
  idsDestination = [deviceAddress2 idsDestination];
  v15 = [v9 predicateWithFormat:@"(%K == %@) && (%K == %@) && (%K == %@)", @"user.modelID", userUUID, @"deviceIdsIdentifier", idsIdentifier, @"deviceIdsDestination", idsDestination];
  [v8 setPredicate:v15];

  v25 = 0;
  v16 = [contextCopy executeFetchRequest:v8 error:&v25];
  v17 = v25;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v22;
      v28 = 2112;
      v29 = sourceCopy;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch camera reachability bulletin registrations for source: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v18 = MEMORY[0x277CBEBF8];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)_cameraAccessModeRegistrationsForSource:(id)source context:(id)context
{
  v30 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  contextCopy = context;
  v8 = +[_MKFCameraAccessModeBulletinRegistration fetchRequest];
  v9 = MEMORY[0x277CCAC30];
  userUUID = [sourceCopy userUUID];
  deviceAddress = [sourceCopy deviceAddress];
  idsIdentifier = [deviceAddress idsIdentifier];
  deviceAddress2 = [sourceCopy deviceAddress];
  idsDestination = [deviceAddress2 idsDestination];
  v15 = [v9 predicateWithFormat:@"(%K == %@) && (%K == %@) && (%K == %@)", @"user.modelID", userUUID, @"deviceIdsIdentifier", idsIdentifier, @"deviceIdsDestination", idsDestination];
  [v8 setPredicate:v15];

  v25 = 0;
  v16 = [contextCopy executeFetchRequest:v8 error:&v25];
  v17 = v25;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v22;
      v28 = 2112;
      v29 = sourceCopy;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch camera access mode bulletin registrations for source: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v18 = MEMORY[0x277CBEBF8];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)_cameraSignificantEventRegistrationsForSource:(id)source context:(id)context
{
  v30 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  contextCopy = context;
  v8 = +[_MKFCameraSignificantEventBulletinRegistration fetchRequest];
  v9 = MEMORY[0x277CCAC30];
  userUUID = [sourceCopy userUUID];
  deviceAddress = [sourceCopy deviceAddress];
  idsIdentifier = [deviceAddress idsIdentifier];
  deviceAddress2 = [sourceCopy deviceAddress];
  idsDestination = [deviceAddress2 idsDestination];
  v15 = [v9 predicateWithFormat:@"(%K == %@) && (%K == %@) && (%K == %@)", @"user.modelID", userUUID, @"deviceIdsIdentifier", idsIdentifier, @"deviceIdsDestination", idsDestination];
  [v8 setPredicate:v15];

  v25 = 0;
  v16 = [contextCopy executeFetchRequest:v8 error:&v25];
  v17 = v25;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v22;
      v28 = 2112;
      v29 = sourceCopy;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch camera significant event bulletin registrations for source: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v18 = MEMORY[0x277CBEBF8];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v18;
}

@end