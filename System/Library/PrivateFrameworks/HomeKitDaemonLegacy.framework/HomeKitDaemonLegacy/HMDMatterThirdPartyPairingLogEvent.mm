@interface HMDMatterThirdPartyPairingLogEvent
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDMatterThirdPartyPairingLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  pairingDuration = [(HMDMatterThirdPartyPairingLogEvent *)self pairingDuration];
  [dictionary setObject:pairingDuration forKeyedSubscript:@"pairingDuration"];

  success = [(HMDMatterThirdPartyPairingLogEvent *)self success];
  [dictionary setObject:success forKeyedSubscript:@"success"];

  errorDomain = [(HMDMatterThirdPartyPairingLogEvent *)self errorDomain];
  [dictionary setObject:errorDomain forKeyedSubscript:@"errorDomain"];

  errorCode = [(HMDMatterThirdPartyPairingLogEvent *)self errorCode];
  [dictionary setObject:errorCode forKeyedSubscript:@"errorCode"];

  underlyingErrorDomain = [(HMDMatterThirdPartyPairingLogEvent *)self underlyingErrorDomain];
  [dictionary setObject:underlyingErrorDomain forKeyedSubscript:@"underlyingErrorDomain"];

  underlyingErrorCode = [(HMDMatterThirdPartyPairingLogEvent *)self underlyingErrorCode];
  [dictionary setObject:underlyingErrorCode forKeyedSubscript:@"underlyingErrorCode"];

  longestStateName = [(HMDMatterThirdPartyPairingLogEvent *)self longestStateName];
  [dictionary setObject:longestStateName forKeyedSubscript:@"longestStateName"];

  longestStateDuration = [(HMDMatterThirdPartyPairingLogEvent *)self longestStateDuration];
  [dictionary setObject:longestStateDuration forKeyedSubscript:@"longestStateDuration"];

  matterCategoryNumber = [(HMDMatterThirdPartyPairingLogEvent *)self matterCategoryNumber];
  [dictionary setObject:matterCategoryNumber forKeyedSubscript:@"matterCategoryNumber"];

  matterVendorNumber = [(HMDMatterThirdPartyPairingLogEvent *)self matterVendorNumber];
  [dictionary setObject:matterVendorNumber forKeyedSubscript:@"matterVendorNumber"];

  matterProductNumber = [(HMDMatterThirdPartyPairingLogEvent *)self matterProductNumber];
  [dictionary setObject:matterProductNumber forKeyedSubscript:@"matterProductNumber"];

  matterProductID = [(HMDMatterThirdPartyPairingLogEvent *)self matterProductID];
  [dictionary setObject:matterProductID forKeyedSubscript:@"matterProductID"];

  firmwareVersion = [(HMDMatterThirdPartyPairingLogEvent *)self firmwareVersion];
  [dictionary setObject:firmwareVersion forKeyedSubscript:@"firmwareVersion"];

  supportsSoftAP = [(HMDMatterThirdPartyPairingLogEvent *)self supportsSoftAP];
  [dictionary setObject:supportsSoftAP forKeyedSubscript:@"supportsSoftAP"];

  hasShortDiscriminator = [(HMDMatterThirdPartyPairingLogEvent *)self hasShortDiscriminator];
  [dictionary setObject:hasShortDiscriminator forKeyedSubscript:@"hasShortDiscriminator"];

  client = [(HMDMatterThirdPartyPairingLogEvent *)self client];
  [dictionary setObject:client forKeyedSubscript:@"client"];

  communicationProtocol = [(HMDMatterThirdPartyPairingLogEvent *)self communicationProtocol];
  [dictionary setObject:communicationProtocol forKeyedSubscript:@"communicationProtocol"];

  requiresMatterCustomCommissioningFlow = [(HMDMatterThirdPartyPairingLogEvent *)self requiresMatterCustomCommissioningFlow];
  [dictionary setObject:requiresMatterCustomCommissioningFlow forKeyedSubscript:@"requiresMatterCustomCommissioningFlow"];

  credentialsSentToClient = [(HMDMatterThirdPartyPairingLogEvent *)self credentialsSentToClient];
  if (credentialsSentToClient)
  {
    credentialsSentToClient2 = [(HMDMatterThirdPartyPairingLogEvent *)self credentialsSentToClient];
    [dictionary setObject:credentialsSentToClient2 forKeyedSubscript:@"credentialsSentToClient"];
  }

  else
  {
    [dictionary setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"credentialsSentToClient"];
  }

  providedWiFiScanResults = [(HMDMatterThirdPartyPairingLogEvent *)self providedWiFiScanResults];
  if (providedWiFiScanResults)
  {
    providedWiFiScanResults2 = [(HMDMatterThirdPartyPairingLogEvent *)self providedWiFiScanResults];
    [dictionary setObject:providedWiFiScanResults2 forKeyedSubscript:@"providedWiFiScanResults"];
  }

  else
  {
    [dictionary setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"providedWiFiScanResults"];
  }

  providedThreadScanResults = [(HMDMatterThirdPartyPairingLogEvent *)self providedThreadScanResults];
  if (providedThreadScanResults)
  {
    providedThreadScanResults2 = [(HMDMatterThirdPartyPairingLogEvent *)self providedThreadScanResults];
    [dictionary setObject:providedThreadScanResults2 forKeyedSubscript:@"providedThreadScanResults"];
  }

  else
  {
    [dictionary setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"providedThreadScanResults"];
  }

  discoveredOverBLE = [(HMDMatterThirdPartyPairingLogEvent *)self discoveredOverBLE];
  if (discoveredOverBLE)
  {
    discoveredOverBLE2 = [(HMDMatterThirdPartyPairingLogEvent *)self discoveredOverBLE];
    [dictionary setObject:discoveredOverBLE2 forKeyedSubscript:@"discoveredOverBLE"];
  }

  else
  {
    [dictionary setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"discoveredOverBLE"];
  }

  knownToSystemCommissioner = [(HMDMatterThirdPartyPairingLogEvent *)self knownToSystemCommissioner];
  if (knownToSystemCommissioner)
  {
    knownToSystemCommissioner2 = [(HMDMatterThirdPartyPairingLogEvent *)self knownToSystemCommissioner];
    [dictionary setObject:knownToSystemCommissioner2 forKeyedSubscript:@"knownToSystemCommissioner"];
  }

  else
  {
    [dictionary setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"knownToSystemCommissioner"];
  }

  caseSessionSanityCheckPassed = [(HMDMatterThirdPartyPairingLogEvent *)self caseSessionSanityCheckPassed];
  if (caseSessionSanityCheckPassed)
  {
    caseSessionSanityCheckPassed2 = [(HMDMatterThirdPartyPairingLogEvent *)self caseSessionSanityCheckPassed];
    [dictionary setObject:caseSessionSanityCheckPassed2 forKeyedSubscript:@"CASAESessionSanityCheckPassed"];
  }

  else
  {
    [dictionary setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"CASAESessionSanityCheckPassed"];
  }

  v34 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDMatterThirdPartyPairingLogEvent cleanClose](self, "cleanClose")}];
  [dictionary setObject:v34 forKeyedSubscript:@"cleanClose"];

  threadSetupDuration = [(HMDMatterThirdPartyPairingLogEvent *)self threadSetupDuration];
  [dictionary setObject:threadSetupDuration forKeyedSubscript:@"threadSetupDuration"];

  pairingWindowOpenedWithPasscodeDuration = [(HMDMatterThirdPartyPairingLogEvent *)self pairingWindowOpenedWithPasscodeDuration];
  [dictionary setObject:pairingWindowOpenedWithPasscodeDuration forKeyedSubscript:@"pairingWindowOpenedWithPasscodeDuration"];

  accessoryTransportType = [(HMDMatterThirdPartyPairingLogEvent *)self accessoryTransportType];
  [dictionary setObject:accessoryTransportType forKeyedSubscript:@"accessoryTransport"];

  v38 = [dictionary copy];

  return v38;
}

@end