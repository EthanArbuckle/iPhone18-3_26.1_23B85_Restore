@interface HMDTimerTrigger
+ (id)getCalendar:(id)calendar;
+ (id)logCategory;
+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver;
+ (id)validateRecurrence:(id)recurrence calendar:(id)calendar fireDate:(id)date;
+ (id)validateRecurrences:(id)recurrences;
+ (id)validateTriggerModel:(id)model message:(id)message currentFireDate:(id)date;
+ (id)validateWholeMinuteDate:(id)date onCalendar:(id)calendar;
- (BOOL)_reactivateFireDateTrigger;
- (BOOL)_reactivateSignificantEventTrigger;
- (BOOL)_reactivateTrigger;
- (BOOL)_shouldExecuteActionSet;
- (BOOL)shouldActivateOnLocalDevice;
- (HMDTimerTrigger)initWithCoder:(id)coder;
- (HMDTimerTrigger)initWithModel:(id)model home:(id)home;
- (HMDTimerTrigger)initWithName:(id)name uuid:(id)uuid;
- (NSDate)currentFireDate;
- (id)_nextFireDate;
- (id)_nextSignificantEventFireDate;
- (id)_serializeForAdd;
- (id)backingStoreObjects:(int64_t)objects;
- (id)description;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (id)emptyModelObject;
- (id)getCalendar;
- (id)getFireInterval;
- (id)modelObjectWithChangeType:(unint64_t)type;
- (void)_activateWithCompletion:(id)completion;
- (void)_closestDatesForStartDate:(id)date earliestDate:(id)earliestDate timeZone:(id)zone deliveryRepeatInterval:(id)interval returnDateBefore:(id *)before returnDateAfter:(id *)after;
- (void)_disableTimerOffReactivationFailure;
- (void)_handleTimerTriggerUpdate:(id)update message:(id)message;
- (void)_handleUpdateTimerTriggerPropertiesModel:(id)model message:(id)message;
- (void)_handleUpdateTimerTriggerPropertiesRequest:(id)request;
- (void)_reactiveTriggerAfterDelay;
- (void)_registerForMessages;
- (void)_startTimer:(id)timer;
- (void)_startTimerWithFireDate:(id)date;
- (void)_stopTimer;
- (void)_timerTriggered;
- (void)_transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
- (void)completeConfiguration;
- (void)configure:(id)configure messageDispatcher:(id)dispatcher queue:(id)queue;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)handleTimerFiredNotification:(id)notification;
- (void)invalidate;
- (void)setCurrentFireDate:(id)date;
- (void)timerTriggered;
@end

@implementation HMDTimerTrigger

- (void)handleTimerFiredNotification:(id)notification
{
  v19 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"HMD.BGTM.NK"];

  timerID = [(HMDTimerTrigger *)self timerID];
  v8 = [timerID isEqualToString:v6];

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      timerID2 = [(HMDTimerTrigger *)selfCopy timerID];
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = timerID2;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Timer Trigger fired : %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDTimerTrigger *)selfCopy timerTriggered];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  v21 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  valuesCopy = values;
  messageCopy = message;
  v11 = valuesCopy;
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
    [(HMDTimerTrigger *)self _handleTimerTriggerUpdate:v13 message:messageCopy];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Received unknown model object", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = HMDTimerTrigger;
  coderCopy = coder;
  [(HMDTrigger *)&v12 encodeWithCoder:coderCopy];
  v5 = [(HMDTimerTrigger *)self fireDate:v12.receiver];
  [coderCopy encodeObject:v5 forKey:@"timerTriggerInitialFireDate"];

  fireDateTimeZone = [(HMDTimerTrigger *)self fireDateTimeZone];
  [coderCopy encodeObject:fireDateTimeZone forKey:@"timerTriggerTimeZone"];

  fireRepeatInterval = [(HMDTimerTrigger *)self fireRepeatInterval];
  [coderCopy encodeObject:fireRepeatInterval forKey:@"timerTriggerRepeatInterval"];

  recurrences = [(HMDTimerTrigger *)self recurrences];
  [coderCopy encodeObject:recurrences forKey:@"HM.timerTriggerRecurrences"];

  timerID = [(HMDTimerTrigger *)self timerID];
  [coderCopy encodeObject:timerID forKey:@"timerTriggerTimerIDCodingKey"];

  significantEvent = [(HMDTimerTrigger *)self significantEvent];
  [coderCopy encodeObject:significantEvent forKey:@"HM.timerTriggerSignificantEvent"];

  significantEventOffset = [(HMDTimerTrigger *)self significantEventOffset];
  [coderCopy encodeObject:significantEventOffset forKey:@"HM.timerTriggerSignificantEventOffset"];
}

