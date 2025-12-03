@interface HMDAccessoryPairingEvent
+ (id)logCategory;
+ (id)pairingAccessoryWithDescription:(id)description home:(id)home;
+ (id)removingAccessory:(id)accessory hapAccessory:(id)hapAccessory;
- (HMDAccessoryPairingEvent)initWithAccessoryDescription:(id)description home:(id)home;
- (HMDAccessoryPairingEvent)initWithUnpairedAccessory:(id)accessory pairedAccessory:(id)pairedAccessory hapAccessory:(id)hapAccessory appIdentifier:(id)identifier retry:(BOOL)retry home:(id)home isAddOperation:(BOOL)operation logEventStateManager:(id)self0;
- (NSDate)endDate;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)residentConfirmationToString:(int64_t)string;
- (int)currentWiFiBand;
- (void)_setBtLoad;
- (void)_updateThreadPropertiesWithPairedAccessory:(id)accessory;
- (void)handleUnauthenticatedMatterAccessoryPromptEnd;
- (void)handleUnauthenticatedMatterAccessoryPromptStart;
- (void)markEndTime;
- (void)prepareForObservation;
- (void)setHmdAccessoryPairingEventResidentConfirmation:(int64_t)confirmation;
- (void)updateEventPropertiesWithHAPAccessory:(id)accessory;
- (void)updateEventPropertiesWithPairedAccessory:(id)accessory;
- (void)updateResidentConfirmationDurationWithConfirmation:(int64_t)confirmation;
@end

@implementation HMDAccessoryPairingEvent

- (void)setHmdAccessoryPairingEventResidentConfirmation:(int64_t)confirmation
{
  switch(confirmation)
  {
    case 3:
      if (self->_hmdAccessoryPairingEventResidentConfirmation != 2)
      {
        [(HMDAccessoryPairingEvent *)self updateResidentConfirmationDurationWithConfirmation:3];
        self->_hmdAccessoryPairingEventResidentConfirmation = 3;
      }

      break;
    case 2:
      [(HMDAccessoryPairingEvent *)self updateResidentConfirmationDurationWithConfirmation:?];
      self->_hmdAccessoryPairingEventResidentConfirmation = 2;
      break;
    case 1:
      date = [MEMORY[0x277CBEAA8] date];
      residentConfirmationTimeStarted = self->_residentConfirmationTimeStarted;
      self->_residentConfirmationTimeStarted = date;

      self->_hmdAccessoryPairingEventResidentConfirmation = 1;
      break;
  }
}

- (id)residentConfirmationToString:(int64_t)string
{
  if ((string - 1) > 2)
  {
    return @"HMDAccessoryPairingEventResidentConfirmationNotSet";
  }

  else
  {
    return off_2797287F0[string - 1];
  }
}

- (void)updateResidentConfirmationDurationWithConfirmation:(int64_t)confirmation
{
  if (self->_residentConfirmationTimeStarted)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:self->_residentConfirmationTimeStarted];
    self->_residentConfirmationDurationInSeconds = v4;
    residentConfirmationTimeStarted = self->_residentConfirmationTimeStarted;
    self->_residentConfirmationTimeStarted = 0;
  }
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  vendorDetailsForReporting = [(HMDAccessoryPairingEvent *)self vendorDetailsForReporting];
  manufacturer = [vendorDetailsForReporting manufacturer];
  [dictionary setObject:manufacturer forKeyedSubscript:@"accessoryManufacturer"];

  vendorDetailsForReporting2 = [(HMDAccessoryPairingEvent *)self vendorDetailsForReporting];
  model = [vendorDetailsForReporting2 model];
  [dictionary setObject:model forKeyedSubscript:@"accessoryModel"];

  vendorDetailsForReporting3 = [(HMDAccessoryPairingEvent *)self vendorDetailsForReporting];
  category = [vendorDetailsForReporting3 category];
  [dictionary setObject:category forKeyedSubscript:@"accessoryCategory"];

  vendorDetailsForReporting4 = [(HMDAccessoryPairingEvent *)self vendorDetailsForReporting];
  firmwareVersion = [vendorDetailsForReporting4 firmwareVersion];
  [dictionary setObject:firmwareVersion forKeyedSubscript:@"accessoryFirmwareVersion"];

  vendorDetailsForReporting5 = [(HMDAccessoryPairingEvent *)self vendorDetailsForReporting];
  productData = [vendorDetailsForReporting5 productData];
  [dictionary setObject:productData forKeyedSubscript:@"accessoryProductData"];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAccessoryPairingEvent certificationStatus](self, "certificationStatus")}];
  [dictionary setObject:v14 forKeyedSubscript:@"accessoryCertificationStatus"];

  v15 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAccessoryPairingEvent communicationProtocol](self, "communicationProtocol")}];
  [dictionary setObject:v15 forKeyedSubscript:@"accessoryCommunicationProtocol"];

  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAccessoryPairingEvent linkType](self, "linkType")}];
  [dictionary setObject:v16 forKeyedSubscript:@"accessoryTransportType"];

  supportedLinkLayerTypes = [(HMDAccessoryPairingEvent *)self supportedLinkLayerTypes];
  [dictionary setObject:supportedLinkLayerTypes forKeyedSubscript:@"accessorySupportedLinkLayerTypes"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessoryPairingEvent authMethod](self, "authMethod")}];
  [dictionary setObject:v18 forKeyedSubscript:@"authenticationMethod"];

  appIdentifier = [(HMDAccessoryPairingEvent *)self appIdentifier];
  if ([HMDMetricsUtilities shouldRedactBundleID:appIdentifier])
  {
    [dictionary setObject:@"Third-party app" forKeyedSubscript:@"appIdentifier"];
  }

  else
  {
    appIdentifier2 = [(HMDAccessoryPairingEvent *)self appIdentifier];
    [dictionary setObject:appIdentifier2 forKeyedSubscript:@"appIdentifier"];
  }

  v21 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMMLogEvent durationMilliseconds](self, "durationMilliseconds")}];
  [dictionary setObject:v21 forKeyedSubscript:@"pairingDuration"];

  v22 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessoryPairingEvent isAddOperation](self, "isAddOperation")}];
  [dictionary setObject:v22 forKeyedSubscript:@"isAdd"];

  v23 = MEMORY[0x277CCABB0];
  error = [(HMMLogEvent *)self error];
  v25 = [v23 numberWithInteger:{objc_msgSend(error, "code")}];
  [dictionary setObject:v25 forKeyedSubscript:@"errorCode"];

  error2 = [(HMMLogEvent *)self error];
  domain = [error2 domain];
  [dictionary setObject:domain forKeyedSubscript:@"errorDomain"];

  if ([(HMDAccessoryPairingEvent *)self _isMatterAccessory])
  {
    matterAccessorySourceErrorDomain = [(HMDAccessoryPairingEvent *)self matterAccessorySourceErrorDomain];
    mtrMetrics = [(HMDAccessoryPairingEvent *)self mtrMetrics];
    v96[0] = MEMORY[0x277D85DD0];
    v96[1] = 3221225472;
    v96[2] = __56__HMDAccessoryPairingEvent_coreAnalyticsEventDictionary__block_invoke;
    v96[3] = &unk_2797287D0;
    v97 = dictionary;
    [mtrMetrics enumerateKeysAndObjectsUsingBlock:v96];

    v30 = 0;
    goto LABEL_16;
  }

  matterAccessorySourceErrorDomain = [(HMMLogEvent *)self error];
  if (!matterAccessorySourceErrorDomain)
  {
    v32 = 0;
    goto LABEL_12;
  }

  error3 = [(HMMLogEvent *)self error];
  v32 = getLowestError();

  if (v32)
  {
    code = [v32 code];
    error4 = [(HMMLogEvent *)self error];
    if (code == [error4 code])
    {
      domain2 = [v32 domain];
      error5 = [(HMMLogEvent *)self error];
      domain3 = [error5 domain];
      v38 = [domain2 isEqualToString:domain3];

      if (v38)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v30 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v32, "code")}];
    matterAccessorySourceErrorDomain = [v32 domain];
    goto LABEL_15;
  }

