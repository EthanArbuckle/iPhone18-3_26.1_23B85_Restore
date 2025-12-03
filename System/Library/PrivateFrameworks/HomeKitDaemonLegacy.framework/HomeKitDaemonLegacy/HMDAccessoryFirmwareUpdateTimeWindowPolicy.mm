@interface HMDAccessoryFirmwareUpdateTimeWindowPolicy
+ (id)logCategory;
- (BOOL)evaluate;
- (BOOL)isEqual:(id)equal;
- (HMDAccessoryFirmwareUpdateTimeWindowPolicy)initWithAccessory:(id)accessory timeWindow:(id)window workQueue:(id)queue;
- (unint64_t)hash;
- (void)_startReevaluateTimer:(id)timer;
- (void)_stopReevaluateTimer;
- (void)configure;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDAccessoryFirmwareUpdateTimeWindowPolicy

- (void)_stopReevaluateTimer
{
  reevaluateTimer = [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)self reevaluateTimer];
  [reevaluateTimer cancel];

  [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)self setReevaluateTimer:0];
}

- (void)_startReevaluateTimer:(id)timer
{
  v4 = MEMORY[0x277CBEAA8];
  timerCopy = timer;
  date = [v4 date];
  [timerCopy timeIntervalSinceDate:date];
  v8 = v7;

  v9 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:1 options:v8];
  [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)self setReevaluateTimer:v9];

  reevaluateTimer = [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)self reevaluateTimer];
  [reevaluateTimer setDelegate:self];

  workQueue = [(HMDAccessoryFirmwareUpdatePolicy *)self workQueue];
  reevaluateTimer2 = [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)self reevaluateTimer];
  [reevaluateTimer2 setDelegateQueue:workQueue];

  reevaluateTimer3 = [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)self reevaluateTimer];
  [reevaluateTimer3 resume];
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  reevaluateTimer = [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)self reevaluateTimer];

  if (reevaluateTimer == fireCopy)
  {

    [(HMDAccessoryFirmwareUpdatePolicy *)self evaluateAndNotify];
  }
}

- (BOOL)evaluate
{
  v65 = *MEMORY[0x277D85DE8];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  date = [MEMORY[0x277CBEAA8] date];
  v5 = [currentCalendar components:252 fromDate:date];

  updateTimeWindow = [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)self updateTimeWindow];
  startTimeComponents = [updateTimeWindow startTimeComponents];
  [v5 setHour:{objc_msgSend(startTimeComponents, "hour")}];

  updateTimeWindow2 = [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)self updateTimeWindow];
  startTimeComponents2 = [updateTimeWindow2 startTimeComponents];
  [v5 setMinute:{objc_msgSend(startTimeComponents2, "minute")}];

  updateTimeWindow3 = [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)self updateTimeWindow];
  startTimeComponents3 = [updateTimeWindow3 startTimeComponents];
  [v5 setSecond:{objc_msgSend(startTimeComponents3, "second")}];

  v12 = [currentCalendar dateFromComponents:v5];
  updateTimeWindow4 = [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)self updateTimeWindow];
  endTimeComponents = [updateTimeWindow4 endTimeComponents];
  [v5 setHour:{objc_msgSend(endTimeComponents, "hour")}];

  updateTimeWindow5 = [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)self updateTimeWindow];
  endTimeComponents2 = [updateTimeWindow5 endTimeComponents];
  [v5 setMinute:{objc_msgSend(endTimeComponents2, "minute")}];

  updateTimeWindow6 = [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)self updateTimeWindow];
  endTimeComponents3 = [updateTimeWindow6 endTimeComponents];
  [v5 setSecond:{objc_msgSend(endTimeComponents3, "second")}];

  v19 = [currentCalendar dateFromComponents:v5];
  if ([v12 compare:v19] == 1)
  {
    v20 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    date2 = [MEMORY[0x277CBEAA8] date];
    v22 = [date2 compare:v19];

    if (v22 == 1)
    {
      [v20 setDay:1];
      v23 = [currentCalendar dateByAddingComponents:v20 toDate:v19 options:0];
      v24 = v19;
      v19 = v23;
    }

    else
    {
      [v20 setDay:-1];
      v25 = [currentCalendar dateByAddingComponents:v20 toDate:v12 options:0];
      v24 = v12;
      v12 = v25;
    }
  }

  [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)self _stopReevaluateTimer];
  if (!v12 || !v19)
  {
    v38 = objc_autoreleasePoolPush();
    selfCopy = self;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543362;
      v58 = v41;
      _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_INFO, "%{public}@Invalid time window, policy status evaluated to NO", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v38);
    date4 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [date4 setHour:12];
    date3 = [MEMORY[0x277CBEAA8] date];
    v43 = [currentCalendar dateByAddingComponents:date4 toDate:date3 options:0];

    [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)selfCopy _startReevaluateTimer:v43];
    goto LABEL_15;
  }

  v56 = v12;
  date4 = [MEMORY[0x277CBEAA8] date];
  v27 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v51 = HMFGetLogIdentifier();
    dateFormatter = [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)selfCopy2 dateFormatter];
    v30 = [dateFormatter stringFromDate:date4];
    [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)selfCopy2 dateFormatter];
    v52 = v55 = currentCalendar;
    v31 = [v52 stringFromDate:v56];
    dateFormatter2 = [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)selfCopy2 dateFormatter];
    [dateFormatter2 stringFromDate:v19];
    v33 = v54 = v27;
    *buf = 138544130;
    v58 = v51;
    v59 = 2112;
    v60 = v30;
    v61 = 2112;
    v62 = v31;
    v34 = v31;
    v63 = 2112;
    v64 = v33;
    _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@Evaluate now=%@ in interval=[%@, %@]", buf, 0x2Au);

    currentCalendar = v55;
    v27 = v54;
  }

  objc_autoreleasePoolPop(v27);
  if ([date4 compare:v19] == 1)
  {
    v35 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v35 setDay:1];
    v36 = [currentCalendar dateByAddingComponents:v35 toDate:v56 options:0];

    [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)selfCopy2 _startReevaluateTimer:v36];
    v37 = 0;
    v12 = v36;
    goto LABEL_18;
  }

  v12 = v56;
  if ([date4 compare:v56] == -1)
  {
    [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)selfCopy2 _startReevaluateTimer:v56];