- (HMDTimerTrigger)initWithCoder:(id)coder
{
  v27[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = HMDTimerTrigger;
  v5 = [(HMDTrigger *)&v26 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timerTriggerInitialFireDate"];
    fireDate = v5->_fireDate;
    v5->_fireDate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timerTriggerTimeZone"];
    fireDateTimeZone = v5->_fireDateTimeZone;
    v5->_fireDateTimeZone = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timerTriggerRepeatInterval"];
    fireRepeatInterval = v5->_fireRepeatInterval;
    v5->_fireRepeatInterval = v10;

    v12 = MEMORY[0x277CBEB98];
    v27[0] = objc_opt_class();
    v27[1] = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    v14 = [v12 setWithArray:v13];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"HM.timerTriggerRecurrences"];
    recurrences = v5->_recurrences;
    v5->_recurrences = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timerTriggerTimerIDCodingKey"];
    timerID = v5->_timerID;
    v5->_timerID = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.timerTriggerSignificantEvent"];
    significantEvent = v5->_significantEvent;
    v5->_significantEvent = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.timerTriggerSignificantEventOffset"];
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
  fireDate = [(HMDTimerTrigger *)self fireDate];

  if (!fireDate)
  {
    goto LABEL_6;
  }

  fireRepeatInterval = [(HMDTimerTrigger *)self fireRepeatInterval];

  if (fireRepeatInterval)
  {
    fireRepeatInterval2 = [(HMDTimerTrigger *)self fireRepeatInterval];
    goto LABEL_7;
  }

  recurrences = [(HMDTimerTrigger *)self recurrences];
  v7 = [recurrences count];

  if (v7)
  {
    fireRepeatInterval2 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [fireRepeatInterval2 setDay:1];
  }

  else
  {
LABEL_6:
    fireRepeatInterval2 = 0;
  }

LABEL_7:

  return fireRepeatInterval2;
}

- (id)getCalendar
{
  fireRepeatInterval = [(HMDTimerTrigger *)self fireRepeatInterval];
  v3 = [HMDTimerTrigger getCalendar:fireRepeatInterval];

  return v3;
}

- (void)_closestDatesForStartDate:(id)date earliestDate:(id)earliestDate timeZone:(id)zone deliveryRepeatInterval:(id)interval returnDateBefore:(id *)before returnDateAfter:(id *)after
{
  v95 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  earliestDateCopy = earliestDate;
  zoneCopy = zone;
  intervalCopy = interval;
  getCalendar = [(HMDTimerTrigger *)self getCalendar];
  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  date = [MEMORY[0x277CBEAA8] date];
  v19 = [dateCopy compare:date];

  if (v19 != 1)
  {
    if (zoneCopy)
    {
      secondsFromGMT = [localTimeZone secondsFromGMT];
      secondsFromGMT2 = [zoneCopy secondsFromGMT];
      v34 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:dateCopy sinceDate:(secondsFromGMT - secondsFromGMT2)];
    }

    else
    {
      v34 = dateCopy;
    }

    v30 = v34;
    if (intervalCopy)
    {
      selfCopy = self;
      v76 = dateCopy;
      v35 = 0;
      v36 = 1;
      do
      {
        v37 = v35;
        v38 = v36;
        v35 = _NCSchedulerDateWithMultiple(v30, getCalendar, intervalCopy, v36);

        v36 *= 2;
      }

      while ([v35 compare:earliestDateCopy] == -1);
      v82 = zoneCopy;
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
          v29 = _NCSchedulerDateWithMultiple(v30, getCalendar, intervalCopy, v40);

          if ([v29 compare:earliestDateCopy] == -1)
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

      v48 = [v29 compare:earliestDateCopy];
      if (v48 == 1)
      {
        self = selfCopy;
        if (after)
        {
          v62 = v29;
          *after = v29;
          v79 = objc_autoreleasePoolPush();
          v63 = selfCopy;
          v64 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
          {
            v65 = HMFGetLogIdentifier();
            v73 = *after;
            contexta = v65;
            date2 = [MEMORY[0x277CBEAA8] date];
            *buf = 138543874;
            v90 = v65;
            v91 = 2112;
            v92 = v73;
            self = selfCopy;
            v93 = 2112;
            v94 = date2;
            _os_log_impl(&dword_2531F8000, v64, OS_LOG_TYPE_INFO, "%{public}@(d) Timer fires next at %@; current time (GMT): %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v79);
        }

        if (before)
        {
          *before = _NCSchedulerDateWithMultiple(v30, getCalendar, intervalCopy, v41 - 1);
          v80 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v23 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v68 = HMFGetLogIdentifier();
            v69 = *before;
            date3 = [MEMORY[0x277CBEAA8] date];
            *buf = 138543874;
            v90 = v68;
            v91 = 2112;
            v92 = v69;
            self = selfCopy;
            v93 = 2112;
            v94 = date3;
            _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@(e) Timer fires next at %@; current time (GMT): %@", buf, 0x20u);
          }

          dateCopy = v76;
          v31 = v80;
          goto LABEL_47;
        }

        dateCopy = v76;
      }

      else
      {
        self = selfCopy;
        if (!v48)
        {
          v57 = v29;
          *after = v29;
          v31 = objc_autoreleasePoolPush();
          v58 = selfCopy;
          v87 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
          {
            v59 = HMFGetLogIdentifier();
            v60 = *after;
            date4 = [MEMORY[0x277CBEAA8] date];
            *buf = 138543874;
            v90 = v59;
            v91 = 2112;
            v92 = v60;
            self = selfCopy;
            v23 = v87;
            v93 = 2112;
            v94 = date4;
            _os_log_impl(&dword_2531F8000, v87, OS_LOG_TYPE_INFO, "%{public}@(f) Timer fires next at %@; current time (GMT): %@", buf, 0x20u);

            dateCopy = v76;
            goto LABEL_47;
          }

          dateCopy = v76;
LABEL_51:
          zoneCopy = v82;
          v23 = v87;
          goto LABEL_52;
        }

        dateCopy = v76;
        if (v48 == -1)
        {
          if (before)
          {
            v49 = v29;
            *before = v29;
            context = objc_autoreleasePoolPush();
            v78 = selfCopy;
            v50 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
            {
              v51 = HMFGetLogIdentifier();
              v72 = *before;
              date5 = [MEMORY[0x277CBEAA8] date];
              *buf = 138543874;
              v52 = v51;
              v90 = v51;
              v91 = 2112;
              v92 = v72;
              self = selfCopy;
              v93 = 2112;
              v94 = date5;
              _os_log_impl(&dword_2531F8000, v50, OS_LOG_TYPE_INFO, "%{public}@(b) Timer fires next at %@; current time (GMT): %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(context);
            dateCopy = v76;
          }

          if (after)
          {
            *after = _NCSchedulerDateWithMultiple(v30, getCalendar, intervalCopy, v41 + 1);
            v31 = objc_autoreleasePoolPush();
            selfCopy3 = self;
            v87 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
            {
              v54 = HMFGetLogIdentifier();
              v55 = *after;
              date6 = [MEMORY[0x277CBEAA8] date];
              *buf = 138543874;
              v90 = v54;
              v91 = 2112;
              v92 = v55;
              self = selfCopy;
              v23 = v87;
              v93 = 2112;
              v94 = date6;
              _os_log_impl(&dword_2531F8000, v87, OS_LOG_TYPE_INFO, "%{public}@(c) Timer fires next at %@; current time (GMT): %@", buf, 0x20u);

              dateCopy = v76;
LABEL_47:
              zoneCopy = v82;
LABEL_52:

              objc_autoreleasePoolPop(v31);
              goto LABEL_53;
            }

            goto LABEL_51;
          }
        }
      }

      zoneCopy = v82;
      goto LABEL_53;
    }

    if ([v34 compare:earliestDateCopy] == -1)
    {
      afterCopy = before;
      if (!before)
      {
        goto LABEL_23;
      }
    }

    else
    {
      afterCopy = after;
      if (!after)
      {
LABEL_23:
        v31 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v45 = HMFGetLogIdentifier();
          [MEMORY[0x277CBEAA8] date];
          selfCopy5 = self;
          v47 = v46 = zoneCopy;
          *buf = 138543874;
          v90 = v45;
          v91 = 2112;
          v92 = v30;
          v93 = 2112;
          v94 = v47;
          _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@(g) Timer fires next at %@; current time (GMT): %@", buf, 0x20u);

          zoneCopy = v46;
          self = selfCopy5;
        }

        v29 = 0;
        goto LABEL_52;
      }
    }

    v43 = v30;
    *afterCopy = v30;
    goto LABEL_23;
  }

  if (after)
  {
    afterCopy2 = after;
    v21 = dateCopy;
    *after = dateCopy;
    v77 = objc_autoreleasePoolPush();
    selfCopy6 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v25 = v23;
      selfCopy7 = self;
      v27 = *afterCopy2;
      [MEMORY[0x277CBEAA8] date];
      v28 = v81 = zoneCopy;
      *buf = 138543874;
      v90 = v24;
      v91 = 2112;
      v92 = v27;
      self = selfCopy7;
      v23 = v25;
      v93 = 2112;
      v94 = v28;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@(a) Timer fires next at %@; current time (GMT): %@", buf, 0x20u);

      zoneCopy = v81;
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
  workQueue = [(HMDTrigger *)self workQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__HMDTimerTrigger__reactiveTriggerAfterDelay__block_invoke;
  v5[3] = &unk_279732FD8;
  objc_copyWeak(&v6, &location);
  dispatch_after(v3, workQueue, v5);

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
  _shouldExecuteActionSet = [(HMDTimerTrigger *)self _shouldExecuteActionSet];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (_shouldExecuteActionSet)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v13 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Going to execute the Action set.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __34__HMDTimerTrigger__timerTriggered__block_invoke;
    v11[3] = &unk_279734E00;
    v11[4] = selfCopy;
    [(HMDTrigger *)selfCopy _executeActionSetsWithCompletionHandler:v11];
    [(HMDTrigger *)selfCopy triggerFired];
  }

  else
  {
    if (v7)
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v13 = v9;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Should execute action set returned NO, going ahead to reactivate trigger", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  [(HMDTimerTrigger *)selfCopy _reactiveTriggerAfterDelay];
  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldExecuteActionSet
{
  v41 = *MEMORY[0x277D85DE8];
  recurrences = [(HMDTimerTrigger *)self recurrences];
  v4 = [recurrences count];

  if (v4)
  {
    v5 = [MEMORY[0x277CBEAA8] now];
    recurrences2 = [(HMDTimerTrigger *)self recurrences];
    firstObject = [recurrences2 firstObject];
    calendar = [firstObject calendar];

    if (!calendar)
    {
      calendar = [MEMORY[0x277CBEA80] currentCalendar];
    }

    v9 = [calendar components:512 fromDate:v5];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = [(HMDTimerTrigger *)self recurrences];
    v10 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
    if (v10)
    {
      v11 = v10;
      v27 = calendar;
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
          selfCopy = self;
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
            _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Comparing date components iter: %@, now: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v15);
          weekday = [v9 weekday];
          if (weekday == [v14 weekday])
          {
            v21 = objc_autoreleasePoolPush();
            v22 = selfCopy;
            v23 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              v24 = HMFGetLogIdentifier();
              *buf = 138543362;
              v35 = v24;
              _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Current week day matches with a recurring instance, allowing execution of action set", buf, 0xCu);
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
      calendar = v27;
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
  home = [(HMDTrigger *)self home];
  homeLocationHandler = [home homeLocationHandler];
  location = [homeLocationHandler location];
  significantEvent = [(HMDTimerTrigger *)self significantEvent];
  significantEventOffset = [(HMDTimerTrigger *)self significantEventOffset];
  v8 = [HMDSignificantTimeEvent nextTimerDateFromHomeLocation:location signifiantEvent:significantEvent offset:significantEventOffset loggingObject:self];

  return v8;
}

- (id)_nextFireDate
{
  v19 = *MEMORY[0x277D85DE8];
  fireDate = [(HMDTimerTrigger *)self fireDate];
  v4 = [MEMORY[0x277CBEAA8] now];
  fireDateTimeZone = [(HMDTimerTrigger *)self fireDateTimeZone];
  getFireInterval = [(HMDTimerTrigger *)self getFireInterval];
  v14 = 0;
  [(HMDTimerTrigger *)self _closestDatesForStartDate:fireDate earliestDate:v4 timeZone:fireDateTimeZone deliveryRepeatInterval:getFireInterval returnDateBefore:0 returnDateAfter:&v14];
  v7 = v14;

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v16 = v11;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Next Fire Date : [%@]", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)_activateWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__HMDTimerTrigger__activateWithCompletion___block_invoke;
  aBlock[3] = &unk_279734508;
  objc_copyWeak(&v10, &location);
  v5 = completionCopy;
  v9 = v5;
  v6 = _Block_copy(aBlock);
  if ([(HMDTrigger *)self active])
  {
    shouldActivateOnLocalDevice = [(HMDTimerTrigger *)self shouldActivateOnLocalDevice];
  }

  else
  {
    shouldActivateOnLocalDevice = 0;
  }

  [(HMDTrigger *)self _activate:shouldActivateOnLocalDevice completionHandler:v6];

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
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Activate on super class failed, bailing out", &v23, 0xCu);
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
          _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Looks like the timer is already running. Stopping it.", &v23, 0xCu);
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
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@TimerTrigger instance is gone. Doing Nothing.", &v23, 0xCu);
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
  home = [(HMDTrigger *)self home];
  v10.receiver = self;
  v10.super_class = HMDTimerTrigger;
  if ([(HMDTrigger *)&v10 shouldActivateOnLocalDevice])
  {
    owningDevice = [(HMDTrigger *)self owningDevice];

    if (owningDevice)
    {
      if ([home isResidentSupported])
      {
        primaryResident = [home primaryResident];
        device = [primaryResident device];
      }

      else
      {
        primaryResident = [(HMDTrigger *)self owner];
        if (![primaryResident isCurrentUser])
        {
          isCurrentDevice = 0;
          goto LABEL_11;
        }

        device = [(HMDTrigger *)self owningDevice];
      }

      v8 = device;
      isCurrentDevice = [device isCurrentDevice];
    }

    else
    {
      primaryResident = [(HMDTrigger *)self owner];
      isCurrentDevice = [primaryResident isCurrentUser];
    }

LABEL_11:

    goto LABEL_12;
  }

  isCurrentDevice = 0;
LABEL_12:

  return isCurrentDevice;
}

- (void)_disableTimerOffReactivationFailure
{
  [(HMDTimerTrigger *)self _stopTimer];

  [(HMDTrigger *)self setEnabled:0 message:0];
}

- (BOOL)_reactivateSignificantEventTrigger
{
  v17 = *MEMORY[0x277D85DE8];
  _nextSignificantEventFireDate = [(HMDTimerTrigger *)self _nextSignificantEventFireDate];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (_nextSignificantEventFireDate)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      hmf_localTimeDescription = [_nextSignificantEventFireDate hmf_localTimeDescription];
      v13 = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = hmf_localTimeDescription;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Starting timer based on significant event with %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [(HMDTimerTrigger *)selfCopy _startTimerWithSignificantEventDate:_nextSignificantEventFireDate];
  }

  else
  {
    if (v7)
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@No valid next significant fire date, disabling the timer", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(HMDTimerTrigger *)selfCopy _disableTimerOffReactivationFailure];
  }

  v11 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)_reactivateFireDateTrigger
{
  v12 = *MEMORY[0x277D85DE8];
  _nextFireDate = [(HMDTimerTrigger *)self _nextFireDate];
  if (_nextFireDate)
  {
    [(HMDTimerTrigger *)self _startTimerWithFireDate:_nextFireDate];
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@No valid next fire date, disabling the timer", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(HMDTimerTrigger *)selfCopy _disableTimerOffReactivationFailure];
  }

  v8 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)_reactivateTrigger
{
  fireDate = [(HMDTimerTrigger *)self fireDate];

  if (fireDate)
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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  fireDate = [(HMDTimerTrigger *)self fireDate];

  if (fireDate)
  {
    fireDate2 = [(HMDTimerTrigger *)self fireDate];
    [dictionary setObject:fireDate2 forKeyedSubscript:*MEMORY[0x277CD26C8]];
  }

  fireDateTimeZone = [(HMDTimerTrigger *)self fireDateTimeZone];

  if (fireDateTimeZone)
  {
    v7 = MEMORY[0x277CCAAB0];
    fireDateTimeZone2 = [(HMDTimerTrigger *)self fireDateTimeZone];
    v9 = [v7 archivedDataWithRootObject:fireDateTimeZone2 requiringSecureCoding:1 error:0];
    [dictionary setObject:v9 forKeyedSubscript:*MEMORY[0x277CD2718]];
  }

  else
  {
    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CD2700]];
  }

  fireRepeatInterval = [(HMDTimerTrigger *)self fireRepeatInterval];

  if (fireRepeatInterval)
  {
    v11 = MEMORY[0x277CCAAB0];
    fireRepeatInterval2 = [(HMDTimerTrigger *)self fireRepeatInterval];
    v13 = [v11 archivedDataWithRootObject:fireRepeatInterval2 requiringSecureCoding:1 error:0];
    [dictionary setObject:v13 forKeyedSubscript:*MEMORY[0x277CD26D0]];
  }

  else
  {
    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CD26E0]];
  }

  recurrences = [(HMDTimerTrigger *)self recurrences];

  if (recurrences)
  {
    v15 = MEMORY[0x277CCAAB0];
    recurrences2 = [(HMDTimerTrigger *)self recurrences];
    v17 = [v15 archivedDataWithRootObject:recurrences2 requiringSecureCoding:1 error:0];
    [dictionary setObject:v17 forKeyedSubscript:*MEMORY[0x277CD26D8]];
  }

  else
  {
    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CD26E8]];
  }

  significantEvent = [(HMDTimerTrigger *)self significantEvent];

  if (significantEvent)
  {
    significantEvent2 = [(HMDTimerTrigger *)self significantEvent];
    [dictionary setObject:significantEvent2 forKeyedSubscript:*MEMORY[0x277CD2708]];
  }

  else
  {
    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CD26F0]];
  }

  significantEventOffset = [(HMDTimerTrigger *)self significantEventOffset];

  if (significantEventOffset)
  {
    v21 = MEMORY[0x277CCAAB0];
    significantEventOffset2 = [(HMDTimerTrigger *)self significantEventOffset];
    v23 = [v21 archivedDataWithRootObject:significantEventOffset2 requiringSecureCoding:1 error:0];
    [dictionary setObject:v23 forKeyedSubscript:*MEMORY[0x277CD2710]];
  }

  else
  {
    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CD26F8]];
  }

  return dictionary;
}

