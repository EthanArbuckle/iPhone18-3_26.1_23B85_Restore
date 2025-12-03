@interface HMDHouseholdNetworkStabilityLogEvent
- (HMDHouseholdNetworkStabilityLogEvent)initWithHomeUUID:(id)d numStabilityReporters:(unint64_t)reporters WifiAssociations:(unint64_t)associations wifiDisassociations:(unint64_t)disassociations apChanges:(unint64_t)changes gatewayChanges:(unint64_t)gatewayChanges numReadWrites:(unint64_t)writes numReadErrors:(unint64_t)self0 numWriteErrors:(unint64_t)self1 numSessionErrors:(unint64_t)self2 numNetworkSignatures:(unint64_t)self3;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDHouseholdNetworkStabilityLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v17[10] = *MEMORY[0x277D85DE8];
  v16[0] = @"numStabilityReporters";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHouseholdNetworkStabilityLogEvent numStabilityReporters](self, "numStabilityReporters")}];
  v17[0] = v15;
  v16[1] = @"numWifiAssociations";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHouseholdNetworkStabilityLogEvent numWifiAssociations](self, "numWifiAssociations")}];
  v17[1] = v3;
  v16[2] = @"numWifiDisassociations";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHouseholdNetworkStabilityLogEvent numWifiDisassociations](self, "numWifiDisassociations")}];
  v17[2] = v4;
  v16[3] = @"numWifiAPChanges";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHouseholdNetworkStabilityLogEvent numAPChanges](self, "numAPChanges")}];
  v17[3] = v5;
  v16[4] = @"numGatewayChanges";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHouseholdNetworkStabilityLogEvent numGatewayChanges](self, "numGatewayChanges")}];
  v17[4] = v6;
  v16[5] = @"numReadWrites";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHouseholdNetworkStabilityLogEvent numReadWrites](self, "numReadWrites")}];
  v17[5] = v7;
  v16[6] = @"numReadErrors";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHouseholdNetworkStabilityLogEvent numReadErrors](self, "numReadErrors")}];
  v17[6] = v8;
  v16[7] = @"numWriteErrors";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHouseholdNetworkStabilityLogEvent numWriteErrors](self, "numWriteErrors")}];
  v17[7] = v9;
  v16[8] = @"numSessionErrors";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHouseholdNetworkStabilityLogEvent numSessionErrors](self, "numSessionErrors")}];
  v17[8] = v10;
  v16[9] = @"numNetworkSignatures";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHouseholdNetworkStabilityLogEvent numNetworkSignatures](self, "numNetworkSignatures")}];
  v17[9] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:10];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (HMDHouseholdNetworkStabilityLogEvent)initWithHomeUUID:(id)d numStabilityReporters:(unint64_t)reporters WifiAssociations:(unint64_t)associations wifiDisassociations:(unint64_t)disassociations apChanges:(unint64_t)changes gatewayChanges:(unint64_t)gatewayChanges numReadWrites:(unint64_t)writes numReadErrors:(unint64_t)self0 numWriteErrors:(unint64_t)self1 numSessionErrors:(unint64_t)self2 numNetworkSignatures:(unint64_t)self3
{
  v19.receiver = self;
  v19.super_class = HMDHouseholdNetworkStabilityLogEvent;
  result = [(HMMHomeLogEvent *)&v19 initWithHomeUUID:d];
  if (result)
  {
    result->_numStabilityReporters = reporters;
    result->_numWifiAssociations = associations;
    result->_numWifiDisassociations = disassociations;
    result->_numAPChanges = changes;
    result->_numGatewayChanges = gatewayChanges;
    result->_numReadWrites = writes;
    result->_numReadErrors = errors;
    result->_numWriteErrors = writeErrors;
    result->_numSessionErrors = sessionErrors;
    result->_numNetworkSignatures = signatures;
  }

  return result;
}

@end