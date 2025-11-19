@interface HMDCalendarEvent
+ (id)_nextRecurrentFireDateAfterDate:(id)a3 recurrences:(id)a4;
+ (id)logCategory;
+ (id)nextTimerDateAfterDate:(id)a3 timeZone:(id)a4 fireDateComponents:(id)a5 recurrences:(id)a6;
- (BOOL)areMonthDayNotMatching:(id)a3;
- (BOOL)isCompatibleWithEvent:(id)a3;
- (HMDCalendarEvent)initWithCoder:(id)a3;
- (HMDCalendarEvent)initWithModel:(id)a3 home:(id)a4;
- (NSDateComponents)fireDateComponents;
- (NSString)description;
- (id)_nextTimerDate;
- (id)_nextTimerDateAfterDate:(id)a3 timeZone:(id)a4;
- (id)analyticsTriggerEventData;
- (id)createPayload;
- (id)emptyModelObject;
- (id)modelObjectWithChangeType:(unint64_t)a3;
- (void)_handleUpdateRequest:(id)a3;
- (void)_transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
- (void)encodeWithCoder:(id)a3;
- (void)setFireDateComponents:(id)a3;
@end

@implementation HMDCalendarEvent

- (id)analyticsTriggerEventData
{
  v3 = objc_alloc_init(HMDAnalyticsTriggerEventData);
  [(HMDAnalyticsTriggerEventData *)v3 setEndEvent:[(HMDEvent *)self isEndEvent]];
  v4 = objc_alloc_init(HMDAnalyticsCalendarEventData);
  [(HMDAnalyticsTriggerEventData *)v3 setCalendarEvent:v4];

  return v3;
}

- (id)_nextTimerDateAfterDate:(id)a3 timeZone:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [(HMDCalendarEvent *)v9 fireDateComponents];
    v13 = [(HMDEvent *)v9 eventTrigger];
    v14 = [v13 recurrences];
    v22 = 138544130;
    v23 = v11;
    v24 = 2112;
    v25 = v6;
    v26 = 2112;
    v27 = v12;
    v28 = 2112;
    v29 = v14;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Determining next fire date after date %@ using components: %@ recurrence: %@", &v22, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  v15 = objc_opt_class();
  v16 = [(HMDCalendarEvent *)v9 fireDateComponents];
  v17 = [(HMDEvent *)v9 eventTrigger];
  v18 = [v17 recurrences];
  v19 = [v15 nextTimerDateAfterDate:v6 timeZone:v7 fireDateComponents:v16 recurrences:v18];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_nextTimerDate
{
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [MEMORY[0x277CBEBB0] localTimeZone];
  v5 = [(HMDCalendarEvent *)self _nextTimerDateAfterDate:v3 timeZone:v4];

  return v5;
}

- (BOOL)areMonthDayNotMatching:(id)a3
{
  v4 = a3;
  v5 = [(HMDCalendarEvent *)self fireDateComponents];
  v6 = [v5 month];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(HMDCalendarEvent *)self fireDateComponents];
    v8 = [v7 month];
    v9 = [v4 month];

    if (v8 != v9)
    {
      goto LABEL_6;
    }
  }

  v10 = [(HMDCalendarEvent *)self fireDateComponents];
  v11 = [v10 day];

  if (v11 == 0x7FFFFFFFFFFFFFFFLL || (-[HMDCalendarEvent fireDateComponents](self, "fireDateComponents"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 day], v14 = objc_msgSend(v4, "day"), v12, v13 == v14))
  {
    v15 = 0;
  }

  else
  {
LABEL_6:
    v15 = 1;
  }

  return v15;
}

- (void)_transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v26 = 138543362;
    v27 = v14;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Handling transaction updated", &v26, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  v15 = v9;
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

  if (v17)
  {
    v18 = [v17 fireDateComponents];

    if (v18)
    {
      v19 = MEMORY[0x277CBEAB8];
      v20 = [v17 fireDateComponents];
      v21 = [v19 hmf_unarchiveFromData:v20 error:0];

      if (v21)
      {
        v22 = [(HMDCalendarEvent *)v12 fireDateComponents];
        v23 = [v22 isEqual:v21];

        if ((v23 & 1) == 0)
        {
          [(HMDCalendarEvent *)v12 setFireDateComponents:v21];
          v24 = [(HMDEvent *)v12 eventTrigger];
          [v24 markChangedForMessage:v10];
        }
      }
    }

    [v10 respondWithSuccess];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)modelObjectWithChangeType:(unint64_t)a3
{
  v5 = [HMDCalendarEventModel alloc];
  v6 = [(HMDEvent *)self uuid];
  v7 = [(HMDEvent *)self eventTrigger];
  v8 = [v7 uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:a3 uuid:v6 parentUUID:v8];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDEvent isEndEvent](self, "isEndEvent")}];
  [(HMDCalendarEventModel *)v9 setEndEvent:v10];

  v11 = [(HMDCalendarEvent *)self fireDateComponents];
  v12 = encodeRootObject();
  [(HMDCalendarEventModel *)v9 setFireDateComponents:v12];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = HMDCalendarEvent;
  v4 = a3;
  [(HMDTimeEvent *)&v6 encodeWithCoder:v4];
  v5 = [(HMDCalendarEvent *)self fireDateComponents:v6.receiver];
  [v4 encodeObject:v5 forKey:*MEMORY[0x277CD20E8]];
}

