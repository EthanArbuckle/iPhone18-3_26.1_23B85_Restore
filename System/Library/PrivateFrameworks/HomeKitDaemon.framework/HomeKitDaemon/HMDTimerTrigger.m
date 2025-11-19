@interface HMDTimerTrigger
+ (id)getCalendar:(id)a3;
+ (id)logCategory;
+ (id)messageBindingForDispatcher:(id)a3 message:(id)a4 receiver:(id)a5;
+ (id)validateRecurrence:(id)a3 calendar:(id)a4 fireDate:(id)a5;
+ (id)validateRecurrences:(id)a3;
+ (id)validateTriggerModel:(id)a3 message:(id)a4 currentFireDate:(id)a5;
+ (id)validateWholeMinuteDate:(id)a3 onCalendar:(id)a4;
- (BOOL)_reactivateFireDateTrigger;
- (BOOL)_reactivateSignificantEventTrigger;
- (BOOL)_reactivateTrigger;
- (BOOL)_shouldExecuteActionSet;
- (BOOL)shouldActivateOnLocalDevice;
- (HMDTimerTrigger)initWithCoder:(id)a3;
- (HMDTimerTrigger)initWithModel:(id)a3 home:(id)a4;
- (HMDTimerTrigger)initWithName:(id)a3 uuid:(id)a4;
- (NSDate)currentFireDate;
- (id)_nextFireDate;
- (id)_nextSignificantEventFireDate;
- (id)_serializeForAdd;
- (id)backingStoreObjects:(int64_t)a3;
- (id)description;
- (id)dumpStateWithPrivacyLevel:(unint64_t)a3;
- (id)emptyModelObject;
- (id)getCalendar;
- (id)getFireInterval;
- (id)modelObjectWithChangeType:(unint64_t)a3;
- (void)_activateWithCompletion:(id)a3;
- (void)_closestDatesForStartDate:(id)a3 earliestDate:(id)a4 timeZone:(id)a5 deliveryRepeatInterval:(id)a6 returnDateBefore:(id *)a7 returnDateAfter:(id *)a8;
- (void)_disableTimerOffReactivationFailure;
- (void)_handleTimerTriggerUpdate:(id)a3 message:(id)a4;
- (void)_handleUpdateTimerTriggerPropertiesModel:(id)a3 message:(id)a4;
- (void)_handleUpdateTimerTriggerPropertiesRequest:(id)a3;
- (void)_reactiveTriggerAfterDelay;
- (void)_registerForMessages;
- (void)_startTimer:(id)a3;
- (void)_startTimerWithFireDate:(id)a3;
- (void)_stopTimer;
- (void)_timerTriggered;
- (void)_transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
- (void)completeConfiguration;
- (void)configure:(id)a3 messageDispatcher:(id)a4 queue:(id)a5;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)handleTimerFiredNotification:(id)a3;
- (void)invalidate;
- (void)setCurrentFireDate:(id)a3;
- (void)timerTriggered;
@end

@implementation HMDTimerTrigger

- (void)handleTimerFiredNotification:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"HMD.BGTM.NK"];

  v7 = [(HMDTimerTrigger *)self timerID];
  v8 = [v7 isEqualToString:v6];

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [(HMDTimerTrigger *)v10 timerID];
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Timer Trigger fired : %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDTimerTrigger *)v10 timerTriggered];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v9;
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

  if (v13)
  {
    [(HMDTimerTrigger *)self _handleTimerTriggerUpdate:v13 message:v10];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Received unknown model object", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = HMDTimerTrigger;
  v4 = a3;
  [(HMDTrigger *)&v12 encodeWithCoder:v4];
  v5 = [(HMDTimerTrigger *)self fireDate:v12.receiver];
  [v4 encodeObject:v5 forKey:@"timerTriggerInitialFireDate"];

  v6 = [(HMDTimerTrigger *)self fireDateTimeZone];
  [v4 encodeObject:v6 forKey:@"timerTriggerTimeZone"];

  v7 = [(HMDTimerTrigger *)self fireRepeatInterval];
  [v4 encodeObject:v7 forKey:@"timerTriggerRepeatInterval"];

  v8 = [(HMDTimerTrigger *)self recurrences];
  [v4 encodeObject:v8 forKey:@"HM.timerTriggerRecurrences"];

  v9 = [(HMDTimerTrigger *)self timerID];
  [v4 encodeObject:v9 forKey:@"timerTriggerTimerIDCodingKey"];

  v10 = [(HMDTimerTrigger *)self significantEvent];
  [v4 encodeObject:v10 forKey:@"HM.timerTriggerSignificantEvent"];

  v11 = [(HMDTimerTrigger *)self significantEventOffset];
  [v4 encodeObject:v11 forKey:@"HM.timerTriggerSignificantEventOffset"];
}

