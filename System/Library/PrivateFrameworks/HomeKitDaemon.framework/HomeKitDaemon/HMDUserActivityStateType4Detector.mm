@interface HMDUserActivityStateType4Detector
+ (id)logCategory;
- (HMDUserActivityStateType4Detector)initWithDataSource:(id)source;
- (HMDUserActivityStateType4Detector)initWithDataSource:(id)source location:(id)location;
- (unint64_t)_userType4StateFromRegionState:(int64_t)state;
- (void)_handleHomeLocationChangedNotification:(id)notification;
- (void)_registerForMessages;
- (void)_updateState:(unint64_t)state withReason:(unint64_t)reason notifyDelegate:(BOOL)delegate;
- (void)configureWithCompletion:(id)completion;
- (void)deregisterForRegionUpdates;
- (void)didDetermineState:(int64_t)state forRegion:(id)region;
- (void)handleLocationAuthorizationChange:(int64_t)change;
- (void)registerForRegionUpdates;
@end

@implementation HMDUserActivityStateType4Detector

- (unint64_t)_userType4StateFromRegionState:(int64_t)state
{
  v3 = 2;
  if (state != 2)
  {
    v3 = 3;
  }

  if (state)
  {
    return v3;
  }

  else
  {
    return 4;
  }
}

- (void)didDetermineState:(int64_t)state forRegion:(id)region
{
  regionCopy = region;
  dataSource = [(HMDUserActivityStateDetector *)self dataSource];
  queue = [dataSource queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HMDUserActivityStateType4Detector_didDetermineState_forRegion___block_invoke;
  block[3] = &unk_278685DF8;
  block[4] = self;
  v11 = regionCopy;
  stateCopy = state;
  v9 = regionCopy;
  dispatch_async(queue, block);
}

void __65__HMDUserActivityStateType4Detector_didDetermineState_forRegion___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) region];
  if (v2)
  {
    v3 = [*(a1 + 40) identifier];
    v4 = [v2 identifier];
    v5 = [v3 isEqualToString:v4];

    if (v5)
    {
      v6 = [*(a1 + 32) _userType4StateFromRegionState:{objc_msgSend(MEMORY[0x277CBFC10], "hm_regionStateFromCLRegionState:", *(a1 + 48))}];
      v7 = objc_autoreleasePoolPush();
      v8 = *(a1 + 32);
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v11 = HMRegionStateString();
        v12 = HMDUserVacationStateAsString(v6);
        v15 = 138543874;
        v16 = v10;
        v17 = 2112;
        v18 = v11;
        v19 = 2112;
        v20 = v12;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Received region update callback. regionState: %@, vacationState: %@", &v15, 0x20u);
      }

      objc_autoreleasePoolPop(v7);
      if ([*(a1 + 32) state])
      {
        if ([*(a1 + 32) state] == 1)
        {
          v13 = 4;
        }

        else if ([*(a1 + 32) state] == 4)
        {
          v13 = 4;
        }

        else
        {
          v13 = 11;
        }
      }

      else
      {
        v13 = 1;
      }

      [*(a1 + 32) _updateState:v6 withReason:v13 notifyDelegate:1];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_handleHomeLocationChangedNotification:(id)notification
{
  notificationCopy = notification;
  dataSource = [(HMDUserActivityStateDetector *)self dataSource];
  queue = [dataSource queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__HMDUserActivityStateType4Detector__handleHomeLocationChangedNotification___block_invoke;
  v8[3] = &unk_27868A750;
  v8[4] = self;
  v9 = notificationCopy;
  v7 = notificationCopy;
  dispatch_async(queue, v8);
}

uint64_t __76__HMDUserActivityStateType4Detector__handleHomeLocationChangedNotification___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) name];
    v13 = 138543618;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) dataSource];
  v8 = [v7 home];
  v9 = [v8 homeLocationHandler];
  v10 = [v9 location];
  [*(a1 + 32) setHomeLocation:v10];

  [*(a1 + 32) deregisterForRegionUpdates];
  result = [*(a1 + 32) registerForRegionUpdates];
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleLocationAuthorizationChange:(int64_t)change
{
  dataSource = [(HMDUserActivityStateDetector *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  [(HMDUserActivityStateType4Detector *)self _updateLocationAuthorization:change withReason:4 notifyDelegate:1];
}

- (void)_updateState:(unint64_t)state withReason:(unint64_t)reason notifyDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  v32 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDUserActivityStateDetector *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  if ([(HMDUserActivityStateType4Detector *)self state]== state)
  {
    goto LABEL_15;
  }

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = HMDUserVacationStateAsString(state);
    v16 = HMDUserActivityStateDetectorUpdateReasonAsString(reason);
    v26 = 138543874;
    v27 = v14;
    v28 = 2112;
    v29 = v15;
    v30 = 2112;
    v31 = v16;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Vacation state changed: %@, reason: %@", &v26, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  [(HMDUserActivityStateType4Detector *)selfCopy setState:state];
  state = [(HMDUserActivityStateType4Detector *)selfCopy state];
  if (state <= 1)
  {
    if (!state)
    {
      goto LABEL_15;
    }

    if (state != 1)
    {
      goto LABEL_11;
    }

    v22 = objc_alloc_init(HMDUserActivityReportUnsetValue);
    [(HMDUserActivityStateDetector *)selfCopy setLatestReport:v22];
  }

  else
  {
    if ((state - 2) >= 2)
    {
      if (state == 4)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }

    v18 = [HMDUserActivityType4Report alloc];
    dataSource2 = [(HMDUserActivityStateDetector *)selfCopy dataSource];
    home = [dataSource2 home];
    currentUser = [home currentUser];
    v22 = [(HMDUserActivityType4Report *)v18 initWithUser:currentUser state:[(HMDUserActivityStateType4Detector *)selfCopy state] withReason:reason];

    v23 = [[HMDUserActivityReportSetValue alloc] initWithReport:v22];
    [(HMDUserActivityStateDetector *)selfCopy setLatestReport:v23];
  }

LABEL_11:
  if (delegateCopy)
  {
    latestReport = [(HMDUserActivityStateDetector *)selfCopy latestReport];

    if (latestReport)
    {
      [(HMDUserActivityStateDetector *)selfCopy notifyDetectorStateChangedWithReason:reason];
    }
  }

LABEL_15:
  v25 = *MEMORY[0x277D85DE8];
}

- (void)_registerForMessages
{
  dataSource = [(HMDUserActivityStateDetector *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  dataSource2 = [(HMDUserActivityStateDetector *)self dataSource];
  notificationCenter = [dataSource2 notificationCenter];
  dataSource3 = [(HMDUserActivityStateDetector *)self dataSource];
  home = [dataSource3 home];
  homeLocationHandler = [home homeLocationHandler];
  [notificationCenter addObserver:self selector:sel__handleHomeLocationChangedNotification_ name:@"HMDLocationForHomeChanged" object:homeLocationHandler];
}

- (void)deregisterForRegionUpdates
{
  v10[1] = *MEMORY[0x277D85DE8];
  dataSource = [(HMDUserActivityStateDetector *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  region = [(HMDUserActivityStateType4Detector *)self region];
  if (region)
  {
    location = [(HMDUserActivityStateType4Detector *)self location];
    v10[0] = region;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __63__HMDUserActivityStateType4Detector_deregisterForRegionUpdates__block_invoke;
    v9[3] = &unk_27868A250;
    v9[4] = self;
    [location deregisterForRegionUpdate:v7 completionHandler:v9];

    [(HMDUserActivityStateType4Detector *)self setRegion:0];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __63__HMDUserActivityStateType4Detector_deregisterForRegionUpdates__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
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
      v14 = 138543618;
      v15 = v8;
      v16 = 2112;
      v17 = v3;
      v9 = "%{public}@Failed to deregister for region updates with error: %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
LABEL_6:
      _os_log_impl(&dword_229538000, v10, v11, v9, &v14, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v8;
    v9 = "%{public}@Successfully deregistered for vacation region updates";
    v10 = v7;
    v11 = OS_LOG_TYPE_INFO;
    v12 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)registerForRegionUpdates
{
  v34 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDUserActivityStateDetector *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  region = [(HMDUserActivityStateType4Detector *)self region];
  if (!region)
  {
    homeLocation = [(HMDUserActivityStateType4Detector *)self homeLocation];
    if (homeLocation)
    {
      if ([(HMDUserActivityStateDetector *)self locationAuthorization]== 1)
      {
        v11 = objc_alloc(MEMORY[0x277CBFBC8]);
        [homeLocation coordinate];
        v13 = v12;
        v15 = v14;
        uUID = [MEMORY[0x277CCAD78] UUID];
        uUIDString = [uUID UUIDString];
        v18 = [v11 initWithCenter:uUIDString radius:0 identifier:v13 nearbyAllowed:{v15, 321869.0}];
        [(HMDUserActivityStateType4Detector *)self setRegion:v18];

        region2 = [(HMDUserActivityStateType4Detector *)self region];
        [region2 setNotifyOnExit:1];

        region3 = [(HMDUserActivityStateType4Detector *)self region];
        [region3 setNotifyOnEntry:1];

        location = [(HMDUserActivityStateType4Detector *)self location];
        region4 = [(HMDUserActivityStateType4Detector *)self region];
        v31 = region4;
        v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __61__HMDUserActivityStateType4Detector_registerForRegionUpdates__block_invoke;
        v30[3] = &unk_27868A250;
        v30[4] = self;
        [location registerForRegionUpdate:v23 withDelegate:self completionHandler:v30];

LABEL_14:
        goto LABEL_15;
      }

      v24 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543362;
        v33 = v27;
        v28 = "%{public}@Not registering for region updates as location authorization is not allowed";
        goto LABEL_12;
      }
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543362;
        v33 = v27;
        v28 = "%{public}@Not registering for region updates as there is no home location";
LABEL_12:
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, v28, buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v24);
    goto LABEL_14;
  }

  v6 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v33 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Not registering for region updates as there is already a region", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
LABEL_15:

  v29 = *MEMORY[0x277D85DE8];
}

void __61__HMDUserActivityStateType4Detector_registerForRegionUpdates__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
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
      *buf = 138543618;
      v15 = v8;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to register for region updates with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v9 = [*(a1 + 32) dataSource];
    v10 = [v9 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__HMDUserActivityStateType4Detector_registerForRegionUpdates__block_invoke_17;
    block[3] = &unk_27868A728;
    block[4] = *(a1 + 32);
    dispatch_async(v10, block);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v15 = v11;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Successfully registered for vacation region updates", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)configureWithCompletion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dataSource = [(HMDUserActivityStateDetector *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v25 = 138543362;
    v26 = v10;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Configuring VacationDetector", &v25, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  dataSource2 = [(HMDUserActivityStateDetector *)selfCopy dataSource];
  home = [dataSource2 home];
  homeLocationHandler = [home homeLocationHandler];
  location = [homeLocationHandler location];
  homeLocation = selfCopy->_homeLocation;
  selfCopy->_homeLocation = location;

  [(HMDUserActivityStateType4Detector *)selfCopy _registerForMessages];
  location2 = [(HMDUserActivityStateType4Detector *)selfCopy location];
  -[HMDUserActivityStateType4Detector _updateLocationAuthorization:withReason:notifyDelegate:](selfCopy, "_updateLocationAuthorization:withReason:notifyDelegate:", [location2 locationAuthorized], 1, 0);

  v17 = objc_autoreleasePoolPush();
  v18 = selfCopy;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUserActivityStateType4Detector state](v18, "state")}];
    v25 = 138543618;
    v26 = v20;
    v27 = 2112;
    v28 = v21;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Configured VacationDetector with initial state %@", &v25, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  v22 = _Block_copy(completionCopy);
  v23 = v22;
  if (v22)
  {
    (*(v22 + 2))(v22);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (HMDUserActivityStateType4Detector)initWithDataSource:(id)source location:(id)location
{
  locationCopy = location;
  v11.receiver = self;
  v11.super_class = HMDUserActivityStateType4Detector;
  v8 = [(HMDUserActivityStateDetector *)&v11 initWithDataSource:source];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_location, location);
    v9->_state = 0;
  }

  return v9;
}

- (HMDUserActivityStateType4Detector)initWithDataSource:(id)source
{
  sourceCopy = source;
  v5 = +[HMDLocation sharedManager];
  v6 = [(HMDUserActivityStateType4Detector *)self initWithDataSource:sourceCopy location:v5];

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t14_157751 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t14_157751, &__block_literal_global_157752);
  }

  v3 = logCategory__hmf_once_v15_157753;

  return v3;
}

void __48__HMDUserActivityStateType4Detector_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v15_157753;
  logCategory__hmf_once_v15_157753 = v1;
}

@end