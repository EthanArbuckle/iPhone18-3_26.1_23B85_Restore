@interface HMDThreadNetworkStabilityLogEvent
- (HMDThreadNetworkStabilityLogEvent)initWithDictionary:(id)a3;
- (HMDThreadNetworkStabilityLogEvent)initWithHomeUUID:(id)a3 threadNetworkStatusReport:(id)a4 threadNetworkUptime:(unint64_t)a5 threadNetworkDowntime:(unint64_t)a6 numReadWrites:(unint64_t)a7 numReadErrors:(unint64_t)a8 numWriteErrors:(unint64_t)a9 topReadWriteError:(id)a10 topSessionError:(id)a11 numSessionErrors:(unint64_t)a12 logTriggerReason:(id)a13;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)serializedLogEvent;
@end

@implementation HMDThreadNetworkStabilityLogEvent

- (id)serializedLogEvent
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HMMHomeLogEvent *)self homeUUIDString];
  [v3 setObject:v4 forKeyedSubscript:@"homeUUID"];

  v5 = MEMORY[0x277CCABB0];
  v6 = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(v6, "numAdvertisedBRs")}];
  [v3 setObject:v7 forKeyedSubscript:@"numAdvertisedBRs"];

  v8 = MEMORY[0x277CCABB0];
  v9 = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(v9, "numAppleBRs")}];
  [v3 setObject:v10 forKeyedSubscript:@"numAppleBRs"];

  v11 = MEMORY[0x277CCABB0];
  v12 = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(v12, "numThirdPartyBRs")}];
  [v3 setObject:v13 forKeyedSubscript:@"numThirdPartyBRs"];

  v14 = MEMORY[0x277CCABB0];
  v15 = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(v15, "numThreadNetworks")}];
  [v3 setObject:v16 forKeyedSubscript:@"numThreadNetworks"];

  v17 = MEMORY[0x277CCABB0];
  v18 = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v19 = [v17 numberWithUnsignedInteger:{objc_msgSend(v18, "maxSimuIPPrefixesDetected")}];
  [v3 setObject:v19 forKeyedSubscript:@"maxSimuIPPrefixesDetected"];

  v20 = MEMORY[0x277CCABB0];
  v21 = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v22 = [v20 numberWithUnsignedInteger:{objc_msgSend(v21, "txTotal")}];
  [v3 setObject:v22 forKeyedSubscript:@"txTotal"];

  v23 = MEMORY[0x277CCABB0];
  v24 = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v25 = [v23 numberWithUnsignedInteger:{objc_msgSend(v24, "txSuccess")}];
  [v3 setObject:v25 forKeyedSubscript:@"txSuccess"];

  v26 = MEMORY[0x277CCABB0];
  v27 = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v28 = [v26 numberWithUnsignedInteger:{objc_msgSend(v27, "txDelayAvg")}];
  [v3 setObject:v28 forKeyedSubscript:@"txDelayAvg"];

  v29 = MEMORY[0x277CCABB0];
  v30 = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v31 = [v29 numberWithUnsignedInteger:{objc_msgSend(v30, "rxTotal")}];
  [v3 setObject:v31 forKeyedSubscript:@"rxTotal"];

  v32 = MEMORY[0x277CCABB0];
  v33 = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v34 = [v32 numberWithUnsignedInteger:{objc_msgSend(v33, "rxSuccess")}];
  [v3 setObject:v34 forKeyedSubscript:@"rxSuccess"];

  v35 = MEMORY[0x277CCABB0];
  v36 = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v37 = [v35 numberWithUnsignedInteger:{objc_msgSend(v36, "reportDuration")}];
  [v3 setObject:v37 forKeyedSubscript:@"reportDuration"];

  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDThreadNetworkStabilityLogEvent threadNetworkUptime](self, "threadNetworkUptime")}];
  [v3 setObject:v38 forKeyedSubscript:@"threadNetworkUptime"];

  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDThreadNetworkStabilityLogEvent threadNetworkDowntime](self, "threadNetworkDowntime")}];
  [v3 setObject:v39 forKeyedSubscript:@"threadNetworkDowntime"];

  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDThreadNetworkStabilityLogEvent numReadWrites](self, "numReadWrites")}];
  [v3 setObject:v40 forKeyedSubscript:@"numReadWrites"];

  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDThreadNetworkStabilityLogEvent numReadErrors](self, "numReadErrors")}];
  [v3 setObject:v41 forKeyedSubscript:@"numReadErrors"];

  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDThreadNetworkStabilityLogEvent numWriteErrors](self, "numWriteErrors")}];
  [v3 setObject:v42 forKeyedSubscript:@"numWriteErrors"];

  v43 = [(HMDThreadNetworkStabilityLogEvent *)self topReadWriteError];
  [v3 setObject:v43 forKeyedSubscript:@"topReadWriteError"];

  v44 = [(HMDThreadNetworkStabilityLogEvent *)self topSessionError];
  [v3 setObject:v44 forKeyedSubscript:@"topSessionError"];

  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDThreadNetworkStabilityLogEvent numSessionErrors](self, "numSessionErrors")}];
  [v3 setObject:v45 forKeyedSubscript:@"numSessionErrors"];

  v46 = [(HMDThreadNetworkStabilityLogEvent *)self logTriggerReason];
  [v3 setObject:v46 forKeyedSubscript:@"logTriggerReason"];

  v47 = [v3 copy];

  return v47;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v49[20] = *MEMORY[0x277D85DE8];
  v48[0] = @"numAdvertisedBRs";
  v3 = MEMORY[0x277CCABB0];
  v47 = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v46 = [v3 numberWithUnsignedInteger:{objc_msgSend(v47, "numAdvertisedBRs")}];
  v49[0] = v46;
  v48[1] = @"numAppleBRs";
  v4 = MEMORY[0x277CCABB0];
  v45 = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v44 = [v4 numberWithUnsignedInteger:{objc_msgSend(v45, "numAppleBRs")}];
  v49[1] = v44;
  v48[2] = @"numThirdPartyBRs";
  v5 = MEMORY[0x277CCABB0];
  v43 = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v42 = [v5 numberWithUnsignedInteger:{objc_msgSend(v43, "numThirdPartyBRs")}];
  v49[2] = v42;
  v48[3] = @"numThreadNetworks";
  v6 = MEMORY[0x277CCABB0];
  v41 = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v40 = [v6 numberWithUnsignedInteger:{objc_msgSend(v41, "numThreadNetworks")}];
  v49[3] = v40;
  v48[4] = @"maxSimuIPPrefixesDetected";
  v7 = MEMORY[0x277CCABB0];
  v39 = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v38 = [v7 numberWithUnsignedInteger:{objc_msgSend(v39, "maxSimuIPPrefixesDetected")}];
  v49[4] = v38;
  v48[5] = @"txTotal";
  v8 = MEMORY[0x277CCABB0];
  v37 = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v36 = [v8 numberWithUnsignedInteger:{objc_msgSend(v37, "txTotal")}];
  v49[5] = v36;
  v48[6] = @"txSuccess";
  v9 = MEMORY[0x277CCABB0];
  v35 = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v34 = [v9 numberWithUnsignedInteger:{objc_msgSend(v35, "txSuccess")}];
  v49[6] = v34;
  v48[7] = @"txDelayAvg";
  v10 = MEMORY[0x277CCABB0];
  v33 = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v32 = [v10 numberWithUnsignedInteger:{objc_msgSend(v33, "txDelayAvg")}];
  v49[7] = v32;
  v48[8] = @"rxTotal";
  v11 = MEMORY[0x277CCABB0];
  v31 = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v30 = [v11 numberWithUnsignedInteger:{objc_msgSend(v31, "rxTotal")}];
  v49[8] = v30;
  v48[9] = @"rxSuccess";
  v12 = MEMORY[0x277CCABB0];
  v29 = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v28 = [v12 numberWithUnsignedInteger:{objc_msgSend(v29, "rxSuccess")}];
  v49[9] = v28;
  v48[10] = @"reportDuration";
  v13 = MEMORY[0x277CCABB0];
  v27 = [(HMDThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v14 = [v13 numberWithUnsignedInteger:{objc_msgSend(v27, "reportDuration")}];
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
  v20 = [(HMDThreadNetworkStabilityLogEvent *)self topReadWriteError];
  v49[16] = v20;
  v48[17] = @"topSessionError";
  v21 = [(HMDThreadNetworkStabilityLogEvent *)self topSessionError];
  v49[17] = v21;
  v48[18] = @"numSessionErrors";
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDThreadNetworkStabilityLogEvent numSessionErrors](self, "numSessionErrors")}];
  v49[18] = v22;
  v48[19] = @"logTriggerReason";
  v23 = [(HMDThreadNetworkStabilityLogEvent *)self logTriggerReason];
  v49[19] = v23;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:20];

  v24 = *MEMORY[0x277D85DE8];

  return v26;
}