LABEL_10:
  matterAccessorySourceErrorDomain = 0;
LABEL_12:
  v30 = 0;
LABEL_15:
  v39 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAccessoryPairingEvent retryCount](self, "retryCount")}];
  [dictionary setObject:v39 forKeyedSubscript:@"retryCount"];

LABEL_16:
  [dictionary setObject:v30 forKeyedSubscript:@"underlyingErrorCode"];
  [dictionary setObject:matterAccessorySourceErrorDomain forKeyedSubscript:@"underlyingErrorDomain"];
  v40 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessoryPairingEvent didUseWiFiPPSK](self, "didUseWiFiPPSK")}];
  [dictionary setObject:v40 forKeyedSubscript:@"usedWifiPPSK"];

  if ([(HMDAccessoryPairingEvent *)self isAddOperation])
  {
    v41 = MEMORY[0x277CCABB0];
    if ([(HMDAccessoryPairingEvent *)self isAddViaWAC])
    {
      isWacLegacy = [(HMDAccessoryPairingEvent *)self isWacLegacy];
    }

    else
    {
      isWacLegacy = 0;
    }

    v43 = [v41 numberWithInt:isWacLegacy];
    [dictionary setObject:v43 forKeyedSubscript:@"isAddedViaLegacyWAC"];

    v44 = MEMORY[0x277CCABB0];
    if ([(HMDAccessoryPairingEvent *)self isAddViaWAC])
    {
      v45 = [(HMDAccessoryPairingEvent *)self isWacLegacy]^ 1;
    }

    else
    {
      v45 = 0;
    }

    v46 = [v44 numberWithInt:v45];
    [dictionary setObject:v46 forKeyedSubscript:@"isAddedViaSecureWAC"];

    v47 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessoryPairingEvent didUseOwnershipProof](self, "didUseOwnershipProof")}];
    [dictionary setObject:v47 forKeyedSubscript:@"isAddedWithWACOwnershipProof"];

    v48 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessoryPairingEvent isFirstHAPAccessoryInAnyHome](self, "isFirstHAPAccessoryInAnyHome")}];
    [dictionary setObject:v48 forKeyedSubscript:@"firstHAPAccessoryForUser"];

    v49 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessoryPairingEvent isFirstHAPAccessoryInHome](self, "isFirstHAPAccessoryInHome")}];
    [dictionary setObject:v49 forKeyedSubscript:@"firstHAPAccessoryInHome"];
  }

  if ([(HMDAccessoryPairingEvent *)self isNetworkRouterAdd])
  {
    v50 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessoryPairingEvent isNetworkRouterReplace](self, "isNetworkRouterReplace")}];
    [dictionary setObject:v50 forKeyedSubscript:@"isNetworkRouterReplace"];
  }

  v51 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessoryPairingEvent isThreadAccessory](self, "isThreadAccessory")}];
  [dictionary setObject:v51 forKeyedSubscript:@"isThreadAccessory"];

  if ([(HMDAccessoryPairingEvent *)self isThreadAccessory])
  {
    v52 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessoryPairingEvent isBTCommissioned](self, "isBTCommissioned")}];
    [dictionary setObject:v52 forKeyedSubscript:@"threadOnboardIsBTCommissioned"];

    v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[HMDAccessoryPairingEvent threadStatus](self, "threadStatus")}];
    [dictionary setObject:v53 forKeyedSubscript:@"threadStatus"];

    v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[HMDAccessoryPairingEvent threadCapabilities](self, "threadCapabilities")}];
    [dictionary setObject:v54 forKeyedSubscript:@"threadCapabilities"];

    v55 = MEMORY[0x277CCABB0];
    [(HMDAccessoryPairingEvent *)self threadCommissioningDuration];
    v56 = [v55 numberWithDouble:?];
    [dictionary setObject:v56 forKeyedSubscript:@"threadOnboardDuration"];

    v57 = MEMORY[0x277CCABB0];
    threadCommissioningError = [(HMDAccessoryPairingEvent *)self threadCommissioningError];
    v59 = [v57 numberWithInteger:{objc_msgSend(threadCommissioningError, "code")}];
    [dictionary setObject:v59 forKeyedSubscript:@"threadCommissioningErrorCode"];

    threadCommissioningError2 = [(HMDAccessoryPairingEvent *)self threadCommissioningError];
    domain4 = [threadCommissioningError2 domain];
    [dictionary setObject:domain4 forKeyedSubscript:@"threadCommissioningErrorDomain"];
  }

  if ([(HMDAccessoryPairingEvent *)self isAddOperation])
  {
    lastAccessoryPairingState = [(HMDAccessoryPairingEvent *)self lastAccessoryPairingState];
    [dictionary setObject:lastAccessoryPairingState forKeyedSubscript:@"lastPairingState"];

    longestPairingState = [(HMDAccessoryPairingEvent *)self longestPairingState];
    [dictionary setObject:longestPairingState forKeyedSubscript:@"longestState"];

    v64 = MEMORY[0x277CCABB0];
    [(HMDAccessoryPairingEvent *)self longestPairingProgressStateDurationInMilliseconds];
    v65 = [v64 numberWithDouble:?];
    [dictionary setObject:v65 forKeyedSubscript:@"longestStateDuration"];
  }

  matterMetrics = [(HMDAccessoryPairingEvent *)self matterMetrics];

  if (matterMetrics)
  {
    matterMetrics2 = [(HMDAccessoryPairingEvent *)self matterMetrics];
    [dictionary addEntriesFromDictionary:matterMetrics2];

    [(HMDAccessoryPairingEvent *)self setMatterMetrics:0];
  }

  if ([(HMDAccessoryPairingEvent *)self hmdAccessoryPairingEventResidentConfirmation])
  {
    v68 = [(HMDAccessoryPairingEvent *)self residentConfirmationToString:[(HMDAccessoryPairingEvent *)self hmdAccessoryPairingEventResidentConfirmation]];
    [dictionary setObject:v68 forKeyedSubscript:@"HMDAccessoryPairingEventResidentConfirmationState"];

    v69 = MEMORY[0x277CCABB0];
    [(HMDAccessoryPairingEvent *)self residentConfirmationDurationInSeconds];
    v70 = [v69 numberWithDouble:?];
    [dictionary setObject:v70 forKeyedSubscript:@"HMDAccessoryPairingEventResidentConfirmationDurationInSeconds"];
  }

  v71 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessoryPairingEvent retry](self, "retry")}];
  [dictionary setObject:v71 forKeyedSubscript:@"HMDAccessoryPairingEventRetry"];

  v72 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessoryPairingEvent recoveryType](self, "recoveryType")}];
  [dictionary setObject:v72 forKeyedSubscript:@"HMDAccessoryPairingEventRecoveryType"];

  v73 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessoryPairingEvent previousRecoveryType](self, "previousRecoveryType")}];
  [dictionary setObject:v73 forKeyedSubscript:@"HMDAccessoryPairingEventPreviousRecoveryType"];

  v74 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessoryPairingEvent isPrimaryResidentOnline](self, "isPrimaryResidentOnline")}];
  [dictionary setObject:v74 forKeyedSubscript:@"isPrimaryResidentOnline"];

  v75 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessoryPairingEvent hasResidentInHome](self, "hasResidentInHome")}];
  [dictionary setObject:v75 forKeyedSubscript:@"hasResidentInHome"];

  v76 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessoryPairingEvent primaryResidentIsThreadCapable](self, "primaryResidentIsThreadCapable")}];
  [dictionary setObject:v76 forKeyedSubscript:@"primaryResidentIsThreadCapable"];

  v77 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDAccessoryPairingEvent btLoad](self, "btLoad")}];
  [dictionary setObject:v77 forKeyedSubscript:@"btLoad"];

  v78 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDAccessoryPairingEvent btAudioTask](self, "btAudioTask")}];
  [dictionary setObject:v78 forKeyedSubscript:@"btAudioTask"];

  v79 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDAccessoryPairingEvent btNonAudioTask](self, "btNonAudioTask")}];
  [dictionary setObject:v79 forKeyedSubscript:@"btNonAudioTask"];

  if ([(HMDAccessoryPairingEvent *)self _isMatterAccessory])
  {
    v80 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[HMDAccessoryPairingEvent currentWiFiBand](self, "currentWiFiBand")}];
    [dictionary setObject:v80 forKeyedSubscript:@"currentWiFiBand"];

    v81 = HMDMatterAccessoryPairingStepAsString([(HMDAccessoryPairingEvent *)self matterAccessoryPairingStep]);
    [dictionary setObject:v81 forKeyedSubscript:@"currentPairingStep"];

    v82 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessoryPairingEvent userPrivilege](self, "userPrivilege")}];
    [dictionary setObject:v82 forKeyedSubscript:@"userPrivilege"];

    v83 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessoryPairingEvent requiresMatterCustomCommissioningFlow](self, "requiresMatterCustomCommissioningFlow")}];
    [dictionary setObject:v83 forKeyedSubscript:@"requiresMatterCustomCommissioningFlow"];

    v84 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessoryPairingEvent matterAccessoryDiscovered](self, "matterAccessoryDiscovered")}];
    [dictionary setObject:v84 forKeyedSubscript:@"matterAccessoryDiscovered"];

    matterVendorID = [(HMDAccessoryPairingEvent *)self matterVendorID];
    if ([matterVendorID isEqual:&unk_286628450])
    {
      [dictionary setObject:0 forKeyedSubscript:@"matterVendorID"];
    }

    else
    {
      matterVendorID2 = [(HMDAccessoryPairingEvent *)self matterVendorID];
      [dictionary setObject:matterVendorID2 forKeyedSubscript:@"matterVendorID"];
    }

    matterProductID = [(HMDAccessoryPairingEvent *)self matterProductID];
    if ([matterProductID isEqual:&unk_286628450])
    {
      [dictionary setObject:0 forKeyedSubscript:@"matterProductID"];
    }

    else
    {
      matterProductID2 = [(HMDAccessoryPairingEvent *)self matterProductID];
      [dictionary setObject:matterProductID2 forKeyedSubscript:@"matterProductID"];
    }

    matterDeviceType = [(HMDAccessoryPairingEvent *)self matterDeviceType];
    [dictionary setObject:matterDeviceType forKeyedSubscript:@"matterDeviceType"];

    matterThreadCapabilities = [(HMDAccessoryPairingEvent *)self matterThreadCapabilities];
    [dictionary setObject:matterThreadCapabilities forKeyedSubscript:@"matterThreadCapabilities"];

    wedAccessory = [(HMDAccessoryPairingEvent *)self wedAccessory];
    [dictionary setObject:wedAccessory forKeyedSubscript:@"isWEDAccessory"];

    unauthenticatedMatterAccessoryPromptDuration = [(HMDAccessoryPairingEvent *)self unauthenticatedMatterAccessoryPromptDuration];
    v87 = @"unauthenticatedMatterAccessoryPromptDuration";
  }

  else
  {
    unauthenticatedMatterAccessoryPromptDuration = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessoryPairingEvent pairingUIState](self, "pairingUIState")}];
    v87 = @"HMDAccessoryPairingEventUIState";
  }

  [dictionary setObject:unauthenticatedMatterAccessoryPromptDuration forKeyedSubscript:v87];

  v94 = [dictionary copy];

  return v94;
}

