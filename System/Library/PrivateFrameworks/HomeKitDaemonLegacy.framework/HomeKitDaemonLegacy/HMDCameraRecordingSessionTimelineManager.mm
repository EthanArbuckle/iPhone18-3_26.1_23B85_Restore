@interface HMDCameraRecordingSessionTimelineManager
+ (id)logCategory;
- (BOOL)isDoorbellTriggerActiveAtAnyTimeAfterOffset:(double)offset;
- (BOOL)isDoorbellTriggerActiveAtAnyTimeAfterOffset:(double)offset forDuration:(double)duration;
- (BOOL)isMotionTriggerActiveAtAnyTimeAfterOffset:(double)offset;
- (BOOL)isMotionTriggerActiveAtAnyTimeAfterOffset:(double)offset forDuration:(double)duration;
- (HMDCameraRecordingSessionTimelineManager)initWithWorkQueue:(id)queue fragmentDuration:(double)duration fragmentCreationReferenceDate:(id)date logIdentifier:(id)identifier;
- (id)attributeDescriptions;
- (id)creationDateForFragmentAtTimeOffset:(double)offset;
- (void)handleDoorbellDidActivateAtDate:(id)date;
- (void)handleMotionActive:(BOOL)active didChangeAtDate:(id)date;
@end

@implementation HMDCameraRecordingSessionTimelineManager

