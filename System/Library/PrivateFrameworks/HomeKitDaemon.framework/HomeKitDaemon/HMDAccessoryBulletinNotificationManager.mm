@interface HMDAccessoryBulletinNotificationManager
+ (id)_characteristicBulletinRegistrationsForSource:(id)source context:(id)context;
+ (id)logCategory;
+ (id)matterBulletinRegistrationsForSource:(id)source context:(id)context;
- (HMDAccessoryBulletinNotificationManager)initWithHome:(id)home workQueue:(id)queue accountManager:(id)manager evaluator:(id)evaluator notificationCenter:(id)center;
- (HMDBulletinNotificationRegistrationSource)source;
- (HMDHome)home;
- (NSArray)accessoryRegistrations;
- (NSArray)accessoryRegistrationsForCurrentDevice;
- (NSArray)matterRegistrations;
- (NSArray)serviceRegistrationsForCurrentDevice;
- (id)_accessoryRegistrationFromMKFRegistrationSafe:(id)safe;
- (id)_characteristicsRegistrationsFromBulletinRegistrations:(id)registrations;
- (id)_characteristicsWithPassingLocalRegistrationForCharacteristics:(id)characteristics;
- (id)_devicesToNotifyForCharacteristic:(id)characteristic;
- (id)_matterRegistrationsFromBulletinRegistrations:(id)registrations;
- (id)_mkfLocalCharacteristicRegistrationsWithManagedObjectContext:(id)context;
- (id)_mkfLocalServiceRegistrationsWithManagedObjectContext:(id)context;
- (id)_updateReasonsByCharacteristicFromMessage:(id)message;
- (id)accessoryBulletinNotificationRegistrationsForCharacteristic:(id)characteristic;
- (id)bulletinBoardNotificationForAccessory:(id)accessory endpointID:(id)d;
- (id)bulletinBoardNotificationForService:(id)service;
- (id)bulletinCharacteristicsFromChangedCharacteristics:(id)characteristics message:(id)message;
- (id)characteristicsByDestinationForCharacteristics:(id)characteristics;
- (id)currentHomeAccessoryUUIDs;
- (id)devicesToNotifyForMatterPath:(id)path;
- (id)logIdentifier;
- (id)matterBulletinNotificationRegistrationsForMatterPath:(id)path;
- (id)matterRegistrationFromMKFRegistrationSafe:(id)safe;
- (id)mkfLocalMatterRegistrationsWithManagedObjectContext:(id)context;
- (void)_handleAccessoryBulletinNotificationRegistration:(id)registration removed:(BOOL)removed;
- (void)_handleCurrentDeviceOrAccountUpdatedNotification:(id)notification;
- (void)_handleDeviceBecameNotPrimary;
- (void)_handleDeviceBecamePrimary;
- (void)_handlePrimaryResidentUpdateNotification:(id)notification;
- (void)_synchronizeLocalRegistrationsWithPrimaryResident;
- (void)_updateRegistrationsOnPrimaryWithEnabledRegistrations:(id)registrations disabledRegistrations:(id)disabledRegistrations;
- (void)configureWithDeviceIsResidentCapable:(BOOL)capable;
- (void)disableBulletinForAccessory:(id)accessory endpointID:(id)d completion:(id)completion;
- (void)disableBulletinForService:(id)service completion:(id)completion;
- (void)enableBulletinForAccessory:(id)accessory endpointID:(id)d conditions:(id)conditions completion:(id)completion;
- (void)enableBulletinForService:(id)service conditions:(id)conditions completion:(id)completion;
- (void)handleCurrentDeviceOrAccountUpdatedNotification:(id)notification;
- (void)handleDisabledRegistrations:(id)registrations;
- (void)handleEnabledRegistrations:(id)registrations;
- (void)handlePrimaryResidentUpdateNotification:(id)notification;
- (void)handleRemovedAccessory:(id)accessory;
- (void)handleRemovedEndpoint:(id)endpoint fromAccessory:(id)accessory;
- (void)handleRemovedService:(id)service;
- (void)requestSynchronizeRegistrations;
- (void)timerDidFire:(id)fire;
- (void)updateEndpointRegistrationsForAccessory:(id)accessory endpoints:(id)endpoints;
- (void)updateRegistrationsWithEnabledCharacteristics:(id)characteristics disabledCharacteristics:(id)disabledCharacteristics conditions:(id)conditions completion:(id)completion;
- (void)updateRegistrationsWithEnabledMatterPaths:(id)paths disabledMatterPaths:(id)matterPaths conditions:(id)conditions completion:(id)completion;
- (void)updateServiceGroup:(id)group completion:(id)completion;
@end

@implementation HMDAccessoryBulletinNotificationManager

- (id)matterRegistrationFromMKFRegistrationSafe:(id)safe
{
  safeCopy = safe;
  matterPaths = [safeCopy matterPaths];
  hmf_isEmpty = [matterPaths hmf_isEmpty];

  if (hmf_isEmpty)
  {
    v7 = 0;
  }

  else
  {
    home = [(HMDAccessoryBulletinNotificationManager *)self home];
    v7 = [HMDBulletinNotificationRegistrationUtilities matterRegistrationFromMKFRegistration:safeCopy home:home];
  }

  return v7;
}

- (id)mkfLocalMatterRegistrationsWithManagedObjectContext:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  currentHomeAccessoryUUIDs = [(HMDAccessoryBulletinNotificationManager *)self currentHomeAccessoryUUIDs];
  v6 = +[MKFLocalBulletinMatterRegistration fetchRequest];
  v18 = 0;
  v7 = [contextCopy executeFetchRequest:v6 error:&v18];
  v8 = v18;
  if (v7)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __103__HMDAccessoryBulletinNotificationManager_Matter__mkfLocalMatterRegistrationsWithManagedObjectContext___block_invoke;
    v16[3] = &unk_27867A718;
    v17 = currentHomeAccessoryUUIDs;
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
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch local Matter registrations, error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v9 = MEMORY[0x277CBEBF8];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t __103__HMDAccessoryBulletinNotificationManager_Matter__mkfLocalMatterRegistrationsWithManagedObjectContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 accessoryModelID];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (void)updateEndpointRegistrationsForAccessory:(id)accessory endpoints:(id)endpoints
{
  accessoryCopy = accessory;
  endpointsCopy = endpoints;
  home = [accessoryCopy home];
  backingStore = [home backingStore];
  context = [backingStore context];

  managedObjectContext = [context managedObjectContext];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __101__HMDAccessoryBulletinNotificationManager_Matter__updateEndpointRegistrationsForAccessory_endpoints___block_invoke;
  v15[3] = &unk_2786891E0;
  v16 = accessoryCopy;
  v17 = managedObjectContext;
  v18 = endpointsCopy;
  selfCopy = self;
  v12 = endpointsCopy;
  v13 = managedObjectContext;
  v14 = accessoryCopy;
  [v13 performBlock:v15];
}

void __101__HMDAccessoryBulletinNotificationManager_Matter__updateEndpointRegistrationsForAccessory_endpoints___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) uuid];
  v3 = [MKFLocalBulletinEndpointRegistration fetchAllEndpointRegistrationsForAccessoryUUID:v2 managedObjectContext:*(a1 + 40)];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __101__HMDAccessoryBulletinNotificationManager_Matter__updateEndpointRegistrationsForAccessory_endpoints___block_invoke_2;
  v6[3] = &unk_27867A6F0;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = v4;
  v8 = v5;
  v9 = *(a1 + 32);
  [v3 na_each:v6];
}

void __101__HMDAccessoryBulletinNotificationManager_Matter__updateEndpointRegistrationsForAccessory_endpoints___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 endpointID];
  if (([*(a1 + 32) containsObject:v4] & 1) == 0)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 40);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 32);
      v11 = 138544130;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = v4;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Received attribute report for parts list that has the following endpoints=%@ which does not contain endpointID=%@ that we have registration=%@ for, unregistering for notifications with this endpointID.", &v11, 0x2Au);
    }

    objc_autoreleasePoolPop(v5);
    [*(a1 + 40) handleRemovedEndpoint:v4 fromAccessory:*(a1 + 48)];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)devicesToNotifyForMatterPath:(id)path
{
  pathCopy = path;
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = [(HMDAccessoryBulletinNotificationManager *)self matterBulletinNotificationRegistrationsForMatterPath:pathCopy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__HMDAccessoryBulletinNotificationManager_Matter__devicesToNotifyForMatterPath___block_invoke;
  v11[3] = &unk_27867A6C8;
  v11[4] = self;
  v12 = pathCopy;
  v13 = v5;
  v7 = v5;
  v8 = pathCopy;
  [v6 na_each:v11];
  v9 = [v7 copy];

  return v9;
}

void __80__HMDAccessoryBulletinNotificationManager_Matter__devicesToNotifyForMatterPath___block_invoke(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 registration];
  v5 = [v3 source];
  v6 = [*(a1 + 32) home];
  v7 = [v5 userUUID];
  v8 = [v6 userWithUUID:v7];

  if (!v8)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = *(a1 + 32);
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543874;
      v35 = v27;
      v36 = 2112;
      v37 = v4;
      v38 = 2112;
      v39 = v5;
      v28 = "%{public}@Unable to evaluate registration: %@, no matching user for source: %@";
      v29 = v26;
      v30 = OS_LOG_TYPE_ERROR;
      v31 = 32;
LABEL_13:
      _os_log_impl(&dword_229538000, v29, v30, v28, buf, v31);
    }

LABEL_14:

    objc_autoreleasePoolPop(v24);
    goto LABEL_15;
  }

  if (([v8 isAccessCurrentlyAllowedBySchedule] & 1) == 0)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = *(a1 + 32);
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v27;
      v28 = "%{public}@Cannot send the notification as the user is outside schedule";
      v29 = v26;
      v30 = OS_LOG_TYPE_INFO;
      v31 = 12;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v9 = [*(a1 + 32) evaluator];
  v10 = [v4 conditions];
  v11 = [v9 conditionsPass:v10 registrationUser:v8];

  v12 = objc_autoreleasePoolPush();
  v13 = *(a1 + 32);
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v15 = v33 = v4;
    v16 = HMFBooleanToString();
    *buf = 138543874;
    v35 = v15;
    v36 = 2112;
    v37 = v16;
    v38 = 2112;
    v39 = v3;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Condition(s) passed: %@ for registration: %@", buf, 0x20u);

    v4 = v33;
  }

  objc_autoreleasePoolPop(v12);
  if (v11)
  {
    v17 = [v3 source];
    v18 = [v17 device];

    v19 = objc_autoreleasePoolPush();
    v20 = *(a1 + 32);
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v23 = *(a1 + 40);
      *buf = 138543874;
      v35 = v22;
      v36 = 2112;
      v37 = v18;
      v38 = 2112;
      v39 = v23;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Adding remote device: %@ to notify for updated Matter path: %@ ", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    [*(a1 + 48) addObject:v18];
  }

LABEL_15:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)handleRemovedEndpoint:(id)endpoint fromAccessory:(id)accessory
{
  v32 = *MEMORY[0x277D85DE8];
  endpointCopy = endpoint;
  accessoryCopy = accessory;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v27 = v11;
    v28 = 2112;
    v29 = endpointCopy;
    v30 = 2112;
    v31 = accessoryCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling removed endpointID=%@ from accessory: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  uuid = [accessoryCopy uuid];
  home = [(HMDAccessoryBulletinNotificationManager *)selfCopy home];
  backingStore = [home backingStore];
  context = [backingStore context];

  managedObjectContext = [context managedObjectContext];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __87__HMDAccessoryBulletinNotificationManager_Matter__handleRemovedEndpoint_fromAccessory___block_invoke;
  v21[3] = &unk_2786891E0;
  v22 = uuid;
  v23 = endpointCopy;
  v24 = managedObjectContext;
  v25 = selfCopy;
  v17 = managedObjectContext;
  v18 = endpointCopy;
  v19 = uuid;
  [v17 performBlock:v21];

  v20 = *MEMORY[0x277D85DE8];
}

void __87__HMDAccessoryBulletinNotificationManager_Matter__handleRemovedEndpoint_fromAccessory___block_invoke(id *a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = [MKFLocalBulletinEndpointRegistration fetchEndpointRegistrationForAccessoryUUID:a1[4] endpointID:a1[5] managedObjectContext:a1[6]];
  if (v2)
  {
    v3 = [MKFLocalBulletinMatterRegistration fetchAllMatterRegistrationsForEndpointID:a1[5] accessoryModelID:a1[4] managedObjectContext:a1[6]];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __87__HMDAccessoryBulletinNotificationManager_Matter__handleRemovedEndpoint_fromAccessory___block_invoke_53;
    v29[3] = &unk_27867A6A0;
    v26 = a1[7];
    v4 = a1[5];
    v5 = a1[4];
    v6 = a1[6];
    *&v7 = v5;
    *(&v7 + 1) = v6;
    *&v8 = v26;
    *(&v8 + 1) = v4;
    v30 = v8;
    v31 = v7;
    [v3 na_each:v29];
    [a1[6] deleteObject:v2];
    v9 = a1[6];
    v28 = 0;
    [v9 save:&v28];
    v10 = v28;
    v11 = objc_autoreleasePoolPush();
    v12 = a1[7];
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v27 = v10;
      v15 = v11;
      v16 = v3;
      v17 = a1[4];
      v18 = a1[5];
      v19 = HMFBooleanToString();
      *buf = 138544642;
      v33 = v14;
      v34 = 2112;
      v35 = v2;
      v36 = 2112;
      v37 = v18;
      v38 = 2112;
      v39 = v17;
      v3 = v16;
      v11 = v15;
      v10 = v27;
      v40 = 2112;
      v41 = v19;
      v42 = 2112;
      v43 = v27;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Removing local endpoint registration: %@ for removed endpointID=%@ on accessory with uuid=%@, was successful: %@ error: %@", buf, 0x3Eu);
    }

    objc_autoreleasePoolPop(v11);
    [a1[6] reset];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = a1[7];
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = a1[5];
      *buf = 138543618;
      v33 = v23;
      v34 = 2112;
      v35 = v24;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Unable to find local endpoint registration to match removed endpointID=%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __87__HMDAccessoryBulletinNotificationManager_Matter__handleRemovedEndpoint_fromAccessory___block_invoke_53(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = 138544130;
    v12 = v7;
    v13 = 2112;
    v14 = v3;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Removing local Matter registration: %@ for removed endpointID=%@ on accessory with uuid=%@", &v11, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 56) deleteObject:v3];

  v10 = *MEMORY[0x277D85DE8];
}

- (id)matterBulletinNotificationRegistrationsForMatterPath:(id)path
{
  pathCopy = path;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__137406;
  v19 = __Block_byref_object_dispose__137407;
  v20 = MEMORY[0x277CBEBF8];
  home = [(HMDAccessoryBulletinNotificationManager *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __104__HMDAccessoryBulletinNotificationManager_Matter__matterBulletinNotificationRegistrationsForMatterPath___block_invoke;
  v11[3] = &unk_27868A4D8;
  v8 = pathCopy;
  v12 = v8;
  selfCopy = self;
  v14 = &v15;
  [context unsafeSynchronousBlock:v11];
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __104__HMDAccessoryBulletinNotificationManager_Matter__matterBulletinNotificationRegistrationsForMatterPath___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accessory];
  v3 = [v2 uuid];
  v4 = [HMCContext findHAPAccessoryWithModelID:v3];

  if (v4)
  {
    v5 = [v4 matterPaths];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __104__HMDAccessoryBulletinNotificationManager_Matter__matterBulletinNotificationRegistrationsForMatterPath___block_invoke_50;
    v31[3] = &unk_27867A678;
    v32 = *(a1 + 32);
    v6 = [v5 na_flatMap:v31];

    if ([v6 count])
    {
      v7 = [MEMORY[0x277CBEB98] setWithArray:v6];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __104__HMDAccessoryBulletinNotificationManager_Matter__matterBulletinNotificationRegistrationsForMatterPath___block_invoke_52;
      v30[3] = &unk_27867A5D8;
      v30[4] = *(a1 + 40);
      v8 = [v7 na_map:v30];
      v9 = [v8 allObjects];
      v10 = *(*(a1 + 48) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      v19 = *(a1 + 40);
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        v28 = [*(a1 + 32) accessory];
        v22 = [v28 uuid];
        v23 = [*(a1 + 32) endpointID];
        [*(a1 + 32) clusterID];
        v24 = v29 = v18;
        v25 = [*(a1 + 32) attributeID];
        v26 = [*(a1 + 32) eventID];
        *buf = 138544642;
        v34 = v21;
        v35 = 2112;
        v36 = v22;
        v37 = 2112;
        v38 = v23;
        v39 = 2112;
        v40 = v24;
        v41 = 2112;
        v42 = v25;
        v43 = 2112;
        v44 = v26;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to find MKFMatterPath with accessoryUUID=%@ endpoint=%@ cluster=%@ attribute=%@ event=%@", buf, 0x3Eu);

        v18 = v29;
      }

      objc_autoreleasePoolPop(v18);
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 40);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [*(a1 + 32) accessory];
      v17 = [v16 uuid];
      *buf = 138543618;
      v34 = v15;
      v35 = 2112;
      v36 = v17;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch MKFHAPAccessory with uuid=%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v27 = *MEMORY[0x277D85DE8];
}

id __104__HMDAccessoryBulletinNotificationManager_Matter__matterBulletinNotificationRegistrationsForMatterPath___block_invoke_50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 endpointID];
  v5 = [*(a1 + 32) endpointID];
  v6 = HMFEqualObjects();

  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = [v3 clusterID];
  v8 = [*(a1 + 32) clusterID];
  v9 = HMFEqualObjects();

  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = [*(a1 + 32) attributeID];
  if (v10)
  {
    v11 = [v3 attributeID];
    v12 = [*(a1 + 32) attributeID];
    v13 = HMFEqualObjects();

    if ((v13 & 1) == 0)
    {

      goto LABEL_9;
    }
  }

  v14 = [*(a1 + 32) eventID];
  if (v14)
  {
    v15 = v14;
    v16 = [v3 eventID];
    v17 = [*(a1 + 32) eventID];
    v18 = HMFEqualObjects();

    if (v18)
    {
      goto LABEL_14;
    }

LABEL_9:
    v19 = 0;
    goto LABEL_10;
  }

LABEL_14:
  v19 = [v3 matterBulletinRegistrations];
LABEL_10:

  return v19;
}

id __104__HMDAccessoryBulletinNotificationManager_Matter__matterBulletinNotificationRegistrationsForMatterPath___block_invoke_52(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) matterRegistrationFromMKFRegistrationSafe:v3];
  if (!v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Skipping invalid working store registration: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)updateRegistrationsWithEnabledMatterPaths:(id)paths disabledMatterPaths:(id)matterPaths conditions:(id)conditions completion:(id)completion
{
  v52 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  matterPathsCopy = matterPaths;
  conditionsCopy = conditions;
  completionCopy = completion;
  home = [(HMDAccessoryBulletinNotificationManager *)self home];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __135__HMDAccessoryBulletinNotificationManager_Matter__updateRegistrationsWithEnabledMatterPaths_disabledMatterPaths_conditions_completion___block_invoke;
  v43[3] = &unk_27867A600;
  v15 = home;
  v44 = v15;
  v16 = conditionsCopy;
  v45 = v16;
  v33 = pathsCopy;
  v17 = [pathsCopy na_map:v43];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __135__HMDAccessoryBulletinNotificationManager_Matter__updateRegistrationsWithEnabledMatterPaths_disabledMatterPaths_conditions_completion___block_invoke_2;
  v41[3] = &unk_27867A628;
  v18 = v15;
  v42 = v18;
  v19 = [matterPathsCopy na_map:v41];
  v20 = objc_autoreleasePoolPush();
  selfCopy = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    *buf = 138543874;
    v47 = v23;
    v48 = 2112;
    v49 = v17;
    v50 = 2112;
    v51 = v19;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Updating Matter registrations enable: %@ disable: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v20);
  backingStore = [v18 backingStore];
  context = [backingStore context];

  managedObjectContext = [context managedObjectContext];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __135__HMDAccessoryBulletinNotificationManager_Matter__updateRegistrationsWithEnabledMatterPaths_disabledMatterPaths_conditions_completion___block_invoke_43;
  v34[3] = &unk_278688B58;
  v35 = v17;
  v36 = managedObjectContext;
  v37 = selfCopy;
  v38 = v19;
  v39 = context;
  v40 = completionCopy;
  v27 = context;
  v28 = completionCopy;
  v29 = v19;
  v30 = managedObjectContext;
  v31 = v17;
  [v27 performBlock:v34];

  v32 = *MEMORY[0x277D85DE8];
}

