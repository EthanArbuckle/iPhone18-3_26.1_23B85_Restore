@interface HMDCameraRecordingSessionVariantFragmentManager
+ (id)logCategory;
- (BOOL)expectsVariantFragment;
- (HMDCameraRecordingSessionVariantFragmentManager)initWithLogIdentifier:(id)a3;
- (HMDCameraRecordingSessionVariantFragmentManagerDelegate)delegate;
- (void)_drainVariantFragmentQueue;
- (void)handleFullFragment:(id)a3;
- (void)handleVariantFragment:(id)a3;
@end

@implementation HMDCameraRecordingSessionVariantFragmentManager

- (HMDCameraRecordingSessionVariantFragmentManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_drainVariantFragmentQueue
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraRecordingSessionVariantFragmentManager *)self fullFragmentTimeRanges];
  v4 = [v3 lastObject];

  if (v4)
  {
    memset(&v36, 0, sizeof(v36));
    v26 = v4;
    [v4 CMTimeRangeValue];
    v5 = [(HMDCameraRecordingSessionVariantFragmentManager *)self variantFragments];
    v6 = [v5 count];

    if (v6)
    {
      while (1)
      {
        v7 = [(HMDCameraRecordingSessionVariantFragmentManager *)self variantFragments];
        v8 = [v7 firstObject];

        if (v8)
        {
          [v8 timeRange];
        }

        else
        {
          v34 = 0u;
          v32 = 0u;
          v33 = 0u;
        }

        *&time1.value = v32;
        time1.epoch = v33;
        range = v36;
        CMTimeRangeGetEnd(&time2, &range);
        if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
        {
          break;
        }

        v9 = [(HMDCameraRecordingSessionVariantFragmentManager *)self fullFragmentTimeRanges];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __77__HMDCameraRecordingSessionVariantFragmentManager__drainVariantFragmentQueue__block_invoke;
        v29[3] = &unk_27972B7E0;
        v10 = v8;
        v30 = v10;
        v11 = [v9 na_any:v29];

        v12 = objc_autoreleasePoolPush();
        v13 = self;
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = HMFGetLogIdentifier();
          v16 = HMFBooleanToString();
          LODWORD(range.start.value) = 138543874;
          *(&range.start.value + 4) = v15;
          LOWORD(range.start.flags) = 2112;
          *(&range.start.flags + 2) = v10;
          HIWORD(range.start.epoch) = 2112;
          range.duration.value = v16;
          _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Selecting variant fragment: %@, overlapsFullFragment: %@", &range, 0x20u);
        }

        objc_autoreleasePoolPop(v12);
        v17 = [(HMDCameraRecordingSessionVariantFragmentManager *)v13 delegate];
        [v17 variantFragmentManager:v13 didSelectVariantFragment:v10 overlapsFullFragment:v11];

        v18 = [(HMDCameraRecordingSessionVariantFragmentManager *)v13 variantFragments];
        [v18 hmf_removeFirstObject];

        v19 = [(HMDCameraRecordingSessionVariantFragmentManager *)v13 fullFragmentTimeRanges];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __77__HMDCameraRecordingSessionVariantFragmentManager__drainVariantFragmentQueue__block_invoke_6;
        v27[3] = &unk_27972B808;
        v28 = v10;
        v20 = v10;
        v21 = [v19 indexesOfObjectsPassingTest:v27];

        v22 = [(HMDCameraRecordingSessionVariantFragmentManager *)v13 fullFragmentTimeRanges];
        [v22 removeObjectsAtIndexes:v21];

        v23 = [(HMDCameraRecordingSessionVariantFragmentManager *)v13 variantFragments];
        v24 = [v23 count];

        if (!v24)
        {
          goto LABEL_12;
        }
      }
    }

LABEL_12:
    v4 = v26;
  }

  v25 = *MEMORY[0x277D85DE8];
}

BOOL __77__HMDCameraRecordingSessionVariantFragmentManager__drainVariantFragmentQueue__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [v3 CMTimeRangeValue];
  }

  else
  {
    memset(&range, 0, sizeof(range));
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    [v5 timeRange];
  }

  else
  {
    memset(&otherRange, 0, sizeof(otherRange));
  }

  CMTimeRangeGetIntersection(&v16, &range, &otherRange);
  if ((v16.start.flags & 1) == 0)
  {
    goto LABEL_22;
  }

  if (v4)
  {
    [v4 CMTimeRangeValue];
  }

  else
  {
    memset(&range, 0, sizeof(range));
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    [v6 timeRange];
  }

  else
  {
    memset(&otherRange, 0, sizeof(otherRange));
  }

  CMTimeRangeGetIntersection(&v15, &range, &otherRange);
  if ((v15.duration.flags & 1) == 0)
  {
    goto LABEL_22;
  }

  if (v4)
  {
    [v4 CMTimeRangeValue];
  }

  else
  {
    memset(&range, 0, sizeof(range));
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    [v7 timeRange];
  }

  else
  {
    memset(&otherRange, 0, sizeof(otherRange));
  }

  CMTimeRangeGetIntersection(&v14, &range, &otherRange);
  if (v14.duration.epoch)
  {
    goto LABEL_22;
  }

  if (v4)
  {
    [v4 CMTimeRangeValue];
  }

  else
  {
    memset(&range, 0, sizeof(range));
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    [v10 timeRange];
  }

  else
  {
    memset(&otherRange, 0, sizeof(otherRange));
  }

  CMTimeRangeGetIntersection(&v13, &range, &otherRange);
  if (v13.duration.value < 0)
  {
LABEL_22:
    v8 = 1;
  }

  else
  {
    if (v4)
    {
      [v4 CMTimeRangeValue];
    }

    else
    {
      memset(&range, 0, sizeof(range));
    }

    v11 = *(a1 + 32);
    if (v11)
    {
      [v11 timeRange];
    }

    else
    {
      memset(&otherRange, 0, sizeof(otherRange));
    }

    CMTimeRangeGetIntersection(&v12, &range, &otherRange);
    range.start = v12.duration;
    *&otherRange.start.value = *MEMORY[0x277CC08F0];
    otherRange.start.epoch = *(MEMORY[0x277CC08F0] + 16);
    v8 = CMTimeCompare(&range.start, &otherRange.start) != 0;
  }

  return v8;
}

