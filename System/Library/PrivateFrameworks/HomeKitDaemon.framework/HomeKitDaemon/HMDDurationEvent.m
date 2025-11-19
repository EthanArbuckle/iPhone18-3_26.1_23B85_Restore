@interface HMDDurationEvent
+ (id)logCategory;
- (BOOL)isCompatbileWithEvent:(id)a3;
- (HMDDurationEvent)initWithCoder:(id)a3;
- (HMDDurationEvent)initWithModel:(id)a3 home:(id)a4;
- (NSNumber)duration;
- (NSString)description;
- (id)_nextTimerDate;
- (id)analyticsTriggerEventData;
- (id)createPayload;
- (id)emptyModelObject;
- (id)modelObjectWithChangeType:(unint64_t)a3;
- (void)_handleUpdateRequest:(id)a3;
- (void)_transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
- (void)encodeWithCoder:(id)a3;
- (void)setDuration:(id)a3;
@end

@implementation HMDDurationEvent

- (id)analyticsTriggerEventData
{
  v3 = objc_alloc_init(HMDAnalyticsTriggerEventData);
  [(HMDAnalyticsTriggerEventData *)v3 setEndEvent:[(HMDEvent *)self isEndEvent]];
  v4 = objc_alloc_init(HMDAnalyticsDurationEventData);
  [(HMDAnalyticsTriggerEventData *)v3 setDurationEvent:v4];

  return v3;
}

- (id)_nextTimerDate
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [MEMORY[0x277CBEA80] currentCalendar];
  v5 = [v4 components:252 fromDate:v3];

  v6 = [v5 second];
  v7 = [(HMDDurationEvent *)self duration];
  [v5 setSecond:{objc_msgSend(v7, "unsignedIntegerValue") + v6}];

  v8 = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [v8 dateFromComponents:v5];

  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v16 = 138543618;
    v17 = v13;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Next Fire Date : [%@]", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)_transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v28 = 138543362;
    v29 = v14;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Handling transaction updated", &v28, 0xCu);
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
    v18 = [v17 duration];
    if (v18)
    {
      v19 = v18;
      v20 = [(HMDDurationEvent *)v12 duration];
      if (v20)
      {
        v21 = v20;
        v22 = [(HMDDurationEvent *)v12 duration];
        [v22 doubleValue];
        v23 = [v17 duration];
        [v23 doubleValue];
        v24 = HMDurationsApproximatelyEqual();

        if (v24)
        {
          goto LABEL_13;
        }
      }

      else
      {
      }

      v25 = [v17 duration];
      [(HMDDurationEvent *)v12 setDuration:v25];

      v26 = [(HMDEvent *)v12 eventTrigger];
      [v26 markChangedForMessage:v10];
    }

LABEL_13:
    [v10 respondWithSuccess];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (id)modelObjectWithChangeType:(unint64_t)a3
{
  v5 = [HMDDurationEventModel alloc];
  v6 = [(HMDEvent *)self uuid];
  v7 = [(HMDEvent *)self eventTrigger];
  v8 = [v7 uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:a3 uuid:v6 parentUUID:v8];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDEvent isEndEvent](self, "isEndEvent")}];
  [(HMDDurationEventModel *)v9 setEndEvent:v10];

  v11 = [(HMDDurationEvent *)self duration];
  [(HMDDurationEventModel *)v9 setDuration:v11];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = HMDDurationEvent;
  v4 = a3;
  [(HMDTimeEvent *)&v6 encodeWithCoder:v4];
  v5 = [(HMDDurationEvent *)self duration:v6.receiver];
  [v4 encodeObject:v5 forKey:*MEMORY[0x277CD2280]];
}

- (HMDDurationEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMDDurationEvent;
  v5 = [(HMDTimeEvent *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2280]];
    duration = v5->_duration;
    v5->_duration = v6;
  }

  return v5;
}

- (BOOL)isCompatbileWithEvent:(id)a3
{
  v4.receiver = self;
  v4.super_class = HMDDurationEvent;
  return [(HMDTimeEvent *)&v4 isCompatibleWithEvent:a3];
}

- (void)setDuration:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  duration = self->_duration;
  self->_duration = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)duration
{
  os_unfair_lock_lock_with_options();
  v3 = self->_duration;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_handleUpdateRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 numberForKey:*MEMORY[0x277CD2280]];
  if (v5)
  {
    v6 = [(HMDDurationEvent *)self emptyModelObject];
    [v6 setDuration:v5];
    v7 = [(HMDEvent *)self eventTrigger];
    v8 = [v7 home];
    v9 = [v8 backingStore];
    v10 = [v4 name];
    v11 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v12 = [v9 transaction:v10 options:v11];

    [v12 add:v6];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __41__HMDDurationEvent__handleUpdateRequest___block_invoke;
    v15[3] = &unk_27868A1D8;
    v16 = v4;
    v17 = v6;
    v13 = v6;
    [v12 run:v15];
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [v4 respondWithError:v14];
  }
}

void __41__HMDDurationEvent__handleUpdateRequest___block_invoke(uint64_t a1, uint64_t a2)
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
    v8 = *MEMORY[0x277CD2280];
    v5 = [*(a1 + 40) duration];
    v9[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [v2 respondWithPayload:v6];

    v7 = *MEMORY[0x277D85DE8];
  }
}

- (id)emptyModelObject
{
  v3 = [HMDDurationEventModel alloc];
  v4 = [(HMDEvent *)self uuid];
  v5 = [(HMDEvent *)self eventTrigger];
  v6 = [v5 uuid];
  v7 = [(HMDBackingStoreModelObject *)v3 initWithObjectChangeType:2 uuid:v4 parentUUID:v6];

  return v7;
}

- (id)createPayload
{
  v3 = MEMORY[0x277CBEB38];
  v9.receiver = self;
  v9.super_class = HMDDurationEvent;
  v4 = [(HMDEvent *)&v9 createPayload];
  v5 = [v3 dictionaryWithDictionary:v4];

  v6 = [(HMDDurationEvent *)self duration];
  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x277CD2280]];

  v7 = [v5 copy];

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HMDDurationEvent;
  v4 = [(HMDEvent *)&v8 description];
  v5 = [(HMDDurationEvent *)self duration];
  v6 = [v3 stringWithFormat:@"[Duration-Event: %@, %@s]", v4, v5];

  return v6;
}

- (HMDDurationEvent)initWithModel:(id)a3 home:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = HMDDurationEvent;
  v7 = [(HMDTimeEvent *)&v11 initWithModel:v6 home:a4];
  if (v7)
  {
    v8 = [v6 duration];
    duration = v7->_duration;
    v7->_duration = v8;

    v7->_lock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_263775 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_263775, &__block_literal_global_263776);
  }

  v3 = logCategory__hmf_once_v1_263777;

  return v3;
}

void __31__HMDDurationEvent_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_263777;
  logCategory__hmf_once_v1_263777 = v1;
}

@end