- (HMDTimerTrigger)initWithCoder:(id)a3
{
  v27[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = HMDTimerTrigger;
  v5 = [(HMDTrigger *)&v26 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timerTriggerInitialFireDate"];
    fireDate = v5->_fireDate;
    v5->_fireDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timerTriggerTimeZone"];
    fireDateTimeZone = v5->_fireDateTimeZone;
    v5->_fireDateTimeZone = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timerTriggerRepeatInterval"];
    fireRepeatInterval = v5->_fireRepeatInterval;
    v5->_fireRepeatInterval = v10;

    v12 = MEMORY[0x277CBEB98];
    v27[0] = objc_opt_class();
    v27[1] = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    v14 = [v12 setWithArray:v13];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"HM.timerTriggerRecurrences"];
    recurrences = v5->_recurrences;
    v5->_recurrences = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timerTriggerTimerIDCodingKey"];
    timerID = v5->_timerID;
    v5->_timerID = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.timerTriggerSignificantEvent"];
    significantEvent = v5->_significantEvent;
    v5->_significantEvent = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.timerTriggerSignificantEventOffset"];
    significantEventOffset = v5->_significantEventOffset;
    v5->_significantEventOffset = v21;

    v23 = v5->_fireRepeatInterval;
    if (v23)
    {
      if ([(NSDateComponents *)v23 nanosecond])
      {
        [(NSDateComponents *)v5->_fireRepeatInterval setNanosecond:0];
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)getFireInterval
{
  v3 = [(HMDTimerTrigger *)self fireDate];

  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = [(HMDTimerTrigger *)self fireRepeatInterval];

  if (v4)
  {
    v5 = [(HMDTimerTrigger *)self fireRepeatInterval];
    goto LABEL_7;
  }

  v6 = [(HMDTimerTrigger *)self recurrences];
  v7 = [v6 count];

  if (v7)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v5 setDay:1];
  }

  else
  {
LABEL_6:
    v5 = 0;
  }

LABEL_7:

  return v5;
}

- (id)getCalendar
{
  v2 = [(HMDTimerTrigger *)self fireRepeatInterval];
  v3 = [HMDTimerTrigger getCalendar:v2];

  return v3;
}

- (void)_closestDatesForStartDate:(id)a3 earliestDate:(id)a4 timeZone:(id)a5 deliveryRepeatInterval:(id)a6 returnDateBefore:(id *)a7 returnDateAfter:(id *)a8
{
  v95 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = [(HMDTimerTrigger *)self getCalendar];
  v88 = [MEMORY[0x277CBEBB0] localTimeZone];
  v18 = [MEMORY[0x277CBEAA8] date];
  v19 = [v13 compare:v18];

  if (v19 != 1)
  {
    if (v15)
    {
      v32 = [v88 secondsFromGMT];
      v33 = [v15 secondsFromGMT];
      v34 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v13 sinceDate:(v32 - v33)];
    }

    else
    {
      v34 = v13;
    }

    v30 = v34;
    if (v16)
    {
      v83 = self;
      v76 = v13;
      v35 = 0;
      v36 = 1;
      do
      {
        v37 = v35;
        v38 = v36;
        v35 = _NCSchedulerDateWithMultiple(v30, v17, v16, v36);

        v36 *= 2;
      }

      while ([v35 compare:v14] == -1);
      v82 = v15;
      if (v38 < 2)
      {
        v41 = v38;
        v29 = v35;
      }

      else
      {
        v39 = v38 >> 1;
        v40 = vcvts_n_f32_u64(v38 - (v38 >> 1), 1uLL) + (v38 >> 1);
        do
        {
          v41 = v40;
          v29 = _NCSchedulerDateWithMultiple(v30, v17, v16, v40);

          if ([v29 compare:v14] == -1)
          {
            v39 = v41;
          }

          else
          {
            v38 = v41;
          }

          v40 = v39 + ((v38 - v39) * 0.5);
          v35 = v29;
        }

        while (v38 - v39 > 1);
      }

      v48 = [v29 compare:v14];
      if (v48 == 1)
      {
        self = v83;
        if (a8)
        {
          v62 = v29;
          *a8 = v29;
          v79 = objc_autoreleasePoolPush();
          v63 = v83;
          v64 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
          {
            v65 = HMFGetLogIdentifier();
            v73 = *a8;
            contexta = v65;
            v66 = [MEMORY[0x277CBEAA8] date];
            *buf = 138543874;
            v90 = v65;
            v91 = 2112;
            v92 = v73;
            self = v83;
            v93 = 2112;
            v94 = v66;
            _os_log_impl(&dword_229538000, v64, OS_LOG_TYPE_INFO, "%{public}@(d) Timer fires next at %@; current time (GMT): %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v79);
        }

        if (a7)
        {
          *a7 = _NCSchedulerDateWithMultiple(v30, v17, v16, v41 - 1);
          v80 = objc_autoreleasePoolPush();
          v67 = self;
          v23 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v68 = HMFGetLogIdentifier();
            v69 = *a7;
            v70 = [MEMORY[0x277CBEAA8] date];
            *buf = 138543874;
            v90 = v68;
            v91 = 2112;
            v92 = v69;
            self = v83;
            v93 = 2112;
            v94 = v70;
            _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@(e) Timer fires next at %@; current time (GMT): %@", buf, 0x20u);
          }

          v13 = v76;
          v31 = v80;
          goto LABEL_47;
        }

        v13 = v76;
      }

      else
      {
        self = v83;
        if (!v48)
        {
          v57 = v29;
          *a8 = v29;
          v31 = objc_autoreleasePoolPush();
          v58 = v83;
          v87 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
          {
            v59 = HMFGetLogIdentifier();
            v60 = *a8;
            v61 = [MEMORY[0x277CBEAA8] date];
            *buf = 138543874;
            v90 = v59;
            v91 = 2112;
            v92 = v60;
            self = v83;
            v23 = v87;
            v93 = 2112;
            v94 = v61;
            _os_log_impl(&dword_229538000, v87, OS_LOG_TYPE_INFO, "%{public}@(f) Timer fires next at %@; current time (GMT): %@", buf, 0x20u);

            v13 = v76;
            goto LABEL_47;
          }

          v13 = v76;
LABEL_51:
          v15 = v82;
          v23 = v87;
          goto LABEL_52;
        }

        v13 = v76;
        if (v48 == -1)
        {
          if (a7)
          {
            v49 = v29;
            *a7 = v29;
            context = objc_autoreleasePoolPush();
            v78 = v83;
            v50 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
            {
              v51 = HMFGetLogIdentifier();
              v72 = *a7;
              v86 = [MEMORY[0x277CBEAA8] date];
              *buf = 138543874;
              v52 = v51;
              v90 = v51;
              v91 = 2112;
              v92 = v72;
              self = v83;
              v93 = 2112;
              v94 = v86;
              _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_INFO, "%{public}@(b) Timer fires next at %@; current time (GMT): %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(context);
            v13 = v76;
          }

          if (a8)
          {
            *a8 = _NCSchedulerDateWithMultiple(v30, v17, v16, v41 + 1);
            v31 = objc_autoreleasePoolPush();
            v53 = self;
            v87 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
            {
              v54 = HMFGetLogIdentifier();
              v55 = *a8;
              v56 = [MEMORY[0x277CBEAA8] date];
              *buf = 138543874;
              v90 = v54;
              v91 = 2112;
              v92 = v55;
              self = v83;
              v23 = v87;
              v93 = 2112;
              v94 = v56;
              _os_log_impl(&dword_229538000, v87, OS_LOG_TYPE_INFO, "%{public}@(c) Timer fires next at %@; current time (GMT): %@", buf, 0x20u);

              v13 = v76;
LABEL_47:
              v15 = v82;
LABEL_52:

              objc_autoreleasePoolPop(v31);
              goto LABEL_53;
            }

            goto LABEL_51;
          }
        }
      }

      v15 = v82;
      goto LABEL_53;
    }

    if ([v34 compare:v14] == -1)
    {
      v42 = a7;
      if (!a7)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v42 = a8;
      if (!a8)
      {
LABEL_23:
        v31 = objc_autoreleasePoolPush();
        v44 = self;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v45 = HMFGetLogIdentifier();
          [MEMORY[0x277CBEAA8] date];
          v84 = self;
          v47 = v46 = v15;
          *buf = 138543874;
          v90 = v45;
          v91 = 2112;
          v92 = v30;
          v93 = 2112;
          v94 = v47;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@(g) Timer fires next at %@; current time (GMT): %@", buf, 0x20u);

          v15 = v46;
          self = v84;
        }

        v29 = 0;
        goto LABEL_52;
      }
    }

    v43 = v30;
    *v42 = v30;
    goto LABEL_23;
  }

  if (a8)
  {
    v20 = a8;
    v21 = v13;
    *a8 = v13;
    v77 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v25 = v23;
      v26 = self;
      v27 = *v20;
      [MEMORY[0x277CBEAA8] date];
      v28 = v81 = v15;
      *buf = 138543874;
      v90 = v24;
      v91 = 2112;
      v92 = v27;
      self = v26;
      v23 = v25;
      v93 = 2112;
      v94 = v28;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@(a) Timer fires next at %@; current time (GMT): %@", buf, 0x20u);

      v15 = v81;
    }

    v29 = 0;
    v30 = 0;
    v31 = v77;
    goto LABEL_52;
  }

  v29 = 0;
  v30 = 0;
LABEL_53:

  v71 = *MEMORY[0x277D85DE8];
}

