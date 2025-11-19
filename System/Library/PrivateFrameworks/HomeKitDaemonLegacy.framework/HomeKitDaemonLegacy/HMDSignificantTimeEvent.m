@interface HMDSignificantTimeEvent
+ (id)logCategory;
+ (id)nextTimerDateFromHomeLocation:(id)a3 signifiantEvent:(id)a4 offset:(id)a5 loggingObject:(id)a6;
- (BOOL)isCompatibleWithEvent:(id)a3;
- (HMDSignificantTimeEvent)initWithCoder:(id)a3;
- (HMDSignificantTimeEvent)initWithModel:(id)a3 home:(id)a4;
- (NSDateComponents)offset;
- (NSString)description;
- (NSString)significantEvent;
- (id)_nextTimerDate;
- (id)analyticsTriggerEventData;
- (id)createPayload;
- (id)emptyModelObject;
- (id)modelObjectWithChangeType:(unint64_t)a3;
- (void)_handleUpdateRequest:(id)a3;
- (void)_transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
- (void)encodeWithCoder:(id)a3;
- (void)setOffset:(id)a3;
- (void)setSignificantEvent:(id)a3;
@end

@implementation HMDSignificantTimeEvent

- (id)analyticsTriggerEventData
{
  v3 = objc_alloc_init(HMDAnalyticsTriggerEventData);
  [(HMDAnalyticsTriggerEventData *)v3 setEndEvent:[(HMDEvent *)self isEndEvent]];
  v4 = objc_alloc_init(HMDAnalyticsSignificantTimeEventData);
  v5 = [(HMDSignificantTimeEvent *)self significantEvent];
  [(HMDAnalyticsSignificantTimeEventData *)v4 setSignificantEvent:v5];

  v6 = [(HMDSignificantTimeEvent *)self offset];
  [(HMDAnalyticsSignificantTimeEventData *)v4 setOffsetPresent:v6 != 0];

  [(HMDAnalyticsTriggerEventData *)v3 setSignificantTimeEvent:v4];

  return v3;
}

- (id)_nextTimerDate
{
  v3 = [(HMDEvent *)self eventTrigger];
  v4 = [v3 home];
  v5 = [v4 homeLocationHandler];
  v6 = [v5 location];
  v7 = [(HMDSignificantTimeEvent *)self significantEvent];
  v8 = [(HMDSignificantTimeEvent *)self offset];
  v9 = [HMDSignificantTimeEvent nextTimerDateFromHomeLocation:v6 signifiantEvent:v7 offset:v8 loggingObject:self];

  return v9;
}

- (void)_transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v31 = 138543362;
    v32 = v14;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Handling transaction updated", &v31, 0xCu);
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
    if ([v17 propertyWasSet:@"significantEvent"] && (-[HMDSignificantTimeEvent significantEvent](v12, "significantEvent"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "significantEvent"), v19 = objc_claimAutoreleasedReturnValue(), v20 = HMFEqualObjects(), v19, v18, (v20 & 1) == 0))
    {
      v22 = [v17 significantEvent];
      [(HMDSignificantTimeEvent *)v12 setSignificantEvent:v22];

      v21 = 1;
    }

    else
    {
      v21 = 0;
    }

    v23 = [v17 offset];

    if (v23)
    {
      v24 = MEMORY[0x277CBEAB8];
      v25 = [v17 offset];
      v26 = [v24 hmf_unarchiveFromData:v25 error:0];

      if (v26 && (-[HMDSignificantTimeEvent offset](v12, "offset"), v27 = objc_claimAutoreleasedReturnValue(), v28 = [v27 isEqual:v26], v27, (v28 & 1) == 0))
      {
        [(HMDSignificantTimeEvent *)v12 setOffset:v26];
      }

      else
      {

        if ((v21 & 1) == 0)
        {
          goto LABEL_20;
        }
      }
    }

    else if (!v21)
    {
      goto LABEL_20;
    }

    v29 = [(HMDEvent *)v12 eventTrigger];
    [v29 markChangedForMessage:v10];

