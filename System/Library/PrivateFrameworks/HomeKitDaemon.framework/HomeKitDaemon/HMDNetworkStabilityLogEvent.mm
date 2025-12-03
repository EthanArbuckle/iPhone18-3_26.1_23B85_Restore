@interface HMDNetworkStabilityLogEvent
- (HMDNetworkStabilityLogEvent)initWithDictionary:(id)dictionary;
- (HMDNetworkStabilityLogEvent)initWithHomeUUID:(id)d numWifiAssociations:(unint64_t)associations wifiDisassociations:(unint64_t)disassociations apChanges:(unint64_t)changes gatewayChanges:(unint64_t)gatewayChanges numReadWrites:(unint64_t)writes numReadErrors:(unint64_t)errors numWriteErrors:(unint64_t)self0 topReadWriteError:(id)self1 topSessionError:(id)self2 numSessionErrors:(unint64_t)self3 apOUI:(id)self4 ssid:(id)self5 gatewayMACAddress:(id)self6 localHourOfDay:(int64_t)self7 collectionDurationMinutes:(unint64_t)self8;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)serializedLogEvent;
@end

@implementation HMDNetworkStabilityLogEvent

- (id)serializedLogEvent
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  homeUUIDString = [(HMMHomeLogEvent *)self homeUUIDString];
  [dictionary setObject:homeUUIDString forKeyedSubscript:@"homeUUID"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDNetworkStabilityLogEvent numWifiAssociations](self, "numWifiAssociations")}];
  [dictionary setObject:v5 forKeyedSubscript:@"numWifiAssociations"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDNetworkStabilityLogEvent numWifiDisassociations](self, "numWifiDisassociations")}];
  [dictionary setObject:v6 forKeyedSubscript:@"numWifiDisassociations"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDNetworkStabilityLogEvent numAPChanges](self, "numAPChanges")}];
  [dictionary setObject:v7 forKeyedSubscript:@"numWifiAPChanges"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDNetworkStabilityLogEvent numGatewayChanges](self, "numGatewayChanges")}];
  [dictionary setObject:v8 forKeyedSubscript:@"numGatewayChanges"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDNetworkStabilityLogEvent numReadWrites](self, "numReadWrites")}];
  [dictionary setObject:v9 forKeyedSubscript:@"numReadWrites"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDNetworkStabilityLogEvent numReadErrors](self, "numReadErrors")}];
  [dictionary setObject:v10 forKeyedSubscript:@"numReadErrors"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDNetworkStabilityLogEvent numWriteErrors](self, "numWriteErrors")}];
  [dictionary setObject:v11 forKeyedSubscript:@"numWriteErrors"];

  topReadWriteError = [(HMDNetworkStabilityLogEvent *)self topReadWriteError];
  [dictionary setObject:topReadWriteError forKeyedSubscript:@"topReadWriteError"];

  topSessionError = [(HMDNetworkStabilityLogEvent *)self topSessionError];
  [dictionary setObject:topSessionError forKeyedSubscript:@"topSessionError"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDNetworkStabilityLogEvent numSessionErrors](self, "numSessionErrors")}];
  [dictionary setObject:v14 forKeyedSubscript:@"numSessionErrors"];

  apOUI = [(HMDNetworkStabilityLogEvent *)self apOUI];
  [dictionary setObject:apOUI forKeyedSubscript:@"APOUI"];

  ssid = [(HMDNetworkStabilityLogEvent *)self ssid];
  [dictionary setObject:ssid forKeyedSubscript:@"ssid"];

  gatewayMACAddress = [(HMDNetworkStabilityLogEvent *)self gatewayMACAddress];
  [dictionary setObject:gatewayMACAddress forKeyedSubscript:@"gatewayMACAddress"];

  v18 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDNetworkStabilityLogEvent localHourOfDay](self, "localHourOfDay")}];
  [dictionary setObject:v18 forKeyedSubscript:@"localHourOfDay"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDNetworkStabilityLogEvent collectionDurationMinutes](self, "collectionDurationMinutes")}];
  [dictionary setObject:v19 forKeyedSubscript:@"collectionDurationMinutes"];

  v20 = [dictionary copy];

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
  topReadWriteError = [(HMDNetworkStabilityLogEvent *)self topReadWriteError];
  v20[7] = topReadWriteError;
  v19[8] = @"topSessionError";
  topSessionError = [(HMDNetworkStabilityLogEvent *)self topSessionError];
  v20[8] = topSessionError;
  v19[9] = @"numSessionErrors";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDNetworkStabilityLogEvent numSessionErrors](self, "numSessionErrors")}];
  v20[9] = v8;
  v19[10] = @"APOUI";
  apOUI = [(HMDNetworkStabilityLogEvent *)self apOUI];
  v20[10] = apOUI;
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