- (void)_reactiveTriggerAfterDelay
{
  objc_initWeak(&location, self);
  v3 = dispatch_time(0, (*&minimumTimerRecurrence / 30.0 * 1000000000.0));
  v4 = [(HMDTrigger *)self workQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__HMDTimerTrigger__reactiveTriggerAfterDelay__block_invoke;
  v5[3] = &unk_278686B80;
  objc_copyWeak(&v6, &location);
  dispatch_after(v3, v4, v5);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __45__HMDTimerTrigger__reactiveTriggerAfterDelay__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained active] && objc_msgSend(WeakRetained, "shouldActivateOnLocalDevice"))
  {
    [WeakRetained _reactivateTrigger];
  }
}

- (void)_timerTriggered
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(HMDTimerTrigger *)self _shouldExecuteActionSet];
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v13 = v8;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Going to execute the Action set.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __34__HMDTimerTrigger__timerTriggered__block_invoke;
    v11[3] = &unk_278689DC0;
    v11[4] = v5;
    [(HMDTrigger *)v5 _executeActionSetsWithCompletionHandler:v11];
    [(HMDTrigger *)v5 triggerFired];
  }

  else
  {
    if (v7)
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v13 = v9;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Should execute action set returned NO, going ahead to reactivate trigger", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  [(HMDTimerTrigger *)v5 _reactiveTriggerAfterDelay];
  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldExecuteActionSet
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = [(HMDTimerTrigger *)self recurrences];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [MEMORY[0x277CBEAA8] now];
    v6 = [(HMDTimerTrigger *)self recurrences];
    v7 = [v6 firstObject];
    v8 = [v7 calendar];

    if (!v8)
    {
      v8 = [MEMORY[0x277CBEA80] currentCalendar];
    }

    v9 = [v8 components:512 fromDate:v5];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = [(HMDTimerTrigger *)self recurrences];
    v10 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
    if (v10)
    {
      v11 = v10;
      v27 = v8;
      v28 = v5;
      v12 = *v31;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v31 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v30 + 1) + 8 * i);
          v15 = objc_autoreleasePoolPush();
          v16 = self;
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = HMFGetLogIdentifier();
            *buf = 138543874;
            v35 = v18;
            v36 = 2112;
            v37 = v14;
            v38 = 2112;
            v39 = v9;
            _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Comparing date components iter: %@, now: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v15);
          v19 = [v9 weekday];
          if (v19 == [v14 weekday])
          {
            v21 = objc_autoreleasePoolPush();
            v22 = v16;
            v23 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              v24 = HMFGetLogIdentifier();
              *buf = 138543362;
              v35 = v24;
              _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Current week day matches with a recurring instance, allowing execution of action set", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v21);
            v20 = 1;
            goto LABEL_18;
          }
        }

        v11 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v20 = 0;
LABEL_18:
      v8 = v27;
      v5 = v28;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 1;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v20;
}

- (id)_nextSignificantEventFireDate
{
  v3 = [(HMDTrigger *)self home];
  v4 = [v3 homeLocationHandler];
  v5 = [v4 location];
  v6 = [(HMDTimerTrigger *)self significantEvent];
  v7 = [(HMDTimerTrigger *)self significantEventOffset];
  v8 = [HMDSignificantTimeEvent nextTimerDateFromHomeLocation:v5 signifiantEvent:v6 offset:v7 loggingObject:self];

  return v8;
}

