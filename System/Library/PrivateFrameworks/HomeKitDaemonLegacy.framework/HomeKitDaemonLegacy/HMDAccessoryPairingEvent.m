@interface HMDAccessoryPairingEvent
+ (id)logCategory;
+ (id)pairingAccessoryWithDescription:(id)a3 home:(id)a4;
+ (id)removingAccessory:(id)a3 hapAccessory:(id)a4;
- (HMDAccessoryPairingEvent)initWithAccessoryDescription:(id)a3 home:(id)a4;
- (HMDAccessoryPairingEvent)initWithUnpairedAccessory:(id)a3 pairedAccessory:(id)a4 hapAccessory:(id)a5 appIdentifier:(id)a6 retry:(BOOL)a7 home:(id)a8 isAddOperation:(BOOL)a9 logEventStateManager:(id)a10;
- (NSDate)endDate;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)residentConfirmationToString:(int64_t)a3;
- (int)currentWiFiBand;
- (void)_setBtLoad;
- (void)_updateThreadPropertiesWithPairedAccessory:(id)a3;
- (void)handleUnauthenticatedMatterAccessoryPromptEnd;
- (void)handleUnauthenticatedMatterAccessoryPromptStart;
- (void)markEndTime;
- (void)prepareForObservation;
- (void)setHmdAccessoryPairingEventResidentConfirmation:(int64_t)a3;
- (void)updateEventPropertiesWithHAPAccessory:(id)a3;
- (void)updateEventPropertiesWithPairedAccessory:(id)a3;
- (void)updateResidentConfirmationDurationWithConfirmation:(int64_t)a3;
@end

@implementation HMDAccessoryPairingEvent

- (void)setHmdAccessoryPairingEventResidentConfirmation:(int64_t)a3
{
  switch(a3)
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
      v4 = [MEMORY[0x277CBEAA8] date];
      residentConfirmationTimeStarted = self->_residentConfirmationTimeStarted;
      self->_residentConfirmationTimeStarted = v4;

      self->_hmdAccessoryPairingEventResidentConfirmation = 1;
      break;
  }
}

- (id)residentConfirmationToString:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return @"HMDAccessoryPairingEventResidentConfirmationNotSet";
  }

  else
  {
    return off_2797287F0[a3 - 1];
  }
}

- (void)updateResidentConfirmationDurationWithConfirmation:(int64_t)a3
{
  if (self->_residentConfirmationTimeStarted)
  {
    v6 = [MEMORY[0x277CBEAA8] date];
    [v6 timeIntervalSinceDate:self->_residentConfirmationTimeStarted];
    self->_residentConfirmationDurationInSeconds = v4;
    residentConfirmationTimeStarted = self->_residentConfirmationTimeStarted;
    self->_residentConfirmationTimeStarted = 0;
  }
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HMDAccessoryPairingEvent *)self vendorDetailsForReporting];
  v5 = [v4 manufacturer];
  [v3 setObject:v5 forKeyedSubscript:@"accessoryManufacturer"];

  v6 = [(HMDAccessoryPairingEvent *)self vendorDetailsForReporting];
  v7 = [v6 model];
  [v3 setObject:v7 forKeyedSubscript:@"accessoryModel"];

  v8 = [(HMDAccessoryPairingEvent *)self vendorDetailsForReporting];
  v9 = [v8 category];
  [v3 setObject:v9 forKeyedSubscript:@"accessoryCategory"];

  v10 = [(HMDAccessoryPairingEvent *)self vendorDetailsForReporting];
  v11 = [v10 firmwareVersion];
  [v3 setObject:v11 forKeyedSubscript:@"accessoryFirmwareVersion"];

  v12 = [(HMDAccessoryPairingEvent *)self vendorDetailsForReporting];
  v13 = [v12 productData];
  [v3 setObject:v13 forKeyedSubscript:@"accessoryProductData"];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAccessoryPairingEvent certificationStatus](self, "certificationStatus")}];
  [v3 setObject:v14 forKeyedSubscript:@"accessoryCertificationStatus"];

  v15 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAccessoryPairingEvent communicationProtocol](self, "communicationProtocol")}];
  [v3 setObject:v15 forKeyedSubscript:@"accessoryCommunicationProtocol"];

  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAccessoryPairingEvent linkType](self, "linkType")}];
  [v3 setObject:v16 forKeyedSubscript:@"accessoryTransportType"];

  v17 = [(HMDAccessoryPairingEvent *)self supportedLinkLayerTypes];
  [v3 setObject:v17 forKeyedSubscript:@"accessorySupportedLinkLayerTypes"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessoryPairingEvent authMethod](self, "authMethod")}];
  [v3 setObject:v18 forKeyedSubscript:@"authenticationMethod"];

  v19 = [(HMDAccessoryPairingEvent *)self appIdentifier];
  if ([HMDMetricsUtilities shouldRedactBundleID:v19])
  {
    [v3 setObject:@"Third-party app" forKeyedSubscript:@"appIdentifier"];
  }

  else
  {
    v20 = [(HMDAccessoryPairingEvent *)self appIdentifier];
    [v3 setObject:v20 forKeyedSubscript:@"appIdentifier"];
  }

  v21 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMMLogEvent durationMilliseconds](self, "durationMilliseconds")}];
  [v3 setObject:v21 forKeyedSubscript:@"pairingDuration"];

  v22 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessoryPairingEvent isAddOperation](self, "isAddOperation")}];
  [v3 setObject:v22 forKeyedSubscript:@"isAdd"];

  v23 = MEMORY[0x277CCABB0];
  v24 = [(HMMLogEvent *)self error];
  v25 = [v23 numberWithInteger:{objc_msgSend(v24, "code")}];
  [v3 setObject:v25 forKeyedSubscript:@"errorCode"];

  v26 = [(HMMLogEvent *)self error];
  v27 = [v26 domain];
  [v3 setObject:v27 forKeyedSubscript:@"errorDomain"];

  if ([(HMDAccessoryPairingEvent *)self _isMatterAccessory])
  {
    v28 = [(HMDAccessoryPairingEvent *)self matterAccessorySourceErrorDomain];
    v29 = [(HMDAccessoryPairingEvent *)self mtrMetrics];
    v96[0] = MEMORY[0x277D85DD0];
    v96[1] = 3221225472;
    v96[2] = __56__HMDAccessoryPairingEvent_coreAnalyticsEventDictionary__block_invoke;
    v96[3] = &unk_2797287D0;
    v97 = v3;
    [v29 enumerateKeysAndObjectsUsingBlock:v96];

    v30 = 0;
    goto LABEL_16;
  }

  v28 = [(HMMLogEvent *)self error];
  if (!v28)
  {
    v32 = 0;
    goto LABEL_12;
  }

  v31 = [(HMMLogEvent *)self error];
  v32 = getLowestError();

  if (v32)
  {
    v33 = [v32 code];
    v34 = [(HMMLogEvent *)self error];
    if (v33 == [v34 code])
    {
      v35 = [v32 domain];
      v36 = [(HMMLogEvent *)self error];
      v37 = [v36 domain];
      v38 = [v35 isEqualToString:v37];

      if (v38)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v30 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v32, "code")}];
    v28 = [v32 domain];
    goto LABEL_15;
  }