LABEL_20:
    [v10 respondWithSuccess];
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (id)modelObjectWithChangeType:(unint64_t)a3
{
  v5 = [HMDSignificantTimeEventModel alloc];
  v6 = [(HMDEvent *)self uuid];
  v7 = [(HMDEvent *)self eventTrigger];
  v8 = [v7 uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:a3 uuid:v6 parentUUID:v8];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDEvent isEndEvent](self, "isEndEvent")}];
  [(HMDSignificantTimeEventModel *)v9 setEndEvent:v10];

  v11 = [(HMDSignificantTimeEvent *)self significantEvent];
  [(HMDSignificantTimeEventModel *)v9 setSignificantEvent:v11];

  v12 = [(HMDSignificantTimeEvent *)self offset];
  v13 = encodeRootObject();
  [(HMDSignificantTimeEventModel *)v9 setOffset:v13];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = HMDSignificantTimeEvent;
  v4 = a3;
  [(HMDTimeEvent *)&v7 encodeWithCoder:v4];
  v5 = [(HMDSignificantTimeEvent *)self significantEvent:v7.receiver];
  [v4 encodeObject:v5 forKey:*MEMORY[0x277CD2688]];

  v6 = [(HMDSignificantTimeEvent *)self offset];
  [v4 encodeObject:v6 forKey:*MEMORY[0x277CD2680]];
}

- (HMDSignificantTimeEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HMDSignificantTimeEvent;
  v5 = [(HMDTimeEvent *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2688]];
    significantEvent = v5->_significantEvent;
    v5->_significantEvent = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2680]];
    offset = v5->_offset;
    v5->_offset = v8;
  }

  return v5;
}

- (BOOL)isCompatibleWithEvent:(id)a3
{
  v4.receiver = self;
  v4.super_class = HMDSignificantTimeEvent;
  return [(HMDTimeEvent *)&v4 isCompatibleWithEvent:a3];
}

- (void)setOffset:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  offset = self->_offset;
  self->_offset = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDateComponents)offset
{
  os_unfair_lock_lock_with_options();
  v3 = self->_offset;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setSignificantEvent:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  significantEvent = self->_significantEvent;
  self->_significantEvent = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)significantEvent
{
  os_unfair_lock_lock_with_options();
  v3 = self->_significantEvent;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_handleUpdateRequest:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x277CD2688];
  v6 = [v4 stringForKey:*MEMORY[0x277CD2688]];
  v7 = *MEMORY[0x277CD2680];
  v8 = [v4 dataForKey:*MEMORY[0x277CD2680]];
  v9 = [MEMORY[0x277CBEAB8] hmf_unarchiveFromData:v8 error:0];
  if (v6 | v9)
  {
    v11 = [(HMDSignificantTimeEvent *)self emptyModelObject];
    v12 = [MEMORY[0x277CBEB38] dictionary];
    if (v6)
    {
      [v11 setSignificantEvent:v6];
      [v12 setObject:v6 forKeyedSubscript:v5];
    }

    v21 = v9;
    if (v8)
    {
      [v11 setOffset:v8];
      [v12 setObject:v8 forKeyedSubscript:v7];
    }

    v13 = [(HMDEvent *)self eventTrigger];
    v14 = [v13 home];
    v15 = [v14 backingStore];
    [v4 name];
    v16 = v20 = v11;
    v17 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v18 = [v15 transaction:v16 options:v17];

    [v18 add:v20];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __48__HMDSignificantTimeEvent__handleUpdateRequest___block_invoke;
    v22[3] = &unk_2797358C8;
    v23 = v4;
    v24 = v12;
    v19 = v12;
    [v18 run:v22];

    v9 = v21;
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [v4 respondWithError:v10];
  }
}

