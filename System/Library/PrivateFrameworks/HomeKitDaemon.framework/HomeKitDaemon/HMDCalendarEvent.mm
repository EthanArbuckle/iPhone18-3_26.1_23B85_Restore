@interface HMDCalendarEvent
+ (id)_nextRecurrentFireDateAfterDate:(id)date recurrences:(id)recurrences;
+ (id)logCategory;
+ (id)nextTimerDateAfterDate:(id)date timeZone:(id)zone fireDateComponents:(id)components recurrences:(id)recurrences;
- (BOOL)areMonthDayNotMatching:(id)matching;
- (BOOL)isCompatibleWithEvent:(id)event;
- (HMDCalendarEvent)initWithCoder:(id)coder;
- (HMDCalendarEvent)initWithModel:(id)model home:(id)home;
- (NSDateComponents)fireDateComponents;
- (NSString)description;
- (id)_nextTimerDate;
- (id)_nextTimerDateAfterDate:(id)date timeZone:(id)zone;
- (id)analyticsTriggerEventData;
- (id)createPayload;
- (id)emptyModelObject;
- (id)modelObjectWithChangeType:(unint64_t)type;
- (void)_handleUpdateRequest:(id)request;
- (void)_transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
- (void)encodeWithCoder:(id)coder;
- (void)setFireDateComponents:(id)components;
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

- (id)_nextTimerDateAfterDate:(id)date timeZone:(id)zone
{
  v30 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  zoneCopy = zone;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    fireDateComponents = [(HMDCalendarEvent *)selfCopy fireDateComponents];
    eventTrigger = [(HMDEvent *)selfCopy eventTrigger];
    recurrences = [eventTrigger recurrences];
    v22 = 138544130;
    v23 = v11;
    v24 = 2112;
    v25 = dateCopy;
    v26 = 2112;
    v27 = fireDateComponents;
    v28 = 2112;
    v29 = recurrences;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Determining next fire date after date %@ using components: %@ recurrence: %@", &v22, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  v15 = objc_opt_class();
  fireDateComponents2 = [(HMDCalendarEvent *)selfCopy fireDateComponents];
  eventTrigger2 = [(HMDEvent *)selfCopy eventTrigger];
  recurrences2 = [eventTrigger2 recurrences];
  v19 = [v15 nextTimerDateAfterDate:dateCopy timeZone:zoneCopy fireDateComponents:fireDateComponents2 recurrences:recurrences2];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_nextTimerDate
{
  date = [MEMORY[0x277CBEAA8] date];
  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  v5 = [(HMDCalendarEvent *)self _nextTimerDateAfterDate:date timeZone:localTimeZone];

  return v5;
}

- (BOOL)areMonthDayNotMatching:(id)matching
{
  matchingCopy = matching;
  fireDateComponents = [(HMDCalendarEvent *)self fireDateComponents];
  month = [fireDateComponents month];

  if (month != 0x7FFFFFFFFFFFFFFFLL)
  {
    fireDateComponents2 = [(HMDCalendarEvent *)self fireDateComponents];
    month2 = [fireDateComponents2 month];
    month3 = [matchingCopy month];

    if (month2 != month3)
    {
      goto LABEL_6;
    }
  }

  fireDateComponents3 = [(HMDCalendarEvent *)self fireDateComponents];
  v11 = [fireDateComponents3 day];

  if (v11 == 0x7FFFFFFFFFFFFFFFLL || (-[HMDCalendarEvent fireDateComponents](self, "fireDateComponents"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 day], v14 = objc_msgSend(matchingCopy, "day"), v12, v13 == v14))
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

- (void)_transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  v28 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  valuesCopy = values;
  messageCopy = message;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v26 = 138543362;
    v27 = v14;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Handling transaction updated", &v26, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  v15 = valuesCopy;
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
    fireDateComponents = [v17 fireDateComponents];

    if (fireDateComponents)
    {
      v19 = MEMORY[0x277CBEAB8];
      fireDateComponents2 = [v17 fireDateComponents];
      v21 = [v19 hmf_unarchiveFromData:fireDateComponents2 error:0];

      if (v21)
      {
        fireDateComponents3 = [(HMDCalendarEvent *)selfCopy fireDateComponents];
        v23 = [fireDateComponents3 isEqual:v21];

        if ((v23 & 1) == 0)
        {
          [(HMDCalendarEvent *)selfCopy setFireDateComponents:v21];
          eventTrigger = [(HMDEvent *)selfCopy eventTrigger];
          [eventTrigger markChangedForMessage:messageCopy];
        }
      }
    }

    [messageCopy respondWithSuccess];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)modelObjectWithChangeType:(unint64_t)type
{
  v5 = [HMDCalendarEventModel alloc];
  uuid = [(HMDEvent *)self uuid];
  eventTrigger = [(HMDEvent *)self eventTrigger];
  uuid2 = [eventTrigger uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:type uuid:uuid parentUUID:uuid2];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDEvent isEndEvent](self, "isEndEvent")}];
  [(HMDCalendarEventModel *)v9 setEndEvent:v10];

  fireDateComponents = [(HMDCalendarEvent *)self fireDateComponents];
  v12 = encodeRootObject();
  [(HMDCalendarEventModel *)v9 setFireDateComponents:v12];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HMDCalendarEvent;
  coderCopy = coder;
  [(HMDTimeEvent *)&v6 encodeWithCoder:coderCopy];
  v5 = [(HMDCalendarEvent *)self fireDateComponents:v6.receiver];
  [coderCopy encodeObject:v5 forKey:*MEMORY[0x277CD20E8]];
}