- (HMDNetworkStabilityLogEvent)initWithDictionary:(id)dictionary
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

  v66 = v6;
  if (v6)
  {
    v74 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v6];
  }

  else
  {
    v74 = 0;
  }

  v7 = [dictionaryCopy objectForKeyedSubscript:@"numWifiAssociations"];
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

  v9 = [dictionaryCopy objectForKeyedSubscript:@"numWifiDisassociations"];
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

  v11 = [dictionaryCopy objectForKeyedSubscript:@"numWifiAPChanges"];
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

  v13 = [dictionaryCopy objectForKeyedSubscript:@"numGatewayChanges"];
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

  v15 = [dictionaryCopy objectForKeyedSubscript:@"numReadWrites"];
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

  v17 = [dictionaryCopy objectForKeyedSubscript:@"numReadErrors"];
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

  v19 = [dictionaryCopy objectForKeyedSubscript:@"numWriteErrors"];
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

  v21 = [dictionaryCopy objectForKeyedSubscript:@"topReadWriteError"];
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

  v23 = [dictionaryCopy objectForKeyedSubscript:@"topSessionError"];
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

  v25 = [dictionaryCopy objectForKeyedSubscript:@"numSessionErrors"];
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

  v28 = [dictionaryCopy objectForKeyedSubscript:@"APOUI"];
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

  v30 = [dictionaryCopy objectForKeyedSubscript:@"ssid"];
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

  v33 = [dictionaryCopy objectForKeyedSubscript:@"gatewayMACAddress"];
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

  v36 = [dictionaryCopy objectForKeyedSubscript:@"localHourOfDay"];
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

  v39 = [dictionaryCopy objectForKeyedSubscript:@"collectionDurationMinutes"];

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

  unsignedIntegerValue = [v65 unsignedIntegerValue];
  unsignedIntegerValue2 = [v64 unsignedIntegerValue];
  unsignedIntegerValue3 = [v70 unsignedIntegerValue];
  unsignedIntegerValue4 = [v69 unsignedIntegerValue];
  unsignedIntegerValue5 = [v71 unsignedIntegerValue];
  unsignedIntegerValue6 = [v73 unsignedIntegerValue];
  unsignedIntegerValue7 = [v63 unsignedIntegerValue];
  unsignedIntegerValue8 = [v43 unsignedIntegerValue];
  v32 = v60;
  v53 = unsignedIntegerValue8;
  v48 = v62;
  v45 = v67;
  v44 = v68;
  v52 = unsignedIntegerValue7;
  v49 = v65;
  v42 = v64;
  v50 = -[HMDNetworkStabilityLogEvent initWithHomeUUID:numWifiAssociations:wifiDisassociations:apChanges:gatewayChanges:numReadWrites:numReadErrors:numWriteErrors:topReadWriteError:topSessionError:numSessionErrors:apOUI:ssid:gatewayMACAddress:localHourOfDay:collectionDurationMinutes:](self, "initWithHomeUUID:numWifiAssociations:wifiDisassociations:apChanges:gatewayChanges:numReadWrites:numReadErrors:numWriteErrors:topReadWriteError:topSessionError:numSessionErrors:apOUI:ssid:gatewayMACAddress:localHourOfDay:collectionDurationMinutes:", v74, unsignedIntegerValue, unsignedIntegerValue2, unsignedIntegerValue3, unsignedIntegerValue4, unsignedIntegerValue5, unsignedIntegerValue6, v52, v68, v67, v53, v62, v60, v35, [v38 integerValue], objc_msgSend(v41, "unsignedIntegerValue"));
  self = v50;
LABEL_71:

  return v50;
}

- (HMDNetworkStabilityLogEvent)initWithHomeUUID:(id)d numWifiAssociations:(unint64_t)associations wifiDisassociations:(unint64_t)disassociations apChanges:(unint64_t)changes gatewayChanges:(unint64_t)gatewayChanges numReadWrites:(unint64_t)writes numReadErrors:(unint64_t)errors numWriteErrors:(unint64_t)self0 topReadWriteError:(id)self1 topSessionError:(id)self2 numSessionErrors:(unint64_t)self3 apOUI:(id)self4 ssid:(id)self5 gatewayMACAddress:(id)self6 localHourOfDay:(int64_t)self7 collectionDurationMinutes:(unint64_t)self8
{
  errorCopy = error;
  sessionErrorCopy = sessionError;
  iCopy = i;
  ssidCopy = ssid;
  addressCopy = address;
  v40.receiver = self;
  v40.super_class = HMDNetworkStabilityLogEvent;
  v28 = [(HMMHomeLogEvent *)&v40 initWithHomeUUID:d];
  v29 = v28;
  if (v28)
  {
    v28->_numWifiAssociations = associations;
    v28->_numWifiDisassociations = disassociations;
    v28->_numAPChanges = changes;
    v28->_numGatewayChanges = gatewayChanges;
    v28->_numReadWrites = writes;
    v28->_numReadErrors = errors;
    v28->_numWriteErrors = writeErrors;
    if (errorCopy)
    {
      v30 = [errorCopy copy];
    }

    else
    {
      v30 = @"<NO ERROR>";
    }

    objc_storeStrong(&v29->_topReadWriteError, v30);
    if (errorCopy)
    {
    }

    if (sessionErrorCopy)
    {
      v31 = [sessionErrorCopy copy];
    }

    else
    {
      v31 = @"<NO ERROR>";
    }

    objc_storeStrong(&v29->_topSessionError, v31);
    if (sessionErrorCopy)
    {
    }

    v29->_numSessionErrors = sessionErrors;
    if (iCopy)
    {
      v32 = [iCopy copy];
    }

    else
    {
      v32 = @"<NO AP>";
    }

    objc_storeStrong(&v29->_apOUI, v32);
    if (iCopy)
    {
    }

    v33 = [ssidCopy copy];
    ssid = v29->_ssid;
    v29->_ssid = v33;

    v35 = [addressCopy copy];
    gatewayMACAddress = v29->_gatewayMACAddress;
    v29->_gatewayMACAddress = v35;

    v29->_localHourOfDay = day;
    v29->_collectionDurationMinutes = minutes;
  }

  return v29;
}

@end