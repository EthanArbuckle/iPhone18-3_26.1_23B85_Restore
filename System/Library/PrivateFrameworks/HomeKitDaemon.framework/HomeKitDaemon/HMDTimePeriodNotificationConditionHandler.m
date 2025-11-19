@interface HMDTimePeriodNotificationConditionHandler
+ (id)logCategory;
- (BOOL)canHandleCondition:(id)a3;
- (BOOL)conditionPasses:(id)a3 registrationUser:(id)a4;
- (HMDHome)home;
- (HMDTimePeriodNotificationConditionHandler)initWithHome:(id)a3;
- (HMDTimePeriodNotificationConditionHandler)initWithHome:(id)a3 timeProvider:(id)a4 sunriseSunsetProvider:(id)a5;
- (id)_dateComponentsForTimePeriodElement:(id)a3 home:(id)a4;
- (id)_dateTodayMatchingComponents:(id)a3;
@end

@implementation HMDTimePeriodNotificationConditionHandler

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)_dateTodayMatchingComponents:(id)a3
{
  v4 = a3;
  v5 = [(HMDTimePeriodNotificationConditionHandler *)self timeProvider];
  v6 = [v5 currentDate];

  v7 = [MEMORY[0x277CBEA80] currentCalendar];
  v8 = [v7 components:124 fromDate:v6];
  [v8 setHour:{objc_msgSend(v4, "hour")}];
  v9 = [v4 minute];

  [v8 setMinute:v9];
  v10 = [v7 dateFromComponents:v8];

  return v10;
}

- (id)_dateComponentsForTimePeriodElement:(id)a3 home:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  if (v8 == objc_opt_class())
  {
    v15 = v6;
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
    v18 = [v17 minute];

    [v14 setMinute:v18];
    [v14 setSecond:0];
    goto LABEL_22;
  }

  v9 = objc_opt_class();
  if (v9 == objc_opt_class())
  {
    v19 = v6;
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

    v22 = [v21 significantEvent];
    v23 = [v22 isEqualToString:*MEMORY[0x277CD0FA8]];

    if (v23)
    {
      v24 = [(HMDTimePeriodNotificationConditionHandler *)self sunriseSunsetProvider];
      v25 = [v24 sunriseTimeForHome:v7];
    }

    else
    {
      v26 = [v21 significantEvent];
      v27 = [v26 isEqualToString:*MEMORY[0x277CD0FB0]];

      if (!v27)
      {
        v34 = objc_autoreleasePoolPush();
        v35 = self;
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v37 = HMFGetLogIdentifier();
          v38 = [v21 significantEvent];
          v41 = 138543618;
          v42 = v37;
          v43 = 2112;
          v44 = v38;
          _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@Only sunrise & sunset are supported, not: %@", &v41, 0x16u);
        }

        objc_autoreleasePoolPop(v34);
        v14 = 0;
        goto LABEL_21;
      }

      v24 = [(HMDTimePeriodNotificationConditionHandler *)self sunriseSunsetProvider];
      v25 = [v24 sunsetTimeForHome:v7];
    }

    v28 = v25;

    v29 = objc_alloc(MEMORY[0x277CBEA80]);
    v30 = [v29 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
    v31 = [v21 offset];
    v32 = [v30 dateByAddingComponents:v31 toDate:v28 options:0];

    v33 = [v32 hmf_dateComponents];
    v14 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v14 setHour:{objc_msgSend(v33, "hour")}];
    [v14 setMinute:{objc_msgSend(v33, "minute")}];

LABEL_21:
    goto LABEL_22;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    v41 = 138543618;
    v42 = v13;
    v43 = 2112;
    v44 = v6;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unsupported HMDTimePeriodElement: %@", &v41, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v14 = 0;
LABEL_22:

  v39 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)conditionPasses:(id)a3 registrationUser:(id)a4
{
  v62 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v49 = a4;
  v7 = v6;
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
    v10 = [v9 startElement];
    v11 = [v9 endElement];
    v12 = [(HMDTimePeriodNotificationConditionHandler *)self home];
    v48 = v10;
    v13 = [(HMDTimePeriodNotificationConditionHandler *)self _dateComponentsForTimePeriodElement:v10 home:v12];
    v47 = v11;
    v14 = [(HMDTimePeriodNotificationConditionHandler *)self _dateComponentsForTimePeriodElement:v11 home:v12];
    v15 = objc_autoreleasePoolPush();
    v16 = self;
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
      v45 = v12;
      v19 = [(HMDTimePeriodNotificationConditionHandler *)v16 _dateTodayMatchingComponents:v13];
      v20 = [(HMDTimePeriodNotificationConditionHandler *)v16 _dateTodayMatchingComponents:v14];
      v21 = [(HMDTimePeriodNotificationConditionHandler *)v16 timeProvider];
      v22 = [v21 currentDate];

      v23 = [v19 compare:v20];
      v24 = objc_alloc(MEMORY[0x277CCA970]);
      v46 = v22;
      if (v23 == -1)
      {
        v25 = [v24 initWithStartDate:v19 endDate:v20];
        LOBYTE(v26) = [v25 containsDate:v22];
      }

      else
      {
        v25 = [v24 initWithStartDate:v20 endDate:v19];
        LODWORD(v26) = [v25 containsDate:v22] ^ 1;
      }

      v35 = objc_autoreleasePoolPush();
      v36 = v16;
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
      v12 = v45;
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      v26 = v16;
      v31 = HMFGetOSLogHandle();
      v32 = v47;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v43 = v14;
        v34 = v33 = v12;
        *buf = 138543874;
        v51 = v34;
        v52 = 2112;
        v53 = v48;
        v54 = 2112;
        v55 = v47;
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Unable to retrieve date components for startElement: %@ endElement: %@", buf, 0x20u);

        v12 = v33;
        v14 = v43;
      }

      objc_autoreleasePoolPop(v30);
      LOBYTE(v26) = 0;
    }
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = self;
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

- (BOOL)canHandleCondition:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & (v3 != 0);
}

- (HMDTimePeriodNotificationConditionHandler)initWithHome:(id)a3 timeProvider:(id)a4 sunriseSunsetProvider:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HMDTimePeriodNotificationConditionHandler;
  v11 = [(HMDTimePeriodNotificationConditionHandler *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_home, v8);
    objc_storeStrong(&v12->_timeProvider, a4);
    objc_storeStrong(&v12->_sunriseSunsetProvider, a5);
  }

  return v12;
}

- (HMDTimePeriodNotificationConditionHandler)initWithHome:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(HMDTimePeriodNotificationConditionDefaultTimeProvider);
  v6 = objc_alloc_init(HMDTimePeriodNotificationConditionDefaultSunsetSunriseProvider);
  v7 = [(HMDTimePeriodNotificationConditionHandler *)self initWithHome:v4 timeProvider:v5 sunriseSunsetProvider:v6];

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