- (id)attributeDescriptions
{
  v16[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  logIdentifier = [(HMDCameraRecordingSessionTimelineManager *)self logIdentifier];
  v5 = [v3 initWithName:@"Identifier" value:logIdentifier];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = MEMORY[0x277CCABB0];
  [(HMDCameraRecordingSessionTimelineManager *)self fragmentDuration];
  v8 = [v7 numberWithDouble:?];
  v9 = [v6 initWithName:@"Fragment Duration" value:v8];
  v16[1] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  fragmentCreationReferenceDate = [(HMDCameraRecordingSessionTimelineManager *)self fragmentCreationReferenceDate];
  v12 = [v10 initWithName:@"Fragment Creation Reference Date" value:fragmentCreationReferenceDate];
  v16[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)isMotionTriggerActiveAtAnyTimeAfterOffset:(double)offset
{
  workQueue = [(HMDCameraRecordingSessionTimelineManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  fragmentCreationReferenceDate = [(HMDCameraRecordingSessionTimelineManager *)self fragmentCreationReferenceDate];
  v7 = [fragmentCreationReferenceDate dateByAddingTimeInterval:offset];

  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  motionActiveDateIntervals = [(HMDCameraRecordingSessionTimelineManager *)self motionActiveDateIntervals];
  lastObject = [motionActiveDateIntervals lastObject];

  v11 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v7 endDate:distantFuture];
  v12 = [lastObject intersectsDateInterval:v11];

  return v12;
}

- (BOOL)isDoorbellTriggerActiveAtAnyTimeAfterOffset:(double)offset
{
  workQueue = [(HMDCameraRecordingSessionTimelineManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  fragmentCreationReferenceDate = [(HMDCameraRecordingSessionTimelineManager *)self fragmentCreationReferenceDate];
  v7 = [fragmentCreationReferenceDate dateByAddingTimeInterval:offset];

  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  doorbellActiveDateIntervals = [(HMDCameraRecordingSessionTimelineManager *)self doorbellActiveDateIntervals];
  lastObject = [doorbellActiveDateIntervals lastObject];

  v11 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v7 endDate:distantFuture];
  v12 = [lastObject intersectsDateInterval:v11];

  return v12;
}

- (void)handleDoorbellDidActivateAtDate:(id)date
{
  v32 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  workQueue = [(HMDCameraRecordingSessionTimelineManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  doorbellActiveDateIntervals = [(HMDCameraRecordingSessionTimelineManager *)self doorbellActiveDateIntervals];
  lastObject = [doorbellActiveDateIntervals lastObject];

  v8 = dateCopy;
  [(HMDCameraRecordingSessionTimelineManager *)self fragmentDuration];
  v10 = [v8 dateByAddingTimeInterval:v9 + v9];
  v11 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v8 endDate:v10];
  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    startDate = [v11 startDate];
    fragmentCreationReferenceDate = [(HMDCameraRecordingSessionTimelineManager *)selfCopy fragmentCreationReferenceDate];
    [startDate timeIntervalSinceDate:fragmentCreationReferenceDate];
    v28 = 138543618;
    v29 = v15;
    v30 = 2048;
    v31 = v18;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Doorbell trigger activated at time offset: %f", &v28, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  v19 = objc_autoreleasePoolPush();
  v20 = selfCopy;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    endDate = [v11 endDate];
    fragmentCreationReferenceDate2 = [(HMDCameraRecordingSessionTimelineManager *)v20 fragmentCreationReferenceDate];
    [endDate timeIntervalSinceDate:fragmentCreationReferenceDate2];
    v28 = 138543618;
    v29 = v22;
    v30 = 2048;
    v31 = v25;
    _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Doorbell trigger will be deactivated at time offset: %f", &v28, 0x16u);
  }

  objc_autoreleasePoolPop(v19);
  doorbellActiveDateIntervals2 = [(HMDCameraRecordingSessionTimelineManager *)v20 doorbellActiveDateIntervals];
  [doorbellActiveDateIntervals2 addObject:v11];

  v27 = *MEMORY[0x277D85DE8];
}

- (void)handleMotionActive:(BOOL)active didChangeAtDate:(id)date
{
  activeCopy = active;
  v39 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  workQueue = [(HMDCameraRecordingSessionTimelineManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  motionActiveDateIntervals = [(HMDCameraRecordingSessionTimelineManager *)self motionActiveDateIntervals];
  lastObject = [motionActiveDateIntervals lastObject];

  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  startDate = [lastObject startDate];
  endDate = [lastObject endDate];
  v13 = [endDate isEqual:distantFuture];

  if ((v13 & 1) == 0)
  {
    endDate2 = [lastObject endDate];

    startDate = endDate2;
  }

  if (activeCopy)
  {
    if (!lastObject || ([lastObject endDate], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqualToDate:", distantFuture), v15, (v16 & 1) == 0))
    {
      v17 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:dateCopy endDate:distantFuture];
      motionActiveDateIntervals2 = [(HMDCameraRecordingSessionTimelineManager *)self motionActiveDateIntervals];
      [motionActiveDateIntervals2 addObject:v17];

      v19 = objc_autoreleasePoolPush();
      selfCopy = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        fragmentCreationReferenceDate = [(HMDCameraRecordingSessionTimelineManager *)selfCopy fragmentCreationReferenceDate];
        [dateCopy timeIntervalSinceDate:fragmentCreationReferenceDate];
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

  else if (lastObject)
  {
    endDate3 = [lastObject endDate];
    v27 = [endDate3 isEqualToDate:distantFuture];

    if (v27)
    {
      motionActiveDateIntervals3 = [(HMDCameraRecordingSessionTimelineManager *)self motionActiveDateIntervals];
      [motionActiveDateIntervals3 removeLastObject];

      v29 = objc_alloc(MEMORY[0x277CCA970]);
      startDate2 = [lastObject startDate];
      v17 = [v29 initWithStartDate:startDate2 endDate:dateCopy];

      motionActiveDateIntervals4 = [(HMDCameraRecordingSessionTimelineManager *)self motionActiveDateIntervals];
      [motionActiveDateIntervals4 addObject:v17];

      v19 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        fragmentCreationReferenceDate = [(HMDCameraRecordingSessionTimelineManager *)selfCopy2 fragmentCreationReferenceDate];
        [dateCopy timeIntervalSinceDate:fragmentCreationReferenceDate];
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

- (BOOL)isDoorbellTriggerActiveAtAnyTimeAfterOffset:(double)offset forDuration:(double)duration
{
  v23 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingSessionTimelineManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v8 = [(HMDCameraRecordingSessionTimelineManager *)self creationDateForFragmentAtTimeOffset:offset];
  v9 = objc_alloc(MEMORY[0x277CCA970]);
  v10 = [v8 dateByAddingTimeInterval:duration];
  v11 = [v9 initWithStartDate:v8 endDate:v10];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  doorbellActiveDateIntervals = [(HMDCameraRecordingSessionTimelineManager *)self doorbellActiveDateIntervals];
  v13 = [doorbellActiveDateIntervals countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = *v19;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(doorbellActiveDateIntervals);
        }

        if ([*(*(&v18 + 1) + 8 * i) intersectsDateInterval:v11])
        {
          LOBYTE(v13) = 1;
          goto LABEL_11;
        }
      }

      v13 = [doorbellActiveDateIntervals countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (BOOL)isMotionTriggerActiveAtAnyTimeAfterOffset:(double)offset forDuration:(double)duration
{
  v23 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraRecordingSessionTimelineManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v8 = [(HMDCameraRecordingSessionTimelineManager *)self creationDateForFragmentAtTimeOffset:offset];
  v9 = objc_alloc(MEMORY[0x277CCA970]);
  v10 = [v8 dateByAddingTimeInterval:duration];
  v11 = [v9 initWithStartDate:v8 endDate:v10];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  motionActiveDateIntervals = [(HMDCameraRecordingSessionTimelineManager *)self motionActiveDateIntervals];
  v13 = [motionActiveDateIntervals countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = *v19;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(motionActiveDateIntervals);
        }

        if ([*(*(&v18 + 1) + 8 * i) intersectsDateInterval:v11])
        {
          LOBYTE(v13) = 1;
          goto LABEL_11;
        }
      }

      v13 = [motionActiveDateIntervals countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (id)creationDateForFragmentAtTimeOffset:(double)offset
{
  workQueue = [(HMDCameraRecordingSessionTimelineManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  fragmentCreationReferenceDate = [(HMDCameraRecordingSessionTimelineManager *)self fragmentCreationReferenceDate];
  v7 = [fragmentCreationReferenceDate dateByAddingTimeInterval:offset];

  return v7;
}

- (HMDCameraRecordingSessionTimelineManager)initWithWorkQueue:(id)queue fragmentDuration:(double)duration fragmentCreationReferenceDate:(id)date logIdentifier:(id)identifier
{
  queueCopy = queue;
  dateCopy = date;
  identifierCopy = identifier;
  if (!queueCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (duration <= 0.0)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!dateCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v14 = identifierCopy;
  if (!identifierCopy)
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
    objc_storeStrong(&v15->_workQueue, queue);
    v16->_fragmentDuration = duration;
    v17 = [dateCopy copy];
    fragmentCreationReferenceDate = v16->_fragmentCreationReferenceDate;
    v16->_fragmentCreationReferenceDate = v17;

    array = [MEMORY[0x277CBEB18] array];
    motionActiveDateIntervals = v16->_motionActiveDateIntervals;
    v16->_motionActiveDateIntervals = array;

    array2 = [MEMORY[0x277CBEB18] array];
    doorbellActiveDateIntervals = v16->_doorbellActiveDateIntervals;
    v16->_doorbellActiveDateIntervals = array2;

    objc_storeStrong(&v16->_logIdentifier, identifier);
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