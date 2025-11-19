@interface HMDCameraSnapshotRequestHandler
+ (id)_snapshotRequestOptions:(unint64_t)a3 resolution:(id)a4 accessory:(id)a5;
+ (id)logCategory;
- (HMDCameraSnapshotFile)_saveSnapshot:(uint64_t)a1;
- (HMDCameraSnapshotRequestHandler)initWithAccessory:(id)a3 workQueue:(id)a4 streamSnapshotHandler:(id)a5 imageCacheDirectory:(id)a6 logID:(id)a7;
- (void)_handleSnapshot:(void *)a3 error:;
- (void)_sendSnapshotRequest:(unint64_t)a3 streamingTierType:;
- (void)requestSnapshot:(id)a3 streamingTierType:(unint64_t)a4 completionHandler:(id)a5;
- (void)streamSnapshotHandler:(id)a3 didGetLastSnapshot:(id)a4;
- (void)streamSnapshotHandler:(id)a3 didGetNewSnapshot:(id)a4;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDCameraSnapshotRequestHandler

- (void)timerDidFire:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self)
  {
    dispatch_assert_queue_V2(self->_workQueue);
    mostRecentSnapshotInvalidationTimer = self->_mostRecentSnapshotInvalidationTimer;
  }

  else
  {
    dispatch_assert_queue_V2(0);
    mostRecentSnapshotInvalidationTimer = 0;
  }

  if (mostRecentSnapshotInvalidationTimer == v4)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Snapshot invalidation timer has fired, resetting the most recent snapshot", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    if (self)
    {
      objc_storeStrong(&v7->_mostRecentSnapshot, 0);
      objc_storeStrong(&v7->_mostRecentSnapshotInvalidationTimer, 0);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)streamSnapshotHandler:(id)a3 didGetLastSnapshot:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  dispatch_assert_queue_V2(workQueue);
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v12;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Received last snapshot", &v15, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [(HMDCameraSnapshotRequestHandler *)v10 _saveSnapshot:v7];

  v14 = *MEMORY[0x277D85DE8];
}

