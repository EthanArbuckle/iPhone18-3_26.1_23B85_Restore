@interface HMDCameraClipUserNotificationCenter
+ (id)logCategory;
- (HMDCameraClipUserNotificationCenter)initWithBulletinBoard:(id)board workQueue:(id)queue logIdentifier:(id)identifier;
- (HMDCameraClipUserNotificationCenter)initWithBulletinBoard:(id)board workQueue:(id)queue logIdentifier:(id)identifier fileManager:(id)manager;
- (id)_firstAvailableHeroFrameURLForSignificantEvents:(id)events cameraProfile:(id)profile;
- (id)createBulletinForSignificantEvents:(id)events cameraProfile:(id)profile;
- (void)_insertClipSignificantEventBulletin:(id)bulletin;
- (void)postNotificationForBulletin:(id)bulletin significantEvent:(id)event;
- (void)removeCachedHeroFrameImages;
- (void)removeEventNotificationForClipWithUUID:(id)d;
- (void)removeEventNotificationsForCameraProfile:(id)profile;
@end

@implementation HMDCameraClipUserNotificationCenter

- (id)_firstAvailableHeroFrameURLForSignificantEvents:(id)events cameraProfile:(id)profile
{
  v26 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  profileCopy = profile;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = eventsCopy;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v22 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v21 + 1) + 8 * v12);
      clipManager = [profileCopy clipManager];
      uniqueIdentifier = [v13 uniqueIdentifier];
      v16 = [clipManager heroFrameURLForSignificantEventWithUUID:uniqueIdentifier];

      if (v16)
      {
        fileManager = [(HMDCameraClipUserNotificationCenter *)self fileManager];
        v18 = [fileManager fileExistsAtURL:v16];

        if (v18)
        {
          break;
        }
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v16 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)_insertClipSignificantEventBulletin:(id)bulletin
{
  v20 = *MEMORY[0x277D85DE8];
  bulletinCopy = bulletin;
  workQueue = [(HMDCameraClipUserNotificationCenter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    significantEvents = [bulletinCopy significantEvents];
    previewImageFilePathURL = [bulletinCopy previewImageFilePathURL];
    v14 = 138543874;
    v15 = v9;
    v16 = 2112;
    v17 = significantEvents;
    v18 = 2112;
    v19 = previewImageFilePathURL;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Inserting bulletin with clip significant events: %@ hero frame URL: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  bulletinBoard = [(HMDCameraClipUserNotificationCenter *)selfCopy bulletinBoard];
  [bulletinBoard insertCameraClipSignificantEventBulletin:bulletinCopy];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)removeCachedHeroFrameImages
{
  workQueue = [(HMDCameraClipUserNotificationCenter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  fileManager = [(HMDCameraClipUserNotificationCenter *)self fileManager];
  fileManager2 = [(HMDCameraClipUserNotificationCenter *)self fileManager];
  heroFrameStoreDirectoryURL = [fileManager2 heroFrameStoreDirectoryURL];
  [fileManager removeItemAtURL:heroFrameStoreDirectoryURL error:0];

  fileManager3 = [(HMDCameraClipUserNotificationCenter *)self fileManager];
  fileManager4 = [(HMDCameraClipUserNotificationCenter *)self fileManager];
  legacyHeroFrameStoreDirectoryURL = [fileManager4 legacyHeroFrameStoreDirectoryURL];
  [fileManager3 removeItemAtURL:legacyHeroFrameStoreDirectoryURL error:0];
}

- (void)removeEventNotificationsForCameraProfile:(id)profile
{
  v16 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  workQueue = [(HMDCameraClipUserNotificationCenter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = profileCopy;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Removing camera clip bulletins for camera profile: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  bulletinBoard = [(HMDCameraClipUserNotificationCenter *)selfCopy bulletinBoard];
  [bulletinBoard removeCameraClipBulletinsForCameraProfile:profileCopy];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)removeEventNotificationForClipWithUUID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  workQueue = [(HMDCameraClipUserNotificationCenter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v9;
    v15 = 2112;
    v16 = dCopy;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Removing bulletin for clip with UUID: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  bulletinBoard = [(HMDCameraClipUserNotificationCenter *)selfCopy bulletinBoard];
  uUIDString = [dCopy UUIDString];
  [bulletinBoard removeBulletinWithRecordID:uUIDString];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)postNotificationForBulletin:(id)bulletin significantEvent:(id)event
{
  v26 = *MEMORY[0x277D85DE8];
  bulletinCopy = bulletin;
  eventCopy = event;
  previewImageFilePathURL = [bulletinCopy previewImageFilePathURL];

  if (previewImageFilePathURL)
  {
    [(HMDCameraClipUserNotificationCenter *)self _insertClipSignificantEventBulletin:bulletinCopy];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v12;
      v24 = 2112;
      v25 = eventCopy;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Fetching hero frame URL to post notification for significant event: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    camera = [bulletinCopy camera];
    clipManager = [camera clipManager];
    uniqueIdentifier = [eventCopy uniqueIdentifier];
    v16 = [clipManager fetchHeroFrameURLForSignificantEventWithUUID:uniqueIdentifier];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __84__HMDCameraClipUserNotificationCenter_postNotificationForBulletin_significantEvent___block_invoke;
    v19[3] = &unk_278685810;
    v19[4] = selfCopy;
    v20 = bulletinCopy;
    v21 = eventCopy;
    v17 = [v16 addCompletionBlock:v19];
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __84__HMDCameraClipUserNotificationCenter_postNotificationForBulletin_significantEvent___block_invoke(id *a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v27 = v6;
    v8 = objc_autoreleasePoolPush();
    v9 = a1[4];
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [a1[6] uniqueIdentifier];
      *buf = 138543874;
      v29 = v11;
      v30 = 2112;
      v31 = v12;
      v32 = 2112;
      v33 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Posting notification after fetching hero frame URL for significant event %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v25 = [HMDCameraClipSignificantEventBulletin alloc];
    v13 = [a1[5] significantEvents];
    v14 = [a1[5] previewImageNotificationUUID];
    v15 = [a1[5] dateOfOccurrence];
    v16 = [a1[5] camera];
    v17 = [a1[5] home];
    v18 = [a1[5] accessory];
    v19 = [a1[5] recordingService];
    v20 = [a1[5] clipUUID];
    LOBYTE(v24) = [a1[5] shouldShowProvideFeedbackButton];
    v21 = [(HMDCameraClipSignificantEventBulletin *)v25 initWithSignificantEvents:v13 previewImageNotificationUUID:v14 previewImageFilePathURL:v5 dateOfOccurrence:v15 camera:v16 home:v17 accessory:v18 recordingService:v19 clipUUID:v20 shouldShowProvideFeedbackButton:v24];
    v26 = v5;
    v22 = v21;

    [a1[4] _insertClipSignificantEventBulletin:v22];
    v5 = v26;
    v7 = v27;
  }

  else
  {
    [a1[4] _insertClipSignificantEventBulletin:a1[5]];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)createBulletinForSignificantEvents:(id)events cameraProfile:(id)profile
{
  v44 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  profileCopy = profile;
  accessory = [profileCopy accessory];
  v9 = accessory;
  if (accessory)
  {
    home = [accessory home];
    if (home)
    {
      if ([eventsCopy count])
      {
        recordingManagementService = [profileCopy recordingManagementService];
        allObjects = [eventsCopy allObjects];
        v12 = [allObjects sortedArrayUsingComparator:&__block_literal_global_252212];

        [(HMDCameraClipUserNotificationCenter *)self _firstAvailableHeroFrameURLForSignificantEvents:v12 cameraProfile:profileCopy];
        v37 = v36 = v12;
        firstObject = [v12 firstObject];
        [firstObject uniqueIdentifier];
        v14 = v39 = profileCopy;

        lastObject = [v12 lastObject];
        dateOfOccurrence = [lastObject dateOfOccurrence];

        LOBYTE(lastObject) = [eventsCopy na_allObjectsPassTest:&__block_literal_global_3_252213];
        v17 = [HMDCameraClipSignificantEventBulletin alloc];
        anyObject = [eventsCopy anyObject];
        [anyObject clipUUID];
        v20 = v19 = home;
        LOBYTE(v35) = lastObject;
        v21 = [(HMDCameraClipSignificantEventBulletin *)v17 initWithSignificantEvents:eventsCopy previewImageNotificationUUID:v14 previewImageFilePathURL:v37 dateOfOccurrence:dateOfOccurrence camera:v39 home:v19 accessory:v9 recordingService:recordingManagementService clipUUID:v20 shouldShowProvideFeedbackButton:v35];

        home = v19;
        profileCopy = v39;

LABEL_14:
        goto LABEL_15;
      }

      v26 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543362;
        v41 = v29;
        v30 = "%{public}@Could not create a bulletin for empty set of significant events";
        v31 = v28;
        v32 = 12;
        goto LABEL_12;
      }
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543618;
        v41 = v29;
        v42 = 2112;
        v43 = v9;
        v30 = "%{public}@Could not create a bulletin for significant events because the home is nil for accessory: %@";
        v31 = v28;
        v32 = 22;
LABEL_12:
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, v30, buf, v32);
      }
    }

    objc_autoreleasePoolPop(v26);
    v21 = 0;
    goto LABEL_14;
  }

  v22 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v25 = HMFGetLogIdentifier();
    *buf = 138543618;
    v41 = v25;
    v42 = 2112;
    v43 = profileCopy;
    _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Could not create a bulletin for significant events because the accessory is nil for camera profile: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v22);
  v21 = 0;
LABEL_15:

  v33 = *MEMORY[0x277D85DE8];

  return v21;
}

uint64_t __88__HMDCameraClipUserNotificationCenter_createBulletinForSignificantEvents_cameraProfile___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 dateOfOccurrence];
  v6 = [v4 dateOfOccurrence];

  v7 = [v5 compare:v6];
  return v7;
}

- (HMDCameraClipUserNotificationCenter)initWithBulletinBoard:(id)board workQueue:(id)queue logIdentifier:(id)identifier fileManager:(id)manager
{
  boardCopy = board;
  queueCopy = queue;
  identifierCopy = identifier;
  managerCopy = manager;
  v18.receiver = self;
  v18.super_class = HMDCameraClipUserNotificationCenter;
  v15 = [(HMDCameraClipUserNotificationCenter *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_bulletinBoard, board);
    objc_storeStrong(&v16->_workQueue, queue);
    objc_storeStrong(&v16->_logIdentifier, identifier);
    objc_storeStrong(&v16->_fileManager, manager);
  }

  return v16;
}

- (HMDCameraClipUserNotificationCenter)initWithBulletinBoard:(id)board workQueue:(id)queue logIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queueCopy = queue;
  boardCopy = board;
  v11 = objc_alloc_init(HMDFileManager);
  v12 = [(HMDCameraClipUserNotificationCenter *)self initWithBulletinBoard:boardCopy workQueue:queueCopy logIdentifier:identifierCopy fileManager:v11];

  return v12;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t8_252223 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t8_252223, &__block_literal_global_8_252224);
  }

  v3 = logCategory__hmf_once_v9_252225;

  return v3;
}

void __50__HMDCameraClipUserNotificationCenter_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v9_252225;
  logCategory__hmf_once_v9_252225 = v1;
}

@end