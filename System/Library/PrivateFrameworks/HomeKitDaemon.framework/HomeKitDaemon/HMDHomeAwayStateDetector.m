@interface HMDHomeAwayStateDetector
+ (id)logCategory;
- (HMDHomeAwayStateDetector)initWithDataSource:(id)a3;
- (void)_registerForNotifications;
- (void)configureWithCompletion:(id)a3;
- (void)determineStateWithReason:(unint64_t)a3;
- (void)handleHomeGeofencesRegisteredNotification:(id)a3;
- (void)handleHomeLocationChanged:(id)a3;
- (void)handleLocationAuthorizationChange:(int64_t)a3;
- (void)updateLatestReportWithReason:(unint64_t)a3;
- (void)updateState:(unint64_t)a3 withReason:(unint64_t)a4;
@end

@implementation HMDHomeAwayStateDetector

- (void)handleLocationAuthorizationChange:(int64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [(HMDUserActivityStateDetector *)self dataSource];
  v5 = [v4 queue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling location authorization changed notification", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  [(HMDHomeAwayStateDetector *)v7 determineStateWithReason:4];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeLocationChanged:(id)a3
{
  v4 = [(HMDUserActivityStateDetector *)self dataSource];
  v5 = [v4 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HMDHomeAwayStateDetector_handleHomeLocationChanged___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v5, block);
}

uint64_t __54__HMDHomeAwayStateDetector_handleHomeLocationChanged___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling home location changed notification", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) determineStateWithReason:11];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleHomeGeofencesRegisteredNotification:(id)a3
{
  v4 = [(HMDUserActivityStateDetector *)self dataSource];
  v5 = [v4 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HMDHomeAwayStateDetector_handleHomeGeofencesRegisteredNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v5, block);
}

uint64_t __70__HMDHomeAwayStateDetector_handleHomeGeofencesRegisteredNotification___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Location for home changed, setting state to unspecified and waiting initial state after new geofence is registered", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) setState:0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)updateLatestReportWithReason:(unint64_t)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = [(HMDUserActivityStateDetector *)self dataSource];
  v6 = [v5 queue];
  dispatch_assert_queue_V2(v6);

  if ([(HMDHomeAwayStateDetector *)self state])
  {
    v7 = [(HMDHomeAwayStateDetector *)self state];
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v7 == 1)
    {
      if (v11)
      {
        v12 = HMFGetLogIdentifier();
        v28 = 138543362;
        v29 = v12;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@State is unknown, unsetting latestReport", &v28, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      v13 = objc_alloc_init(HMDUserActivityReportUnsetValue);
      [(HMDUserActivityStateDetector *)v9 setLatestReport:v13];
    }

    else
    {
      if (v11)
      {
        v18 = HMFGetLogIdentifier();
        v19 = [(HMDHomeAwayStateDetector *)v9 state];
        if (v19 > 3)
        {
          v20 = @"Undefined";
        }

        else
        {
          v20 = off_278672FD8[v19];
        }

        v21 = v20;
        v28 = 138543618;
        v29 = v18;
        v30 = 2112;
        v31 = v21;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@State is %@, updating latestReport", &v28, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v22 = [HMDUserActivityHomeAwayReport alloc];
      v23 = [(HMDUserActivityStateDetector *)v9 dataSource];
      v24 = [v23 home];
      v25 = [v24 currentUser];
      v13 = [(HMDUserActivityHomeAwayReport *)v22 initWithUser:v25 state:[(HMDHomeAwayStateDetector *)v9 state] fromDevice:0 reason:a3];

      v26 = [[HMDUserActivityReportSetValue alloc] initWithReport:v13];
      [(HMDUserActivityStateDetector *)v9 setLatestReport:v26];
    }

    [(HMDUserActivityStateDetector *)v9 notifyDetectorStateChangedWithReason:a3];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v28 = 138543362;
      v29 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@State is unspecified. Not updating report or notifying delegate", &v28, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)determineStateWithReason:(unint64_t)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = [(HMDUserActivityStateDetector *)self dataSource];
  v6 = [v5 queue];
  dispatch_assert_queue_V2(v6);

  v7 = [(HMDUserActivityStateDetector *)self dataSource];
  v8 = [v7 location];
  v9 = [v8 locationAuthorized];

  if (!v9)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
LABEL_10:

      objc_autoreleasePoolPop(v19);
      goto LABEL_14;
    }

    v22 = HMFGetLogIdentifier();
    v30 = 138543362;
    v31 = v22;
    v23 = "%{public}@Cannot determine state because location authorization is unknown";
LABEL_9:
    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, v23, &v30, 0xCu);

    goto LABEL_10;
  }

  v10 = [(HMDUserActivityStateDetector *)self dataSource];
  v11 = [v10 location];
  v12 = [v11 locationAuthorized];

  if (v12 != 1)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      v30 = 138543362;
      v31 = v27;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Location authorization is not allowed. Setting state to unknown", &v30, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    [(HMDHomeAwayStateDetector *)v25 updateState:1 withReason:a3];
    goto LABEL_14;
  }

  v13 = [(HMDUserActivityStateDetector *)self dataSource];
  v14 = [v13 home];
  v15 = [v14 homeLocation];

  if (v15 > 1)
  {
    if (v15 == 2 || v15 == 3)
    {
      v29 = *MEMORY[0x277D85DE8];
      v17 = self;
      v18 = 3;
      goto LABEL_18;
    }

LABEL_14:
    v28 = *MEMORY[0x277D85DE8];
    return;
  }

  if (!v15)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      goto LABEL_10;
    }

    v22 = HMFGetLogIdentifier();
    v30 = 138543362;
    v31 = v22;
    v23 = "%{public}@Cannot determine state because home location is unknown";
    goto LABEL_9;
  }

  if (v15 != 1)
  {
    goto LABEL_14;
  }

  v16 = *MEMORY[0x277D85DE8];
  v17 = self;
  v18 = 2;