- (id)backingStoreObjects:(int64_t)objects
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
  uuid = [(HMDTrigger *)self uuid];
  home = [(HMDTrigger *)self home];
  uuid2 = [home uuid];
  v7 = [(HMDBackingStoreModelObject *)v3 initWithObjectChangeType:2 uuid:uuid parentUUID:uuid2];

  return v7;
}

- (id)modelObjectWithChangeType:(unint64_t)type
{
  v5 = [HMDTimerTriggerModel alloc];
  uuid = [(HMDTrigger *)self uuid];
  home = [(HMDTrigger *)self home];
  uuid2 = [home uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:type uuid:uuid parentUUID:uuid2];

  [(HMDTrigger *)self _fillBaseObjectChangeModel:v9];
  fireDate = [(HMDTimerTrigger *)self fireDate];
  [(HMDTimerTriggerModel *)v9 setFireDate:fireDate];

  v11 = MEMORY[0x277CCAAB0];
  fireDateTimeZone = [(HMDTimerTrigger *)self fireDateTimeZone];
  v13 = [v11 archivedDataWithRootObject:fireDateTimeZone requiringSecureCoding:1 error:0];
  [(HMDTimerTriggerModel *)v9 setFireDateTimeZone:v13];

  significantEvent = [(HMDTimerTrigger *)self significantEvent];
  [(HMDTimerTriggerModel *)v9 setSignificantEvent:significantEvent];

  v15 = MEMORY[0x277CCAAB0];
  significantEventOffset = [(HMDTimerTrigger *)self significantEventOffset];
  v17 = [v15 archivedDataWithRootObject:significantEventOffset requiringSecureCoding:1 error:0];
  [(HMDTimerTriggerModel *)v9 setSignificantEventOffset:v17];

  v18 = MEMORY[0x277CCAAB0];
  fireRepeatInterval = [(HMDTimerTrigger *)self fireRepeatInterval];
  v20 = [v18 archivedDataWithRootObject:fireRepeatInterval requiringSecureCoding:1 error:0];
  [(HMDTimerTriggerModel *)v9 setFireRepeatInterval:v20];

  v21 = MEMORY[0x277CCAAB0];
  recurrences = [(HMDTimerTrigger *)self recurrences];
  v23 = [v21 archivedDataWithRootObject:recurrences requiringSecureCoding:1 error:0];
  [(HMDTimerTriggerModel *)v9 setRecurrences:v23];

  return v9;
}

