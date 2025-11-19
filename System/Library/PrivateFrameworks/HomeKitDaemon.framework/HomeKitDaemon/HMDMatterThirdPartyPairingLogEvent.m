@interface HMDMatterThirdPartyPairingLogEvent
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDMatterThirdPartyPairingLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HMDMatterThirdPartyPairingLogEvent *)self pairingDuration];
  [v3 setObject:v4 forKeyedSubscript:@"pairingDuration"];

  v5 = [(HMDMatterThirdPartyPairingLogEvent *)self success];
  [v3 setObject:v5 forKeyedSubscript:@"success"];

  v6 = [(HMDMatterThirdPartyPairingLogEvent *)self errorDomain];
  [v3 setObject:v6 forKeyedSubscript:@"errorDomain"];

  v7 = [(HMDMatterThirdPartyPairingLogEvent *)self errorCode];
  [v3 setObject:v7 forKeyedSubscript:@"errorCode"];

  v8 = [(HMDMatterThirdPartyPairingLogEvent *)self underlyingErrorDomain];
  [v3 setObject:v8 forKeyedSubscript:@"underlyingErrorDomain"];

  v9 = [(HMDMatterThirdPartyPairingLogEvent *)self underlyingErrorCode];
  [v3 setObject:v9 forKeyedSubscript:@"underlyingErrorCode"];

  v10 = [(HMDMatterThirdPartyPairingLogEvent *)self longestStateName];
  [v3 setObject:v10 forKeyedSubscript:@"longestStateName"];

  v11 = [(HMDMatterThirdPartyPairingLogEvent *)self longestStateDuration];
  [v3 setObject:v11 forKeyedSubscript:@"longestStateDuration"];

  v12 = [(HMDMatterThirdPartyPairingLogEvent *)self matterCategoryNumber];
  [v3 setObject:v12 forKeyedSubscript:@"matterCategoryNumber"];

  v13 = [(HMDMatterThirdPartyPairingLogEvent *)self matterVendorNumber];
  [v3 setObject:v13 forKeyedSubscript:@"matterVendorNumber"];

  v14 = [(HMDMatterThirdPartyPairingLogEvent *)self matterProductNumber];
  [v3 setObject:v14 forKeyedSubscript:@"matterProductNumber"];

  v15 = [(HMDMatterThirdPartyPairingLogEvent *)self matterProductID];
  [v3 setObject:v15 forKeyedSubscript:@"matterProductID"];

  v16 = [(HMDMatterThirdPartyPairingLogEvent *)self firmwareVersion];
  [v3 setObject:v16 forKeyedSubscript:@"firmwareVersion"];

  v17 = [(HMDMatterThirdPartyPairingLogEvent *)self supportsSoftAP];
  [v3 setObject:v17 forKeyedSubscript:@"supportsSoftAP"];

  v18 = [(HMDMatterThirdPartyPairingLogEvent *)self hasShortDiscriminator];
  [v3 setObject:v18 forKeyedSubscript:@"hasShortDiscriminator"];

  v19 = [(HMDMatterThirdPartyPairingLogEvent *)self client];
  [v3 setObject:v19 forKeyedSubscript:@"client"];

  v20 = [(HMDMatterThirdPartyPairingLogEvent *)self communicationProtocol];
  [v3 setObject:v20 forKeyedSubscript:@"communicationProtocol"];

  v21 = [(HMDMatterThirdPartyPairingLogEvent *)self requiresMatterCustomCommissioningFlow];
  [v3 setObject:v21 forKeyedSubscript:@"requiresMatterCustomCommissioningFlow"];

  v22 = [(HMDMatterThirdPartyPairingLogEvent *)self credentialsSentToClient];
  if (v22)
  {
    v23 = [(HMDMatterThirdPartyPairingLogEvent *)self credentialsSentToClient];
    [v3 setObject:v23 forKeyedSubscript:@"credentialsSentToClient"];
  }

  else
  {
    [v3 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"credentialsSentToClient"];
  }

  v24 = [(HMDMatterThirdPartyPairingLogEvent *)self providedWiFiScanResults];
  if (v24)
  {
    v25 = [(HMDMatterThirdPartyPairingLogEvent *)self providedWiFiScanResults];
    [v3 setObject:v25 forKeyedSubscript:@"providedWiFiScanResults"];
  }

  else
  {
    [v3 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"providedWiFiScanResults"];
  }

  v26 = [(HMDMatterThirdPartyPairingLogEvent *)self providedThreadScanResults];
  if (v26)
  {
    v27 = [(HMDMatterThirdPartyPairingLogEvent *)self providedThreadScanResults];
    [v3 setObject:v27 forKeyedSubscript:@"providedThreadScanResults"];
  }

  else
  {
    [v3 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"providedThreadScanResults"];
  }

  v28 = [(HMDMatterThirdPartyPairingLogEvent *)self discoveredOverBLE];
  if (v28)
  {
    v29 = [(HMDMatterThirdPartyPairingLogEvent *)self discoveredOverBLE];
    [v3 setObject:v29 forKeyedSubscript:@"discoveredOverBLE"];
  }

  else
  {
    [v3 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"discoveredOverBLE"];
  }

  v30 = [(HMDMatterThirdPartyPairingLogEvent *)self knownToSystemCommissioner];
  if (v30)
  {
    v31 = [(HMDMatterThirdPartyPairingLogEvent *)self knownToSystemCommissioner];
    [v3 setObject:v31 forKeyedSubscript:@"knownToSystemCommissioner"];
  }

  else
  {
    [v3 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"knownToSystemCommissioner"];
  }

  v32 = [(HMDMatterThirdPartyPairingLogEvent *)self caseSessionSanityCheckPassed];
  if (v32)
  {
    v33 = [(HMDMatterThirdPartyPairingLogEvent *)self caseSessionSanityCheckPassed];
    [v3 setObject:v33 forKeyedSubscript:@"CASAESessionSanityCheckPassed"];
  }

  else
  {
    [v3 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"CASAESessionSanityCheckPassed"];
  }

  v34 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDMatterThirdPartyPairingLogEvent cleanClose](self, "cleanClose")}];
  [v3 setObject:v34 forKeyedSubscript:@"cleanClose"];

  v35 = [(HMDMatterThirdPartyPairingLogEvent *)self threadSetupDuration];
  [v3 setObject:v35 forKeyedSubscript:@"threadSetupDuration"];

  v36 = [(HMDMatterThirdPartyPairingLogEvent *)self pairingWindowOpenedWithPasscodeDuration];
  [v3 setObject:v36 forKeyedSubscript:@"pairingWindowOpenedWithPasscodeDuration"];

  v37 = [(HMDMatterThirdPartyPairingLogEvent *)self accessoryTransportType];
  [v3 setObject:v37 forKeyedSubscript:@"accessoryTransport"];

  v38 = [v3 copy];

  return v38;
}

@end