- (HMDCameraSnapshotFile)_saveSnapshot:(uint64_t)a1
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    v4 = [HMDCameraSnapshotFile alloc];
    v5 = [a1 imageCacheDirectory];
    v19 = 0;
    v6 = [(HMDCameraSnapshotFile *)v4 initWithDirectory:v5 snapshot:v3 error:&v19];
    v7 = v19;

    if (v6)
    {
      objc_storeStrong((a1 + 56), v6);
      v8 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:2.0];
      v9 = *(a1 + 48);
      *(a1 + 48) = v8;

      [*(a1 + 48) setDelegate:a1];
      v10 = *(a1 + 48);
      v11 = *(a1 + 16);
      [v10 setDelegateQueue:v11];

      [*(a1 + 48) resume];
      v12 = v6;
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = a1;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543874;
        v21 = v16;
        v22 = 2112;
        v23 = v3;
        v24 = 2112;
        v25 = v7;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to save snapshot %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
    }
  }

  else
  {
    v6 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)streamSnapshotHandler:(id)a3 didGetNewSnapshot:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  dispatch_assert_queue_V2(workQueue);
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v12)
    {
      v13 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v13;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Received new snapshot", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v14 = [(HMDCameraSnapshotRequestHandler *)v10 _saveSnapshot:v7];
  }

  else
  {
    if (v12)
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v15;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Received new snapshot but it was nil", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)requestSnapshot:(id)a3 streamingTierType:(unint64_t)a4 completionHandler:(id)a5
{
  v71 = *MEMORY[0x277D85DE8];
  v7 = a3;
  aBlock = a5;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  dispatch_assert_queue_V2(workQueue);
  v56 = v7;
  v9 = [v7 snapshotCharacteristicEventUUID];

  if (v9)
  {
    if (self)
    {
LABEL_5:
      v10 = self->_pendingCompletionHandlers;
      v11 = _Block_copy(aBlock);
      [(NSMutableArray *)v10 addObject:v11];

      pendingCompletionHandlers = self->_pendingCompletionHandlers;
      goto LABEL_6;
    }

LABEL_44:
    v51 = _Block_copy(aBlock);
    [0 addObject:v51];

    pendingCompletionHandlers = 0;
LABEL_6:
    if ([(NSMutableArray *)pendingCompletionHandlers count]< 2)
    {
      v22 = [(HMDCameraSnapshotRequestHandler *)self supportedResolutions];

      if (v22)
      {
        [(HMDCameraSnapshotRequestHandler *)self _sendSnapshotRequest:v7 streamingTierType:a4];
      }

      else
      {
        v27 = objc_autoreleasePoolPush();
        v28 = self;
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = HMFGetLogIdentifier();
          *buf = 138543362;
          v68 = v30;
          _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@Need to gather supported video resolutions by the camera", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v27);
        v52 = v7;
        if (self)
        {
          dispatch_assert_queue_V2(v28->_workQueue);
          v31 = objc_autoreleasePoolPush();
          val = v28;
          v32 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v33 = HMFGetLogIdentifier();
            *buf = 138543362;
            v68 = v33;
            _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Getting Supported Configuration", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v31);
          WeakRetained = objc_loadWeakRetained(val + 3);
          if (WeakRetained)
          {
            v58 = [MEMORY[0x277CBEB18] array];
            v65 = 0u;
            v66 = 0u;
            v63 = 0u;
            v64 = 0u;
            v34 = [WeakRetained services];
            v35 = [v34 countByEnumeratingWithState:&v63 objects:buf count:16];
            if (v35)
            {
              v36 = *v64;
              v37 = *MEMORY[0x277CFE830];
              v38 = *MEMORY[0x277CFE708];
              do
              {
                for (i = 0; i != v35; ++i)
                {
                  if (*v64 != v36)
                  {
                    objc_enumerationMutation(v34);
                  }

                  v40 = *(*(&v63 + 1) + 8 * i);
                  v41 = [v40 serviceType];
                  v42 = [v41 isEqualToString:v37];

                  if (v42)
                  {
                    v43 = [v40 findCharacteristicWithType:v38];
                    if (v43)
                    {
                      v44 = [HMDCharacteristicRequest requestWithCharacteristic:v43];
                      [v58 addObject:v44];
                    }
                  }
                }

                v35 = [v34 countByEnumeratingWithState:&v63 objects:buf count:16];
              }

              while (v35);
            }

            objc_initWeak(&location, val);
            v45 = val[2];
            v59[0] = MEMORY[0x277D85DD0];
            v59[1] = 3221225472;
            v59[2] = __83__HMDCameraSnapshotRequestHandler__getSupportedVideoResolutions_streamingTierType___block_invoke;
            v59[3] = &unk_279735AA8;
            objc_copyWeak(v61, &location);
            v60 = v52;
            v61[1] = a4;
            [WeakRetained readCharacteristicValues:v58 source:1070 queue:v45 completionHandler:v59];

            objc_destroyWeak(v61);
            objc_destroyWeak(&location);
          }

          else
          {
            v46 = objc_autoreleasePoolPush();
            v47 = val;
            v48 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              v49 = HMFGetLogIdentifier();
              *buf = 138543362;
              v68 = v49;
              _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_ERROR, "%{public}@Cannot get supported video resolutions: Accessory is no longer available", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v46);
            v58 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1011];
            [(HMDCameraSnapshotRequestHandler *)v47 _handleSnapshot:v58 error:?];
          }
        }
      }
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = self == 0;
        v17 = HMFGetLogIdentifier();
        if (v16)
        {
          v18 = 0;
        }

        else
        {
          v18 = v14->_pendingCompletionHandlers;
        }

        v19 = v18;
        v20 = [(NSMutableArray *)v19 firstObject];
        v21 = _Block_copy(v20);
        *buf = 138543618;
        v68 = v17;
        v69 = 2112;
        v70 = v21;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@There is already a request in progress so piggy backing on that: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
    }

    goto LABEL_42;
  }

  if (!self)
  {
    goto LABEL_44;
  }

  if (!self->_mostRecentSnapshot)
  {
    goto LABEL_5;
  }

  v23 = objc_autoreleasePoolPush();
  v24 = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = HMFGetLogIdentifier();
    *buf = 138543362;
    v68 = v26;
    _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Most recent snapshot is still valid", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v23);
  (*(aBlock + 2))(aBlock, v24->_mostRecentSnapshot, 0);
LABEL_42:

  v50 = *MEMORY[0x277D85DE8];
}

