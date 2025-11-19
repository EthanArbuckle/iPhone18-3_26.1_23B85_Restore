@interface HMDMatterThirdPartyPairingTagProcessor
- (HMDMatterThirdPartyPairingTagProcessor)initWithSubmitter:(id)a3;
- (id)tagProcessingBlocks;
- (void)closeSessionWithEvent:(id)a3;
- (void)processAccessoryInfoEvent:(id)a3;
- (void)processAccessoryTransport:(id)a3;
- (void)processCASESanityCheckEvent:(id)a3;
- (void)processCredentialsToClientEvent:(id)a3;
- (void)processFirmwareVersionEvent:(id)a3;
- (void)processLongestPairingState:(id)a3;
- (void)processPairingErrorCancelledEvent:(id)a3;
- (void)processPairingErrorEvent:(id)a3;
- (void)processPairingEventWindowOpenedSetupDuration:(id)a3;
- (void)processPairingStartEvent:(id)a3;
- (void)processStateChange:(id)a3;
- (void)processThreadScanResultsEvent:(id)a3;
- (void)processThreadSetupDuration:(id)a3;
- (void)processWiFiScanResultsEvent:(id)a3;
- (void)setLogEventCloseReason:(unint64_t)a3;
@end

@implementation HMDMatterThirdPartyPairingTagProcessor

- (void)setLogEventCloseReason:(unint64_t)a3
{
  v3 = a3 == 0;
  v4 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
  [v4 setCleanClose:v3];
}

- (void)closeSessionWithEvent:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDMatterThirdPartyPairingTagProcessor *)self stateTracker];
  [v5 endWithTime:{objc_msgSend(v4, "tagTime")}];

  v6 = MEMORY[0x277CCABB0];
  v7 = [(HMDMatterThirdPartyPairingTagProcessor *)self stateTracker];
  v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(v7, "totalDuration")}];
  v9 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
  [v9 setPairingDuration:v8];

  v10 = MEMORY[0x277CCABB0];
  v11 = self;
  v12 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
  v13 = [v12 errorCode];
  v14 = [v10 numberWithBool:v13 == 0];
  v15 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
  [v15 setSuccess:v14];

  [(HMMLogEventTagProcessor *)v11 closeForReason:0];
  if (isInternalBuild())
  {
    v33 = v4;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v16 = [(HMDMatterThirdPartyPairingTagProcessor *)v11 stateTracker];
    v17 = [v16 states];

    obj = v17;
    v18 = [v17 countByEnumeratingWithState:&v36 objects:v48 count:16];
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
          v25 = v11;
          v26 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v27 = v21;
            v29 = v28 = v11;
            v30 = [v23 name];
            v31 = [v23 duration];
            *buf = 138544130;
            v41 = v29;
            v42 = 2048;
            v43 = v20;
            v44 = 2112;
            v45 = v30;
            v46 = 2048;
            v47 = v31;
            _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Matter pairing state %ld: %@ for %lu msec", buf, 0x2Au);

            v11 = v28;
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

    v4 = v33;
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)processStateChange:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 tagData];
  v6 = *MEMORY[0x277D179E0];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277D179E0]];

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
        v16 = [(HMDMatterThirdPartyPairingTagProcessor *)self stateTracker];
        v17 = [v4 tagTime];
        v18 = [v4 tagData];
        [v16 enterState:v11 enterTime:v17 enterData:v18];
        goto LABEL_27;
      case 37:
      case 38:
        v10 = @"Resident Confirmation";
LABEL_26:
        v16 = [(HMDMatterThirdPartyPairingTagProcessor *)self stateTracker];
        v19 = [v4 tagTime];
        v18 = [v4 tagData];
        [v16 exitState:v10 exitTime:v19 exitData:v18];
LABEL_27:

        break;
      default:
        break;
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v15;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Missing tag field %@, or not an NSNumber", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)processLongestPairingState:(id)a3
{
  v4 = a3;
  v5 = [v4 tagData];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D17998]];

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

  v9 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
  [v9 setLongestStateName:v8];

  v10 = [v4 tagData];

  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277D179A0]];

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

  v14 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
  [v14 setLongestStateDuration:v13];
}

