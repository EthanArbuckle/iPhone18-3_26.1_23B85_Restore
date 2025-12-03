@interface HMDHouseholdThreadNetworkStabilityLogEvent
- (HMDHouseholdThreadNetworkStabilityLogEvent)initWithHomeUUID:(id)d numStabilityReporters:(unint64_t)reporters threadNetworkStatusReport:(id)report threadNetworkUptime:(unint64_t)uptime threadNetworkDowntime:(unint64_t)downtime numReadWrites:(unint64_t)writes numReadErrors:(unint64_t)errors numWriteErrors:(unint64_t)self0 numSessionErrors:(unint64_t)self1;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDHouseholdThreadNetworkStabilityLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v47[18] = *MEMORY[0x277D85DE8];
  v46[0] = @"numStabilityReporters";
  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHouseholdThreadNetworkStabilityLogEvent numStabilityReporters](self, "numStabilityReporters")}];
  v47[0] = v45;
  v46[1] = @"numAdvertisedBRs";
  v3 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport = [(HMDHouseholdThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v43 = [v3 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport, "numAdvertisedBRs")}];
  v47[1] = v43;
  v46[2] = @"numAppleBRs";
  v4 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport2 = [(HMDHouseholdThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v41 = [v4 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport2, "numAppleBRs")}];
  v47[2] = v41;
  v46[3] = @"numThirdPartyBRs";
  v5 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport3 = [(HMDHouseholdThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v39 = [v5 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport3, "numThirdPartyBRs")}];
  v47[3] = v39;
  v46[4] = @"numThreadNetworks";
  v6 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport4 = [(HMDHouseholdThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v37 = [v6 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport4, "numThreadNetworks")}];
  v47[4] = v37;
  v46[5] = @"maxSimuIPPrefixesDetected";
  v7 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport5 = [(HMDHouseholdThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v35 = [v7 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport5, "maxSimuIPPrefixesDetected")}];
  v47[5] = v35;
  v46[6] = @"txTotal";
  v8 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport6 = [(HMDHouseholdThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v33 = [v8 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport6, "txTotal")}];
  v47[6] = v33;
  v46[7] = @"txSuccess";
  v9 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport7 = [(HMDHouseholdThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v31 = [v9 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport7, "txSuccess")}];
  v47[7] = v31;
  v46[8] = @"txDelayAvg";
  v10 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport8 = [(HMDHouseholdThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v29 = [v10 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport8, "txDelayAvg")}];
  v47[8] = v29;
  v46[9] = @"rxTotal";
  v11 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport9 = [(HMDHouseholdThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v27 = [v11 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport9, "rxTotal")}];
  v47[9] = v27;
  v46[10] = @"rxSuccess";
  v12 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport10 = [(HMDHouseholdThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v13 = [v12 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport10, "rxSuccess")}];
  v47[10] = v13;
  v46[11] = @"reportDuration";
  v14 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport11 = [(HMDHouseholdThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport11, "reportDuration")}];
  v47[11] = v16;
  v46[12] = @"threadNetworkUptime";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHouseholdThreadNetworkStabilityLogEvent threadNetworkUptime](self, "threadNetworkUptime")}];
  v47[12] = v17;
  v46[13] = @"threadNetworkDowntime";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHouseholdThreadNetworkStabilityLogEvent threadNetworkDowntime](self, "threadNetworkDowntime")}];
  v47[13] = v18;
  v46[14] = @"numReadWrites";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHouseholdThreadNetworkStabilityLogEvent numReadWrites](self, "numReadWrites")}];
  v47[14] = v19;
  v46[15] = @"numReadErrors";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHouseholdThreadNetworkStabilityLogEvent numReadErrors](self, "numReadErrors")}];
  v47[15] = v20;
  v46[16] = @"numWriteErrors";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHouseholdThreadNetworkStabilityLogEvent numWriteErrors](self, "numWriteErrors")}];
  v47[16] = v21;
  v46[17] = @"numSessionErrors";
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHouseholdThreadNetworkStabilityLogEvent numSessionErrors](self, "numSessionErrors")}];
  v47[17] = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:18];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (HMDHouseholdThreadNetworkStabilityLogEvent)initWithHomeUUID:(id)d numStabilityReporters:(unint64_t)reporters threadNetworkStatusReport:(id)report threadNetworkUptime:(unint64_t)uptime threadNetworkDowntime:(unint64_t)downtime numReadWrites:(unint64_t)writes numReadErrors:(unint64_t)errors numWriteErrors:(unint64_t)self0 numSessionErrors:(unint64_t)self1
{
  reportCopy = report;
  v22.receiver = self;
  v22.super_class = HMDHouseholdThreadNetworkStabilityLogEvent;
  v19 = [(HMMHomeLogEvent *)&v22 initWithHomeUUID:d];
  v20 = v19;
  if (v19)
  {
    v19->_numStabilityReporters = reporters;
    objc_storeStrong(&v19->_threadNetworkStatusReport, report);
    v20->_threadNetworkUptime = uptime;
    v20->_threadNetworkDowntime = downtime;
    v20->_numReadWrites = writes;
    v20->_numReadErrors = errors;
    v20->_numWriteErrors = writeErrors;
    v20->_numSessionErrors = sessionErrors;
  }

  return v20;
}

@end