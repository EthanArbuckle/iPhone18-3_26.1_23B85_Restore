@interface HMDAccessoryFirmwareUpdateTimedAutomationPolicy
+ (id)logCategory;
- (BOOL)evaluate;
- (BOOL)isEqual:(id)equal;
- (id)_getMaxUpdateApplyEndTime;
- (id)_getTriggerFireDateBeforeEndTime:(id)time;
- (unint64_t)hash;
- (void)_startReevaluateTimer:(double)timer;
- (void)_stopReevaluateTimer;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDAccessoryFirmwareUpdateTimedAutomationPolicy

- (void)_stopReevaluateTimer
{
  reevaluateTimer = [(HMDAccessoryFirmwareUpdateTimedAutomationPolicy *)self reevaluateTimer];
  [reevaluateTimer cancel];

  [(HMDAccessoryFirmwareUpdateTimedAutomationPolicy *)self setReevaluateTimer:0];
}

- (void)_startReevaluateTimer:(double)timer
{
  timerCopy = timer;
  v17 = *MEMORY[0x277D85DE8];
  if (timer < 0.0)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Invalid time interval", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    timerCopy = 0.0;
  }

  v9 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:1 options:timerCopy + applyGuardTime()];
  [(HMDAccessoryFirmwareUpdateTimedAutomationPolicy *)self setReevaluateTimer:v9];

  reevaluateTimer = [(HMDAccessoryFirmwareUpdateTimedAutomationPolicy *)self reevaluateTimer];
  [reevaluateTimer setDelegate:self];

  workQueue = [(HMDAccessoryFirmwareUpdatePolicy *)self workQueue];
  reevaluateTimer2 = [(HMDAccessoryFirmwareUpdateTimedAutomationPolicy *)self reevaluateTimer];
  [reevaluateTimer2 setDelegateQueue:workQueue];

  reevaluateTimer3 = [(HMDAccessoryFirmwareUpdateTimedAutomationPolicy *)self reevaluateTimer];
  [reevaluateTimer3 resume];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  reevaluateTimer = [(HMDAccessoryFirmwareUpdateTimedAutomationPolicy *)self reevaluateTimer];

  if (reevaluateTimer == fireCopy && [(HMDAccessoryFirmwareUpdateTimedAutomationPolicy *)self status])
  {

    [(HMDAccessoryFirmwareUpdatePolicy *)self notify:1];
  }
}

- (id)_getTriggerFireDateBeforeEndTime:(id)time
{
  v76 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  accessory = [(HMDAccessoryFirmwareUpdatePolicy *)self accessory];
  home = [accessory home];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  triggers = [home triggers];
  v6 = [triggers countByEnumeratingWithState:&v66 objects:v75 count:16];
  if (v6)
  {
    v7 = v6;
    v57 = *v67;
    v56 = triggers;
    v53 = home;
    v54 = accessory;
    while (2)
    {
      v8 = 0;
      v9 = v57;
      v58 = v7;
      do
      {
        if (*v67 != v9)
        {
          objc_enumerationMutation(triggers);
        }

        v10 = *(*(&v66 + 1) + 8 * v8);
        if ([v10 isAssociatedWithAccessory:accessory])
        {
          v11 = v10;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = v11;
          }

          else
          {
            v12 = 0;
          }

          v13 = v12;

          v14 = v11;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
          }

          else
          {
            v15 = 0;
          }

          v16 = v15;

          if (v13)
          {
            v17 = objc_autoreleasePoolPush();
            selfCopy = self;
            v19 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              HMFGetLogIdentifier();
              v21 = v20 = v16;
              *buf = 138543362;
              v72 = v21;
              _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Evaluating timer trigger...", buf, 0xCu);

              v16 = v20;
              triggers = v56;
              v9 = v57;
            }

            objc_autoreleasePoolPop(v17);
            currentFireDate = [v13 currentFireDate];
            v23 = [timeCopy compare:currentFireDate];

            v24 = v23 == 1;
            v7 = v58;
            if (v24)
            {
              v47 = objc_autoreleasePoolPush();
              v48 = selfCopy;
              v49 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
              {
                v50 = HMFGetLogIdentifier();
                [v14 name];
                v52 = v51 = v16;
                *buf = 138543618;
                v72 = v50;
                v73 = 2112;
                v74 = v52;
                _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_INFO, "%{public}@Update could be interrupted by trigger:%@", buf, 0x16u);

                v16 = v51;
                triggers = v56;
              }

              objc_autoreleasePoolPop(v47);
              currentFireDate2 = [v13 currentFireDate];
LABEL_40:

              home = v53;
              goto LABEL_42;
            }
          }

          else
          {
            v25 = objc_autoreleasePoolPush();
            selfCopy2 = self;
            v26 = HMFGetOSLogHandle();
            v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG);
            if (v16)
            {
              if (v27)
              {
                v28 = HMFGetLogIdentifier();
                *buf = 138543362;
                v72 = v28;
                _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEBUG, "%{public}@Evaluating event trigger...", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v25);
              v64 = 0u;
              v65 = 0u;
              v62 = 0u;
              v63 = 0u;
              v55 = v16;
              timeEvents = [v16 timeEvents];
              v30 = [timeEvents countByEnumeratingWithState:&v62 objects:v70 count:16];
              if (v30)
              {
                v31 = v30;
                v32 = *v63;
                while (2)
                {
                  for (i = 0; i != v31; ++i)
                  {
                    if (*v63 != v32)
                    {
                      objc_enumerationMutation(timeEvents);
                    }

                    v34 = *(*(&v62 + 1) + 8 * i);
                    _nextTimerDate = [v34 _nextTimerDate];
                    v36 = [timeCopy compare:_nextTimerDate];

                    if (v36 == 1)
                    {
                      v40 = objc_autoreleasePoolPush();
                      v41 = selfCopy2;
                      v42 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
                      {
                        v43 = HMFGetLogIdentifier();
                        name = [v14 name];
                        *buf = 138543618;
                        v72 = v43;
                        v73 = 2112;
                        v74 = name;
                        _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_INFO, "%{public}@Update could be interrupted by trigger:%@", buf, 0x16u);
                      }

                      objc_autoreleasePoolPop(v40);
                      currentFireDate2 = [v34 _nextTimerDate];

                      v14 = 0;
                      accessory = v54;
                      v16 = v55;
                      triggers = v56;
                      goto LABEL_40;
                    }
                  }

                  v31 = [timeEvents countByEnumeratingWithState:&v62 objects:v70 count:16];
                  if (v31)
                  {
                    continue;
                  }

                  break;
                }
              }

              accessory = v54;
              v16 = v55;
              triggers = v56;
              v9 = v57;
              v7 = v58;
            }

            else
            {
              if (v27)
              {
                v37 = HMFGetLogIdentifier();
                *buf = 138543362;
                v72 = v37;
                _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEBUG, "%{public}@Unknown trigger type", buf, 0xCu);

                v9 = v57;
              }

              objc_autoreleasePoolPop(v25);
            }
          }
        }

        ++v8;
      }

      while (v8 != v7);
      v38 = [triggers countByEnumeratingWithState:&v66 objects:v75 count:16];
      v7 = v38;
      currentFireDate2 = 0;
      home = v53;
      if (v38)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    currentFireDate2 = 0;
  }