- (id)_nextFireDate
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(HMDTimerTrigger *)self fireDate];
  v4 = [MEMORY[0x277CBEAA8] now];
  v5 = [(HMDTimerTrigger *)self fireDateTimeZone];
  v6 = [(HMDTimerTrigger *)self getFireInterval];
  v14 = 0;
  [(HMDTimerTrigger *)self _closestDatesForStartDate:v3 earliestDate:v4 timeZone:v5 deliveryRepeatInterval:v6 returnDateBefore:0 returnDateAfter:&v14];
  v7 = v14;

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v16 = v11;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Next Fire Date : [%@]", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)_activateWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__HMDTimerTrigger__activateWithCompletion___block_invoke;
  aBlock[3] = &unk_278686D60;
  objc_copyWeak(&v10, &location);
  v5 = v4;
  v9 = v5;
  v6 = _Block_copy(aBlock);
  if ([(HMDTrigger *)self active])
  {
    v7 = [(HMDTimerTrigger *)self shouldActivateOnLocalDevice];
  }

  else
  {
    v7 = 0;
  }

  [(HMDTrigger *)self _activate:v7 completionHandler:v6];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __43__HMDTimerTrigger__activateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = v5;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = HMFGetLogIdentifier();
        v23 = 138543362;
        v24 = v9;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Activate on super class failed, bailing out", &v23, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
      v10 = *(a1 + 32);
      if (v10)
      {
        v11 = *(v10 + 16);
LABEL_19:
        v11();
      }
    }

    else
    {
      if ([WeakRetained active] && objc_msgSend(v5, "shouldActivateOnLocalDevice"))
      {
        [v5 _reactiveTriggerAfterDelay];
      }

      else if ([v5 active])
      {
        v17 = objc_autoreleasePoolPush();
        v18 = v5;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier();
          v23 = 138543362;
          v24 = v20;
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Looks like the timer is already running. Stopping it.", &v23, 0xCu);
        }

        objc_autoreleasePoolPop(v17);
        [v18 _stopTimer];
      }

      v21 = *(a1 + 32);
      if (v21)
      {
        v11 = *(v21 + 16);
        goto LABEL_19;
      }
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@TimerTrigger instance is gone. Doing Nothing.", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v15 = *(a1 + 32);
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (*(v15 + 16))(v15, v16);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldActivateOnLocalDevice
{
  v3 = [(HMDTrigger *)self home];
  v6.receiver = self;
  v6.super_class = HMDTimerTrigger;
  if ([(HMDTrigger *)&v6 shouldActivateOnLocalDevice])
  {
    v4 = [v3 isCurrentDeviceConfirmedPrimaryResident];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_disableTimerOffReactivationFailure
{
  [(HMDTimerTrigger *)self _stopTimer];

  [(HMDTrigger *)self setEnabled:0 message:0];
}

- (BOOL)_reactivateSignificantEventTrigger
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(HMDTimerTrigger *)self _nextSignificantEventFireDate];
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      v9 = [v3 hmf_localTimeDescription];
      v13 = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Starting timer based on significant event with %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [(HMDTimerTrigger *)v5 _startTimerWithSignificantEventDate:v3];
  }

  else
  {
    if (v7)
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@No valid next significant fire date, disabling the timer", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(HMDTimerTrigger *)v5 _disableTimerOffReactivationFailure];
  }

  v11 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)_reactivateFireDateTrigger
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(HMDTimerTrigger *)self _nextFireDate];
  if (v3)
  {
    [(HMDTimerTrigger *)self _startTimerWithFireDate:v3];
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@No valid next fire date, disabling the timer", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(HMDTimerTrigger *)v5 _disableTimerOffReactivationFailure];
  }

  v8 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)_reactivateTrigger
{
  v3 = [(HMDTimerTrigger *)self fireDate];

  if (v3)
  {

    return [(HMDTimerTrigger *)self _reactivateFireDateTrigger];
  }

  else
  {

    return [(HMDTimerTrigger *)self _reactivateSignificantEventTrigger];
  }
}

- (id)_serializeForAdd
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HMDTimerTrigger *)self fireDate];

  if (v4)
  {
    v5 = [(HMDTimerTrigger *)self fireDate];
    [v3 setObject:v5 forKeyedSubscript:*MEMORY[0x277CD26C8]];
  }

  v6 = [(HMDTimerTrigger *)self fireDateTimeZone];

  if (v6)
  {
    v7 = MEMORY[0x277CCAAB0];
    v8 = [(HMDTimerTrigger *)self fireDateTimeZone];
    v9 = [v7 archivedDataWithRootObject:v8 requiringSecureCoding:1 error:0];
    [v3 setObject:v9 forKeyedSubscript:*MEMORY[0x277CD2718]];
  }

  else
  {
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CD2700]];
  }

  v10 = [(HMDTimerTrigger *)self fireRepeatInterval];

  if (v10)
  {
    v11 = MEMORY[0x277CCAAB0];
    v12 = [(HMDTimerTrigger *)self fireRepeatInterval];
    v13 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:0];
    [v3 setObject:v13 forKeyedSubscript:*MEMORY[0x277CD26D0]];
  }

  else
  {
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CD26E0]];
  }

  v14 = [(HMDTimerTrigger *)self recurrences];

  if (v14)
  {
    v15 = MEMORY[0x277CCAAB0];
    v16 = [(HMDTimerTrigger *)self recurrences];
    v17 = [v15 archivedDataWithRootObject:v16 requiringSecureCoding:1 error:0];
    [v3 setObject:v17 forKeyedSubscript:*MEMORY[0x277CD26D8]];
  }

  else
  {
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CD26E8]];
  }

  v18 = [(HMDTimerTrigger *)self significantEvent];

  if (v18)
  {
    v19 = [(HMDTimerTrigger *)self significantEvent];
    [v3 setObject:v19 forKeyedSubscript:*MEMORY[0x277CD2708]];
  }

  else
  {
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CD26F0]];
  }

  v20 = [(HMDTimerTrigger *)self significantEventOffset];

  if (v20)
  {
    v21 = MEMORY[0x277CCAAB0];
    v22 = [(HMDTimerTrigger *)self significantEventOffset];
    v23 = [v21 archivedDataWithRootObject:v22 requiringSecureCoding:1 error:0];
    [v3 setObject:v23 forKeyedSubscript:*MEMORY[0x277CD2710]];
  }

  else
  {
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CD26F8]];
  }

  return v3;
}

- (id)backingStoreObjects:(int64_t)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [(HMDTimerTrigger *)self modelObjectWithChangeType:1];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)emptyModelObject
{
  v3 = [HMDTimerTriggerModel alloc];
  v4 = [(HMDTrigger *)self uuid];
  v5 = [(HMDTrigger *)self home];
  v6 = [v5 uuid];
  v7 = [(HMDBackingStoreModelObject *)v3 initWithObjectChangeType:2 uuid:v4 parentUUID:v6];

  return v7;
}

- (id)modelObjectWithChangeType:(unint64_t)a3
{
  v5 = [HMDTimerTriggerModel alloc];
  v6 = [(HMDTrigger *)self uuid];
  v7 = [(HMDTrigger *)self home];
  v8 = [v7 uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:a3 uuid:v6 parentUUID:v8];

  [(HMDTrigger *)self _fillBaseObjectChangeModel:v9];
  v10 = [(HMDTimerTrigger *)self fireDate];
  [(HMDTimerTriggerModel *)v9 setFireDate:v10];

  v11 = MEMORY[0x277CCAAB0];
  v12 = [(HMDTimerTrigger *)self fireDateTimeZone];
  v13 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:0];
  [(HMDTimerTriggerModel *)v9 setFireDateTimeZone:v13];

  v14 = [(HMDTimerTrigger *)self significantEvent];
  [(HMDTimerTriggerModel *)v9 setSignificantEvent:v14];

  v15 = MEMORY[0x277CCAAB0];
  v16 = [(HMDTimerTrigger *)self significantEventOffset];
  v17 = [v15 archivedDataWithRootObject:v16 requiringSecureCoding:1 error:0];
  [(HMDTimerTriggerModel *)v9 setSignificantEventOffset:v17];

  v18 = MEMORY[0x277CCAAB0];
  v19 = [(HMDTimerTrigger *)self fireRepeatInterval];
  v20 = [v18 archivedDataWithRootObject:v19 requiringSecureCoding:1 error:0];
  [(HMDTimerTriggerModel *)v9 setFireRepeatInterval:v20];

  v21 = MEMORY[0x277CCAAB0];
  v22 = [(HMDTimerTrigger *)self recurrences];
  v23 = [v21 archivedDataWithRootObject:v22 requiringSecureCoding:1 error:0];
  [(HMDTimerTriggerModel *)v9 setRecurrences:v23];

  return v9;
}