- (void)_handleTimerTriggerUpdate:(id)update message:(id)message
{
  messageCopy = message;
  updateCopy = update;
  [(HMDTimerTrigger *)self _handleUpdateTimerTriggerPropertiesModel:updateCopy message:messageCopy];
  [(HMDTrigger *)self _handleTriggerUpdate:updateCopy message:messageCopy];
}

- (void)_handleUpdateTimerTriggerPropertiesModel:(id)model message:(id)message
{
  modelCopy = model;
  messageCopy = message;
  setProperties = [modelCopy setProperties];
  v8 = [setProperties containsObject:@"fireDate"];

  if (v8)
  {
    fireDate = [modelCopy fireDate];
    [(HMDTimerTrigger *)self setFireDate:fireDate];
  }

  setProperties2 = [modelCopy setProperties];
  v11 = [setProperties2 containsObject:@"fireDateTimeZone"];

  if (v11)
  {
    fireDateTimeZone = [modelCopy fireDateTimeZone];
    decodeTimeZone = [fireDateTimeZone decodeTimeZone];
    [(HMDTimerTrigger *)self setFireDateTimeZone:decodeTimeZone];

    v8 = 1;
  }

  setProperties3 = [modelCopy setProperties];
  v15 = [setProperties3 containsObject:@"fireRepeatInterval"];

  if (v15)
  {
    fireRepeatInterval = [modelCopy fireRepeatInterval];
    decodeDateComponents = [fireRepeatInterval decodeDateComponents];
    [(HMDTimerTrigger *)self setFireRepeatInterval:decodeDateComponents];

    v8 = 1;
  }

  setProperties4 = [modelCopy setProperties];
  v19 = [setProperties4 containsObject:@"recurrences"];

  if (v19)
  {
    recurrences = [modelCopy recurrences];
    decodeArrayOfDateComponents = [recurrences decodeArrayOfDateComponents];
    [(HMDTimerTrigger *)self setRecurrences:decodeArrayOfDateComponents];

    v8 = 1;
  }

  setProperties5 = [modelCopy setProperties];
  v23 = [setProperties5 containsObject:@"significantEvent"];

  if (v23)
  {
    significantEvent = [modelCopy significantEvent];
    [(HMDTimerTrigger *)self setSignificantEvent:significantEvent];

    v8 = 1;
  }

  setProperties6 = [modelCopy setProperties];
  v26 = [setProperties6 containsObject:@"significantEventOffset"];

  if (v26)
  {
    significantEventOffset = [modelCopy significantEventOffset];
    decodeDateComponents2 = [significantEventOffset decodeDateComponents];
    [(HMDTimerTrigger *)self setSignificantEventOffset:decodeDateComponents2];
  }

  else if (!v8)
  {
    goto LABEL_15;
  }

  messagePayload = [messageCopy messagePayload];
  v30 = [messagePayload mutableCopy];

  v31 = HMDRemoteMessagePayloadKeysForTransportMetadata();
  [v30 removeObjectsForKeys:v31];

  _serializeForAdd = [(HMDTimerTrigger *)self _serializeForAdd];
  [v30 addEntriesFromDictionary:_serializeForAdd];

  [messageCopy respondWithPayload:v30];
LABEL_15:
}