HMDMatterBulletinNotificationRegistration *__135__HMDAccessoryBulletinNotificationManager_Matter__updateRegistrationsWithEnabledMatterPaths_disabledMatterPaths_conditions_completion___block_invoke(uint64_t a1, void *a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 accessory];
  v5 = [v4 uuid];
  if (!v4)
  {
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  v6 = v5;
  if (!v5)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  v7 = [v3 endpointID];

  if (!v7)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  v8 = [v3 clusterID];

  if (!v8)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  v9 = [v3 attributeID];
  if (v9)
  {
  }

  else
  {
    v10 = [v3 eventID];

    if (!v10)
    {
      v20 = _HMFPreconditionFailure();
      return __135__HMDAccessoryBulletinNotificationManager_Matter__updateRegistrationsWithEnabledMatterPaths_disabledMatterPaths_conditions_completion___block_invoke_2(v20);
    }
  }

  v11 = [v4 home];
  v12 = [v11 uuid];
  v13 = [*(a1 + 32) uuid];
  v14 = [v12 isEqual:v13];

  if ((v14 & 1) == 0)
  {
LABEL_16:
    _HMFPreconditionFailure();
  }

  v15 = [HMDMatterBulletinNotificationRegistration alloc];
  v21[0] = v3;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v17 = [(HMDMatterBulletinNotificationRegistration *)v15 initWithMatterPaths:v16 conditions:*(a1 + 40)];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

HMDMatterBulletinNotificationRegistration *__135__HMDAccessoryBulletinNotificationManager_Matter__updateRegistrationsWithEnabledMatterPaths_disabledMatterPaths_conditions_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 accessory];
  v5 = [v4 uuid];
  if (!v4)
  {
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  v6 = v5;
  if (!v5)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  v7 = [v3 endpointID];

  if (!v7)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  v8 = [v3 clusterID];

  if (!v8)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  v9 = [v3 attributeID];
  if (v9)
  {
  }

  else
  {
    v10 = [v3 eventID];

    if (!v10)
    {
      v21 = _HMFPreconditionFailure();
      return __135__HMDAccessoryBulletinNotificationManager_Matter__updateRegistrationsWithEnabledMatterPaths_disabledMatterPaths_conditions_completion___block_invoke_43(v21);
    }
  }

  v11 = [v4 home];
  v12 = [v11 uuid];
  v13 = [*(a1 + 32) uuid];
  v14 = [v12 isEqual:v13];

  if ((v14 & 1) == 0)
  {
LABEL_16:
    _HMFPreconditionFailure();
  }

  v15 = [HMDMatterBulletinNotificationRegistration alloc];
  v22[0] = v3;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v17 = [MEMORY[0x277CBEB98] set];
  v18 = [(HMDMatterBulletinNotificationRegistration *)v15 initWithMatterPaths:v16 conditions:v17];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

void __135__HMDAccessoryBulletinNotificationManager_Matter__updateRegistrationsWithEnabledMatterPaths_disabledMatterPaths_conditions_completion___block_invoke_43(uint64_t a1)
{
  v58 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v3 = [MEMORY[0x277CBEB58] set];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __135__HMDAccessoryBulletinNotificationManager_Matter__updateRegistrationsWithEnabledMatterPaths_disabledMatterPaths_conditions_completion___block_invoke_2_45;
  v44[3] = &unk_27867A650;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v45 = v5;
  v46 = v6;
  v7 = v2;
  v47 = v7;
  [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v44];
  v8 = *(a1 + 56);
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __135__HMDAccessoryBulletinNotificationManager_Matter__updateRegistrationsWithEnabledMatterPaths_disabledMatterPaths_conditions_completion___block_invoke_48;
  v40[3] = &unk_27867A650;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v41 = v9;
  v42 = v10;
  v11 = v3;
  v43 = v11;
  [v8 hmf_enumerateWithAutoreleasePoolUsingBlock:v40];
  if ([v7 hmf_isEmpty] && objc_msgSend(v11, "hmf_isEmpty"))
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 48);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = *(a1 + 32);
      v17 = *(a1 + 56);
      *buf = 138543874;
      v49 = v15;
      v50 = 2112;
      v51 = v16;
      v52 = 2112;
      v53 = v17;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Updating Matter registrations enable: %@ disable: %@ resulted in no changes to local store, not saving and not messaging primary", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    v18 = _Block_copy(*(a1 + 72));
    v19 = v18;
    if (v18)
    {
      (*(v18 + 2))(v18, 0);
    }
  }

  else
  {
    v20 = *(a1 + 64);
    v39 = 0;
    v21 = [v20 save:&v39];
    v19 = v39;
    v22 = objc_autoreleasePoolPush();
    v23 = *(a1 + 48);
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v35 = v19;
      v36 = v7;
      v26 = v22;
      v27 = v11;
      v28 = *(a1 + 32);
      v29 = *(a1 + 56);
      HMFBooleanToString();
      v30 = v37 = v21;
      *buf = 138544386;
      v49 = v25;
      v50 = 2112;
      v51 = v28;
      v11 = v27;
      v22 = v26;
      v52 = 2112;
      v53 = v29;
      v19 = v35;
      v7 = v36;
      v54 = 2112;
      v55 = v30;
      v56 = 2112;
      v57 = v35;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Updating local Matter registrations enable: %@ disable: %@ was successful: %@ error: %@", buf, 0x34u);

      v21 = v37;
    }

    objc_autoreleasePoolPop(v22);
    if (v21)
    {
      v31 = [*(a1 + 48) workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __135__HMDAccessoryBulletinNotificationManager_Matter__updateRegistrationsWithEnabledMatterPaths_disabledMatterPaths_conditions_completion___block_invoke_49;
      block[3] = &unk_27868A728;
      block[4] = *(a1 + 48);
      dispatch_async(v31, block);
    }

    [*(a1 + 64) reset];
    v32 = _Block_copy(*(a1 + 72));
    v33 = v32;
    if (v32)
    {
      (*(v32 + 2))(v32, v19);
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __135__HMDAccessoryBulletinNotificationManager_Matter__updateRegistrationsWithEnabledMatterPaths_disabledMatterPaths_conditions_completion___block_invoke_2_45(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 matterPaths];
  v5 = [v4 firstObject];

  v6 = [v5 accessory];
  v7 = [v6 uuid];

  v8 = [v5 endpointID];
  v9 = [v5 clusterID];
  v10 = [v5 attributeID];
  v11 = [v5 eventID];
  v34 = v7;
  v12 = [MKFLocalBulletinMatterRegistration fetchMatterRegistrationForEndpointID:v8 clusterID:v9 attributeID:v10 eventID:v11 accessoryModelID:v7 managedObjectContext:*(a1 + 32)];

  v13 = v12 == 0;
  if (!v12)
  {
    v14 = MEMORY[0x277CBE408];
    v15 = +[MKFLocalBulletinMatterRegistration entity];
    v16 = [v15 name];
    v12 = [v14 insertNewObjectForEntityForName:v16 inManagedObjectContext:*(a1 + 32)];

    v17 = [v5 endpointID];
    [v12 setEndpointID:v17];

    v18 = [v5 clusterID];
    [v12 setClusterID:v18];

    v19 = [v5 attributeID];
    [v12 setAttributeID:v19];

    v20 = [v5 eventID];
    [v12 setEventID:v20];

    [v12 setAccessoryModelID:v34];
    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 40);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v24;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Saved new local Matter registration", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
  }

  if (([v12 enabled] & 1) == 0)
  {
    v13 = 1;
    [v12 setEnabled:1];
  }

  v25 = [v12 conditions];
  v26 = [MEMORY[0x277CBEB98] set];
  if (v25)
  {
    v27 = [HMDBulletinNotificationRegistrationUtilities conditionsFromLocalConditions:v25];

    v26 = v27;
  }

  v28 = [v3 conditions];
  v29 = [v26 isEqualToSet:v28];

  if (v29)
  {
    if (!v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v25)
    {
      [v12 removeConditions:v25];
    }

    v30 = *(a1 + 32);
    v31 = [v3 conditions];
    v32 = [HMDBulletinNotificationRegistrationUtilities createAndAddLocalConditionsToRegistration:v12 moc:v30 conditions:v31];
  }

  [*(a1 + 48) addObject:v3];
LABEL_16:

  v33 = *MEMORY[0x277D85DE8];
}

void __135__HMDAccessoryBulletinNotificationManager_Matter__updateRegistrationsWithEnabledMatterPaths_disabledMatterPaths_conditions_completion___block_invoke_48(id *a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 matterPaths];
  v5 = [v4 firstObject];

  v6 = [v5 endpointID];
  v7 = [v5 clusterID];
  v8 = [v5 attributeID];
  v9 = [v5 eventID];
  v10 = [v5 accessory];
  v11 = [v10 uuid];
  v12 = [MKFLocalBulletinMatterRegistration fetchMatterRegistrationForEndpointID:v6 clusterID:v7 attributeID:v8 eventID:v9 accessoryModelID:v11 managedObjectContext:a1[4]];

  if (v12)
  {
    v13 = [v12 conditions];
    if (v13)
    {
      [v12 removeConditions:v13];
    }

    [a1[4] deleteObject:v12];
    [a1[6] addObject:v3];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = a1[5];
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v17;
      v21 = 2112;
      v22 = v3;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Did not find local registration to disable matching registration: %@, skipping", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)disableBulletinForAccessory:(id)accessory endpointID:(id)d completion:(id)completion
{
  accessoryCopy = accessory;
  dCopy = d;
  completionCopy = completion;
  home = [(HMDAccessoryBulletinNotificationManager *)self home];
  home2 = [accessoryCopy home];
  uuid = [home2 uuid];
  uuid2 = [home uuid];
  v15 = [uuid isEqual:uuid2];

  if (v15)
  {
    backingStore = [home backingStore];
    context = [backingStore context];

    managedObjectContext = [context managedObjectContext];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __101__HMDAccessoryBulletinNotificationManager_Matter__disableBulletinForAccessory_endpointID_completion___block_invoke;
    v24[3] = &unk_278688978;
    v25 = accessoryCopy;
    v26 = dCopy;
    v27 = managedObjectContext;
    selfCopy = self;
    v29 = completionCopy;
    v19 = completionCopy;
    v20 = managedObjectContext;
    v21 = dCopy;
    v22 = accessoryCopy;
    [v20 performBlock:v24];
  }

  else
  {
    v23 = _HMFPreconditionFailure();
    __101__HMDAccessoryBulletinNotificationManager_Matter__disableBulletinForAccessory_endpointID_completion___block_invoke(v23);
  }
}

void __101__HMDAccessoryBulletinNotificationManager_Matter__disableBulletinForAccessory_endpointID_completion___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) uuid];
  v3 = [MKFLocalBulletinEndpointRegistration fetchEndpointRegistrationForAccessoryUUID:v2 endpointID:*(a1 + 40) managedObjectContext:*(a1 + 48)];

  if (v3)
  {
    if ([v3 enabled])
    {
      [v3 setEnabled:0];
      v4 = *(a1 + 48);
      v27 = 0;
      [v4 save:&v27];
      v5 = v27;
      v6 = objc_autoreleasePoolPush();
      v7 = *(a1 + 56);
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v10 = [HMDBulletinNotificationRegistrationUtilities endpointRegistrationFromLocalRegistration:v3];
        v11 = HMFBooleanToString();
        *buf = 138544130;
        v29 = v9;
        v30 = 2112;
        v31 = v10;
        v32 = 2112;
        v33 = v11;
        v34 = 2112;
        v35 = v5;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Disabling local endpoint registration: %@ was successful: %@ error: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v6);
      [*(a1 + 48) reset];
      v12 = _Block_copy(*(a1 + 64));
      v13 = v12;
      if (v12)
      {
        (*(v12 + 2))(v12, v5);
      }

      goto LABEL_11;
    }

    v20 = objc_autoreleasePoolPush();
    v21 = *(a1 + 56);
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [HMDBulletinNotificationRegistrationUtilities endpointRegistrationFromLocalRegistration:v3];
      *buf = 138543618;
      v29 = v23;
      v30 = 2112;
      v31 = v24;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Disabling local endpoint registration: %@, resulted in no changes to local store, not saving", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v25 = _Block_copy(*(a1 + 64));
    v5 = v25;
    if (v25)
    {
      v25[2](v25, 0);
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 56);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [*(a1 + 32) uuid];
      v19 = *(a1 + 40);
      *buf = 138543874;
      v29 = v17;
      v30 = 2112;
      v31 = v18;
      v32 = 2112;
      v33 = v19;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unable to find local endpoint registration to enable matching accessoryUUID: %@ endpointID: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v5 = _Block_copy(*(a1 + 64));
    if (v5)
    {
      v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      v5[2](v5, v13);
LABEL_11:
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)enableBulletinForAccessory:(id)accessory endpointID:(id)d conditions:(id)conditions completion:(id)completion
{
  accessoryCopy = accessory;
  dCopy = d;
  conditionsCopy = conditions;
  completionCopy = completion;
  home = [(HMDAccessoryBulletinNotificationManager *)self home];
  home2 = [accessoryCopy home];
  uuid = [home2 uuid];
  uuid2 = [home uuid];
  v18 = [uuid isEqual:uuid2];

  if (v18)
  {
    backingStore = [home backingStore];
    context = [backingStore context];

    managedObjectContext = [context managedObjectContext];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __111__HMDAccessoryBulletinNotificationManager_Matter__enableBulletinForAccessory_endpointID_conditions_completion___block_invoke;
    v28[3] = &unk_278688B58;
    v29 = accessoryCopy;
    v30 = dCopy;
    v31 = managedObjectContext;
    selfCopy = self;
    v33 = conditionsCopy;
    v34 = completionCopy;
    v22 = conditionsCopy;
    v23 = completionCopy;
    v24 = managedObjectContext;
    v25 = dCopy;
    v26 = accessoryCopy;
    [v24 performBlock:v28];
  }

  else
  {
    v27 = _HMFPreconditionFailure();
    __111__HMDAccessoryBulletinNotificationManager_Matter__enableBulletinForAccessory_endpointID_conditions_completion___block_invoke(v27);
  }
}