void __56__HMDAccessoryPairingEvent_coreAnalyticsEventDictionary__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = [v5 stringWithFormat:@"mtr_%@", a2];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
}

- (void)prepareForObservation
{
  v81 = *MEMORY[0x277D85DE8];
  v74.receiver = self;
  v74.super_class = HMDAccessoryPairingEvent;
  [(HMMLogEvent *)&v74 prepareForObservation];
  if ([(HMDAccessoryPairingEvent *)self _isMatterAccessory])
  {
    v3 = [HMDAccessoryMetricVendorDetails alloc];
    accessoryManufacturer = [(HMDAccessoryPairingEvent *)self accessoryManufacturer];
    accessoryModel = [(HMDAccessoryPairingEvent *)self accessoryModel];
    matterSoftwareVersionString = [(HMDAccessoryPairingEvent *)self matterSoftwareVersionString];
    accessoryCategory = [(HMDAccessoryPairingEvent *)self accessoryCategory];
    model = [(HMDAccessoryMetricVendorDetails *)v3 initWithProductData:0 manufacturer:accessoryManufacturer model:accessoryModel firmwareVersion:matterSoftwareVersionString category:accessoryCategory differentiationNumber:0];
    [(HMDAccessoryPairingEvent *)self setVendorDetailsForReporting:model];
    goto LABEL_11;
  }

  pairedAccessory = [(HMDAccessoryPairingEvent *)self pairedAccessory];
  accessoryManufacturer = [pairedAccessory vendorInfo];

  accessoryModel = [(HMDAccessoryPairingEvent *)self vendorDetailsForReporting];
  matterSoftwareVersionString = [accessoryModel productData];
  accessoryCategory = [accessoryModel manufacturer];
  model = [accessoryModel model];
  firmwareVersion = [accessoryModel firmwareVersion];
  category = [accessoryModel category];
  if (!accessoryCategory)
  {
    if (accessoryManufacturer)
    {
      accessoryCategory = [accessoryManufacturer manufacturer];
    }

    else
    {
      pairedAccessory2 = [(HMDAccessoryPairingEvent *)self pairedAccessory];
      isKnownManufacturer = [pairedAccessory2 isKnownManufacturer];

      accessoryManufacturer2 = [(HMDAccessoryPairingEvent *)self accessoryManufacturer];
      accessoryCategory = accessoryManufacturer2;
      if ((isKnownManufacturer & 1) == 0)
      {
        v15 = anonymizeUnknownVendorString(accessoryManufacturer2);

        accessoryCategory = v15;
      }
    }
  }

  if (!model)
  {
    model2 = [accessoryManufacturer model];
    if (model2)
    {
      model = [accessoryManufacturer model];
    }

    else
    {
      accessoryModel2 = [(HMDAccessoryPairingEvent *)self accessoryModel];
      model = anonymizeUnknownVendorString(accessoryModel2);
    }

    if (category)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

  if (!category)
  {
LABEL_30:
    category = [(HMDAccessoryPairingEvent *)self accessoryCategory];
  }

LABEL_10:
  v16 = [[HMDAccessoryMetricVendorDetails alloc] initWithProductData:matterSoftwareVersionString manufacturer:accessoryCategory model:model firmwareVersion:firmwareVersion category:category differentiationNumber:0];
  [(HMDAccessoryPairingEvent *)self setVendorDetailsForReporting:v16];

LABEL_11:
  logEventStateManager = [(HMDAccessoryPairingEvent *)self logEventStateManager];
  accessoryServerIdentifier = [(HMDAccessoryPairingEvent *)self accessoryServerIdentifier];
  -[HMDAccessoryPairingEvent setRetryCount:](self, "setRetryCount:", [logEventStateManager retryCountForIdentifier:accessoryServerIdentifier]);

  error = [(HMMLogEvent *)self error];

  if (!error)
  {
    logEventStateManager2 = [(HMDAccessoryPairingEvent *)self logEventStateManager];
    [logEventStateManager2 clearRetryCountMap];
  }

  logEventStateManager3 = [(HMDAccessoryPairingEvent *)self logEventStateManager];
  -[HMDAccessoryPairingEvent setPairingUIState:](self, "setPairingUIState:", [logEventStateManager3 pairingUIState]);

  logEventStateManager4 = [(HMDAccessoryPairingEvent *)self logEventStateManager];
  -[HMDAccessoryPairingEvent setRecoveryType:](self, "setRecoveryType:", [logEventStateManager4 recoveryType]);

  logEventStateManager5 = [(HMDAccessoryPairingEvent *)self logEventStateManager];
  -[HMDAccessoryPairingEvent setPreviousRecoveryType:](self, "setPreviousRecoveryType:", [logEventStateManager5 previousRecoveryType]);

  if ([(HMDAccessoryPairingEvent *)self isAddOperation])
  {
    logEventStateManager6 = [(HMDAccessoryPairingEvent *)self logEventStateManager];
    error2 = [(HMMLogEvent *)self error];
    [logEventStateManager6 updateStatesOnResult:{objc_msgSend(error2, "code") == 0}];
  }

  if ([(HMDAccessoryPairingEvent *)self isAddOperation])
  {
    accessoryAddRequestIdentifier = [(HMDAccessoryPairingEvent *)self accessoryAddRequestIdentifier];
    v27 = [accessoryAddRequestIdentifier length];

    if (v27)
    {
      logEventStateManager7 = [(HMDAccessoryPairingEvent *)self logEventStateManager];
      accessoryAddRequestIdentifier2 = [(HMDAccessoryPairingEvent *)self accessoryAddRequestIdentifier];
      endDate = [(HMDAccessoryPairingEvent *)self endDate];
      [logEventStateManager7 updateLastPairingProgressStateEventForIdentifier:accessoryAddRequestIdentifier2 withDate:endDate];

      logEventStateManager8 = [(HMDAccessoryPairingEvent *)self logEventStateManager];
      accessoryAddRequestIdentifier3 = [(HMDAccessoryPairingEvent *)self accessoryAddRequestIdentifier];
      v33 = [logEventStateManager8 getLastProgressStateForAccessory:accessoryAddRequestIdentifier3];

      logEventStateManager9 = [(HMDAccessoryPairingEvent *)self logEventStateManager];
      accessoryAddRequestIdentifier4 = [(HMDAccessoryPairingEvent *)self accessoryAddRequestIdentifier];
      [logEventStateManager9 getTimeDurationForProgressStateForIdentifier:accessoryAddRequestIdentifier4 state:v33];
      v37 = v36;

      if (v37 <= 0.0)
      {
        v46 = objc_autoreleasePoolPush();
        selfCopy = self;
        v48 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          v49 = HMFGetLogIdentifier();
          accessoryAddRequestIdentifier5 = [(HMDAccessoryPairingEvent *)selfCopy accessoryAddRequestIdentifier];
          *buf = 138543618;
          v76 = v49;
          v77 = 2112;
          v78 = accessoryAddRequestIdentifier5;
          _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_INFO, "%{public}@Submitting placeholder metric values since same accessory request UUID %@ being paired multiple times before CA event submission", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v46);
        [(HMDAccessoryPairingEvent *)selfCopy setLastAccessoryPairingState:@"Undetermined due to successive pairing attempts"];
        [(HMDAccessoryPairingEvent *)selfCopy setLongestPairingState:@"Undetermined due to successive pairing attempts"];
        [(HMDAccessoryPairingEvent *)selfCopy setLongestPairingProgressStateDurationInMilliseconds:0.0];
      }

      else
      {
        if (v33)
        {
          v38 = v33;
        }

        else
        {
          v38 = @"Unknown";
        }

        [(HMDAccessoryPairingEvent *)self setLastAccessoryPairingState:v38];
        logEventStateManager10 = [(HMDAccessoryPairingEvent *)self logEventStateManager];
        accessoryAddRequestIdentifier6 = [(HMDAccessoryPairingEvent *)self accessoryAddRequestIdentifier];
        v41 = [logEventStateManager10 getLongestProgressStateForAccessory:accessoryAddRequestIdentifier6];
        if (v41)
        {
          logEventStateManager11 = [(HMDAccessoryPairingEvent *)self logEventStateManager];
          accessoryAddRequestIdentifier7 = [(HMDAccessoryPairingEvent *)self accessoryAddRequestIdentifier];
          v44 = [logEventStateManager11 getLongestProgressStateForAccessory:accessoryAddRequestIdentifier7];
          [(HMDAccessoryPairingEvent *)self setLongestPairingState:v44];
        }

        else
        {
          [(HMDAccessoryPairingEvent *)self setLongestPairingState:@"Unknown"];
        }

        logEventStateManager12 = [(HMDAccessoryPairingEvent *)self logEventStateManager];
        accessoryAddRequestIdentifier8 = [(HMDAccessoryPairingEvent *)self accessoryAddRequestIdentifier];
        [logEventStateManager12 getTimeDurationForLongestProgressStateForAccessory:accessoryAddRequestIdentifier8];
        [(HMDAccessoryPairingEvent *)self setLongestPairingProgressStateDurationInMilliseconds:?];

        logEventStateManager13 = [(HMDAccessoryPairingEvent *)self logEventStateManager];
        accessoryAddRequestIdentifier9 = [(HMDAccessoryPairingEvent *)self accessoryAddRequestIdentifier];
        [logEventStateManager13 clearPairingProgressStateTrackerForIdentifier:accessoryAddRequestIdentifier9];
      }
    }
  }

  if ([(HMDAccessoryPairingEvent *)self _isMatterAccessory]&& [(HMDAccessoryPairingEvent *)self isAddOperation])
  {
    v56 = [(HMDAccessoryPairingEvent *)self matterAccessoryPairingStep]== 27;
    error3 = [(HMMLogEvent *)self error];
    v58 = error3 == 0;

    if (v56 != v58)
    {
      v59 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v61 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        v62 = HMFGetLogIdentifier();
        error4 = [(HMMLogEvent *)selfCopy2 error];
        v64 = HMDMatterAccessoryPairingStepAsString([(HMDAccessoryPairingEvent *)selfCopy2 matterAccessoryPairingStep]);
        *buf = 138543874;
        v76 = v62;
        v77 = 2112;
        v78 = error4;
        v79 = 2112;
        v80 = v64;
        _os_log_impl(&dword_2531F8000, v61, OS_LOG_TYPE_ERROR, "%{public}@Unexpected step and error in submitting pairing log event %@ %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v59);
    }

    error5 = [(HMMLogEvent *)self error];
    underlyingErrors = [error5 underlyingErrors];
    firstObject = [underlyingErrors firstObject];

    if (firstObject)
    {
      v68 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v70 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        v71 = HMFGetLogIdentifier();
        error6 = [(HMMLogEvent *)selfCopy3 error];
        *buf = 138543618;
        v76 = v71;
        v77 = 2112;
        v78 = error6;
        _os_log_impl(&dword_2531F8000, v70, OS_LOG_TYPE_ERROR, "%{public}@Unexpected error contains underlying error %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v68);
    }
  }

  v73 = *MEMORY[0x277D85DE8];
}

- (NSDate)endDate
{
  os_unfair_lock_lock_with_options();
  v3 = self->_endDate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)markEndTime
{
  v5.receiver = self;
  v5.super_class = HMDAccessoryPairingEvent;
  [(HMMLogEvent *)&v5 markEndTime];
  os_unfair_lock_lock_with_options();
  if (!self->_endDate)
  {
    date = [MEMORY[0x277CBEAA8] date];
    endDate = self->_endDate;
    self->_endDate = date;
  }

  os_unfair_lock_unlock(&self->_lock);
  [(HMDAccessoryPairingEvent *)self _setBtLoad];
}

- (void)handleUnauthenticatedMatterAccessoryPromptEnd
{
  if ([(HMDAccessoryPairingEvent *)self matterUnauthenticatedPromptStartTimeSet])
  {
    v3 = MEMORY[0x277CCABB0];
    [MEMORY[0x277D17DC0] currentTime];
    v5 = v4;
    [(HMDAccessoryPairingEvent *)self matterUnauthenticatedPromptStartTime];
    v7 = [v3 numberWithDouble:v5 - v6];
    [(HMDAccessoryPairingEvent *)self setUnauthenticatedMatterAccessoryPromptDuration:v7];

    [(HMDAccessoryPairingEvent *)self setMatterUnauthenticatedPromptStartTimeSet:0];
  }
}

- (void)handleUnauthenticatedMatterAccessoryPromptStart
{
  [MEMORY[0x277D17DC0] currentTime];
  [(HMDAccessoryPairingEvent *)self setMatterUnauthenticatedPromptStartTime:?];

  [(HMDAccessoryPairingEvent *)self setMatterUnauthenticatedPromptStartTimeSet:1];
}

- (void)_setBtLoad
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = +[HMDWirelessLoadManager sharedInstance];
  getBtLoadData = [v3 getBtLoadData];
  v5 = [getBtLoadData objectForKeyedSubscript:@"kBtLoadKey"];
  self->_btLoad = [v5 intValue];

  v6 = [getBtLoadData objectForKeyedSubscript:@"kBtAudioTask"];
  self->_btAudioTask = [v6 intValue];

  v7 = [getBtLoadData objectForKeyedSubscript:@"kBtNonAudioTask"];
  self->_btNonAudioTask = [v7 intValue];

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138544130;
    v14 = v11;
    v15 = 1024;
    btLoad = [(HMDAccessoryPairingEvent *)selfCopy btLoad];
    v17 = 1024;
    btAudioTask = [(HMDAccessoryPairingEvent *)selfCopy btAudioTask];
    v19 = 1024;
    btNonAudioTask = [(HMDAccessoryPairingEvent *)selfCopy btNonAudioTask];
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Pairing BT Load: %d AudioTsk: %d NonAudioTsk: %d", &v13, 0x1Eu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_updateThreadPropertiesWithPairedAccessory:(id)accessory
{
  accessoryCopy = accessory;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = accessoryCopy;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = v5;
  if (v5)
  {
    -[HMDAccessoryPairingEvent setThreadCapabilities:](self, "setThreadCapabilities:", [v5 threadCapabilities]);
    -[HMDAccessoryPairingEvent setThreadStatus:](self, "setThreadStatus:", [v6 threadStatus]);
  }
}

- (void)updateEventPropertiesWithHAPAccessory:(id)accessory
{
  accessoryCopy = accessory;
  if ([(HMDAccessoryPairingEvent *)self _isMatterAccessory])
  {
    server = [accessoryCopy server];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = server;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if (v6)
    {
      vendorNameFromDcl = [v6 vendorNameFromDcl];
      [(HMDAccessoryPairingEvent *)self setAccessoryManufacturer:vendorNameFromDcl];

      productNameFromDcl = [v6 productNameFromDcl];
      [(HMDAccessoryPairingEvent *)self setAccessoryModel:productNameFromDcl];

      softwareVersionString = [v6 softwareVersionString];
      [(HMDAccessoryPairingEvent *)self setMatterSoftwareVersionString:softwareVersionString];

      vendorID = [v6 vendorID];
      if (vendorID)
      {
        v11 = vendorID;
        vendorNameFromDcl2 = [v6 vendorNameFromDcl];

        if (!vendorNameFromDcl2)
        {
          vendorID2 = [v6 vendorID];
          stringValue = [vendorID2 stringValue];
          [(HMDAccessoryPairingEvent *)self setAccessoryManufacturer:stringValue];
        }
      }

      productID = [v6 productID];
      if (productID)
      {
        v16 = productID;
        productNameFromDcl2 = [v6 productNameFromDcl];

        if (!productNameFromDcl2)
        {
          productID2 = [v6 productID];
          stringValue2 = [productID2 stringValue];
          [(HMDAccessoryPairingEvent *)self setAccessoryModel:stringValue2];
        }
      }

      -[HMDAccessoryPairingEvent setThreadAccessory:](self, "setThreadAccessory:", [v6 linkLayerType] == 4);
      supportedLinkLayerTypes = [v6 supportedLinkLayerTypes];
      [(HMDAccessoryPairingEvent *)self setSupportedLinkLayerTypes:supportedLinkLayerTypes];
    }
  }

  accessoryManufacturer = [(HMDAccessoryPairingEvent *)self accessoryManufacturer];

  if (!accessoryManufacturer)
  {
    manufacturer = [accessoryCopy manufacturer];
    [(HMDAccessoryPairingEvent *)self setAccessoryManufacturer:manufacturer];
  }

  accessoryModel = [(HMDAccessoryPairingEvent *)self accessoryModel];

  if (!accessoryModel)
  {
    model = [accessoryCopy model];
    [(HMDAccessoryPairingEvent *)self setAccessoryModel:model];
  }

  accessoryCategory = [(HMDAccessoryPairingEvent *)self accessoryCategory];
  if (!accessoryCategory || (v26 = accessoryCategory, v27 = [(HMDAccessoryPairingEvent *)self _isMatterAccessory], v26, v27))
  {
    v28 = MEMORY[0x277CD1680];
    category = [accessoryCopy category];
    v30 = [v28 categoryWithCategoryIdentifier:category];

    categoryType = [v30 categoryType];
    [(HMDAccessoryPairingEvent *)self setAccessoryCategory:categoryType];
  }
}

- (int)currentWiFiBand
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = WiFiCopyCurrentNetworkInfoEx();
  [v2 objectForKey:@"platformNetwork"];
  OperatingBand = WiFiNetworkGetOperatingBand();

  v4 = *MEMORY[0x277D85DE8];
  return OperatingBand;
}

- (void)updateEventPropertiesWithPairedAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v5 = accessoryCopy;
  if (accessoryCopy)
  {
    v13 = accessoryCopy;
    [(HMDAccessoryPairingEvent *)self setPairedAccessory:accessoryCopy];
    accessoryManufacturer = [(HMDAccessoryPairingEvent *)self accessoryManufacturer];

    if (!accessoryManufacturer)
    {
      manufacturer = [v13 manufacturer];
      [(HMDAccessoryPairingEvent *)self setAccessoryManufacturer:manufacturer];
    }

    accessoryModel = [(HMDAccessoryPairingEvent *)self accessoryModel];

    if (!accessoryModel)
    {
      model = [v13 model];
      [(HMDAccessoryPairingEvent *)self setAccessoryModel:model];
    }

    accessoryCategory = [(HMDAccessoryPairingEvent *)self accessoryCategory];

    if (!accessoryCategory)
    {
      category = [v13 category];
      categoryType = [category categoryType];
      [(HMDAccessoryPairingEvent *)self setAccessoryCategory:categoryType];
    }

    accessoryCopy = [(HMDAccessoryPairingEvent *)self _updateThreadPropertiesWithPairedAccessory:v13];
    v5 = v13;
  }

  MEMORY[0x2821F96F8](accessoryCopy, v5);
}

