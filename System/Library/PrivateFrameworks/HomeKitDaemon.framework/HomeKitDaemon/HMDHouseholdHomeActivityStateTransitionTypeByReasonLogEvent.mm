@interface HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEvent
- (HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEvent)initWithDictionary:(id)dictionary;
- (HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEvent)initWithHomeUUID:(id)d fromState:(unint64_t)state toState:(unint64_t)toState automatedCount:(int64_t)count automatedHoldEndCount:(int64_t)endCount manualHoldEndCount:(int64_t)holdEndCount manualHoldStartCount:(int64_t)startCount otherCount:(int64_t)self0;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v19[8] = *MEMORY[0x277D85DE8];
  v18[0] = @"fromState";
  fromState = [(HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEvent *)self fromState];
  if (fromState - 1 > 6)
  {
    v4 = @"Unknown";
  }

  else
  {
    v4 = off_278671F60[fromState - 1];
  }

  v5 = v4;
  v19[0] = v5;
  v18[1] = @"toState";
  toState = [(HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEvent *)self toState];
  if (toState - 1 > 6)
  {
    v7 = @"Unknown";
  }

  else
  {
    v7 = off_278671F60[toState - 1];
  }

  v8 = v7;
  v19[1] = v8;
  v18[2] = @"numTransitions_reason1_automated";
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEvent automatedCount](self, "automatedCount")}];
  v19[2] = v9;
  v18[3] = @"numTransitions_reason2_automatedHoldEnd";
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEvent automatedHoldEndCount](self, "automatedHoldEndCount")}];
  v19[3] = v10;
  v18[4] = @"numTransitions_reason3_manualHoldEnd";
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEvent manualHoldEndCount](self, "manualHoldEndCount")}];
  v19[4] = v11;
  v18[5] = @"numTransitions_reason4_manualHoldStart";
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEvent manualHoldStartCount](self, "manualHoldStartCount")}];
  v19[5] = v12;
  v18[6] = @"numTransitions_reason5_other";
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEvent otherCount](self, "otherCount")}];
  v19[6] = v13;
  v18[7] = @"numTransitions_reason_total";
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEvent totalCount](self, "totalCount")}];
  v19[7] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:8];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEvent)initWithDictionary:(id)dictionary
{
  v60 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"homeUUID"];
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

  [MEMORY[0x277CCAD78] UUID];
  v54 = v6;
  v7 = [objc_claimAutoreleasedReturnValue() initWithUUIDString:v6];
  if (v7)
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"fromState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = HMHomeActivityStateFromTruncatedString(v10);
    v12 = [dictionaryCopy objectForKeyedSubscript:@"toState"];
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

    v15 = HMHomeActivityStateFromTruncatedString(v14);
    if (v11 && v15)
    {
      v51 = v15;
      v52 = v14;
      v53 = v10;
      v16 = [dictionaryCopy objectForKeyedSubscript:@"numTransitions_reason1_automated"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;

      v19 = [dictionaryCopy objectForKeyedSubscript:@"numTransitions_reason2_automatedHoldEnd"];
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

      v22 = [dictionaryCopy objectForKeyedSubscript:@"numTransitions_reason3_manualHoldEnd"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      v24 = v23;

      v25 = v18;
      v26 = [dictionaryCopy objectForKeyedSubscript:@"numTransitions_reason4_manualHoldStart"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }

      v28 = v27;

      v29 = v28;
      v30 = [dictionaryCopy objectForKeyedSubscript:@"numTransitions_reason5_other"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v31 = v30;
      }

      else
      {
        v31 = 0;
      }

      v32 = v31;

      if (v25 && v21 && v24 && v29 && v32)
      {
        v49 = v11;
        v33 = v32;
        v34 = v24;
        selfCopy3 = -[HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEvent initWithHomeUUID:fromState:toState:automatedCount:automatedHoldEndCount:manualHoldEndCount:manualHoldStartCount:otherCount:](self, "initWithHomeUUID:fromState:toState:automatedCount:automatedHoldEndCount:manualHoldEndCount:manualHoldStartCount:otherCount:", v7, v49, v51, [v25 integerValue], objc_msgSend(v21, "integerValue"), objc_msgSend(v24, "integerValue"), objc_msgSend(v29, "integerValue"), objc_msgSend(v32, "integerValue"));
        v36 = selfCopy3;
        v14 = v52;
      }

      else
      {
        v48 = v32;
        v50 = v24;
        v43 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v44 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v45 = HMFGetLogIdentifier();
          *buf = 138543618;
          v57 = v45;
          v58 = 2112;
          v59 = dictionaryCopy;
          _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_ERROR, "%{public}@Failed to initialize from dictionary -- missing transition reason counts: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v43);
        v36 = 0;
        v14 = v52;
        v34 = v50;
        v33 = v48;
      }

      v10 = v53;
    }

    else
    {
      v40 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = HMFGetLogIdentifier();
        *buf = 138543618;
        v57 = v42;
        v58 = 2112;
        v59 = dictionaryCopy;
        _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Failed to initialize from dictionary -- missing toState or fromState: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v40);
      v36 = 0;
    }
  }

  else
  {
    v37 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = HMFGetLogIdentifier();
      *buf = 138543618;
      v57 = v39;
      v58 = 2112;
      v59 = dictionaryCopy;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Failed to initialize from dictionary -- missing homeUUID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v37);
    v36 = 0;
  }

  v46 = *MEMORY[0x277D85DE8];
  return v36;
}

- (HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEvent)initWithHomeUUID:(id)d fromState:(unint64_t)state toState:(unint64_t)toState automatedCount:(int64_t)count automatedHoldEndCount:(int64_t)endCount manualHoldEndCount:(int64_t)holdEndCount manualHoldStartCount:(int64_t)startCount otherCount:(int64_t)self0
{
  v16.receiver = self;
  v16.super_class = HMDHouseholdHomeActivityStateTransitionTypeByReasonLogEvent;
  result = [(HMMHomeLogEvent *)&v16 initWithHomeUUID:d];
  if (result)
  {
    result->_fromState = state;
    result->_toState = toState;
    result->_automatedCount = count;
    result->_automatedHoldEndCount = endCount;
    result->_manualHoldEndCount = holdEndCount;
    result->_manualHoldStartCount = startCount;
    result->_otherCount = otherCount;
    result->_totalCount = endCount + count + holdEndCount + startCount + otherCount;
  }

  return result;
}

@end