- (HMDCalendarEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HMDCalendarEvent;
  v5 = [(HMDTimeEvent *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD20E8]];
    fireDateComponents = v5->_fireDateComponents;
    v5->_fireDateComponents = v6;
  }

  return v5;
}

- (BOOL)isCompatibleWithEvent:(id)event
{
  v4.receiver = self;
  v4.super_class = HMDCalendarEvent;
  return [(HMDTimeEvent *)&v4 isCompatibleWithEvent:event];
}

- (void)setFireDateComponents:(id)components
{
  componentsCopy = components;
  os_unfair_lock_lock_with_options();
  fireDateComponents = self->_fireDateComponents;
  self->_fireDateComponents = componentsCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDateComponents)fireDateComponents
{
  os_unfair_lock_lock_with_options();
  v3 = self->_fireDateComponents;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_handleUpdateRequest:(id)request
{
  requestCopy = request;
  v5 = [requestCopy dataForKey:*MEMORY[0x277CD20E8]];
  v6 = [MEMORY[0x277CBEAB8] hmf_unarchiveFromData:v5 error:0];
  if ([HMDTimeEvent isValidAbsoluteDateComponents:v6])
  {
    emptyModelObject = [(HMDCalendarEvent *)self emptyModelObject];
    [emptyModelObject setFireDateComponents:v5];
    eventTrigger = [(HMDEvent *)self eventTrigger];
    home = [eventTrigger home];
    backingStore = [home backingStore];
    name = [requestCopy name];
    v12 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v13 = [backingStore transaction:name options:v12];

    [v13 add:emptyModelObject];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __41__HMDCalendarEvent__handleUpdateRequest___block_invoke;
    v16[3] = &unk_27868A1D8;
    v17 = requestCopy;
    v18 = emptyModelObject;
    v14 = emptyModelObject;
    [v13 run:v16];
  }

  else
  {
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [requestCopy respondWithError:v15];
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
  uuid = [(HMDEvent *)self uuid];
  eventTrigger = [(HMDEvent *)self eventTrigger];
  uuid2 = [eventTrigger uuid];
  v7 = [(HMDBackingStoreModelObject *)v3 initWithObjectChangeType:2 uuid:uuid parentUUID:uuid2];

  return v7;
}

- (id)createPayload
{
  v3 = MEMORY[0x277CBEB38];
  v10.receiver = self;
  v10.super_class = HMDCalendarEvent;
  createPayload = [(HMDEvent *)&v10 createPayload];
  v5 = [v3 dictionaryWithDictionary:createPayload];

  fireDateComponents = [(HMDCalendarEvent *)self fireDateComponents];
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
  fireDateComponents = [(HMDCalendarEvent *)self fireDateComponents];
  hour = [fireDateComponents hour];
  fireDateComponents2 = [(HMDCalendarEvent *)self fireDateComponents];
  v8 = [v3 stringWithFormat:@"[Calendar-Event: %@, %tuh:%tum]", v4, hour, objc_msgSend(fireDateComponents2, "minute")];

  return v8;
}

- (HMDCalendarEvent)initWithModel:(id)model home:(id)home
{
  modelCopy = model;
  v12.receiver = self;
  v12.super_class = HMDCalendarEvent;
  v7 = [(HMDTimeEvent *)&v12 initWithModel:modelCopy home:home];
  if (v7)
  {
    fireDateComponents = [modelCopy fireDateComponents];
    decodeDateComponents = [fireDateComponents decodeDateComponents];
    fireDateComponents = v7->_fireDateComponents;
    v7->_fireDateComponents = decodeDateComponents;

    v7->_lock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

+ (id)_nextRecurrentFireDateAfterDate:(id)date recurrences:(id)recurrences
{
  v30 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  recurrencesCopy = recurrences;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v8 = [currentCalendar component:512 fromDate:dateCopy];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = recurrencesCopy;
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

        weekday = [*(*(&v25 + 1) + 8 * i) weekday];
        v17 = (weekday - v8 + 7) % 7uLL;
        if (!v17)
        {
          v17 = 7;
        }

        if (v17 < v13)
        {
          v13 = v17;
          v14 = weekday;
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

  hmf_dateComponents = [dateCopy hmf_dateComponents];
  v19 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  timeZone = [hmf_dateComponents timeZone];
  [v19 setTimeZone:timeZone];

  [v19 setHour:{objc_msgSend(hmf_dateComponents, "hour")}];
  [v19 setMinute:{objc_msgSend(hmf_dateComponents, "minute")}];
  [v19 setWeekday:v14];
  currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
  v22 = [currentCalendar2 nextDateAfterDate:dateCopy matchingComponents:v19 options:1024];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)nextTimerDateAfterDate:(id)date timeZone:(id)zone fireDateComponents:(id)components recurrences:(id)recurrences
{
  v51 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  zoneCopy = zone;
  componentsCopy = components;
  recurrencesCopy = recurrences;
  v14 = [dateCopy hmf_dateComponentsUsingTimeZone:zoneCopy];
  [v14 setTimeZone:zoneCopy];
  if ([componentsCopy minute] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v14 setMinute:{objc_msgSend(componentsCopy, "minute")}];
  }

  if ([componentsCopy hour] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v14 setHour:{objc_msgSend(componentsCopy, "hour")}];
  }

  if ([componentsCopy day] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v14 setDay:{objc_msgSend(componentsCopy, "day")}];
  }

  if ([componentsCopy month] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v14 setMonth:{objc_msgSend(componentsCopy, "month")}];
  }

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  [currentCalendar setTimeZone:zoneCopy];
  v16 = [currentCalendar dateFromComponents:v14];
  v17 = [dateCopy compare:v16];
  v46 = recurrencesCopy;
  if (![recurrencesCopy count])
  {
    if (v17 != 1)
    {
      goto LABEL_14;
    }

    v44 = dateCopy;
    if ([componentsCopy month] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v32 = [componentsCopy day];
      v33 = objc_alloc_init(MEMORY[0x277CBEAB8]);
      v34 = v33;
      if (v32 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v33 setDay:1];
        v35 = [currentCalendar dateByAddingComponents:v34 toDate:v16 options:0];

        v36 = objc_autoreleasePoolPush();
        selfCopy3 = self;
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
        v35 = [currentCalendar dateByAddingComponents:v34 toDate:v16 options:0];

        v36 = objc_autoreleasePoolPush();
        selfCopy3 = self;
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
      v35 = [currentCalendar dateByAddingComponents:v34 toDate:v16 options:0];

      v36 = objc_autoreleasePoolPush();
      selfCopy3 = self;
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

    dateCopy = v44;
    goto LABEL_30;
  }

  v45 = currentCalendar;
  v18 = zoneCopy;
  v19 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
  [v19 setWeekday:{objc_msgSend(currentCalendar2, "component:fromDate:", 512, v16)}];

  if ([recurrencesCopy containsObject:v19] && v17 != 1)
  {

    zoneCopy = v18;
    currentCalendar = v45;
LABEL_14:
    v21 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v25 = v24 = dateCopy;
      *buf = 138543618;
      v48 = v25;
      v49 = 2112;
      v50 = v16;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Determined next fire date by assigning fire date components to current date: %@", buf, 0x16u);

      dateCopy = v24;
    }

    objc_autoreleasePoolPop(v21);
    v26 = v16;
    goto LABEL_30;
  }

  v27 = [objc_opt_class() _nextRecurrentFireDateAfterDate:v16 recurrences:recurrencesCopy];

  v28 = objc_autoreleasePoolPush();
  selfCopy5 = self;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v31 = v43 = dateCopy;
    *buf = 138543618;
    v48 = v31;
    v49 = 2112;
    v50 = v27;
    _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Determined next fire date by assigning fire recurrent date components to current date: %@", buf, 0x16u);

    dateCopy = v43;
  }

  objc_autoreleasePoolPop(v28);
  v26 = v27;

  zoneCopy = v18;
  currentCalendar = v45;
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