- (HMDAccessoryPairingEvent)initWithAccessoryDescription:(id)description home:(id)home
{
  descriptionCopy = description;
  homeCopy = home;
  uuid = [homeCopy uuid];
  v79.receiver = self;
  v79.super_class = HMDAccessoryPairingEvent;
  v9 = [(HMMHomeLogEvent *)&v79 initWithHomeUUID:uuid];

  if (v9)
  {
    v10 = +[HMDAccessoryPairingLogEventStateManager sharedManager];
    logEventStateManager = v9->_logEventStateManager;
    v9->_logEventStateManager = v10;

    addRequestIdentifier = [descriptionCopy addRequestIdentifier];

    if (addRequestIdentifier)
    {
      v13 = v9->_logEventStateManager;
      date = [MEMORY[0x277CBEAA8] date];
      addRequestIdentifier2 = [descriptionCopy addRequestIdentifier];
      uUIDString = [addRequestIdentifier2 UUIDString];
      [(HMDAccessoryPairingLogEventStateManager *)v13 startProgressStateTrackerWithDate:date identifier:uUIDString];

      addRequestIdentifier3 = [descriptionCopy addRequestIdentifier];
      uUIDString2 = [addRequestIdentifier3 UUIDString];
      accessoryAddRequestIdentifier = v9->_accessoryAddRequestIdentifier;
      v9->_accessoryAddRequestIdentifier = uUIDString2;
    }

    if ([descriptionCopy supportsIP])
    {
      v9->_linkType = 1;
    }

    else if ([descriptionCopy supportsBTLE])
    {
      v9->_linkType = 2;
    }

    else
    {
      v9->_linkType = 0;
    }

    setupAccessoryPayload = [descriptionCopy setupAccessoryPayload];
    communicationProtocol = [setupAccessoryPayload communicationProtocol];

    if ((communicationProtocol - 1) <= 1)
    {
      v9->_communicationProtocol = communicationProtocol;
    }

    v9->_addOperation = 1;
    ownershipToken = [descriptionCopy ownershipToken];

    if (ownershipToken)
    {
      v9->_usedOwnershipProof = 1;
    }

    setupAccessoryPayload2 = [descriptionCopy setupAccessoryPayload];
    threadIdentifier = [setupAccessoryPayload2 threadIdentifier];

    if (threadIdentifier)
    {
      v9->_threadAccessory = 1;
    }

    if ([homeCopy doesHomeContainResident])
    {
      primaryResident = [homeCopy primaryResident];
      v26 = primaryResident;
      v9->_hasResidentInHome = 1;
      if (primaryResident)
      {
        LOBYTE(primaryResident) = [primaryResident isReachable];
      }

      v9->_isPrimaryResidentOnline = primaryResident;
    }

    else
    {
      v9->_hasResidentInHome = 0;
      v9->_isPrimaryResidentOnline = 0;
    }

    category = [descriptionCopy category];
    v28 = MEMORY[0x277CD1680];
    setupAccessoryPayload3 = [descriptionCopy setupAccessoryPayload];
    categoryNumber = [setupAccessoryPayload3 categoryNumber];
    v31 = [v28 categoryWithCategoryIdentifier:categoryNumber];

    if (([category isWiFiRouterAccessoryCategory] & 1) != 0 || objc_msgSend(v31, "isWiFiRouterAccessoryCategory"))
    {
      v9->_networkRouterAdd = 1;
      wiFiRouterAccessories = [homeCopy wiFiRouterAccessories];
      v33 = [wiFiRouterAccessories count];

      if (v33)
      {
        v9->_networkRouterReplace = 1;
      }
    }

    accessoryUUID = [descriptionCopy accessoryUUID];
    accessoryUUID = v9->_accessoryUUID;
    v9->_accessoryUUID = accessoryUUID;

    appIdentifier = [descriptionCopy appIdentifier];
    appIdentifier = v9->_appIdentifier;
    v9->_appIdentifier = appIdentifier;

    if (category)
    {
      v38 = category;
    }

    else
    {
      v38 = v31;
    }

    categoryType = [v38 categoryType];
    objc_storeStrong(&v9->_accessoryCategory, categoryType);

    setupAccessoryPayload4 = [descriptionCopy setupAccessoryPayload];
    category2 = [setupAccessoryPayload4 category];
    categoryType2 = [category2 categoryType];
    categoryType = v9->_categoryType;
    v9->_categoryType = categoryType2;

    productNumber = [setupAccessoryPayload4 productNumber];
    productNumber = v9->_productNumber;
    v9->_productNumber = productNumber;

    v9->_requiresMatterCustomCommissioningFlow = [setupAccessoryPayload4 requiresMatterCustomCommissioningFlow];
    currentUser = [homeCopy currentUser];
    v9->_userPrivilege = [currentUser privilege];

    if ([(HMDAccessoryPairingEvent *)v9 _isMatterAccessory])
    {
      v76 = v31;
      v77 = category;
      setupAccessoryPayload5 = [descriptionCopy setupAccessoryPayload];
      chipAccessorySetupPayload = [setupAccessoryPayload5 chipAccessorySetupPayload];
      vendorID = [chipAccessorySetupPayload vendorID];

      setupAccessoryPayload6 = [descriptionCopy setupAccessoryPayload];
      chipAccessorySetupPayload2 = [setupAccessoryPayload6 chipAccessorySetupPayload];
      productID = [chipAccessorySetupPayload2 productID];

      v53 = vendorID;
      objc_storeStrong(&v9->_matterVendorID, vendorID);
      objc_storeStrong(&v9->_matterProductID, productID);
      if (vendorID)
      {
        homeManager = [homeCopy homeManager];
        chipDataSource = [homeManager chipDataSource];
        [chipDataSource vendorMetadataStore];
        v57 = v56 = productID;
        v58 = [v57 retrieveVendorMetadataForVendorID:v53 productID:v56];

        productID = v56;
        v59 = [v58 productWithID:v56];
        name = [v58 name];
        accessoryManufacturer = v9->_accessoryManufacturer;
        v9->_accessoryManufacturer = name;

        name2 = [v59 name];
        accessoryModel = v9->_accessoryModel;
        v9->_accessoryModel = name2;

        deviceTypeID = [v59 deviceTypeID];
        matterDeviceType = v9->_matterDeviceType;
        v9->_matterDeviceType = deviceTypeID;

        v9->_currentWiFiBand = 0;
        v78 = v58;
        if (!v58)
        {
          stringValue = [v53 stringValue];
          v67 = v9->_accessoryManufacturer;
          v9->_accessoryManufacturer = stringValue;

          v78 = 0;
        }
      }

      else
      {
        v59 = 0;
        v78 = 0;
        v9->_currentWiFiBand = 0;
      }

      v75 = v53;
      if (productID && !v59)
      {
        stringValue2 = [productID stringValue];
        v69 = v9->_accessoryModel;
        v9->_accessoryModel = stringValue2;
      }

      v9->_linkType = 1;
      v70 = v9->_logEventStateManager;
      [homeCopy workQueue];
      v72 = v71 = productID;
      logEventSubmitter = [homeCopy logEventSubmitter];
      [(HMDAccessoryPairingLogEventStateManager *)v70 configureWithPairingEvent:v9 workQueue:v72 logEventSubmitter:logEventSubmitter];

      v9->_matterAccessoryPairingStep = 1;
      v31 = v76;
      category = v77;
    }

    [(HMDAccessoryPairingLogEventStateManager *)v9->_logEventStateManager resetStatesForNewAddOperation];
  }

  return v9;
}

