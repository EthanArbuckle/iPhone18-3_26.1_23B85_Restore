@interface HMDHomePeriodicReader
+ (id)logCategory;
- (HMDHome)home;
- (id)_characteristicsToRead;
- (id)logIdentifier;
- (void)_checkToIssueRead;
- (void)_issueCharacteristicRequests:(id)requests;
- (void)_startTimer;
- (void)checkToIssueRead;
- (void)configure:(id)configure;
- (void)dealloc;
- (void)handleCharacteristicBasedEventAdded:(id)added;
- (void)handleTimerFiredNotification:(id)notification;
- (void)residentUpdated;
- (void)startReadTimer;
@end

@implementation HMDHomePeriodicReader

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (void)_startTimer
{
  v35 = *MEMORY[0x277D85DE8];
  timerID = [(HMDHomePeriodicReader *)self timerID];
  v4 = +[HMDBackgroundTaskManager sharedManager];
  [v4 cancelTaskWithIdentifier:timerID onObserver:self];

  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v6 = [mEMORY[0x277D0F8D0] preferenceForKey:@"periodicReaderInterval"];
  numberValue = [v6 numberValue];

  if (!numberValue)
  {
    numberValue = [MEMORY[0x277CCABB0] numberWithDouble:20.0];
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v11;
      v31 = 2112;
      v32 = numberValue;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Preference for reader interval is missing, using default value: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  date = [MEMORY[0x277CBEAA8] date];
  [numberValue doubleValue];
  v14 = [date dateByAddingTimeInterval:v13 * 60.0];

  v15 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    hmf_localTimeDescription = [v14 hmf_localTimeDescription];
    *buf = 138543874;
    v30 = v18;
    v31 = 2112;
    v32 = timerID;
    v33 = 2112;
    v34 = hmf_localTimeDescription;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Starting the next timer (%@) to fire at %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v15);
  v20 = +[HMDBackgroundTaskManager sharedManager];
  v28 = 0;
  v21 = [v20 scheduleTaskWithIdentifier:timerID fireDate:v14 onObserver:selfCopy2 selector:sel_handleTimerFiredNotification_ error:&v28];
  v22 = v28;

  if ((v21 & 1) == 0)
  {
    v23 = objc_autoreleasePoolPush();
    v24 = selfCopy2;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543874;
      v30 = v26;
      v31 = 2112;
      v32 = timerID;
      v33 = 2112;
      v34 = v22;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to start timer %@ with error %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v23);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_issueCharacteristicRequests:(id)requests
{
  v30 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  requestsCopy = requests;
  v5 = [requestsCopy countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    v20 = requestsCopy;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(requestsCopy);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = [requestsCopy objectForKey:v9];
        v11 = objc_autoreleasePoolPush();
        selfCopy = self;
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v14 = v6;
          v15 = v7;
          v17 = v16 = self;
          *buf = 138543618;
          v26 = v17;
          v27 = 2112;
          v28 = v9;
          _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Issuing a periodic read for %@", buf, 0x16u);

          self = v16;
          v7 = v15;
          v6 = v14;
          requestsCopy = v20;
        }

        objc_autoreleasePoolPop(v11);
        workQueue = [(HMDHomePeriodicReader *)selfCopy workQueue];
        [v9 readCharacteristicValues:v10 source:1130 queue:workQueue completionHandler:&__block_literal_global_28];
      }

      v6 = [requestsCopy countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v6);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_checkToIssueRead
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    timerID = [(HMDHomePeriodicReader *)selfCopy timerID];
    v12 = 138543618;
    v13 = v6;
    v14 = 2112;
    v15 = timerID;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Stopping the timer with ID: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = +[HMDBackgroundTaskManager sharedManager];
  timerID2 = [(HMDHomePeriodicReader *)selfCopy timerID];
  [v8 cancelTaskWithIdentifier:timerID2 onObserver:selfCopy];

  _characteristicsToRead = [(HMDHomePeriodicReader *)selfCopy _characteristicsToRead];
  if (_characteristicsToRead)
  {
    [(HMDHomePeriodicReader *)selfCopy _issueCharacteristicRequests:_characteristicsToRead];
    [(HMDHomePeriodicReader *)selfCopy _startTimer];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)checkToIssueRead
{
  v13 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDHomePeriodicReader *)self workQueue];

  if (workQueue)
  {
    workQueue2 = [(HMDHomePeriodicReader *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__HMDHomePeriodicReader_checkToIssueRead__block_invoke;
    block[3] = &unk_27868A728;
    block[4] = self;
    dispatch_async(workQueue2, block);
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v12 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Object not configured yet", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)startReadTimer
{
  v13 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDHomePeriodicReader *)self workQueue];

  if (workQueue)
  {
    workQueue2 = [(HMDHomePeriodicReader *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__HMDHomePeriodicReader_startReadTimer__block_invoke;
    block[3] = &unk_27868A728;
    block[4] = self;
    dispatch_async(workQueue2, block);
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v12 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Object not configured yet", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __39__HMDHomePeriodicReader_startReadTimer__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _characteristicsToRead];
  if (v2)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting periodic read timer", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [*(a1 + 32) _startTimer];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_characteristicsToRead
{
  v76 = *MEMORY[0x277D85DE8];
  home = [(HMDHomePeriodicReader *)self home];
  primaryResident = [home primaryResident];
  isCurrentDevice = [primaryResident isCurrentDevice];

  if (isCurrentDevice)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v45 = home;
    triggers = [home triggers];
    v8 = [triggers copy];

    obj = v8;
    v9 = [v8 countByEnumeratingWithState:&v66 objects:v73 count:16];
    if (v9)
    {
      v10 = v9;
      v52 = *v67;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v67 != v52)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v66 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
          }

          else
          {
            v13 = 0;
          }

          v14 = v13;

          if (v14)
          {
            characteristicBaseEvents = [v14 characteristicBaseEvents];
            v62 = 0u;
            v63 = 0u;
            v64 = 0u;
            v65 = 0u;
            v16 = [characteristicBaseEvents countByEnumeratingWithState:&v62 objects:v72 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v63;
              do
              {
                for (j = 0; j != v17; ++j)
                {
                  if (*v63 != v18)
                  {
                    objc_enumerationMutation(characteristicBaseEvents);
                  }

                  characteristic = [*(*(&v62 + 1) + 8 * j) characteristic];
                  accessory = [characteristic accessory];

                  if ([accessory hasIPLink])
                  {
                    [v6 addObject:accessory];
                  }
                }

                v17 = [characteristicBaseEvents countByEnumeratingWithState:&v62 objects:v72 count:16];
              }

              while (v17);
            }
          }
        }

        v10 = [obj countByEnumeratingWithState:&v66 objects:v73 count:16];
      }

      while (v10);
    }

    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v22 = v6;
    v48 = [v22 countByEnumeratingWithState:&v58 objects:v71 count:16];
    if (v48)
    {
      v53 = 0;
      v46 = v22;
      v47 = *v59;
      v23 = *MEMORY[0x277CFE810];
      v24 = *MEMORY[0x277CFE680];
      do
      {
        v25 = 0;
        do
        {
          if (*v59 != v47)
          {
            objc_enumerationMutation(v46);
          }

          v26 = *(*(&v58 + 1) + 8 * v25);
          array = [strongToStrongObjectsMapTable objectForKey:v26];
          if (!array)
          {
            array = [MEMORY[0x277CBEB18] array];
            [strongToStrongObjectsMapTable setObject:array forKey:v26];
          }

          obja = v25;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          services = [v26 services];
          v29 = [services countByEnumeratingWithState:&v54 objects:v70 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v55;
            do
            {
              for (k = 0; k != v30; ++k)
              {
                if (*v55 != v31)
                {
                  objc_enumerationMutation(services);
                }

                v33 = *(*(&v54 + 1) + 8 * k);
                type = [v33 type];
                v35 = [type isEqualToString:v23];

                if (v35)
                {
                  v36 = [v33 findCharacteristicWithType:v24];
                  if (v36)
                  {
                    v37 = [HMDCharacteristicRequest requestWithCharacteristic:v36];
                    [array addObject:v37];

                    v53 = 1;
                  }
                }
              }

              v30 = [services countByEnumeratingWithState:&v54 objects:v70 count:16];
            }

            while (v30);
          }

          v25 = obja + 1;
        }

        while (obja + 1 != v48);
        v48 = [v46 countByEnumeratingWithState:&v58 objects:v71 count:16];
      }

      while (v48);
      v22 = v46;

      if (v53)
      {
        v38 = strongToStrongObjectsMapTable;
LABEL_50:
        home = v45;

        goto LABEL_51;
      }
    }

    else
    {
    }

    v38 = 0;
    goto LABEL_50;
  }

  v39 = objc_autoreleasePoolPush();
  selfCopy = self;
  v41 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
  {
    v42 = HMFGetLogIdentifier();
    *buf = 138543362;
    v75 = v42;
    _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, "%{public}@This device is not the resident, not issuing the periodic read", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v39);
  v38 = 0;
LABEL_51:

  v43 = *MEMORY[0x277D85DE8];

  return v38;
}

