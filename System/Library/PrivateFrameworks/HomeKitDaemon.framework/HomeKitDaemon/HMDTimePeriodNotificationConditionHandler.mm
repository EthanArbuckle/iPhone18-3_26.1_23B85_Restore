@interface HMDTimePeriodNotificationConditionHandler
+ (id)logCategory;
- (BOOL)canHandleCondition:(id)condition;
- (BOOL)conditionPasses:(id)passes registrationUser:(id)user;
- (HMDHome)home;
- (HMDTimePeriodNotificationConditionHandler)initWithHome:(id)home;
- (HMDTimePeriodNotificationConditionHandler)initWithHome:(id)home timeProvider:(id)provider sunriseSunsetProvider:(id)sunsetProvider;
- (id)_dateComponentsForTimePeriodElement:(id)element home:(id)home;
- (id)_dateTodayMatchingComponents:(id)components;
@end

@implementation HMDTimePeriodNotificationConditionHandler

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)_dateTodayMatchingComponents:(id)components
{
  componentsCopy = components;
  timeProvider = [(HMDTimePeriodNotificationConditionHandler *)self timeProvider];
  currentDate = [timeProvider currentDate];

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v8 = [currentCalendar components:124 fromDate:currentDate];
  [v8 setHour:{objc_msgSend(componentsCopy, "hour")}];
  minute = [componentsCopy minute];

  [v8 setMinute:minute];
  v10 = [currentCalendar dateFromComponents:v8];

  return v10;
}

- (id)_dateComponentsForTimePeriodElement:(id)element home:(id)home
{
  v45 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  homeCopy = home;
  v8 = objc_opt_class();
  if (v8 == objc_opt_class())
  {
    v15 = elementCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    v14 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v14 setHour:{objc_msgSend(v17, "hour")}];
    minute = [v17 minute];

    [v14 setMinute:minute];
    [v14 setSecond:0];
    goto LABEL_22;
  }

  v9 = objc_opt_class();
  if (v9 == objc_opt_class())
  {
    v19 = elementCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    significantEvent = [v21 significantEvent];
    v23 = [significantEvent isEqualToString:*MEMORY[0x277CD0FA8]];

    if (v23)
    {
      sunriseSunsetProvider = [(HMDTimePeriodNotificationConditionHandler *)self sunriseSunsetProvider];
      v25 = [sunriseSunsetProvider sunriseTimeForHome:homeCopy];
    }

    else
    {
      significantEvent2 = [v21 significantEvent];
      v27 = [significantEvent2 isEqualToString:*MEMORY[0x277CD0FB0]];

      if (!v27)
      {
        v34 = objc_autoreleasePoolPush();
        selfCopy = self;
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v37 = HMFGetLogIdentifier();
          significantEvent3 = [v21 significantEvent];
          v41 = 138543618;
          v42 = v37;
          v43 = 2112;
          v44 = significantEvent3;
          _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@Only sunrise & sunset are supported, not: %@", &v41, 0x16u);
        }

        objc_autoreleasePoolPop(v34);
        v14 = 0;
        goto LABEL_21;
      }

      sunriseSunsetProvider = [(HMDTimePeriodNotificationConditionHandler *)self sunriseSunsetProvider];
      v25 = [sunriseSunsetProvider sunsetTimeForHome:homeCopy];
    }

    v28 = v25;

    v29 = objc_alloc(MEMORY[0x277CBEA80]);
    v30 = [v29 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
    offset = [v21 offset];
    v32 = [v30 dateByAddingComponents:offset toDate:v28 options:0];

    hmf_dateComponents = [v32 hmf_dateComponents];
    v14 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v14 setHour:{objc_msgSend(hmf_dateComponents, "hour")}];
    [v14 setMinute:{objc_msgSend(hmf_dateComponents, "minute")}];

LABEL_21:
    goto LABEL_22;
  }

  v10 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    v41 = 138543618;
    v42 = v13;
    v43 = 2112;
    v44 = elementCopy;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unsupported HMDTimePeriodElement: %@", &v41, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v14 = 0;