void __111__HMDAccessoryBulletinNotificationManager_Matter__enableBulletinForAccessory_endpointID_conditions_completion___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) uuid];
  v3 = [MKFLocalBulletinEndpointRegistration fetchEndpointRegistrationForAccessoryUUID:v2 endpointID:*(a1 + 40) managedObjectContext:*(a1 + 48)];

  if (v3)
  {
    v4 = [v3 enabled];
    if ((v4 & 1) == 0)
    {
      [v3 setEnabled:1];
    }

    v5 = [v3 conditions];
    v6 = [MEMORY[0x277CBEB98] set];
    v7 = v6;
    if (v5)
    {
      v8 = [HMDBulletinNotificationRegistrationUtilities conditionsFromLocalConditions:v5];

      if ([v8 isEqualToSet:*(a1 + 64)])
      {
        v7 = v8;
        goto LABEL_12;
      }

      [v3 removeConditions:v5];
      v7 = v8;
    }

    else if ([v6 isEqualToSet:*(a1 + 64)])
    {
LABEL_12:
      if (v4)
      {
        v15 = objc_autoreleasePoolPush();
        v16 = *(a1 + 56);
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = HMFGetLogIdentifier();
          v19 = [HMDBulletinNotificationRegistrationUtilities endpointRegistrationFromLocalRegistration:v3];
          *buf = 138543618;
          v36 = v18;
          v37 = 2112;
          v38 = v19;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Enabling local endpoint registration: %@, resulted in no changes to local store, not saving", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v15);
        v20 = _Block_copy(*(a1 + 72));
        v21 = v20;
        if (v20)
        {
          (*(v20 + 2))(v20, 0);
        }

LABEL_24:

        goto LABEL_25;
      }

LABEL_19:
      v23 = *(a1 + 48);
      v34 = 0;
      [v23 save:&v34];
      v21 = v34;
      v24 = objc_autoreleasePoolPush();
      v25 = *(a1 + 56);
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        [HMDBulletinNotificationRegistrationUtilities endpointRegistrationFromLocalRegistration:v3];
        v28 = v33 = v24;
        v29 = HMFBooleanToString();
        *buf = 138544130;
        v36 = v27;
        v37 = 2112;
        v38 = v28;
        v39 = 2112;
        v40 = v29;
        v41 = 2112;
        v42 = v21;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Enabling local endpoint registration: %@ was successful: %@ error: %@", buf, 0x2Au);

        v24 = v33;
      }

      objc_autoreleasePoolPop(v24);
      [*(a1 + 48) reset];
      v30 = _Block_copy(*(a1 + 72));
      v31 = v30;
      if (v30)
      {
        (*(v30 + 2))(v30, v21);
      }

      goto LABEL_24;
    }

    v22 = [HMDBulletinNotificationRegistrationUtilities createAndAddLocalConditionsToRegistration:v3 moc:*(a1 + 48) conditions:*(a1 + 64)];
    goto LABEL_19;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 56);
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [*(a1 + 32) uuid];
    v14 = *(a1 + 40);
    *buf = 138543874;
    v36 = v12;
    v37 = 2112;
    v38 = v13;
    v39 = 2112;
    v40 = v14;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unable to find local endpoint registration to enable matching accessoryUUID: %@ and endpointID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v5 = _Block_copy(*(a1 + 72));
  if (v5)
  {
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (v5)[2](v5, v7);
LABEL_25:
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (id)bulletinBoardNotificationForAccessory:(id)accessory endpointID:(id)d
{
  v53 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  dCopy = d;
  home = [(HMDAccessoryBulletinNotificationManager *)self home];
  home2 = [accessoryCopy home];
  uuid = [home2 uuid];
  uuid2 = [home uuid];
  v12 = [uuid isEqual:uuid2];

  if ((v12 & 1) == 0)
  {
    _HMFPreconditionFailure();
  }

  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__137406;
  v43 = __Block_byref_object_dispose__137407;
  v44 = 0;
  backingStore = [home backingStore];
  context = [backingStore context];

  managedObjectContext = [context managedObjectContext];
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = __100__HMDAccessoryBulletinNotificationManager_Matter__bulletinBoardNotificationForAccessory_endpointID___block_invoke;
  v32 = &unk_27867F678;
  v16 = accessoryCopy;
  v33 = v16;
  v17 = dCopy;
  v34 = v17;
  v18 = managedObjectContext;
  v37 = &v45;
  v38 = &v39;
  v35 = v18;
  selfCopy = self;
  [v18 performBlockAndWait:&v29];
  v19 = [HMDMatterBulletinBoardNotification alloc];
  v20 = [(HMDMatterBulletinBoardNotification *)v19 initWithAccessory:v16 endpointID:v17 enabled:*(v46 + 24) condition:v40[5], v29, v30, v31, v32];
  workQueue = [(HMDAccessoryBulletinNotificationManager *)self workQueue];
  msgDispatcher = [v16 msgDispatcher];
  [(HMDMatterBulletinBoardNotification *)v20 configureWithWorkQueue:workQueue messageDispatcher:msgDispatcher];

  v23 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v26 = HMFGetLogIdentifier();
    *buf = 138543618;
    v50 = v26;
    v51 = 2112;
    v52 = v20;
    _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Creating matter bulletin notification %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v23);
  _Block_object_dispose(&v39, 8);

  _Block_object_dispose(&v45, 8);
  v27 = *MEMORY[0x277D85DE8];

  return v20;
}

void __100__HMDAccessoryBulletinNotificationManager_Matter__bulletinBoardNotificationForAccessory_endpointID___block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) uuid];
  v3 = [MKFLocalBulletinEndpointRegistration fetchEndpointRegistrationForAccessoryUUID:v2 endpointID:*(a1 + 40) managedObjectContext:*(a1 + 48)];

  if (v3)
  {
    *(*(*(a1 + 64) + 8) + 24) = [v3 enabled];
    v4 = [HMDBulletinNotificationRegistrationUtilities endpointRegistrationFromLocalRegistration:v3];
    v5 = [v4 predicate];
    v6 = *(*(a1 + 72) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 56);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [HMDBulletinNotificationRegistrationUtilities endpointRegistrationFromLocalRegistration:v3];
      v38 = v3;
      v13 = v8;
      v15 = *(a1 + 32);
      v14 = *(a1 + 40);
      v16 = *(*(*(a1 + 64) + 8) + 24);
      v17 = HMFBooleanToString();
      v18 = *(*(*(a1 + 72) + 8) + 40);
      *buf = 138544642;
      v41 = v11;
      v42 = 2112;
      v43 = v12;
      v44 = 2112;
      v45 = v15;
      v46 = 2112;
      v47 = v14;
      v8 = v13;
      v3 = v38;
      v48 = 2112;
      v49 = v17;
      v50 = 2112;
      v51 = v18;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Found local registration: %@ for accessory=%@/endpointID=%@, setting enabled: %@ condition: %@", buf, 0x3Eu);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = *(a1 + 56);
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v23 = *(a1 + 32);
      v24 = *(a1 + 40);
      *buf = 138543874;
      v41 = v22;
      v42 = 2112;
      v43 = v23;
      v44 = 2112;
      v45 = v24;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Did not find any local registrations matching accessory=%@/endpointID=%@ for bulletin board notification, creating initial registration now", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    v25 = MEMORY[0x277CBE408];
    v26 = +[MKFLocalBulletinEndpointRegistration entity];
    v27 = [v26 name];
    v4 = [v25 insertNewObjectForEntityForName:v27 inManagedObjectContext:*(a1 + 48)];

    v28 = [*(a1 + 32) uuid];
    [v4 setAccessoryModelID:v28];

    [v4 setEndpointID:*(a1 + 40)];
    v29 = [MEMORY[0x277CBEB98] set];
    [v4 setConditions:v29];

    *(*(*(a1 + 64) + 8) + 24) = 0;
    [v4 setEnabled:*(*(*(a1 + 64) + 8) + 24)];
    v30 = *(a1 + 48);
    v39 = 0;
    [v30 save:&v39];
    v31 = v39;
    v32 = objc_autoreleasePoolPush();
    v33 = *(a1 + 56);
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = HMFGetLogIdentifier();
      v36 = HMFBooleanToString();
      *buf = 138544130;
      v41 = v35;
      v42 = 2112;
      v43 = v4;
      v44 = 2112;
      v45 = v36;
      v46 = 2112;
      v47 = v31;
      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@Saving initial local registration: %@ for bulletin board notification was successful: %@ error: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v32);
    [*(a1 + 48) reset];
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (NSArray)matterRegistrations
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__137406;
  v17 = __Block_byref_object_dispose__137407;
  v18 = MEMORY[0x277CBEBF8];
  home = [(HMDAccessoryBulletinNotificationManager *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__HMDAccessoryBulletinNotificationManager_Matter__matterRegistrations__block_invoke;
  v9[3] = &unk_27868A4D8;
  v6 = home;
  v10 = v6;
  selfCopy = self;
  v12 = &v13;
  [context unsafeSynchronousBlock:v9];
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __70__HMDAccessoryBulletinNotificationManager_Matter__matterRegistrations__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [*(a1 + 32) uuid];
  v4 = [HMCContext findHomeWithModelID:v3];

  v5 = [v4 users];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __70__HMDAccessoryBulletinNotificationManager_Matter__matterRegistrations__block_invoke_2;
  v18[3] = &unk_27867ED50;
  v6 = v2;
  v7 = *(a1 + 40);
  v19 = v6;
  v20 = v7;
  [v5 na_each:v18];

  v8 = [v4 guests];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__HMDAccessoryBulletinNotificationManager_Matter__matterRegistrations__block_invoke_3;
  v15[3] = &unk_27867ED78;
  v9 = *(a1 + 40);
  v16 = v6;
  v17 = v9;
  v10 = v6;
  [v8 na_each:v15];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__HMDAccessoryBulletinNotificationManager_Matter__matterRegistrations__block_invoke_4;
  v14[3] = &unk_27867A5D8;
  v14[4] = *(a1 + 40);
  v11 = [v10 na_map:v14];
  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

void __70__HMDAccessoryBulletinNotificationManager_Matter__matterRegistrations__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = [a2 bulletinRegistrations];
  v4 = [v3 _matterRegistrationsFromBulletinRegistrations:v5];
  [v2 addObjectsFromArray:v4];
}

void __70__HMDAccessoryBulletinNotificationManager_Matter__matterRegistrations__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = [a2 bulletinRegistrations];
  v4 = [v3 _matterRegistrationsFromBulletinRegistrations:v5];
  [v2 addObjectsFromArray:v4];
}

id __70__HMDAccessoryBulletinNotificationManager_Matter__matterRegistrations__block_invoke_4(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) matterRegistrationFromMKFRegistrationSafe:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Skipping invalid working store registration: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_matterRegistrationsFromBulletinRegistrations:(id)registrations
{
  v3 = MEMORY[0x277CBEB18];
  registrationsCopy = registrations;
  array = [v3 array];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __97__HMDAccessoryBulletinNotificationManager_Matter___matterRegistrationsFromBulletinRegistrations___block_invoke;
  v8[3] = &unk_27867ED28;
  v6 = array;
  v9 = v6;
  [registrationsCopy na_each:v8];

  return v6;
}

void __97__HMDAccessoryBulletinNotificationManager_Matter___matterRegistrationsFromBulletinRegistrations___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 castIfMatterBulletinRegistration];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

+ (id)matterBulletinRegistrationsForSource:(id)source context:(id)context
{
  v42[2] = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  contextCopy = context;
  v6 = +[_MKFMatterBulletinRegistration fetchRequest];
  v7 = MEMORY[0x277CCAC30];
  userUUID = [sourceCopy userUUID];
  deviceAddress = [sourceCopy deviceAddress];
  idsIdentifier = [deviceAddress idsIdentifier];
  deviceAddress2 = [sourceCopy deviceAddress];
  idsDestination = [deviceAddress2 idsDestination];
  v13 = [v7 predicateWithFormat:@"(%K == %@) && (%K == %@) && (%K == %@)", @"user.modelID", userUUID, @"deviceIdsIdentifier", idsIdentifier, @"deviceIdsDestination", idsDestination];

  [v6 setPredicate:v13];
  v14 = MEMORY[0x277CCAC30];
  userUUID2 = [sourceCopy userUUID];
  deviceAddress3 = [sourceCopy deviceAddress];
  idsIdentifier2 = [deviceAddress3 idsIdentifier];
  deviceAddress4 = [sourceCopy deviceAddress];
  idsDestination2 = [deviceAddress4 idsDestination];
  v20 = [v14 predicateWithFormat:@"(%K == %@) && (%K == %@) && (%K == %@)", @"guest.modelID", userUUID2, @"deviceIdsIdentifier", idsIdentifier2, @"deviceIdsDestination", idsDestination2];

  v21 = v20;
  v22 = MEMORY[0x277CCA920];
  v42[0] = v13;
  v42[1] = v20;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
  v24 = [v22 orPredicateWithSubpredicates:v23];
  [v6 setPredicate:v24];

  v37 = 0;
  v25 = [contextCopy executeFetchRequest:v6 error:&v37];
  v26 = v37;
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v34 = v21;
    v28 = objc_autoreleasePoolPush();
    selfCopy = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v31;
      v40 = 2112;
      v41 = sourceCopy;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch Matter bulletin registrations for source: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    v27 = MEMORY[0x277CBEBF8];
    v21 = v34;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v27;
}

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  home = [(HMDAccessoryBulletinNotificationManager *)self home];
  uuid = [home uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)timerDidFire:(id)fire
{
  v15 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  workQueue = [(HMDAccessoryBulletinNotificationManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  synchronizeWithPrimaryDebounceTimer = [(HMDAccessoryBulletinNotificationManager *)self synchronizeWithPrimaryDebounceTimer];

  if (synchronizeWithPrimaryDebounceTimer == fireCopy)
  {
    synchronizeWithPrimaryDebounceTimer2 = [(HMDAccessoryBulletinNotificationManager *)self synchronizeWithPrimaryDebounceTimer];
    [synchronizeWithPrimaryDebounceTimer2 suspend];

    [(HMDAccessoryBulletinNotificationManager *)self _synchronizeLocalRegistrationsWithPrimaryResident];
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
  workQueue = [(HMDAccessoryBulletinNotificationManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __91__HMDAccessoryBulletinNotificationManager_handleCurrentDeviceOrAccountUpdatedNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

- (void)handlePrimaryResidentUpdateNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDAccessoryBulletinNotificationManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__HMDAccessoryBulletinNotificationManager_handlePrimaryResidentUpdateNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

- (id)_accessoryRegistrationFromMKFRegistrationSafe:(id)safe
{
  v45 = *MEMORY[0x277D85DE8];
  safeCopy = safe;
  characteristic = [safeCopy characteristic];
  v6 = characteristic;
  if (characteristic)
  {
    service = [characteristic service];
    v8 = service;
    if (service)
    {
      accessory = [service accessory];
      if (accessory)
      {
        instanceID = [v6 instanceID];
        if (instanceID)
        {
          instanceID2 = [v8 instanceID];
          if (instanceID2)
          {
            modelID = [accessory modelID];
            if (modelID)
            {
              v13 = [HMDBulletinNotificationRegistrationUtilities accessoryRegistrationFromMKFRegistration:safeCopy];
            }

            else
            {
              v34 = objc_autoreleasePoolPush();
              selfCopy = self;
              v36 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
              {
                HMFGetLogIdentifier();
                v37 = v40 = v34;
                *buf = 138543618;
                v42 = v37;
                v43 = 2112;
                v44 = safeCopy;
                _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_FAULT, "%{public}@Nil accessoryUUID for working store registration: %@", buf, 0x16u);

                v34 = v40;
              }

              objc_autoreleasePoolPop(v34);
              v13 = 0;
            }
          }

          else
          {
            v30 = objc_autoreleasePoolPush();
            selfCopy2 = self;
            v32 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
            {
              v33 = HMFGetLogIdentifier();
              *buf = 138543618;
              v42 = v33;
              v43 = 2112;
              v44 = safeCopy;
              _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_FAULT, "%{public}@Nil serviceInstanceID for working store registration: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v30);
            v13 = 0;
          }
        }

        else
        {
          v26 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v28 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
          {
            v29 = HMFGetLogIdentifier();
            *buf = 138543618;
            v42 = v29;
            v43 = 2112;
            v44 = safeCopy;
            _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_FAULT, "%{public}@Nil characteristicInstanceID for working store registration: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v26);
          v13 = 0;
        }
      }

      else
      {
        v22 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          v25 = HMFGetLogIdentifier();
          *buf = 138543618;
          v42 = v25;
          v43 = 2112;
          v44 = safeCopy;
          _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_FAULT, "%{public}@Nil mkfHAPAccessory for working store registration: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v22);
        v13 = 0;
      }
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543618;
        v42 = v21;
        v43 = 2112;
        v44 = safeCopy;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_FAULT, "%{public}@Nil mkfService for working store registration: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      v13 = 0;
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy6 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v42 = v17;
      v43 = 2112;
      v44 = safeCopy;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_FAULT, "%{public}@Nil mkfCharacteristic for working store registration: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v13 = 0;
  }

  v38 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_mkfLocalServiceRegistrationsWithManagedObjectContext:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  currentHomeAccessoryUUIDs = [(HMDAccessoryBulletinNotificationManager *)self currentHomeAccessoryUUIDs];
  v6 = +[MKFLocalBulletinServiceRegistration fetchRequest];
  v18 = 0;
  v7 = [contextCopy executeFetchRequest:v6 error:&v18];
  v8 = v18;
  if (v7)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __97__HMDAccessoryBulletinNotificationManager__mkfLocalServiceRegistrationsWithManagedObjectContext___block_invoke;
    v16[3] = &unk_27867F128;
    v17 = currentHomeAccessoryUUIDs;
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
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch local service registrations, error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v9 = MEMORY[0x277CBEBF8];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t __97__HMDAccessoryBulletinNotificationManager__mkfLocalServiceRegistrationsWithManagedObjectContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 accessoryModelID];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (id)_mkfLocalCharacteristicRegistrationsWithManagedObjectContext:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  currentHomeAccessoryUUIDs = [(HMDAccessoryBulletinNotificationManager *)self currentHomeAccessoryUUIDs];
  v6 = +[MKFLocalBulletinCharacteristicRegistration fetchRequest];
  v18 = 0;
  v7 = [contextCopy executeFetchRequest:v6 error:&v18];
  v8 = v18;
  if (v7)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __104__HMDAccessoryBulletinNotificationManager__mkfLocalCharacteristicRegistrationsWithManagedObjectContext___block_invoke;
    v16[3] = &unk_27867F100;
    v17 = currentHomeAccessoryUUIDs;
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
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch local characteristic registrations, error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v9 = MEMORY[0x277CBEBF8];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t __104__HMDAccessoryBulletinNotificationManager__mkfLocalCharacteristicRegistrationsWithManagedObjectContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 accessoryModelID];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (id)currentHomeAccessoryUUIDs
{
  home = [(HMDAccessoryBulletinNotificationManager *)self home];
  accessories = [home accessories];
  v4 = [accessories na_map:&__block_literal_global_99];

  v5 = [MEMORY[0x277CBEB98] setWithArray:v4];

  return v5;
}

id __68__HMDAccessoryBulletinNotificationManager_currentHomeAccessoryUUIDs__block_invoke(uint64_t a1, void *a2)
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
  v5 = [v4 uuid];

  return v5;
}

- (void)_updateRegistrationsOnPrimaryWithEnabledRegistrations:(id)registrations disabledRegistrations:(id)disabledRegistrations
{
  v35 = *MEMORY[0x277D85DE8];
  registrationsCopy = registrations;
  disabledRegistrationsCopy = disabledRegistrations;
  workQueue = [(HMDAccessoryBulletinNotificationManager *)self workQueue];
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
  home = [(HMDAccessoryBulletinNotificationManager *)selfCopy home];
  if ([home bulletinNotificationsSupported])
  {
    source = [(HMDAccessoryBulletinNotificationManager *)selfCopy source];
    v15 = source;
    if (source)
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __119__HMDAccessoryBulletinNotificationManager__updateRegistrationsOnPrimaryWithEnabledRegistrations_disabledRegistrations___block_invoke;
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

void __119__HMDAccessoryBulletinNotificationManager__updateRegistrationsOnPrimaryWithEnabledRegistrations_disabledRegistrations___block_invoke(uint64_t a1, void *a2)
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
      v12 = "%{public}@Unable to update characteristic registrations on primary resident: source: %@, [enabled : %@], [disabled : %@], error: %@";
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
    v12 = "%{public}@Updating characteristic registrations with primary resident was successful, source: %@, [enabled: %@], [disabled: %@]";
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
  workQueue = [(HMDAccessoryBulletinNotificationManager *)self workQueue];
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
  [(HMDAccessoryBulletinNotificationManager *)selfCopy requestSynchronizeRegistrations];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handlePrimaryResidentUpdateNotification:(id)notification
{
  v20 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  workQueue = [(HMDAccessoryBulletinNotificationManager *)self workQueue];
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
  [(HMDAccessoryBulletinNotificationManager *)selfCopy requestSynchronizeRegistrations];
  home = [(HMDAccessoryBulletinNotificationManager *)selfCopy home];
  isCurrentDeviceConfirmedPrimaryResident = [home isCurrentDeviceConfirmedPrimaryResident];

  currentPrimary = [(HMDAccessoryBulletinNotificationManager *)selfCopy currentPrimary];
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
      [(HMDAccessoryBulletinNotificationManager *)selfCopy _handleDeviceBecamePrimary];
    }
  }

  else if (currentPrimary)
  {
    [(HMDAccessoryBulletinNotificationManager *)selfCopy _handleDeviceBecameNotPrimary];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_synchronizeLocalRegistrationsWithPrimaryResident
{
  v97 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryBulletinNotificationManager *)self workQueue];
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
  source = [(HMDAccessoryBulletinNotificationManager *)selfCopy source];
  if (source)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v93 = 0x3032000000;
    v94 = __Block_byref_object_copy__196731;
    v95 = __Block_byref_object_dispose__196732;
    v96 = [MEMORY[0x277CBEB58] set];
    home = [(HMDAccessoryBulletinNotificationManager *)selfCopy home];
    backingStore = [home backingStore];
    context = [backingStore context];

    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __92__HMDAccessoryBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke;
    v78[3] = &unk_278689D20;
    v78[4] = selfCopy;
    v11 = source;
    v79 = v11;
    v12 = context;
    v80 = v12;
    p_buf = &buf;
    [v12 unsafeSynchronousBlock:v78];
    v72 = 0;
    v73 = &v72;
    v74 = 0x3032000000;
    v75 = __Block_byref_object_copy__196731;
    v76 = __Block_byref_object_dispose__196732;
    v77 = [MEMORY[0x277CBEB58] set];
    managedObjectContext = [v12 managedObjectContext];
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __92__HMDAccessoryBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_81;
    v69[3] = &unk_27868A4D8;
    v69[4] = selfCopy;
    v14 = managedObjectContext;
    v70 = v14;
    v71 = &v72;
    [v14 performBlockAndWait:v69];
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = HMFGetLogIdentifier();
      v19 = v73[5];
      v20 = *(*(&buf + 1) + 40);
      *v88 = 138543874;
      *&v88[4] = v18;
      *&v88[12] = 2112;
      *&v88[14] = v19;
      *&v88[22] = 2112;
      v89 = v20;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Enabled local characteristic registrations: %@ remote characteristic registrations: %@", v88, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    *v88 = 0;
    *&v88[8] = v88;
    *&v88[16] = 0x3032000000;
    v89 = __Block_byref_object_copy__196731;
    v90 = __Block_byref_object_dispose__196732;
    v91 = [MEMORY[0x277CBEB58] set];
    v63 = 0;
    v64 = &v63;
    v65 = 0x3032000000;
    v66 = __Block_byref_object_copy__196731;
    v67 = __Block_byref_object_dispose__196732;
    v68 = [MEMORY[0x277CBEB58] set];
    v21 = +[HMDCoreData featuresDataSource];
    isRVCEnabled = [v21 isRVCEnabled];

    if (isRVCEnabled)
    {
      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = __92__HMDAccessoryBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_85;
      v59[3] = &unk_278689D20;
      v59[4] = v16;
      v60 = v11;
      v61 = v12;
      v62 = v88;
      [v61 unsafeSynchronousBlock:v59];
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __92__HMDAccessoryBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_88;
      v56[3] = &unk_27868A4D8;
      v56[4] = v16;
      v57 = v14;
      v58 = &v63;
      [v57 performBlockAndWait:v56];
      v23 = objc_autoreleasePoolPush();
      v24 = v16;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v26 = HMFGetLogIdentifier();
        v27 = v64[5];
        v28 = *(*&v88[8] + 40);
        *v82 = 138543874;
        v83 = v26;
        v84 = 2112;
        v85 = v27;
        v86 = 2112;
        v87 = v28;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Enabled local Matter registrations: %@ remote Matter registrations: %@", v82, 0x20u);
      }

      objc_autoreleasePoolPop(v23);
    }

    v29 = [MEMORY[0x277CBEB58] set];
    v30 = v73[5];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __92__HMDAccessoryBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_91;
    v53[3] = &unk_27867F068;
    v55 = &buf;
    v31 = v29;
    v54 = v31;
    [v30 hmf_enumerateWithAutoreleasePoolUsingBlock:v53];
    v32 = +[HMDCoreData featuresDataSource];
    isRVCEnabled2 = [v32 isRVCEnabled];

    if (isRVCEnabled2)
    {
      v34 = v64[5];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __92__HMDAccessoryBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_3;
      v50[3] = &unk_27867F0B8;
      v52 = v88;
      v51 = v31;
      [v34 hmf_enumerateWithAutoreleasePoolUsingBlock:v50];
    }

    v35 = [MEMORY[0x277CBEB98] setWithSet:*(*(&buf + 1) + 40)];
    v36 = +[HMDCoreData featuresDataSource];
    isRVCEnabled3 = [v36 isRVCEnabled];

    if (isRVCEnabled3)
    {
      v38 = [v35 setByAddingObjectsFromSet:*(*&v88[8] + 40)];

      v35 = v38;
    }

    if ([v31 hmf_isEmpty] && objc_msgSend(v35, "hmf_isEmpty"))
    {
      v39 = objc_autoreleasePoolPush();
      v40 = v16;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = HMFGetLogIdentifier();
        *v82 = 138543362;
        v83 = v42;
        _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, "%{public}@No changes detected to sync with primary", v82, 0xCu);
      }

      objc_autoreleasePoolPop(v39);
    }

    else
    {
      v43 = [v31 copy];
      [(HMDAccessoryBulletinNotificationManager *)v16 _updateRegistrationsOnPrimaryWithEnabledRegistrations:v43 disabledRegistrations:v35];
    }

    _Block_object_dispose(&v63, 8);
    _Block_object_dispose(v88, 8);

    _Block_object_dispose(&v72, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v44 = objc_autoreleasePoolPush();
    v45 = selfCopy;
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v47;
      _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve bulletin notification registration source for current device when synchronizing registrations with primary", &buf, 0xCu);
    }

    objc_autoreleasePoolPop(v44);
  }

  v48 = *MEMORY[0x277D85DE8];
}

void __92__HMDAccessoryBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) managedObjectContext];
  v6 = [v3 _characteristicBulletinRegistrationsForSource:v4 context:v5];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __92__HMDAccessoryBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_2;
  v8[3] = &unk_27867EFA0;
  v7 = *(a1 + 56);
  v8[4] = *(a1 + 32);
  v8[5] = v7;
  [v6 na_each:v8];
}