- (void)_handleUpdateTimerTriggerPropertiesRequest:(id)request
{
  requestCopy = request;
  emptyModelObject = [(HMDTimerTrigger *)self emptyModelObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = emptyModelObject;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  fireDate = [(HMDTimerTrigger *)self fireDate];
  v8 = [HMDTimerTrigger validateTriggerModel:v6 message:requestCopy currentFireDate:fireDate];

  if (v8)
  {
    home = [(HMDTrigger *)self home];
    backingStore = [home backingStore];
    name = [requestCopy name];
    v12 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v13 = [backingStore transaction:name options:v12];

    [v13 add:v8 withMessage:requestCopy];
    [v13 run];
  }
}

- (void)_registerForMessages
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = HMDTimerTrigger;
  [(HMDTrigger *)&v10 _registerForMessages];
  home = [(HMDTrigger *)self home];
  administratorHandler = [home administratorHandler];
  v5 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v11[0] = v5;
  v6 = [HMDXPCBackgroundMessagePolicy policyWithEntitlementRequirement:1];
  v11[1] = v6;
  v7 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v11[2] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];
  [administratorHandler registerForMessage:@"kScheduleTimerTriggerRequestKey" receiver:self policies:v8 selector:sel__handleUpdateTimerTriggerPropertiesRequest_];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_stopTimer
{
  v3 = +[HMDBackgroundTaskManager sharedManager];
  timerID = [(HMDTimerTrigger *)self timerID];
  [v3 cancelTaskWithIdentifier:timerID onObserver:self];

  [(HMDTimerTrigger *)self setCurrentFireDate:0];
}

- (void)_startTimer:(id)timer
{
  v34 = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  home = [(HMDTrigger *)self home];
  if (home)
  {
    if ([(HMDTrigger *)self active]&& [(HMDTimerTrigger *)self shouldActivateOnLocalDevice])
    {
      v6 = +[HMDBackgroundTaskManager sharedManager];
      timerID = [(HMDTimerTrigger *)self timerID];
      v27 = 0;
      [v6 scheduleTaskWithIdentifier:timerID fireDate:timerCopy onObserver:self selector:sel_handleTimerFiredNotification_ error:&v27];
      v8 = v27;

      if (v8)
      {
        v9 = objc_autoreleasePoolPush();
        selfCopy = self;
        v11 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = HMFGetLogIdentifier();
          timerID2 = [(HMDTimerTrigger *)selfCopy timerID];
          *buf = 138543874;
          v29 = v12;
          v30 = 2112;
          v31 = timerID2;
          v32 = 2112;
          v33 = v8;
          _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to start timer %@ with error %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v9);
        goto LABEL_15;
      }
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        name = [(HMDTrigger *)selfCopy2 name];
        *buf = 138543618;
        v29 = v17;
        v30 = 2112;
        v31 = name;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Trigger %@ not activated on local device - skipping scheduling the trigger", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
    }

    [(HMDTimerTrigger *)self setCurrentFireDate:timerCopy];
    goto LABEL_15;
  }

  v19 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = HMFGetLogIdentifier();
    name2 = [(HMDTrigger *)selfCopy3 name];
    uuid = [(HMDTrigger *)selfCopy3 uuid];
    uUIDString = [uuid UUIDString];
    *buf = 138543874;
    v29 = v22;
    v30 = 2112;
    v31 = name2;
    v32 = 2112;
    v33 = uUIDString;
    _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@%@/%@: Home reference is nil", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v19);
