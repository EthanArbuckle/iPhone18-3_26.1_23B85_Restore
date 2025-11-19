@interface HMDCameraClipUserNotificationCenter
+ (id)logCategory;
- (HMDCameraClipUserNotificationCenter)initWithBulletinBoard:(id)a3 workQueue:(id)a4 logIdentifier:(id)a5;
- (HMDCameraClipUserNotificationCenter)initWithBulletinBoard:(id)a3 workQueue:(id)a4 logIdentifier:(id)a5 fileManager:(id)a6;
- (id)_firstAvailableHeroFrameURLForSignificantEvents:(id)a3 cameraProfile:(id)a4;
- (id)createBulletinForSignificantEvents:(id)a3 cameraProfile:(id)a4;
- (void)_insertClipSignificantEventBulletin:(id)a3;
- (void)postNotificationForBulletin:(id)a3 significantEvent:(id)a4;
- (void)removeCachedHeroFrameImages;
- (void)removeEventNotificationForClipWithUUID:(id)a3;
- (void)removeEventNotificationsForCameraProfile:(id)a3;
@end

@implementation HMDCameraClipUserNotificationCenter

- (id)_firstAvailableHeroFrameURLForSignificantEvents:(id)a3 cameraProfile:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v6;
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
      v14 = [v7 clipManager];
      v15 = [v13 uniqueIdentifier];
      v16 = [v14 heroFrameURLForSignificantEventWithUUID:v15];

      if (v16)
      {
        v17 = [(HMDCameraClipUserNotificationCenter *)self fileManager];
        v18 = [v17 fileExistsAtURL:v16];

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

- (void)_insertClipSignificantEventBulletin:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraClipUserNotificationCenter *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 significantEvents];
    v11 = [v4 previewImageFilePathURL];
    v14 = 138543874;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Inserting bulletin with clip significant events: %@ hero frame URL: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v12 = [(HMDCameraClipUserNotificationCenter *)v7 bulletinBoard];
  [v12 insertCameraClipSignificantEventBulletin:v4];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)removeCachedHeroFrameImages
{
  v3 = [(HMDCameraClipUserNotificationCenter *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraClipUserNotificationCenter *)self fileManager];
  v5 = [(HMDCameraClipUserNotificationCenter *)self fileManager];
  v6 = [v5 heroFrameStoreDirectoryURL];
  [v4 removeItemAtURL:v6 error:0];

  v9 = [(HMDCameraClipUserNotificationCenter *)self fileManager];
  v7 = [(HMDCameraClipUserNotificationCenter *)self fileManager];
  v8 = [v7 legacyHeroFrameStoreDirectoryURL];
  [v9 removeItemAtURL:v8 error:0];
}

- (void)removeEventNotificationsForCameraProfile:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraClipUserNotificationCenter *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Removing camera clip bulletins for camera profile: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraClipUserNotificationCenter *)v7 bulletinBoard];
  [v10 removeCameraClipBulletinsForCameraProfile:v4];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)removeEventNotificationForClipWithUUID:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraClipUserNotificationCenter *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v9;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Removing bulletin for clip with UUID: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraClipUserNotificationCenter *)v7 bulletinBoard];
  v11 = [v4 UUIDString];
  [v10 removeBulletinWithRecordID:v11];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)postNotificationForBulletin:(id)a3 significantEvent:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 previewImageFilePathURL];

  if (v8)
  {
    [(HMDCameraClipUserNotificationCenter *)self _insertClipSignificantEventBulletin:v6];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v12;
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Fetching hero frame URL to post notification for significant event: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [v6 camera];
    v14 = [v13 clipManager];
    v15 = [v7 uniqueIdentifier];
    v16 = [v14 fetchHeroFrameURLForSignificantEventWithUUID:v15];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __84__HMDCameraClipUserNotificationCenter_postNotificationForBulletin_significantEvent___block_invoke;
    v19[3] = &unk_279731518;
    v19[4] = v10;
    v20 = v6;
    v21 = v7;
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
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Posting notification after fetching hero frame URL for significant event %@: %@", buf, 0x20u);
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

- (id)createBulletinForSignificantEvents:(id)a3 cameraProfile:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 accessory];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 home];
    if (v10)
    {
      if ([v6 count])
      {
        v38 = [v7 recordingManagementService];
        v11 = [v6 allObjects];
        v12 = [v11 sortedArrayUsingComparator:&__block_literal_global_170253];

        [(HMDCameraClipUserNotificationCenter *)self _firstAvailableHeroFrameURLForSignificantEvents:v12 cameraProfile:v7];
        v37 = v36 = v12;
        v13 = [v12 firstObject];
        [v13 uniqueIdentifier];
        v14 = v39 = v7;

        v15 = [v12 lastObject];
        v16 = [v15 dateOfOccurrence];

        LOBYTE(v15) = [v6 na_allObjectsPassTest:&__block_literal_global_3_170254];
        v17 = [HMDCameraClipSignificantEventBulletin alloc];
        v18 = [v6 anyObject];
        [v18 clipUUID];
        v20 = v19 = v10;
        LOBYTE(v35) = v15;
        v21 = [(HMDCameraClipSignificantEventBulletin *)v17 initWithSignificantEvents:v6 previewImageNotificationUUID:v14 previewImageFilePathURL:v37 dateOfOccurrence:v16 camera:v39 home:v19 accessory:v9 recordingService:v38 clipUUID:v20 shouldShowProvideFeedbackButton:v35];

        v10 = v19;
        v7 = v39;

LABEL_14:
        goto LABEL_15;
      }

      v26 = objc_autoreleasePoolPush();
      v27 = self;
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
      v27 = self;
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
        _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, v30, buf, v32);
      }
    }

    objc_autoreleasePoolPop(v26);
    v21 = 0;
    goto LABEL_14;
  }

  v22 = objc_autoreleasePoolPush();
  v23 = self;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v25 = HMFGetLogIdentifier();
    *buf = 138543618;
    v41 = v25;
    v42 = 2112;
    v43 = v7;
    _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Could not create a bulletin for significant events because the accessory is nil for camera profile: %@", buf, 0x16u);
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

- (HMDCameraClipUserNotificationCenter)initWithBulletinBoard:(id)a3 workQueue:(id)a4 logIdentifier:(id)a5 fileManager:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = HMDCameraClipUserNotificationCenter;
  v15 = [(HMDCameraClipUserNotificationCenter *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_bulletinBoard, a3);
    objc_storeStrong(&v16->_workQueue, a4);
    objc_storeStrong(&v16->_logIdentifier, a5);
    objc_storeStrong(&v16->_fileManager, a6);
  }

  return v16;
}

- (HMDCameraClipUserNotificationCenter)initWithBulletinBoard:(id)a3 workQueue:(id)a4 logIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(HMDFileManager);
  v12 = [(HMDCameraClipUserNotificationCenter *)self initWithBulletinBoard:v10 workQueue:v9 logIdentifier:v8 fileManager:v11];

  return v12;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t8_170264 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t8_170264, &__block_literal_global_8_170265);
  }

  v3 = logCategory__hmf_once_v9_170266;

  return v3;
}

uint64_t __50__HMDCameraClipUserNotificationCenter_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v9_170266;
  logCategory__hmf_once_v9_170266 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end