void __92__HMDAccessoryBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_81(uint64_t a1)
{
  v2 = [*(a1 + 32) _mkfLocalCharacteristicRegistrationsWithManagedObjectContext:*(a1 + 40)];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __92__HMDAccessoryBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_2_82;
  v3[3] = &unk_27867EFC8;
  v3[4] = *(a1 + 48);
  [v2 na_each:v3];
}

void __92__HMDAccessoryBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_85(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) managedObjectContext];
  v6 = [v3 matterBulletinRegistrationsForSource:v4 context:v5];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __92__HMDAccessoryBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_2_86;
  v8[3] = &unk_27867EFF0;
  v7 = *(a1 + 56);
  v8[4] = *(a1 + 32);
  v8[5] = v7;
  [v6 na_each:v8];
}

void __92__HMDAccessoryBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_88(uint64_t a1)
{
  v2 = [*(a1 + 32) mkfLocalMatterRegistrationsWithManagedObjectContext:*(a1 + 40)];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __92__HMDAccessoryBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_2_89;
  v4[3] = &unk_27867F018;
  v3 = *(a1 + 48);
  v4[4] = *(a1 + 32);
  v4[5] = v3;
  [v2 na_each:v4];
}

void __92__HMDAccessoryBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_91(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __92__HMDAccessoryBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_2_92;
  v7[3] = &unk_27867F040;
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

void __92__HMDAccessoryBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __92__HMDAccessoryBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_4;
  v7[3] = &unk_27867F090;
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

uint64_t __92__HMDAccessoryBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 matterPaths];
  v4 = [*(a1 + 32) matterPaths];
  v5 = [v4 firstObject];
  v6 = [v3 containsObject:v5];

  return v6;
}

uint64_t __92__HMDAccessoryBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_2_92(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 accessoryUUID];
  v5 = [*(a1 + 32) accessoryUUID];
  if ([v4 isEqual:v5])
  {
    v6 = [v3 serviceInstanceID];
    v7 = [*(a1 + 32) serviceInstanceID];
    if ([v6 isEqual:v7])
    {
      v8 = [v3 characteristicInstanceID];
      v9 = [*(a1 + 32) characteristicInstanceID];
      v10 = [v8 isEqual:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __92__HMDAccessoryBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_2_89(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 enabled])
  {
    v3 = [*(a1 + 32) home];
    v4 = [HMDBulletinNotificationRegistrationUtilities matterRegistrationFromLocalRegistration:v5 home:v3];

    [*(*(*(a1 + 40) + 8) + 40) addObject:v4];
  }
}

void __92__HMDAccessoryBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_2_86(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) matterRegistrationFromMKFRegistrationSafe:v3];
  v5 = v4;
  if (v4)
  {
    v6 = *(*(*(a1 + 40) + 8) + 40);
    v7 = [v4 registration];
    [v6 addObject:v7];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Skipping invalid working store Matter registration: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __92__HMDAccessoryBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_2_82(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 enabled])
  {
    v3 = [HMDBulletinNotificationRegistrationUtilities accessoryRegistrationFromLocalRegistration:v4];
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }
}

void __92__HMDAccessoryBulletinNotificationManager__synchronizeLocalRegistrationsWithPrimaryResident__block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _accessoryRegistrationFromMKFRegistrationSafe:v3];
  v5 = v4;
  if (v4)
  {
    v6 = *(*(*(a1 + 40) + 8) + 40);
    v7 = [v4 registration];
    [v6 addObject:v7];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Skipping invalid working store characteristic registration: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)requestSynchronizeRegistrations
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    synchronizeWithPrimaryDebounceTimer = [(HMDAccessoryBulletinNotificationManager *)selfCopy synchronizeWithPrimaryDebounceTimer];
    [synchronizeWithPrimaryDebounceTimer isRunning];
    v8 = HMFBooleanToString();
    v11 = 138543618;
    v12 = v6;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Requesting synchronize registrations, debounce timer running: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  synchronizeWithPrimaryDebounceTimer2 = [(HMDAccessoryBulletinNotificationManager *)selfCopy synchronizeWithPrimaryDebounceTimer];
  [synchronizeWithPrimaryDebounceTimer2 resume];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleDeviceBecameNotPrimary
{
  v13 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryBulletinNotificationManager *)self workQueue];
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
  [(HMDAccessoryBulletinNotificationManager *)selfCopy setCurrentPrimary:0];
  accessoryRegistrations = [(HMDAccessoryBulletinNotificationManager *)selfCopy accessoryRegistrations];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__HMDAccessoryBulletinNotificationManager__handleDeviceBecameNotPrimary__block_invoke;
  v10[3] = &unk_27867EF00;
  v10[4] = selfCopy;
  [accessoryRegistrations na_each:v10];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleDeviceBecamePrimary
{
  v13 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryBulletinNotificationManager *)self workQueue];
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
  [(HMDAccessoryBulletinNotificationManager *)selfCopy setCurrentPrimary:1];
  accessoryRegistrations = [(HMDAccessoryBulletinNotificationManager *)selfCopy accessoryRegistrations];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__HMDAccessoryBulletinNotificationManager__handleDeviceBecamePrimary__block_invoke;
  v10[3] = &unk_27867EF00;
  v10[4] = selfCopy;
  [accessoryRegistrations na_each:v10];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleAccessoryBulletinNotificationRegistration:(id)registration removed:(BOOL)removed
{
  removedCopy = removed;
  v39 = *MEMORY[0x277D85DE8];
  registrationCopy = registration;
  registration = [registrationCopy registration];
  home = [(HMDAccessoryBulletinNotificationManager *)self home];
  hapAccessories = [home hapAccessories];
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __100__HMDAccessoryBulletinNotificationManager__handleAccessoryBulletinNotificationRegistration_removed___block_invoke;
  v28 = &unk_2786830C8;
  v10 = registration;
  v29 = v10;
  v11 = [hapAccessories na_firstObjectPassingTest:&v25];

  if (v11)
  {
    characteristicInstanceID = [v10 characteristicInstanceID];
    v13 = [v11 hmdCharacteristicForInstanceId:characteristicInstanceID];

    if (v13)
    {
      v30 = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
      [v11 setNotificationsEnabled:!removedCopy forCharacteristics:v14 clientIdentifier:@"com.apple.HomeKitDaemon.bulletinNotificationManager"];
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        characteristicInstanceID2 = [v10 characteristicInstanceID];
        *buf = 138544130;
        v32 = v22;
        v33 = 2112;
        v34 = characteristicInstanceID2;
        v35 = 2112;
        v36 = v11;
        v37 = 2112;
        v38 = v10;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to find characteristic with instance ID: %@ on accessory: %@ and registration: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v19);
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v18;
      v33 = 2112;
      v34 = v10;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to find HAP Accessory from registration: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __100__HMDAccessoryBulletinNotificationManager__handleAccessoryBulletinNotificationRegistration_removed___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) accessoryUUID];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (id)_updateReasonsByCharacteristicFromMessage:(id)message
{
  v64 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v34 = messageCopy;
  [messageCopy dictionaryForKey:@"kCharacteristicNotificationsKey"];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v60 = 0u;
  v37 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
  if (v37)
  {
    v35 = *v58;
    v4 = *MEMORY[0x277CD21C0];
    do
    {
      v5 = 0;
      do
      {
        if (*v58 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v40 = v5;
        v6 = *(*(&v57 + 1) + 8 * v5);
        v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v6];
        home = [(HMDAccessoryBulletinNotificationManager *)self home];
        v39 = v7;
        v9 = [home accessoryWithUUID:v7];

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

        v48 = v11;
        if (v11)
        {
          v12 = [obj hmf_dictionaryForKey:v6];
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v13 = [v12 countByEnumeratingWithState:&v53 objects:v62 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v54;
            v41 = *v54;
            v42 = v12;
            do
            {
              v16 = 0;
              v43 = v14;
              do
              {
                if (*v54 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = [v12 hmf_dictionaryForKey:*(*(&v53 + 1) + 8 * v16)];
                v18 = HAPInstanceIDFromValue();
                v19 = [v48 findService:v18];
                if (v17)
                {
                  v20 = v19 == 0;
                }

                else
                {
                  v20 = 1;
                }

                if (!v20)
                {
                  v44 = v19;
                  v45 = v17;
                  v46 = v16;
                  v51 = 0u;
                  v52 = 0u;
                  v49 = 0u;
                  v50 = 0u;
                  v21 = v17;
                  v22 = [v21 countByEnumeratingWithState:&v49 objects:v61 count:16];
                  if (v22)
                  {
                    v23 = v22;
                    v24 = *v50;
                    do
                    {
                      for (i = 0; i != v23; ++i)
                      {
                        if (*v50 != v24)
                        {
                          objc_enumerationMutation(v21);
                        }

                        v26 = *(*(&v49 + 1) + 8 * i);
                        v27 = HAPInstanceIDFromValue();
                        v28 = [v48 findCharacteristic:v27 forService:v18];
                        if (v28)
                        {
                          v29 = [v21 hmf_dictionaryForKey:v26];
                          v30 = [v29 objectForKey:v4];

                          if (v30)
                          {
                            v31 = [v29 hmf_numberForKey:v4];
                            [strongToStrongObjectsMapTable setObject:v31 forKey:v28];
                          }
                        }
                      }

                      v23 = [v21 countByEnumeratingWithState:&v49 objects:v61 count:16];
                    }

                    while (v23);
                  }

                  v15 = v41;
                  v12 = v42;
                  v14 = v43;
                  v19 = v44;
                  v17 = v45;
                  v16 = v46;
                }

                ++v16;
              }

              while (v16 != v14);
              v14 = [v12 countByEnumeratingWithState:&v53 objects:v62 count:16];
            }

            while (v14);
          }
        }

        v5 = v40 + 1;
      }

      while (v40 + 1 != v37);
      v37 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
    }

    while (v37);
  }

  v32 = *MEMORY[0x277D85DE8];

  return strongToStrongObjectsMapTable;
}

- (id)_characteristicsWithPassingLocalRegistrationForCharacteristics:(id)characteristics
{
  v4 = MEMORY[0x277CBEB18];
  characteristicsCopy = characteristics;
  array = [v4 array];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __106__HMDAccessoryBulletinNotificationManager__characteristicsWithPassingLocalRegistrationForCharacteristics___block_invoke;
  v13 = &unk_278682908;
  selfCopy = self;
  v15 = array;
  v7 = array;
  [characteristicsCopy na_each:&v10];

  v8 = [v7 copy];

  return v8;
}

void __106__HMDAccessoryBulletinNotificationManager__characteristicsWithPassingLocalRegistrationForCharacteristics___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 service];
  v4 = [v3 bulletinBoardNotification];

  if ([v4 isEnabled])
  {
    v5 = [v4 condition];
    v6 = [HMDNotificationConditionConverter conditionsFromPredicate:v5];

    v7 = [*(a1 + 32) evaluator];
    v8 = [*(a1 + 32) home];
    v9 = [v8 currentUser];
    v10 = [v7 conditionsPass:v6 registrationUser:v9];

    if (v10)
    {
      [*(a1 + 40) addObject:v11];
    }
  }
}

