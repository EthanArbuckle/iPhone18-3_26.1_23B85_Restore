@interface HMDRestrictedGuestHomeAccessSettings
+ (BOOL)shouldConsiderStartDate:(id)a3 endDate:(id)a4 currentTime:(id)a5;
+ (id)convertWeekDayRulesToDateIntervals:(id)a3 currentTime:(id)a4 timeZone:(id)a5;
+ (id)dateIntervalFromWeekDayRule:(id)a3 currentTime:(id)a4 timeZone:(id)a5;
+ (id)logCategory;
+ (id)mergeIntervals:(id)a3;
+ (void)__logIntervals:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)updateRestrictedGuestSettingsFromWorkingStore:(id)a3;
- (HMDRestrictedGuestHomeAccessSettings)initWithAllowedAccessories:(id)a3 schedule:(id)a4;
- (HMDRestrictedGuestHomeAccessSettings)initWithCoder:(id)a3;
- (HMDRestrictedGuestHomeAccessSettings)initWithRestrictedGuestHomeAccessSettings:(id)a3;
- (HMRestrictedGuestHomeAccessSchedule)schedule;
- (NSArray)matterWeekDaySchedules;
- (NSArray)uuidsOfAllowedAccessories;
- (id)_nextScheduledIntervalFromDate:(id)a3 timeZone:(id)a4;
- (id)attributeDescriptions;
- (id)matterYearDaySchedulesWithTimeZone:(id)a3;
- (id)nextScheduledInterval;
- (void)encodeWithCoder:(id)a3;
- (void)setSchedule:(id)a3;
- (void)setUuidsOfAllowedAccessories:(id)a3;
@end

