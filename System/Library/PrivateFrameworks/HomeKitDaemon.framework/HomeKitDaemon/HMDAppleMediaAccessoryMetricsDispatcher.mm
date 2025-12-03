@interface HMDAppleMediaAccessoryMetricsDispatcher
- (HMDAppleMediaAccessoryMetricsDispatcher)initWithDataSource:(id)source logEventSubmitter:(id)submitter dailyScheduler:(id)scheduler;
- (HMDAppleMediaAccessoryMetricsDispatcherDataSource)dataSource;
- (NSString)previousRoomName;
- (void)registerForDailySetRoomLogEvents;
- (void)runDailyTask;
- (void)setPreviousRoomName:(id)name;
- (void)submitDailySetRoomEvent;
- (void)submitDailyStatusEvent;
- (void)submitRoomChangeEvent:(id)event previousRoom:(id)room;
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
  dataSource = [(HMDAppleMediaAccessoryMetricsDispatcher *)self dataSource];
  v4 = dataSource;
  if (dataSource)
  {
    v5 = [dataSource numberOfCurrentAccessoryPairedSensorsForAppleMediaAccessoryMetricsDispatcher:self];
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
    v17[3] = &unk_2786711A8;
    p_buf = &buf;
    v9 = v8;
    v18 = v9;
    [v4 currentAccessorySensorStatusFlagsForAppleMediaAccessoryMetricsDispatcher:self completion:v17];
    v10 = [v4 workQueueForAppleMediaAccessoryMetricsDispatcher:self];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__HMDAppleMediaAccessoryMetricsDispatcher_submitDailyStatusEvent__block_invoke_2;
    block[3] = &unk_2786711D0;
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
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unable to submit daily accessory metric due to nil data source", &buf, 0xCu);
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

- (void)setPreviousRoomName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  v4 = [nameCopy copy];
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

- (void)submitRoomChangeEvent:(id)event previousRoom:(id)room
{
  v19 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  roomCopy = room;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Recording change but not submitting room changed event", &v17, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  if (!roomCopy)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@previousRoom is nil. Substituting with empty string.", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    roomCopy = &stru_283CF9D50;
  }

  [(HMDAppleMediaAccessoryMetricsDispatcher *)selfCopy setPreviousRoomName:roomCopy];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)submitDailySetRoomEvent
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v27 = 138543362;
    v28 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Submitting daily room event", &v27, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  dataSource = [(HMDAppleMediaAccessoryMetricsDispatcher *)selfCopy dataSource];
  v8 = dataSource;
  if (dataSource)
  {
    v9 = [dataSource currentRoomForAppleMediaAccessoryMetricsDispatcher:selfCopy];
    if (v9)
    {
      os_unfair_lock_lock_with_options();
      v10 = selfCopy->_previousRoomName;
      objc_storeStrong(&selfCopy->_previousRoomName, v9);
      os_unfair_lock_unlock(&selfCopy->_lock);
      v11 = objc_autoreleasePoolPush();
      v12 = selfCopy;
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
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Submitting daily room event with currentRoom: %@, previousRoom: %@", &v27, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
      v15 = [[HMDAppleMediaAccessoryDailySetRoomEvent alloc] initWithCurrentRoom:v9 previousRoom:v10];
      logEventSubmitter = [(HMDAppleMediaAccessoryMetricsDispatcher *)v12 logEventSubmitter];
      [logEventSubmitter submitLogEvent:v15];
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v22 = selfCopy;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        previousRoomName = [(HMDAppleMediaAccessoryMetricsDispatcher *)v22 previousRoomName];
        v27 = 138543618;
        v28 = v24;
        v29 = 2112;
        v30 = previousRoomName;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Data sourced nil current room name when submitting set room event metric with previous room name %@", &v27, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@No data source to submit set room event metric", &v27, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)registerForDailySetRoomLogEvents
{
  dataSource = [(HMDAppleMediaAccessoryMetricsDispatcher *)self dataSource];
  v3 = [dataSource currentRoomForAppleMediaAccessoryMetricsDispatcher:self];
  [(HMDAppleMediaAccessoryMetricsDispatcher *)self setPreviousRoomName:v3];
}

- (HMDAppleMediaAccessoryMetricsDispatcher)initWithDataSource:(id)source logEventSubmitter:(id)submitter dailyScheduler:(id)scheduler
{
  sourceCopy = source;
  submitterCopy = submitter;
  schedulerCopy = scheduler;
  v15.receiver = self;
  v15.super_class = HMDAppleMediaAccessoryMetricsDispatcher;
  v11 = [(HMDAppleMediaAccessoryMetricsDispatcher *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_dataSource, sourceCopy);
    objc_storeStrong(&v12->_logEventSubmitter, submitter);
    objc_storeStrong(&v12->_dailyScheduler, scheduler);
    previousRoomName = v12->_previousRoomName;
    v12->_previousRoomName = @"UNSET";

    [(HMMDailyScheduler *)v12->_dailyScheduler registerDailyTaskRunner:v12];
  }

  return v12;
}

@end