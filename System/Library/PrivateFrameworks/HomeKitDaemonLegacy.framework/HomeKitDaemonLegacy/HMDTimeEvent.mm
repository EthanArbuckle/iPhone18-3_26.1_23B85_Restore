@interface HMDTimeEvent
+ (BOOL)isValidAbsoluteDateComponents:(id)components;
+ (BOOL)isValidOffsetDateComponents:(id)components;
+ (id)logCategory;
- (BOOL)_activate:(unint64_t)_activate completionHandler:(id)handler;
- (BOOL)isCompatibleWithEvent:(id)event;
- (HMDBackgroundTaskManager)backgroundTaskManager;
- (HMDTimeEvent)initWithCoder:(id)coder;
- (HMDTimeEvent)initWithModel:(id)model home:(id)home;
- (void)_initialize;
- (void)_reactivateTriggerAfterDelay;
- (void)_updateRepetitive;
- (void)encodeWithCoder:(id)coder;
- (void)handleTimerFiredNotification:(id)notification;
- (void)invalidate;
@end

@implementation HMDTimeEvent

- (void)invalidate
{
  backgroundTaskManager = [(HMDTimeEvent *)self backgroundTaskManager];
  timerID = [(HMDTimeEvent *)self timerID];
  [backgroundTaskManager cancelTaskWithIdentifier:timerID onObserver:self];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = HMDTimeEvent;
  [(HMDEvent *)&v3 encodeWithCoder:coder];
}

- (HMDTimeEvent)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HMDTimeEvent;
  v3 = [(HMDEvent *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(HMDTimeEvent *)v3 _initialize];
  }

  return v4;
}

- (HMDBackgroundTaskManager)backgroundTaskManager
{
  home = [(HMDEvent *)self home];
  backgroundTaskManager = [home backgroundTaskManager];

  return backgroundTaskManager;
}

