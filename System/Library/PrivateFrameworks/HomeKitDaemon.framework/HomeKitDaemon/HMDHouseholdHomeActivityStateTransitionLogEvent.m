@interface HMDHouseholdHomeActivityStateTransitionLogEvent
- (HMDHouseholdHomeActivityStateTransitionLogEvent)initWithDictionary:(id)a3;
- (HMDHouseholdHomeActivityStateTransitionLogEvent)initWithHomeUUID:(id)a3 homeCount:(int64_t)a4 awayCount:(int64_t)a5 vacationCount:(int64_t)a6 comingHomeCount:(int64_t)a7 comingHomeFromVacationCount:(int64_t)a8 automatedCount:(int64_t)a9 automatedHoldEndCount:(int64_t)a10 manualHoldEndCount:(int64_t)a11 manualHoldStartCount:(int64_t)a12 otherCount:(int64_t)a13;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDHouseholdHomeActivityStateTransitionLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v18[11] = *MEMORY[0x277D85DE8];
  v17[0] = @"numTransitions_toState1_Home";
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHouseholdHomeActivityStateTransitionLogEvent homeCount](self, "homeCount")}];
  v18[0] = v16;
  v17[1] = @"numTransitions_toState2_Away";
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHouseholdHomeActivityStateTransitionLogEvent awayCount](self, "awayCount")}];
  v18[1] = v15;
  v17[2] = @"numTransitions_toState4_Vacation";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHouseholdHomeActivityStateTransitionLogEvent vacationCount](self, "vacationCount")}];
  v18[2] = v3;
  v17[3] = @"numTransitions_toState6_ComingHome";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHouseholdHomeActivityStateTransitionLogEvent comingHomeCount](self, "comingHomeCount")}];
  v18[3] = v4;
  v17[4] = @"numTransitions_toState7_ComingHomeFromVacation";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHouseholdHomeActivityStateTransitionLogEvent comingHomeFromVacationCount](self, "comingHomeFromVacationCount")}];
  v18[4] = v5;
  v17[5] = @"numTransitions_reason1_automated";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHouseholdHomeActivityStateTransitionLogEvent automatedCount](self, "automatedCount")}];
  v18[5] = v6;
  v17[6] = @"numTransitions_reason2_automatedHoldEnd";
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHouseholdHomeActivityStateTransitionLogEvent automatedHoldEndCount](self, "automatedHoldEndCount")}];
  v18[6] = v7;
  v17[7] = @"numTransitions_reason3_manualHoldEnd";
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHouseholdHomeActivityStateTransitionLogEvent manualHoldEndCount](self, "manualHoldEndCount")}];
  v18[7] = v8;
  v17[8] = @"numTransitions_reason4_manualHoldStart";
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHouseholdHomeActivityStateTransitionLogEvent manualHoldStartCount](self, "manualHoldStartCount")}];
  v18[8] = v9;
  v17[9] = @"numTransitions_reason5_other";
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHouseholdHomeActivityStateTransitionLogEvent otherCount](self, "otherCount")}];
  v18[9] = v10;
  v17[10] = @"numTransitions_reason_total";
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHouseholdHomeActivityStateTransitionLogEvent totalCount](self, "totalCount")}];
  v18[10] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (HMDHouseholdHomeActivityStateTransitionLogEvent)initWithDictionary:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"homeUUID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [MEMORY[0x277CCAD78] UUID];
  v60 = v7;
  v8 = [objc_claimAutoreleasedReturnValue() initWithUUIDString:v7];
  if (v8)
  {
    v9 = [v4 objectForKeyedSubscript:@"numTransitions_toState1_Home"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v12 = [v4 objectForKeyedSubscript:@"numTransitions_toState2_Away"];
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

    v15 = [v4 objectForKeyedSubscript:@"numTransitions_toState4_Vacation"];
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

    v18 = [v4 objectForKeyedSubscript:@"numTransitions_toState1_Home"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    v21 = [v4 objectForKeyedSubscript:@"numTransitions_toState7_ComingHomeFromVacation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v59 = v22;

    v56 = v17;
    v57 = v11;
    v58 = v20;
    if (v11 && v14 && v17 && v20 && v59)
    {
      v53 = self;
      v55 = v14;
      v23 = [v4 objectForKeyedSubscript:@"numTransitions_reason1_automated"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      v25 = v24;

      v26 = [v4 objectForKeyedSubscript:@"numTransitions_reason2_automatedHoldEnd"];
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

      v29 = [v4 objectForKeyedSubscript:@"numTransitions_reason3_manualHoldEnd"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      v31 = v30;

      v32 = v28;
      v33 = [v4 objectForKeyedSubscript:@"numTransitions_reason4_manualHoldStart"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v34 = v33;
      }

      else
      {
        v34 = 0;
      }

      v35 = v34;

      v36 = [v4 objectForKeyedSubscript:@"numTransitions_reason5_other"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v37 = v36;
      }

      else
      {
        v37 = 0;
      }

      v38 = v37;

      v39 = v31;
      if (v25 && v32 && v31 && v35 && v38)
      {
        v40 = -[HMDHouseholdHomeActivityStateTransitionLogEvent initWithHomeUUID:homeCount:awayCount:vacationCount:comingHomeCount:comingHomeFromVacationCount:automatedCount:automatedHoldEndCount:manualHoldEndCount:manualHoldStartCount:otherCount:](v53, "initWithHomeUUID:homeCount:awayCount:vacationCount:comingHomeCount:comingHomeFromVacationCount:automatedCount:automatedHoldEndCount:manualHoldEndCount:manualHoldStartCount:otherCount:", v8, [v57 integerValue], objc_msgSend(v55, "integerValue"), objc_msgSend(v17, "integerValue"), objc_msgSend(v58, "integerValue"), objc_msgSend(v59, "integerValue"), objc_msgSend(v25, "integerValue"), objc_msgSend(v32, "integerValue"), objc_msgSend(v31, "integerValue"), objc_msgSend(v35, "integerValue"), objc_msgSend(v38, "integerValue"));
        v41 = v40;
      }

      else
      {
        v48 = objc_autoreleasePoolPush();
        v40 = v53;
        v49 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v50 = v54 = v48;
          *buf = 138543618;
          v62 = v50;
          v63 = 2112;
          v64 = v4;
          _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_ERROR, "%{public}@Failed to initialize from dictionary -- missing transition reason counts: %@", buf, 0x16u);

          v48 = v54;
        }

        objc_autoreleasePoolPop(v48);
        v41 = 0;
      }

      v14 = v55;
    }

    else
    {
      v45 = objc_autoreleasePoolPush();
      v40 = self;
      v46 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v47 = HMFGetLogIdentifier();
        *buf = 138543618;
        v62 = v47;
        v63 = 2112;
        v64 = v4;
        _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_ERROR, "%{public}@Failed to initialize from dictionary -- missing activity state type counts: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v45);
      v41 = 0;
    }
  }

  else
  {
    v42 = objc_autoreleasePoolPush();
    v40 = self;
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = HMFGetLogIdentifier();
      *buf = 138543618;
      v62 = v44;
      v63 = 2112;
      v64 = v4;
      _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_ERROR, "%{public}@Failed to initialize from dictionary -- missing homeUUID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v42);
    v41 = 0;
  }

  v51 = *MEMORY[0x277D85DE8];
  return v41;
}

- (HMDHouseholdHomeActivityStateTransitionLogEvent)initWithHomeUUID:(id)a3 homeCount:(int64_t)a4 awayCount:(int64_t)a5 vacationCount:(int64_t)a6 comingHomeCount:(int64_t)a7 comingHomeFromVacationCount:(int64_t)a8 automatedCount:(int64_t)a9 automatedHoldEndCount:(int64_t)a10 manualHoldEndCount:(int64_t)a11 manualHoldStartCount:(int64_t)a12 otherCount:(int64_t)a13
{
  v19.receiver = self;
  v19.super_class = HMDHouseholdHomeActivityStateTransitionLogEvent;
  result = [(HMMHomeLogEvent *)&v19 initWithHomeUUID:a3];
  if (result)
  {
    result->_homeCount = a4;
    result->_awayCount = a5;
    result->_vacationCount = a6;
    result->_comingHomeCount = a7;
    result->_comingHomeFromVacationCount = a8;
    result->_automatedCount = a9;
    result->_automatedHoldEndCount = a10;
    result->_manualHoldEndCount = a11;
    result->_manualHoldStartCount = a12;
    result->_otherCount = a13;
    result->_totalCount = a10 + a9 + a11 + a12 + a13;
  }

  return result;
}

@end