- (void)_sendSnapshotRequest:(unint64_t)a3 streamingTierType:
{
  v76 = *MEMORY[0x277D85DE8];
  v59 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    WeakRetained = objc_loadWeakRetained((a1 + 24));
    if (!WeakRetained)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = a1;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v17;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Cannot handle snapshot request: accessory is no longer available", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
      v18 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1011];
      [(HMDCameraSnapshotRequestHandler *)v15 _handleSnapshot:v18 error:?];
      goto LABEL_41;
    }

    dispatch_assert_queue_V2(*(a1 + 16));
    v5 = snapshotResolution;
    v56 = a3;
    v57 = a1;
    v55 = v5;
    if (v5)
    {
      v6 = [v5 unsignedIntegerValue];
      v7 = objc_autoreleasePoolPush();
      v8 = a1;
      v9 = HMFGetOSLogHandle();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
      if ((v6 - 1) < 0xA)
      {
        if (v10)
        {
          v11 = HMFGetLogIdentifier();
          v12 = HMDVideoResolutionTypeAsString(v6);
          *buf = 138543618;
          *&buf[4] = v11;
          *&buf[12] = 2112;
          *&buf[14] = v12;
          _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Overriding the resolution requested to %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v7);
        v13 = [[HMDVideoResolution alloc] initWithResolution:v6];
LABEL_38:

        v48 = [objc_opt_class() _snapshotRequestOptions:objc_msgSend(v59 resolution:"snapshotReason") accessory:{v13, WeakRetained}];
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v70 = __Block_byref_object_copy__194406;
        v71 = __Block_byref_object_dispose__194407;
        v72 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"com.apple.homed.snapshot-request"];
        [v59 markMilestoneFor:@"SentSnapshotRequestToAccessory"];
        v49 = objc_autoreleasePoolPush();
        v50 = v57;
        v51 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          v52 = HMFGetLogIdentifier();
          *v73 = 138543618;
          *&v73[4] = v52;
          *&v73[12] = 2112;
          *&v73[14] = v48;
          _os_log_impl(&dword_2531F8000, v51, OS_LOG_TYPE_INFO, "%{public}@Sending snapshot request to accessory with options: %@", v73, 0x16u);
        }

        objc_autoreleasePoolPop(v49);
        v53 = v50[2];
        v61[0] = MEMORY[0x277D85DD0];
        v61[1] = 3221225472;
        v61[2] = __74__HMDCameraSnapshotRequestHandler__sendSnapshotRequest_streamingTierType___block_invoke;
        v61[3] = &unk_279735A40;
        v61[4] = v50;
        v62 = v59;
        v63 = WeakRetained;
        v18 = v13;
        v64 = v18;
        v65 = buf;
        [v63 requestResource:v48 queue:v53 completionHandler:v61];

        _Block_object_dispose(buf, 8);
LABEL_41:

        goto LABEL_42;
      }

      if (v10)
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v19;
        *&buf[12] = 2048;
        *&buf[14] = v6;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Not overriding the resolution requested to %tu", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
    }

    v20 = [HMDCameraVideoParameterSelection videoResolutionPreferenceForStreamingTierType:a3];
    v21 = v20;
    if (a3 - 1 < 2)
    {
      v22 = [v20 na_filter:&__block_literal_global_15_194421];
    }

    else if (a3 - 3 >= 2)
    {
      if (a3)
      {
        v23 = v20;
        goto LABEL_21;
      }

      v22 = [HMDVideoResolution arrayWithResolutions:&unk_286627418];
    }

    else
    {
      v22 = [v20 na_filter:&__block_literal_global_18_194422];
    }

    v23 = v22;

