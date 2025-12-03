@interface HMDHomeActivityStateTransitionLogEvent
- (HMDHomeActivityStateTransitionLogEvent)initWithHomeUUID:(id)d fromState:(unint64_t)state toState:(unint64_t)toState reason:(int64_t)reason;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDHomeActivityStateTransitionLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v18[8] = *MEMORY[0x277D85DE8];
  v17[0] = @"fromState";
  fromState = [(HMDHomeActivityStateTransitionLogEvent *)self fromState];
  if (fromState - 1 > 6)
  {
    v4 = @"Unknown";
  }

  else
  {
    v4 = off_278671F60[fromState - 1];
  }

  v18[0] = v4;
  v17[1] = @"toState";
  toState = [(HMDHomeActivityStateTransitionLogEvent *)self toState];
  if (toState - 1 > 6)
  {
    v6 = @"Unknown";
  }

  else
  {
    v6 = off_278671F60[toState - 1];
  }

  v18[1] = v6;
  v17[2] = @"reason";
  reason = [(HMDHomeActivityStateTransitionLogEvent *)self reason];
  if ((reason - 1) > 3)
  {
    v8 = @"Other";
  }

  else
  {
    v8 = off_278671F98[reason - 1];
  }

  v18[2] = v8;
  v17[3] = @"numTransitions_reason1_automated";
  automatedCount = [(HMDHomeActivityStateTransitionLogEvent *)self automatedCount];
  v18[3] = automatedCount;
  v17[4] = @"numTransitions_reason2_automatedHoldEnd";
  automatedHoldEndCount = [(HMDHomeActivityStateTransitionLogEvent *)self automatedHoldEndCount];
  v18[4] = automatedHoldEndCount;
  v17[5] = @"numTransitions_reason3_manualHoldEnd";
  manualHoldEndCount = [(HMDHomeActivityStateTransitionLogEvent *)self manualHoldEndCount];
  v18[5] = manualHoldEndCount;
  v17[6] = @"numTransitions_reason4_manualHoldStart";
  manualHoldStartCount = [(HMDHomeActivityStateTransitionLogEvent *)self manualHoldStartCount];
  v18[6] = manualHoldStartCount;
  v17[7] = @"numTransitions_reason5_other";
  otherCount = [(HMDHomeActivityStateTransitionLogEvent *)self otherCount];
  v18[7] = otherCount;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:8];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (HMDHomeActivityStateTransitionLogEvent)initWithHomeUUID:(id)d fromState:(unint64_t)state toState:(unint64_t)toState reason:(int64_t)reason
{
  v23.receiver = self;
  v23.super_class = HMDHomeActivityStateTransitionLogEvent;
  v9 = [(HMMHomeLogEvent *)&v23 initWithHomeUUID:d];
  v10 = v9;
  if (v9)
  {
    v9->_reason = reason;
    v9->_fromState = state;
    v9->_toState = toState;
    if (state - 1 > 6)
    {
      v11 = @"Unknown";
    }

    else
    {
      v11 = off_278671F60[state - 1];
    }

    if (toState - 1 > 6)
    {
      v12 = @"Unknown";
    }

    else
    {
      v12 = off_278671F60[toState - 1];
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

    if (reason <= 1)
    {
      if (reason)
      {
        if (reason != 1)
        {
          return v10;
        }
      }

      else
      {
        p_automatedCount = &v10->_otherCount;
      }
    }

    else if (reason == 4)
    {
      p_automatedCount = &v10->_manualHoldStartCount;
    }

    else
    {
      p_automatedCount = &v10->_manualHoldEndCount;
      if (reason != 3)
      {
        p_automatedCount = &v10->_automatedHoldEndCount;
        if (reason != 2)
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