LABEL_42:

  v45 = *MEMORY[0x277D85DE8];

  return currentFireDate2;
}

- (id)_getMaxUpdateApplyEndTime
{
  v20 = *MEMORY[0x277D85DE8];
  accessory = [(HMDAccessoryFirmwareUpdatePolicy *)self accessory];
  firmwareUpdateProfile = [accessory firmwareUpdateProfile];

  if (firmwareUpdateProfile)
  {
    firmwareUpdateProfile2 = [accessory firmwareUpdateProfile];
    updateDuration = [firmwareUpdateProfile2 updateDuration];

    if (updateDuration)
    {
      v7 = applyGuardTime();
      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      date = [MEMORY[0x277CBEAA8] date];
      v10 = [currentCalendar dateByAddingUnit:128 value:v7 + updateDuration toDate:date options:0];

      goto LABEL_10;
    }

    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v14;
      v15 = "%{public}@Invalid update duration";
      goto LABEL_8;
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v14;
      v15 = "%{public}@Invalid update profile";
LABEL_8:
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, v15, &v18, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v11);
  v10 = 0;
LABEL_10:

  v16 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)evaluate
{
  v26 = *MEMORY[0x277D85DE8];
  accessory = [(HMDAccessoryFirmwareUpdatePolicy *)self accessory];
  bridge = [accessory bridge];

  if (bridge)
  {
    goto LABEL_2;
  }

  _getMaxUpdateApplyEndTime = [(HMDAccessoryFirmwareUpdateTimedAutomationPolicy *)self _getMaxUpdateApplyEndTime];
  if (!_getMaxUpdateApplyEndTime)
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Invalid max update apply end time, policy status evaluated to NO", &v24, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    goto LABEL_13;
  }

  v11 = _getMaxUpdateApplyEndTime;
  v12 = [(HMDAccessoryFirmwareUpdateTimedAutomationPolicy *)self _getTriggerFireDateBeforeEndTime:_getMaxUpdateApplyEndTime];
  if (v12)
  {
    v13 = v12;
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Policy status evaluated to NO", &v24, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    date = [MEMORY[0x277CBEAA8] date];
    [v13 timeIntervalSinceDate:date];
    [(HMDAccessoryFirmwareUpdateTimedAutomationPolicy *)selfCopy2 _startReevaluateTimer:?];

LABEL_13:
    result = 0;
    goto LABEL_14;
  }

LABEL_2:
  [(HMDAccessoryFirmwareUpdateTimedAutomationPolicy *)self _stopReevaluateTimer];
  v5 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v24 = 138543362;
    v25 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Policy status evaluated to YES", &v24, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  result = 1;
LABEL_14:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
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
      accessory = [(HMDAccessoryFirmwareUpdatePolicy *)self accessory];
      accessory2 = [(HMDAccessoryFirmwareUpdatePolicy *)v6 accessory];
      v9 = [accessory isEqual:accessory2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  accessory = [(HMDAccessoryFirmwareUpdatePolicy *)self accessory];
  v3 = [accessory hash];

  return v3;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_198776 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_198776, &__block_literal_global_198777);
  }

  v3 = logCategory__hmf_once_v1_198778;

  return v3;
}

void __62__HMDAccessoryFirmwareUpdateTimedAutomationPolicy_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_198778;
  logCategory__hmf_once_v1_198778 = v1;
}

@end