@implementation HMDRestrictedGuestHomeAccessSettings

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDRestrictedGuestHomeAccessSettings *)self uuidsOfAllowedAccessories];
  v5 = [v3 initWithName:@"allowedAccessories" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDRestrictedGuestHomeAccessSettings *)self schedule];
  v8 = [v6 initWithName:@"schedule" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_nextScheduledIntervalFromDate:(id)a3 timeZone:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDRestrictedGuestHomeAccessSettings *)self schedule];

  if (v8)
  {
    v9 = [MEMORY[0x277CBEB18] array];
    v10 = objc_opt_class();
    v11 = [(HMDRestrictedGuestHomeAccessSettings *)self schedule];
    v12 = [v11 weekDayRules];
    v13 = [v10 convertWeekDayRulesToDateIntervals:v12 currentTime:v6 timeZone:v7];
    [v9 addObjectsFromArray:v13];

    v14 = [(HMDRestrictedGuestHomeAccessSettings *)self schedule];
    v15 = [v14 yearDayRules];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __80__HMDRestrictedGuestHomeAccessSettings__nextScheduledIntervalFromDate_timeZone___block_invoke;
    v20[3] = &unk_278670B88;
    v20[4] = self;
    v21 = v6;
    v16 = v9;
    v22 = v16;
    [v15 hmf_enumerateWithAutoreleasePoolUsingBlock:v20];

    v17 = [objc_opt_class() mergeIntervals:v16];
    if ([v17 count])
    {
      v18 = [v17 firstObject];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void __80__HMDRestrictedGuestHomeAccessSettings__nextScheduledIntervalFromDate_timeZone___block_invoke(void *a1, void *a2)
{
  v11 = a2;
  v3 = a1[4];
  v4 = objc_opt_class();
  v5 = [v11 dateInterval];
  v6 = [v5 startDate];
  v7 = [v11 dateInterval];
  v8 = [v7 endDate];
  LODWORD(v4) = [v4 shouldConsiderStartDate:v6 endDate:v8 currentTime:a1[5]];

  if (v4)
  {
    v9 = a1[6];
    v10 = [v11 dateInterval];
    [v9 addObject:v10];
  }
}

- (id)nextScheduledInterval
{
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [MEMORY[0x277CBEBB0] localTimeZone];
  v6 = [(HMDRestrictedGuestHomeAccessSettings *)self _nextScheduledIntervalFromDate:v4 timeZone:v5];

  objc_autoreleasePoolPop(v3);

  return v6;
}

- (BOOL)updateRestrictedGuestSettingsFromWorkingStore:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v5 = [v4 home];
  v6 = [v5 backingStore];
  v7 = [v6 context];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __86__HMDRestrictedGuestHomeAccessSettings_updateRestrictedGuestSettingsFromWorkingStore___block_invoke;
  v10[3] = &unk_27868A4D8;
  v10[4] = self;
  v8 = v4;
  v11 = v8;
  v12 = &v13;
  [v7 unsafeSynchronousBlock:v10];
  LOBYTE(v4) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v4;
}

void __86__HMDRestrictedGuestHomeAccessSettings_updateRestrictedGuestSettingsFromWorkingStore___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v36 = 138543618;
    v37 = v5;
    v38 = 2112;
    v39 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Going to update the schedule for restricted guest : %@", &v36, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 40) uuid];
  v8 = [HMCContext findGuestWithModelID:v7];

  if (v8)
  {
    v9 = [v8 allowedAccessoryUUIDs];
    v10 = [*(a1 + 32) uuidsOfAllowedAccessories];
    v11 = [v10 asSet];
    v12 = [v9 asSet];
    v13 = HMFEqualObjects();

    if ((v13 & 1) == 0)
    {
      [*(a1 + 32) setUuidsOfAllowedAccessories:v9];
      v14 = objc_autoreleasePoolPush();
      v15 = *(a1 + 32);
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        v18 = *(a1 + 40);
        v36 = 138543874;
        v37 = v17;
        v38 = 2112;
        v39 = v18;
        v40 = 2112;
        v41 = v9;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Updated the allowed accessories for restricted guest: %@, to: %@", &v36, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
    }

    v19 = [v8 restrictedGuestSchedule];
    v20 = [*(a1 + 32) schedule];
    v21 = HMFEqualObjects();

    if ((v21 & 1) == 0)
    {
      [*(a1 + 32) setSchedule:v19];
      v22 = objc_autoreleasePoolPush();
      v23 = *(a1 + 32);
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        v26 = *(a1 + 40);
        v36 = 138543874;
        v37 = v25;
        v38 = 2112;
        v39 = v26;
        v40 = 2112;
        v41 = v19;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Updated the schedule for restricted guest: %@, to: %@", &v36, 0x20u);
      }

      objc_autoreleasePoolPop(v22);
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    if (!v13 || *(*(*(a1 + 48) + 8) + 24) == 1)
    {
      v27 = [*(a1 + 40) home];
      v28 = [v27 homeManager];
      v29 = [*(a1 + 40) uuid];
      [v28 updateGenerationCounterWithReason:@"RGScheduleGotUpdated" sourceUUID:v29 shouldNotifyClients:1];
    }
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    v31 = *(a1 + 32);
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      v34 = [*(a1 + 40) uuid];
      v36 = 138543618;
      v37 = v33;
      v38 = 2112;
      v39 = v34;
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Unable to find restricted guest in working store with UUID: %@", &v36, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = MEMORY[0x277CBEB98];
  v10 = [(HMDRestrictedGuestHomeAccessSettings *)self uuidsOfAllowedAccessories];
  v11 = [v9 setWithArray:v10];

  v12 = MEMORY[0x277CBEB98];
  v13 = [v8 uuidsOfAllowedAccessories];
  v14 = [v12 setWithArray:v13];

  if (v8 && HMFEqualObjects())
  {
    v15 = [(HMDRestrictedGuestHomeAccessSettings *)self schedule];
    v16 = [v8 schedule];
    v17 = HMFEqualObjects();
  }

  else
  {
    v17 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return v17;
}

- (id)matterYearDaySchedulesWithTimeZone:(id)a3
{
  v4 = a3;
  v5 = [(HMDRestrictedGuestHomeAccessSettings *)self schedule];
  v6 = [v5 yearDayRules];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__HMDRestrictedGuestHomeAccessSettings_matterYearDaySchedulesWithTimeZone___block_invoke;
  v13[3] = &unk_278670B60;
  v14 = v4;
  v7 = v4;
  v8 = [v6 na_map:v13];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  v11 = v10;

  return v10;
}

id __75__HMDRestrictedGuestHomeAccessSettings_matterYearDaySchedulesWithTimeZone___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D17BA0];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 dateInterval];
  v7 = [v6 startDate];
  v8 = [v4 dateInterval];

  v9 = [v8 endDate];
  v10 = [v5 initWithStartTime:v7 endTime:v9 withTimeZone:*(a1 + 32)];

  return v10;
}

