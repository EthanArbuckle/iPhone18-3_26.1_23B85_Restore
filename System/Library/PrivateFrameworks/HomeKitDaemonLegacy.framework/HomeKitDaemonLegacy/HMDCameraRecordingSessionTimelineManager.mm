@interface HMDCameraRecordingSessionTimelineManager
+ (id)logCategory;
- (BOOL)isDoorbellTriggerActiveAtAnyTimeAfterOffset:(double)a3;
- (BOOL)isDoorbellTriggerActiveAtAnyTimeAfterOffset:(double)a3 forDuration:(double)a4;
- (BOOL)isMotionTriggerActiveAtAnyTimeAfterOffset:(double)a3;
- (BOOL)isMotionTriggerActiveAtAnyTimeAfterOffset:(double)a3 forDuration:(double)a4;
- (HMDCameraRecordingSessionTimelineManager)initWithWorkQueue:(id)a3 fragmentDuration:(double)a4 fragmentCreationReferenceDate:(id)a5 logIdentifier:(id)a6;
- (id)attributeDescriptions;
- (id)creationDateForFragmentAtTimeOffset:(double)a3;
- (void)handleDoorbellDidActivateAtDate:(id)a3;
- (void)handleMotionActive:(BOOL)a3 didChangeAtDate:(id)a4;
@end

@implementation HMDCameraRecordingSessionTimelineManager

- (id)attributeDescriptions
{
  v16[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDCameraRecordingSessionTimelineManager *)self logIdentifier];
  v5 = [v3 initWithName:@"Identifier" value:v4];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = MEMORY[0x277CCABB0];
  [(HMDCameraRecordingSessionTimelineManager *)self fragmentDuration];
  v8 = [v7 numberWithDouble:?];
  v9 = [v6 initWithName:@"Fragment Duration" value:v8];
  v16[1] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  v11 = [(HMDCameraRecordingSessionTimelineManager *)self fragmentCreationReferenceDate];
  v12 = [v10 initWithName:@"Fragment Creation Reference Date" value:v11];
  v16[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)isMotionTriggerActiveAtAnyTimeAfterOffset:(double)a3
{
  v5 = [(HMDCameraRecordingSessionTimelineManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraRecordingSessionTimelineManager *)self fragmentCreationReferenceDate];
  v7 = [v6 dateByAddingTimeInterval:a3];

  v8 = [MEMORY[0x277CBEAA8] distantFuture];
  v9 = [(HMDCameraRecordingSessionTimelineManager *)self motionActiveDateIntervals];
  v10 = [v9 lastObject];

  v11 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v7 endDate:v8];
  v12 = [v10 intersectsDateInterval:v11];

  return v12;
}

- (BOOL)isDoorbellTriggerActiveAtAnyTimeAfterOffset:(double)a3
{
  v5 = [(HMDCameraRecordingSessionTimelineManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraRecordingSessionTimelineManager *)self fragmentCreationReferenceDate];
  v7 = [v6 dateByAddingTimeInterval:a3];

  v8 = [MEMORY[0x277CBEAA8] distantFuture];
  v9 = [(HMDCameraRecordingSessionTimelineManager *)self doorbellActiveDateIntervals];
  v10 = [v9 lastObject];

  v11 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v7 endDate:v8];
  v12 = [v10 intersectsDateInterval:v11];

  return v12;
}

- (void)handleDoorbellDidActivateAtDate:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraRecordingSessionTimelineManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraRecordingSessionTimelineManager *)self doorbellActiveDateIntervals];
  v7 = [v6 lastObject];

  v8 = v4;
  [(HMDCameraRecordingSessionTimelineManager *)self fragmentDuration];
  v10 = [v8 dateByAddingTimeInterval:v9 + v9];
  v11 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v8 endDate:v10];
  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v11 startDate];
    v17 = [(HMDCameraRecordingSessionTimelineManager *)v13 fragmentCreationReferenceDate];
    [v16 timeIntervalSinceDate:v17];
    v28 = 138543618;
    v29 = v15;
    v30 = 2048;
    v31 = v18;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Doorbell trigger activated at time offset: %f", &v28, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  v19 = objc_autoreleasePoolPush();
  v20 = v13;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    v23 = [v11 endDate];
    v24 = [(HMDCameraRecordingSessionTimelineManager *)v20 fragmentCreationReferenceDate];
    [v23 timeIntervalSinceDate:v24];
    v28 = 138543618;
    v29 = v22;
    v30 = 2048;
    v31 = v25;
    _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Doorbell trigger will be deactivated at time offset: %f", &v28, 0x16u);
  }

  objc_autoreleasePoolPop(v19);
  v26 = [(HMDCameraRecordingSessionTimelineManager *)v20 doorbellActiveDateIntervals];
  [v26 addObject:v11];

  v27 = *MEMORY[0x277D85DE8];
}