- (void)_handleTimerTriggerUpdate:(id)a3 message:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(HMDTimerTrigger *)self _handleUpdateTimerTriggerPropertiesModel:v7 message:v6];
  [(HMDTrigger *)self _handleTriggerUpdate:v7 message:v6];
}

- (void)_handleUpdateTimerTriggerPropertiesModel:(id)a3 message:(id)a4
{
  v33 = a3;
  v6 = a4;
  v7 = [v33 setProperties];
  v8 = [v7 containsObject:@"fireDate"];

  if (v8)
  {
    v9 = [v33 fireDate];
    [(HMDTimerTrigger *)self setFireDate:v9];
  }

  v10 = [v33 setProperties];
  v11 = [v10 containsObject:@"fireDateTimeZone"];

  if (v11)
  {
    v12 = [v33 fireDateTimeZone];
    v13 = [v12 decodeTimeZone];
    [(HMDTimerTrigger *)self setFireDateTimeZone:v13];

    v8 = 1;
  }

  v14 = [v33 setProperties];
  v15 = [v14 containsObject:@"fireRepeatInterval"];

  if (v15)
  {
    v16 = [v33 fireRepeatInterval];
    v17 = [v16 decodeDateComponents];
    [(HMDTimerTrigger *)self setFireRepeatInterval:v17];

    v8 = 1;
  }

  v18 = [v33 setProperties];
  v19 = [v18 containsObject:@"recurrences"];

  if (v19)
  {
    v20 = [v33 recurrences];
    v21 = [v20 decodeArrayOfDateComponents];
    [(HMDTimerTrigger *)self setRecurrences:v21];

    v8 = 1;
  }

  v22 = [v33 setProperties];
  v23 = [v22 containsObject:@"significantEvent"];

  if (v23)
  {
    v24 = [v33 significantEvent];
    [(HMDTimerTrigger *)self setSignificantEvent:v24];

    v8 = 1;
  }

  v25 = [v33 setProperties];
  v26 = [v25 containsObject:@"significantEventOffset"];

  if (v26)
  {
    v27 = [v33 significantEventOffset];
    v28 = [v27 decodeDateComponents];
    [(HMDTimerTrigger *)self setSignificantEventOffset:v28];
  }

  else if (!v8)
  {
    goto LABEL_15;
  }

  v29 = [v6 messagePayload];
  v30 = [v29 mutableCopy];

  v31 = HMDRemoteMessagePayloadKeysForTransportMetadata();
  [v30 removeObjectsForKeys:v31];

  v32 = [(HMDTimerTrigger *)self _serializeForAdd];
  [v30 addEntriesFromDictionary:v32];

  [v6 respondWithPayload:v30];
LABEL_15:
}

- (void)_handleUpdateTimerTriggerPropertiesRequest:(id)a3
{
  v14 = a3;
  v4 = [(HMDTimerTrigger *)self emptyModelObject];
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

  v7 = [(HMDTimerTrigger *)self fireDate];
  v8 = [HMDTimerTrigger validateTriggerModel:v6 message:v14 currentFireDate:v7];

  if (v8)
  {
    v9 = [(HMDTrigger *)self home];
    v10 = [v9 backingStore];
    v11 = [v14 name];
    v12 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v13 = [v10 transaction:v11 options:v12];

    [v13 add:v8 withMessage:v14];
    [v13 run];
  }
}

- (void)_registerForMessages
{
  v11[3] = *MEMORY[0x277D85DE8];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v10.receiver = self;
    v10.super_class = HMDTimerTrigger;
    [(HMDTrigger *)&v10 _registerForMessages];
    v3 = [(HMDTrigger *)self home];
    v4 = [v3 administratorHandler];
    v5 = [HMDXPCMessagePolicy policyWithEntitlements:1];
    v11[0] = v5;
    v6 = [HMDXPCBackgroundMessagePolicy policyWithEntitlementRequirement:1];
    v11[1] = v6;
    v7 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v11[2] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];
    [v4 registerForMessage:@"kScheduleTimerTriggerRequestKey" receiver:self policies:v8 selector:sel__handleUpdateTimerTriggerPropertiesRequest_];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_stopTimer
{
  v3 = +[HMDBackgroundTaskManager sharedManager];
  v4 = [(HMDTimerTrigger *)self timerID];
  [v3 cancelTaskWithIdentifier:v4 onObserver:self];

  [(HMDTimerTrigger *)self setCurrentFireDate:0];
}

- (void)_startTimer:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDTrigger *)self home];
  if (v5)
  {
    if ([(HMDTrigger *)self active]&& [(HMDTimerTrigger *)self shouldActivateOnLocalDevice])
    {
      v6 = +[HMDBackgroundTaskManager sharedManager];
      v7 = [(HMDTimerTrigger *)self timerID];
      v27 = 0;
      [v6 scheduleTaskWithIdentifier:v7 fireDate:v4 onObserver:self selector:sel_handleTimerFiredNotification_ error:&v27];
      v8 = v27;

      if (v8)
      {
        v9 = objc_autoreleasePoolPush();
        v10 = self;
        v11 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = HMFGetLogIdentifier();
          v13 = [(HMDTimerTrigger *)v10 timerID];
          *buf = 138543874;
          v29 = v12;
          v30 = 2112;
          v31 = v13;
          v32 = 2112;
          v33 = v8;
          _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to start timer %@ with error %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v9);
        goto LABEL_15;
      }
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        v18 = [(HMDTrigger *)v15 name];
        *buf = 138543618;
        v29 = v17;
        v30 = 2112;
        v31 = v18;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Trigger %@ not activated on local device - skipping scheduling the trigger", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
    }

    [(HMDTimerTrigger *)self setCurrentFireDate:v4];
    goto LABEL_15;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = HMFGetLogIdentifier();
    v23 = [(HMDTrigger *)v20 name];
    v24 = [(HMDTrigger *)v20 uuid];
    v25 = [v24 UUIDString];
    *buf = 138543874;
    v29 = v22;
    v30 = 2112;
    v31 = v23;
    v32 = 2112;
    v33 = v25;
    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@%@/%@: Home reference is nil", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v19);