LABEL_10:
  v28 = 0;
LABEL_12:
  v30 = 0;
LABEL_15:
  v39 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAccessoryPairingEvent retryCount](self, "retryCount")}];
  [v3 setObject:v39 forKeyedSubscript:@"retryCount"];

LABEL_16:
  [v3 setObject:v30 forKeyedSubscript:@"underlyingErrorCode"];
  [v3 setObject:v28 forKeyedSubscript:@"underlyingErrorDomain"];
  v40 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessoryPairingEvent didUseWiFiPPSK](self, "didUseWiFiPPSK")}];
  [v3 setObject:v40 forKeyedSubscript:@"usedWifiPPSK"];

  if ([(HMDAccessoryPairingEvent *)self isAddOperation])
  {
    v41 = MEMORY[0x277CCABB0];
    if ([(HMDAccessoryPairingEvent *)self isAddViaWAC])
    {
      v42 = [(HMDAccessoryPairingEvent *)self isWacLegacy];
    }

    else
    {
      v42 = 0;
    }

    v43 = [v41 numberWithInt:v42];
    [v3 setObject:v43 forKeyedSubscript:@"isAddedViaLegacyWAC"];

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
    [v3 setObject:v46 forKeyedSubscript:@"isAddedViaSecureWAC"];

    v47 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessoryPairingEvent didUseOwnershipProof](self, "didUseOwnershipProof")}];
    [v3 setObject:v47 forKeyedSubscript:@"isAddedWithWACOwnershipProof"];

    v48 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessoryPairingEvent isFirstHAPAccessoryInAnyHome](self, "isFirstHAPAccessoryInAnyHome")}];
    [v3 setObject:v48 forKeyedSubscript:@"firstHAPAccessoryForUser"];

    v49 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessoryPairingEvent isFirstHAPAccessoryInHome](self, "isFirstHAPAccessoryInHome")}];
    [v3 setObject:v49 forKeyedSubscript:@"firstHAPAccessoryInHome"];
  }

  if ([(HMDAccessoryPairingEvent *)self isNetworkRouterAdd])
  {
    v50 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessoryPairingEvent isNetworkRouterReplace](self, "isNetworkRouterReplace")}];
    [v3 setObject:v50 forKeyedSubscript:@"isNetworkRouterReplace"];
  }

  v51 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessoryPairingEvent isThreadAccessory](self, "isThreadAccessory")}];
  [v3 setObject:v51 forKeyedSubscript:@"isThreadAccessory"];

  if ([(HMDAccessoryPairingEvent *)self isThreadAccessory])
  {
    v52 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessoryPairingEvent isBTCommissioned](self, "isBTCommissioned")}];
    [v3 setObject:v52 forKeyedSubscript:@"threadOnboardIsBTCommissioned"];

    v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[HMDAccessoryPairingEvent threadStatus](self, "threadStatus")}];
    [v3 setObject:v53 forKeyedSubscript:@"threadStatus"];

    v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[HMDAccessoryPairingEvent threadCapabilities](self, "threadCapabilities")}];
    [v3 setObject:v54 forKeyedSubscript:@"threadCapabilities"];

    v55 = MEMORY[0x277CCABB0];
    [(HMDAccessoryPairingEvent *)self threadCommissioningDuration];
    v56 = [v55 numberWithDouble:?];
    [v3 setObject:v56 forKeyedSubscript:@"threadOnboardDuration"];

    v57 = MEMORY[0x277CCABB0];
    v58 = [(HMDAccessoryPairingEvent *)self threadCommissioningError];
    v59 = [v57 numberWithInteger:{objc_msgSend(v58, "code")}];
    [v3 setObject:v59 forKeyedSubscript:@"threadCommissioningErrorCode"];

    v60 = [(HMDAccessoryPairingEvent *)self threadCommissioningError];
    v61 = [v60 domain];
    [v3 setObject:v61 forKeyedSubscript:@"threadCommissioningErrorDomain"];
  }

  if ([(HMDAccessoryPairingEvent *)self isAddOperation])
  {
    v62 = [(HMDAccessoryPairingEvent *)self lastAccessoryPairingState];
    [v3 setObject:v62 forKeyedSubscript:@"lastPairingState"];

    v63 = [(HMDAccessoryPairingEvent *)self longestPairingState];
    [v3 setObject:v63 forKeyedSubscript:@"longestState"];

    v64 = MEMORY[0x277CCABB0];
    [(HMDAccessoryPairingEvent *)self longestPairingProgressStateDurationInMilliseconds];
    v65 = [v64 numberWithDouble:?];
    [v3 setObject:v65 forKeyedSubscript:@"longestStateDuration"];
  }

  v66 = [(HMDAccessoryPairingEvent *)self matterMetrics];

  if (v66)
  {
    v67 = [(HMDAccessoryPairingEvent *)self matterMetrics];
    [v3 addEntriesFromDictionary:v67];

    [(HMDAccessoryPairingEvent *)self setMatterMetrics:0];
  }

  if ([(HMDAccessoryPairingEvent *)self hmdAccessoryPairingEventResidentConfirmation])
  {
    v68 = [(HMDAccessoryPairingEvent *)self residentConfirmationToString:[(HMDAccessoryPairingEvent *)self hmdAccessoryPairingEventResidentConfirmation]];
    [v3 setObject:v68 forKeyedSubscript:@"HMDAccessoryPairingEventResidentConfirmationState"];

    v69 = MEMORY[0x277CCABB0];
    [(HMDAccessoryPairingEvent *)self residentConfirmationDurationInSeconds];
    v70 = [v69 numberWithDouble:?];
    [v3 setObject:v70 forKeyedSubscript:@"HMDAccessoryPairingEventResidentConfirmationDurationInSeconds"];
  }

  v71 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessoryPairingEvent retry](self, "retry")}];
  [v3 setObject:v71 forKeyedSubscript:@"HMDAccessoryPairingEventRetry"];

  v72 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessoryPairingEvent recoveryType](self, "recoveryType")}];
  [v3 setObject:v72 forKeyedSubscript:@"HMDAccessoryPairingEventRecoveryType"];

  v73 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessoryPairingEvent previousRecoveryType](self, "previousRecoveryType")}];
  [v3 setObject:v73 forKeyedSubscript:@"HMDAccessoryPairingEventPreviousRecoveryType"];

  v74 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessoryPairingEvent isPrimaryResidentOnline](self, "isPrimaryResidentOnline")}];
  [v3 setObject:v74 forKeyedSubscript:@"isPrimaryResidentOnline"];

  v75 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessoryPairingEvent hasResidentInHome](self, "hasResidentInHome")}];
  [v3 setObject:v75 forKeyedSubscript:@"hasResidentInHome"];

  v76 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessoryPairingEvent primaryResidentIsThreadCapable](self, "primaryResidentIsThreadCapable")}];
  [v3 setObject:v76 forKeyedSubscript:@"primaryResidentIsThreadCapable"];

  v77 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDAccessoryPairingEvent btLoad](self, "btLoad")}];
  [v3 setObject:v77 forKeyedSubscript:@"btLoad"];

  v78 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDAccessoryPairingEvent btAudioTask](self, "btAudioTask")}];
  [v3 setObject:v78 forKeyedSubscript:@"btAudioTask"];

  v79 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDAccessoryPairingEvent btNonAudioTask](self, "btNonAudioTask")}];
  [v3 setObject:v79 forKeyedSubscript:@"btNonAudioTask"];

  if ([(HMDAccessoryPairingEvent *)self _isMatterAccessory])
  {
    v80 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[HMDAccessoryPairingEvent currentWiFiBand](self, "currentWiFiBand")}];
    [v3 setObject:v80 forKeyedSubscript:@"currentWiFiBand"];

    v81 = HMDMatterAccessoryPairingStepAsString([(HMDAccessoryPairingEvent *)self matterAccessoryPairingStep]);
    [v3 setObject:v81 forKeyedSubscript:@"currentPairingStep"];

    v82 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessoryPairingEvent userPrivilege](self, "userPrivilege")}];
    [v3 setObject:v82 forKeyedSubscript:@"userPrivilege"];

    v83 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessoryPairingEvent requiresMatterCustomCommissioningFlow](self, "requiresMatterCustomCommissioningFlow")}];
    [v3 setObject:v83 forKeyedSubscript:@"requiresMatterCustomCommissioningFlow"];

    v84 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessoryPairingEvent matterAccessoryDiscovered](self, "matterAccessoryDiscovered")}];
    [v3 setObject:v84 forKeyedSubscript:@"matterAccessoryDiscovered"];

    v85 = [(HMDAccessoryPairingEvent *)self matterVendorID];
    if ([v85 isEqual:&unk_286628450])
    {
      [v3 setObject:0 forKeyedSubscript:@"matterVendorID"];
    }

    else
    {
      v88 = [(HMDAccessoryPairingEvent *)self matterVendorID];
      [v3 setObject:v88 forKeyedSubscript:@"matterVendorID"];
    }

    v89 = [(HMDAccessoryPairingEvent *)self matterProductID];
    if ([v89 isEqual:&unk_286628450])
    {
      [v3 setObject:0 forKeyedSubscript:@"matterProductID"];
    }

    else
    {
      v90 = [(HMDAccessoryPairingEvent *)self matterProductID];
      [v3 setObject:v90 forKeyedSubscript:@"matterProductID"];
    }

    v91 = [(HMDAccessoryPairingEvent *)self matterDeviceType];
    [v3 setObject:v91 forKeyedSubscript:@"matterDeviceType"];

    v92 = [(HMDAccessoryPairingEvent *)self matterThreadCapabilities];
    [v3 setObject:v92 forKeyedSubscript:@"matterThreadCapabilities"];

    v93 = [(HMDAccessoryPairingEvent *)self wedAccessory];
    [v3 setObject:v93 forKeyedSubscript:@"isWEDAccessory"];

    v86 = [(HMDAccessoryPairingEvent *)self unauthenticatedMatterAccessoryPromptDuration];
    v87 = @"unauthenticatedMatterAccessoryPromptDuration";
  }

  else
  {
    v86 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessoryPairingEvent pairingUIState](self, "pairingUIState")}];
    v87 = @"HMDAccessoryPairingEventUIState";
  }

  [v3 setObject:v86 forKeyedSubscript:v87];

  v94 = [v3 copy];

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
    v4 = [(HMDAccessoryPairingEvent *)self accessoryManufacturer];
    v5 = [(HMDAccessoryPairingEvent *)self accessoryModel];
    v6 = [(HMDAccessoryPairingEvent *)self matterSoftwareVersionString];
    v7 = [(HMDAccessoryPairingEvent *)self accessoryCategory];
    v8 = [(HMDAccessoryMetricVendorDetails *)v3 initWithProductData:0 manufacturer:v4 model:v5 firmwareVersion:v6 category:v7 differentiationNumber:0];
    [(HMDAccessoryPairingEvent *)self setVendorDetailsForReporting:v8];
    goto LABEL_11;
  }

  v9 = [(HMDAccessoryPairingEvent *)self pairedAccessory];
  v4 = [v9 vendorInfo];

  v5 = [(HMDAccessoryPairingEvent *)self vendorDetailsForReporting];
  v6 = [v5 productData];
  v7 = [v5 manufacturer];
  v8 = [v5 model];
  v10 = [v5 firmwareVersion];
  v11 = [v5 category];
  if (!v7)
  {
    if (v4)
    {
      v7 = [v4 manufacturer];
    }

    else
    {
      v12 = [(HMDAccessoryPairingEvent *)self pairedAccessory];
      v13 = [v12 isKnownManufacturer];

      v14 = [(HMDAccessoryPairingEvent *)self accessoryManufacturer];
      v7 = v14;
      if ((v13 & 1) == 0)
      {
        v15 = anonymizeUnknownVendorString(v14);

        v7 = v15;
      }
    }
  }

  if (!v8)
  {
    v45 = [v4 model];
    if (v45)
    {
      v8 = [v4 model];
    }

    else
    {
      v51 = [(HMDAccessoryPairingEvent *)self accessoryModel];
      v8 = anonymizeUnknownVendorString(v51);
    }

    if (v11)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

  if (!v11)
  {
LABEL_30:
    v11 = [(HMDAccessoryPairingEvent *)self accessoryCategory];
  }

LABEL_10:
  v16 = [[HMDAccessoryMetricVendorDetails alloc] initWithProductData:v6 manufacturer:v7 model:v8 firmwareVersion:v10 category:v11 differentiationNumber:0];
  [(HMDAccessoryPairingEvent *)self setVendorDetailsForReporting:v16];

LABEL_11:
  v17 = [(HMDAccessoryPairingEvent *)self logEventStateManager];
  v18 = [(HMDAccessoryPairingEvent *)self accessoryServerIdentifier];
  -[HMDAccessoryPairingEvent setRetryCount:](self, "setRetryCount:", [v17 retryCountForIdentifier:v18]);

  v19 = [(HMMLogEvent *)self error];

  if (!v19)
  {
    v20 = [(HMDAccessoryPairingEvent *)self logEventStateManager];
    [v20 clearRetryCountMap];
  }

  v21 = [(HMDAccessoryPairingEvent *)self logEventStateManager];
  -[HMDAccessoryPairingEvent setPairingUIState:](self, "setPairingUIState:", [v21 pairingUIState]);

  v22 = [(HMDAccessoryPairingEvent *)self logEventStateManager];
  -[HMDAccessoryPairingEvent setRecoveryType:](self, "setRecoveryType:", [v22 recoveryType]);

  v23 = [(HMDAccessoryPairingEvent *)self logEventStateManager];
  -[HMDAccessoryPairingEvent setPreviousRecoveryType:](self, "setPreviousRecoveryType:", [v23 previousRecoveryType]);

  if ([(HMDAccessoryPairingEvent *)self isAddOperation])
  {
    v24 = [(HMDAccessoryPairingEvent *)self logEventStateManager];
    v25 = [(HMMLogEvent *)self error];
    [v24 updateStatesOnResult:{objc_msgSend(v25, "code") == 0}];
  }

  if ([(HMDAccessoryPairingEvent *)self isAddOperation])
  {
    v26 = [(HMDAccessoryPairingEvent *)self accessoryAddRequestIdentifier];
    v27 = [v26 length];

    if (v27)
    {
      v28 = [(HMDAccessoryPairingEvent *)self logEventStateManager];
      v29 = [(HMDAccessoryPairingEvent *)self accessoryAddRequestIdentifier];
      v30 = [(HMDAccessoryPairingEvent *)self endDate];
      [v28 updateLastPairingProgressStateEventForIdentifier:v29 withDate:v30];

      v31 = [(HMDAccessoryPairingEvent *)self logEventStateManager];
      v32 = [(HMDAccessoryPairingEvent *)self accessoryAddRequestIdentifier];
      v33 = [v31 getLastProgressStateForAccessory:v32];

      v34 = [(HMDAccessoryPairingEvent *)self logEventStateManager];
      v35 = [(HMDAccessoryPairingEvent *)self accessoryAddRequestIdentifier];
      [v34 getTimeDurationForProgressStateForIdentifier:v35 state:v33];
      v37 = v36;

      if (v37 <= 0.0)
      {
        v46 = objc_autoreleasePoolPush();
        v47 = self;
        v48 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          v49 = HMFGetLogIdentifier();
          v50 = [(HMDAccessoryPairingEvent *)v47 accessoryAddRequestIdentifier];
          *buf = 138543618;
          v76 = v49;
          v77 = 2112;
          v78 = v50;
          _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_INFO, "%{public}@Submitting placeholder metric values since same accessory request UUID %@ being paired multiple times before CA event submission", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v46);
        [(HMDAccessoryPairingEvent *)v47 setLastAccessoryPairingState:@"Undetermined due to successive pairing attempts"];
        [(HMDAccessoryPairingEvent *)v47 setLongestPairingState:@"Undetermined due to successive pairing attempts"];
        [(HMDAccessoryPairingEvent *)v47 setLongestPairingProgressStateDurationInMilliseconds:0.0];
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
        v39 = [(HMDAccessoryPairingEvent *)self logEventStateManager];
        v40 = [(HMDAccessoryPairingEvent *)self accessoryAddRequestIdentifier];
        v41 = [v39 getLongestProgressStateForAccessory:v40];
        if (v41)
        {
          v42 = [(HMDAccessoryPairingEvent *)self logEventStateManager];
          v43 = [(HMDAccessoryPairingEvent *)self accessoryAddRequestIdentifier];
          v44 = [v42 getLongestProgressStateForAccessory:v43];
          [(HMDAccessoryPairingEvent *)self setLongestPairingState:v44];
        }

        else
        {
          [(HMDAccessoryPairingEvent *)self setLongestPairingState:@"Unknown"];
        }

        v52 = [(HMDAccessoryPairingEvent *)self logEventStateManager];
        v53 = [(HMDAccessoryPairingEvent *)self accessoryAddRequestIdentifier];
        [v52 getTimeDurationForLongestProgressStateForAccessory:v53];
        [(HMDAccessoryPairingEvent *)self setLongestPairingProgressStateDurationInMilliseconds:?];

        v54 = [(HMDAccessoryPairingEvent *)self logEventStateManager];
        v55 = [(HMDAccessoryPairingEvent *)self accessoryAddRequestIdentifier];
        [v54 clearPairingProgressStateTrackerForIdentifier:v55];
      }
    }
  }

  if ([(HMDAccessoryPairingEvent *)self _isMatterAccessory]&& [(HMDAccessoryPairingEvent *)self isAddOperation])
  {
    v56 = [(HMDAccessoryPairingEvent *)self matterAccessoryPairingStep]== 27;
    v57 = [(HMMLogEvent *)self error];
    v58 = v57 == 0;

    if (v56 != v58)
    {
      v59 = objc_autoreleasePoolPush();
      v60 = self;
      v61 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        v62 = HMFGetLogIdentifier();
        v63 = [(HMMLogEvent *)v60 error];
        v64 = HMDMatterAccessoryPairingStepAsString([(HMDAccessoryPairingEvent *)v60 matterAccessoryPairingStep]);
        *buf = 138543874;
        v76 = v62;
        v77 = 2112;
        v78 = v63;
        v79 = 2112;
        v80 = v64;
        _os_log_impl(&dword_2531F8000, v61, OS_LOG_TYPE_ERROR, "%{public}@Unexpected step and error in submitting pairing log event %@ %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v59);
    }

    v65 = [(HMMLogEvent *)self error];
    v66 = [v65 underlyingErrors];
    v67 = [v66 firstObject];

    if (v67)
    {
      v68 = objc_autoreleasePoolPush();
      v69 = self;
      v70 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        v71 = HMFGetLogIdentifier();
        v72 = [(HMMLogEvent *)v69 error];
        *buf = 138543618;
        v76 = v71;
        v77 = 2112;
        v78 = v72;
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
    v3 = [MEMORY[0x277CBEAA8] date];
    endDate = self->_endDate;
    self->_endDate = v3;
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
  v4 = [v3 getBtLoadData];
  v5 = [v4 objectForKeyedSubscript:@"kBtLoadKey"];
  self->_btLoad = [v5 intValue];

  v6 = [v4 objectForKeyedSubscript:@"kBtAudioTask"];
  self->_btAudioTask = [v6 intValue];

  v7 = [v4 objectForKeyedSubscript:@"kBtNonAudioTask"];
  self->_btNonAudioTask = [v7 intValue];

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138544130;
    v14 = v11;
    v15 = 1024;
    v16 = [(HMDAccessoryPairingEvent *)v9 btLoad];
    v17 = 1024;
    v18 = [(HMDAccessoryPairingEvent *)v9 btAudioTask];
    v19 = 1024;
    v20 = [(HMDAccessoryPairingEvent *)v9 btNonAudioTask];
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Pairing BT Load: %d AudioTsk: %d NonAudioTsk: %d", &v13, 0x1Eu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_updateThreadPropertiesWithPairedAccessory:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v7;
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

- (void)updateEventPropertiesWithHAPAccessory:(id)a3
{
  v32 = a3;
  if ([(HMDAccessoryPairingEvent *)self _isMatterAccessory])
  {
    v4 = [v32 server];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if (v6)
    {
      v7 = [v6 vendorNameFromDcl];
      [(HMDAccessoryPairingEvent *)self setAccessoryManufacturer:v7];

      v8 = [v6 productNameFromDcl];
      [(HMDAccessoryPairingEvent *)self setAccessoryModel:v8];

      v9 = [v6 softwareVersionString];
      [(HMDAccessoryPairingEvent *)self setMatterSoftwareVersionString:v9];

      v10 = [v6 vendorID];
      if (v10)
      {
        v11 = v10;
        v12 = [v6 vendorNameFromDcl];

        if (!v12)
        {
          v13 = [v6 vendorID];
          v14 = [v13 stringValue];
          [(HMDAccessoryPairingEvent *)self setAccessoryManufacturer:v14];
        }
      }

      v15 = [v6 productID];
      if (v15)
      {
        v16 = v15;
        v17 = [v6 productNameFromDcl];

        if (!v17)
        {
          v18 = [v6 productID];
          v19 = [v18 stringValue];
          [(HMDAccessoryPairingEvent *)self setAccessoryModel:v19];
        }
      }

      -[HMDAccessoryPairingEvent setThreadAccessory:](self, "setThreadAccessory:", [v6 linkLayerType] == 4);
      v20 = [v6 supportedLinkLayerTypes];
      [(HMDAccessoryPairingEvent *)self setSupportedLinkLayerTypes:v20];
    }
  }

  v21 = [(HMDAccessoryPairingEvent *)self accessoryManufacturer];

  if (!v21)
  {
    v22 = [v32 manufacturer];
    [(HMDAccessoryPairingEvent *)self setAccessoryManufacturer:v22];
  }

  v23 = [(HMDAccessoryPairingEvent *)self accessoryModel];

  if (!v23)
  {
    v24 = [v32 model];
    [(HMDAccessoryPairingEvent *)self setAccessoryModel:v24];
  }

  v25 = [(HMDAccessoryPairingEvent *)self accessoryCategory];
  if (!v25 || (v26 = v25, v27 = [(HMDAccessoryPairingEvent *)self _isMatterAccessory], v26, v27))
  {
    v28 = MEMORY[0x277CD1680];
    v29 = [v32 category];
    v30 = [v28 categoryWithCategoryIdentifier:v29];

    v31 = [v30 categoryType];
    [(HMDAccessoryPairingEvent *)self setAccessoryCategory:v31];
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

- (void)updateEventPropertiesWithPairedAccessory:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v13 = v4;
    [(HMDAccessoryPairingEvent *)self setPairedAccessory:v4];
    v6 = [(HMDAccessoryPairingEvent *)self accessoryManufacturer];

    if (!v6)
    {
      v7 = [v13 manufacturer];
      [(HMDAccessoryPairingEvent *)self setAccessoryManufacturer:v7];
    }

    v8 = [(HMDAccessoryPairingEvent *)self accessoryModel];

    if (!v8)
    {
      v9 = [v13 model];
      [(HMDAccessoryPairingEvent *)self setAccessoryModel:v9];
    }

    v10 = [(HMDAccessoryPairingEvent *)self accessoryCategory];

    if (!v10)
    {
      v11 = [v13 category];
      v12 = [v11 categoryType];
      [(HMDAccessoryPairingEvent *)self setAccessoryCategory:v12];
    }

    v4 = [(HMDAccessoryPairingEvent *)self _updateThreadPropertiesWithPairedAccessory:v13];
    v5 = v13;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (HMDAccessoryPairingEvent)initWithAccessoryDescription:(id)a3 home:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 uuid];
  v79.receiver = self;
  v79.super_class = HMDAccessoryPairingEvent;
  v9 = [(HMMHomeLogEvent *)&v79 initWithHomeUUID:v8];

  if (v9)
  {
    v10 = +[HMDAccessoryPairingLogEventStateManager sharedManager];
    logEventStateManager = v9->_logEventStateManager;
    v9->_logEventStateManager = v10;

    v12 = [v6 addRequestIdentifier];

    if (v12)
    {
      v13 = v9->_logEventStateManager;
      v14 = [MEMORY[0x277CBEAA8] date];
      v15 = [v6 addRequestIdentifier];
      v16 = [v15 UUIDString];
      [(HMDAccessoryPairingLogEventStateManager *)v13 startProgressStateTrackerWithDate:v14 identifier:v16];

      v17 = [v6 addRequestIdentifier];
      v18 = [v17 UUIDString];
      accessoryAddRequestIdentifier = v9->_accessoryAddRequestIdentifier;
      v9->_accessoryAddRequestIdentifier = v18;
    }

    if ([v6 supportsIP])
    {
      v9->_linkType = 1;
    }

    else if ([v6 supportsBTLE])
    {
      v9->_linkType = 2;
    }

    else
    {
      v9->_linkType = 0;
    }

    v20 = [v6 setupAccessoryPayload];
    v21 = [v20 communicationProtocol];

    if ((v21 - 1) <= 1)
    {
      v9->_communicationProtocol = v21;
    }

    v9->_addOperation = 1;
    v22 = [v6 ownershipToken];

    if (v22)
    {
      v9->_usedOwnershipProof = 1;
    }

    v23 = [v6 setupAccessoryPayload];
    v24 = [v23 threadIdentifier];

    if (v24)
    {
      v9->_threadAccessory = 1;
    }

    if ([v7 doesHomeContainResident])
    {
      v25 = [v7 primaryResident];
      v26 = v25;
      v9->_hasResidentInHome = 1;
      if (v25)
      {
        LOBYTE(v25) = [v25 isReachable];
      }

      v9->_isPrimaryResidentOnline = v25;
    }

    else
    {
      v9->_hasResidentInHome = 0;
      v9->_isPrimaryResidentOnline = 0;
    }

    v27 = [v6 category];
    v28 = MEMORY[0x277CD1680];
    v29 = [v6 setupAccessoryPayload];
    v30 = [v29 categoryNumber];
    v31 = [v28 categoryWithCategoryIdentifier:v30];

    if (([v27 isWiFiRouterAccessoryCategory] & 1) != 0 || objc_msgSend(v31, "isWiFiRouterAccessoryCategory"))
    {
      v9->_networkRouterAdd = 1;
      v32 = [v7 wiFiRouterAccessories];
      v33 = [v32 count];

      if (v33)
      {
        v9->_networkRouterReplace = 1;
      }
    }

    v34 = [v6 accessoryUUID];
    accessoryUUID = v9->_accessoryUUID;
    v9->_accessoryUUID = v34;

    v36 = [v6 appIdentifier];
    appIdentifier = v9->_appIdentifier;
    v9->_appIdentifier = v36;

    if (v27)
    {
      v38 = v27;
    }

    else
    {
      v38 = v31;
    }

    v39 = [v38 categoryType];
    objc_storeStrong(&v9->_accessoryCategory, v39);

    v40 = [v6 setupAccessoryPayload];
    v41 = [v40 category];
    v42 = [v41 categoryType];
    categoryType = v9->_categoryType;
    v9->_categoryType = v42;

    v44 = [v40 productNumber];
    productNumber = v9->_productNumber;
    v9->_productNumber = v44;

    v9->_requiresMatterCustomCommissioningFlow = [v40 requiresMatterCustomCommissioningFlow];
    v46 = [v7 currentUser];
    v9->_userPrivilege = [v46 privilege];

    if ([(HMDAccessoryPairingEvent *)v9 _isMatterAccessory])
    {
      v76 = v31;
      v77 = v27;
      v47 = [v6 setupAccessoryPayload];
      v48 = [v47 chipAccessorySetupPayload];
      v49 = [v48 vendorID];

      v50 = [v6 setupAccessoryPayload];
      v51 = [v50 chipAccessorySetupPayload];
      v52 = [v51 productID];

      v53 = v49;
      objc_storeStrong(&v9->_matterVendorID, v49);
      objc_storeStrong(&v9->_matterProductID, v52);
      if (v49)
      {
        v54 = [v7 homeManager];
        v55 = [v54 chipDataSource];
        [v55 vendorMetadataStore];
        v57 = v56 = v52;
        v58 = [v57 retrieveVendorMetadataForVendorID:v53 productID:v56];

        v52 = v56;
        v59 = [v58 productWithID:v56];
        v60 = [v58 name];
        accessoryManufacturer = v9->_accessoryManufacturer;
        v9->_accessoryManufacturer = v60;

        v62 = [v59 name];
        accessoryModel = v9->_accessoryModel;
        v9->_accessoryModel = v62;

        v64 = [v59 deviceTypeID];
        matterDeviceType = v9->_matterDeviceType;
        v9->_matterDeviceType = v64;

        v9->_currentWiFiBand = 0;
        v78 = v58;
        if (!v58)
        {
          v66 = [v53 stringValue];
          v67 = v9->_accessoryManufacturer;
          v9->_accessoryManufacturer = v66;

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
      if (v52 && !v59)
      {
        v68 = [v52 stringValue];
        v69 = v9->_accessoryModel;
        v9->_accessoryModel = v68;
      }

      v9->_linkType = 1;
      v70 = v9->_logEventStateManager;
      [v7 workQueue];
      v72 = v71 = v52;
      v73 = [v7 logEventSubmitter];
      [(HMDAccessoryPairingLogEventStateManager *)v70 configureWithPairingEvent:v9 workQueue:v72 logEventSubmitter:v73];

      v9->_matterAccessoryPairingStep = 1;
      v31 = v76;
      v27 = v77;
    }

    [(HMDAccessoryPairingLogEventStateManager *)v9->_logEventStateManager resetStatesForNewAddOperation];
  }

  return v9;
}

- (HMDAccessoryPairingEvent)initWithUnpairedAccessory:(id)a3 pairedAccessory:(id)a4 hapAccessory:(id)a5 appIdentifier:(id)a6 retry:(BOOL)a7 home:(id)a8 isAddOperation:(BOOL)a9 logEventStateManager:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v158 = a6;
  v19 = a8;
  v157 = a10;
  v20 = [v19 uuid];
  v159.receiver = self;
  v159.super_class = HMDAccessoryPairingEvent;
  v21 = [(HMMHomeLogEvent *)&v159 initWithHomeUUID:v20];

  if (!v21)
  {
    goto LABEL_77;
  }

  v156 = [v19 homeManager];
  objc_storeStrong(&v21->_logEventStateManager, a10);
  v154 = v18;
  v155 = v17;
  if (v16)
  {
    v153 = a4;
    logEventStateManager = v21->_logEventStateManager;
    v23 = [MEMORY[0x277CBEAA8] date];
    v24 = [v16 uuid];
    v25 = [v24 UUIDString];
    [(HMDAccessoryPairingLogEventStateManager *)logEventStateManager startProgressStateTrackerWithDate:v23 identifier:v25];

    v26 = [v16 uuid];
    accessoryUUID = v21->_accessoryUUID;
    v21->_accessoryUUID = v26;

    v28 = [v16 category];
    v29 = [v28 categoryType];
    accessoryCategory = v21->_accessoryCategory;
    v21->_accessoryCategory = v29;

    v31 = [v16 identifier];
    v32 = [v31 copy];
    accessoryServerIdentifier = v21->_accessoryServerIdentifier;
    v21->_accessoryServerIdentifier = v32;

    v34 = [v16 uuid];
    v35 = [v34 UUIDString];
    accessoryAddRequestIdentifier = v21->_accessoryAddRequestIdentifier;
    v21->_accessoryAddRequestIdentifier = v35;

    objc_storeStrong(&v21->_appIdentifier, a6);
    v21->_retry = a7;
    v37 = [v16 preferredAccessoryServer];
    v38 = v37;
    if (!v37)
    {
      v37 = v16;
    }

    v21->_linkType = [v37 linkType];
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
      v42 = [v41 model];
      accessoryModel = v21->_accessoryModel;
      v21->_accessoryModel = v42;

      if ([v41 isWacAccessory])
      {
        v44 = [v41 hapWACAccessory];
        v45 = [v44 model];
        v46 = v21->_accessoryModel;
        v21->_accessoryModel = v45;

        v47 = [v41 hapWACAccessory];
        v48 = [v47 manufacturer];
        accessoryManufacturer = v21->_accessoryManufacturer;
        v21->_accessoryManufacturer = v48;
      }
    }

    if (a9)
    {
      v50 = [v16 category];
      v51 = [v50 isWiFiRouterAccessoryCategory];

      if (v51)
      {
        v21->_networkRouterAdd = 1;
        v52 = [v19 wiFiRouterAccessories];
        v53 = [v52 count];

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

    v18 = v154;
    if (v56 || [v54 linkLayerType] == 4)
    {
      v21->_threadAccessory = 1;
    }

    v57 = [v19 currentUser];
    v21->_userPrivilege = [v57 privilege];

    v17 = v155;
    if ([(HMDAccessoryPairingEvent *)v21 _isMatterAccessory])
    {
      v152 = v56;
      v58 = [v16 vendorID];
      matterVendorID = v21->_matterVendorID;
      v21->_matterVendorID = v58;

      v60 = [v16 productID];
      matterProductID = v21->_matterProductID;
      v21->_matterProductID = v60;

      v62 = [v16 vendorID];

      if (v62)
      {
        v63 = [v156 chipDataSource];
        v64 = [v63 vendorMetadataStore];
        v65 = [v16 vendorID];
        v66 = [v16 productID];
        v67 = [v64 retrieveVendorMetadataForVendorID:v65 productID:v66];

        v18 = v154;
        v68 = [v16 productID];
        v69 = [v67 productWithID:v68];

        v70 = [v67 name];
        v71 = v21->_accessoryManufacturer;
        v21->_accessoryManufacturer = v70;

        v72 = [v69 name];
        v73 = v21->_accessoryModel;
        v21->_accessoryModel = v72;

        v74 = [v69 deviceTypeID];
        matterDeviceType = v21->_matterDeviceType;
        v21->_matterDeviceType = v74;

        v76 = v67 == 0;
        v17 = v155;
        v77 = v76;
        v78 = v69 == 0;
      }

      else
      {
        v78 = 1;
        v77 = 1;
      }

      v21->_currentWiFiBand = 0;
      v81 = [v16 vendorID];

      if (v81 && v77)
      {
        v82 = [v16 vendorID];
        v83 = [v82 stringValue];
        v84 = v21->_accessoryManufacturer;
        v21->_accessoryManufacturer = v83;
      }

      v85 = [v16 productID];
      v86 = v85 != 0 && v78;

      if (v86 == 1)
      {
        v87 = [v16 productID];
        v88 = [v87 stringValue];
        v89 = v21->_accessoryModel;
        v21->_accessoryModel = v88;
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

      v93 = [v92 supportedLinkLayerTypes];

      supportedLinkLayerTypes = v21->_supportedLinkLayerTypes;
      v21->_supportedLinkLayerTypes = v93;
      v56 = v152;
    }

    else
    {
      v79 = v21->_logEventStateManager;
      supportedLinkLayerTypes = [v16 identifier];
      [(HMDAccessoryPairingLogEventStateManager *)v79 incrementRetryCount:supportedLinkLayerTypes];
    }

    a4 = v153;
  }

  if (v17)
  {
    objc_storeStrong(&v21->_pairedAccessory, a4);
    v94 = [v17 category];
    v95 = [v94 categoryType];
    v96 = v21->_accessoryCategory;
    v21->_accessoryCategory = v95;

    v97 = [v17 identifier];
    v98 = [v97 copy];
    v99 = v21->_accessoryServerIdentifier;
    v21->_accessoryServerIdentifier = v98;

    v100 = [v17 uuid];
    v101 = v21->_accessoryUUID;
    v21->_accessoryUUID = v100;

    v102 = [v17 metricLoggingVendorDetails];
    vendorDetailsForReporting = v21->_vendorDetailsForReporting;
    v21->_vendorDetailsForReporting = v102;

    v104 = v17;
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
    v109 = [v104 supportedLinkLayerTypes];
    v110 = v21->_supportedLinkLayerTypes;
    v21->_supportedLinkLayerTypes = v109;

LABEL_51:
    [(HMDAccessoryPairingEvent *)v21 _updateThreadPropertiesWithPairedAccessory:v107];
    v21->_accessorySupportsWoL = [v107 supportsWoL];
    v21->_communicationProtocol = [v107 communicationProtocol];
    v21->_threadAccessory = [v107 hasThreadServer];
    if ([(HMDAccessoryPairingEvent *)v21 _isMatterAccessory])
    {
      v111 = [v107 matterVendorID];
      v112 = v21->_matterVendorID;
      v21->_matterVendorID = v111;

      v113 = [v107 matterProductID];
      v114 = v21->_matterProductID;
      v21->_matterProductID = v113;

      v115 = [v107 matterVendorID];

      if (v115)
      {
        v116 = [v156 chipDataSource];
        v117 = [v116 vendorMetadataStore];
        v118 = [v107 matterVendorID];
        v119 = [v107 matterProductID];
        v120 = [v117 retrieveVendorMetadataForVendorID:v118 productID:v119];

        v121 = [v107 matterProductID];
        v122 = [v120 productWithID:v121];

        v123 = [v120 name];
        v124 = v21->_accessoryManufacturer;
        v21->_accessoryManufacturer = v123;

        v125 = [v122 name];
        v126 = v21->_accessoryModel;
        v21->_accessoryModel = v125;

        v127 = [v122 deviceTypeID];
        v128 = v21->_matterDeviceType;
        v21->_matterDeviceType = v127;

        v129 = v120 == 0;
        v130 = v122 == 0;
      }

      else
      {
        v129 = 1;
        v130 = 1;
      }

      v21->_currentWiFiBand = 0;
      v131 = [v107 matterVendorID];

      if (v131 && v129)
      {
        v132 = [v107 matterVendorID];
        v133 = [v132 stringValue];
        v134 = v21->_accessoryManufacturer;
        v21->_accessoryManufacturer = v133;
      }

      v135 = [v107 matterProductID];
      v136 = v135 != 0 && v130;

      v18 = v154;
      if (v136 == 1)
      {
        v137 = [v107 matterProductID];
        v138 = [v137 stringValue];
        v139 = v21->_accessoryModel;
        v21->_accessoryModel = v138;
      }

      v140 = [v104 firmwareVersion];
      v141 = [v140 versionString];
      matterSoftwareVersionString = v21->_matterSoftwareVersionString;
      v21->_matterSoftwareVersionString = v141;

      v21->_linkType = 1;
      v17 = v155;
    }
  }

  if (v18 && !v21->_linkType)
  {
    v21->_linkType = [v18 linkType];
  }

  if (v18 && !v21->_communicationProtocol)
  {
    v143 = [v18 server];
    v21->_communicationProtocol = [v143 communicationProtocol];
  }

  if ([v19 doesHomeContainResident])
  {
    v144 = [v19 primaryResident];
    v145 = v144;
    v21->_hasResidentInHome = 1;
    if (v144)
    {
      LOBYTE(v144) = [v144 isReachable];
    }

    v21->_isPrimaryResidentOnline = v144;
    v146 = [v145 capabilities];
    v21->_primaryResidentIsThreadCapable = [v146 supportsThreadBorderRouter];
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
  *&v21->_addOperation = a9;
  if (a9)
  {
    [(HMDAccessoryPairingLogEventStateManager *)v21->_logEventStateManager resetStatesForNewAddOperation];
    if ([(HMDAccessoryPairingEvent *)v21 _isMatterAccessory])
    {
      v148 = v21->_logEventStateManager;
      v149 = [v19 workQueue];
      v150 = [v19 logEventSubmitter];
      [(HMDAccessoryPairingLogEventStateManager *)v148 configureWithPairingEvent:v21 workQueue:v149 logEventSubmitter:v150];

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

+ (id)removingAccessory:(id)a3 hapAccessory:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [HMDAccessoryPairingEvent alloc];
  v8 = [v6 home];
  v9 = +[HMDAccessoryPairingLogEventStateManager sharedManager];
  LOBYTE(v12) = 0;
  v10 = [(HMDAccessoryPairingEvent *)v7 initWithUnpairedAccessory:0 pairedAccessory:v6 hapAccessory:v5 appIdentifier:0 retry:0 home:v8 isAddOperation:v12 logEventStateManager:v9];

  return v10;
}

+ (id)pairingAccessoryWithDescription:(id)a3 home:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[HMDAccessoryPairingEvent alloc] initWithAccessoryDescription:v6 home:v5];

  return v7;
}

@end