- (id)_devicesToNotifyForCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = [(HMDAccessoryBulletinNotificationManager *)self accessoryBulletinNotificationRegistrationsForCharacteristic:characteristicCopy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__HMDAccessoryBulletinNotificationManager__devicesToNotifyForCharacteristic___block_invoke;
  v11[3] = &unk_27867EF78;
  v11[4] = self;
  v12 = characteristicCopy;
  v13 = v5;
  v7 = v5;
  v8 = characteristicCopy;
  [v6 na_each:v11];
  v9 = [v7 copy];

  return v9;
}

void __77__HMDAccessoryBulletinNotificationManager__devicesToNotifyForCharacteristic___block_invoke(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 registration];
  v5 = [v3 source];
  v6 = [*(a1 + 32) home];
  v7 = [v5 userUUID];
  v8 = [v6 userWithUUID:v7];

  if (!v8)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = *(a1 + 32);
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543874;
      v35 = v27;
      v36 = 2112;
      v37 = v4;
      v38 = 2112;
      v39 = v5;
      v28 = "%{public}@Unable to evaluate registration: %@, no matching user for source: %@";
      v29 = v26;
      v30 = OS_LOG_TYPE_ERROR;
      v31 = 32;
LABEL_13:
      _os_log_impl(&dword_229538000, v29, v30, v28, buf, v31);
    }

LABEL_14:

    objc_autoreleasePoolPop(v24);
    goto LABEL_15;
  }

  if (([v8 isAccessCurrentlyAllowedBySchedule] & 1) == 0)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = *(a1 + 32);
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v27;
      v28 = "%{public}@Cannot send the notification as the user is outside schedule";
      v29 = v26;
      v30 = OS_LOG_TYPE_INFO;
      v31 = 12;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v9 = [*(a1 + 32) evaluator];
  v10 = [v4 conditions];
  v11 = [v9 conditionsPass:v10 registrationUser:v8];

  v12 = objc_autoreleasePoolPush();
  v13 = *(a1 + 32);
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v15 = v33 = v4;
    v16 = HMFBooleanToString();
    *buf = 138543874;
    v35 = v15;
    v36 = 2112;
    v37 = v16;
    v38 = 2112;
    v39 = v3;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Condition(s) passed: %@ for registration: %@", buf, 0x20u);

    v4 = v33;
  }

  objc_autoreleasePoolPop(v12);
  if (v11)
  {
    v17 = [v3 source];
    v18 = [v17 device];

    v19 = objc_autoreleasePoolPush();
    v20 = *(a1 + 32);
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v23 = *(a1 + 40);
      *buf = 138543874;
      v35 = v22;
      v36 = 2112;
      v37 = v18;
      v38 = 2112;
      v39 = v23;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Adding remote device: %@ to notify for updated characteristic: %@ ", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    [*(a1 + 48) addObject:v18];
  }

LABEL_15:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)handleRemovedAccessory:(id)accessory
{
  v29 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v26 = v8;
    v27 = 2112;
    v28 = accessoryCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling removed accessory: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  uuid = [accessoryCopy uuid];
  home = [(HMDAccessoryBulletinNotificationManager *)selfCopy home];
  backingStore = [home backingStore];
  context = [backingStore context];

  managedObjectContext = [context managedObjectContext];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __66__HMDAccessoryBulletinNotificationManager_handleRemovedAccessory___block_invoke;
  v19[3] = &unk_278689550;
  v20 = uuid;
  v21 = managedObjectContext;
  v22 = selfCopy;
  v23 = accessoryCopy;
  v24 = context;
  v14 = context;
  v15 = accessoryCopy;
  v16 = managedObjectContext;
  v17 = uuid;
  [v14 unsafeSynchronousBlock:v19];

  v18 = *MEMORY[0x277D85DE8];
}

void __66__HMDAccessoryBulletinNotificationManager_handleRemovedAccessory___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = +[MKFLocalBulletinAccessoryRegistration fetchRequest];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@)", @"accessoryModelID", *(a1 + 32)];
  [v2 setPredicate:v3];
  v4 = [*(a1 + 40) executeFetchRequest:v2 error:0];
  if (v4)
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __66__HMDAccessoryBulletinNotificationManager_handleRemovedAccessory___block_invoke_56;
    v26[3] = &unk_27867EF50;
    v5 = *(a1 + 56);
    v26[4] = *(a1 + 48);
    v27 = v5;
    v28 = *(a1 + 40);
    [v4 na_each:v26];
    v6 = *(a1 + 64);
    v25 = 0;
    [v6 save:&v25];
    v7 = v25;
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 48);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = v4;
      v13 = v7;
      v14 = v2;
      v15 = v8;
      v16 = v3;
      v17 = *(a1 + 56);
      v18 = HMFBooleanToString();
      *buf = 138544130;
      v30 = v11;
      v31 = 2112;
      v32 = v17;
      v3 = v16;
      v8 = v15;
      v2 = v14;
      v7 = v13;
      v4 = v12;
      v33 = 2112;
      v34 = v18;
      v35 = 2112;
      v36 = v7;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Removing local registrations for removed accessory: %@ was successful: %@ error: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = *(a1 + 48);
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v23 = *(a1 + 56);
      *buf = 138543618;
      v30 = v22;
      v31 = 2112;
      v32 = v23;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Did not find any local registrations to remove for removed accessory: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __66__HMDAccessoryBulletinNotificationManager_handleRemovedAccessory___block_invoke_56(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v10 = 138543874;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Removing local registration: %@ for removed accessory: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 48) deleteObject:v3];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleRemovedService:(id)service
{
  v28 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v25 = v8;
    v26 = 2112;
    v27 = serviceCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling removed service: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  accessory = [serviceCopy accessory];
  uuid = [accessory uuid];

  home = [(HMDAccessoryBulletinNotificationManager *)selfCopy home];
  backingStore = [home backingStore];
  context = [backingStore context];

  managedObjectContext = [context managedObjectContext];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __64__HMDAccessoryBulletinNotificationManager_handleRemovedService___block_invoke;
  v19[3] = &unk_2786891E0;
  v20 = uuid;
  v21 = serviceCopy;
  v22 = managedObjectContext;
  v23 = selfCopy;
  v15 = managedObjectContext;
  v16 = serviceCopy;
  v17 = uuid;
  [v15 performBlock:v19];

  v18 = *MEMORY[0x277D85DE8];
}

void __64__HMDAccessoryBulletinNotificationManager_handleRemovedService___block_invoke(id *a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = [a1[5] instanceID];
  v4 = [MKFLocalBulletinServiceRegistration fetchServiceRegistrationForAccessoryUUID:v2 serviceInstanceID:v3 managedObjectContext:a1[6]];

  if (v4)
  {
    v5 = [a1[5] characteristics];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __64__HMDAccessoryBulletinNotificationManager_handleRemovedService___block_invoke_46;
    v25[3] = &unk_27867EF28;
    v6 = a1[4];
    v7 = a1[5];
    *&v8 = a1[6];
    *(&v8 + 1) = a1[7];
    *&v9 = v6;
    *(&v9 + 1) = v7;
    v26 = v9;
    v27 = v8;
    [v5 na_each:v25];

    [a1[6] deleteObject:v4];
    v10 = a1[6];
    v24 = 0;
    [v10 save:&v24];
    v11 = v24;
    v12 = objc_autoreleasePoolPush();
    v13 = a1[7];
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = a1[5];
      v17 = HMFBooleanToString();
      *buf = 138544386;
      v29 = v15;
      v30 = 2112;
      v31 = v4;
      v32 = 2112;
      v33 = v16;
      v34 = 2112;
      v35 = v17;
      v36 = 2112;
      v37 = v11;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Removing local service registration: %@ for removed service: %@ was successful: %@ error: %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v12);
    [a1[6] reset];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = a1[7];
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = a1[5];
      *buf = 138543618;
      v29 = v21;
      v30 = 2112;
      v31 = v22;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Unable to find local service registration to match removed service: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __64__HMDAccessoryBulletinNotificationManager_handleRemovedService___block_invoke_46(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) instanceID];
  v6 = [v3 instanceID];
  v7 = [MKFLocalBulletinCharacteristicRegistration fetchCharacteristicRegistrationForAccessoryUUID:v4 serviceInstanceID:v5 characteristicInstanceID:v6 managedObjectContext:*(a1 + 48)];

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 56);
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v11)
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 40);
      v16 = 138544130;
      v17 = v12;
      v18 = 2112;
      v19 = v7;
      v20 = 2112;
      v21 = v3;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Removing local characteristic registration: %@ for characteristic: %@ on removed service: %@", &v16, 0x2Au);
    }

    objc_autoreleasePoolPop(v8);
    [*(a1 + 48) deleteObject:v7];
  }

  else
  {
    if (v11)
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v14;
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Did not find local characteristic registration to remove for characteristic: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleEnabledRegistrations:(id)registrations
{
  registrationsCopy = registrations;
  workQueue = [(HMDAccessoryBulletinNotificationManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__HMDAccessoryBulletinNotificationManager_handleEnabledRegistrations___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = registrationsCopy;
  selfCopy = self;
  v6 = registrationsCopy;
  dispatch_async(workQueue, v7);
}

uint64_t __70__HMDAccessoryBulletinNotificationManager_handleEnabledRegistrations___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __70__HMDAccessoryBulletinNotificationManager_handleEnabledRegistrations___block_invoke_2;
  v3[3] = &unk_27867EF00;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 na_each:v3];
}

- (void)handleDisabledRegistrations:(id)registrations
{
  registrationsCopy = registrations;
  workQueue = [(HMDAccessoryBulletinNotificationManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__HMDAccessoryBulletinNotificationManager_handleDisabledRegistrations___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = registrationsCopy;
  selfCopy = self;
  v6 = registrationsCopy;
  dispatch_async(workQueue, v7);
}

uint64_t __71__HMDAccessoryBulletinNotificationManager_handleDisabledRegistrations___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __71__HMDAccessoryBulletinNotificationManager_handleDisabledRegistrations___block_invoke_2;
  v3[3] = &unk_27867EF00;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 na_each:v3];
}

- (id)bulletinCharacteristicsFromChangedCharacteristics:(id)characteristics message:(id)message
{
  v93 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  messageCopy = message;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    shortDescription = [messageCopy shortDescription];
    *buf = 138543874;
    v88 = v11;
    v89 = 2112;
    v90 = characteristicsCopy;
    v91 = 2112;
    v92 = shortDescription;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Filtering bulletin characteristics from changed characteristics: %@ message: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  if (![characteristicsCopy count])
  {
    v20 = MEMORY[0x277CBEBF8];
    goto LABEL_54;
  }

  home = [(HMDAccessoryBulletinNotificationManager *)selfCopy home];
  if (![home isCurrentDeviceConfirmedPrimaryResident])
  {
    if (!messageCopy)
    {
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v43 = characteristicsCopy;
      v44 = [v43 countByEnumeratingWithState:&v77 objects:v85 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = *v78;
        while (2)
        {
          for (i = 0; i != v45; ++i)
          {
            if (*v78 != v46)
            {
              objc_enumerationMutation(v43);
            }

            accessory = [*(*(&v77 + 1) + 8 * i) accessory];
            if ([accessory isSecuritySessionOpen])
            {
              v57 = objc_autoreleasePoolPush();
              v58 = selfCopy;
              v59 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
              {
                v60 = HMFGetLogIdentifier();
                shortDescription2 = [accessory shortDescription];
                *buf = 138543618;
                v88 = v60;
                v89 = 2112;
                v90 = shortDescription2;
                _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_INFO, "%{public}@Nil message & not primary, directly connected to accessory: %@, should fall back to legacy evaluation", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v57);
              goto LABEL_52;
            }
          }

          v45 = [v43 countByEnumeratingWithState:&v77 objects:v85 count:16];
          if (v45)
          {
            continue;
          }

          break;
        }
      }

      v49 = objc_autoreleasePoolPush();
      v50 = selfCopy;
      v51 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        v52 = HMFGetLogIdentifier();
        *buf = 138543362;
        v88 = v52;
        _os_log_impl(&dword_229538000, v51, OS_LOG_TYPE_INFO, "%{public}@Nil message & not primary, should not show bulletins", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v49);
      v19 = MEMORY[0x277CBEBF8];
      v20 = MEMORY[0x277CBEBF8];
      goto LABEL_53;
    }

    name = [messageCopy name];
    v22 = [name isEqual:@"kCharacterisiticsChangedInternalNotificationKey"];

    if (v22)
    {
      v23 = [(HMDAccessoryBulletinNotificationManager *)selfCopy _updateReasonsByCharacteristicFromMessage:messageCopy];
      if ([v23 count])
      {
        v68 = home;
        v69 = messageCopy;
        [MEMORY[0x277CBEB18] array];
        v71 = v70 = characteristicsCopy;
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        obj = characteristicsCopy;
        v76 = [obj countByEnumeratingWithState:&v81 objects:v86 count:16];
        if (v76)
        {
          v24 = *v82;
          v72 = v23;
          v73 = selfCopy;
          v74 = *v82;
          do
          {
            for (j = 0; j != v76; ++j)
            {
              if (*v82 != v24)
              {
                objc_enumerationMutation(obj);
              }

              v26 = *(*(&v81 + 1) + 8 * j);
              v27 = [v23 objectForKey:v26];
              unsignedIntegerValue = [v27 unsignedIntegerValue];
              service = [v26 service];
              bulletinBoardNotification = [service bulletinBoardNotification];
              isEnabled = [bulletinBoardNotification isEnabled];

              if (isEnabled)
              {
                v32 = objc_autoreleasePoolPush();
                v33 = selfCopy;
                v34 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
                {
                  v35 = HMFGetLogIdentifier();
                  shortDescription3 = [v26 shortDescription];
                  *buf = 138543618;
                  v88 = v35;
                  v89 = 2112;
                  v90 = shortDescription3;
                  _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@Notification is enabled for characteristic: %@", buf, 0x16u);

                  v23 = v72;
                  selfCopy = v73;
                }

                objc_autoreleasePoolPop(v32);
                accessory2 = [v26 accessory];
                if ([accessory2 isSecuritySessionOpen] && objc_msgSend(v26, "isNotificationEnabled"))
                {
                  v38 = objc_autoreleasePoolPush();
                  v39 = v33;
                  v40 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
                  {
                    v41 = HMFGetLogIdentifier();
                    shortDescription4 = [accessory2 shortDescription];
                    *buf = 138543618;
                    v88 = v41;
                    v89 = 2112;
                    v90 = shortDescription4;
                    _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, "%{public}@Directly connected to accessory: %@ and notification enabled, ignoring remote characteristic change", buf, 0x16u);

                    selfCopy = v73;
                    v23 = v72;
                  }

                  objc_autoreleasePoolPop(v38);
                }

                else if (unsignedIntegerValue)
                {
                  [v71 addObject:v26];
                }

                v24 = v74;
              }
            }

            v76 = [obj countByEnumeratingWithState:&v81 objects:v86 count:16];
          }

          while (v76);
        }

        v18 = [v71 copy];
        messageCopy = v69;
        characteristicsCopy = v70;
        home = v68;
        goto LABEL_8;
      }

      v62 = objc_autoreleasePoolPush();
      v63 = selfCopy;
      v64 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
      {
        v65 = HMFGetLogIdentifier();
        *buf = 138543362;
        v88 = v65;
        _os_log_impl(&dword_229538000, v64, OS_LOG_TYPE_INFO, "%{public}@Message missing update reasons change, should fall back to legacy evaluation", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v62);
    }

    else
    {
      v53 = objc_autoreleasePoolPush();
      v54 = selfCopy;
      v55 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        v56 = HMFGetLogIdentifier();
        *buf = 138543362;
        v88 = v56;
        _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_INFO, "%{public}@Message is not characteristics changed, should fall back to legacy evaluation", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v53);
    }

LABEL_52:
    v20 = 0;
    v19 = MEMORY[0x277CBEBF8];
    goto LABEL_53;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = selfCopy;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543362;
    v88 = v17;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@We are the primary, evaluating registrations directly", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v14);
  v18 = [(HMDAccessoryBulletinNotificationManager *)v15 _characteristicsWithPassingLocalRegistrationForCharacteristics:characteristicsCopy];
LABEL_8:
  v19 = v18;
  v20 = v19;
LABEL_53:

LABEL_54:
  v66 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)characteristicsByDestinationForCharacteristics:(id)characteristics
{
  v4 = MEMORY[0x277CBEB38];
  characteristicsCopy = characteristics;
  dictionary = [v4 dictionary];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __90__HMDAccessoryBulletinNotificationManager_characteristicsByDestinationForCharacteristics___block_invoke;
  v10[3] = &unk_27867EED8;
  v10[4] = self;
  v7 = [characteristicsCopy na_reduceWithInitialValue:dictionary reducer:v10];

  v8 = [v7 copy];

  return v8;
}

id __90__HMDAccessoryBulletinNotificationManager_characteristicsByDestinationForCharacteristics___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) _devicesToNotifyForCharacteristic:v5];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __90__HMDAccessoryBulletinNotificationManager_characteristicsByDestinationForCharacteristics___block_invoke_2;
  v13[3] = &unk_27867EEB0;
  v8 = v6;
  v14 = v8;
  v15 = v5;
  v9 = v5;
  [v7 na_each:v13];
  v10 = v15;
  v11 = v8;

  return v8;
}

