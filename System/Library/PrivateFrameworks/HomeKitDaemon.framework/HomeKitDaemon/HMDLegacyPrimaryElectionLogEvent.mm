@interface HMDLegacyPrimaryElectionLogEvent
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDLegacyPrimaryElectionLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v11[4] = *MEMORY[0x277D85DE8];
  v10[0] = @"reason";
  reason = [(HMDLegacyPrimaryElectionLogEvent *)self reason];
  v11[0] = reason;
  v10[1] = @"criteria";
  criteria = [(HMDLegacyPrimaryElectionLogEvent *)self criteria];
  v11[1] = criteria;
  v10[2] = @"availableResidents";
  v5 = +[HMDLogEventHistograms configurationDataHistogram];
  v6 = [v5 intervalIndexForValue:{-[HMDLegacyPrimaryElectionLogEvent availableResidentCount](self, "availableResidentCount")}];
  v10[3] = @"eventCount";
  v11[2] = v6;
  v11[3] = &unk_283E75020;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end