LABEL_15:
    v37 = 0;
    goto LABEL_18;
  }

  [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)selfCopy2 _startReevaluateTimer:v19];
  v37 = 1;
LABEL_18:

  v44 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v46 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
  {
    v47 = HMFGetLogIdentifier();
    v48 = HMFBooleanToString();
    *buf = 138543618;
    v58 = v47;
    v59 = 2112;
    v60 = v48;
    _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_INFO, "%{public}@Policy status evaluated to %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v44);
  v49 = *MEMORY[0x277D85DE8];
  return v37;
}

- (void)configure
{
  evaluate = [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)self evaluate];

  [(HMDAccessoryFirmwareUpdatePolicy *)self setStatus:evaluate];
}

- (HMDAccessoryFirmwareUpdateTimeWindowPolicy)initWithAccessory:(id)accessory timeWindow:(id)window workQueue:(id)queue
{
  windowCopy = window;
  v15.receiver = self;
  v15.super_class = HMDAccessoryFirmwareUpdateTimeWindowPolicy;
  v10 = [(HMDAccessoryFirmwareUpdatePolicy *)&v15 initWithAccessory:accessory workQueue:queue];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_updateTimeWindow, window);
    v12 = objc_alloc_init(MEMORY[0x277CCA968]);
    dateFormatter = v11->_dateFormatter;
    v11->_dateFormatter = v12;

    [(NSDateFormatter *)v11->_dateFormatter setDateFormat:@"HH:mm"];
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      updateTimeWindow = [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)self updateTimeWindow];
      startTimeComponents = [updateTimeWindow startTimeComponents];
      updateTimeWindow2 = [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)v6 updateTimeWindow];
      startTimeComponents2 = [updateTimeWindow2 startTimeComponents];
      if ([startTimeComponents isEqual:startTimeComponents2])
      {
        updateTimeWindow3 = [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)self updateTimeWindow];
        endTimeComponents = [updateTimeWindow3 endTimeComponents];
        updateTimeWindow4 = [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)v6 updateTimeWindow];
        endTimeComponents2 = [updateTimeWindow4 endTimeComponents];
        if ([endTimeComponents isEqual:endTimeComponents2])
        {
          accessory = [(HMDAccessoryFirmwareUpdatePolicy *)self accessory];
          uuid = [accessory uuid];
          [(HMDAccessoryFirmwareUpdatePolicy *)v6 accessory];
          v14 = v21 = updateTimeWindow3;
          [v14 uuid];
          v15 = v20 = endTimeComponents;
          v16 = [uuid isEqual:v15];

          endTimeComponents = v20;
          updateTimeWindow3 = v21;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  return v16 & 1;
}

- (unint64_t)hash
{
  updateTimeWindow = [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)self updateTimeWindow];
  startTimeComponents = [updateTimeWindow startTimeComponents];
  v5 = [startTimeComponents hash];

  updateTimeWindow2 = [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)self updateTimeWindow];
  endTimeComponents = [updateTimeWindow2 endTimeComponents];
  v8 = [endTimeComponents hash];

  return v8 ^ v5;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_121536 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_121536, &__block_literal_global_67_121537);
  }

  v3 = logCategory__hmf_once_v3_121538;

  return v3;
}

uint64_t __57__HMDAccessoryFirmwareUpdateTimeWindowPolicy_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v3_121538;
  logCategory__hmf_once_v3_121538 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end