- (HMDThreadNetworkStabilityLogEvent)initWithDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"homeUUID"];
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

  v7 = [v3 objectForKeyedSubscript:@"numAdvertisedBRs"];
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

  v9 = [v3 objectForKeyedSubscript:@"numAppleBRs"];
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

  v11 = [v3 objectForKeyedSubscript:@"numThirdPartyBRs"];
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

  v13 = [v3 objectForKeyedSubscript:@"numThreadNetworks"];
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

  v15 = [v3 objectForKeyedSubscript:@"maxSimuIPPrefixesDetected"];
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

  v17 = [v3 objectForKeyedSubscript:@"txTotal"];
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

  v19 = [v3 objectForKeyedSubscript:@"txSuccess"];
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

  v22 = [v3 objectForKeyedSubscript:@"txDelayAvg"];
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

  v24 = [v3 objectForKeyedSubscript:@"rxTotal"];
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

  v27 = [v3 objectForKeyedSubscript:@"rxSuccess"];
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

  v29 = [v3 objectForKeyedSubscript:@"reportDuration"];
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

  v31 = [v3 objectForKeyedSubscript:@"threadNetworkUptime"];
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

  v33 = [v3 objectForKeyedSubscript:@"threadNetworkDowntime"];
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

  v36 = [v3 objectForKeyedSubscript:@"numReadWrites"];
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

  v38 = [v3 objectForKeyedSubscript:@"numReadErrors"];
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

  v40 = [v3 objectForKeyedSubscript:@"numWriteErrors"];
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

  v42 = [v3 objectForKeyedSubscript:@"topReadWriteError"];
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

  v45 = [v3 objectForKeyedSubscript:@"topSessionError"];
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

  v47 = [v3 objectForKeyedSubscript:@"numSessionErrors"];
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

  v50 = [v3 objectForKeyedSubscript:@"logTriggerReason"];

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

