@interface HMDMatterThirdPartyPairingTagProcessor
- (HMDMatterThirdPartyPairingTagProcessor)initWithSubmitter:(id)submitter;
- (id)tagProcessingBlocks;
- (void)closeSessionWithEvent:(id)event;
- (void)processAccessoryInfoEvent:(id)event;
- (void)processAccessoryTransport:(id)transport;
- (void)processCASESanityCheckEvent:(id)event;
- (void)processCredentialsToClientEvent:(id)event;
- (void)processFirmwareVersionEvent:(id)event;
- (void)processLongestPairingState:(id)state;
- (void)processPairingErrorCancelledEvent:(id)event;
- (void)processPairingErrorEvent:(id)event;
- (void)processPairingEventWindowOpenedSetupDuration:(id)duration;
- (void)processPairingStartEvent:(id)event;
- (void)processStateChange:(id)change;
- (void)processThreadScanResultsEvent:(id)event;
- (void)processThreadSetupDuration:(id)duration;
- (void)processWiFiScanResultsEvent:(id)event;
- (void)setLogEventCloseReason:(unint64_t)reason;
@end

@implementation HMDMatterThirdPartyPairingTagProcessor

- (void)setLogEventCloseReason:(unint64_t)reason
{
  v3 = reason == 0;
  logEvent = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
  [logEvent setCleanClose:v3];
}

