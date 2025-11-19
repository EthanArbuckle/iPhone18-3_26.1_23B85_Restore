@interface HMDAccessoryFirmwareUpdateTimeWindowPolicy
+ (id)logCategory;
- (BOOL)evaluate;
- (BOOL)isEqual:(id)a3;
- (HMDAccessoryFirmwareUpdateTimeWindowPolicy)initWithAccessory:(id)a3 timeWindow:(id)a4 workQueue:(id)a5;
- (unint64_t)hash;
- (void)_startReevaluateTimer:(id)a3;
- (void)_stopReevaluateTimer;
- (void)configure;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDAccessoryFirmwareUpdateTimeWindowPolicy

- (void)_stopReevaluateTimer
{
  v3 = [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)self reevaluateTimer];
  [v3 cancel];

  [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)self setReevaluateTimer:0];
}

- (void)_startReevaluateTimer:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 date];
  [v5 timeIntervalSinceDate:v6];
  v8 = v7;

  v9 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:1 options:v8];
  [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)self setReevaluateTimer:v9];

  v10 = [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)self reevaluateTimer];
  [v10 setDelegate:self];

  v11 = [(HMDAccessoryFirmwareUpdatePolicy *)self workQueue];
  v12 = [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)self reevaluateTimer];
  [v12 setDelegateQueue:v11];

  v13 = [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)self reevaluateTimer];
  [v13 resume];
}

- (void)timerDidFire:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)self reevaluateTimer];

  if (v5 == v4)
  {

    [(HMDAccessoryFirmwareUpdatePolicy *)self evaluateAndNotify];
  }
}

- (BOOL)evaluate
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [v3 components:252 fromDate:v4];

  v6 = [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)self updateTimeWindow];
  v7 = [v6 startTimeComponents];
  [v5 setHour:{objc_msgSend(v7, "hour")}];

  v8 = [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)self updateTimeWindow];
  v9 = [v8 startTimeComponents];
  [v5 setMinute:{objc_msgSend(v9, "minute")}];

  v10 = [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)self updateTimeWindow];
  v11 = [v10 startTimeComponents];
  [v5 setSecond:{objc_msgSend(v11, "second")}];

  v12 = [v3 dateFromComponents:v5];
  v13 = [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)self updateTimeWindow];
  v14 = [v13 endTimeComponents];
  [v5 setHour:{objc_msgSend(v14, "hour")}];

  v15 = [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)self updateTimeWindow];
  v16 = [v15 endTimeComponents];
  [v5 setMinute:{objc_msgSend(v16, "minute")}];

  v17 = [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)self updateTimeWindow];
  v18 = [v17 endTimeComponents];
  [v5 setSecond:{objc_msgSend(v18, "second")}];

  v19 = [v3 dateFromComponents:v5];
  if ([v12 compare:v19] == 1)
  {
    v20 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    v21 = [MEMORY[0x277CBEAA8] date];
    v22 = [v21 compare:v19];

    if (v22 == 1)
    {
      [v20 setDay:1];
      v23 = [v3 dateByAddingComponents:v20 toDate:v19 options:0];
      v24 = v19;
      v19 = v23;
    }

    else
    {
      [v20 setDay:-1];
      v25 = [v3 dateByAddingComponents:v20 toDate:v12 options:0];
      v24 = v12;
      v12 = v25;
    }
  }

  [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)self _stopReevaluateTimer];
  if (!v12 || !v19)
  {
    v38 = objc_autoreleasePoolPush();
    v39 = self;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543362;
      v58 = v41;
      _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_INFO, "%{public}@Invalid time window, policy status evaluated to NO", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v38);
    v26 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v26 setHour:12];
    v42 = [MEMORY[0x277CBEAA8] date];
    v43 = [v3 dateByAddingComponents:v26 toDate:v42 options:0];

    [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)v39 _startReevaluateTimer:v43];
    goto LABEL_15;
  }

  v56 = v12;
  v26 = [MEMORY[0x277CBEAA8] date];
  v27 = objc_autoreleasePoolPush();
  v28 = self;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v51 = HMFGetLogIdentifier();
    v53 = [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)v28 dateFormatter];
    v30 = [v53 stringFromDate:v26];
    [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)v28 dateFormatter];
    v52 = v55 = v3;
    v31 = [v52 stringFromDate:v56];
    v32 = [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)v28 dateFormatter];
    [v32 stringFromDate:v19];
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

    v3 = v55;
    v27 = v54;
  }

  objc_autoreleasePoolPop(v27);
  if ([v26 compare:v19] == 1)
  {
    v35 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v35 setDay:1];
    v36 = [v3 dateByAddingComponents:v35 toDate:v56 options:0];

    [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)v28 _startReevaluateTimer:v36];
    v37 = 0;
    v12 = v36;
    goto LABEL_18;
  }

  v12 = v56;
  if ([v26 compare:v56] == -1)
  {
    [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)v28 _startReevaluateTimer:v56];
LABEL_15:
    v37 = 0;
    goto LABEL_18;
  }

  [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)v28 _startReevaluateTimer:v19];
  v37 = 1;
LABEL_18:

  v44 = objc_autoreleasePoolPush();
  v45 = self;
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
  v3 = [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)self evaluate];

  [(HMDAccessoryFirmwareUpdatePolicy *)self setStatus:v3];
}

- (HMDAccessoryFirmwareUpdateTimeWindowPolicy)initWithAccessory:(id)a3 timeWindow:(id)a4 workQueue:(id)a5
{
  v9 = a4;
  v15.receiver = self;
  v15.super_class = HMDAccessoryFirmwareUpdateTimeWindowPolicy;
  v10 = [(HMDAccessoryFirmwareUpdatePolicy *)&v15 initWithAccessory:a3 workQueue:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_updateTimeWindow, a4);
    v12 = objc_alloc_init(MEMORY[0x277CCA968]);
    dateFormatter = v11->_dateFormatter;
    v11->_dateFormatter = v12;

    [(NSDateFormatter *)v11->_dateFormatter setDateFormat:@"HH:mm"];
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)self updateTimeWindow];
      v8 = [v7 startTimeComponents];
      v9 = [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)v6 updateTimeWindow];
      v10 = [v9 startTimeComponents];
      if ([v8 isEqual:v10])
      {
        v11 = [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)self updateTimeWindow];
        v12 = [v11 endTimeComponents];
        v22 = [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)v6 updateTimeWindow];
        v13 = [v22 endTimeComponents];
        if ([v12 isEqual:v13])
        {
          v19 = [(HMDAccessoryFirmwareUpdatePolicy *)self accessory];
          v18 = [v19 uuid];
          [(HMDAccessoryFirmwareUpdatePolicy *)v6 accessory];
          v14 = v21 = v11;
          [v14 uuid];
          v15 = v20 = v12;
          v16 = [v18 isEqual:v15];

          v12 = v20;
          v11 = v21;
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
  v3 = [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)self updateTimeWindow];
  v4 = [v3 startTimeComponents];
  v5 = [v4 hash];

  v6 = [(HMDAccessoryFirmwareUpdateTimeWindowPolicy *)self updateTimeWindow];
  v7 = [v6 endTimeComponents];
  v8 = [v7 hash];

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