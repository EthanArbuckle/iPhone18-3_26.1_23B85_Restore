@interface HMDHouseholdThreadNetworkStabilityLogEvent
- (HMDHouseholdThreadNetworkStabilityLogEvent)initWithHomeUUID:(id)a3 numStabilityReporters:(unint64_t)a4 threadNetworkStatusReport:(id)a5 threadNetworkUptime:(unint64_t)a6 threadNetworkDowntime:(unint64_t)a7 numReadWrites:(unint64_t)a8 numReadErrors:(unint64_t)a9 numWriteErrors:(unint64_t)a10 numSessionErrors:(unint64_t)a11;
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
  v44 = [(HMDHouseholdThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v43 = [v3 numberWithUnsignedInteger:{objc_msgSend(v44, "numAdvertisedBRs")}];
  v47[1] = v43;
  v46[2] = @"numAppleBRs";
  v4 = MEMORY[0x277CCABB0];
  v42 = [(HMDHouseholdThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v41 = [v4 numberWithUnsignedInteger:{objc_msgSend(v42, "numAppleBRs")}];
  v47[2] = v41;
  v46[3] = @"numThirdPartyBRs";
  v5 = MEMORY[0x277CCABB0];
  v40 = [(HMDHouseholdThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v39 = [v5 numberWithUnsignedInteger:{objc_msgSend(v40, "numThirdPartyBRs")}];
  v47[3] = v39;
  v46[4] = @"numThreadNetworks";
  v6 = MEMORY[0x277CCABB0];
  v38 = [(HMDHouseholdThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v37 = [v6 numberWithUnsignedInteger:{objc_msgSend(v38, "numThreadNetworks")}];
  v47[4] = v37;
  v46[5] = @"maxSimuIPPrefixesDetected";
  v7 = MEMORY[0x277CCABB0];
  v36 = [(HMDHouseholdThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v35 = [v7 numberWithUnsignedInteger:{objc_msgSend(v36, "maxSimuIPPrefixesDetected")}];
  v47[5] = v35;
  v46[6] = @"txTotal";
  v8 = MEMORY[0x277CCABB0];
  v34 = [(HMDHouseholdThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v33 = [v8 numberWithUnsignedInteger:{objc_msgSend(v34, "txTotal")}];
  v47[6] = v33;
  v46[7] = @"txSuccess";
  v9 = MEMORY[0x277CCABB0];
  v32 = [(HMDHouseholdThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v31 = [v9 numberWithUnsignedInteger:{objc_msgSend(v32, "txSuccess")}];
  v47[7] = v31;
  v46[8] = @"txDelayAvg";
  v10 = MEMORY[0x277CCABB0];
  v30 = [(HMDHouseholdThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v29 = [v10 numberWithUnsignedInteger:{objc_msgSend(v30, "txDelayAvg")}];
  v47[8] = v29;
  v46[9] = @"rxTotal";
  v11 = MEMORY[0x277CCABB0];
  v28 = [(HMDHouseholdThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v27 = [v11 numberWithUnsignedInteger:{objc_msgSend(v28, "rxTotal")}];
  v47[9] = v27;
  v46[10] = @"rxSuccess";
  v12 = MEMORY[0x277CCABB0];
  v26 = [(HMDHouseholdThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v13 = [v12 numberWithUnsignedInteger:{objc_msgSend(v26, "rxSuccess")}];
  v47[10] = v13;
  v46[11] = @"reportDuration";
  v14 = MEMORY[0x277CCABB0];
  v15 = [(HMDHouseholdThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(v15, "reportDuration")}];
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

- (HMDHouseholdThreadNetworkStabilityLogEvent)initWithHomeUUID:(id)a3 numStabilityReporters:(unint64_t)a4 threadNetworkStatusReport:(id)a5 threadNetworkUptime:(unint64_t)a6 threadNetworkDowntime:(unint64_t)a7 numReadWrites:(unint64_t)a8 numReadErrors:(unint64_t)a9 numWriteErrors:(unint64_t)a10 numSessionErrors:(unint64_t)a11
{
  v18 = a5;
  v22.receiver = self;
  v22.super_class = HMDHouseholdThreadNetworkStabilityLogEvent;
  v19 = [(HMMHomeLogEvent *)&v22 initWithHomeUUID:a3];
  v20 = v19;
  if (v19)
  {
    v19->_numStabilityReporters = a4;
    objc_storeStrong(&v19->_threadNetworkStatusReport, a5);
    v20->_threadNetworkUptime = a6;
    v20->_threadNetworkDowntime = a7;
    v20->_numReadWrites = a8;
    v20->_numReadErrors = a9;
    v20->_numWriteErrors = a10;
    v20->_numSessionErrors = a11;
  }

  return v20;
}

@end