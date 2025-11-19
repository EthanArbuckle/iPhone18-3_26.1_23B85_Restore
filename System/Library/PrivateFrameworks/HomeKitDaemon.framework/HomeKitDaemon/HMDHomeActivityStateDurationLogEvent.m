@interface HMDHomeActivityStateDurationLogEvent
- (HMDHomeActivityStateDurationLogEvent)initWithHomeUUID:(id)a3 state:(id)a4 nextState:(id)a5 durationInMinutes:(id)a6 supportsAdaptiveTemperatureAutomations:(BOOL)a7;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDHomeActivityStateDurationLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v11[4] = *MEMORY[0x277D85DE8];
  v10[0] = @"state";
  v3 = [(HMDHomeActivityStateDurationLogEvent *)self state];
  v11[0] = v3;
  v10[1] = @"nextState";
  v4 = [(HMDHomeActivityStateDurationLogEvent *)self nextState];
  v11[1] = v4;
  v10[2] = @"durationInMinutes";
  v5 = [(HMDHomeActivityStateDurationLogEvent *)self durationInMinutes];
  v11[2] = v5;
  v10[3] = @"supportsAdaptiveTemperatureAutomations";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeActivityStateDurationLogEvent supportsAdaptiveTemperatureAutomations](self, "supportsAdaptiveTemperatureAutomations")}];
  v11[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (HMDHomeActivityStateDurationLogEvent)initWithHomeUUID:(id)a3 state:(id)a4 nextState:(id)a5 durationInMinutes:(id)a6 supportsAdaptiveTemperatureAutomations:(BOOL)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v19.receiver = self;
  v19.super_class = HMDHomeActivityStateDurationLogEvent;
  v16 = [(HMMHomeLogEvent *)&v19 initWithHomeUUID:a3];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_state, a4);
    objc_storeStrong(&v17->_nextState, a5);
    objc_storeStrong(&v17->_durationInMinutes, a6);
    v17->_supportsAdaptiveTemperatureAutomations = a7;
  }

  return v17;
}

@end