LABEL_15:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_startTimerWithFireDate:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 timeIntervalSinceNow];
  if (v5 <= 0.0)
  {
    v7 = [(HMDTimerTrigger *)self getCalendar];
    v8 = [(HMDTimerTrigger *)self getFireInterval];
    v6 = [v7 dateByAddingComponents:v8 toDate:v4 options:0];

    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v6 hmf_localTimeDescription];
      v20 = 138543618;
      v21 = v12;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Revised Next Fire Date %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v6 = v4;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = [v6 hmf_localTimeDescription];
    v20 = 138543618;
    v21 = v17;
    v22 = 2112;
    v23 = v18;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Next fire date %@", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  [(HMDTimerTrigger *)v15 _startTimer:v6];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v12 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Invalidating the trigger", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = +[HMDBackgroundTaskManager sharedManager];
  v8 = [(HMDTimerTrigger *)v4 timerID];
  [v7 cancelTaskWithIdentifier:v8 onObserver:v4];

  v10.receiver = v4;
  v10.super_class = HMDTimerTrigger;
  [(HMDTrigger *)&v10 invalidate];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)timerTriggered
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v12 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Timer Triggered", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  objc_initWeak(buf, v4);
  v7 = [(HMDTrigger *)v4 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__HMDTimerTrigger_timerTriggered__block_invoke;
  block[3] = &unk_278686B80;
  objc_copyWeak(&v10, buf);
  dispatch_async(v7, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
  v8 = *MEMORY[0x277D85DE8];
}

void __33__HMDTimerTrigger_timerTriggered__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _timerTriggered];
}

- (void)dealloc
{
  v3 = [(HMDTrigger *)self msgDispatcher];
  [v3 deregisterReceiver:self];

  v4 = [(HMDTrigger *)self home];
  v5 = [v4 administratorHandler];
  [v5 deregisterReceiver:self];

  v6.receiver = self;
  v6.super_class = HMDTimerTrigger;
  [(HMDTrigger *)&v6 dealloc];
}

- (void)completeConfiguration
{
  v3 = [(HMDTrigger *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__HMDTimerTrigger_completeConfiguration__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)configure:(id)a3 messageDispatcher:(id)a4 queue:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v29.receiver = self;
  v29.super_class = HMDTimerTrigger;
  [(HMDTrigger *)&v29 configure:v8 messageDispatcher:v9 queue:v10];
  v11 = [(HMDTimerTrigger *)self timerID];

  if (!v11)
  {
    v12 = [(HMDTrigger *)self uuid];
    v13 = [v12 UUIDString];
    v14 = [@"com.apple.homed.timertriggers." stringByAppendingString:v13];
    [(HMDTimerTrigger *)self setTimerID:v14];

    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [(HMDTimerTrigger *)v16 timerID];
      *buf = 138543618;
      v31 = v18;
      v32 = 2112;
      v33 = v19;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Null timerID -- initializing with %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v20 = objc_autoreleasePoolPush();
  v21 = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    v24 = [(HMDTimerTrigger *)v21 fireDate];
    v25 = [(HMDTimerTrigger *)v21 fireDateTimeZone];
    v26 = [(HMDTimerTrigger *)v21 timerID];
    v27 = [v26 cStringUsingEncoding:4];
    *buf = 138544130;
    v31 = v23;
    v32 = 2112;
    v33 = v24;
    v34 = 2112;
    v35 = v25;
    v36 = 2080;
    v37 = v27;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Configuring with firedate %@ and timezone %@ for %s", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v20);
  [(HMDTimerTrigger *)v21 _activateWithCompletion:0];

  v28 = *MEMORY[0x277D85DE8];
}

- (void)setCurrentFireDate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  currentFireDate = self->_currentFireDate;
  self->_currentFireDate = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDate)currentFireDate
{
  os_unfair_lock_lock_with_options();
  v3 = self->_currentFireDate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)a3
{
  v24.receiver = self;
  v24.super_class = HMDTimerTrigger;
  v4 = [(HMDTrigger *)&v24 dumpStateWithPrivacyLevel:a3];
  v5 = [v4 mutableCopy];

  v6 = [(HMDTimerTrigger *)self fireRepeatInterval];

  if (v6)
  {
    v7 = [MEMORY[0x277CBEA80] currentCalendar];
    v8 = [(HMDTimerTrigger *)self fireRepeatInterval];
    v9 = [(HMDTimerTrigger *)self fireDate];
    v10 = [v7 dateByAddingComponents:v8 toDate:v9 options:0];

    v11 = [(HMDTimerTrigger *)self fireDate];
    [v10 timeIntervalSinceDate:v11];
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = MEMORY[0x277CCACA8];
  v15 = [(HMDTimerTrigger *)self fireDate];
  v16 = [v15 hmf_localTimeDescription];
  v17 = [(HMDTimerTrigger *)self fireDateTimeZone];
  v18 = [(HMDTimerTrigger *)self significantEvent];
  v19 = [(HMDTimerTrigger *)self significantEventOffset];
  v20 = [v19 second];
  v21 = [(HMDTimerTrigger *)self recurrences];
  v22 = [v14 stringWithFormat:@"initial fire date: %@, time zone: %@, sig-event: %@, sig-event-offset: %tu, repeat interval: %f seconds, recur-instances: %@", v16, v17, v18, v20, v13, v21];

  [v5 setObject:v22 forKeyedSubscript:*MEMORY[0x277D0F180]];

  return v5;
}

- (id)description
{
  v17.receiver = self;
  v17.super_class = HMDTimerTrigger;
  v15 = MEMORY[0x277CCAB68];
  v3 = [(HMFObject *)&v17 description];
  v4 = [(HMDTimerTrigger *)self fireDate];
  v5 = [v4 hmf_localTimeDescription];
  v6 = [(HMDTimerTrigger *)self fireDateTimeZone];
  v7 = [(HMDTimerTrigger *)self significantEvent];
  v8 = [(HMDTimerTrigger *)self significantEventOffset];
  v9 = [v8 second];
  v10 = [(HMDTimerTrigger *)self fireRepeatInterval];
  v11 = [(HMDTimerTrigger *)self recurrences];
  v12 = [v15 stringWithFormat:@"<Timer-Trigger: %@, fireDate = %@, fireDateTimeZone = %@, significantEvent = %@, significantEventOffset = %tu, repeatInterval: %@, recurrences = %@", v3, v5, v6, v7, v9, v10, v11];

  v16.receiver = self;
  v16.super_class = HMDTimerTrigger;
  v13 = [(HMFObject *)&v16 description];
  [v12 appendString:v13];

  return v12;
}

- (HMDTimerTrigger)initWithModel:(id)a3 home:(id)a4
{
  v6 = a3;
  v25.receiver = self;
  v25.super_class = HMDTimerTrigger;
  v7 = [(HMDTrigger *)&v25 initWithModel:v6 home:a4];
  if (v7)
  {
    v8 = [v6 fireDate];
    fireDate = v7->_fireDate;
    v7->_fireDate = v8;

    v10 = [v6 fireDateTimeZone];
    v11 = [v10 decodeTimeZone];
    fireDateTimeZone = v7->_fireDateTimeZone;
    v7->_fireDateTimeZone = v11;

    v13 = [v6 fireRepeatInterval];
    v14 = [v13 decodeDateComponents];
    fireRepeatInterval = v7->_fireRepeatInterval;
    v7->_fireRepeatInterval = v14;

    v16 = [v6 recurrences];
    v17 = [v16 decodeArrayOfDateComponents];
    recurrences = v7->_recurrences;
    v7->_recurrences = v17;

    v19 = [v6 significantEvent];
    significantEvent = v7->_significantEvent;
    v7->_significantEvent = v19;

    v21 = [v6 significantEventOffset];
    v22 = [v21 decodeDateComponents];
    significantEventOffset = v7->_significantEventOffset;
    v7->_significantEventOffset = v22;
  }

  return v7;
}

- (HMDTimerTrigger)initWithName:(id)a3 uuid:(id)a4
{
  v11.receiver = self;
  v11.super_class = HMDTimerTrigger;
  v4 = [(HMDTrigger *)&v11 initWithName:a3 uuid:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(HMDTrigger *)v4 uuid];
    v7 = [v6 UUIDString];
    v8 = [@"com.apple.homed.timertriggers." stringByAppendingString:v7];
    timerID = v5->_timerID;
    v5->_timerID = v8;

    v5->_lock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

+ (id)getCalendar:(id)a3
{
  v3 = a3;
  v4 = [v3 calendar];

  if (v4)
  {
    [v3 calendar];
  }

  else
  {
    [MEMORY[0x277CBEA80] currentCalendar];
  }
  v5 = ;

  return v5;
}

+ (id)validateWholeMinuteDate:(id)a3 onCalendar:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v10 = 0;
    goto LABEL_11;
  }

  if (!v6)
  {
    v7 = [MEMORY[0x277CBEA80] currentCalendar];
  }

  v8 = [v7 components:3178750 fromDate:v5];
  if ([v8 second])
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:70 userInfo:0];
  }

  else
  {
    [v5 timeIntervalSinceNow];
    if (v11 >= 0.0)
    {
      v10 = 0;
      goto LABEL_10;
    }

    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:28];
  }

  v10 = v9;