- (HMDCalendarEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMDCalendarEvent;
  v5 = [(HMDTimeEvent *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD20E8]];
    fireDateComponents = v5->_fireDateComponents;
    v5->_fireDateComponents = v6;
  }

  return v5;
}

- (BOOL)isCompatibleWithEvent:(id)a3
{
  v4.receiver = self;
  v4.super_class = HMDCalendarEvent;
  return [(HMDTimeEvent *)&v4 isCompatibleWithEvent:a3];
}

- (void)setFireDateComponents:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  fireDateComponents = self->_fireDateComponents;
  self->_fireDateComponents = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDateComponents)fireDateComponents
{
  os_unfair_lock_lock_with_options();
  v3 = self->_fireDateComponents;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_handleUpdateRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 dataForKey:*MEMORY[0x277CD20E8]];
  v6 = [MEMORY[0x277CBEAB8] hmf_unarchiveFromData:v5 error:0];
  if ([HMDTimeEvent isValidAbsoluteDateComponents:v6])
  {
    v7 = [(HMDCalendarEvent *)self emptyModelObject];
    [v7 setFireDateComponents:v5];
    v8 = [(HMDEvent *)self eventTrigger];
    v9 = [v8 home];
    v10 = [v9 backingStore];
    v11 = [v4 name];
    v12 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v13 = [v10 transaction:v11 options:v12];

    [v13 add:v7];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __41__HMDCalendarEvent__handleUpdateRequest___block_invoke;
    v16[3] = &unk_27868A1D8;
    v17 = v4;
    v18 = v7;
    v14 = v7;
    [v13 run:v16];
  }

  else
  {
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [v4 respondWithError:v15];
  }
}

void __41__HMDCalendarEvent__handleUpdateRequest___block_invoke(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *MEMORY[0x277D85DE8];
    v4 = *(a1 + 32);

    [v4 respondWithError:a2];
  }

  else
  {
    v8 = *MEMORY[0x277CD20E8];
    v5 = [*(a1 + 40) fireDateComponents];
    v9[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [v2 respondWithPayload:v6];

    v7 = *MEMORY[0x277D85DE8];
  }
}

- (id)emptyModelObject
{
  v3 = [HMDCalendarEventModel alloc];
  v4 = [(HMDEvent *)self uuid];
  v5 = [(HMDEvent *)self eventTrigger];
  v6 = [v5 uuid];
  v7 = [(HMDBackingStoreModelObject *)v3 initWithObjectChangeType:2 uuid:v4 parentUUID:v6];

  return v7;
}

- (id)createPayload
{
  v3 = MEMORY[0x277CBEB38];
  v10.receiver = self;
  v10.super_class = HMDCalendarEvent;
  v4 = [(HMDEvent *)&v10 createPayload];
  v5 = [v3 dictionaryWithDictionary:v4];

  v6 = [(HMDCalendarEvent *)self fireDateComponents];
  v7 = encodeRootObject();
  [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x277CD20E8]];

  v8 = [v5 copy];

  return v8;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = HMDCalendarEvent;
  v4 = [(HMDEvent *)&v10 description];
  v5 = [(HMDCalendarEvent *)self fireDateComponents];
  v6 = [v5 hour];
  v7 = [(HMDCalendarEvent *)self fireDateComponents];
  v8 = [v3 stringWithFormat:@"[Calendar-Event: %@, %tuh:%tum]", v4, v6, objc_msgSend(v7, "minute")];

  return v8;
}