- (HMDAccessoryPairingEvent)initWithUnpairedAccessory:(id)accessory pairedAccessory:(id)pairedAccessory hapAccessory:(id)hapAccessory appIdentifier:(id)identifier retry:(BOOL)retry home:(id)home isAddOperation:(BOOL)operation logEventStateManager:(id)self0
{
  accessoryCopy = accessory;
  pairedAccessoryCopy = pairedAccessory;
  hapAccessoryCopy = hapAccessory;
  identifierCopy = identifier;
  homeCopy = home;
  managerCopy = manager;
  uuid = [homeCopy uuid];
  v159.receiver = self;
  v159.super_class = HMDAccessoryPairingEvent;
  v21 = [(HMMHomeLogEvent *)&v159 initWithHomeUUID:uuid];

  if (!v21)
  {
    goto LABEL_77;
  }

  homeManager = [homeCopy homeManager];
  objc_storeStrong(&v21->_logEventStateManager, manager);
  v154 = hapAccessoryCopy;
  v155 = pairedAccessoryCopy;
  if (accessoryCopy)
  {
    pairedAccessoryCopy2 = pairedAccessory;
    logEventStateManager = v21->_logEventStateManager;
    date = [MEMORY[0x277CBEAA8] date];
    uuid2 = [accessoryCopy uuid];
    uUIDString = [uuid2 UUIDString];
    [(HMDAccessoryPairingLogEventStateManager *)logEventStateManager startProgressStateTrackerWithDate:date identifier:uUIDString];

    uuid3 = [accessoryCopy uuid];
    accessoryUUID = v21->_accessoryUUID;
    v21->_accessoryUUID = uuid3;

    category = [accessoryCopy category];
    categoryType = [category categoryType];
    accessoryCategory = v21->_accessoryCategory;
    v21->_accessoryCategory = categoryType;

    identifier = [accessoryCopy identifier];
    v32 = [identifier copy];
    accessoryServerIdentifier = v21->_accessoryServerIdentifier;
    v21->_accessoryServerIdentifier = v32;

    uuid4 = [accessoryCopy uuid];
    uUIDString2 = [uuid4 UUIDString];
    accessoryAddRequestIdentifier = v21->_accessoryAddRequestIdentifier;
    v21->_accessoryAddRequestIdentifier = uUIDString2;

    objc_storeStrong(&v21->_appIdentifier, identifier);
    v21->_retry = retry;
    preferredAccessoryServer = [accessoryCopy preferredAccessoryServer];
    v38 = preferredAccessoryServer;
    if (!preferredAccessoryServer)
    {
      preferredAccessoryServer = accessoryCopy;
    }

    v21->_linkType = [preferredAccessoryServer linkType];
    v21->_communicationProtocol = [v38 communicationProtocol];
    v39 = v38;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = v39;
    }

    else
    {
      v40 = 0;
    }

    v41 = v40;

    if (v41)
    {
      model = [v41 model];
      accessoryModel = v21->_accessoryModel;
      v21->_accessoryModel = model;

      if ([v41 isWacAccessory])
      {
        hapWACAccessory = [v41 hapWACAccessory];
        model2 = [hapWACAccessory model];
        v46 = v21->_accessoryModel;
        v21->_accessoryModel = model2;

        hapWACAccessory2 = [v41 hapWACAccessory];
        manufacturer = [hapWACAccessory2 manufacturer];
        accessoryManufacturer = v21->_accessoryManufacturer;
        v21->_accessoryManufacturer = manufacturer;
      }
    }

    if (operation)
    {
      category2 = [accessoryCopy category];
      isWiFiRouterAccessoryCategory = [category2 isWiFiRouterAccessoryCategory];

      if (isWiFiRouterAccessoryCategory)
      {
        v21->_networkRouterAdd = 1;
        wiFiRouterAccessories = [homeCopy wiFiRouterAccessories];
        v53 = [wiFiRouterAccessories count];

        if (v53)
        {
          v21->_networkRouterReplace = 1;
        }
      }
    }

    v54 = v39;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v55 = v54;
    }

    else
    {
      v55 = 0;
    }

    v56 = v55;

    hapAccessoryCopy = v154;
    if (v56 || [v54 linkLayerType] == 4)
    {
      v21->_threadAccessory = 1;
    }

    currentUser = [homeCopy currentUser];
    v21->_userPrivilege = [currentUser privilege];

    pairedAccessoryCopy = v155;
    if ([(HMDAccessoryPairingEvent *)v21 _isMatterAccessory])
    {
      v152 = v56;
      vendorID = [accessoryCopy vendorID];
      matterVendorID = v21->_matterVendorID;
      v21->_matterVendorID = vendorID;

      productID = [accessoryCopy productID];
      matterProductID = v21->_matterProductID;
      v21->_matterProductID = productID;

      vendorID2 = [accessoryCopy vendorID];

      if (vendorID2)
      {
        chipDataSource = [homeManager chipDataSource];
        vendorMetadataStore = [chipDataSource vendorMetadataStore];
        vendorID3 = [accessoryCopy vendorID];
        productID2 = [accessoryCopy productID];
        v67 = [vendorMetadataStore retrieveVendorMetadataForVendorID:vendorID3 productID:productID2];

        hapAccessoryCopy = v154;
        productID3 = [accessoryCopy productID];
        v69 = [v67 productWithID:productID3];

        name = [v67 name];
        v71 = v21->_accessoryManufacturer;
        v21->_accessoryManufacturer = name;

        name2 = [v69 name];
        v73 = v21->_accessoryModel;
        v21->_accessoryModel = name2;

        deviceTypeID = [v69 deviceTypeID];
        matterDeviceType = v21->_matterDeviceType;
        v21->_matterDeviceType = deviceTypeID;

        v76 = v67 == 0;
        pairedAccessoryCopy = v155;
        v77 = v76;
        v78 = v69 == 0;
      }

      else
      {
        v78 = 1;
        v77 = 1;
      }

      v21->_currentWiFiBand = 0;
      vendorID4 = [accessoryCopy vendorID];

      if (vendorID4 && v77)
      {
        vendorID5 = [accessoryCopy vendorID];
        stringValue = [vendorID5 stringValue];
        v84 = v21->_accessoryManufacturer;
        v21->_accessoryManufacturer = stringValue;
      }

      productID4 = [accessoryCopy productID];
      v86 = productID4 != 0 && v78;

      if (v86 == 1)
      {
        productID5 = [accessoryCopy productID];
        stringValue2 = [productID5 stringValue];
        v89 = v21->_accessoryModel;
        v21->_accessoryModel = stringValue2;
      }

      v21->_linkType = 1;
      v90 = v54;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v91 = v90;
      }

      else
      {
        v91 = 0;
      }

      v92 = v91;

      supportedLinkLayerTypes = [v92 supportedLinkLayerTypes];

      supportedLinkLayerTypes = v21->_supportedLinkLayerTypes;
      v21->_supportedLinkLayerTypes = supportedLinkLayerTypes;
      v56 = v152;
    }

    else
    {
      v79 = v21->_logEventStateManager;
      supportedLinkLayerTypes = [accessoryCopy identifier];
      [(HMDAccessoryPairingLogEventStateManager *)v79 incrementRetryCount:supportedLinkLayerTypes];
    }

    pairedAccessory = pairedAccessoryCopy2;
  }

  if (pairedAccessoryCopy)
  {
    objc_storeStrong(&v21->_pairedAccessory, pairedAccessory);
    category3 = [pairedAccessoryCopy category];
    categoryType2 = [category3 categoryType];
    v96 = v21->_accessoryCategory;
    v21->_accessoryCategory = categoryType2;

    identifier2 = [pairedAccessoryCopy identifier];
    v98 = [identifier2 copy];
    v99 = v21->_accessoryServerIdentifier;
    v21->_accessoryServerIdentifier = v98;

    uuid5 = [pairedAccessoryCopy uuid];
    v101 = v21->_accessoryUUID;
    v21->_accessoryUUID = uuid5;

    metricLoggingVendorDetails = [pairedAccessoryCopy metricLoggingVendorDetails];
    vendorDetailsForReporting = v21->_vendorDetailsForReporting;
    v21->_vendorDetailsForReporting = metricLoggingVendorDetails;

    v104 = pairedAccessoryCopy;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v106 = v104;
    }

    else
    {
      v106 = 0;
    }

    v107 = v106;

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_51;
    }

    v21->_certificationStatus = [v104 certificationStatus];
    if (!v21->_linkType)
    {
      if ([v104 hasBTLELink])
      {
        v108 = 2;
LABEL_49:
        v21->_linkType = v108;
        goto LABEL_50;
      }

      if ([v104 hasIPLink])
      {
        v108 = 1;
        goto LABEL_49;
      }
    }

