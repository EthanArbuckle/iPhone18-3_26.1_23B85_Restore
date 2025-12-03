@interface HMDCameraRecordingSessionVariantFragmentManager
+ (id)logCategory;
- (BOOL)expectsVariantFragment;
- (HMDCameraRecordingSessionVariantFragmentManager)initWithLogIdentifier:(id)identifier;
- (HMDCameraRecordingSessionVariantFragmentManagerDelegate)delegate;
- (void)_drainVariantFragmentQueue;
- (void)handleFullFragment:(id)fragment;
- (void)handleVariantFragment:(id)fragment;
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
  fullFragmentTimeRanges = [(HMDCameraRecordingSessionVariantFragmentManager *)self fullFragmentTimeRanges];
  lastObject = [fullFragmentTimeRanges lastObject];

  if (lastObject)
  {
    memset(&v36, 0, sizeof(v36));
    v26 = lastObject;
    [lastObject CMTimeRangeValue];
    variantFragments = [(HMDCameraRecordingSessionVariantFragmentManager *)self variantFragments];
    v6 = [variantFragments count];

    if (v6)
    {
      while (1)
      {
        variantFragments2 = [(HMDCameraRecordingSessionVariantFragmentManager *)self variantFragments];
        firstObject = [variantFragments2 firstObject];

        if (firstObject)
        {
          [firstObject timeRange];
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

        fullFragmentTimeRanges2 = [(HMDCameraRecordingSessionVariantFragmentManager *)self fullFragmentTimeRanges];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __77__HMDCameraRecordingSessionVariantFragmentManager__drainVariantFragmentQueue__block_invoke;
        v29[3] = &unk_27867CE30;
        v10 = firstObject;
        v30 = v10;
        v11 = [fullFragmentTimeRanges2 na_any:v29];

        v12 = objc_autoreleasePoolPush();
        selfCopy = self;
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
          _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Selecting variant fragment: %@, overlapsFullFragment: %@", &range, 0x20u);
        }

        objc_autoreleasePoolPop(v12);
        delegate = [(HMDCameraRecordingSessionVariantFragmentManager *)selfCopy delegate];
        [delegate variantFragmentManager:selfCopy didSelectVariantFragment:v10 overlapsFullFragment:v11];

        variantFragments3 = [(HMDCameraRecordingSessionVariantFragmentManager *)selfCopy variantFragments];
        [variantFragments3 hmf_removeFirstObject];

        fullFragmentTimeRanges3 = [(HMDCameraRecordingSessionVariantFragmentManager *)selfCopy fullFragmentTimeRanges];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __77__HMDCameraRecordingSessionVariantFragmentManager__drainVariantFragmentQueue__block_invoke_6;
        v27[3] = &unk_27867CE58;
        v28 = v10;
        v20 = v10;
        v21 = [fullFragmentTimeRanges3 indexesOfObjectsPassingTest:v27];

        fullFragmentTimeRanges4 = [(HMDCameraRecordingSessionVariantFragmentManager *)selfCopy fullFragmentTimeRanges];
        [fullFragmentTimeRanges4 removeObjectsAtIndexes:v21];

        variantFragments4 = [(HMDCameraRecordingSessionVariantFragmentManager *)selfCopy variantFragments];
        v24 = [variantFragments4 count];

        if (!v24)
        {
          goto LABEL_12;
        }
      }
    }

LABEL_12:
    lastObject = v26;
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

- (void)handleVariantFragment:(id)fragment
{
  v30 = *MEMORY[0x277D85DE8];
  fragmentCopy = fragment;
  if (!fragmentCopy)
  {
    _HMFPreconditionFailure();
  }

  v5 = fragmentCopy;
  variantFragments = [(HMDCameraRecordingSessionVariantFragmentManager *)self variantFragments];
  v7 = [variantFragments count];

  if (v7 >= 4)
  {
    variantFragments2 = [(HMDCameraRecordingSessionVariantFragmentManager *)self variantFragments];
    firstObject = [variantFragments2 firstObject];

    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v13;
      v26 = 2112;
      v27 = v5;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Selecting non-overlapping variant fragment: %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    delegate = [(HMDCameraRecordingSessionVariantFragmentManager *)selfCopy delegate];
    [delegate variantFragmentManager:selfCopy didSelectVariantFragment:firstObject overlapsFullFragment:0];

    variantFragments3 = [(HMDCameraRecordingSessionVariantFragmentManager *)selfCopy variantFragments];
    [variantFragments3 hmf_removeFirstObject];
  }

  v16 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    variantFragments4 = [(HMDCameraRecordingSessionVariantFragmentManager *)selfCopy2 variantFragments];
    v21 = [variantFragments4 count];
    v24 = 138543874;
    v25 = v19;
    v26 = 2112;
    v27 = v5;
    v28 = 2048;
    v29 = v21 + 1;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Buffering variant fragment: %@, count: %lu", &v24, 0x20u);
  }

  objc_autoreleasePoolPop(v16);
  variantFragments5 = [(HMDCameraRecordingSessionVariantFragmentManager *)selfCopy2 variantFragments];
  [variantFragments5 addObject:v5];

  [(HMDCameraRecordingSessionVariantFragmentManager *)selfCopy2 _drainVariantFragmentQueue];
  v23 = *MEMORY[0x277D85DE8];
}

- (void)handleFullFragment:(id)fragment
{
  fragmentCopy = fragment;
  if (fragmentCopy)
  {
    v5 = fragmentCopy;
    fullFragmentTimeRanges = [(HMDCameraRecordingSessionVariantFragmentManager *)self fullFragmentTimeRanges];
    v7 = MEMORY[0x277CCAE60];
    [v5 timeRange];
    v8 = [v7 valueWithCMTimeRange:&v11];
    [fullFragmentTimeRanges addObject:v8];

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
  fullFragmentTimeRanges = [(HMDCameraRecordingSessionVariantFragmentManager *)self fullFragmentTimeRanges];
  v3 = [fullFragmentTimeRanges count] != 0;

  return v3;
}

- (HMDCameraRecordingSessionVariantFragmentManager)initWithLogIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = HMDCameraRecordingSessionVariantFragmentManager;
  v6 = [(HMDCameraRecordingSessionVariantFragmentManager *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_logIdentifier, identifier);
    array = [MEMORY[0x277CBEB18] array];
    fullFragmentTimeRanges = v7->_fullFragmentTimeRanges;
    v7->_fullFragmentTimeRanges = array;

    array2 = [MEMORY[0x277CBEB18] array];
    variantFragments = v7->_variantFragments;
    v7->_variantFragments = array2;
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_172864 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_172864, &__block_literal_global_172865);
  }

  v3 = logCategory__hmf_once_v4_172866;

  return v3;
}

void __62__HMDCameraRecordingSessionVariantFragmentManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4_172866;
  logCategory__hmf_once_v4_172866 = v1;
}

@end