- (HMDCalendarEvent)initWithModel:(id)a3 home:(id)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = HMDCalendarEvent;
  v7 = [(HMDTimeEvent *)&v12 initWithModel:v6 home:a4];
  if (v7)
  {
    v8 = [v6 fireDateComponents];
    v9 = [v8 decodeDateComponents];
    fireDateComponents = v7->_fireDateComponents;
    v7->_fireDateComponents = v9;

    v7->_lock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

+ (id)_nextRecurrentFireDateAfterDate:(id)a3 recurrences:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEA80] currentCalendar];
  v8 = [v7 component:512 fromDate:v5];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    v13 = 7;
    v14 = v8;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v16 = [*(*(&v25 + 1) + 8 * i) weekday];
        v17 = (v16 - v8 + 7) % 7uLL;
        if (!v17)
        {
          v17 = 7;
        }

        if (v17 < v13)
        {
          v13 = v17;
          v14 = v16;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  else
  {
    v14 = v8;
  }

  v18 = [v5 hmf_dateComponents];
  v19 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v20 = [v18 timeZone];
  [v19 setTimeZone:v20];

  [v19 setHour:{objc_msgSend(v18, "hour")}];
  [v19 setMinute:{objc_msgSend(v18, "minute")}];
  [v19 setWeekday:v14];
  v21 = [MEMORY[0x277CBEA80] currentCalendar];
  v22 = [v21 nextDateAfterDate:v5 matchingComponents:v19 options:1024];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)nextTimerDateAfterDate:(id)a3 timeZone:(id)a4 fireDateComponents:(id)a5 recurrences:(id)a6
{
  v51 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 hmf_dateComponentsUsingTimeZone:v11];
  [v14 setTimeZone:v11];
  if ([v12 minute] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v14 setMinute:{objc_msgSend(v12, "minute")}];
  }

  if ([v12 hour] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v14 setHour:{objc_msgSend(v12, "hour")}];
  }

  if ([v12 day] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v14 setDay:{objc_msgSend(v12, "day")}];
  }

  if ([v12 month] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v14 setMonth:{objc_msgSend(v12, "month")}];
  }

  v15 = [MEMORY[0x277CBEA80] currentCalendar];
  [v15 setTimeZone:v11];
  v16 = [v15 dateFromComponents:v14];
  v17 = [v10 compare:v16];
  v46 = v13;
  if (![v13 count])
  {
    if (v17 != 1)
    {
      goto LABEL_14;
    }

    v44 = v10;
    if ([v12 month] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v32 = [v12 day];
      v33 = objc_alloc_init(MEMORY[0x277CBEAB8]);
      v34 = v33;
      if (v32 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v33 setDay:1];
        v35 = [v15 dateByAddingComponents:v34 toDate:v16 options:0];

        v36 = objc_autoreleasePoolPush();
        v37 = a1;
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          v39 = HMFGetLogIdentifier();
          *buf = 138543618;
          v48 = v39;
          v49 = 2112;
          v50 = v35;
          v40 = "%{public}@Determined next fire date by assigning fire date components to current date and adding one day: %@";
LABEL_28:
          _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, v40, buf, 0x16u);
        }
      }

      else
      {
        [v33 setMonth:1];
        v35 = [v15 dateByAddingComponents:v34 toDate:v16 options:0];

        v36 = objc_autoreleasePoolPush();
        v37 = a1;
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          v39 = HMFGetLogIdentifier();
          *buf = 138543618;
          v48 = v39;
          v49 = 2112;
          v50 = v35;
          v40 = "%{public}@Determined next fire date by assigning fire date components to current date and adding one month: %@";
          goto LABEL_28;
        }
      }
    }

    else
    {
      v34 = objc_alloc_init(MEMORY[0x277CBEAB8]);
      [v34 setYear:1];
      v35 = [v15 dateByAddingComponents:v34 toDate:v16 options:0];

      v36 = objc_autoreleasePoolPush();
      v37 = a1;
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = HMFGetLogIdentifier();
        *buf = 138543618;
        v48 = v39;
        v49 = 2112;
        v50 = v35;
        v40 = "%{public}@Determined next fire date by assigning fire date components to current date and adding one year: %@";
        goto LABEL_28;
      }
    }

    objc_autoreleasePoolPop(v36);
    v26 = v35;

    v10 = v44;
    goto LABEL_30;
  }

  v45 = v15;
  v18 = v11;
  v19 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v20 = [MEMORY[0x277CBEA80] currentCalendar];
  [v19 setWeekday:{objc_msgSend(v20, "component:fromDate:", 512, v16)}];

  if ([v13 containsObject:v19] && v17 != 1)
  {

    v11 = v18;
    v15 = v45;
LABEL_14:
    v21 = objc_autoreleasePoolPush();
    v22 = a1;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v25 = v24 = v10;
      *buf = 138543618;
      v48 = v25;
      v49 = 2112;
      v50 = v16;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Determined next fire date by assigning fire date components to current date: %@", buf, 0x16u);

      v10 = v24;
    }

    objc_autoreleasePoolPop(v21);
    v26 = v16;
    goto LABEL_30;
  }

  v27 = [objc_opt_class() _nextRecurrentFireDateAfterDate:v16 recurrences:v13];

  v28 = objc_autoreleasePoolPush();
  v29 = a1;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v31 = v43 = v10;
    *buf = 138543618;
    v48 = v31;
    v49 = 2112;
    v50 = v27;
    _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Determined next fire date by assigning fire recurrent date components to current date: %@", buf, 0x16u);

    v10 = v43;
  }

  objc_autoreleasePoolPop(v28);
  v26 = v27;

  v11 = v18;
  v15 = v45;
LABEL_30:

  v41 = *MEMORY[0x277D85DE8];

  return v26;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_14262 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_14262, &__block_literal_global_14263);
  }

  v3 = logCategory__hmf_once_v1_14264;

  return v3;
}

void __31__HMDCalendarEvent_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_14264;
  logCategory__hmf_once_v1_14264 = v1;
}

@end