LABEL_50:
    supportedLinkLayerTypes2 = [v104 supportedLinkLayerTypes];
    v110 = v21->_supportedLinkLayerTypes;
    v21->_supportedLinkLayerTypes = supportedLinkLayerTypes2;

LABEL_51:
    [(HMDAccessoryPairingEvent *)v21 _updateThreadPropertiesWithPairedAccessory:v107];
    v21->_accessorySupportsWoL = [v107 supportsWoL];
    v21->_communicationProtocol = [v107 communicationProtocol];
    v21->_threadAccessory = [v107 hasThreadServer];
    if ([(HMDAccessoryPairingEvent *)v21 _isMatterAccessory])
    {
      matterVendorID = [v107 matterVendorID];
      v112 = v21->_matterVendorID;
      v21->_matterVendorID = matterVendorID;

      matterProductID = [v107 matterProductID];
      v114 = v21->_matterProductID;
      v21->_matterProductID = matterProductID;

      matterVendorID2 = [v107 matterVendorID];

      if (matterVendorID2)
      {
        chipDataSource2 = [homeManager chipDataSource];
        vendorMetadataStore2 = [chipDataSource2 vendorMetadataStore];
        matterVendorID3 = [v107 matterVendorID];
        matterProductID2 = [v107 matterProductID];
        v120 = [vendorMetadataStore2 retrieveVendorMetadataForVendorID:matterVendorID3 productID:matterProductID2];

        matterProductID3 = [v107 matterProductID];
        v122 = [v120 productWithID:matterProductID3];

        name3 = [v120 name];
        v124 = v21->_accessoryManufacturer;
        v21->_accessoryManufacturer = name3;

        name4 = [v122 name];
        v126 = v21->_accessoryModel;
        v21->_accessoryModel = name4;

        deviceTypeID2 = [v122 deviceTypeID];
        v128 = v21->_matterDeviceType;
        v21->_matterDeviceType = deviceTypeID2;

        v129 = v120 == 0;
        v130 = v122 == 0;
      }

      else
      {
        v129 = 1;
        v130 = 1;
      }

      v21->_currentWiFiBand = 0;
      matterVendorID4 = [v107 matterVendorID];

      if (matterVendorID4 && v129)
      {
        matterVendorID5 = [v107 matterVendorID];
        stringValue3 = [matterVendorID5 stringValue];
        v134 = v21->_accessoryManufacturer;
        v21->_accessoryManufacturer = stringValue3;
      }

      matterProductID4 = [v107 matterProductID];
      v136 = matterProductID4 != 0 && v130;

      hapAccessoryCopy = v154;
      if (v136 == 1)
      {
        matterProductID5 = [v107 matterProductID];
        stringValue4 = [matterProductID5 stringValue];
        v139 = v21->_accessoryModel;
        v21->_accessoryModel = stringValue4;
      }

      firmwareVersion = [v104 firmwareVersion];
      versionString = [firmwareVersion versionString];
      matterSoftwareVersionString = v21->_matterSoftwareVersionString;
      v21->_matterSoftwareVersionString = versionString;

      v21->_linkType = 1;
      pairedAccessoryCopy = v155;
    }
  }

  if (hapAccessoryCopy && !v21->_linkType)
  {
    v21->_linkType = [hapAccessoryCopy linkType];
  }

  if (hapAccessoryCopy && !v21->_communicationProtocol)
  {
    server = [hapAccessoryCopy server];
    v21->_communicationProtocol = [server communicationProtocol];
  }

  if ([homeCopy doesHomeContainResident])
  {
    primaryResident = [homeCopy primaryResident];
    v145 = primaryResident;
    v21->_hasResidentInHome = 1;
    if (primaryResident)
    {
      LOBYTE(primaryResident) = [primaryResident isReachable];
    }

    v21->_isPrimaryResidentOnline = primaryResident;
    capabilities = [v145 capabilities];
    v21->_primaryResidentIsThreadCapable = [capabilities supportsThreadBorderRouter];
  }

  else
  {
    v21->_hasResidentInHome = 0;
    v21->_isPrimaryResidentOnline = 0;
    v21->_primaryResidentIsThreadCapable = 0;
  }

  v21->_hmdAccessoryPairingEventResidentConfirmation = 0;
  residentConfirmationTimeStarted = v21->_residentConfirmationTimeStarted;
  v21->_residentConfirmationTimeStarted = 0;

  v21->_residentConfirmationDurationInSeconds = 0.0;
  *&v21->_addOperation = operation;
  if (operation)
  {
    [(HMDAccessoryPairingLogEventStateManager *)v21->_logEventStateManager resetStatesForNewAddOperation];
    if ([(HMDAccessoryPairingEvent *)v21 _isMatterAccessory])
    {
      v148 = v21->_logEventStateManager;
      workQueue = [homeCopy workQueue];
      logEventSubmitter = [homeCopy logEventSubmitter];
      [(HMDAccessoryPairingLogEventStateManager *)v148 configureWithPairingEvent:v21 workQueue:workQueue logEventSubmitter:logEventSubmitter];

      v21->_matterAccessoryPairingStep = 1;
    }
  }