void __90__HMDAccessoryBulletinNotificationManager_characteristicsByDestinationForCharacteristics___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = [a2 remoteDestinationString];
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB58] set];
    [*(a1 + 32) setObject:v3 forKeyedSubscript:v4];
  }

  [v3 addObject:*(a1 + 40)];
}

- (id)accessoryBulletinNotificationRegistrationsForCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__196731;
  v19 = __Block_byref_object_dispose__196732;
  v20 = MEMORY[0x277CBEBF8];
  home = [(HMDAccessoryBulletinNotificationManager *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __103__HMDAccessoryBulletinNotificationManager_accessoryBulletinNotificationRegistrationsForCharacteristic___block_invoke;
  v11[3] = &unk_27868A4D8;
  v8 = characteristicCopy;
  v12 = v8;
  selfCopy = self;
  v14 = &v15;
  [context unsafeSynchronousBlock:v11];
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __103__HMDAccessoryBulletinNotificationManager_accessoryBulletinNotificationRegistrationsForCharacteristic___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) service];
  v3 = [v2 uuid];

  v4 = [HMCContext findServiceWithModelID:v3];
  if (v4)
  {
    v5 = [*(a1 + 32) instanceID];
    v6 = [HMCContext findCharacteristicWithInstanceID:v5 service:v4];

    if (v6)
    {
      v7 = [v6 bulletinRegistrations];
      v8 = v7;
      if (v7)
      {
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __103__HMDAccessoryBulletinNotificationManager_accessoryBulletinNotificationRegistrationsForCharacteristic___block_invoke_40;
        v23[3] = &unk_27867EDA0;
        v23[4] = *(a1 + 40);
        v9 = [v7 na_map:v23];
        v10 = *(*(a1 + 48) + 8);
        v11 = *(v10 + 40);
        *(v10 + 40) = v9;
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = *(a1 + 40);
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v21 = *(a1 + 32);
        *buf = 138543618;
        v25 = v20;
        v26 = 2112;
        v27 = v21;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch characteristic: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 40);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = *(a1 + 32);
      *buf = 138543618;
      v25 = v15;
      v26 = 2112;
      v27 = v16;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch service for characteristic: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v22 = *MEMORY[0x277D85DE8];
}

id __103__HMDAccessoryBulletinNotificationManager_accessoryBulletinNotificationRegistrationsForCharacteristic___block_invoke_40(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _accessoryRegistrationFromMKFRegistrationSafe:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Skipping invalid working store registration: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)updateRegistrationsWithEnabledCharacteristics:(id)characteristics disabledCharacteristics:(id)disabledCharacteristics conditions:(id)conditions completion:(id)completion
{
  v50 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  disabledCharacteristicsCopy = disabledCharacteristics;
  conditionsCopy = conditions;
  completionCopy = completion;
  home = [(HMDAccessoryBulletinNotificationManager *)self home];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __135__HMDAccessoryBulletinNotificationManager_updateRegistrationsWithEnabledCharacteristics_disabledCharacteristics_conditions_completion___block_invoke;
  v41[3] = &unk_27867EE10;
  v15 = home;
  v42 = v15;
  v16 = conditionsCopy;
  v43 = v16;
  v32 = characteristicsCopy;
  v17 = [characteristicsCopy na_map:v41];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __135__HMDAccessoryBulletinNotificationManager_updateRegistrationsWithEnabledCharacteristics_disabledCharacteristics_conditions_completion___block_invoke_2;
  v39[3] = &unk_27867EE38;
  v18 = v15;
  v40 = v18;
  v19 = [disabledCharacteristicsCopy na_map:v39];
  v20 = objc_autoreleasePoolPush();
  selfCopy = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    *buf = 138543874;
    v45 = v23;
    v46 = 2112;
    v47 = v17;
    v48 = 2112;
    v49 = v19;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Updating characteristic registrations enable: %@ disable: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v20);
  backingStore = [v18 backingStore];
  context = [backingStore context];

  managedObjectContext = [context managedObjectContext];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __135__HMDAccessoryBulletinNotificationManager_updateRegistrationsWithEnabledCharacteristics_disabledCharacteristics_conditions_completion___block_invoke_34;
  v33[3] = &unk_278688978;
  v34 = v17;
  v35 = managedObjectContext;
  v36 = v19;
  v37 = selfCopy;
  v38 = completionCopy;
  v27 = completionCopy;
  v28 = v19;
  v29 = managedObjectContext;
  v30 = v17;
  [v29 performBlock:v33];

  v31 = *MEMORY[0x277D85DE8];
}

HMDAccessoryBulletinNotificationRegistration *__135__HMDAccessoryBulletinNotificationManager_updateRegistrationsWithEnabledCharacteristics_disabledCharacteristics_conditions_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 accessory];
  v5 = [v4 home];
  v6 = [v5 uuid];
  v7 = [*(a1 + 32) uuid];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    v9 = [v4 uuid];
    v10 = [v3 service];
    v11 = [v10 instanceID];

    v12 = [v3 instanceID];
    v13 = [[HMDAccessoryBulletinNotificationRegistration alloc] initWithAccessoryUUID:v9 serviceInstanceID:v11 characteristicInstanceID:v12 conditions:*(a1 + 40)];

    return v13;
  }

  else
  {
    v15 = _HMFPreconditionFailure();
    return __135__HMDAccessoryBulletinNotificationManager_updateRegistrationsWithEnabledCharacteristics_disabledCharacteristics_conditions_completion___block_invoke_2(v15);
  }
}

HMDAccessoryBulletinNotificationRegistration *__135__HMDAccessoryBulletinNotificationManager_updateRegistrationsWithEnabledCharacteristics_disabledCharacteristics_conditions_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 accessory];
  v5 = [v4 home];
  v6 = [v5 uuid];
  v7 = [*(a1 + 32) uuid];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    v9 = [v4 uuid];
    v10 = [v3 service];
    v11 = [v10 instanceID];

    v12 = [v3 instanceID];
    v13 = [HMDAccessoryBulletinNotificationRegistration alloc];
    v14 = [MEMORY[0x277CBEB98] set];
    v15 = [(HMDAccessoryBulletinNotificationRegistration *)v13 initWithAccessoryUUID:v9 serviceInstanceID:v11 characteristicInstanceID:v12 conditions:v14];

    return v15;
  }

  else
  {
    v17 = _HMFPreconditionFailure();
    return __135__HMDAccessoryBulletinNotificationManager_updateRegistrationsWithEnabledCharacteristics_disabledCharacteristics_conditions_completion___block_invoke_34(v17);
  }
}

void __135__HMDAccessoryBulletinNotificationManager_updateRegistrationsWithEnabledCharacteristics_disabledCharacteristics_conditions_completion___block_invoke_34(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v3 = [MEMORY[0x277CBEB58] set];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __135__HMDAccessoryBulletinNotificationManager_updateRegistrationsWithEnabledCharacteristics_disabledCharacteristics_conditions_completion___block_invoke_2_36;
  v40[3] = &unk_27867EE60;
  v4 = *(a1 + 32);
  v41 = *(a1 + 40);
  v5 = v2;
  v42 = v5;
  [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v40];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __135__HMDAccessoryBulletinNotificationManager_updateRegistrationsWithEnabledCharacteristics_disabledCharacteristics_conditions_completion___block_invoke_3;
  v36[3] = &unk_27867EE88;
  v6 = *(a1 + 48);
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  v37 = v7;
  v38 = v8;
  v9 = v3;
  v39 = v9;
  [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:v36];
  if ([v5 hmf_isEmpty] && objc_msgSend(v9, "hmf_isEmpty"))
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 56);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *(a1 + 32);
      v15 = *(a1 + 48);
      *buf = 138543874;
      v44 = v13;
      v45 = 2112;
      v46 = v14;
      v47 = 2112;
      v48 = v15;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Updating characteristic registrations enable: %@ disable: %@ resulted in no changes to local store, not saving and not messaging primary", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v16 = *(a1 + 64);
    if (v16)
    {
      (*(v16 + 16))(v16, 0);
    }
  }

  else
  {
    v17 = *(a1 + 40);
    v35 = 0;
    v18 = [v17 save:&v35];
    v19 = v35;
    v20 = objc_autoreleasePoolPush();
    v21 = *(a1 + 56);
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v23 = v32 = v19;
      v24 = v9;
      v25 = *(a1 + 32);
      v26 = v5;
      v27 = *(a1 + 48);
      HMFBooleanToString();
      v28 = v33 = v18;
      *buf = 138544386;
      v44 = v23;
      v45 = 2112;
      v46 = v25;
      v9 = v24;
      v47 = 2112;
      v48 = v27;
      v5 = v26;
      v19 = v32;
      v49 = 2112;
      v50 = v28;
      v51 = 2112;
      v52 = v32;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Updating local characteristic registrations enable: %@ disable: %@ was successful: %@ error: %@", buf, 0x34u);

      v18 = v33;
    }

    objc_autoreleasePoolPop(v20);
    [*(a1 + 40) reset];
    if (v18)
    {
      v29 = [*(a1 + 56) workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __135__HMDAccessoryBulletinNotificationManager_updateRegistrationsWithEnabledCharacteristics_disabledCharacteristics_conditions_completion___block_invoke_39;
      block[3] = &unk_27868A728;
      block[4] = *(a1 + 56);
      dispatch_async(v29, block);
    }

    v30 = *(a1 + 64);
    if (v30)
    {
      (*(v30 + 16))(v30, v19);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __135__HMDAccessoryBulletinNotificationManager_updateRegistrationsWithEnabledCharacteristics_disabledCharacteristics_conditions_completion___block_invoke_2_36(uint64_t a1, void *a2)
{
  v22 = a2;
  v3 = [v22 accessoryUUID];
  v4 = [v22 serviceInstanceID];
  v5 = [v22 characteristicInstanceID];
  v6 = [MKFLocalBulletinCharacteristicRegistration fetchCharacteristicRegistrationForAccessoryUUID:v3 serviceInstanceID:v4 characteristicInstanceID:v5 managedObjectContext:*(a1 + 32)];

  v7 = v6 == 0;
  if (!v6)
  {
    v8 = MEMORY[0x277CBE408];
    v9 = +[MKFLocalBulletinCharacteristicRegistration entity];
    v10 = [v9 name];
    v6 = [v8 insertNewObjectForEntityForName:v10 inManagedObjectContext:*(a1 + 32)];

    v11 = [v22 accessoryUUID];
    [v6 setAccessoryModelID:v11];

    v12 = [v22 serviceInstanceID];
    [v6 setServiceInstanceID:{objc_msgSend(v12, "unsignedLongLongValue")}];

    v13 = [v22 characteristicInstanceID];
    [v6 setCharacteristicInstanceID:{objc_msgSend(v13, "unsignedLongLongValue")}];
  }

  if (([v6 enabled] & 1) == 0)
  {
    v7 = 1;
    [v6 setEnabled:1];
  }

  v14 = [v6 conditions];
  v15 = [MEMORY[0x277CBEB98] set];
  if (v14)
  {
    v16 = [HMDBulletinNotificationRegistrationUtilities conditionsFromLocalConditions:v14];

    v15 = v16;
  }

  v17 = [v22 conditions];
  v18 = [v15 isEqualToSet:v17];

  if ((v18 & 1) == 0)
  {
    if (v14)
    {
      [v6 removeConditions:v14];
    }

    v19 = *(a1 + 32);
    v20 = [v22 conditions];
    v21 = [HMDBulletinNotificationRegistrationUtilities createAndAddLocalConditionsToRegistration:v6 moc:v19 conditions:v20];

    goto LABEL_13;
  }

  if (v7)
  {
LABEL_13:
    [*(a1 + 40) addObject:v22];
  }
}

void __135__HMDAccessoryBulletinNotificationManager_updateRegistrationsWithEnabledCharacteristics_disabledCharacteristics_conditions_completion___block_invoke_3(id *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 accessoryUUID];
  v5 = [v3 serviceInstanceID];
  v6 = [v3 characteristicInstanceID];
  v7 = [MKFLocalBulletinCharacteristicRegistration fetchCharacteristicRegistrationForAccessoryUUID:v4 serviceInstanceID:v5 characteristicInstanceID:v6 managedObjectContext:a1[4]];

  if (v7)
  {
    v8 = [v7 conditions];
    if (v8)
    {
      [v7 removeConditions:v8];
    }

    [a1[4] deleteObject:v7];
    [a1[6] addObject:v3];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = a1[5];
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Did not find local registration to disable matching registration: %@, skipping", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)updateServiceGroup:(id)group completion:(id)completion
{
  groupCopy = group;
  completionCopy = completion;
  home = [(HMDAccessoryBulletinNotificationManager *)self home];
  bulletinBoardNotification = [groupCopy bulletinBoardNotification];
  service = [bulletinBoardNotification service];

  accessory = [service accessory];
  home2 = [accessory home];
  uuid = [home2 uuid];
  uuid2 = [home uuid];
  v15 = [uuid isEqual:uuid2];

  if (v15)
  {
    backingStore = [home backingStore];
    context = [backingStore context];

    managedObjectContext = [context managedObjectContext];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __73__HMDAccessoryBulletinNotificationManager_updateServiceGroup_completion___block_invoke;
    v21[3] = &unk_278688978;
    v22 = service;
    v23 = managedObjectContext;
    selfCopy = self;
    v25 = groupCopy;
    v26 = completionCopy;
    v19 = managedObjectContext;
    [v19 performBlock:v21];
  }

  else
  {
    v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v20);
    }
  }
}

void __73__HMDAccessoryBulletinNotificationManager_updateServiceGroup_completion___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accessory];
  v3 = [v2 uuid];
  v4 = [*(a1 + 32) instanceID];
  v5 = [MKFLocalBulletinServiceRegistration fetchServiceRegistrationForAccessoryUUID:v3 serviceInstanceID:v4 managedObjectContext:*(a1 + 40)];

  if (v5)
  {
    v6 = [v5 bulletinServiceGroup];
    if (!v6)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = *(a1 + 48);
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = HMFGetLogIdentifier();
        v11 = *(a1 + 32);
        *buf = 138543618;
        v39 = v10;
        v40 = 2112;
        v41 = v11;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Creating service group for existing service: %@ registration", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      v12 = MEMORY[0x277CBE408];
      v13 = +[MKFLocalBulletinServiceGroup entity];
      v14 = [v13 name];
      v6 = [v12 insertNewObjectForEntityForName:v14 inManagedObjectContext:*(a1 + 40)];

      [v5 setBulletinServiceGroup:v6];
      [v6 setBulletinServiceRegistration:v5];
    }

    v15 = [*(a1 + 56) associatedServiceUUIDs];
    [v6 setAssociatedServiceUUIDs:v15];

    v16 = [*(a1 + 56) cameraProfileUUIDs];
    [v6 setCameraProfileUUIDs:v16];

    v17 = *(a1 + 40);
    v37 = 0;
    [v17 save:&v37];
    v18 = v37;
    v19 = objc_autoreleasePoolPush();
    v20 = *(a1 + 48);
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [*(a1 + 56) shortDescription];
      [*(a1 + 56) associatedServiceUUIDs];
      v24 = v36 = v5;
      [*(a1 + 56) cameraProfileUUIDs];
      v25 = v35 = v19;
      v26 = HMFBooleanToString();
      *buf = 138544642;
      v39 = v22;
      v40 = 2112;
      v41 = v23;
      v42 = 2112;
      v43 = v24;
      v44 = 2112;
      v45 = v25;
      v46 = 2112;
      v47 = v26;
      v48 = 2112;
      v49 = v18;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Updating local service group %@ with associated service UUIDs: %@ camera profile UUIDs: %@ was successful: %@ error: %@", buf, 0x3Eu);

      v19 = v35;
      v5 = v36;
    }

    objc_autoreleasePoolPop(v19);
    [*(a1 + 40) reset];
    v27 = *(a1 + 64);
    if (v27)
    {
      (*(v27 + 16))(v27, v18);
    }
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    v29 = *(a1 + 48);
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      v32 = *(a1 + 56);
      *buf = 138543618;
      v39 = v31;
      v40 = 2112;
      v41 = v32;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Unable to find local service registration matching service group: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    v33 = *(a1 + 64);
    v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    if (v33)
    {
      (*(v33 + 16))(v33, v6);
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)disableBulletinForService:(id)service completion:(id)completion
{
  serviceCopy = service;
  completionCopy = completion;
  home = [(HMDAccessoryBulletinNotificationManager *)self home];
  accessory = [serviceCopy accessory];
  home2 = [accessory home];
  uuid = [home2 uuid];
  uuid2 = [home uuid];
  v13 = [uuid isEqual:uuid2];

  if (v13)
  {
    backingStore = [home backingStore];
    context = [backingStore context];

    managedObjectContext = [context managedObjectContext];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __80__HMDAccessoryBulletinNotificationManager_disableBulletinForService_completion___block_invoke;
    v21[3] = &unk_278689AB8;
    v22 = serviceCopy;
    v23 = managedObjectContext;
    selfCopy = self;
    v25 = completionCopy;
    v17 = completionCopy;
    v18 = managedObjectContext;
    v19 = serviceCopy;
    [v18 performBlock:v21];
  }

  else
  {
    v20 = _HMFPreconditionFailure();
    __80__HMDAccessoryBulletinNotificationManager_disableBulletinForService_completion___block_invoke(v20);
  }
}