void __48__HMDSignificantTimeEvent__handleUpdateRequest___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(a1 + 32);

    [v3 respondWithError:a2];
  }

  else
  {
    v4 = [*(a1 + 40) copy];
    [v2 respondWithPayload:v4];
  }
}

- (id)emptyModelObject
{
  v3 = [HMDSignificantTimeEventModel alloc];
  v4 = [(HMDEvent *)self uuid];
  v5 = [(HMDEvent *)self eventTrigger];
  v6 = [v5 uuid];
  v7 = [(HMDBackingStoreModelObject *)v3 initWithObjectChangeType:2 uuid:v4 parentUUID:v6];

  return v7;
}

- (id)createPayload
{
  v3 = MEMORY[0x277CBEB38];
  v11.receiver = self;
  v11.super_class = HMDSignificantTimeEvent;
  v4 = [(HMDEvent *)&v11 createPayload];
  v5 = [v3 dictionaryWithDictionary:v4];

  v6 = [(HMDSignificantTimeEvent *)self significantEvent];
  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x277CD2688]];

  v7 = [(HMDSignificantTimeEvent *)self offset];
  v8 = encodeRootObject();
  [v5 setObject:v8 forKeyedSubscript:*MEMORY[0x277CD2680]];

  v9 = [v5 copy];

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = HMDSignificantTimeEvent;
  v4 = [(HMDEvent *)&v10 description];
  v5 = [(HMDSignificantTimeEvent *)self significantEvent];
  v6 = [(HMDSignificantTimeEvent *)self offset];
  v7 = [v6 hmf_localTimeDescription];
  v8 = [v3 stringWithFormat:@"[Sig-Event: %@ Type:%@, %@]", v4, v5, v7];

  return v8;
}