LABEL_22:

  v39 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)conditionPasses:(id)passes registrationUser:(id)user
{
  v62 = *MEMORY[0x277D85DE8];
  passesCopy = passes;
  userCopy = user;
  v7 = passesCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    startElement = [v9 startElement];
    endElement = [v9 endElement];
    home = [(HMDTimePeriodNotificationConditionHandler *)self home];
    v48 = startElement;
    v13 = [(HMDTimePeriodNotificationConditionHandler *)self _dateComponentsForTimePeriodElement:startElement home:home];
    v47 = endElement;
    v14 = [(HMDTimePeriodNotificationConditionHandler *)self _dateComponentsForTimePeriodElement:endElement home:home];
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543874;
      v51 = v18;
      v52 = 2112;
      v53 = v13;
      v54 = 2112;
      v55 = v14;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Start: %@ End: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    if (v13 && v14)
    {
      v45 = home;
      v19 = [(HMDTimePeriodNotificationConditionHandler *)selfCopy _dateTodayMatchingComponents:v13];
      v20 = [(HMDTimePeriodNotificationConditionHandler *)selfCopy _dateTodayMatchingComponents:v14];
      timeProvider = [(HMDTimePeriodNotificationConditionHandler *)selfCopy timeProvider];
      currentDate = [timeProvider currentDate];

      v23 = [v19 compare:v20];
      v24 = objc_alloc(MEMORY[0x277CCA970]);
      v46 = currentDate;
      if (v23 == -1)
      {
        v25 = [v24 initWithStartDate:v19 endDate:v20];
        LOBYTE(v26) = [v25 containsDate:currentDate];
      }

      else
      {
        v25 = [v24 initWithStartDate:v20 endDate:v19];
        LODWORD(v26) = [v25 containsDate:currentDate] ^ 1;
      }

      v35 = objc_autoreleasePoolPush();
      v36 = selfCopy;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v38 = v44 = v14;
        HMFBooleanToString();
        v39 = v42 = v35;
        *buf = 138544642;
        v51 = v38;
        v52 = 2112;
        v53 = v7;
        v54 = 2112;
        v55 = v39;
        v56 = 2112;
        v57 = v19;
        v58 = 2112;
        v59 = v20;
        v60 = 2112;
        v61 = v46;
        _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@Condition: %@ passes: %@ for Start: %@ End: %@ Time: %@", buf, 0x3Eu);

        v35 = v42;
        v14 = v44;
      }

      objc_autoreleasePoolPop(v35);
      v32 = v47;
      home = v45;
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      v26 = selfCopy;
      v31 = HMFGetOSLogHandle();
      v32 = v47;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v43 = v14;
        v34 = v33 = home;
        *buf = 138543874;
        v51 = v34;
        v52 = 2112;
        v53 = v48;
        v54 = 2112;
        v55 = v47;
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Unable to retrieve date components for startElement: %@ endElement: %@", buf, 0x20u);

        home = v33;
        v14 = v43;
      }

      objc_autoreleasePoolPop(v30);
      LOBYTE(v26) = 0;
    }
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543618;
      v51 = v29;
      v52 = 2112;
      v53 = v7;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Attempting to evaluate a non-time period condition: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    LOBYTE(v26) = 0;
  }

  v40 = *MEMORY[0x277D85DE8];
  return v26;
}

- (BOOL)canHandleCondition:(id)condition
{
  conditionCopy = condition;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & (conditionCopy != 0);
}

- (HMDTimePeriodNotificationConditionHandler)initWithHome:(id)home timeProvider:(id)provider sunriseSunsetProvider:(id)sunsetProvider
{
  homeCopy = home;
  providerCopy = provider;
  sunsetProviderCopy = sunsetProvider;
  v14.receiver = self;
  v14.super_class = HMDTimePeriodNotificationConditionHandler;
  v11 = [(HMDTimePeriodNotificationConditionHandler *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_home, homeCopy);
    objc_storeStrong(&v12->_timeProvider, provider);
    objc_storeStrong(&v12->_sunriseSunsetProvider, sunsetProvider);
  }

  return v12;
}

- (HMDTimePeriodNotificationConditionHandler)initWithHome:(id)home
{
  homeCopy = home;
  v5 = objc_alloc_init(HMDTimePeriodNotificationConditionDefaultTimeProvider);
  v6 = objc_alloc_init(HMDTimePeriodNotificationConditionDefaultSunsetSunriseProvider);
  v7 = [(HMDTimePeriodNotificationConditionHandler *)self initWithHome:homeCopy timeProvider:v5 sunriseSunsetProvider:v6];

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t10_35919 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t10_35919, &__block_literal_global_35920);
  }

  v3 = logCategory__hmf_once_v11_35921;

  return v3;
}

void __56__HMDTimePeriodNotificationConditionHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v11_35921;
  logCategory__hmf_once_v11_35921 = v1;
}

@end