uint64_t __77__HMDCameraRecordingSessionVariantFragmentManager__drainVariantFragmentQueue__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [v3 CMTimeRangeValue];
  }

  else
  {
    memset(&range, 0, sizeof(range));
  }

  CMTimeRangeGetEnd(&time1, &range);
  v5 = *(a1 + 32);
  if (v5)
  {
    [v5 timeRange];
  }

  else
  {
    memset(&range, 0, sizeof(range));
  }

  CMTimeRangeGetEnd(&time2, &range);
  v6 = CMTimeCompare(&time1, &time2);

  return v6 >> 31;
}

- (void)handleVariantFragment:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    _HMFPreconditionFailure();
  }

  v5 = v4;
  v6 = [(HMDCameraRecordingSessionVariantFragmentManager *)self variantFragments];
  v7 = [v6 count];

  if (v7 >= 4)
  {
    v8 = [(HMDCameraRecordingSessionVariantFragmentManager *)self variantFragments];
    v9 = [v8 firstObject];

    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v13;
      v26 = 2112;
      v27 = v5;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Selecting non-overlapping variant fragment: %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [(HMDCameraRecordingSessionVariantFragmentManager *)v11 delegate];
    [v14 variantFragmentManager:v11 didSelectVariantFragment:v9 overlapsFullFragment:0];

    v15 = [(HMDCameraRecordingSessionVariantFragmentManager *)v11 variantFragments];
    [v15 hmf_removeFirstObject];
  }

  v16 = objc_autoreleasePoolPush();
  v17 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v20 = [(HMDCameraRecordingSessionVariantFragmentManager *)v17 variantFragments];
    v21 = [v20 count];
    v24 = 138543874;
    v25 = v19;
    v26 = 2112;
    v27 = v5;
    v28 = 2048;
    v29 = v21 + 1;
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Buffering variant fragment: %@, count: %lu", &v24, 0x20u);
  }

  objc_autoreleasePoolPop(v16);
  v22 = [(HMDCameraRecordingSessionVariantFragmentManager *)v17 variantFragments];
  [v22 addObject:v5];

  [(HMDCameraRecordingSessionVariantFragmentManager *)v17 _drainVariantFragmentQueue];
  v23 = *MEMORY[0x277D85DE8];
}

- (void)handleFullFragment:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v6 = [(HMDCameraRecordingSessionVariantFragmentManager *)self fullFragmentTimeRanges];
    v7 = MEMORY[0x277CCAE60];
    [v5 timeRange];
    v8 = [v7 valueWithCMTimeRange:&v11];
    [v6 addObject:v8];

    [(HMDCameraRecordingSessionVariantFragmentManager *)self _drainVariantFragmentQueue];
  }

  else
  {
    v9 = _HMFPreconditionFailure();
    [(HMDCameraRecordingSessionVariantFragmentManager *)v9 expectsVariantFragment];
  }
}

- (BOOL)expectsVariantFragment
{
  v2 = [(HMDCameraRecordingSessionVariantFragmentManager *)self fullFragmentTimeRanges];
  v3 = [v2 count] != 0;

  return v3;
}

- (HMDCameraRecordingSessionVariantFragmentManager)initWithLogIdentifier:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = HMDCameraRecordingSessionVariantFragmentManager;
  v6 = [(HMDCameraRecordingSessionVariantFragmentManager *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_logIdentifier, a3);
    v8 = [MEMORY[0x277CBEB18] array];
    fullFragmentTimeRanges = v7->_fullFragmentTimeRanges;
    v7->_fullFragmentTimeRanges = v8;

    v10 = [MEMORY[0x277CBEB18] array];
    variantFragments = v7->_variantFragments;
    v7->_variantFragments = v10;
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_114829 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_114829, &__block_literal_global_114830);
  }

  v3 = logCategory__hmf_once_v4_114831;

  return v3;
}

uint64_t __62__HMDCameraRecordingSessionVariantFragmentManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4_114831;
  logCategory__hmf_once_v4_114831 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end