- (NSArray)matterWeekDaySchedules
{
  v2 = [(HMDRestrictedGuestHomeAccessSettings *)self schedule];
  v3 = [v2 weekDayRules];
  v4 = [v3 na_map:&__block_literal_global_15862];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v7 = v6;

  return v6;
}

id __62__HMDRestrictedGuestHomeAccessSettings_matterWeekDaySchedules__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D17B98];
  v3 = a2;
  v19 = [v2 alloc];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "daysOfTheWeek")}];
  v5 = MEMORY[0x277CCABB0];
  v6 = [v3 startTime];
  v7 = [v5 numberWithInteger:{objc_msgSend(v6, "hour")}];
  v8 = MEMORY[0x277CCABB0];
  v9 = [v3 startTime];
  v10 = [v8 numberWithInteger:{objc_msgSend(v9, "minute")}];
  v11 = MEMORY[0x277CCABB0];
  v12 = [v3 endTime];
  v13 = [v11 numberWithInteger:{objc_msgSend(v12, "hour")}];
  v14 = MEMORY[0x277CCABB0];
  v15 = [v3 endTime];

  v16 = [v14 numberWithInteger:{objc_msgSend(v15, "minute")}];
  v17 = [v19 initWithDaysMask:v4 startHour:v7 startMinute:v10 endHour:v13 endMinute:v16];

  return v17;
}

- (void)setSchedule:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  schedule = self->_schedule;
  self->_schedule = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMRestrictedGuestHomeAccessSchedule)schedule
{
  os_unfair_lock_lock_with_options();
  v3 = self->_schedule;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setUuidsOfAllowedAccessories:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  uuidsOfAllowedAccessories = self->_uuidsOfAllowedAccessories;
  self->_uuidsOfAllowedAccessories = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)uuidsOfAllowedAccessories
{
  os_unfair_lock_lock_with_options();
  v3 = self->_uuidsOfAllowedAccessories;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDRestrictedGuestHomeAccessSettings *)self uuidsOfAllowedAccessories];
  [v4 encodeObject:v5 forKey:*MEMORY[0x277CD0D08]];

  v6 = [(HMDRestrictedGuestHomeAccessSettings *)self schedule];
  [v4 encodeObject:v6 forKey:*MEMORY[0x277CD0D18]];
}

- (HMDRestrictedGuestHomeAccessSettings)initWithCoder:(id)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v7 = [v4 setWithArray:v6];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:*MEMORY[0x277CD0D08]];

  v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD0D18]];

  v10 = [(HMDRestrictedGuestHomeAccessSettings *)self initWithAllowedAccessories:v8 schedule:v9];
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (HMDRestrictedGuestHomeAccessSettings)initWithAllowedAccessories:(id)a3 schedule:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDRestrictedGuestHomeAccessSettings;
  v9 = [(HMDRestrictedGuestHomeAccessSettings *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_uuidsOfAllowedAccessories, a3);
    objc_storeStrong(&v10->_schedule, a4);
  }

  return v10;
}