- (HMDSignificantTimeEvent)initWithModel:(id)a3 home:(id)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = HMDSignificantTimeEvent;
  v7 = [(HMDTimeEvent *)&v14 initWithModel:v6 home:a4];
  if (v7)
  {
    v8 = [v6 significantEvent];
    significantEvent = v7->_significantEvent;
    v7->_significantEvent = v8;

    v10 = [v6 offset];
    v11 = [v10 decodeDateComponents];
    offset = v7->_offset;
    v7->_offset = v11;

    v7->_lock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

+ (id)nextTimerDateFromHomeLocation:(id)a3 signifiantEvent:(id)a4 offset:(id)a5 loggingObject:(id)a6
{
  v83 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (!v9)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = v12;
    v21 = v12;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v78 = v23;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to get next significant event fire date because home location is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v24 = 0;
    v12 = v20;
    goto LABEL_51;
  }

  v13 = [MEMORY[0x277CBEAA8] now];
  v14 = objc_autoreleasePoolPush();
  v15 = v12;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543874;
    v78 = v17;
    v79 = 2112;
    v80 = v9;
    v81 = 2112;
    v82 = v13;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Current Home Location & time : %@ / %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  if ([v10 isEqualToString:*MEMORY[0x277CD0FA8]])
  {
    v18 = [HMDLocation nextSunriseTimeForLocation:v9 date:v13];
  }

  else
  {
    if (![v10 isEqualToString:*MEMORY[0x277CD0FB0]])
    {
      v25 = 0;
      goto LABEL_13;
    }

    v18 = [HMDLocation nextSunsetTimeForLocation:v9 date:v13];
  }

  v25 = v18;
LABEL_13:
  v26 = objc_autoreleasePoolPush();
  v27 = v15;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = HMFGetLogIdentifier();
    *buf = 138543618;
    v78 = v29;
    v79 = 2112;
    v80 = v25;
    _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@nextSunEventDates %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v26);
  v30 = objc_autoreleasePoolPush();
  v31 = v27;
  v32 = HMFGetOSLogHandle();
  v33 = v32;
  v71 = v13;
  if (v25)
  {
    v69 = v10;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v34 = HMFGetLogIdentifier();
      v35 = [v25 describeElements:&__block_literal_global_19_66981];
      *buf = 138543618;
      v78 = v34;
      v79 = 2112;
      v80 = v35;
      _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@Set of events to pick from %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    v70 = v25;
    if (v11)
    {
      v67 = v12;
      v36 = objc_autoreleasePoolPush();
      v37 = v31;
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = HMFGetLogIdentifier();
        *buf = 138543618;
        v78 = v39;
        v79 = 2112;
        v80 = v11;
        _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@Adding offset %@ to the sun event dates", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v36);
      v40 = [MEMORY[0x277CBEB18] array];
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v41 = v25;
      v42 = [v41 countByEnumeratingWithState:&v72 objects:v76 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v73;
        do
        {
          for (i = 0; i != v43; ++i)
          {
            if (*v73 != v44)
            {
              objc_enumerationMutation(v41);
            }

            v46 = *(*(&v72 + 1) + 8 * i);
            v47 = [MEMORY[0x277CBEA80] currentCalendar];
            v48 = [v47 dateByAddingComponents:v11 toDate:v46 options:0];

            [v40 addObject:v48];
          }

          v43 = [v41 countByEnumeratingWithState:&v72 objects:v76 count:16];
        }

        while (v43);
      }

      v12 = v67;
      v25 = v70;
      v13 = v71;
    }

    else
    {
      v40 = [v25 mutableCopy];
    }

    [v40 addObject:v13];
    v50 = [v40 sortedArrayUsingComparator:&__block_literal_global_25_66986];
    v51 = objc_autoreleasePoolPush();
    v52 = v31;
    v53 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      v54 = HMFGetLogIdentifier();
      v55 = [v40 describeElements:&__block_literal_global_27_66987];
      *buf = 138543618;
      v78 = v54;
      v79 = 2112;
      v80 = v55;
      _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_INFO, "%{public}@Set of events to pick after offset & current time addition from %@", buf, 0x16u);

      v25 = v70;
    }

    objc_autoreleasePoolPop(v51);
    if ([v50 count])
    {
      v56 = 1;
      while (1)
      {
        v57 = [v50 objectAtIndex:v56 - 1];

        v58 = [v50 count];
        if (v57 == v71)
        {
          break;
        }

        if (v56++ >= v58)
        {
          v24 = 0;
          v25 = v70;
          goto LABEL_49;
        }
      }

      if (v56 == v58)
      {
        context = objc_autoreleasePoolPush();
        v60 = v52;
        v61 = HMFGetOSLogHandle();
        v25 = v70;
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          v62 = HMFGetLogIdentifier();
          *buf = 138543362;
          v78 = v62;
          _os_log_impl(&dword_2531F8000, v61, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine next timer event for Significant Event", buf, 0xCu);
        }

        v24 = 0;
      }

      else
      {
        v24 = [v50 objectAtIndex:v56];
        context = objc_autoreleasePoolPush();
        v63 = v52;
        v61 = HMFGetOSLogHandle();
        v25 = v70;
        if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
        {
          v64 = HMFGetLogIdentifier();
          *buf = 138543618;
          v78 = v64;
          v79 = 2112;
          v80 = v24;
          _os_log_impl(&dword_2531F8000, v61, OS_LOG_TYPE_INFO, "%{public}@Event next fire date : %@", buf, 0x16u);
        }
      }

      objc_autoreleasePoolPop(context);
    }

    else
    {
      v24 = 0;
    }

LABEL_49:

    v10 = v69;
  }

  else
  {
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v49 = HMFGetLogIdentifier();
      *buf = 138543362;
      v78 = v49;
      _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to get the sun event dates based on home location", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v30);
    v24 = 0;
  }

LABEL_51:
  v65 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_66996 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_66996, &__block_literal_global_66997);
  }

  v3 = logCategory__hmf_once_v1_66998;

  return v3;
}

uint64_t __38__HMDSignificantTimeEvent_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_66998;
  logCategory__hmf_once_v1_66998 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end