LABEL_77:
  return v21;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t15_72293 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t15_72293, &__block_literal_global_72294);
  }

  v3 = logCategory__hmf_once_v16_72295;

  return v3;
}

uint64_t __39__HMDAccessoryPairingEvent_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v16_72295;
  logCategory__hmf_once_v16_72295 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)removingAccessory:(id)accessory hapAccessory:(id)hapAccessory
{
  hapAccessoryCopy = hapAccessory;
  accessoryCopy = accessory;
  v7 = [HMDAccessoryPairingEvent alloc];
  home = [accessoryCopy home];
  v9 = +[HMDAccessoryPairingLogEventStateManager sharedManager];
  LOBYTE(v12) = 0;
  v10 = [(HMDAccessoryPairingEvent *)v7 initWithUnpairedAccessory:0 pairedAccessory:accessoryCopy hapAccessory:hapAccessoryCopy appIdentifier:0 retry:0 home:home isAddOperation:v12 logEventStateManager:v9];

  return v10;
}

+ (id)pairingAccessoryWithDescription:(id)description home:(id)home
{
  homeCopy = home;
  descriptionCopy = description;
  v7 = [[HMDAccessoryPairingEvent alloc] initWithAccessoryDescription:descriptionCopy home:homeCopy];

  return v7;
}

@end