LABEL_15:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_startTimerWithFireDate:(id)date
{
  v24 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  [dateCopy timeIntervalSinceNow];
  if (v5 <= 0.0)
  {
    getCalendar = [(HMDTimerTrigger *)self getCalendar];
    getFireInterval = [(HMDTimerTrigger *)self getFireInterval];
    v6 = [getCalendar dateByAddingComponents:getFireInterval toDate:dateCopy options:0];

    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      hmf_localTimeDescription = [v6 hmf_localTimeDescription];
      v20 = 138543618;
      v21 = v12;
      v22 = 2112;
      v23 = hmf_localTimeDescription;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Revised Next Fire Date %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v6 = dateCopy;
  }

  v14 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    hmf_localTimeDescription2 = [v6 hmf_localTimeDescription];
    v20 = 138543618;
    v21 = v17;
    v22 = 2112;
    v23 = hmf_localTimeDescription2;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Next fire date %@", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  [(HMDTimerTrigger *)selfCopy2 _startTimer:v6];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v12 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Invalidating the trigger", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = +[HMDBackgroundTaskManager sharedManager];
  timerID = [(HMDTimerTrigger *)selfCopy timerID];
  [v7 cancelTaskWithIdentifier:timerID onObserver:selfCopy];

  v10.receiver = selfCopy;
  v10.super_class = HMDTimerTrigger;
  [(HMDTrigger *)&v10 invalidate];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)timerTriggered
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v12 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Timer Triggered", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  objc_initWeak(buf, selfCopy);
  workQueue = [(HMDTrigger *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__HMDTimerTrigger_timerTriggered__block_invoke;
  block[3] = &unk_279732FD8;
  objc_copyWeak(&v10, buf);
  dispatch_async(workQueue, block);

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
  msgDispatcher = [(HMDTrigger *)self msgDispatcher];
  [msgDispatcher deregisterReceiver:self];

  home = [(HMDTrigger *)self home];
  administratorHandler = [home administratorHandler];
  [administratorHandler deregisterReceiver:self];

  v6.receiver = self;
  v6.super_class = HMDTimerTrigger;
  [(HMDTrigger *)&v6 dealloc];
}

- (void)completeConfiguration
{
  workQueue = [(HMDTrigger *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__HMDTimerTrigger_completeConfiguration__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)configure:(id)configure messageDispatcher:(id)dispatcher queue:(id)queue
{
  v38 = *MEMORY[0x277D85DE8];
  configureCopy = configure;
  dispatcherCopy = dispatcher;
  queueCopy = queue;
  v29.receiver = self;
  v29.super_class = HMDTimerTrigger;
  [(HMDTrigger *)&v29 configure:configureCopy messageDispatcher:dispatcherCopy queue:queueCopy];
  timerID = [(HMDTimerTrigger *)self timerID];

  if (!timerID)
  {
    uuid = [(HMDTrigger *)self uuid];
    uUIDString = [uuid UUIDString];
    v14 = [@"com.apple.homed.timertriggers." stringByAppendingString:uUIDString];
    [(HMDTimerTrigger *)self setTimerID:v14];

    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      timerID2 = [(HMDTimerTrigger *)selfCopy timerID];
      *buf = 138543618;
      v31 = v18;
      v32 = 2112;
      v33 = timerID2;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Null timerID -- initializing with %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v20 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    fireDate = [(HMDTimerTrigger *)selfCopy2 fireDate];
    fireDateTimeZone = [(HMDTimerTrigger *)selfCopy2 fireDateTimeZone];
    timerID3 = [(HMDTimerTrigger *)selfCopy2 timerID];
    v27 = [timerID3 cStringUsingEncoding:4];
    *buf = 138544130;
    v31 = v23;
    v32 = 2112;
    v33 = fireDate;
    v34 = 2112;
    v35 = fireDateTimeZone;
    v36 = 2080;
    v37 = v27;
    _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Configuring with firedate %@ and timezone %@ for %s", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v20);
  [(HMDTimerTrigger *)selfCopy2 _activateWithCompletion:0];

  v28 = *MEMORY[0x277D85DE8];
}

- (void)setCurrentFireDate:(id)date
{
  dateCopy = date;
  os_unfair_lock_lock_with_options();
  currentFireDate = self->_currentFireDate;
  self->_currentFireDate = dateCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDate)currentFireDate
{
  os_unfair_lock_lock_with_options();
  v3 = self->_currentFireDate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
{
  v24.receiver = self;
  v24.super_class = HMDTimerTrigger;
  v4 = [(HMDTrigger *)&v24 dumpStateWithPrivacyLevel:level];
  v5 = [v4 mutableCopy];

  fireRepeatInterval = [(HMDTimerTrigger *)self fireRepeatInterval];

  if (fireRepeatInterval)
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    fireRepeatInterval2 = [(HMDTimerTrigger *)self fireRepeatInterval];
    fireDate = [(HMDTimerTrigger *)self fireDate];
    v10 = [currentCalendar dateByAddingComponents:fireRepeatInterval2 toDate:fireDate options:0];

    fireDate2 = [(HMDTimerTrigger *)self fireDate];
    [v10 timeIntervalSinceDate:fireDate2];
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = MEMORY[0x277CCACA8];
  fireDate3 = [(HMDTimerTrigger *)self fireDate];
  hmf_localTimeDescription = [fireDate3 hmf_localTimeDescription];
  fireDateTimeZone = [(HMDTimerTrigger *)self fireDateTimeZone];
  significantEvent = [(HMDTimerTrigger *)self significantEvent];
  significantEventOffset = [(HMDTimerTrigger *)self significantEventOffset];
  second = [significantEventOffset second];
  recurrences = [(HMDTimerTrigger *)self recurrences];
  v22 = [v14 stringWithFormat:@"initial fire date: %@, time zone: %@, sig-event: %@, sig-event-offset: %tu, repeat interval: %f seconds, recur-instances: %@", hmf_localTimeDescription, fireDateTimeZone, significantEvent, second, v13, recurrences];

  [v5 setObject:v22 forKeyedSubscript:*MEMORY[0x277D0F180]];

  return v5;
}

- (id)description
{
  v17.receiver = self;
  v17.super_class = HMDTimerTrigger;
  v15 = MEMORY[0x277CCAB68];
  v3 = [(HMFObject *)&v17 description];
  fireDate = [(HMDTimerTrigger *)self fireDate];
  hmf_localTimeDescription = [fireDate hmf_localTimeDescription];
  fireDateTimeZone = [(HMDTimerTrigger *)self fireDateTimeZone];
  significantEvent = [(HMDTimerTrigger *)self significantEvent];
  significantEventOffset = [(HMDTimerTrigger *)self significantEventOffset];
  second = [significantEventOffset second];
  fireRepeatInterval = [(HMDTimerTrigger *)self fireRepeatInterval];
  recurrences = [(HMDTimerTrigger *)self recurrences];
  v12 = [v15 stringWithFormat:@"<Timer-Trigger: %@, fireDate = %@, fireDateTimeZone = %@, significantEvent = %@, significantEventOffset = %tu, repeatInterval: %@, recurrences = %@", v3, hmf_localTimeDescription, fireDateTimeZone, significantEvent, second, fireRepeatInterval, recurrences];

  v16.receiver = self;
  v16.super_class = HMDTimerTrigger;
  v13 = [(HMFObject *)&v16 description];
  [v12 appendString:v13];

  return v12;
}

- (HMDTimerTrigger)initWithModel:(id)model home:(id)home
{
  modelCopy = model;
  v25.receiver = self;
  v25.super_class = HMDTimerTrigger;
  v7 = [(HMDTrigger *)&v25 initWithModel:modelCopy home:home];
  if (v7)
  {
    fireDate = [modelCopy fireDate];
    fireDate = v7->_fireDate;
    v7->_fireDate = fireDate;

    fireDateTimeZone = [modelCopy fireDateTimeZone];
    decodeTimeZone = [fireDateTimeZone decodeTimeZone];
    fireDateTimeZone = v7->_fireDateTimeZone;
    v7->_fireDateTimeZone = decodeTimeZone;

    fireRepeatInterval = [modelCopy fireRepeatInterval];
    decodeDateComponents = [fireRepeatInterval decodeDateComponents];
    fireRepeatInterval = v7->_fireRepeatInterval;
    v7->_fireRepeatInterval = decodeDateComponents;

    recurrences = [modelCopy recurrences];
    decodeArrayOfDateComponents = [recurrences decodeArrayOfDateComponents];
    recurrences = v7->_recurrences;
    v7->_recurrences = decodeArrayOfDateComponents;

    significantEvent = [modelCopy significantEvent];
    significantEvent = v7->_significantEvent;
    v7->_significantEvent = significantEvent;

    significantEventOffset = [modelCopy significantEventOffset];
    decodeDateComponents2 = [significantEventOffset decodeDateComponents];
    significantEventOffset = v7->_significantEventOffset;
    v7->_significantEventOffset = decodeDateComponents2;
  }

  return v7;
}

- (HMDTimerTrigger)initWithName:(id)name uuid:(id)uuid
{
  v11.receiver = self;
  v11.super_class = HMDTimerTrigger;
  v4 = [(HMDTrigger *)&v11 initWithName:name uuid:uuid];
  v5 = v4;
  if (v4)
  {
    uuid = [(HMDTrigger *)v4 uuid];
    uUIDString = [uuid UUIDString];
    v8 = [@"com.apple.homed.timertriggers." stringByAppendingString:uUIDString];
    timerID = v5->_timerID;
    v5->_timerID = v8;

    v5->_lock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

+ (id)getCalendar:(id)calendar
{
  calendarCopy = calendar;
  calendar = [calendarCopy calendar];

  if (calendar)
  {
    [calendarCopy calendar];
  }

  else
  {
    [MEMORY[0x277CBEA80] currentCalendar];
  }
  v5 = ;

  return v5;
}

+ (id)validateWholeMinuteDate:(id)date onCalendar:(id)calendar
{
  dateCopy = date;
  calendarCopy = calendar;
  currentCalendar = calendarCopy;
  if (!dateCopy)
  {
    v10 = 0;
    goto LABEL_11;
  }

  if (!calendarCopy)
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  }

  v8 = [currentCalendar components:3178750 fromDate:dateCopy];
  if ([v8 second])
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:70 userInfo:0];
  }

  else
  {
    [dateCopy timeIntervalSinceNow];
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

+ (id)validateTriggerModel:(id)model message:(id)message currentFireDate:(id)date
{
  v64 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  messageCopy = message;
  dateCopy = date;
  v11 = [messageCopy dateForKey:*MEMORY[0x277CD26C8]];
  if (!v11)
  {
    v12 = dateCopy;
    goto LABEL_9;
  }

  v12 = v11;
  v13 = [HMDTimerTrigger validateWholeMinuteDate:v11 onCalendar:0];
  if (!v13)
  {
    [modelCopy setFireDate:v12];
    [modelCopy setSignificantEvent:0];
    [modelCopy setSignificantEventOffset:0];
LABEL_9:
    responseHandler10 = [messageCopy timeZoneForKey:*MEMORY[0x277CD2718]];
    if (responseHandler10)
    {
      v23 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:responseHandler10 requiringSecureCoding:1 error:0];
      [modelCopy setFireDateTimeZone:v23];
    }

    else if ([messageCopy BOOLForKey:*MEMORY[0x277CD2700]])
    {
      [modelCopy setFireDateTimeZone:0];
    }

    v24 = [messageCopy dateComponentsForKey:*MEMORY[0x277CD26D0]];
    v61 = dateCopy;
    if (v24)
    {
      v25 = [HMDTimerTrigger getCalendar:v24];
      responseHandler5 = [HMDTimerTrigger validateRecurrence:v24 calendar:v25 fireDate:v12];

      if (responseHandler5)
      {
        v26 = objc_autoreleasePoolPush();
        selfCopy = self;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = HMFGetLogIdentifier();
          *buf = 138543362;
          v63 = v29;
          _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Not a valid recurrence", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v26);
        responseHandler = [messageCopy responseHandler];

        if (!responseHandler)
        {
          responseHandler7 = 0;
LABEL_59:

          dateCopy = v61;
          goto LABEL_60;
        }

        responseHandler2 = [messageCopy responseHandler];
        (responseHandler2)[2](responseHandler2, responseHandler5, 0);
        responseHandler7 = 0;
LABEL_58:

        goto LABEL_59;
      }

      v32 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v24 requiringSecureCoding:1 error:0];
      [modelCopy setFireRepeatInterval:v32];
    }

    else if ([messageCopy BOOLForKey:*MEMORY[0x277CD26E0]])
    {
      [modelCopy setFireRepeatInterval:0];
    }

    v33 = *MEMORY[0x277CD26D8];
    v34 = [messageCopy numberForKey:*MEMORY[0x277CD26D8]];
    v60 = v34;
    if (v34)
    {
      [v34 unsignedIntegerValue];
      HMDaysOfTheWeekToDateComponents();
    }

    else
    {
      [messageCopy arrayOfDateComponentsForKey:v33];
    }
    responseHandler2 = ;
    if (responseHandler2)
    {
      v35 = [HMDTimerTrigger validateRecurrences:responseHandler2];
      if (v35)
      {
        responseHandler5 = v35;
        v36 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v39 = v57 = v36;
          *buf = 138543362;
          v63 = v39;
          _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@Invalid recurrence instances", buf, 0xCu);

          v36 = v57;
        }

        objc_autoreleasePoolPop(v36);
        responseHandler3 = [messageCopy responseHandler];

        if (!responseHandler3)
        {
          responseHandler7 = 0;
LABEL_57:

          goto LABEL_58;
        }

        responseHandler4 = [messageCopy responseHandler];
        (responseHandler4)[2](responseHandler4, responseHandler5, 0);
        responseHandler7 = 0;
LABEL_56:

        goto LABEL_57;
      }

      v42 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:responseHandler2 requiringSecureCoding:1 error:0];
      [modelCopy setRecurrences:v42];
    }

    else if ([messageCopy BOOLForKey:*MEMORY[0x277CD26E8]])
    {
      [modelCopy setRecurrences:0];
    }

    responseHandler4 = [messageCopy stringForKey:*MEMORY[0x277CD2708]];
    if (responseHandler4)
    {
      if ((HMIsValidSignificantEvent() & 1) == 0)
      {
        v47 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v49 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v50 = v59 = v47;
          *buf = 138543362;
          v63 = v50;
          _os_log_impl(&dword_2531F8000, v49, OS_LOG_TYPE_ERROR, "%{public}@Significant event is not valid", buf, 0xCu);

          v47 = v59;
        }

        objc_autoreleasePoolPop(v47);
        v43 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
        responseHandler5 = [messageCopy responseHandler];

        if (responseHandler5)
        {
          responseHandler6 = [messageCopy responseHandler];
          (responseHandler6)[2](responseHandler6, v43, 0);

          responseHandler5 = 0;
        }

LABEL_49:
        responseHandler7 = 0;
LABEL_55:

        goto LABEL_56;
      }

      [modelCopy setSignificantEvent:responseHandler4];
      [modelCopy setFireDate:0];
      [modelCopy setFireDateTimeZone:0];
      [modelCopy setFireRepeatInterval:0];
    }

    v43 = [messageCopy dateComponentsForKey:*MEMORY[0x277CD2710]];
    if (v43)
    {
      v44 = [HMDTimerTrigger validateSignificantOffset:v43];
      if (v44)
      {
        responseHandler5 = v44;
        context = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v45 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v55 = HMFGetLogIdentifier();
          *buf = 138543362;
          v63 = v55;
          _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_ERROR, "%{public}@Invalid significant event offset", buf, 0xCu);
        }

        objc_autoreleasePoolPop(context);
        responseHandler7 = [messageCopy responseHandler];

        if (!responseHandler7)
        {
          goto LABEL_55;
        }

        responseHandler8 = [messageCopy responseHandler];
        (responseHandler8)[2](responseHandler8, responseHandler5, 0);

        goto LABEL_49;
      }

      v52 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v43 requiringSecureCoding:1 error:0];
      [modelCopy setSignificantEventOffset:v52];
    }

    else if ([messageCopy BOOLForKey:*MEMORY[0x277CD26F8]])
    {
      [modelCopy setSignificantEventOffset:0];
    }

    responseHandler7 = modelCopy;
    responseHandler5 = 0;
    goto LABEL_55;
  }

  responseHandler5 = v13;
  v15 = objc_autoreleasePoolPush();
  selfCopy5 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    HMFGetLogIdentifier();
    v19 = v18 = dateCopy;
    *buf = 138543362;
    v63 = v19;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Fire date is not valid", buf, 0xCu);

    dateCopy = v18;
  }

  objc_autoreleasePoolPop(v15);
  responseHandler9 = [messageCopy responseHandler];

  if (!responseHandler9)
  {
    responseHandler7 = 0;
    goto LABEL_61;
  }

  responseHandler10 = [messageCopy responseHandler];
  (responseHandler10)[2](responseHandler10, responseHandler5, 0);
  responseHandler7 = 0;