- (void)_reactivateTriggerAfterDelay
{
  objc_initWeak(&location, self);
  v3 = dispatch_time(0, 60000000000);
  workQueue = [(HMDEvent *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__HMDTimeEvent__reactivateTriggerAfterDelay__block_invoke;
  block[3] = &unk_279732E78;
  block[4] = self;
  objc_copyWeak(&v6, &location);
  dispatch_after(v3, workQueue, block);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __44__HMDTimeEvent__reactivateTriggerAfterDelay__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) eventTrigger];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__HMDTimeEvent__reactivateTriggerAfterDelay__block_invoke_2;
  v3[3] = &unk_279734708;
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
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Reactivated trigger after timer fired", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleTimerFiredNotification:(id)notification
{
  v32 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo hmf_stringForKey:@"HMD.BGTM.NK"];

  timerID = [(HMDTimeEvent *)self timerID];
  v8 = HMFEqualObjects();

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = HMDEventTriggerActivationTypeAsString([(HMDEvent *)selfCopy activationType]);
      v26 = 138543874;
      v27 = v12;
      v28 = 2112;
      v29 = v6;
      v30 = 2112;
      v31 = v13;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Timer has fired %@, current activation state: %@", &v26, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    if ([(HMDTimeEvent *)selfCopy isActive])
    {
      delegate = [(HMDEvent *)selfCopy delegate];
      v15 = [delegate didOccurEvent:selfCopy causingDevice:0];

      if ([(HMDTimeEvent *)selfCopy repetitive])
      {
        eventTrigger = [(HMDEvent *)selfCopy eventTrigger];
        recurrences = [eventTrigger recurrences];
        v18 = [recurrences count];

        v19 = objc_autoreleasePoolPush();
        v20 = selfCopy;
        v21 = HMFGetOSLogHandle();
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
        if (v18)
        {
          if (v22)
          {
            v23 = HMFGetLogIdentifier();
            v26 = 138543362;
            v27 = v23;
            _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Reactivating the event as it does have some recurrences", &v26, 0xCu);
          }

          objc_autoreleasePoolPop(v19);
          [(HMDTimeEvent *)v20 _reactivateTriggerAfterDelay];
        }

        else
        {
          if (v22)
          {
            v24 = HMFGetLogIdentifier();
            v26 = 138543362;
            v27 = v24;
            _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Not-Reactivating the event as it does not have recurrences", &v26, 0xCu);
          }

          objc_autoreleasePoolPop(v19);
        }
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (BOOL)_activate:(unint64_t)_activate completionHandler:(id)handler
{
  v45 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v38.receiver = self;
  v38.super_class = HMDTimeEvent;
  v7 = [(HMDEvent *)&v38 _activate:_activate completionHandler:0];
  if ([(HMDTimeEvent *)self isActive])
  {
    _nextTimerDate = [(HMDTimeEvent *)self _nextTimerDate];
    if (_nextTimerDate)
    {
      timerID = [(HMDTimeEvent *)self timerID];
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        hmf_localTimeDescription = [_nextTimerDate hmf_localTimeDescription];
        *buf = 138543874;
        v40 = v13;
        v41 = 2112;
        v42 = timerID;
        v43 = 2112;
        v44 = hmf_localTimeDescription;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Starting the next timer (%@) set to [%@]", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      backgroundTaskManager = [(HMDTimeEvent *)selfCopy backgroundTaskManager];
      v37 = 0;
      v16 = [backgroundTaskManager scheduleTaskWithIdentifier:timerID fireDate:_nextTimerDate onObserver:selfCopy selector:sel_handleTimerFiredNotification_ error:&v37];
      v17 = v37;

      if ((v16 & 1) == 0)
      {
        v18 = objc_autoreleasePoolPush();
        v19 = selfCopy;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = HMFGetLogIdentifier();
          *buf = 138543874;
          v40 = v21;
          v41 = 2112;
          v42 = timerID;
          v43 = 2112;
          v44 = v17;
          _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to activate time trigger %@ with error %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v18);
      }

      v22 = _Block_copy(handlerCopy);
      v23 = v22;
      if (v22)
      {
        (*(v22 + 2))(v22, v17);
      }
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543362;
        v40 = v34;
        _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to get next time date", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v31);
      timerID = _Block_copy(handlerCopy);
      if (!timerID)
      {
        goto LABEL_22;
      }

      v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
      (timerID)[2](timerID, v17);
    }

LABEL_22:
    goto LABEL_23;
  }

  _nextTimerDate = [(HMDTimeEvent *)self timerID];
  backgroundTaskManager2 = [(HMDTimeEvent *)self backgroundTaskManager];
  [backgroundTaskManager2 cancelTaskWithIdentifier:_nextTimerDate onObserver:self];

  v25 = _Block_copy(handlerCopy);
  v26 = v25;
  if (v25)
  {
    (*(v25 + 2))(v25, 0);
  }

  v27 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = HMFGetLogIdentifier();
    *buf = 138543618;
    v40 = v30;
    v41 = 2112;
    v42 = _nextTimerDate;
    _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@Stopping the already scheduled timer with ID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v27);
LABEL_23:

  v35 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)isCompatibleWithEvent:(id)event
{
  v4.receiver = self;
  v4.super_class = HMDTimeEvent;
  return [(HMDEvent *)&v4 isCompatibleWithEvent:event];
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
  uuid = [(HMDEvent *)self uuid];
  uUIDString = [uuid UUIDString];
  v5 = [@"com.apple.homed.triggers." stringByAppendingString:uUIDString];
  hmf_stringWithSmallestEncoding = [v5 hmf_stringWithSmallestEncoding];
  timerID = self->_timerID;
  self->_timerID = hmf_stringWithSmallestEncoding;

  [(HMDTimeEvent *)self _updateRepetitive];
}

- (HMDTimeEvent)initWithModel:(id)model home:(id)home
{
  v7.receiver = self;
  v7.super_class = HMDTimeEvent;
  v4 = [(HMDEvent *)&v7 initWithModel:model home:home];
  v5 = v4;
  if (v4)
  {
    [(HMDTimeEvent *)v4 _initialize];
  }

  return v5;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t14_128233 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t14_128233, &__block_literal_global_128234);
  }

  v3 = logCategory__hmf_once_v15_128235;

  return v3;
}

uint64_t __27__HMDTimeEvent_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v15_128235;
  logCategory__hmf_once_v15_128235 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (BOOL)isValidOffsetDateComponents:(id)components
{
  v17 = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  if (componentsCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    if ([componentsCopy minute] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v5 setMinute:{objc_msgSend(componentsCopy, "minute")}];
    }

    if ([componentsCopy hour] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v5 setHour:{objc_msgSend(componentsCopy, "hour")}];
    }

    if ([componentsCopy day] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v5 setDay:{objc_msgSend(componentsCopy, "day")}];
    }

    if ([componentsCopy month] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v5 setMonth:{objc_msgSend(componentsCopy, "month")}];
    }

    v6 = [componentsCopy isEqual:v5];
    if ((v6 & 1) == 0)
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v13 = 138543618;
        v14 = v10;
        v15 = 2112;
        v16 = componentsCopy;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Given date component contains non supported fields set: %@", &v13, 0x16u);
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

+ (BOOL)isValidAbsoluteDateComponents:(id)components
{
  v20 = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  v5 = componentsCopy;
  if (componentsCopy)
  {
    if ([componentsCopy minute] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v5, "hour") != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = [HMDTimeEvent isValidOffsetDateComponents:v5];
      goto LABEL_10;
    }

    v6 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, v10, &v16, v12);
    }
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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