LABEL_18:

  [(HMDHomeAwayStateDetector *)v17 updateState:v18 withReason:a3];
}

- (void)updateState:(unint64_t)a3 withReason:(unint64_t)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = [(HMDUserActivityStateDetector *)self dataSource];
  v8 = [v7 queue];
  dispatch_assert_queue_V2(v8);

  if ([(HMDHomeAwayStateDetector *)self state]!= a3)
  {
    v9 = [(HMDHomeAwayStateDetector *)self state];
    [(HMDHomeAwayStateDetector *)self setState:a3];
    if (!v9)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        if (a3 > 3)
        {
          v14 = @"Undefined";
        }

        else
        {
          v14 = off_278672FD8[a3];
        }

        v15 = v14;
        v17 = 138543618;
        v18 = v13;
        v19 = 2112;
        v20 = v15;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Initial state: %@", &v17, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      a4 = 1;
    }

    [(HMDHomeAwayStateDetector *)self updateLatestReportWithReason:a4];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_registerForNotifications
{
  v3 = [(HMDUserActivityStateDetector *)self dataSource];
  v4 = [v3 queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(HMDUserActivityStateDetector *)self dataSource];
  v11 = [v5 home];

  v6 = [(HMDUserActivityStateDetector *)self dataSource];
  v7 = [v6 notificationCenter];
  v8 = [v11 homeLocationHandler];
  [v7 addObserver:self selector:sel_handleHomeGeofencesRegisteredNotification_ name:@"HMDLocationHomeGeofencesRegistered" object:v8];

  v9 = [(HMDUserActivityStateDetector *)self dataSource];
  v10 = [v9 notificationCenter];
  [v10 addObserver:self selector:sel_handleHomeLocationChanged_ name:@"HMDHomeLocationChangedNotification" object:v11];
}

- (void)configureWithCompletion:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDUserActivityStateDetector *)self dataSource];
  v6 = [v5 queue];
  dispatch_assert_queue_V2(v6);

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v19 = 138543362;
    v20 = v10;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Configuring HomeAwayDetector", &v19, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  [(HMDHomeAwayStateDetector *)v8 _registerForNotifications];
  [(HMDHomeAwayStateDetector *)v8 determineStateWithReason:1];
  v11 = objc_autoreleasePoolPush();
  v12 = v8;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeAwayStateDetector state](v12, "state")}];
    v19 = 138543618;
    v20 = v14;
    v21 = 2112;
    v22 = v15;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Configured HomeAwayDetector with initial state %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v16 = _Block_copy(v4);
  v17 = v16;
  if (v16)
  {
    (*(v16 + 2))(v16);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (HMDHomeAwayStateDetector)initWithDataSource:(id)a3
{
  v4.receiver = self;
  v4.super_class = HMDHomeAwayStateDetector;
  result = [(HMDUserActivityStateDetector *)&v4 initWithDataSource:a3];
  if (result)
  {
    result->_state = 0;
  }

  return result;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t13_217164 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t13_217164, &__block_literal_global_217165);
  }

  v3 = logCategory__hmf_once_v14_217166;

  return v3;
}

void __39__HMDHomeAwayStateDetector_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v14_217166;
  logCategory__hmf_once_v14_217166 = v1;
}

@end