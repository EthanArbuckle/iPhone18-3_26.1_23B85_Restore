@interface HMDNetworkStabilityLogEvent
- (HMDNetworkStabilityLogEvent)initWithDictionary:(id)a3;
- (HMDNetworkStabilityLogEvent)initWithHomeUUID:(id)a3 numWifiAssociations:(unint64_t)a4 wifiDisassociations:(unint64_t)a5 apChanges:(unint64_t)a6 gatewayChanges:(unint64_t)a7 numReadWrites:(unint64_t)a8 numReadErrors:(unint64_t)a9 numWriteErrors:(unint64_t)a10 topReadWriteError:(id)a11 topSessionError:(id)a12 numSessionErrors:(unint64_t)a13 apOUI:(id)a14 ssid:(id)a15 gatewayMACAddress:(id)a16 localHourOfDay:(int64_t)a17 collectionDurationMinutes:(unint64_t)a18;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)serializedLogEvent;
@end

@implementation HMDNetworkStabilityLogEvent

- (id)serializedLogEvent
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HMMHomeLogEvent *)self homeUUIDString];
  [v3 setObject:v4 forKeyedSubscript:@"homeUUID"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDNetworkStabilityLogEvent numWifiAssociations](self, "numWifiAssociations")}];
  [v3 setObject:v5 forKeyedSubscript:@"numWifiAssociations"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDNetworkStabilityLogEvent numWifiDisassociations](self, "numWifiDisassociations")}];
  [v3 setObject:v6 forKeyedSubscript:@"numWifiDisassociations"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDNetworkStabilityLogEvent numAPChanges](self, "numAPChanges")}];
  [v3 setObject:v7 forKeyedSubscript:@"numWifiAPChanges"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDNetworkStabilityLogEvent numGatewayChanges](self, "numGatewayChanges")}];
  [v3 setObject:v8 forKeyedSubscript:@"numGatewayChanges"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDNetworkStabilityLogEvent numReadWrites](self, "numReadWrites")}];
  [v3 setObject:v9 forKeyedSubscript:@"numReadWrites"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDNetworkStabilityLogEvent numReadErrors](self, "numReadErrors")}];
  [v3 setObject:v10 forKeyedSubscript:@"numReadErrors"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDNetworkStabilityLogEvent numWriteErrors](self, "numWriteErrors")}];
  [v3 setObject:v11 forKeyedSubscript:@"numWriteErrors"];

  v12 = [(HMDNetworkStabilityLogEvent *)self topReadWriteError];
  [v3 setObject:v12 forKeyedSubscript:@"topReadWriteError"];

  v13 = [(HMDNetworkStabilityLogEvent *)self topSessionError];
  [v3 setObject:v13 forKeyedSubscript:@"topSessionError"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDNetworkStabilityLogEvent numSessionErrors](self, "numSessionErrors")}];
  [v3 setObject:v14 forKeyedSubscript:@"numSessionErrors"];

  v15 = [(HMDNetworkStabilityLogEvent *)self apOUI];
  [v3 setObject:v15 forKeyedSubscript:@"APOUI"];

  v16 = [(HMDNetworkStabilityLogEvent *)self ssid];
  [v3 setObject:v16 forKeyedSubscript:@"ssid"];

  v17 = [(HMDNetworkStabilityLogEvent *)self gatewayMACAddress];
  [v3 setObject:v17 forKeyedSubscript:@"gatewayMACAddress"];

  v18 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDNetworkStabilityLogEvent localHourOfDay](self, "localHourOfDay")}];
  [v3 setObject:v18 forKeyedSubscript:@"localHourOfDay"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDNetworkStabilityLogEvent collectionDurationMinutes](self, "collectionDurationMinutes")}];
  [v3 setObject:v19 forKeyedSubscript:@"collectionDurationMinutes"];

  v20 = [v3 copy];

  return v20;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v20[13] = *MEMORY[0x277D85DE8];
  v19[0] = @"numWifiAssociations";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDNetworkStabilityLogEvent numWifiAssociations](self, "numWifiAssociations")}];
  v20[0] = v18;
  v19[1] = @"numWifiDisassociations";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDNetworkStabilityLogEvent numWifiDisassociations](self, "numWifiDisassociations")}];
  v20[1] = v17;
  v19[2] = @"numWifiAPChanges";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDNetworkStabilityLogEvent numAPChanges](self, "numAPChanges")}];
  v20[2] = v16;
  v19[3] = @"numGatewayChanges";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDNetworkStabilityLogEvent numGatewayChanges](self, "numGatewayChanges")}];
  v20[3] = v15;
  v19[4] = @"numReadWrites";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDNetworkStabilityLogEvent numReadWrites](self, "numReadWrites")}];
  v20[4] = v3;
  v19[5] = @"numReadErrors";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDNetworkStabilityLogEvent numReadErrors](self, "numReadErrors")}];
  v20[5] = v4;
  v19[6] = @"numWriteErrors";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDNetworkStabilityLogEvent numWriteErrors](self, "numWriteErrors")}];
  v20[6] = v5;
  v19[7] = @"topReadWriteError";
  v6 = [(HMDNetworkStabilityLogEvent *)self topReadWriteError];
  v20[7] = v6;
  v19[8] = @"topSessionError";
  v7 = [(HMDNetworkStabilityLogEvent *)self topSessionError];
  v20[8] = v7;
  v19[9] = @"numSessionErrors";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDNetworkStabilityLogEvent numSessionErrors](self, "numSessionErrors")}];
  v20[9] = v8;
  v19[10] = @"APOUI";
  v9 = [(HMDNetworkStabilityLogEvent *)self apOUI];
  v20[10] = v9;
  v19[11] = @"localHourOfDay";
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDNetworkStabilityLogEvent localHourOfDay](self, "localHourOfDay")}];
  v20[11] = v10;
  v19[12] = @"collectionDurationMinutes";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDNetworkStabilityLogEvent collectionDurationMinutes](self, "collectionDurationMinutes")}];
  v20[12] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:13];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (HMDNetworkStabilityLogEvent)initWithDictionary:(id)a3
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

  v66 = v6;
  if (v6)
  {
    v74 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v6];
  }

  else
  {
    v74 = 0;
  }

  v7 = [v3 objectForKeyedSubscript:@"numWifiAssociations"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v65 = v8;

  v9 = [v3 objectForKeyedSubscript:@"numWifiDisassociations"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v64 = v10;

  v11 = [v3 objectForKeyedSubscript:@"numWifiAPChanges"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v70 = v12;

  v13 = [v3 objectForKeyedSubscript:@"numGatewayChanges"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v69 = v14;

  v15 = [v3 objectForKeyedSubscript:@"numReadWrites"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v71 = v16;

  v17 = [v3 objectForKeyedSubscript:@"numReadErrors"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v73 = v18;

  v19 = [v3 objectForKeyedSubscript:@"numWriteErrors"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v63 = v20;

  v21 = [v3 objectForKeyedSubscript:@"topReadWriteError"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v68 = v22;

  v23 = [v3 objectForKeyedSubscript:@"topSessionError"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v67 = v24;

  v25 = [v3 objectForKeyedSubscript:@"numSessionErrors"];
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

  v28 = [v3 objectForKeyedSubscript:@"APOUI"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  v62 = v29;

  v30 = [v3 objectForKeyedSubscript:@"ssid"];
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

  v33 = [v3 objectForKeyedSubscript:@"gatewayMACAddress"];
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

  v36 = [v3 objectForKeyedSubscript:@"localHourOfDay"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37 = v36;
  }

  else
  {
    v37 = 0;
  }

  v38 = v37;

  v39 = [v3 objectForKeyedSubscript:@"collectionDurationMinutes"];

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

  v61 = v27;
  if (!v74)
  {
    v49 = v65;
    v42 = v64;
    v45 = v67;
    v44 = v68;
    v48 = v62;
    goto LABEL_70;
  }

  if (!v65)
  {
    v42 = v64;
LABEL_74:
    v45 = v67;
    v44 = v68;
    v48 = v62;
    goto LABEL_69;
  }

  v42 = v64;
  if (!v64 || !v70 || !v69)
  {
    goto LABEL_74;
  }

  v60 = v32;
  if (!v71 || !v73)
  {
    v44 = v68;
    goto LABEL_66;
  }

  v43 = v27;
  v44 = v68;
  if (!v68)
  {
LABEL_66:
    v45 = v67;
LABEL_67:
    v48 = v62;
    goto LABEL_68;
  }

  v45 = v67;
  if (!v67 || !v43)
  {
    goto LABEL_67;
  }

  if (!v62)
  {
    v48 = 0;
    v45 = v67;
    v44 = v68;
LABEL_68:
    v32 = v60;
LABEL_69:
    v49 = v65;
LABEL_70:
    v50 = 0;
    goto LABEL_71;
  }

  v59 = [v65 unsignedIntegerValue];
  v58 = [v64 unsignedIntegerValue];
  v57 = [v70 unsignedIntegerValue];
  v55 = [v69 unsignedIntegerValue];
  v56 = [v71 unsignedIntegerValue];
  v54 = [v73 unsignedIntegerValue];
  v46 = [v63 unsignedIntegerValue];
  v47 = [v43 unsignedIntegerValue];
  v32 = v60;
  v53 = v47;
  v48 = v62;
  v45 = v67;
  v44 = v68;
  v52 = v46;
  v49 = v65;
  v42 = v64;
  v50 = -[HMDNetworkStabilityLogEvent initWithHomeUUID:numWifiAssociations:wifiDisassociations:apChanges:gatewayChanges:numReadWrites:numReadErrors:numWriteErrors:topReadWriteError:topSessionError:numSessionErrors:apOUI:ssid:gatewayMACAddress:localHourOfDay:collectionDurationMinutes:](self, "initWithHomeUUID:numWifiAssociations:wifiDisassociations:apChanges:gatewayChanges:numReadWrites:numReadErrors:numWriteErrors:topReadWriteError:topSessionError:numSessionErrors:apOUI:ssid:gatewayMACAddress:localHourOfDay:collectionDurationMinutes:", v74, v59, v58, v57, v55, v56, v54, v52, v68, v67, v53, v62, v60, v35, [v38 integerValue], objc_msgSend(v41, "unsignedIntegerValue"));
  self = v50;
LABEL_71:

  return v50;
}

- (HMDNetworkStabilityLogEvent)initWithHomeUUID:(id)a3 numWifiAssociations:(unint64_t)a4 wifiDisassociations:(unint64_t)a5 apChanges:(unint64_t)a6 gatewayChanges:(unint64_t)a7 numReadWrites:(unint64_t)a8 numReadErrors:(unint64_t)a9 numWriteErrors:(unint64_t)a10 topReadWriteError:(id)a11 topSessionError:(id)a12 numSessionErrors:(unint64_t)a13 apOUI:(id)a14 ssid:(id)a15 gatewayMACAddress:(id)a16 localHourOfDay:(int64_t)a17 collectionDurationMinutes:(unint64_t)a18
{
  v23 = a11;
  v24 = a12;
  v25 = a14;
  v26 = a15;
  v27 = a16;
  v40.receiver = self;
  v40.super_class = HMDNetworkStabilityLogEvent;
  v28 = [(HMMHomeLogEvent *)&v40 initWithHomeUUID:a3];
  v29 = v28;
  if (v28)
  {
    v28->_numWifiAssociations = a4;
    v28->_numWifiDisassociations = a5;
    v28->_numAPChanges = a6;
    v28->_numGatewayChanges = a7;
    v28->_numReadWrites = a8;
    v28->_numReadErrors = a9;
    v28->_numWriteErrors = a10;
    if (v23)
    {
      v30 = [v23 copy];
    }

    else
    {
      v30 = @"<NO ERROR>";
    }

    objc_storeStrong(&v29->_topReadWriteError, v30);
    if (v23)
    {
    }

    if (v24)
    {
      v31 = [v24 copy];
    }

    else
    {
      v31 = @"<NO ERROR>";
    }

    objc_storeStrong(&v29->_topSessionError, v31);
    if (v24)
    {
    }

    v29->_numSessionErrors = a13;
    if (v25)
    {
      v32 = [v25 copy];
    }

    else
    {
      v32 = @"<NO AP>";
    }

    objc_storeStrong(&v29->_apOUI, v32);
    if (v25)
    {
    }

    v33 = [v26 copy];
    ssid = v29->_ssid;
    v29->_ssid = v33;

    v35 = [v27 copy];
    gatewayMACAddress = v29->_gatewayMACAddress;
    v29->_gatewayMACAddress = v35;

    v29->_localHourOfDay = a17;
    v29->_collectionDurationMinutes = a18;
  }

  return v29;
}

@end