- (void)processCredentialsToClientEvent:(id)a3
{
  v3 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
  [v3 setCredentialsSentToClient:MEMORY[0x277CBEC38]];
}

- (void)processWiFiScanResultsEvent:(id)a3
{
  v3 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
  [v3 setProvidedWiFiScanResults:MEMORY[0x277CBEC38]];
}

- (void)processThreadScanResultsEvent:(id)a3
{
  v3 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
  [v3 setProvidedThreadScanResults:MEMORY[0x277CBEC38]];
}

- (void)processFirmwareVersionEvent:(id)a3
{
  v4 = [a3 tagData];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D17A18]];

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
    v7 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
    [v7 setFirmwareVersion:v8];
  }
}

- (void)processPairingEventWindowOpenedSetupDuration:(id)a3
{
  v4 = [a3 tagData];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D179C8]];

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
    v7 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
    [v7 setPairingWindowOpenedWithPasscodeDuration:v8];
  }
}

- (void)processAccessoryTransport:(id)a3
{
  v4 = [a3 tagData];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D179F0]];

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
    v7 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
    [v7 setAccessoryTransportType:v8];
  }
}

- (void)processThreadSetupDuration:(id)a3
{
  v4 = [a3 tagData];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D179C8]];

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
    v7 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
    [v7 setThreadSetupDuration:v8];
  }
}

- (void)processCASESanityCheckEvent:(id)a3
{
  v4 = [a3 tagData];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D179C0]];

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
    v7 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
    [v7 setCaseSessionSanityCheckPassed:v8];
  }
}

- (void)processAccessoryInfoEvent:(id)a3
{
  v64 = a3;
  v4 = [v64 tagData];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D17A38]];

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
    v8 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
    [v8 setCommunicationProtocol:v7];
  }

  v9 = [v64 tagData];
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D17A30]];

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
    v13 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
    [v13 setMatterCategoryNumber:v12];
  }

  v14 = [v64 tagData];
  v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277D17A98]];

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
    v18 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
    [v18 setMatterVendorNumber:v17];
  }

  v19 = [v64 tagData];
  v20 = [v19 objectForKeyedSubscript:*MEMORY[0x277D17A58]];

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
    v23 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
    [v23 setMatterProductNumber:v22];
  }

  v62 = v17;
  v24 = [v64 tagData];
  v25 = [v24 objectForKeyedSubscript:*MEMORY[0x277D17A50]];

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
    v28 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
    [v28 setMatterProductID:v27];
  }

  v60 = v27;
  v61 = v22;
  v29 = [v64 tagData];
  v30 = [v29 objectForKeyedSubscript:*MEMORY[0x277D17A28]];

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
    v33 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
    [v33 setClient:v32];
  }

  v34 = [v64 tagData];
  v35 = [v34 objectForKeyedSubscript:*MEMORY[0x277D17A88]];

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
    v38 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
    [v38 setSupportsSoftAP:v37];
  }

  v39 = [v64 tagData];
  v40 = [v39 objectForKeyedSubscript:*MEMORY[0x277D17A48]];

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
    v43 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
    [v43 setHasShortDiscriminator:v42];
  }

  v63 = v12;
  v44 = [v64 tagData];
  v45 = [v44 objectForKeyedSubscript:*MEMORY[0x277D17A60]];

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
    v48 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
    [v48 setRequiresMatterCustomCommissioningFlow:v47];
  }

  v49 = v7;
  v50 = [v64 tagData];
  v51 = [v50 objectForKeyedSubscript:*MEMORY[0x277D17A08]];

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
    v54 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
    [v54 setDiscoveredOverBLE:v53];
  }

  v55 = [v64 tagData];
  v56 = [v55 objectForKeyedSubscript:*MEMORY[0x277D17A20]];

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
    v59 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
    [v59 setKnownToSystemCommissioner:v58];
  }
}

- (void)processPairingErrorCancelledEvent:(id)a3
{
  v4 = *MEMORY[0x277CCFD28];
  v7 = a3;
  v5 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
  [v5 setErrorDomain:v4];

  v6 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
  [v6 setErrorCode:&unk_283E752C0];

  [(HMDMatterThirdPartyPairingTagProcessor *)self closeSessionWithEvent:v7];
}