- (HMDThreadNetworkStabilityLogEvent)initWithHomeUUID:(id)a3 threadNetworkStatusReport:(id)a4 threadNetworkUptime:(unint64_t)a5 threadNetworkDowntime:(unint64_t)a6 numReadWrites:(unint64_t)a7 numReadErrors:(unint64_t)a8 numWriteErrors:(unint64_t)a9 topReadWriteError:(id)a10 topSessionError:(id)a11 numSessionErrors:(unint64_t)a12 logTriggerReason:(id)a13
{
  v29 = a4;
  v20 = a10;
  v21 = a11;
  v22 = a13;
  v30.receiver = self;
  v30.super_class = HMDThreadNetworkStabilityLogEvent;
  v23 = [(HMMHomeLogEvent *)&v30 initWithHomeUUID:a3];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_threadNetworkStatusReport, a4);
    v24->_threadNetworkUptime = a5;
    v24->_threadNetworkDowntime = a6;
    v24->_numReadWrites = a7;
    v24->_numReadErrors = a8;
    v24->_numWriteErrors = a9;
    if (v20)
    {
      v25 = [v20 copy];
    }

    else
    {
      v25 = @"<NO ERROR>";
    }

    objc_storeStrong(&v24->_topReadWriteError, v25);
    if (v20)
    {
    }

    if (v21)
    {
      v26 = [v21 copy];
    }

    else
    {
      v26 = @"<NO ERROR>";
    }

    objc_storeStrong(&v24->_topSessionError, v26);
    if (v21)
    {
    }

    v24->_numSessionErrors = a12;
    if (v22)
    {
      v27 = [v22 copy];
    }

    else
    {
      v27 = @"Periodic Snapshot";
    }

    objc_storeStrong(&v24->_logTriggerReason, v27);
    if (v22)
    {
    }
  }

  return v24;
}

@end