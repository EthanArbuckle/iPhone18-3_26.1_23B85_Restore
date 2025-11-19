@interface HMDTimeEvent
+ (BOOL)isValidAbsoluteDateComponents:(id)a3;
+ (BOOL)isValidOffsetDateComponents:(id)a3;
+ (id)logCategory;
- (BOOL)_activate:(unint64_t)a3 completionHandler:(id)a4;
- (BOOL)isCompatibleWithEvent:(id)a3;
- (HMDBackgroundTaskManager)backgroundTaskManager;
- (HMDTimeEvent)initWithCoder:(id)a3;
- (HMDTimeEvent)initWithModel:(id)a3 home:(id)a4;
- (void)_initialize;
- (void)_reactivateTriggerAfterDelay;
- (void)_updateRepetitive;
- (void)encodeWithCoder:(id)a3;
- (void)handleTimerFiredNotification:(id)a3;
- (void)invalidate;
@end

@implementation HMDTimeEvent

- (void)invalidate
{
  v4 = [(HMDTimeEvent *)self backgroundTaskManager];
  v3 = [(HMDTimeEvent *)self timerID];
  [v4 cancelTaskWithIdentifier:v3 onObserver:self];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = HMDTimeEvent;
  [(HMDEvent *)&v3 encodeWithCoder:a3];
}

- (HMDTimeEvent)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = HMDTimeEvent;
  v3 = [(HMDEvent *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(HMDTimeEvent *)v3 _initialize];
  }

  return v4;
}

- (HMDBackgroundTaskManager)backgroundTaskManager
{
  v2 = [(HMDEvent *)self home];
  v3 = [v2 backgroundTaskManager];

  return v3;
}

- (void)_reactivateTriggerAfterDelay
{
  objc_initWeak(&location, self);
  v3 = dispatch_time(0, 60000000000);
  v4 = [(HMDEvent *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__HMDTimeEvent__reactivateTriggerAfterDelay__block_invoke;
  block[3] = &unk_278686B48;
  block[4] = self;
  objc_copyWeak(&v6, &location);
  dispatch_after(v3, v4, block);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __44__HMDTimeEvent__reactivateTriggerAfterDelay__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) eventTrigger];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__HMDTimeEvent__reactivateTriggerAfterDelay__block_invoke_2;
  v3[3] = &unk_278688A18;
  objc_copyWeak(&v4, (a1 + 40));
  [v2 _activateWithCompletion:v3];

  objc_destroyWeak(&v4);
}

void __44__HMDTimeEvent__reactivateTriggerAfterDelay__block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Reactivated trigger after timer fired", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleTimerFiredNotification:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 hmf_stringForKey:@"HMD.BGTM.NK"];

  v7 = [(HMDTimeEvent *)self timerID];
  v8 = HMFEqualObjects();

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = HMDEventTriggerActivationTypeAsString([(HMDEvent *)v10 activationType]);
      v25 = 138543874;
      v26 = v12;
      v27 = 2112;
      v28 = v6;
      v29 = 2112;
      v30 = v13;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Timer has fired %@, current activation state: %@", &v25, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    if ([(HMDTimeEvent *)v10 isActive])
    {
      v14 = [(HMDEvent *)v10 delegate];
      v15 = [v14 didOccurEvent:v10 causingDevice:0];

      if ([(HMDTimeEvent *)v10 repetitive])
      {
        v16 = [(HMDEvent *)v10 eventTrigger];
        v17 = [v16 executeOnce];

        v18 = objc_autoreleasePoolPush();
        v19 = v10;
        v20 = HMFGetOSLogHandle();
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
        if (v17)
        {
          if (v21)
          {
            v22 = HMFGetLogIdentifier();
            v25 = 138543362;
            v26 = v22;
            _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Not-Reactivating the event as it does not have recurrences", &v25, 0xCu);
          }

          objc_autoreleasePoolPop(v18);
        }

        else
        {
          if (v21)
          {
            v23 = HMFGetLogIdentifier();
            v25 = 138543362;
            v26 = v23;
            _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Reactivating the event as it does have some recurrences", &v25, 0xCu);
          }

          objc_autoreleasePoolPop(v18);
          [(HMDTimeEvent *)v19 _reactivateTriggerAfterDelay];
        }
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)_activate:(unint64_t)a3 completionHandler:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v38.receiver = self;
  v38.super_class = HMDTimeEvent;
  v7 = [(HMDEvent *)&v38 _activate:a3 completionHandler:0];
  if ([(HMDTimeEvent *)self isActive])
  {
    v8 = [(HMDTimeEvent *)self _nextTimerDate];
    if (v8)
    {
      v9 = [(HMDTimeEvent *)self timerID];
      v10 = objc_autoreleasePoolPush();
      v11 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v14 = [v8 hmf_localTimeDescription];
        *buf = 138543874;
        v40 = v13;
        v41 = 2112;
        v42 = v9;
        v43 = 2112;
        v44 = v14;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Starting the next timer (%@) set to [%@]", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      v15 = [(HMDTimeEvent *)v11 backgroundTaskManager];
      v37 = 0;
      v16 = [v15 scheduleTaskWithIdentifier:v9 fireDate:v8 onObserver:v11 selector:sel_handleTimerFiredNotification_ error:&v37];
      v17 = v37;

      if ((v16 & 1) == 0)
      {
        v18 = objc_autoreleasePoolPush();
        v19 = v11;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = HMFGetLogIdentifier();
          *buf = 138543874;
          v40 = v21;
          v41 = 2112;
          v42 = v9;
          v43 = 2112;
          v44 = v17;
          _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to activate time trigger %@ with error %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v18);
      }

      v22 = _Block_copy(v6);
      v23 = v22;
      if (v22)
      {
        (*(v22 + 2))(v22, v17);
      }
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      v32 = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543362;
        v40 = v34;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to get next time date", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v31);
      v9 = _Block_copy(v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
      (v9)[2](v9, v17);
    }

LABEL_22:
    goto LABEL_23;
  }

  v8 = [(HMDTimeEvent *)self timerID];
  v24 = [(HMDTimeEvent *)self backgroundTaskManager];
  [v24 cancelTaskWithIdentifier:v8 onObserver:self];

  v25 = _Block_copy(v6);
  v26 = v25;
  if (v25)
  {
    (*(v25 + 2))(v25, 0);
  }

  v27 = objc_autoreleasePoolPush();
  v28 = self;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = HMFGetLogIdentifier();
    *buf = 138543618;
    v40 = v30;
    v41 = 2112;
    v42 = v8;
    _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@Stopping the already scheduled timer with ID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v27);