- (HMDRestrictedGuestHomeAccessSettings)initWithRestrictedGuestHomeAccessSettings:(id)a3
{
  v4 = a3;
  v5 = [v4 identifiersOfAccessAllowedToAccessories];
  v6 = [v5 allObjects];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  v8 = [v4 guestAccessSchedule];

  v9 = [(HMDRestrictedGuestHomeAccessSettings *)self initWithAllowedAccessories:v7 schedule:v8];
  return v9;
}

+ (void)__logIntervals:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __55__HMDRestrictedGuestHomeAccessSettings___logIntervals___block_invoke;
  v3[3] = &__block_descriptor_40_e31_v32__0__NSDateInterval_8Q16_B24l;
  v3[4] = a1;
  [a3 hmf_enumerateWithAutoreleasePoolUsingBlock:v3];
}

void __55__HMDRestrictedGuestHomeAccessSettings___logIntervals___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [v3 startDate];
    v9 = [v3 endDate];
    v11 = 138543874;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@[%@, %@]", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v10 = *MEMORY[0x277D85DE8];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t12_15889 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t12_15889, &__block_literal_global_24);
  }

  v3 = logCategory__hmf_once_v13_15890;

  return v3;
}

void __51__HMDRestrictedGuestHomeAccessSettings_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v13_15890;
  logCategory__hmf_once_v13_15890 = v1;
}

+ (BOOL)shouldConsiderStartDate:(id)a3 endDate:(id)a4 currentTime:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 compare:v8];
  v12 = [v10 compare:v9];
  v13 = objc_autoreleasePoolPush();
  v14 = a1;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v16 = v23 = v13;
    v17 = HMFBooleanToString();
    v18 = HMFBooleanToString();
    *buf = 138544386;
    v25 = v16;
    v26 = 2112;
    v27 = v8;
    v28 = 2112;
    v29 = v17;
    v30 = 2112;
    v31 = v9;
    v32 = 2112;
    v33 = v18;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@startDate: %@ / in future: %@, endDate: %@ / in future: %@", buf, 0x34u);

    v13 = v23;
  }

  objc_autoreleasePoolPop(v13);
  v20 = v11 != 1 || v12 != 1;

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

+ (id)mergeIntervals:(id)a3
{
  v3 = a3;
  if ([v3 hmf_isEmpty])
  {
    v4 = MEMORY[0x277CBEBF8];
    goto LABEL_17;
  }

  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  [v3 sortUsingComparator:&__block_literal_global_21_15895];
  v6 = [v3 firstObject];
  v7 = [v6 startDate];

  v8 = [v3 firstObject];
  v9 = [v8 endDate];

  if ([v3 count] >= 2)
  {
    v10 = 2;
    v11 = 1;
    while (1)
    {
      v12 = [v3 objectAtIndexedSubscript:v11];
      [v9 timeIntervalSince1970];
      v14 = v13;
      v15 = [v12 startDate];
      [v15 timeIntervalSince1970];
      if (v14 > v16)
      {
        break;
      }

      v17 = vabdd_f64(v14, v16);

      if (v17 < 2.22044605e-16)
      {
        goto LABEL_8;
      }

      v25 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v7 endDate:v9];
      [v5 addObject:v25];

      v26 = [v12 startDate];

      v24 = [v12 endDate];
      v7 = v26;
LABEL_13:

      v11 = v10;
      v27 = [v3 count] > v10++;
      v9 = v24;
      if (!v27)
      {
        goto LABEL_16;
      }
    }

LABEL_8:
    [v9 timeIntervalSince1970];
    v19 = v18;
    v20 = [v12 endDate];
    [v20 timeIntervalSince1970];
    v22 = v21;

    if (v19 >= v22)
    {
      v23 = v19;
    }

    else
    {
      v23 = v22;
    }

    v24 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v23];
    goto LABEL_13;
  }

  v24 = v9;
LABEL_16:
  v28 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v7 endDate:v24];
  [v5 addObject:v28];

  v4 = [v5 copy];
LABEL_17:

  return v4;
}

