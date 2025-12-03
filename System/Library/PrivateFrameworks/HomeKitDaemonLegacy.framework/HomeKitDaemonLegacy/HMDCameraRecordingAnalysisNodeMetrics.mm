@interface HMDCameraRecordingAnalysisNodeMetrics
- (BOOL)_isDeviceB620InOdeonConfiguration:(id)configuration;
- (HMDCameraRecordingAnalysisNodeMetrics)initWithResidentDevice:(id)device cameraProfile:(id)profile pendingDecisionsByCameraUUID:(id)d metrics:(id)metrics;
- (id)attributeDescriptions;
- (unint64_t)_estimatedJobSlotsForResidentDevice:(id)device systemResourceUsageLevel:(int64_t)level;
@end

@implementation HMDCameraRecordingAnalysisNodeMetrics

- (id)attributeDescriptions
{
  v36[10] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  maxNumberOfAnalyzers = [(HMDCameraRecordingAnalysisNodeMetrics *)self maxNumberOfAnalyzers];
  v34 = [v3 initWithName:@"Max Number Of Analyzers" value:maxNumberOfAnalyzers];
  v36[0] = v34;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  maxAnalysisFPS = [(HMDCameraRecordingAnalysisNodeMetrics *)self maxAnalysisFPS];
  v32 = [v4 initWithName:@"Max Analysis FPS" value:maxAnalysisFPS];
  v36[1] = v32;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v31 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDCameraRecordingAnalysisNodeMetrics remainingNumberOfAnalyzers](self, "remainingNumberOfAnalyzers")}];
  v30 = [v5 initWithName:@"Remaining Number Of Analyzers" value:v31];
  v36[2] = v30;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v29 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCameraRecordingAnalysisNodeMetrics hasActiveSessionWithCamera](self, "hasActiveSessionWithCamera")}];
  v28 = [v6 initWithName:@"Active Session With Camera" value:v29];
  v36[3] = v28;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v27 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCameraRecordingAnalysisNodeMetrics hasPendingSessionWithCamera](self, "hasPendingSessionWithCamera")}];
  v26 = [v7 initWithName:@"Pending Session With Camera" value:v27];
  v36[4] = v26;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  v25 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDCameraRecordingAnalysisNodeMetrics systemResourceUsageLevel](self, "systemResourceUsageLevel")}];
  v9 = [v8 initWithName:@"SURL" value:v25];
  v36[5] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCameraRecordingAnalysisNodeMetrics numberOfActiveRecordingSessions](self, "numberOfActiveRecordingSessions")}];
  v12 = [v10 initWithName:@"Number Of Active Sessions" value:v11];
  v36[6] = v12;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCameraRecordingAnalysisNodeMetrics numberOfPendingRecordingSessions](self, "numberOfPendingRecordingSessions")}];
  v15 = [v13 initWithName:@"Number Of Pending Sessions" value:v14];
  v36[7] = v15;
  v16 = objc_alloc(MEMORY[0x277D0F778]);
  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCameraRecordingAnalysisNodeMetrics isB620InOdeon](self, "isB620InOdeon")}];
  v18 = [v16 initWithName:@"B620 In Odeon" value:v17];
  v36[8] = v18;
  v19 = objc_alloc(MEMORY[0x277D0F778]);
  v20 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCameraRecordingAnalysisNodeMetrics isReadyToRecord](self, "isReadyToRecord")}];
  v21 = [v19 initWithName:@"Ready To Record" value:v20];
  v36[9] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:10];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (unint64_t)_estimatedJobSlotsForResidentDevice:(id)device systemResourceUsageLevel:(int64_t)level
{
  device = [device device];
  productInfo = [device productInfo];
  productClass = [productInfo productClass];

  if (productClass != 4)
  {
    return 2 * (level != 3);
  }

  if (level >= 4)
  {
    return 5;
  }

  return qword_253D4BB90[level];
}

- (BOOL)_isDeviceB620InOdeonConfiguration:(id)configuration
{
  v34 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  home = [configurationCopy home];
  appleMediaAccessories = [home appleMediaAccessories];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __75__HMDCameraRecordingAnalysisNodeMetrics__isDeviceB620InOdeonConfiguration___block_invoke;
  v31[3] = &unk_279734F10;
  v5 = configurationCopy;
  v32 = v5;
  v6 = [appleMediaAccessories na_firstObjectPassingTest:v31];
  if (v6)
  {
    v23 = v5;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = appleMediaAccessories;
    v7 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v7)
    {
      v8 = v7;
      v25 = *v28;
      v22 = appleMediaAccessories;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v28 != v25)
          {
            objc_enumerationMutation(obj);
          }

          audioDestinationControllerData = [*(*(&v27 + 1) + 8 * i) audioDestinationControllerData];
          destinationIdentifier = [audioDestinationControllerData destinationIdentifier];
          uUIDString = [destinationIdentifier UUIDString];

          audioDestination = [v6 audioDestination];
          identifier = [audioDestination identifier];
          if ([uUIDString isEqualToString:identifier])
          {

LABEL_15:
            v19 = 1;
            appleMediaAccessories = v22;
            goto LABEL_16;
          }

          v15 = [home mediaSystemForAppleMediaAccessory:v6];
          audioDestination2 = [v15 audioDestination];
          identifier2 = [audioDestination2 identifier];
          v18 = [uUIDString isEqualToString:identifier2];

          if (v18)
          {
            goto LABEL_15;
          }
        }

        v8 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
        v19 = 0;
        appleMediaAccessories = v22;
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v19 = 0;
    }