- (void)handleMotionActive:(BOOL)a3 didChangeAtDate:(id)a4
{
  v4 = a3;
  v39 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(HMDCameraRecordingSessionTimelineManager *)self workQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(HMDCameraRecordingSessionTimelineManager *)self motionActiveDateIntervals];
  v9 = [v8 lastObject];

  v10 = [MEMORY[0x277CBEAA8] distantFuture];
  v11 = [v9 startDate];
  v12 = [v9 endDate];
  v13 = [v12 isEqual:v10];

  if ((v13 & 1) == 0)
  {
    v14 = [v9 endDate];

    v11 = v14;
  }

  if (v4)
  {
    if (!v9 || ([v9 endDate], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqualToDate:", v10), v15, (v16 & 1) == 0))
    {
      v17 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v6 endDate:v10];
      v18 = [(HMDCameraRecordingSessionTimelineManager *)self motionActiveDateIntervals];
      [v18 addObject:v17];

      v19 = objc_autoreleasePoolPush();
      v20 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        v23 = [(HMDCameraRecordingSessionTimelineManager *)v20 fragmentCreationReferenceDate];
        [v6 timeIntervalSinceDate:v23];
        v35 = 138543618;
        v36 = v22;
        v37 = 2048;
        v38 = v24;
        v25 = "%{public}@Motion trigger activated at time offset: %f";
LABEL_12:
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, v25, &v35, 0x16u);

        goto LABEL_13;
      }

      goto LABEL_13;
    }
  }

  else if (v9)
  {
    v26 = [v9 endDate];
    v27 = [v26 isEqualToDate:v10];

    if (v27)
    {
      v28 = [(HMDCameraRecordingSessionTimelineManager *)self motionActiveDateIntervals];
      [v28 removeLastObject];

      v29 = objc_alloc(MEMORY[0x277CCA970]);
      v30 = [v9 startDate];
      v17 = [v29 initWithStartDate:v30 endDate:v6];

      v31 = [(HMDCameraRecordingSessionTimelineManager *)self motionActiveDateIntervals];
      [v31 addObject:v17];

      v19 = objc_autoreleasePoolPush();
      v32 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        v23 = [(HMDCameraRecordingSessionTimelineManager *)v32 fragmentCreationReferenceDate];
        [v6 timeIntervalSinceDate:v23];
        v35 = 138543618;
        v36 = v22;
        v37 = 2048;
        v38 = v33;
        v25 = "%{public}@Motion trigger deactivated at time offset: %f";
        goto LABEL_12;
      }

LABEL_13:

      objc_autoreleasePoolPop(v19);
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (BOOL)isDoorbellTriggerActiveAtAnyTimeAfterOffset:(double)a3 forDuration:(double)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = [(HMDCameraRecordingSessionTimelineManager *)self workQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(HMDCameraRecordingSessionTimelineManager *)self creationDateForFragmentAtTimeOffset:a3];
  v9 = objc_alloc(MEMORY[0x277CCA970]);
  v10 = [v8 dateByAddingTimeInterval:a4];
  v11 = [v9 initWithStartDate:v8 endDate:v10];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = [(HMDCameraRecordingSessionTimelineManager *)self doorbellActiveDateIntervals];
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = *v19;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v12);
        }

        if ([*(*(&v18 + 1) + 8 * i) intersectsDateInterval:v11])
        {
          LOBYTE(v13) = 1;
          goto LABEL_11;
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)isMotionTriggerActiveAtAnyTimeAfterOffset:(double)a3 forDuration:(double)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = [(HMDCameraRecordingSessionTimelineManager *)self workQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(HMDCameraRecordingSessionTimelineManager *)self creationDateForFragmentAtTimeOffset:a3];
  v9 = objc_alloc(MEMORY[0x277CCA970]);
  v10 = [v8 dateByAddingTimeInterval:a4];
  v11 = [v9 initWithStartDate:v8 endDate:v10];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = [(HMDCameraRecordingSessionTimelineManager *)self motionActiveDateIntervals];
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = *v19;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v12);
        }

        if ([*(*(&v18 + 1) + 8 * i) intersectsDateInterval:v11])
        {
          LOBYTE(v13) = 1;
          goto LABEL_11;
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)creationDateForFragmentAtTimeOffset:(double)a3
{
  v5 = [(HMDCameraRecordingSessionTimelineManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraRecordingSessionTimelineManager *)self fragmentCreationReferenceDate];
  v7 = [v6 dateByAddingTimeInterval:a3];

  return v7;
}

- (HMDCameraRecordingSessionTimelineManager)initWithWorkQueue:(id)a3 fragmentDuration:(double)a4 fragmentCreationReferenceDate:(id)a5 logIdentifier:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if (!v11)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (a4 <= 0.0)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!v12)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v14 = v13;
  if (!v13)
  {
LABEL_11:
    v24 = _HMFPreconditionFailure();
    return +[(HMDCameraRecordingSessionTimelineManager *)v24];
  }

  v26.receiver = self;
  v26.super_class = HMDCameraRecordingSessionTimelineManager;
  v15 = [(HMDCameraRecordingSessionTimelineManager *)&v26 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_workQueue, a3);
    v16->_fragmentDuration = a4;
    v17 = [v12 copy];
    fragmentCreationReferenceDate = v16->_fragmentCreationReferenceDate;
    v16->_fragmentCreationReferenceDate = v17;

    v19 = [MEMORY[0x277CBEB18] array];
    motionActiveDateIntervals = v16->_motionActiveDateIntervals;
    v16->_motionActiveDateIntervals = v19;

    v21 = [MEMORY[0x277CBEB18] array];
    doorbellActiveDateIntervals = v16->_doorbellActiveDateIntervals;
    v16->_doorbellActiveDateIntervals = v21;

    objc_storeStrong(&v16->_logIdentifier, a6);
  }

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_63878 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_63878, &__block_literal_global_63879);
  }

  v3 = logCategory__hmf_once_v5_63880;

  return v3;
}

uint64_t __55__HMDCameraRecordingSessionTimelineManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_63880;
  logCategory__hmf_once_v5_63880 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end