LABEL_21:
    v24 = objc_autoreleasePoolPush();
    v25 = a1;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v27 = HMFGetLogIdentifier();
      v28 = HMDStreamingTierTypeAsString(v56);
      *buf = 138543874;
      *&buf[4] = v27;
      *&buf[12] = 2112;
      *&buf[14] = v23;
      *&buf[22] = 2112;
      v70 = v28;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_DEBUG, "%{public}@Resolutions in order of preference: %@ for tier: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v24);
    v74 = 0u;
    v75 = 0u;
    memset(v73, 0, sizeof(v73));
    obj = v23;
    v29 = [obj countByEnumeratingWithState:v73 objects:buf count:16];
    if (v29)
    {
      v30 = **&v73[16];
      v31 = MEMORY[0x277D85DD0];
LABEL_25:
      v32 = 0;
      while (1)
      {
        if (**&v73[16] != v30)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*&v73[8] + 8 * v32);
        v34 = [v33 resolutionType];
        dispatch_assert_queue_V2(v25[2]);
        v35 = [(dispatch_queue_t *)v25 supportedResolutions];
        *v66 = v31;
        *&v66[8] = 3221225472;
        *&v66[16] = __64__HMDCameraSnapshotRequestHandler__supportedResolutionWithType___block_invoke;
        v67 = &__block_descriptor_40_e28_B16__0__HMDVideoResolution_8l;
        v68[0] = v34;
        v36 = [v35 na_firstObjectPassingTest:v66];

        if (v36)
        {
          break;
        }

        if (v29 == ++v32)
        {
          v29 = [obj countByEnumeratingWithState:v73 objects:buf count:16];
          if (v29)
          {
            goto LABEL_25;
          }

          goto LABEL_31;
        }
      }

      v13 = v33;

      if (!v13)
      {
        goto LABEL_35;
      }

      v37 = objc_autoreleasePoolPush();
      v38 = v25;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = HMFGetLogIdentifier();
        v41 = HMDVideoResolutionTypeAsString([(HMDVideoResolution *)v13 resolutionType]);
        v42 = HMDStreamingTierTypeAsString(v56);
        *v66 = 138543874;
        *&v66[4] = v40;
        *&v66[12] = 2112;
        *&v66[14] = v41;
        *&v66[22] = 2112;
        v67 = v42;
        _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_INFO, "%{public}@Found preferred resolution: %@ in supported resolutions for tier: %@", v66, 0x20u);
      }
    }

    else
    {
LABEL_31:

LABEL_35:
      v13 = [[HMDVideoResolution alloc] initWithResolution:1];
      v37 = objc_autoreleasePoolPush();
      v43 = v25;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v44 = HMFGetLogIdentifier();
        v45 = [(dispatch_queue_t *)v43 supportedResolutions];
        v46 = HMDStreamingTierTypeAsString(v56);
        v47 = HMDVideoResolutionTypeAsString([(HMDVideoResolution *)v13 resolutionType]);
        *v66 = 138544130;
        *&v66[4] = v44;
        *&v66[12] = 2112;
        *&v66[14] = v45;
        *&v66[22] = 2112;
        v67 = v46;
        LOWORD(v68[0]) = 2112;
        *(v68 + 2) = v47;
        _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_INFO, "%{public}@Didn't find preferred resolution in supported resolutions: %@ for tier: %@. Defaulting to resolution: %@", v66, 0x2Au);
      }
    }

    objc_autoreleasePoolPop(v37);
    goto LABEL_38;
  }

LABEL_42:

  v54 = *MEMORY[0x277D85DE8];
}