LABEL_60:

LABEL_61:
  v53 = *MEMORY[0x277D85DE8];

  return responseHandler7;
}

+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver
{
  v22[4] = *MEMORY[0x277D85DE8];
  dispatcherCopy = dispatcher;
  receiverCopy = receiver;
  messageCopy = message;
  v11 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v22[0] = v11;
  v12 = [HMDXPCBackgroundMessagePolicy policyWithEntitlementRequirement:1];
  v22[1] = v12;
  v13 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v22[2] = v13;
  v14 = objc_opt_new();
  v22[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];

  name = [messageCopy name];
  LODWORD(v12) = HMFEqualObjects();

  if (v12)
  {
    name2 = [messageCopy name];

    v18 = HMFCreateMessageBinding();
    messageCopy = name2;
  }

  else
  {
    v21.receiver = self;
    v21.super_class = &OBJC_METACLASS___HMDTimerTrigger;
    v18 = objc_msgSendSuper2(&v21, sel_messageBindingForDispatcher_message_receiver_, dispatcherCopy, messageCopy, receiverCopy);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)validateRecurrences:(id)recurrences
{
  v51 = *MEMORY[0x277D85DE8];
  recurrencesCopy = recurrences;
  if ([recurrencesCopy count])
  {
    firstObject = [recurrencesCopy firstObject];
    calendar = [firstObject calendar];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v7 = recurrencesCopy;
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

          calendar2 = [*(*(&v41 + 1) + 8 * i) calendar];
          v13 = HMFEqualObjects();

          if ((v13 & 1) == 0)
          {
            v22 = objc_autoreleasePoolPush();
            selfCopy = self;
            v24 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              v25 = HMFGetLogIdentifier();
              *buf = 138543362;
              v46 = v25;
              _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Calendars are not matching in the recurrence instances", buf, 0xCu);
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
            selfCopy2 = self;
            v31 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              v32 = HMFGetLogIdentifier();
              *buf = 138543618;
              v46 = v32;
              v47 = 2112;
              v48 = v19;
              _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Invalid values for week day: %@", buf, 0x16u);
            }

            v26 = v29;
            goto LABEL_23;
          }

          v20 = objc_alloc_init(MEMORY[0x277CBEAB8]);
          [v20 setWeekday:{objc_msgSend(v19, "weekday")}];
          [v20 setCalendar:calendar];
          if (([v19 isEqual:v20] & 1) == 0)
          {
            v33 = objc_autoreleasePoolPush();
            selfCopy3 = self;
            v35 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              v36 = HMFGetLogIdentifier();
              *buf = 138543618;
              v46 = v36;
              v47 = 2112;
              v48 = v19;
              _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@Miscellaneous fields have been set recurrence instances: %@", buf, 0x16u);
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

+ (id)validateRecurrence:(id)recurrence calendar:(id)calendar fireDate:(id)date
{
  recurrenceCopy = recurrence;
  calendarCopy = calendar;
  dateCopy = date;
  if (recurrenceCopy)
  {
    if (([recurrenceCopy second] == 0x7FFFFFFFFFFFFFFFLL || !objc_msgSend(recurrenceCopy, "second")) && (objc_msgSend(recurrenceCopy, "nanosecond") == 0x7FFFFFFFFFFFFFFFLL || !objc_msgSend(recurrenceCopy, "nanosecond")))
    {
      v11 = [calendarCopy dateByAddingComponents:recurrenceCopy toDate:dateCopy options:0];
      [v11 timeIntervalSinceDate:dateCopy];
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
  if (logCategory__hmf_once_t0_28056 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_28056, &__block_literal_global_28057);
  }

  v3 = logCategory__hmf_once_v1_28058;

  return v3;
}

uint64_t __30__HMDTimerTrigger_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_28058;
  logCategory__hmf_once_v1_28058 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end