@interface HMDThreadNetworkStabilityLogEvent
- (HMDThreadNetworkStabilityLogEvent)initWithDictionary:(id)dictionary;
- (HMDThreadNetworkStabilityLogEvent)initWithHomeUUID:(id)d threadNetworkStatusReport:(id)report threadNetworkUptime:(unint64_t)uptime threadNetworkDowntime:(unint64_t)downtime numReadWrites:(unint64_t)writes numReadErrors:(unint64_t)errors numWriteErrors:(unint64_t)writeErrors topReadWriteError:(id)self0 topSessionError:(id)self1 numSessionErrors:(unint64_t)self2 logTriggerReason:(id)self3;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)serializedLogEvent;
@end

@implementation HMDThreadNetworkStabilityLogEvent

- (id)serializedLogEvent
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  homeUUIDString = [(HMMHomeLogEvent *)self homeUUIDString];
  [dictionary setObject:homeUUIDString forKeyedSubscript:@"homeUUID"];

  v5 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport, "numAdvertisedBRs")}];
  [dictionary setObject:v7 forKeyedSubscript:@"numAdvertisedBRs"];

  v8 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport2 = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport2, "numAppleBRs")}];
  [dictionary setObject:v10 forKeyedSubscript:@"numAppleBRs"];

  v11 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport3 = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport3, "numThirdPartyBRs")}];
  [dictionary setObject:v13 forKeyedSubscript:@"numThirdPartyBRs"];

  v14 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport4 = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport4, "numThreadNetworks")}];
  [dictionary setObject:v16 forKeyedSubscript:@"numThreadNetworks"];

  v17 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport5 = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v19 = [v17 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport5, "maxSimuIPPrefixesDetected")}];
  [dictionary setObject:v19 forKeyedSubscript:@"maxSimuIPPrefixesDetected"];

  v20 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport6 = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v22 = [v20 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport6, "txTotal")}];
  [dictionary setObject:v22 forKeyedSubscript:@"txTotal"];

  v23 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport7 = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v25 = [v23 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport7, "txSuccess")}];
  [dictionary setObject:v25 forKeyedSubscript:@"txSuccess"];

  v26 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport8 = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v28 = [v26 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport8, "txDelayAvg")}];
  [dictionary setObject:v28 forKeyedSubscript:@"txDelayAvg"];

  v29 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport9 = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v31 = [v29 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport9, "rxTotal")}];
  [dictionary setObject:v31 forKeyedSubscript:@"rxTotal"];

  v32 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport10 = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v34 = [v32 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport10, "rxSuccess")}];
  [dictionary setObject:v34 forKeyedSubscript:@"rxSuccess"];

  v35 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport11 = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v37 = [v35 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport11, "reportDuration")}];
  [dictionary setObject:v37 forKeyedSubscript:@"reportDuration"];

  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDThreadNetworkStabilityLogEvent threadNetworkUptime](self, "threadNetworkUptime")}];
  [dictionary setObject:v38 forKeyedSubscript:@"threadNetworkUptime"];

  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDThreadNetworkStabilityLogEvent threadNetworkDowntime](self, "threadNetworkDowntime")}];
  [dictionary setObject:v39 forKeyedSubscript:@"threadNetworkDowntime"];

  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDThreadNetworkStabilityLogEvent numReadWrites](self, "numReadWrites")}];
  [dictionary setObject:v40 forKeyedSubscript:@"numReadWrites"];

  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDThreadNetworkStabilityLogEvent numReadErrors](self, "numReadErrors")}];
  [dictionary setObject:v41 forKeyedSubscript:@"numReadErrors"];

  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDThreadNetworkStabilityLogEvent numWriteErrors](self, "numWriteErrors")}];
  [dictionary setObject:v42 forKeyedSubscript:@"numWriteErrors"];

  topReadWriteError = [(HMDThreadNetworkStabilityLogEvent *)self topReadWriteError];
  [dictionary setObject:topReadWriteError forKeyedSubscript:@"topReadWriteError"];

  topSessionError = [(HMDThreadNetworkStabilityLogEvent *)self topSessionError];
  [dictionary setObject:topSessionError forKeyedSubscript:@"topSessionError"];

  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDThreadNetworkStabilityLogEvent numSessionErrors](self, "numSessionErrors")}];
  [dictionary setObject:v45 forKeyedSubscript:@"numSessionErrors"];

  logTriggerReason = [(HMDThreadNetworkStabilityLogEvent *)self logTriggerReason];
  [dictionary setObject:logTriggerReason forKeyedSubscript:@"logTriggerReason"];

  v47 = [dictionary copy];

  return v47;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v49[20] = *MEMORY[0x277D85DE8];
  v48[0] = @"numAdvertisedBRs";
  v3 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v46 = [v3 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport, "numAdvertisedBRs")}];
  v49[0] = v46;
  v48[1] = @"numAppleBRs";
  v4 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport2 = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v44 = [v4 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport2, "numAppleBRs")}];
  v49[1] = v44;
  v48[2] = @"numThirdPartyBRs";
  v5 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport3 = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v42 = [v5 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport3, "numThirdPartyBRs")}];
  v49[2] = v42;
  v48[3] = @"numThreadNetworks";
  v6 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport4 = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v40 = [v6 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport4, "numThreadNetworks")}];
  v49[3] = v40;
  v48[4] = @"maxSimuIPPrefixesDetected";
  v7 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport5 = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v38 = [v7 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport5, "maxSimuIPPrefixesDetected")}];
  v49[4] = v38;
  v48[5] = @"txTotal";
  v8 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport6 = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v36 = [v8 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport6, "txTotal")}];
  v49[5] = v36;
  v48[6] = @"txSuccess";
  v9 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport7 = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v34 = [v9 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport7, "txSuccess")}];
  v49[6] = v34;
  v48[7] = @"txDelayAvg";
  v10 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport8 = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v32 = [v10 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport8, "txDelayAvg")}];
  v49[7] = v32;
  v48[8] = @"rxTotal";
  v11 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport9 = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v30 = [v11 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport9, "rxTotal")}];
  v49[8] = v30;
  v48[9] = @"rxSuccess";
  v12 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport10 = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v28 = [v12 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport10, "rxSuccess")}];
  v49[9] = v28;
  v48[10] = @"reportDuration";
  v13 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport11 = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v14 = [v13 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport11, "reportDuration")}];
  v49[10] = v14;
  v48[11] = @"threadNetworkUptime";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDThreadNetworkStabilityLogEvent threadNetworkUptime](self, "threadNetworkUptime")}];
  v49[11] = v15;
  v48[12] = @"threadNetworkDowntime";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDThreadNetworkStabilityLogEvent threadNetworkDowntime](self, "threadNetworkDowntime")}];
  v49[12] = v16;
  v48[13] = @"numReadWrites";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDThreadNetworkStabilityLogEvent numReadWrites](self, "numReadWrites")}];
  v49[13] = v17;
  v48[14] = @"numReadErrors";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDThreadNetworkStabilityLogEvent numReadErrors](self, "numReadErrors")}];
  v49[14] = v18;
  v48[15] = @"numWriteErrors";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDThreadNetworkStabilityLogEvent numWriteErrors](self, "numWriteErrors")}];
  v49[15] = v19;
  v48[16] = @"topReadWriteError";
  topReadWriteError = [(HMDThreadNetworkStabilityLogEvent *)self topReadWriteError];
  v49[16] = topReadWriteError;
  v48[17] = @"topSessionError";
  topSessionError = [(HMDThreadNetworkStabilityLogEvent *)self topSessionError];
  v49[17] = topSessionError;
  v48[18] = @"numSessionErrors";
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDThreadNetworkStabilityLogEvent numSessionErrors](self, "numSessionErrors")}];
  v49[18] = v22;
  v48[19] = @"logTriggerReason";
  logTriggerReason = [(HMDThreadNetworkStabilityLogEvent *)self logTriggerReason];
  v49[19] = logTriggerReason;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:20];

  v24 = *MEMORY[0x277D85DE8];

  return v26;
}

- (HMDThreadNetworkStabilityLogEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"homeUUID"];
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

  v69 = v6;
  if (v6)
  {
    v85 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v6];
  }

  else
  {
    v85 = 0;
  }

  v7 = [dictionaryCopy objectForKeyedSubscript:@"numAdvertisedBRs"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v84 = v8;

  v9 = [dictionaryCopy objectForKeyedSubscript:@"numAppleBRs"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v74 = v10;

  v11 = [dictionaryCopy objectForKeyedSubscript:@"numThirdPartyBRs"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v68 = v12;

  v13 = [dictionaryCopy objectForKeyedSubscript:@"numThreadNetworks"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v73 = v14;

  v15 = [dictionaryCopy objectForKeyedSubscript:@"maxSimuIPPrefixesDetected"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v77 = v16;

  v17 = [dictionaryCopy objectForKeyedSubscript:@"txTotal"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v76 = v18;

  v19 = [dictionaryCopy objectForKeyedSubscript:@"txSuccess"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  v22 = [dictionaryCopy objectForKeyedSubscript:@"txDelayAvg"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v83 = v23;

  v24 = [dictionaryCopy objectForKeyedSubscript:@"rxTotal"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v26 = v25;

  v27 = [dictionaryCopy objectForKeyedSubscript:@"rxSuccess"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  v82 = v28;

  v29 = [dictionaryCopy objectForKeyedSubscript:@"reportDuration"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  v79 = v30;

  v31 = [dictionaryCopy objectForKeyedSubscript:@"threadNetworkUptime"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  v78 = v32;

  v33 = [dictionaryCopy objectForKeyedSubscript:@"threadNetworkDowntime"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  v35 = v34;

  v36 = [dictionaryCopy objectForKeyedSubscript:@"numReadWrites"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37 = v36;
  }

  else
  {
    v37 = 0;
  }

  v81 = v37;

  v38 = [dictionaryCopy objectForKeyedSubscript:@"numReadErrors"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v39 = v38;
  }

  else
  {
    v39 = 0;
  }

  v80 = v39;

  v40 = [dictionaryCopy objectForKeyedSubscript:@"numWriteErrors"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v41 = v40;
  }

  else
  {
    v41 = 0;
  }

  v71 = v41;

  v42 = [dictionaryCopy objectForKeyedSubscript:@"topReadWriteError"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v43 = v42;
  }

  else
  {
    v43 = 0;
  }

  v44 = v43;

  v45 = [dictionaryCopy objectForKeyedSubscript:@"topSessionError"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v46 = v45;
  }

  else
  {
    v46 = 0;
  }

  v70 = v46;

  v47 = [dictionaryCopy objectForKeyedSubscript:@"numSessionErrors"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v48 = v47;
  }

  else
  {
    v48 = 0;
  }

  v49 = v48;

  v50 = [dictionaryCopy objectForKeyedSubscript:@"logTriggerReason"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v51 = v50;
  }

  else
  {
    v51 = 0;
  }

  v67 = v51;

  v65 = v26;
  v66 = v21;
  if (!v85)
  {
    v52 = v68;
    v58 = v76;
    v53 = v77;
    v61 = v79;
    v56 = v71;
LABEL_99:
    v57 = v49;
    v54 = v70;
    goto LABEL_96;
  }

  if (!v84)
  {
    v52 = v68;
    v58 = v76;
    v53 = v77;
    v61 = v79;
    v56 = v71;
    goto LABEL_99;
  }

  v52 = v68;
  v53 = v77;
  if (!v74 || !v68 || !v73 || !v77 || !v76 || !v21 || !v83 || !v26 || !v82 || !v79 || !v78 || !v35 || !v81 || !v80 || !v71)
  {
    v61 = v79;
    v56 = v71;
    v57 = v49;
    v54 = v70;
    v58 = v76;
LABEL_96:
    v63 = 0;
    v62 = v67;
    goto LABEL_93;
  }

  v72 = v49;
  if (!v44)
  {
    v61 = v79;
    v56 = v71;
    goto LABEL_90;
  }

  v54 = v70;
  if (!v70 || !v72)
  {
    v61 = v79;
    v56 = v71;
    goto LABEL_92;
  }

  if (!v67)
  {
    v61 = v79;
    v56 = v71;
LABEL_90:
    v54 = v70;
LABEL_92:
    v57 = v72;
    v62 = v67;
    v52 = v68;
    v53 = v77;
    v58 = v76;
    v63 = 0;
    goto LABEL_93;
  }

  v55 = -[HMDThreadNetworkStatusReport initWithNumAdvertisedBRs:numAppleBRs:numThirdPartyBRs:numThreadNetworks:maxSimuIPPrefixesDetected:txTotal:txSuccess:txDelayAvg:rxTotal:rxSuccess:reportDuration:]([HMDThreadNetworkStatusReport alloc], "initWithNumAdvertisedBRs:numAppleBRs:numThirdPartyBRs:numThreadNetworks:maxSimuIPPrefixesDetected:txTotal:txSuccess:txDelayAvg:rxTotal:rxSuccess:reportDuration:", [v84 unsignedIntValue], objc_msgSend(v74, "unsignedIntValue"), objc_msgSend(v68, "unsignedIntValue"), objc_msgSend(v73, "unsignedIntValue"), objc_msgSend(v77, "unsignedIntValue"), objc_msgSend(v76, "unsignedIntValue"), objc_msgSend(v21, "unsignedIntValue"), objc_msgSend(v83, "unsignedIntValue"), objc_msgSend(v26, "unsignedIntValue"), objc_msgSend(v82, "unsignedIntValue"), objc_msgSend(v79, "unsignedIntValue"));
  v56 = v71;
  v57 = v72;
  v54 = v70;
  v58 = v76;
  v59 = -[HMDThreadNetworkStabilityLogEvent initWithHomeUUID:threadNetworkStatusReport:threadNetworkUptime:threadNetworkDowntime:numReadWrites:numReadErrors:numWriteErrors:topReadWriteError:topSessionError:numSessionErrors:logTriggerReason:](self, "initWithHomeUUID:threadNetworkStatusReport:threadNetworkUptime:threadNetworkDowntime:numReadWrites:numReadErrors:numWriteErrors:topReadWriteError:topSessionError:numSessionErrors:logTriggerReason:", v85, v55, [v78 unsignedIntValue], objc_msgSend(v35, "unsignedIntValue"), objc_msgSend(v81, "unsignedIntValue"), objc_msgSend(v80, "unsignedIntValue"), objc_msgSend(v71, "unsignedIntValue"), v44, v70, objc_msgSend(v72, "unsignedIntValue"), v67);

  self = v59;
  v60 = v59;
  v61 = v79;
  v62 = v67;
  v52 = v68;
  v63 = v60;
  v53 = v77;
LABEL_93:

  return v63;
}

- (HMDThreadNetworkStabilityLogEvent)initWithHomeUUID:(id)d threadNetworkStatusReport:(id)report threadNetworkUptime:(unint64_t)uptime threadNetworkDowntime:(unint64_t)downtime numReadWrites:(unint64_t)writes numReadErrors:(unint64_t)errors numWriteErrors:(unint64_t)writeErrors topReadWriteError:(id)self0 topSessionError:(id)self1 numSessionErrors:(unint64_t)self2 logTriggerReason:(id)self3
{
  reportCopy = report;
  errorCopy = error;
  sessionErrorCopy = sessionError;
  reasonCopy = reason;
  v30.receiver = self;
  v30.super_class = HMDThreadNetworkStabilityLogEvent;
  v23 = [(HMMHomeLogEvent *)&v30 initWithHomeUUID:d];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_threadNetworkStatusReport, report);
    v24->_threadNetworkUptime = uptime;
    v24->_threadNetworkDowntime = downtime;
    v24->_numReadWrites = writes;
    v24->_numReadErrors = errors;
    v24->_numWriteErrors = writeErrors;
    if (errorCopy)
    {
      v25 = [errorCopy copy];
    }

    else
    {
      v25 = @"<NO ERROR>";
    }

    objc_storeStrong(&v24->_topReadWriteError, v25);
    if (errorCopy)
    {
    }

    if (sessionErrorCopy)
    {
      v26 = [sessionErrorCopy copy];
    }

    else
    {
      v26 = @"<NO ERROR>";
    }

    objc_storeStrong(&v24->_topSessionError, v26);
    if (sessionErrorCopy)
    {
    }

    v24->_numSessionErrors = sessionErrors;
    if (reasonCopy)
    {
      v27 = [reasonCopy copy];
    }

    else
    {
      v27 = @"Periodic Snapshot";
    }

    objc_storeStrong(&v24->_logTriggerReason, v27);
    if (reasonCopy)
    {
    }
  }

  return v24;
}

@end