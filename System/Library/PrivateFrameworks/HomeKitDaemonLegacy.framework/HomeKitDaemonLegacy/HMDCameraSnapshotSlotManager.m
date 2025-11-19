@interface HMDCameraSnapshotSlotManager
+ (HMDCameraSnapshotSlotManager)sharedManager;
+ (id)logCategory;
- (BOOL)fillSlotWithIdentifier:(id)a3 filePath:(id)a4 error:(id *)a5;
- (CGImage)_createSnapshotCGImageRefFromFileWithPath:(id)a3 error:(id *)a4;
- (HMDCameraSnapshotSlotManager)init;
- (id)createSlot;
- (unsigned)_createSlot;
- (void)_backboardServicesRelaunched;
- (void)_createSnapshotContext;
- (void)clearSlotWithIdentifier:(id)a3;
- (void)deleteSlotWithIdentifier:(id)a3;
@end

@implementation HMDCameraSnapshotSlotManager

- (CGImage)_createSnapshotCGImageRefFromFileWithPath:(id)a3 error:(id *)a4
{
  v29[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6];
  v8 = *MEMORY[0x277CD3610];
  v28[0] = *MEMORY[0x277CD3618];
  v28[1] = v8;
  v29[0] = MEMORY[0x277CBEC28];
  v29[1] = MEMORY[0x277CBEC38];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
  v10 = CGImageSourceCreateWithURL(v7, v9);
  if (!v10)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v21;
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to create CGImageRef: CGImageSourceCreateWithURL() returned NULL for path: %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    if (a4)
    {
      v17 = @"Failed to create CGImageRef: CGImageSourceCreateWithURL() returned NULL";
      goto LABEL_11;
    }

LABEL_12:
    ImageAtIndex = 0;
    goto LABEL_13;
  }

  v11 = v10;
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v10, 0, 0);
  CFRelease(v11);
  if (!ImageAtIndex)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v16;
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to create CGImageRef: CGImageSourceCreateImageAtIndex() returned NULL for image source created from path: %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    if (a4)
    {
      v17 = @"Failed to create CGImageRef: CGImageSourceCreateImageAtIndex() returned NULL for image source";
LABEL_11:
      [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:0 reason:v17 suggestion:0];
      *a4 = ImageAtIndex = 0;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_13:

  v22 = *MEMORY[0x277D85DE8];
  return ImageAtIndex;
}

- (unsigned)_createSlot
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraSnapshotSlotManager *)self snapshotContext];
  v4 = [v3 createSlot];

  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 1024;
    v14 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Created snapshot slot: %u", &v11, 0x12u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)deleteSlotWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"com.apple.homed.snapshot-catransaction-deleteslot."];
  v6 = [(HMDCameraSnapshotSlotManager *)self clientQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__HMDCameraSnapshotSlotManager_deleteSlotWithIdentifier___block_invoke;
  v8[3] = &unk_2797359B0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

uint64_t __57__HMDCameraSnapshotSlotManager_deleteSlotWithIdentifier___block_invoke(uint64_t a1)
{
  [MEMORY[0x277CD9FF0] begin];
  [*(a1 + 32) _deleteSlotWithIdentifier:{objc_msgSend(*(a1 + 40), "unsignedIntegerValue")}];
  v2 = MEMORY[0x277CD9FF0];

  return [v2 commit];
}

- (void)clearSlotWithIdentifier:(id)a3
{
  v4 = MEMORY[0x277CD9FF0];
  v5 = a3;
  [v4 begin];
  v6 = [v5 unsignedIntegerValue];

  [(HMDCameraSnapshotSlotManager *)self _clearSlotWithIdentifier:v6];
  v7 = MEMORY[0x277CD9FF0];

  [v7 commit];
}

- (BOOL)fillSlotWithIdentifier:(id)a3 filePath:(id)a4 error:(id *)a5
{
  v8 = MEMORY[0x277CD9FF0];
  v9 = a4;
  v10 = a3;
  [v8 begin];
  v11 = [v10 unsignedIntegerValue];

  LOBYTE(a5) = [(HMDCameraSnapshotSlotManager *)self _fillSlotWithIdentifier:v11 filePath:v9 error:a5];
  [MEMORY[0x277CD9FF0] commit];
  return a5;
}

- (id)createSlot
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__43792;
  v12 = __Block_byref_object_dispose__43793;
  v13 = 0;
  v3 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"com.apple.homed.snapshot-catransaction-createslot."];
  v4 = [(HMDCameraSnapshotSlotManager *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__HMDCameraSnapshotSlotManager_createSlot__block_invoke;
  v7[3] = &unk_279734898;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __42__HMDCameraSnapshotSlotManager_createSlot__block_invoke(uint64_t a1)
{
  [MEMORY[0x277CD9FF0] begin];
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(*(a1 + 32), "_createSlot")}];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = MEMORY[0x277CD9FF0];

  return [v5 commit];
}

- (void)_backboardServicesRelaunched
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Backboard services relaunched", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDCameraSnapshotSlotManager *)v4 _createSnapshotContext];
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 postNotificationName:@"HMDBackboardServicesRelaunchNotification" object:v4];

  __createBackboardWatcher(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_createSnapshotContext
{
  v3 = objc_autoreleasePoolPush();
  [MEMORY[0x277CD9FF0] begin];
  v4 = [MEMORY[0x277CD9E38] remoteContext];
  [(HMDCameraSnapshotSlotManager *)self setSnapshotContext:v4];

  [MEMORY[0x277CD9FF0] commit];

  objc_autoreleasePoolPop(v3);
}

- (HMDCameraSnapshotSlotManager)init
{
  v9.receiver = self;
  v9.super_class = HMDCameraSnapshotSlotManager;
  v2 = [(HMDCameraSnapshotSlotManager *)&v9 init];
  if (v2)
  {
    v3 = HMDispatchQueueNameString();
    v4 = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(v4, v5);
    clientQueue = v2->_clientQueue;
    v2->_clientQueue = v6;

    [(HMDCameraSnapshotSlotManager *)v2 _createSnapshotContext];
    __createBackboardWatcher(v2);
  }

  return v2;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t13 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t13, &__block_literal_global_23_43814);
  }

  v3 = logCategory__hmf_once_v14;

  return v3;
}

uint64_t __43__HMDCameraSnapshotSlotManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v14;
  logCategory__hmf_once_v14 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (HMDCameraSnapshotSlotManager)sharedManager
{
  if (sharedManager_onceToken_43819 != -1)
  {
    dispatch_once(&sharedManager_onceToken_43819, &__block_literal_global_43820);
  }

  v3 = sharedManager_sharedManager;

  return v3;
}

uint64_t __45__HMDCameraSnapshotSlotManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(HMDCameraSnapshotSlotManager);
  v1 = sharedManager_sharedManager;
  sharedManager_sharedManager = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end