LABEL_10:

LABEL_11:

  return v10;
}

+ (id)validateTriggerModel:(id)a3 message:(id)a4 currentFireDate:(id)a5
{
  v64 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 dateForKey:*MEMORY[0x277CD26C8]];
  if (!v11)
  {
    v12 = v10;
    goto LABEL_9;
  }

  v12 = v11;
  v13 = [HMDTimerTrigger validateWholeMinuteDate:v11 onCalendar:0];
  if (!v13)
  {
    [v8 setFireDate:v12];
    [v8 setSignificantEvent:0];
    [v8 setSignificantEventOffset:0];
LABEL_9:
    v21 = [v9 timeZoneForKey:*MEMORY[0x277CD2718]];
    if (v21)
    {
      v23 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v21 requiringSecureCoding:1 error:0];
      [v8 setFireDateTimeZone:v23];
    }

    else if ([v9 BOOLForKey:*MEMORY[0x277CD2700]])
    {
      [v8 setFireDateTimeZone:0];
    }

    v24 = [v9 dateComponentsForKey:*MEMORY[0x277CD26D0]];
    v61 = v10;
    if (v24)
    {
      v25 = [HMDTimerTrigger getCalendar:v24];
      v14 = [HMDTimerTrigger validateRecurrence:v24 calendar:v25 fireDate:v12];

      if (v14)
      {
        v26 = objc_autoreleasePoolPush();
        v27 = a1;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = HMFGetLogIdentifier();
          *buf = 138543362;
          v63 = v29;
          _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Not a valid recurrence", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v26);
        v30 = [v9 responseHandler];

        if (!v30)
        {
          v22 = 0;
LABEL_59:

          v10 = v61;
          goto LABEL_60;
        }

        v31 = [v9 responseHandler];
        (v31)[2](v31, v14, 0);
        v22 = 0;
LABEL_58:

        goto LABEL_59;
      }

      v32 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v24 requiringSecureCoding:1 error:0];
      [v8 setFireRepeatInterval:v32];
    }

    else if ([v9 BOOLForKey:*MEMORY[0x277CD26E0]])
    {
      [v8 setFireRepeatInterval:0];
    }

    v33 = *MEMORY[0x277CD26D8];
    v34 = [v9 numberForKey:*MEMORY[0x277CD26D8]];
    v60 = v34;
    if (v34)
    {
      [v34 unsignedIntegerValue];
      HMDaysOfTheWeekToDateComponents();
    }

    else
    {
      [v9 arrayOfDateComponentsForKey:v33];
    }
    v31 = ;
    if (v31)
    {
      v35 = [HMDTimerTrigger validateRecurrences:v31];
      if (v35)
      {
        v14 = v35;
        v36 = objc_autoreleasePoolPush();
        v37 = a1;
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v39 = v57 = v36;
          *buf = 138543362;
          v63 = v39;
          _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Invalid recurrence instances", buf, 0xCu);

          v36 = v57;
        }

        objc_autoreleasePoolPop(v36);
        v40 = [v9 responseHandler];

        if (!v40)
        {
          v22 = 0;
LABEL_57:

          goto LABEL_58;
        }

        v41 = [v9 responseHandler];
        (v41)[2](v41, v14, 0);
        v22 = 0;
LABEL_56:

        goto LABEL_57;
      }

      v42 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v31 requiringSecureCoding:1 error:0];
      [v8 setRecurrences:v42];
    }

    else if ([v9 BOOLForKey:*MEMORY[0x277CD26E8]])
    {
      [v8 setRecurrences:0];
    }

    v41 = [v9 stringForKey:*MEMORY[0x277CD2708]];
    if (v41)
    {
      if ((HMIsValidSignificantEvent() & 1) == 0)
      {
        v47 = objc_autoreleasePoolPush();
        v48 = a1;
        v49 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v50 = v59 = v47;
          *buf = 138543362;
          v63 = v50;
          _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_ERROR, "%{public}@Significant event is not valid", buf, 0xCu);

          v47 = v59;
        }

        objc_autoreleasePoolPop(v47);
        v43 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
        v14 = [v9 responseHandler];

        if (v14)
        {
          v51 = [v9 responseHandler];
          (v51)[2](v51, v43, 0);

          v14 = 0;
        }

