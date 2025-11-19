@interface HMDAppleMediaAccessoryMetricsDispatcher
- (HMDAppleMediaAccessoryMetricsDispatcher)initWithDataSource:(id)a3 logEventSubmitter:(id)a4 dailyScheduler:(id)a5;
- (HMDAppleMediaAccessoryMetricsDispatcherDataSource)dataSource;
- (NSString)previousRoomName;
- (void)registerForDailySetRoomLogEvents;
- (void)runDailyTask;
- (void)setPreviousRoomName:(id)a3;
- (void)submitDailySetRoomEvent;
- (void)submitDailyStatusEvent;
- (void)submitRoomChangeEvent:(id)a3 previousRoom:(id)a4;
@end

@implementation HMDAppleMediaAccessoryMetricsDispatcher

- (HMDAppleMediaAccessoryMetricsDispatcherDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)runDailyTask
{
  [(HMDAppleMediaAccessoryMetricsDispatcher *)self submitDailySetRoomEvent];

  [(HMDAppleMediaAccessoryMetricsDispatcher *)self submitDailyStatusEvent];
}

- (void)submitDailyStatusEvent
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAppleMediaAccessoryMetricsDispatcher *)self dataSource];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 numberOfCurrentAccessoryPairedSensorsForAppleMediaAccessoryMetricsDispatcher:self];
    v6 = [v4 numberOfTriggersWithCurrentAccessoryPairedSensorsForAppleMediaAccessoryMetricsDispatcher:self];
    v7 = [v4 numberOfActionSetsWithCurrentAccessoryMediaActionForAppleMediaAccessoryMetricsDispatcher:self];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v21 = 0x2020000000;
    v22 = 0;
    v8 = dispatch_group_create();
    dispatch_group_enter(v8);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __65__HMDAppleMediaAccessoryMetricsDispatcher_submitDailyStatusEvent__block_invoke;
    v17[3] = &unk_2797231A0;
    p_buf = &buf;
    v9 = v8;
    v18 = v9;
    [v4 currentAccessorySensorStatusFlagsForAppleMediaAccessoryMetricsDispatcher:self completion:v17];
    v10 = [v4 workQueueForAppleMediaAccessoryMetricsDispatcher:self];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__HMDAppleMediaAccessoryMetricsDispatcher_submitDailyStatusEvent__block_invoke_2;
    block[3] = &unk_2797231C8;
    block[6] = v5;
    block[7] = v6;
    block[8] = v7;
    block[4] = self;
    block[5] = &buf;
    dispatch_group_notify(v9, v10, block);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unable to submit daily accessory metric due to nil data source", &buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __65__HMDAppleMediaAccessoryMetricsDispatcher_submitDailyStatusEvent__block_invoke_2(uint64_t a1)
{
  v2 = [HMDCurrentAppleMediaAccessoryConfigurationLogEvent alloc];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*(*(*(a1 + 40) + 8) + 24)];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 64)];
  v8 = [(HMDCurrentAppleMediaAccessoryConfigurationLogEvent *)v2 initWithNumPairedSensors:v3 sensorStatus:v4 numPairedSensorAutomations:v5 numMediaAutomations:v6];

  v7 = [*(a1 + 32) logEventSubmitter];
  [v7 submitLogEvent:v8];
}

- (void)setPreviousRoomName:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  previousRoomName = self->_previousRoomName;
  self->_previousRoomName = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)previousRoomName
{
  os_unfair_lock_lock_with_options();
  v3 = self->_previousRoomName;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)submitRoomChangeEvent:(id)a3 previousRoom:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v11;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Recording change but not submitting room changed event", &v17, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  if (!v7)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v9;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@previousRoom is nil. Substituting with empty string.", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v7 = &stru_286509E58;
  }

  [(HMDAppleMediaAccessoryMetricsDispatcher *)v9 setPreviousRoomName:v7];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)submitDailySetRoomEvent
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v27 = 138543362;
    v28 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Submitting daily room event", &v27, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDAppleMediaAccessoryMetricsDispatcher *)v4 dataSource];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 currentRoomForAppleMediaAccessoryMetricsDispatcher:v4];
    if (v9)
    {
      os_unfair_lock_lock_with_options();
      v10 = v4->_previousRoomName;
      objc_storeStrong(&v4->_previousRoomName, v9);
      os_unfair_lock_unlock(&v4->_lock);
      v11 = objc_autoreleasePoolPush();
      v12 = v4;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v27 = 138543874;
        v28 = v14;
        v29 = 2112;
        v30 = v9;
        v31 = 2112;
        v32 = v10;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Submitting daily room event with currentRoom: %@, previousRoom: %@", &v27, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
      v15 = [[HMDAppleMediaAccessoryDailySetRoomEvent alloc] initWithCurrentRoom:v9 previousRoom:v10];
      v16 = [(HMDAppleMediaAccessoryMetricsDispatcher *)v12 logEventSubmitter];
      [v16 submitLogEvent:v15];
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v22 = v4;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        v25 = [(HMDAppleMediaAccessoryMetricsDispatcher *)v22 previousRoomName];
        v27 = 138543618;
        v28 = v24;
        v29 = 2112;
        v30 = v25;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Data sourced nil current room name when submitting set room event metric with previous room name %@", &v27, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = v4;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@No data source to submit set room event metric", &v27, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)registerForDailySetRoomLogEvents
{
  v4 = [(HMDAppleMediaAccessoryMetricsDispatcher *)self dataSource];
  v3 = [v4 currentRoomForAppleMediaAccessoryMetricsDispatcher:self];
  [(HMDAppleMediaAccessoryMetricsDispatcher *)self setPreviousRoomName:v3];
}

- (HMDAppleMediaAccessoryMetricsDispatcher)initWithDataSource:(id)a3 logEventSubmitter:(id)a4 dailyScheduler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = HMDAppleMediaAccessoryMetricsDispatcher;
  v11 = [(HMDAppleMediaAccessoryMetricsDispatcher *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_dataSource, v8);
    objc_storeStrong(&v12->_logEventSubmitter, a4);
    objc_storeStrong(&v12->_dailyScheduler, a5);
    previousRoomName = v12->_previousRoomName;
    v12->_previousRoomName = @"UNSET";

    [(HMMDailyScheduler *)v12->_dailyScheduler registerDailyTaskRunner:v12];
  }

  return v12;
}

@end