- (void)closeSessionWithEvent:(id)event
{
  v49 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  stateTracker = [(HMDMatterThirdPartyPairingTagProcessor *)self stateTracker];
  [stateTracker endWithTime:{objc_msgSend(eventCopy, "tagTime")}];

  v6 = MEMORY[0x277CCABB0];
  stateTracker2 = [(HMDMatterThirdPartyPairingTagProcessor *)self stateTracker];
  v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(stateTracker2, "totalDuration")}];
  logEvent = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
  [logEvent setPairingDuration:v8];

  v10 = MEMORY[0x277CCABB0];
  selfCopy = self;
  logEvent2 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
  errorCode = [logEvent2 errorCode];
  v14 = [v10 numberWithBool:errorCode == 0];
  logEvent3 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
  [logEvent3 setSuccess:v14];

  [(HMMLogEventTagProcessor *)selfCopy closeForReason:0];
  if (isInternalBuild())
  {
    v33 = eventCopy;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    stateTracker3 = [(HMDMatterThirdPartyPairingTagProcessor *)selfCopy stateTracker];
    states = [stateTracker3 states];

    obj = states;
    v18 = [states countByEnumeratingWithState:&v36 objects:v48 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = 0;
      v21 = *v37;
      do
      {
        v22 = 0;
        v34 = v19;
        do
        {
          if (*v37 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v36 + 1) + 8 * v22);
          v24 = objc_autoreleasePoolPush();
          v25 = selfCopy;
          v26 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v27 = v21;
            v29 = v28 = selfCopy;
            name = [v23 name];
            duration = [v23 duration];
            *buf = 138544130;
            v41 = v29;
            v42 = 2048;
            v43 = v20;
            v44 = 2112;
            v45 = name;
            v46 = 2048;
            v47 = duration;
            _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Matter pairing state %ld: %@ for %lu msec", buf, 0x2Au);

            selfCopy = v28;
            v21 = v27;
            v19 = v34;
          }

          objc_autoreleasePoolPop(v24);
          ++v20;
          ++v22;
        }

        while (v19 != v22);
        v19 = [obj countByEnumeratingWithState:&v36 objects:v48 count:16];
      }

      while (v19);
    }

    eventCopy = v33;
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)processStateChange:(id)change
{
  v25 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  tagData = [changeCopy tagData];
  v6 = *MEMORY[0x277D179E0];
  v7 = [tagData objectForKeyedSubscript:*MEMORY[0x277D179E0]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = @"Adding WiFi Credentials";
    v11 = @"Discovery";
    switch([v9 integerValue])
    {
      case 12:
        goto LABEL_20;
      case 13:
        v11 = @"Adding System Commissioner";
        goto LABEL_20;
      case 14:
      case 15:
        v11 = @"Adding WiFi Credentials";
        goto LABEL_20;
      case 16:
        goto LABEL_26;
      case 17:
      case 18:
        v11 = @"Network Scan";
        goto LABEL_20;
      case 19:
        v10 = @"Network Scan";
        goto LABEL_26;
      case 20:
      case 21:
      case 22:
        v11 = @"Opening Pairing Window";
        goto LABEL_20;
      case 23:
        v10 = @"Opening Pairing Window";
        goto LABEL_26;
      case 24:
      case 25:
        v11 = @"Opening Pairing Window With Passcode";
        goto LABEL_20;
      case 26:
        v10 = @"Opening Pairing Window With Passcode - Failed";
        goto LABEL_26;
      case 27:
      case 28:
        v11 = @"Commissioning Accessory";
        goto LABEL_20;
      case 29:
        v10 = @"Commissioning Accessory";
        goto LABEL_26;
      case 30:
      case 31:
        v11 = @"Retrieving Thread Credentials";
        goto LABEL_20;
      case 32:
        v10 = @"Retrieving Thread Credentials";
        goto LABEL_26;
      case 33:
      case 34:
        v11 = @"CASE session sanity check";
        goto LABEL_20;
      case 35:
        v10 = @"CASE session sanity check";
        goto LABEL_26;
      case 36:
        v11 = @"Resident Confirmation";
LABEL_20:
        stateTracker = [(HMDMatterThirdPartyPairingTagProcessor *)self stateTracker];
        tagTime = [changeCopy tagTime];
        tagData2 = [changeCopy tagData];
        [stateTracker enterState:v11 enterTime:tagTime enterData:tagData2];
        goto LABEL_27;
      case 37:
      case 38:
        v10 = @"Resident Confirmation";
LABEL_26:
        stateTracker = [(HMDMatterThirdPartyPairingTagProcessor *)self stateTracker];
        tagTime2 = [changeCopy tagTime];
        tagData2 = [changeCopy tagData];
        [stateTracker exitState:v10 exitTime:tagTime2 exitData:tagData2];
LABEL_27:

        break;
      default:
        break;
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v15;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Missing tag field %@, or not an NSNumber", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)processLongestPairingState:(id)state
{
  stateCopy = state;
  tagData = [stateCopy tagData];
  v6 = [tagData objectForKeyedSubscript:*MEMORY[0x277D17998]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  logEvent = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
  [logEvent setLongestStateName:v8];

  tagData2 = [stateCopy tagData];

  v11 = [tagData2 objectForKeyedSubscript:*MEMORY[0x277D179A0]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  logEvent2 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
  [logEvent2 setLongestStateDuration:v13];
}

- (void)processCredentialsToClientEvent:(id)event
{
  logEvent = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
  [logEvent setCredentialsSentToClient:MEMORY[0x277CBEC38]];
}

- (void)processWiFiScanResultsEvent:(id)event
{
  logEvent = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
  [logEvent setProvidedWiFiScanResults:MEMORY[0x277CBEC38]];
}

- (void)processThreadScanResultsEvent:(id)event
{
  logEvent = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
  [logEvent setProvidedThreadScanResults:MEMORY[0x277CBEC38]];
}

- (void)processFirmwareVersionEvent:(id)event
{
  tagData = [event tagData];
  v5 = [tagData objectForKeyedSubscript:*MEMORY[0x277D17A18]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v8 = v6;

  if (v8)
  {
    logEvent = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
    [logEvent setFirmwareVersion:v8];
  }
}

- (void)processPairingEventWindowOpenedSetupDuration:(id)duration
{
  tagData = [duration tagData];
  v5 = [tagData objectForKeyedSubscript:*MEMORY[0x277D179C8]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v8 = v6;

  if (v8)
  {
    logEvent = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
    [logEvent setPairingWindowOpenedWithPasscodeDuration:v8];
  }
}

- (void)processAccessoryTransport:(id)transport
{
  tagData = [transport tagData];
  v5 = [tagData objectForKeyedSubscript:*MEMORY[0x277D179F0]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v8 = v6;

  if (v8)
  {
    logEvent = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
    [logEvent setAccessoryTransportType:v8];
  }
}

- (void)processThreadSetupDuration:(id)duration
{
  tagData = [duration tagData];
  v5 = [tagData objectForKeyedSubscript:*MEMORY[0x277D179C8]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v8 = v6;

  if (v8)
  {
    logEvent = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
    [logEvent setThreadSetupDuration:v8];
  }
}

- (void)processCASESanityCheckEvent:(id)event
{
  tagData = [event tagData];
  v5 = [tagData objectForKeyedSubscript:*MEMORY[0x277D179C0]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v8 = v6;

  if (v8)
  {
    logEvent = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
    [logEvent setCaseSessionSanityCheckPassed:v8];
  }
}

- (void)processAccessoryInfoEvent:(id)event
{
  eventCopy = event;
  tagData = [eventCopy tagData];
  v5 = [tagData objectForKeyedSubscript:*MEMORY[0x277D17A38]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    logEvent = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
    [logEvent setCommunicationProtocol:v7];
  }

  tagData2 = [eventCopy tagData];
  v10 = [tagData2 objectForKeyedSubscript:*MEMORY[0x277D17A30]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    logEvent2 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
    [logEvent2 setMatterCategoryNumber:v12];
  }

  tagData3 = [eventCopy tagData];
  v15 = [tagData3 objectForKeyedSubscript:*MEMORY[0x277D17A98]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (v17)
  {
    logEvent3 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
    [logEvent3 setMatterVendorNumber:v17];
  }

  tagData4 = [eventCopy tagData];
  v20 = [tagData4 objectForKeyedSubscript:*MEMORY[0x277D17A58]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  if (v22)
  {
    logEvent4 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
    [logEvent4 setMatterProductNumber:v22];
  }

  v62 = v17;
  tagData5 = [eventCopy tagData];
  v25 = [tagData5 objectForKeyedSubscript:*MEMORY[0x277D17A50]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;

  if (v27)
  {
    logEvent5 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
    [logEvent5 setMatterProductID:v27];
  }

  v60 = v27;
  v61 = v22;
  tagData6 = [eventCopy tagData];
  v30 = [tagData6 objectForKeyedSubscript:*MEMORY[0x277D17A28]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  v32 = v31;

  if (v32)
  {
    logEvent6 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
    [logEvent6 setClient:v32];
  }

  tagData7 = [eventCopy tagData];
  v35 = [tagData7 objectForKeyedSubscript:*MEMORY[0x277D17A88]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  v37 = v36;

  if (v37)
  {
    logEvent7 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
    [logEvent7 setSupportsSoftAP:v37];
  }

  tagData8 = [eventCopy tagData];
  v40 = [tagData8 objectForKeyedSubscript:*MEMORY[0x277D17A48]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v41 = v40;
  }

  else
  {
    v41 = 0;
  }

  v42 = v41;

  if (v42)
  {
    logEvent8 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
    [logEvent8 setHasShortDiscriminator:v42];
  }

  v63 = v12;
  tagData9 = [eventCopy tagData];
  v45 = [tagData9 objectForKeyedSubscript:*MEMORY[0x277D17A60]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v46 = v45;
  }

  else
  {
    v46 = 0;
  }

  v47 = v46;

  if (v47)
  {
    logEvent9 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
    [logEvent9 setRequiresMatterCustomCommissioningFlow:v47];
  }

  v49 = v7;
  tagData10 = [eventCopy tagData];
  v51 = [tagData10 objectForKeyedSubscript:*MEMORY[0x277D17A08]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v52 = v51;
  }

  else
  {
    v52 = 0;
  }

  v53 = v52;

  if (v53)
  {
    logEvent10 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
    [logEvent10 setDiscoveredOverBLE:v53];
  }

  tagData11 = [eventCopy tagData];
  v56 = [tagData11 objectForKeyedSubscript:*MEMORY[0x277D17A20]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v57 = v56;
  }

  else
  {
    v57 = 0;
  }

  v58 = v57;

  if (v58)
  {
    logEvent11 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
    [logEvent11 setKnownToSystemCommissioner:v58];
  }
}

- (void)processPairingErrorCancelledEvent:(id)event
{
  v4 = *MEMORY[0x277CCFD28];
  eventCopy = event;
  logEvent = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
  [logEvent setErrorDomain:v4];

  logEvent2 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
  [logEvent2 setErrorCode:&unk_286627B20];

  [(HMDMatterThirdPartyPairingTagProcessor *)self closeSessionWithEvent:eventCopy];
}

- (void)processPairingErrorEvent:(id)event
{
  eventCopy = event;
  tagData = [eventCopy tagData];
  v5 = [tagData objectForKeyedSubscript:*MEMORY[0x277D17D70]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    tagData2 = [eventCopy tagData];
    v9 = [tagData2 objectForKeyedSubscript:*MEMORY[0x277D17D78]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    logEvent = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
    [logEvent setErrorDomain:v11];

    v13 = v7;
  }

  else
  {
    v14 = *MEMORY[0x277CCFD28];
    logEvent = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
    [logEvent setErrorDomain:v14];
    v13 = &unk_286627B08;
  }

  logEvent2 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
  [logEvent2 setErrorCode:v13];

  tagData3 = [eventCopy tagData];
  v17 = [tagData3 objectForKeyedSubscript:*MEMORY[0x277D17D80]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  if (v19)
  {
    tagData4 = [eventCopy tagData];
    v21 = [tagData4 objectForKeyedSubscript:*MEMORY[0x277D17D88]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

    logEvent3 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
    [logEvent3 setUnderlyingErrorDomain:v23];

    logEvent4 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
    [logEvent4 setUnderlyingErrorCode:v19];
  }

  [(HMDMatterThirdPartyPairingTagProcessor *)self closeSessionWithEvent:eventCopy];
}

- (void)processPairingStartEvent:(id)event
{
  eventCopy = event;
  -[HMDMatterThirdPartyPairingTagProcessor setStartTime:](self, "setStartTime:", [eventCopy tagTime]);
  stateTracker = [(HMDMatterThirdPartyPairingTagProcessor *)self stateTracker];
  tagTime = [eventCopy tagTime];

  [stateTracker startWithTime:tagTime];
}

- (id)tagProcessingBlocks
{
  if (tagProcessingBlocks_token != -1)
  {
    dispatch_once(&tagProcessingBlocks_token, &__block_literal_global_23682);
  }

  v3 = tagProcessingBlocks_processingBlocks;

  return v3;
}

void __61__HMDMatterThirdPartyPairingTagProcessor_tagProcessingBlocks__block_invoke()
{
  v11[15] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D17A80];
  v10[0] = *MEMORY[0x277D17A78];
  v10[1] = v0;
  v11[0] = &__block_literal_global_11_23684;
  v11[1] = &__block_literal_global_13;
  v1 = *MEMORY[0x277D179E8];
  v10[2] = *MEMORY[0x277D17A70];
  v10[3] = v1;
  v11[2] = &__block_literal_global_15_23685;
  v11[3] = &__block_literal_global_17_23686;
  v2 = *MEMORY[0x277D179B0];
  v10[4] = *MEMORY[0x277D179A8];
  v10[5] = v2;
  v11[4] = &__block_literal_global_19_23687;
  v11[5] = &__block_literal_global_21_23688;
  v3 = *MEMORY[0x277D17A68];
  v10[6] = *MEMORY[0x277D179F8];
  v10[7] = v3;
  v11[6] = &__block_literal_global_23;
  v11[7] = &__block_literal_global_25;
  v4 = *MEMORY[0x277D17A90];
  v10[8] = *MEMORY[0x277D17A10];
  v10[9] = v4;
  v11[8] = &__block_literal_global_27;
  v11[9] = &__block_literal_global_29_23689;
  v5 = *MEMORY[0x277D179D8];
  v10[10] = *MEMORY[0x277D17AA0];
  v10[11] = v5;
  v11[10] = &__block_literal_global_31;
  v11[11] = &__block_literal_global_33;
  v6 = *MEMORY[0x277D179B8];
  v10[12] = *MEMORY[0x277D17A40];
  v10[13] = v6;
  v11[12] = &__block_literal_global_35;
  v11[13] = &__block_literal_global_37;
  v10[14] = *MEMORY[0x277D179D0];
  v11[14] = &__block_literal_global_39_23690;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:15];
  v8 = tagProcessingBlocks_processingBlocks;
  tagProcessingBlocks_processingBlocks = v7;

  v9 = *MEMORY[0x277D85DE8];
}

- (HMDMatterThirdPartyPairingTagProcessor)initWithSubmitter:(id)submitter
{
  v9.receiver = self;
  v9.super_class = HMDMatterThirdPartyPairingTagProcessor;
  v3 = [(HMMLogEventTagProcessor *)&v9 initWithSubmitter:submitter];
  if (v3)
  {
    v4 = objc_alloc_init(HMDMatterThirdPartyPairingLogEvent);
    logEvent = v3->_logEvent;
    v3->_logEvent = v4;

    v6 = [objc_alloc(MEMORY[0x277D17DE0]) initAutoStopPreviousState:0];
    stateTracker = v3->_stateTracker;
    v3->_stateTracker = v6;
  }

  return v3;
}

@end