+ (id)dateIntervalFromWeekDayRule:(id)a3 currentTime:(id)a4 timeZone:(id)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v24 = 0;
    goto LABEL_17;
  }

  [v8 daysOfTheWeek];
  v11 = HMDaysOfTheWeekToDateComponents();
  v12 = [v8 startTime];
  v13 = [HMDCalendarEvent nextTimerDateAfterDate:v9 timeZone:v10 fireDateComponents:v12 recurrences:v11];

  v14 = [v8 endTime];
  if ([v14 hour] == 23)
  {
    v15 = [v8 endTime];
    v16 = [v15 minute];

    if (v16 == 59)
    {
      v36 = v13;
      v38 = v11;
      v17 = [v9 addTimeInterval:86400.0];
      v18 = [MEMORY[0x277CBEA80] currentCalendar];
      v19 = [v18 components:124 fromDate:v17];

      v20 = objc_alloc_init(MEMORY[0x277CBEAB8]);
      v21 = [MEMORY[0x277CBEA80] currentCalendar];
      [v20 setWeekday:{objc_msgSend(v21, "component:fromDate:", 512, v9)}];

      if ([v19 hour] != 23)
      {
        goto LABEL_20;
      }

      if ([v19 minute] == 59 && objc_msgSend(v38, "containsObject:", v20))
      {
        [v19 setHour:0];
        [v19 setMinute:0];
        [v19 setSecond:0];
        v22 = [MEMORY[0x277CBEA80] currentCalendar];
        v23 = [v22 dateFromComponents:v19];
      }

      else
      {
LABEL_20:
        v23 = 0;
      }

      v13 = v36;
      v11 = v38;
      if (v23)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
  }

  v25 = [v8 endTime];
  v23 = [HMDCalendarEvent nextTimerDateAfterDate:v9 timeZone:v10 fireDateComponents:v25 recurrences:v11];

LABEL_11:
  if ([v13 compare:v23] == 1)
  {
    v37 = v13;
    v39 = v11;
    v26 = [v8 startTime];
    [v26 hour];
    v27 = [v8 startTime];
    [v27 minute];
    v28 = HMDateFromDateWithHourAndMinuteComponents();

    v29 = v23;
    v30 = objc_autoreleasePoolPush();
    v31 = a1;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543874;
      v41 = v33;
      v42 = 2112;
      v43 = v28;
      v44 = 2112;
      v45 = v29;
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@weekDayRuleStart: %@, weekDayRuleEnd: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v30);
    v24 = HMMatterScheduleIntervalFromStartAndEndDates();

    v13 = v37;
    v11 = v39;
  }

  else
  {
    v24 = HMMatterScheduleIntervalFromStartAndEndDates();
  }

LABEL_17:
  v34 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (id)convertWeekDayRulesToDateIntervals:(id)a3 currentTime:(id)a4 timeZone:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && [v8 count])
  {
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v26 = v8;
    obj = v8;
    v31 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
    if (v31)
    {
      v12 = *v33;
      v28 = v11;
      v29 = a1;
      v27 = v10;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = [a1 dateIntervalFromWeekDayRule:*(*(&v32 + 1) + 8 * i) currentTime:v9 timeZone:v10];
          if (v14)
          {
            v15 = objc_autoreleasePoolPush();
            v16 = a1;
            v17 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              v18 = HMFGetLogIdentifier();
              v19 = [v14 startDate];
              [v14 endDate];
              v20 = v12;
              v22 = v21 = v9;
              *buf = 138543874;
              v37 = v18;
              v38 = 2112;
              v39 = v19;
              v40 = 2112;
              v41 = v22;
              _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@[Calculated interval : [%@, %@]]", buf, 0x20u);

              v9 = v21;
              v12 = v20;

              v10 = v27;
              a1 = v29;

              v11 = v28;
            }

            objc_autoreleasePoolPop(v15);
            [v11 addObject:v14];
          }
        }

        v31 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
      }

      while (v31);
    }

    v23 = [v11 copy];
    v8 = v26;
  }

  else
  {
    v23 = MEMORY[0x277CBEBF8];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

@end