void __80__HMDAccessoryBulletinNotificationManager_disableBulletinForService_completion___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accessory];
  v3 = [v2 uuid];
  v4 = [*(a1 + 32) instanceID];
  v5 = [MKFLocalBulletinServiceRegistration fetchServiceRegistrationForAccessoryUUID:v3 serviceInstanceID:v4 managedObjectContext:*(a1 + 40)];

  if (!v5)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 48);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = *(a1 + 32);
      *buf = 138543618;
      v30 = v18;
      v31 = 2112;
      v32 = v19;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unable to find local service registration to disable matching service: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v20 = *(a1 + 56);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    if (v20)
    {
      (*(v20 + 16))(v20, v7);
    }

    goto LABEL_11;
  }

  if ([v5 enabled])
  {
    [v5 setEnabled:0];
    v6 = *(a1 + 40);
    v28 = 0;
    [v6 save:&v28];
    v7 = v28;
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 48);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [HMDBulletinNotificationRegistrationUtilities serviceRegistrationFromLocalRegistration:v5];
      v13 = HMFBooleanToString();
      *buf = 138544130;
      v30 = v11;
      v31 = 2112;
      v32 = v12;
      v33 = 2112;
      v34 = v13;
      v35 = 2112;
      v36 = v7;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Disabling local service registration: %@ was successful: %@ error: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v8);
    [*(a1 + 40) reset];
    v14 = *(a1 + 56);
    if (v14)
    {
      (*(v14 + 16))(v14, v7);
    }

LABEL_11:

    goto LABEL_16;
  }

  v21 = objc_autoreleasePoolPush();
  v22 = *(a1 + 48);
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    v25 = [HMDBulletinNotificationRegistrationUtilities serviceRegistrationFromLocalRegistration:v5];
    *buf = 138543618;
    v30 = v24;
    v31 = 2112;
    v32 = v25;
    _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Disabling local service registration: %@, resulted in no changes to local store, not saving", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v21);
  v26 = *(a1 + 56);
  if (v26)
  {
    (*(v26 + 16))(v26, 0);
  }

LABEL_16:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)enableBulletinForService:(id)service conditions:(id)conditions completion:(id)completion
{
  serviceCopy = service;
  conditionsCopy = conditions;
  completionCopy = completion;
  home = [(HMDAccessoryBulletinNotificationManager *)self home];
  accessory = [serviceCopy accessory];
  home2 = [accessory home];
  uuid = [home2 uuid];
  uuid2 = [home uuid];
  v16 = [uuid isEqual:uuid2];

  if (v16)
  {
    backingStore = [home backingStore];
    context = [backingStore context];

    managedObjectContext = [context managedObjectContext];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __90__HMDAccessoryBulletinNotificationManager_enableBulletinForService_conditions_completion___block_invoke;
    v26[3] = &unk_278688B58;
    v27 = accessory;
    v28 = serviceCopy;
    v29 = managedObjectContext;
    selfCopy = self;
    v31 = conditionsCopy;
    v32 = completionCopy;
    v20 = conditionsCopy;
    v21 = completionCopy;
    v22 = managedObjectContext;
    v23 = serviceCopy;
    v24 = accessory;
    [v22 performBlock:v26];
  }

  else
  {
    v25 = _HMFPreconditionFailure();
    __90__HMDAccessoryBulletinNotificationManager_enableBulletinForService_conditions_completion___block_invoke(v25);
  }
}

void __90__HMDAccessoryBulletinNotificationManager_enableBulletinForService_conditions_completion___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) uuid];
  v3 = [*(a1 + 40) instanceID];
  v4 = [MKFLocalBulletinServiceRegistration fetchServiceRegistrationForAccessoryUUID:v2 serviceInstanceID:v3 managedObjectContext:*(a1 + 48)];

  if (v4)
  {
    v5 = [v4 enabled];
    if ((v5 & 1) == 0)
    {
      [v4 setEnabled:1];
    }

    v6 = [v4 conditions];
    v7 = [MEMORY[0x277CBEB98] set];
    v8 = v7;
    if (v6)
    {
      v9 = [HMDBulletinNotificationRegistrationUtilities conditionsFromLocalConditions:v6];

      if ([v9 isEqualToSet:*(a1 + 64)])
      {
        v8 = v9;
        goto LABEL_12;
      }

      [v4 removeConditions:v6];
      v8 = v9;
    }

    else if ([v7 isEqualToSet:*(a1 + 64)])
    {
LABEL_12:
      if (v5)
      {
        v16 = objc_autoreleasePoolPush();
        v17 = *(a1 + 56);
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = HMFGetLogIdentifier();
          v20 = [HMDBulletinNotificationRegistrationUtilities serviceRegistrationFromLocalRegistration:v4];
          *buf = 138543618;
          v36 = v19;
          v37 = 2112;
          v38 = v20;
          _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Enabling local service registration: %@, resulted in no changes to local store, not saving", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
        v21 = *(a1 + 72);
        if (v21)
        {
          (*(v21 + 16))(v21, 0);
        }

LABEL_24:

        goto LABEL_25;
      }

LABEL_19:
      v23 = *(a1 + 48);
      v34 = 0;
      [v23 save:&v34];
      v24 = v34;
      v25 = objc_autoreleasePoolPush();
      v26 = *(a1 + 56);
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v28 = v33 = v8;
        v29 = [HMDBulletinNotificationRegistrationUtilities serviceRegistrationFromLocalRegistration:v4];
        v30 = HMFBooleanToString();
        *buf = 138544130;
        v36 = v28;
        v37 = 2112;
        v38 = v29;
        v39 = 2112;
        v40 = v30;
        v41 = 2112;
        v42 = v24;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Enabling local service registration: %@ was successful: %@ error: %@", buf, 0x2Au);

        v8 = v33;
      }

      objc_autoreleasePoolPop(v25);
      [*(a1 + 48) reset];
      v31 = *(a1 + 72);
      if (v31)
      {
        (*(v31 + 16))(v31, v24);
      }

      goto LABEL_24;
    }

    v22 = [HMDBulletinNotificationRegistrationUtilities createAndAddLocalConditionsToRegistration:v4 moc:*(a1 + 48) conditions:*(a1 + 64)];
    goto LABEL_19;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 56);
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    v14 = *(a1 + 40);
    *buf = 138543618;
    v36 = v13;
    v37 = 2112;
    v38 = v14;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to find local service registration to enable matching service: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = *(a1 + 72);
  v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
  if (v15)
  {
    (*(v15 + 16))(v15, v6);
  }

LABEL_25:

  v32 = *MEMORY[0x277D85DE8];
}

- (id)bulletinBoardNotificationForService:(id)service
{
  serviceCopy = service;
  home = [(HMDAccessoryBulletinNotificationManager *)self home];
  accessory = [serviceCopy accessory];
  home2 = [accessory home];
  uuid = [home2 uuid];
  uuid2 = [home uuid];
  v10 = [uuid isEqual:uuid2];

  if ((v10 & 1) == 0)
  {
    v23 = _HMFPreconditionFailure();
    _Block_object_dispose(&v42, 8);
    _Block_object_dispose(&v48, 8);
    _Block_object_dispose(&v54, 8);
    _Unwind_Resume(v23);
  }

  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__196731;
  v52 = __Block_byref_object_dispose__196732;
  v53 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__196731;
  v46 = __Block_byref_object_dispose__196732;
  v47 = [MEMORY[0x277CBEB98] set];
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__196731;
  v40 = __Block_byref_object_dispose__196732;
  v41 = [MEMORY[0x277CBEB98] set];
  backingStore = [home backingStore];
  context = [backingStore context];

  managedObjectContext = [context managedObjectContext];
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __79__HMDAccessoryBulletinNotificationManager_bulletinBoardNotificationForService___block_invoke;
  v27 = &unk_27867EDE8;
  v14 = accessory;
  v28 = v14;
  v15 = serviceCopy;
  v29 = v15;
  v16 = managedObjectContext;
  v30 = v16;
  selfCopy = self;
  v32 = &v54;
  v33 = &v48;
  v34 = &v42;
  v35 = &v36;
  [v16 performBlockAndWait:&v24];
  v17 = [HMDBulletinBoardNotification alloc];
  v18 = [(HMDBulletinBoardNotification *)v17 initWithService:v15 enabled:*(v55 + 24) condition:v49[5], v24, v25, v26, v27];
  type = [v15 type];
  v20 = [HMDBulletinBoardNotification supportsBulletinNotificationGroup:type];

  if (v20)
  {
    v21 = [[HMDBulletinBoardNotificationServiceGroup alloc] initWithBulletinBoardNotification:v18];
    [(HMDBulletinBoardNotification *)v18 setNotificationServiceGroup:v21];
    [(HMDBulletinBoardNotificationServiceGroup *)v21 setAssociatedServiceUUIDs:v37[5]];
    [(HMDBulletinBoardNotificationServiceGroup *)v21 setCameraProfileUUIDs:v43[5]];
  }

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v54, 8);

  return v18;
}

void __79__HMDAccessoryBulletinNotificationManager_bulletinBoardNotificationForService___block_invoke(uint64_t a1)
{
  v84 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) uuid];
  v3 = [*(a1 + 40) instanceID];
  v4 = [MKFLocalBulletinServiceRegistration fetchServiceRegistrationForAccessoryUUID:v2 serviceInstanceID:v3 managedObjectContext:*(a1 + 48)];

  if (isHomePod() && v4)
  {
    if (![v4 enabled])
    {
LABEL_10:
      *(*(*(a1 + 64) + 8) + 24) = [v4 enabled];
      v20 = [HMDBulletinNotificationRegistrationUtilities serviceRegistrationFromLocalRegistration:v4];
      v21 = [v20 predicate];
      v22 = *(*(a1 + 72) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v21;

      v24 = objc_autoreleasePoolPush();
      v25 = *(a1 + 56);
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        v28 = [HMDBulletinNotificationRegistrationUtilities serviceRegistrationFromLocalRegistration:v4];
        v29 = *(a1 + 40);
        v30 = *(*(*(a1 + 64) + 8) + 24);
        v31 = HMFBooleanToString();
        v32 = *(*(*(a1 + 72) + 8) + 40);
        *buf = 138544386;
        v75 = v27;
        v76 = 2112;
        v77 = v28;
        v78 = 2112;
        v79 = v29;
        v80 = 2112;
        v81 = v31;
        v82 = 2112;
        v83 = v32;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Found local registration: %@ for service: %@, setting enabled: %@ condition: %@", buf, 0x34u);
      }

      objc_autoreleasePoolPop(v24);
      v33 = [*(a1 + 40) type];
      v34 = [HMDBulletinBoardNotification supportsBulletinNotificationGroup:v33];

      if (v34)
      {
        v35 = [v4 bulletinServiceGroup];
        v36 = v35;
        if (v35)
        {
          v37 = [v35 cameraProfileUUIDs];
          v38 = *(*(a1 + 80) + 8);
          v39 = *(v38 + 40);
          *(v38 + 40) = v37;

          v40 = [v36 associatedServiceUUIDs];
          v41 = *(*(a1 + 88) + 8);
          v42 = *(v41 + 40);
          *(v41 + 40) = v40;

          v43 = objc_autoreleasePoolPush();
          v44 = *(a1 + 56);
          v45 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
          {
            v46 = HMFGetLogIdentifier();
            v47 = *(a1 + 40);
            v48 = *(*(*(a1 + 88) + 8) + 40);
            v49 = *(*(*(a1 + 80) + 8) + 40);
            *buf = 138544386;
            v75 = v46;
            v76 = 2112;
            v77 = v36;
            v78 = 2112;
            v79 = v47;
            v80 = 2112;
            v81 = v48;
            v82 = 2112;
            v83 = v49;
            _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_INFO, "%{public}@Found local service group: %@ for service: %@ with associatedServiceUUIDs: %@ cameraProfileUUIDs: %@", buf, 0x34u);
          }

          objc_autoreleasePoolPop(v43);
        }
      }

      goto LABEL_30;
    }

    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 56);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 40);
      *buf = 138543618;
      v75 = v8;
      v76 = 2112;
      v77 = v9;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Forcing bulletin board notification enabled to NO on HomePod for service: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [v4 setEnabled:0];
    v10 = *(a1 + 48);
    v73 = 0;
    [v10 save:&v73];
    v11 = v73;
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 56);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = HMFGetLogIdentifier();
      v16 = HMFBooleanToString();
      *buf = 138544130;
      v75 = v15;
      v76 = 2112;
      v77 = v4;
      v78 = 2112;
      v79 = v16;
      v80 = 2112;
      v81 = v11;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Saving cleaned up local registration: %@ for service was successful: %@ error: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v12);
    [*(a1 + 48) reset];
    v17 = [*(a1 + 32) uuid];
    v18 = [*(a1 + 40) instanceID];
    v19 = [MKFLocalBulletinServiceRegistration fetchServiceRegistrationForAccessoryUUID:v17 serviceInstanceID:v18 managedObjectContext:*(a1 + 48)];

    v4 = v19;
  }

  if (v4)
  {
    goto LABEL_10;
  }

  v50 = objc_autoreleasePoolPush();
  v51 = *(a1 + 56);
  v52 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
  {
    v53 = HMFGetLogIdentifier();
    v54 = *(a1 + 40);
    *buf = 138543618;
    v75 = v53;
    v76 = 2112;
    v77 = v54;
    _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_INFO, "%{public}@Did not find any local registrations matching service: %@ for bulletin board notification, creating initial registration now", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v50);
  v55 = MEMORY[0x277CBE408];
  v56 = +[MKFLocalBulletinServiceRegistration entity];
  v57 = [v56 name];
  v4 = [v55 insertNewObjectForEntityForName:v57 inManagedObjectContext:*(a1 + 48)];

  v58 = [*(a1 + 32) uuid];
  [v4 setAccessoryModelID:v58];

  v59 = [*(a1 + 40) instanceID];
  [v4 setServiceInstanceID:{objc_msgSend(v59, "unsignedLongLongValue")}];

  v60 = [MEMORY[0x277CBEB98] set];
  [v4 setConditions:v60];

  if (isHomePod())
  {
    goto LABEL_21;
  }

  v62 = [*(a1 + 40) type];
  if (![HMDBulletinBoard isBulletinSupportedForNonSecureCharacteristicType:0 serviceType:v62])
  {

LABEL_26:
    v61 = 1;
    goto LABEL_27;
  }

  v63 = [*(a1 + 40) type];
  v64 = [HMDBulletinBoard isCriticalNonSecureServiceType:v63];

  if (v64)
  {
    goto LABEL_26;
  }

LABEL_21:
  v61 = 0;
LABEL_27:
  *(*(*(a1 + 64) + 8) + 24) = v61;
  [v4 setEnabled:*(*(*(a1 + 64) + 8) + 24)];
  v65 = *(a1 + 48);
  v72 = 0;
  [v65 save:&v72];
  v20 = v72;
  v66 = objc_autoreleasePoolPush();
  v67 = *(a1 + 56);
  v68 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
  {
    v69 = HMFGetLogIdentifier();
    v70 = HMFBooleanToString();
    *buf = 138544130;
    v75 = v69;
    v76 = 2112;
    v77 = v4;
    v78 = 2112;
    v79 = v70;
    v80 = 2112;
    v81 = v20;
    _os_log_impl(&dword_229538000, v68, OS_LOG_TYPE_INFO, "%{public}@Saving initial local registration: %@ for bulletin board notification was successful: %@ error: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v66);
  [*(a1 + 48) reset];
LABEL_30:

  v71 = *MEMORY[0x277D85DE8];
}

- (void)configureWithDeviceIsResidentCapable:(BOOL)capable
{
  capableCopy = capable;
  v55[7] = *MEMORY[0x277D85DE8];
  if (self)
  {
    home = [(HMDAccessoryBulletinNotificationManager *)self home];
    if (![home bulletinBoardNotificationsMigrationFileExistsOnDisk])
    {
LABEL_11:

      goto LABEL_12;
    }

    loadMigrationBulletinBoardNotificationsFromDisk = [home loadMigrationBulletinBoardNotificationsFromDisk];
    v7 = objc_autoreleasePoolPush();
    if (loadMigrationBulletinBoardNotificationsFromDisk)
    {
      v8 = loadMigrationBulletinBoardNotificationsFromDisk;
      v9 = MEMORY[0x277CBEB98];
      v55[0] = objc_opt_class();
      v55[1] = objc_opt_class();
      v55[2] = objc_opt_class();
      v55[3] = objc_opt_class();
      v55[4] = objc_opt_class();
      v55[5] = objc_opt_class();
      v55[6] = objc_opt_class();
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:7];
      v11 = [v9 setWithArray:v10];

      v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v49 = __77__HMDAccessoryBulletinNotificationManager_validateRegistrationsForMigration___block_invoke;
      v50 = &unk_27867F150;
      selfCopy = self;
      selfCopy2 = v8;
      v52 = selfCopy2;
      v14 = v11;
      v53 = v14;
      v15 = v12;
      v54 = v15;
      [(HMDAccessoryBulletinNotificationManager *)selfCopy2 hmf_enumerateWithAutoreleasePoolUsingBlock:&buf];
      if ([v15 count])
      {
        home2 = [(HMDAccessoryBulletinNotificationManager *)self home];
        backingStore = [home2 backingStore];
        [backingStore context];
        v43 = capableCopy;
        v19 = v18 = v7;

        managedObjectContext = [v19 managedObjectContext];
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __77__HMDAccessoryBulletinNotificationManager_validateRegistrationsForMigration___block_invoke_112;
        v45[3] = &unk_27868A010;
        v45[4] = self;
        v46 = v15;
        v47 = managedObjectContext;
        v21 = managedObjectContext;
        [v21 performBlockAndWait:v45];

        v7 = v18;
        capableCopy = v43;
      }
    }

    else
    {
      selfCopy2 = self;
      v14 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
LABEL_10:

        objc_autoreleasePoolPop(v7);
        goto LABEL_11;
      }

      v15 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unable to load bulletin board notifications from migration file", &buf, 0xCu);
    }

    goto LABEL_10;
  }