- (void)processPairingErrorEvent:(id)a3
{
  v26 = a3;
  v4 = [v26 tagData];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D17D70]];

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
    v8 = [v26 tagData];
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D17D78]];

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

    v12 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
    [v12 setErrorDomain:v11];

    v13 = v7;
  }

  else
  {
    v14 = *MEMORY[0x277CCFD28];
    v12 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
    [v12 setErrorDomain:v14];
    v13 = &unk_283E752A8;
  }

  v15 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
  [v15 setErrorCode:v13];

  v16 = [v26 tagData];
  v17 = [v16 objectForKeyedSubscript:*MEMORY[0x277D17D80]];

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
    v20 = [v26 tagData];
    v21 = [v20 objectForKeyedSubscript:*MEMORY[0x277D17D88]];

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

    v24 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
    [v24 setUnderlyingErrorDomain:v23];

    v25 = [(HMDMatterThirdPartyPairingTagProcessor *)self logEvent];
    [v25 setUnderlyingErrorCode:v19];
  }

  [(HMDMatterThirdPartyPairingTagProcessor *)self closeSessionWithEvent:v26];
}

- (void)processPairingStartEvent:(id)a3
{
  v4 = a3;
  -[HMDMatterThirdPartyPairingTagProcessor setStartTime:](self, "setStartTime:", [v4 tagTime]);
  v6 = [(HMDMatterThirdPartyPairingTagProcessor *)self stateTracker];
  v5 = [v4 tagTime];

  [v6 startWithTime:v5];
}

- (id)tagProcessingBlocks
{
  if (tagProcessingBlocks_token != -1)
  {
    dispatch_once(&tagProcessingBlocks_token, &__block_literal_global_273591);
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
  v11[0] = &__block_literal_global_11_273593;
  v11[1] = &__block_literal_global_13_273594;
  v1 = *MEMORY[0x277D179E8];
  v10[2] = *MEMORY[0x277D17A70];
  v10[3] = v1;
  v11[2] = &__block_literal_global_15_273595;
  v11[3] = &__block_literal_global_17_273596;
  v2 = *MEMORY[0x277D179B0];
  v10[4] = *MEMORY[0x277D179A8];
  v10[5] = v2;
  v11[4] = &__block_literal_global_19_273597;
  v11[5] = &__block_literal_global_21_273598;
  v3 = *MEMORY[0x277D17A68];
  v10[6] = *MEMORY[0x277D179F8];
  v10[7] = v3;
  v11[6] = &__block_literal_global_23_273599;
  v11[7] = &__block_literal_global_25_273600;
  v4 = *MEMORY[0x277D17A90];
  v10[8] = *MEMORY[0x277D17A10];
  v10[9] = v4;
  v11[8] = &__block_literal_global_27_273601;
  v11[9] = &__block_literal_global_29_273602;
  v5 = *MEMORY[0x277D179D8];
  v10[10] = *MEMORY[0x277D17AA0];
  v10[11] = v5;
  v11[10] = &__block_literal_global_31_273603;
  v11[11] = &__block_literal_global_33_273604;
  v6 = *MEMORY[0x277D179B8];
  v10[12] = *MEMORY[0x277D17A40];
  v10[13] = v6;
  v11[12] = &__block_literal_global_35_273605;
  v11[13] = &__block_literal_global_37_273606;
  v10[14] = *MEMORY[0x277D179D0];
  v11[14] = &__block_literal_global_39_273607;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:15];
  v8 = tagProcessingBlocks_processingBlocks;
  tagProcessingBlocks_processingBlocks = v7;

  v9 = *MEMORY[0x277D85DE8];
}

- (HMDMatterThirdPartyPairingTagProcessor)initWithSubmitter:(id)a3
{
  v9.receiver = self;
  v9.super_class = HMDMatterThirdPartyPairingTagProcessor;
  v3 = [(HMMLogEventTagProcessor *)&v9 initWithSubmitter:a3];
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