LABEL_16:

    v5 = v23;
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t __75__HMDCameraRecordingAnalysisNodeMetrics__isDeviceB620InOdeonConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 homePodVariant] == 3)
  {
    v4 = [v3 idsIdentifier];
    v5 = [*(a1 + 32) device];
    v6 = [v5 deviceAddress];
    v7 = [v6 idsIdentifier];
    v8 = [v4 hmf_isEqualToUUID:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (HMDCameraRecordingAnalysisNodeMetrics)initWithResidentDevice:(id)device cameraProfile:(id)profile pendingDecisionsByCameraUUID:(id)d metrics:(id)metrics
{
  deviceCopy = device;
  profileCopy = profile;
  dCopy = d;
  metricsCopy = metrics;
  if (!deviceCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_19;
  }

  if (!profileCopy)
  {
LABEL_19:
    _HMFPreconditionFailure();
    goto LABEL_20;
  }

  v14 = metricsCopy;
  if (!metricsCopy)
  {
LABEL_20:
    v48 = _HMFPreconditionFailure();
    __115__HMDCameraRecordingAnalysisNodeMetrics_initWithResidentDevice_cameraProfile_pendingDecisionsByCameraUUID_metrics___block_invoke(v48, v49);
    return result;
  }

  v66.receiver = self;
  v66.super_class = HMDCameraRecordingAnalysisNodeMetrics;
  v15 = [(HMDCameraRecordingAnalysisNodeMetrics *)&v66 init];
  if (v15)
  {
    v16 = [v14 hmf_dictionaryForKey:@"recordingSessionSummaries"];
    uniqueIdentifier = [profileCopy uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];
    v19 = [v16 objectForKeyedSubscript:uUIDString];
    v58 = v19 != 0;

    v20 = [v14 hmf_numberForKey:@"numberOfActiveRecordingSessions"];
    unsignedIntValue = [v20 unsignedIntValue];

    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __115__HMDCameraRecordingAnalysisNodeMetrics_initWithResidentDevice_cameraProfile_pendingDecisionsByCameraUUID_metrics___block_invoke;
    v63[3] = &unk_279728D08;
    v57 = v16;
    v64 = v57;
    v22 = v21;
    v65 = v22;
    [dCopy na_each:v63];
    uniqueIdentifier2 = [profileCopy uniqueIdentifier];
    uUIDString2 = [uniqueIdentifier2 UUIDString];
    v25 = [v22 objectForKeyedSubscript:uUIDString2];
    v54 = v25 != 0;

    v56 = v22;
    v61 = [v22 count];
    v26 = [v14 hmf_numberForKey:@"systemResourceUsageLevel"];
    v27 = v26;
    if (v26)
    {
      integerValue = [v26 integerValue];
    }

    else
    {
      integerValue = 0;
    }

    v28 = [v14 hmf_numberForKey:@"numberOfFullJobSlots"];
    v29 = [v14 hmf_numberForKey:@"numberOfPartialJobSlots"];

    if (v29)
    {
      v30 = [(HMDCameraRecordingAnalysisNodeMetrics *)v15 _estimatedJobSlotsForResidentDevice:deviceCopy systemResourceUsageLevel:integerValue];
      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v30];

      v28 = v31;
    }

    integerValue2 = [(NSNumber *)v28 integerValue];
    if (v19)
    {
      v33 = integerValue2 - unsignedIntValue - v61 + 1;
    }

    else
    {
      v33 = integerValue2 - unsignedIntValue - v61;
    }

    v34 = [v14 hmf_numberForKey:@"maximumAnalysisFPS"];
    v35 = v34;
    v36 = 1;
    v59 = dCopy;
    v55 = v27;
    v53 = v33;
    if (integerValue != 3 && v33 >= 1)
    {
      [(NSNumber *)v34 doubleValue];
      v36 = v37 < 0.5;
    }

    LODWORD(v50) = v36;
    v52 = [(HMDCameraRecordingAnalysisNodeMetrics *)v15 _isDeviceB620InOdeonConfiguration:deviceCopy, v50];
    v38 = [v14 objectForKeyedSubscript:@"readyToRecordByCameraUUIDString"];
    [profileCopy uniqueIdentifier];
    v40 = v39 = deviceCopy;
    [v40 UUIDString];
    v42 = v41 = profileCopy;
    v43 = [v38 objectForKeyedSubscript:v42];

    maxNumberOfAnalyzers = v15->_maxNumberOfAnalyzers;
    v15->_maxNumberOfAnalyzers = v28;
    v45 = v28;

    deviceCopy = v39;
    maxAnalysisFPS = v15->_maxAnalysisFPS;
    v15->_maxAnalysisFPS = v35;

    profileCopy = v41;
    v15->_remainingNumberOfAnalyzers = v53;
    v15->_activeSessionWithCamera = v58;
    v15->_pendingSessionWithCamera = v54;
    v15->_systemResourceUsageLevel = integerValue;
    v15->_numberOfActiveRecordingSessions = unsignedIntValue;
    v15->_numberOfPendingRecordingSessions = v61;
    v15->_resourceConstrained = v51;
    v15->_b620InOdeon = v52;
    v15->_readyToRecord = [v43 BOOLValue];

    dCopy = v59;
  }

  return v15;
}

void __115__HMDCameraRecordingAnalysisNodeMetrics_initWithResidentDevice_cameraProfile_pendingDecisionsByCameraUUID_metrics___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = v3;
  v5 = [v3 UUIDString];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v7 = *(a1 + 40);
    v8 = [v9 UUIDString];
    [v7 setObject:MEMORY[0x277CBEC10] forKeyedSubscript:v8];
  }
}

@end