- (void)_handleSnapshot:(void *)a3 error:
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    if (v5)
    {
      v7 = [(HMDCameraSnapshotRequestHandler *)a1 _saveSnapshot:v5];
      if (v7)
      {
        v8 = v7;
      }

      else
      {
        v9 = objc_autoreleasePoolPush();
        v10 = a1;
        v11 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = HMFGetLogIdentifier();
          *buf = 138543362;
          v26 = v12;
          _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to save snapshot file", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v9);
        v13 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1038];

        v8 = 0;
        v6 = v13;
      }
    }

    else
    {
      v8 = 0;
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = *(a1 + 32);
    v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v21;
      do
      {
        v18 = 0;
        do
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v14);
          }

          (*(*(*(&v20 + 1) + 8 * v18) + 16))(*(*(&v20 + 1) + 8 * v18));
          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v16);
    }

    [*(a1 + 32) removeAllObjects];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __74__HMDCameraSnapshotRequestHandler__sendSnapshotRequest_streamingTierType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if ([v5 length])
    {
      [*(a1 + 40) markMilestoneFor:@"ReceivedSnapshotFromAccessory"];
      [*(a1 + 48) updateActiveDisconnectOnIdleTimeout:20.0];
      v7 = [[HMDCameraSnapshot alloc] initWithImageData:v5 videoResolution:*(a1 + 56) transaction:*(*(*(a1 + 64) + 8) + 40)];
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = 0;
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = *(a1 + 32);
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v21 = 138543362;
        v22 = v18;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Accessory sent 0-length data for snapshot request", &v21, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      v19 = *(a1 + 32);
      v7 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1037];
      v8 = v19;
      v9 = 0;
      v10 = v7;
    }

    [(HMDCameraSnapshotRequestHandler *)v8 _handleSnapshot:v9 error:v10];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v14;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to request resource from accessory: %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    [(HMDCameraSnapshotRequestHandler *)*(a1 + 32) _handleSnapshot:v6 error:?];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __83__HMDCameraSnapshotRequestHandler__getSupportedVideoResolutions_streamingTierType___block_invoke(uint64_t a1, void *a2)
{
  v83 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v80 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Received response for supported configurations", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *(a1 + 32);
  v54 = *(a1 + 48);
  v10 = v3;
  v11 = v9;
  v12 = v11;
  if (v6)
  {
    v52 = v11;
    v60 = v6;
    dispatch_assert_queue_V2(v6[2]);
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v53 = v10;
    v13 = v10;
    v14 = [v13 countByEnumeratingWithState:&v65 objects:v77 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v66;
      v17 = *MEMORY[0x277CFE708];
      v18 = 0x277CBE000uLL;
      v56 = *v66;
      v57 = v13;
      v55 = *MEMORY[0x277CFE708];
      do
      {
        v19 = 0;
        v58 = v15;
        do
        {
          if (*v66 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v20 = *(*(&v65 + 1) + 8 * v19);
          v21 = [v20 value];
          v22 = *(v18 + 2704);
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v61 = v19;
            v24 = [v20 value];
            v25 = [v20 request];
            v26 = [v25 characteristic];
            v27 = [v26 type];
            v28 = [v27 isEqualToString:v17];

            if (v28)
            {
              v59 = v24;
              v29 = [(HAPTLVBase *)[HMDSupportedVideoStreamConfiguration alloc] initWithTLVData:v24];
              dispatch_assert_queue_V2(v60[2]);
              v30 = [MEMORY[0x277CBEB58] set];
              v73 = 0u;
              v74 = 0u;
              v75 = 0u;
              v76 = 0u;
              v64 = v29;
              obj = [(HMDSupportedVideoStreamConfiguration *)v29 codecConfigurations];
              v31 = [obj countByEnumeratingWithState:&v73 objects:buf count:16];
              if (v31)
              {
                v32 = v31;
                v63 = *v74;
                do
                {
                  for (i = 0; i != v32; ++i)
                  {
                    if (*v74 != v63)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v34 = *(*(&v73 + 1) + 8 * i);
                    v35 = [(HMDSupportedVideoStreamConfiguration *)v64 codecConfigurations];
                    v36 = [v35 objectForKeyedSubscript:v34];

                    v71 = 0u;
                    v72 = 0u;
                    v69 = 0u;
                    v70 = 0u;
                    v37 = [v36 videoAttributes];
                    v38 = [v37 countByEnumeratingWithState:&v69 objects:v78 count:16];
                    if (v38)
                    {
                      v39 = v38;
                      v40 = *v70;
                      do
                      {
                        for (j = 0; j != v39; ++j)
                        {
                          if (*v70 != v40)
                          {
                            objc_enumerationMutation(v37);
                          }

                          v42 = *(*(&v69 + 1) + 8 * j);
                          v43 = [v42 videoResolution];

                          if (v43)
                          {
                            v44 = [v42 videoResolution];
                            [v30 addObject:v44];
                          }
                        }

                        v39 = [v37 countByEnumeratingWithState:&v69 objects:v78 count:16];
                      }

                      while (v39);
                    }
                  }

                  v32 = [obj countByEnumeratingWithState:&v73 objects:buf count:16];
                }

                while (v32);
              }

              [(dispatch_queue_t *)v60 setSupportedResolutions:v30];
              v16 = v56;
              v13 = v57;
              v17 = v55;
              v18 = 0x277CBE000;
              v15 = v58;
              v24 = v59;
            }

            v19 = v61;
          }

          ++v19;
        }

        while (v19 != v15);
        v15 = [v13 countByEnumeratingWithState:&v65 objects:v77 count:16];
      }

      while (v15);
    }

    v45 = objc_autoreleasePoolPush();
    v6 = v60;
    v46 = v60;
    v47 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      v48 = HMFGetLogIdentifier();
      v49 = [(dispatch_queue_t *)v46 supportedResolutions];
      *buf = 138543618;
      v80 = v48;
      v81 = 2112;
      v82 = v49;
      _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_INFO, "%{public}@Supported resolutions are: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v45);
    v50 = v46;
    v12 = v52;
    [(HMDCameraSnapshotRequestHandler *)v50 _sendSnapshotRequest:v52 streamingTierType:v54];
    v10 = v53;
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (HMDCameraSnapshotRequestHandler)initWithAccessory:(id)a3 workQueue:(id)a4 streamSnapshotHandler:(id)a5 imageCacheDirectory:(id)a6 logID:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v22.receiver = self;
  v22.super_class = HMDCameraSnapshotRequestHandler;
  v17 = [(HMDCameraSnapshotRequestHandler *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_accessory, v12);
    objc_storeStrong(&v18->_workQueue, a4);
    v19 = [MEMORY[0x277CBEB18] array];
    pendingCompletionHandlers = v18->_pendingCompletionHandlers;
    v18->_pendingCompletionHandlers = v19;

    objc_storeStrong(&v18->_logIdentifier, a7);
    objc_storeStrong(&v18->_streamSnapshotHandler, a5);
    objc_storeStrong(&v18->_imageCacheDirectory, a6);
    [(HMDCameraStreamSnapshotHandler *)v18->_streamSnapshotHandler addDelegate:v18];
  }

  return v18;
}

+ (id)_snapshotRequestOptions:(unint64_t)a3 resolution:(id)a4 accessory:(id)a5
{
  v55 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = [MEMORY[0x277CBEB38] dictionary];
  [v9 setObject:*MEMORY[0x277CFE960] forKeyedSubscript:*MEMORY[0x277CFE980]];
  v10 = [v7 imageWidth];
  [v9 setObject:v10 forKeyedSubscript:*MEMORY[0x277CFE970]];

  v11 = [v7 imageHeight];
  [v9 setObject:v11 forKeyedSubscript:*MEMORY[0x277CFE968]];

  v12 = [v8 bridge];

  if (v12)
  {
    v13 = [v8 hapInstanceId];
    if (v13)
    {
      [v9 setObject:v13 forKeyedSubscript:*MEMORY[0x277CFE598]];
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = a1;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543362;
        v49 = v17;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unable to get the HAP instance id (aid) for bridged accessory.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
    }
  }

  v42 = a1;
  v43 = v8;
  v18 = v7;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v19 = [v8 services];
  v20 = [v19 countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v45;
    v23 = *MEMORY[0x277CD0DF8];
LABEL_10:
    v24 = 0;
    while (1)
    {
      if (*v45 != v22)
      {
        objc_enumerationMutation(v19);
      }

      v25 = *(*(&v44 + 1) + 8 * v24);
      v26 = [v25 type];
      v27 = [v26 isEqualToString:v23];

      if (v27)
      {
        break;
      }

      if (v21 == ++v24)
      {
        v21 = [v19 countByEnumeratingWithState:&v44 objects:v54 count:16];
        if (v21)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }
    }

    v30 = [v25 findCharacteristicWithType:*MEMORY[0x277CCF898]];
    v29 = v30 == 0;

    v31 = [v25 findCharacteristicWithType:@"00000225-0000-1000-8000-0026BB765291"];
    v28 = v31 == 0;

    if (v30)
    {
      v32 = v31 == 0;
    }

    else
    {
      v32 = 1;
    }

    if (!v32)
    {
      v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      [v9 setObject:v37 forKeyedSubscript:*MEMORY[0x277CFE978]];

      goto LABEL_25;
    }
  }

  else
  {
LABEL_16:

    v28 = 1;
    v29 = 1;
  }

  v33 = objc_autoreleasePoolPush();
  v34 = v42;
  v35 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    v36 = HMFGetLogIdentifier();
    *buf = 138543874;
    v49 = v36;
    v50 = 1024;
    v51 = v29;
    v52 = 1024;
    v53 = v28;
    _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@Either event snapshot active characteristic (%d) or periodic snapshot active characteristic (%d) is not present", buf, 0x18u);
  }

  objc_autoreleasePoolPop(v33);
LABEL_25:
  v38 = [v9 copy];

  v39 = *MEMORY[0x277D85DE8];

  return v38;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_194460 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_194460, &__block_literal_global_194461);
  }

  v3 = logCategory__hmf_once_v1_194462;

  return v3;
}

uint64_t __46__HMDCameraSnapshotRequestHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_194462;
  logCategory__hmf_once_v1_194462 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end