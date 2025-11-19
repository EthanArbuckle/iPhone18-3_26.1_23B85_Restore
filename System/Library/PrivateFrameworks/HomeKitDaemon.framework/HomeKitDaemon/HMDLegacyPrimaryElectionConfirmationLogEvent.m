@interface HMDLegacyPrimaryElectionConfirmationLogEvent
- (HMDLegacyPrimaryElectionConfirmationLogEvent)init;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDLegacyPrimaryElectionConfirmationLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v14[5] = *MEMORY[0x277D85DE8];
  if ([(HMDLegacyPrimaryElectionConfirmationLogEvent *)self availableResidentCount])
  {
    v3 = [(HMDLegacyPrimaryElectionConfirmationLogEvent *)self residentsRespondedCount];
    v4 = (100 * (v3 / [(HMDLegacyPrimaryElectionConfirmationLogEvent *)self availableResidentCount]));
  }

  else
  {
    v4 = 0.0;
  }

  v13[0] = @"availableResidents";
  v5 = +[HMDLogEventHistograms configurationDataHistogram];
  v6 = [v5 intervalIndexForValue:{-[HMDLegacyPrimaryElectionConfirmationLogEvent availableResidentCount](self, "availableResidentCount")}];
  v14[0] = v6;
  v13[1] = @"respondedResidentsPercentage";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  v14[1] = v7;
  v13[2] = @"criteria";
  v8 = [(HMDLegacyPrimaryElectionConfirmationLogEvent *)self criteria];
  v14[2] = v8;
  v13[3] = @"changedPrimary";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDLegacyPrimaryElectionConfirmationLogEvent changedPrimary](self, "changedPrimary")}];
  v13[4] = @"eventCount";
  v14[3] = v9;
  v14[4] = &unk_283E75290;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:5];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (HMDLegacyPrimaryElectionConfirmationLogEvent)init
{
  v5.receiver = self;
  v5.super_class = HMDLegacyPrimaryElectionConfirmationLogEvent;
  v2 = [(HMMLogEvent *)&v5 init];
  criteria = v2->_criteria;
  v2->_criteria = @"unknown";

  return v2;
}

@end