LABEL_49:
        v22 = 0;
LABEL_55:

        goto LABEL_56;
      }

      [v8 setSignificantEvent:v41];
      [v8 setFireDate:0];
      [v8 setFireDateTimeZone:0];
      [v8 setFireRepeatInterval:0];
    }

    v43 = [v9 dateComponentsForKey:*MEMORY[0x277CD2710]];
    if (v43)
    {
      v44 = [HMDTimerTrigger validateSignificantOffset:v43];
      if (v44)
      {
        v14 = v44;
        context = objc_autoreleasePoolPush();
        v58 = a1;
        v45 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v55 = HMFGetLogIdentifier();
          *buf = 138543362;
          v63 = v55;
          _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_ERROR, "%{public}@Invalid significant event offset", buf, 0xCu);
        }

        objc_autoreleasePoolPop(context);
        v22 = [v9 responseHandler];

        if (!v22)
        {
          goto LABEL_55;
        }

        v46 = [v9 responseHandler];
        (v46)[2](v46, v14, 0);

        goto LABEL_49;
      }

      v52 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v43 requiringSecureCoding:1 error:0];
      [v8 setSignificantEventOffset:v52];
    }

    else if ([v9 BOOLForKey:*MEMORY[0x277CD26F8]])
    {
      [v8 setSignificantEventOffset:0];
    }

    v22 = v8;
    v14 = 0;
    goto LABEL_55;
  }

  v14 = v13;
  v15 = objc_autoreleasePoolPush();
  v16 = a1;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    HMFGetLogIdentifier();
    v19 = v18 = v10;
    *buf = 138543362;
    v63 = v19;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Fire date is not valid", buf, 0xCu);

    v10 = v18;
  }

  objc_autoreleasePoolPop(v15);
  v20 = [v9 responseHandler];

  if (!v20)
  {
    v22 = 0;
    goto LABEL_61;
  }

  v21 = [v9 responseHandler];
  (v21)[2](v21, v14, 0);
  v22 = 0;
LABEL_60:

LABEL_61:
  v53 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)messageBindingForDispatcher:(id)a3 message:(id)a4 receiver:(id)a5
{
  v22[4] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v22[0] = v11;
  v12 = [HMDXPCBackgroundMessagePolicy policyWithEntitlementRequirement:1];
  v22[1] = v12;
  v13 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v22[2] = v13;
  v14 = objc_opt_new();
  v22[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];

  v16 = [v10 name];
  LODWORD(v12) = HMFEqualObjects();

  if (v12)
  {
    v17 = [v10 name];

    v18 = HMFCreateMessageBinding();
    v10 = v17;
  }

  else
  {
    v21.receiver = a1;
    v21.super_class = &OBJC_METACLASS___HMDTimerTrigger;
    v18 = objc_msgSendSuper2(&v21, sel_messageBindingForDispatcher_message_receiver_, v8, v10, v9);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)validateRecurrences:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [v4 firstObject];
    v6 = [v5 calendar];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v42;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v42 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v41 + 1) + 8 * i) calendar];
          v13 = HMFEqualObjects();

          if ((v13 & 1) == 0)
          {
            v22 = objc_autoreleasePoolPush();
            v23 = a1;
            v24 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              v25 = HMFGetLogIdentifier();
              *buf = 138543362;
              v46 = v25;
              _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Calendars are not matching in the recurrence instances", buf, 0xCu);
            }

            v26 = v22;
LABEL_23:
            objc_autoreleasePoolPop(v26);
            v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
            goto LABEL_24;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v41 objects:v50 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v14 = v7;
    v15 = [v14 countByEnumeratingWithState:&v37 objects:v49 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v38;
      while (2)
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v38 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v37 + 1) + 8 * j);
          if (![v19 weekday])
          {
            v29 = objc_autoreleasePoolPush();
            v30 = a1;
            v31 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              v32 = HMFGetLogIdentifier();
              *buf = 138543618;
              v46 = v32;
              v47 = 2112;
              v48 = v19;
              _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Invalid values for week day: %@", buf, 0x16u);
            }

            v26 = v29;
            goto LABEL_23;
          }

          v20 = objc_alloc_init(MEMORY[0x277CBEAB8]);
          [v20 setWeekday:{objc_msgSend(v19, "weekday")}];
          [v20 setCalendar:v6];
          if (([v19 isEqual:v20] & 1) == 0)
          {
            v33 = objc_autoreleasePoolPush();
            v34 = a1;
            v35 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              v36 = HMFGetLogIdentifier();
              *buf = 138543618;
              v46 = v36;
              v47 = 2112;
              v48 = v19;
              _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Miscellaneous fields have been set recurrence instances: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v33);
            v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];

            goto LABEL_24;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v37 objects:v49 count:16];
        v21 = 0;
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v21 = 0;
    }

LABEL_24:
  }

  else
  {
    v21 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)validateRecurrence:(id)a3 calendar:(id)a4 fireDate:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7)
  {
    if (([v7 second] == 0x7FFFFFFFFFFFFFFFLL || !objc_msgSend(v7, "second")) && (objc_msgSend(v7, "nanosecond") == 0x7FFFFFFFFFFFFFFFLL || !objc_msgSend(v7, "nanosecond")))
    {
      v11 = [v8 dateByAddingComponents:v7 toDate:v9 options:0];
      [v11 timeIntervalSinceDate:v9];
      v10 = 0;
      if (v12 < *&minimumTimerRecurrence)
      {
        v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:42 userInfo:0];
      }
    }

    else
    {
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:69 userInfo:0];
    }
  }

  else
  {
    v10 = 0;
  }

  v13 = v10;

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_42022 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_42022, &__block_literal_global_42023);
  }

  v3 = logCategory__hmf_once_v1_42024;

  return v3;
}

void __30__HMDTimerTrigger_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_42024;
  logCategory__hmf_once_v1_42024 = v1;
}

@end