LABEL_23:

  v35 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)isCompatibleWithEvent:(id)a3
{
  v4.receiver = self;
  v4.super_class = HMDTimeEvent;
  return [(HMDEvent *)&v4 isCompatibleWithEvent:a3];
}

- (void)_updateRepetitive
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v3 = 1;
LABEL_4:
    self->_repetitive = v3;
    return;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = 0;
    goto LABEL_4;
  }
}

- (void)_initialize
{
  v3 = [(HMDEvent *)self uuid];
  v4 = [v3 UUIDString];
  v5 = [@"com.apple.homed.triggers." stringByAppendingString:v4];
  v6 = [v5 hmf_stringWithSmallestEncoding];
  timerID = self->_timerID;
  self->_timerID = v6;

  [(HMDTimeEvent *)self _updateRepetitive];
}

- (HMDTimeEvent)initWithModel:(id)a3 home:(id)a4
{
  v7.receiver = self;
  v7.super_class = HMDTimeEvent;
  v4 = [(HMDEvent *)&v7 initWithModel:a3 home:a4];
  v5 = v4;
  if (v4)
  {
    [(HMDTimeEvent *)v4 _initialize];
  }

  return v5;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t14_191594 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t14_191594, &__block_literal_global_191595);
  }

  v3 = logCategory__hmf_once_v15_191596;

  return v3;
}

void __27__HMDTimeEvent_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v15_191596;
  logCategory__hmf_once_v15_191596 = v1;
}

+ (BOOL)isValidOffsetDateComponents:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    if ([v4 minute] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v5 setMinute:{objc_msgSend(v4, "minute")}];
    }

    if ([v4 hour] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v5 setHour:{objc_msgSend(v4, "hour")}];
    }

    if ([v4 day] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v5 setDay:{objc_msgSend(v4, "day")}];
    }

    if ([v4 month] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v5 setMonth:{objc_msgSend(v4, "month")}];
    }

    v6 = [v4 isEqual:v5];
    if ((v6 & 1) == 0)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = a1;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v13 = 138543618;
        v14 = v10;
        v15 = 2112;
        v16 = v4;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Given date component contains non supported fields set: %@", &v13, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
    }
  }

  else
  {
    v6 = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (BOOL)isValidAbsoluteDateComponents:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 minute] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v5, "hour") != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = [HMDTimeEvent isValidOffsetDateComponents:v5];
      goto LABEL_10;
    }

    v6 = objc_autoreleasePoolPush();
    v7 = a1;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v9;
      v18 = 2112;
      v19 = v5;
      v10 = "%{public}@Minute and hour fields are not set in %@";
      v11 = v8;
      v12 = 22;
LABEL_8:
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, v10, &v16, v12);
    }
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = a1;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v9;
      v10 = "%{public}@Given date components is nil";
      v11 = v8;
      v12 = 12;
      goto LABEL_8;
    }
  }

  objc_autoreleasePoolPop(v6);
  v13 = 0;
LABEL_10:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

@end