- (void)residentUpdated
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Resident updated, issuing a read", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDHomePeriodicReader *)selfCopy checkToIssueRead];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleTimerFiredNotification:(id)notification
{
  v18 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo hmf_stringForKey:@"HMD.BGTM.NK"];

  timerID = [(HMDHomePeriodicReader *)self timerID];
  v8 = HMFEqualObjects();

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Issuing read for fired timer with ID: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDHomePeriodicReader *)selfCopy checkToIssueRead];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleCharacteristicBasedEventAdded:(id)added
{
  v12 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Received characteristic event added notification", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDHomePeriodicReader *)selfCopy startReadTimer];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  home = [(HMDHomePeriodicReader *)self home];
  v3 = MEMORY[0x277CCACA8];
  name = [home name];
  uuid = [home uuid];
  uUIDString = [uuid UUIDString];
  v7 = [v3 stringWithFormat:@"%@/%@", name, uUIDString];

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = HMDHomePeriodicReader;
  [(HMDHomePeriodicReader *)&v4 dealloc];
}

- (void)configure:(id)configure
{
  configureCopy = configure;
  objc_storeWeak(&self->_home, configureCopy);
  workQueue = [configureCopy workQueue];
  workQueue = self->_workQueue;
  self->_workQueue = workQueue;

  v7 = MEMORY[0x277CCACA8];
  uuid = [configureCopy uuid];
  uUIDString = [uuid UUIDString];
  v10 = [v7 stringWithFormat:@"periodic.read/%@", uUIDString];
  timerID = self->_timerID;
  self->_timerID = v10;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_handleCharacteristicBasedEventAdded_ name:@"HMDEventTriggerCharacteristicBasedEventAddedNotification" object:configureCopy];

  [(HMDHomePeriodicReader *)self startReadTimer];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_129461 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_129461, &__block_literal_global_129462);
  }

  v3 = logCategory__hmf_once_v1_129463;

  return v3;
}

void __36__HMDHomePeriodicReader_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_129463;
  logCategory__hmf_once_v1_129463 = v1;
}

@end