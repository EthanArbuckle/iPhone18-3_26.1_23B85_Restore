@interface HMDHomeActivityStateTransitionLogEvent
- (HMDHomeActivityStateTransitionLogEvent)initWithHomeUUID:(id)a3 fromState:(unint64_t)a4 toState:(unint64_t)a5 reason:(int64_t)a6;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDHomeActivityStateTransitionLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v18[8] = *MEMORY[0x277D85DE8];
  v17[0] = @"fromState";
  v3 = [(HMDHomeActivityStateTransitionLogEvent *)self fromState];
  if (v3 - 1 > 6)
  {
    v4 = @"Unknown";
  }

  else
  {
    v4 = off_278671F60[v3 - 1];
  }

  v18[0] = v4;
  v17[1] = @"toState";
  v5 = [(HMDHomeActivityStateTransitionLogEvent *)self toState];
  if (v5 - 1 > 6)
  {
    v6 = @"Unknown";
  }

  else
  {
    v6 = off_278671F60[v5 - 1];
  }

  v18[1] = v6;
  v17[2] = @"reason";
  v7 = [(HMDHomeActivityStateTransitionLogEvent *)self reason];
  if ((v7 - 1) > 3)
  {
    v8 = @"Other";
  }

  else
  {
    v8 = off_278671F98[v7 - 1];
  }

  v18[2] = v8;
  v17[3] = @"numTransitions_reason1_automated";
  v9 = [(HMDHomeActivityStateTransitionLogEvent *)self automatedCount];
  v18[3] = v9;
  v17[4] = @"numTransitions_reason2_automatedHoldEnd";
  v10 = [(HMDHomeActivityStateTransitionLogEvent *)self automatedHoldEndCount];
  v18[4] = v10;
  v17[5] = @"numTransitions_reason3_manualHoldEnd";
  v11 = [(HMDHomeActivityStateTransitionLogEvent *)self manualHoldEndCount];
  v18[5] = v11;
  v17[6] = @"numTransitions_reason4_manualHoldStart";
  v12 = [(HMDHomeActivityStateTransitionLogEvent *)self manualHoldStartCount];
  v18[6] = v12;
  v17[7] = @"numTransitions_reason5_other";
  v13 = [(HMDHomeActivityStateTransitionLogEvent *)self otherCount];
  v18[7] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:8];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (HMDHomeActivityStateTransitionLogEvent)initWithHomeUUID:(id)a3 fromState:(unint64_t)a4 toState:(unint64_t)a5 reason:(int64_t)a6
{
  v23.receiver = self;
  v23.super_class = HMDHomeActivityStateTransitionLogEvent;
  v9 = [(HMMHomeLogEvent *)&v23 initWithHomeUUID:a3];
  v10 = v9;
  if (v9)
  {
    v9->_reason = a6;
    v9->_fromState = a4;
    v9->_toState = a5;
    if (a4 - 1 > 6)
    {
      v11 = @"Unknown";
    }

    else
    {
      v11 = off_278671F60[a4 - 1];
    }

    if (a5 - 1 > 6)
    {
      v12 = @"Unknown";
    }

    else
    {
      v12 = off_278671F60[a5 - 1];
    }

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v11, v12];
    transitionType = v10->_transitionType;
    v10->_transitionType = v13;

    p_automatedCount = &v10->_automatedCount;
    automatedCount = v10->_automatedCount;
    v10->_automatedCount = &unk_283E71D50;

    automatedHoldEndCount = v10->_automatedHoldEndCount;
    v10->_automatedHoldEndCount = &unk_283E71D50;

    manualHoldStartCount = v10->_manualHoldStartCount;
    v10->_manualHoldStartCount = &unk_283E71D50;

    manualHoldEndCount = v10->_manualHoldEndCount;
    v10->_manualHoldEndCount = &unk_283E71D50;

    otherCount = v10->_otherCount;
    v10->_otherCount = &unk_283E71D50;

    if (a6 <= 1)
    {
      if (a6)
      {
        if (a6 != 1)
        {
          return v10;
        }
      }

      else
      {
        p_automatedCount = &v10->_otherCount;
      }
    }

    else if (a6 == 4)
    {
      p_automatedCount = &v10->_manualHoldStartCount;
    }

    else
    {
      p_automatedCount = &v10->_manualHoldEndCount;
      if (a6 != 3)
      {
        p_automatedCount = &v10->_automatedHoldEndCount;
        if (a6 != 2)
        {
          return v10;
        }
      }
    }

    v21 = *p_automatedCount;
    *p_automatedCount = &unk_283E71D68;
  }

  return v10;
}

@end