LABEL_12:
  home3 = [(HMDAccessoryBulletinNotificationManager *)self home];
  notificationCenter = [(HMDAccessoryBulletinNotificationManager *)self notificationCenter];
  residentDeviceManager = [home3 residentDeviceManager];
  [notificationCenter addObserver:self selector:sel_handlePrimaryResidentUpdateNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:residentDeviceManager];

  notificationCenter2 = [(HMDAccessoryBulletinNotificationManager *)self notificationCenter];
  accountManager = [(HMDAccessoryBulletinNotificationManager *)self accountManager];
  [notificationCenter2 addObserver:self selector:sel_handleCurrentDeviceOrAccountUpdatedNotification_ name:@"HMDAppleAccountManagerDeviceUpdatedNotification" object:accountManager];

  notificationCenter3 = [(HMDAccessoryBulletinNotificationManager *)self notificationCenter];
  accountManager2 = [(HMDAccessoryBulletinNotificationManager *)self accountManager];
  [notificationCenter3 addObserver:self selector:sel_handleCurrentDeviceOrAccountUpdatedNotification_ name:@"HMDAppleAccountManagerAccountUpdatedNotification" object:accountManager2];

  synchronizeWithPrimaryDebounceTimerFactory = [(HMDAccessoryBulletinNotificationManager *)self synchronizeWithPrimaryDebounceTimerFactory];
  v30 = synchronizeWithPrimaryDebounceTimerFactory[2](synchronizeWithPrimaryDebounceTimerFactory, 28, 5.0);
  [(HMDAccessoryBulletinNotificationManager *)self setSynchronizeWithPrimaryDebounceTimer:v30];

  synchronizeWithPrimaryDebounceTimer = [(HMDAccessoryBulletinNotificationManager *)self synchronizeWithPrimaryDebounceTimer];
  [synchronizeWithPrimaryDebounceTimer setDelegate:self];

  workQueue = [(HMDAccessoryBulletinNotificationManager *)self workQueue];
  synchronizeWithPrimaryDebounceTimer2 = [(HMDAccessoryBulletinNotificationManager *)self synchronizeWithPrimaryDebounceTimer];
  [synchronizeWithPrimaryDebounceTimer2 setDelegateQueue:workQueue];

  if (capableCopy)
  {
    [(HMDAccessoryBulletinNotificationManager *)self setCurrentPrimary:0];
    isCurrentDeviceConfirmedPrimaryResident = [home3 isCurrentDeviceConfirmedPrimaryResident];
    v35 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v37 = HMFGetOSLogHandle();
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_INFO);
    if (isCurrentDeviceConfirmedPrimaryResident)
    {
      if (v38)
      {
        v39 = HMFGetLogIdentifier();
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v39;
        _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@Configuring as primary resident", &buf, 0xCu);
      }

      objc_autoreleasePoolPop(v35);
      workQueue2 = [(HMDAccessoryBulletinNotificationManager *)selfCopy3 workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __80__HMDAccessoryBulletinNotificationManager_configureWithDeviceIsResidentCapable___block_invoke;
      block[3] = &unk_27868A728;
      block[4] = selfCopy3;
      dispatch_async(workQueue2, block);
    }

    else
    {
      if (v38)
      {
        v41 = HMFGetLogIdentifier();
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v41;
        _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@Configuring as non-primary resident", &buf, 0xCu);
      }

      objc_autoreleasePoolPop(v35);
    }
  }

  v42 = *MEMORY[0x277D85DE8];
}

void __77__HMDAccessoryBulletinNotificationManager_validateRegistrationsForMigration___block_invoke(uint64_t a1, void *a2)
{
  v59 = *MEMORY[0x277D85DE8];
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
    v6 = [(__CFString *)v5 objectForKeyedSubscript:@"HMD.BBN.A"];
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

    if (!v8)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = *(a1 + 32);
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543874;
        v52 = v25;
        v53 = 2112;
        v54 = @"HMD.BBN.A";
        v55 = 2112;
        v56 = v3;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Invalid object for %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v22);
      goto LABEL_44;
    }

    v9 = [(__CFString *)v5 objectForKeyedSubscript:@"HMD.BBN.S"];
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

    if (!v11)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = *(a1 + 32);
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543874;
        v52 = v29;
        v53 = 2112;
        v54 = @"HMD.BBN.S";
        v55 = 2112;
        v56 = v3;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Invalid object for %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v26);
      goto LABEL_43;
    }

    v12 = [(__CFString *)v5 objectForKeyedSubscript:@"HMD.BBN.E"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (!v14)
    {
      v30 = objc_autoreleasePoolPush();
      v31 = *(a1 + 32);
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543874;
        v52 = v33;
        v53 = 2112;
        v54 = @"HMD.BBN.E";
        v55 = 2112;
        v56 = v3;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Invalid object for %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v30);
      goto LABEL_42;
    }

    v15 = [(__CFString *)v5 objectForKeyedSubscript:@"HMD.BBN.P"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v34 = v16;
      }

      else
      {
        v34 = 0;
      }

      v35 = v34;

      if (!v35)
      {
        context = objc_autoreleasePoolPush();
        v48 = *(a1 + 32);
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v45 = HMFGetLogIdentifier();
          *buf = 138543874;
          v52 = v45;
          v53 = 2112;
          v54 = @"HMD.BBN.P";
          v55 = 2112;
          v56 = v3;
          _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@Invalid object for %@: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(context);
      }

      v37 = *(a1 + 48);
      v50 = 0;
      v38 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v37 fromData:v35 error:{&v50, v45}];
      v39 = v50;
      if (!v38)
      {
        v49 = v39;
        v41 = objc_autoreleasePoolPush();
        v42 = *(a1 + 32);
        v43 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v44 = contexta = v41;
          *buf = 138544130;
          v52 = v44;
          v53 = 2112;
          v54 = @"HMD.BBN.P";
          v55 = 2112;
          v56 = v3;
          v57 = 2112;
          v58 = v49;
          _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive %@: %@, %@", buf, 0x2Au);

          v41 = contexta;
        }

        objc_autoreleasePoolPop(v41);
        goto LABEL_41;
      }

      v16 = v38;
    }

    v35 = objc_opt_new();
    [v35 setAccessoryUUID:v8];
    [v35 setServiceInstanceID:{objc_msgSend(v11, "unsignedLongLongValue")}];
    [v35 setPredicate:v16];
    [v35 setEnabled:{objc_msgSend(v14, "BOOLValue")}];
    [*(a1 + 56) addObject:v35];
LABEL_41:

LABEL_42:
LABEL_43:

LABEL_44:
    goto LABEL_45;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = *(a1 + 32);
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = HMFGetLogIdentifier();
    v21 = *(a1 + 40);
    *buf = 138543874;
    v52 = v20;
    v53 = 2112;
    v54 = v3;
    v55 = 2112;
    v56 = v21;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Unexpected object type: %@, %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v17);
LABEL_45:

  v40 = *MEMORY[0x277D85DE8];
}

void __77__HMDAccessoryBulletinNotificationManager_validateRegistrationsForMigration___block_invoke_112(uint64_t a1)
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
    *&buf[16] = __72__HMDAccessoryBulletinNotificationManager_migrateRegistrations_context___block_invoke;
    v29 = &unk_27867F178;
    v30 = v8;
    v11 = v6;
    v31 = v11;
    [v22 hmf_enumerateWithAutoreleasePoolUsingBlock:buf];
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
        [v19 removeBulletinBoardNotificationsMigrationFileFromDisk];
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

void __72__HMDAccessoryBulletinNotificationManager_migrateRegistrations_context___block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = v2;
  v6 = v5;
  if (v3)
  {
    [v5 hmd_assertIsExecuting];
    v7 = +[MKFLocalBulletinServiceRegistration fetchRequest];
    v8 = MEMORY[0x277CCAC30];
    v9 = [(MKFLocalBulletinServiceRegistration *)v4 accessoryUUID];
    v10 = [v8 predicateWithFormat:@"(%K == %@) AND (%K == %lld)", @"accessoryModelID", v9, @"serviceInstanceID", -[MKFLocalBulletinServiceRegistration serviceInstanceID](v4, "serviceInstanceID")];
    [v7 setPredicate:v10];

    [v7 setResultType:1];
    v33 = 0;
    v11 = [v6 executeFetchRequest:v7 error:&v33];
    v12 = v33;
    if (!v11)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = v3;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v35 = v16;
        v36 = 2112;
        v37 = v12;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch existing registrations: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
    }

    if ([v11 count])
    {
      v17 = objc_autoreleasePoolPush();
      v18 = v3;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        v35 = v20;
        v36 = 2112;
        v37 = v4;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Already have a registration: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
    }

    else
    {
      v21 = [[MKFLocalBulletinServiceRegistration alloc] initWithContext:v6];
      v22 = [(MKFLocalBulletinServiceRegistration *)v4 accessoryUUID];
      [(MKFLocalBulletinServiceRegistration *)v21 setAccessoryModelID:v22];

      [(MKFLocalBulletinServiceRegistration *)v21 setServiceInstanceID:[(MKFLocalBulletinServiceRegistration *)v4 serviceInstanceID]];
      if (isHomePod())
      {
        v23 = 0;
      }

      else
      {
        v23 = [(MKFLocalBulletinServiceRegistration *)v4 enabled];
      }

      [(MKFLocalBulletinServiceRegistration *)v21 setEnabled:v23];
      v24 = [(MKFLocalBulletinServiceRegistration *)v4 predicate];
      v25 = [v3 conditionsFromPredicate:v24];

      v26 = [HMDBulletinNotificationRegistrationUtilities createAndAddLocalConditionsToRegistration:v21 moc:v6 conditions:v25];
      [(MKFLocalBulletinServiceRegistration *)v21 setConditions:v26];

      v27 = objc_autoreleasePoolPush();
      v28 = v3;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v30 = v32 = v12;
        *buf = 138543618;
        v35 = v30;
        v36 = 2112;
        v37 = v21;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@Created new registration: %@", buf, 0x16u);

        v12 = v32;
      }

      objc_autoreleasePoolPop(v27);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (HMDBulletinNotificationRegistrationSource)source
{
  v23 = *MEMORY[0x277D85DE8];
  accountManager = [(HMDAccessoryBulletinNotificationManager *)self accountManager];
  account = [accountManager account];
  currentDevice = [account currentDevice];
  deviceAddress = [currentDevice deviceAddress];

  if (deviceAddress)
  {
    home = [(HMDAccessoryBulletinNotificationManager *)self home];
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

- (NSArray)accessoryRegistrationsForCurrentDevice
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__196731;
  v17 = __Block_byref_object_dispose__196732;
  v18 = MEMORY[0x277CBEBF8];
  home = [(HMDAccessoryBulletinNotificationManager *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  managedObjectContext = [context managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__HMDAccessoryBulletinNotificationManager_accessoryRegistrationsForCurrentDevice__block_invoke;
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

void __81__HMDAccessoryBulletinNotificationManager_accessoryRegistrationsForCurrentDevice__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _mkfLocalCharacteristicRegistrationsWithManagedObjectContext:*(a1 + 40)];
  v2 = [v5 na_map:&__block_literal_global_15_196906];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id __81__HMDAccessoryBulletinNotificationManager_accessoryRegistrationsForCurrentDevice__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 enabled])
  {
    v3 = [HMDBulletinNotificationRegistrationUtilities accessoryRegistrationFromLocalRegistration:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)accessoryRegistrations
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__196731;
  v17 = __Block_byref_object_dispose__196732;
  v18 = MEMORY[0x277CBEBF8];
  home = [(HMDAccessoryBulletinNotificationManager *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__HMDAccessoryBulletinNotificationManager_accessoryRegistrations__block_invoke;
  v9[3] = &unk_27868A4D8;
  v6 = home;
  v10 = v6;
  selfCopy = self;
  v12 = &v13;
  [context unsafeSynchronousBlock:v9];
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __65__HMDAccessoryBulletinNotificationManager_accessoryRegistrations__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [*(a1 + 32) uuid];
  v4 = [HMCContext findHomeWithModelID:v3];

  v5 = [v4 users];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __65__HMDAccessoryBulletinNotificationManager_accessoryRegistrations__block_invoke_2;
  v18[3] = &unk_27867ED50;
  v6 = v2;
  v7 = *(a1 + 40);
  v19 = v6;
  v20 = v7;
  [v5 na_each:v18];

  v8 = [v4 guests];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__HMDAccessoryBulletinNotificationManager_accessoryRegistrations__block_invoke_3;
  v15[3] = &unk_27867ED78;
  v9 = *(a1 + 40);
  v16 = v6;
  v17 = v9;
  v10 = v6;
  [v8 na_each:v15];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__HMDAccessoryBulletinNotificationManager_accessoryRegistrations__block_invoke_4;
  v14[3] = &unk_27867EDA0;
  v14[4] = *(a1 + 40);
  v11 = [v10 na_map:v14];
  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

void __65__HMDAccessoryBulletinNotificationManager_accessoryRegistrations__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = [a2 bulletinRegistrations];
  v4 = [v3 _characteristicsRegistrationsFromBulletinRegistrations:v5];
  [v2 addObjectsFromArray:v4];
}

void __65__HMDAccessoryBulletinNotificationManager_accessoryRegistrations__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = [a2 bulletinRegistrations];
  v4 = [v3 _characteristicsRegistrationsFromBulletinRegistrations:v5];
  [v2 addObjectsFromArray:v4];
}

id __65__HMDAccessoryBulletinNotificationManager_accessoryRegistrations__block_invoke_4(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _accessoryRegistrationFromMKFRegistrationSafe:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Skipping invalid working store registration: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_characteristicsRegistrationsFromBulletinRegistrations:(id)registrations
{
  v3 = MEMORY[0x277CBEB18];
  registrationsCopy = registrations;
  array = [v3 array];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __98__HMDAccessoryBulletinNotificationManager__characteristicsRegistrationsFromBulletinRegistrations___block_invoke;
  v8[3] = &unk_27867ED28;
  v6 = array;
  v9 = v6;
  [registrationsCopy na_each:v8];

  return v6;
}

void __98__HMDAccessoryBulletinNotificationManager__characteristicsRegistrationsFromBulletinRegistrations___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 castIfCharacteristicBulletinRegistration];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

- (NSArray)serviceRegistrationsForCurrentDevice
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__196731;
  v17 = __Block_byref_object_dispose__196732;
  v18 = MEMORY[0x277CBEBF8];
  home = [(HMDAccessoryBulletinNotificationManager *)self home];
  backingStore = [home backingStore];
  context = [backingStore context];

  managedObjectContext = [context managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__HMDAccessoryBulletinNotificationManager_serviceRegistrationsForCurrentDevice__block_invoke;
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

void __79__HMDAccessoryBulletinNotificationManager_serviceRegistrationsForCurrentDevice__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _mkfLocalServiceRegistrationsWithManagedObjectContext:*(a1 + 40)];
  v2 = [v5 na_map:&__block_literal_global_4_196910];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id __79__HMDAccessoryBulletinNotificationManager_serviceRegistrationsForCurrentDevice__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 enabled])
  {
    v3 = [HMDBulletinNotificationRegistrationUtilities serviceRegistrationFromLocalRegistration:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (HMDAccessoryBulletinNotificationManager)initWithHome:(id)home workQueue:(id)queue accountManager:(id)manager evaluator:(id)evaluator notificationCenter:(id)center
{
  homeCopy = home;
  queueCopy = queue;
  managerCopy = manager;
  evaluatorCopy = evaluator;
  centerCopy = center;
  v21.receiver = self;
  v21.super_class = HMDAccessoryBulletinNotificationManager;
  v17 = [(HMDAccessoryBulletinNotificationManager *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_home, homeCopy);
    objc_storeStrong(&v18->_workQueue, queue);
    objc_storeStrong(&v18->_accountManager, manager);
    objc_storeStrong(&v18->_evaluator, evaluator);
    objc_storeStrong(&v18->_notificationCenter, center);
    synchronizeWithPrimaryDebounceTimerFactory = v18->_synchronizeWithPrimaryDebounceTimerFactory;
    v18->_synchronizeWithPrimaryDebounceTimerFactory = &__block_literal_global_196915;
  }

  return v18;
}

id __110__HMDAccessoryBulletinNotificationManager_initWithHome_workQueue_accountManager_evaluator_notificationCenter___block_invoke(double a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:a3 options:a1];

  return v3;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t98_196923 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t98_196923, &__block_literal_global_121_196924);
  }

  v3 = logCategory__hmf_once_v99_196925;

  return v3;
}

void __54__HMDAccessoryBulletinNotificationManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v99_196925;
  logCategory__hmf_once_v99_196925 = v1;
}

+ (id)_characteristicBulletinRegistrationsForSource:(id)source context:(id)context
{
  v42[2] = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  contextCopy = context;
  v6 = +[_MKFCharacteristicBulletinRegistration fetchRequest];
  v7 = MEMORY[0x277CCAC30];
  userUUID = [sourceCopy userUUID];
  deviceAddress = [sourceCopy deviceAddress];
  idsIdentifier = [deviceAddress idsIdentifier];
  deviceAddress2 = [sourceCopy deviceAddress];
  idsDestination = [deviceAddress2 idsDestination];
  v13 = [v7 predicateWithFormat:@"(%K == %@) && (%K == %@) && (%K == %@)", @"user.modelID", userUUID, @"deviceIdsIdentifier", idsIdentifier, @"deviceIdsDestination", idsDestination];

  [v6 setPredicate:v13];
  v14 = MEMORY[0x277CCAC30];
  userUUID2 = [sourceCopy userUUID];
  deviceAddress3 = [sourceCopy deviceAddress];
  idsIdentifier2 = [deviceAddress3 idsIdentifier];
  deviceAddress4 = [sourceCopy deviceAddress];
  idsDestination2 = [deviceAddress4 idsDestination];
  v20 = [v14 predicateWithFormat:@"(%K == %@) && (%K == %@) && (%K == %@)", @"guest.modelID", userUUID2, @"deviceIdsIdentifier", idsIdentifier2, @"deviceIdsDestination", idsDestination2];

  v21 = v20;
  v22 = MEMORY[0x277CCA920];
  v42[0] = v13;
  v42[1] = v20;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
  v24 = [v22 orPredicateWithSubpredicates:v23];
  [v6 setPredicate:v24];

  v37 = 0;
  v25 = [contextCopy executeFetchRequest:v6 error:&v37];
  v26 = v37;
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v34 = v21;
    v28 = objc_autoreleasePoolPush();
    selfCopy = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v31;
      v40 = 2112;
      v41 = sourceCopy;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch characteristic bulletin registrations for source: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    v27 = MEMORY[0x277CBEBF8];
    v21 = v34;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v27;
}

@end