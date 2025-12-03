@interface IRAVOutputDeviceDO
+ (id)AVOutputDeviceToDO:(id)o;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAVOutputDeviceDO:(id)o;
- (IRAVOutputDeviceDO)initWithCoder:(id)coder;
- (IRAVOutputDeviceDO)initWithDeviceID:(id)d modelID:(id)iD deviceName:(id)name hasAirplayProperties:(BOOL)properties discoveredOverInfra:(BOOL)infra discoveredWithBroker:(BOOL)broker deviceType:(unint64_t)type deviceSubType:(unint64_t)self0;
- (id)copyWithReplacementDeviceID:(id)d;
- (id)copyWithReplacementDeviceName:(id)name;
- (id)copyWithReplacementModelID:(id)d;
- (id)description;
- (id)exportAsDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IRAVOutputDeviceDO

- (unint64_t)hash
{
  v3 = [(NSString *)self->_deviceID hash];
  v4 = [(NSString *)self->_modelID hash]- v3 + 32 * v3;
  v5 = [(NSString *)self->_deviceName hash];
  v6 = self->_hasAirplayProperties - (v5 - v4 + 32 * v4) + 32 * (v5 - v4 + 32 * v4);
  v7 = self->_discoveredOverInfra - v6 + 32 * v6;
  v8 = self->_discoveredWithBroker - v7 + 32 * v7;
  v9 = self->_deviceType - v8 + 32 * v8;
  return self->_deviceSubType - v9 + 32 * v9;
}

- (id)exportAsDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v4 setDateFormat:@"yyyy-MMM-dd HH:mm:ss.SSSSSS"];
  deviceName = [(IRAVOutputDeviceDO *)self deviceName];
  [v3 setObject:deviceName forKeyedSubscript:@"deviceName"];

  deviceID = [(IRAVOutputDeviceDO *)self deviceID];
  [v3 setObject:deviceID forKeyedSubscript:@"deviceID"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[IRAVOutputDeviceDO discoveredOverInfra](self, "discoveredOverInfra")}];
  [v3 setObject:v7 forKeyedSubscript:@"discoveredOverInfra"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[IRAVOutputDeviceDO discoveredWithBroker](self, "discoveredWithBroker")}];
  [v3 setObject:v8 forKeyedSubscript:@"isDiscoveredWithBroker"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[IRAVOutputDeviceDO hasAirplayProperties](self, "hasAirplayProperties")}];
  [v3 setObject:v9 forKeyedSubscript:@"hasAirplayProperties"];

  v10 = IRAVOutputDeviceTypeToString([(IRAVOutputDeviceDO *)self deviceType]);
  [v3 setObject:v10 forKeyedSubscript:@"deviceType"];

  v11 = IRAVOutputDeviceSubTypeToString([(IRAVOutputDeviceDO *)self deviceSubType]);
  [v3 setObject:v11 forKeyedSubscript:@"deviceSubType"];

  return v3;
}

+ (id)AVOutputDeviceToDO:(id)o
{
  oCopy = o;
  airPlayProperties = [oCopy airPlayProperties];

  airPlayProperties2 = [oCopy airPlayProperties];
  v6 = [airPlayProperties2 objectForKeyedSubscript:@"IsDiscoveredOverInfra"];

  if (v6)
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  airPlayProperties3 = [oCopy airPlayProperties];
  v9 = [airPlayProperties3 objectForKeyedSubscript:@"IsDiscoveredWithBroker"];

  if (v9)
  {
    bOOLValue2 = [v9 BOOLValue];
  }

  else
  {
    bOOLValue2 = 0;
  }

  v11 = +[IRPreferences shared];
  loiSameSpaceOverrideBrokerForAVODIDArray = [v11 loiSameSpaceOverrideBrokerForAVODIDArray];
  deviceID = [oCopy deviceID];
  v14 = [loiSameSpaceOverrideBrokerForAVODIDArray containsObject:deviceID];

  deviceID2 = [oCopy deviceID];
  modelID = [oCopy modelID];
  deviceName = [oCopy deviceName];
  v18 = +[IRAVOutputDeviceDO aVOutputDeviceDOWithDeviceID:modelID:deviceName:hasAirplayProperties:discoveredOverInfra:discoveredWithBroker:deviceType:deviceSubType:](IRAVOutputDeviceDO, "aVOutputDeviceDOWithDeviceID:modelID:deviceName:hasAirplayProperties:discoveredOverInfra:discoveredWithBroker:deviceType:deviceSubType:", deviceID2, modelID, deviceName, airPlayProperties != 0, bOOLValue, (v14 | bOOLValue2) & 1, [oCopy deviceType], objc_msgSend(oCopy, "deviceSubType"));

  return v18;
}

- (IRAVOutputDeviceDO)initWithDeviceID:(id)d modelID:(id)iD deviceName:(id)name hasAirplayProperties:(BOOL)properties discoveredOverInfra:(BOOL)infra discoveredWithBroker:(BOOL)broker deviceType:(unint64_t)type deviceSubType:(unint64_t)self0
{
  dCopy = d;
  iDCopy = iD;
  nameCopy = name;
  v23.receiver = self;
  v23.super_class = IRAVOutputDeviceDO;
  v20 = [(IRAVOutputDeviceDO *)&v23 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_deviceID, d);
    objc_storeStrong(&v21->_modelID, iD);
    objc_storeStrong(&v21->_deviceName, name);
    v21->_hasAirplayProperties = properties;
    v21->_discoveredOverInfra = infra;
    v21->_discoveredWithBroker = broker;
    v21->_deviceType = type;
    v21->_deviceSubType = subType;
  }

  return v21;
}

- (id)copyWithReplacementDeviceID:(id)d
{
  dCopy = d;
  v5 = [objc_alloc(objc_opt_class()) initWithDeviceID:dCopy modelID:self->_modelID deviceName:self->_deviceName hasAirplayProperties:self->_hasAirplayProperties discoveredOverInfra:self->_discoveredOverInfra discoveredWithBroker:self->_discoveredWithBroker deviceType:self->_deviceType deviceSubType:self->_deviceSubType];

  return v5;
}

- (id)copyWithReplacementModelID:(id)d
{
  dCopy = d;
  v5 = objc_alloc(objc_opt_class());
  deviceType = self->_deviceType;
  v7 = [v5 initWithDeviceID:self->_deviceID modelID:dCopy deviceName:self->_deviceName hasAirplayProperties:self->_hasAirplayProperties discoveredOverInfra:self->_discoveredOverInfra discoveredWithBroker:self->_discoveredWithBroker deviceType:deviceType deviceSubType:self->_deviceSubType];

  return v7;
}

- (id)copyWithReplacementDeviceName:(id)name
{
  nameCopy = name;
  v5 = [objc_alloc(objc_opt_class()) initWithDeviceID:self->_deviceID modelID:self->_modelID deviceName:nameCopy hasAirplayProperties:self->_hasAirplayProperties discoveredOverInfra:self->_discoveredOverInfra discoveredWithBroker:self->_discoveredWithBroker deviceType:self->_deviceType deviceSubType:self->_deviceSubType];

  return v5;
}

- (BOOL)isEqualToAVOutputDeviceDO:(id)o
{
  oCopy = o;
  v5 = oCopy;
  if (!oCopy)
  {
    goto LABEL_16;
  }

  v6 = self->_deviceID == 0;
  deviceID = [oCopy deviceID];
  v8 = deviceID != 0;

  if (v6 == v8)
  {
    goto LABEL_16;
  }

  deviceID = self->_deviceID;
  if (deviceID)
  {
    deviceID2 = [v5 deviceID];
    v11 = [(NSString *)deviceID isEqual:deviceID2];

    if (!v11)
    {
      goto LABEL_16;
    }
  }

  v12 = self->_modelID == 0;
  modelID = [v5 modelID];
  v14 = modelID != 0;

  if (v12 == v14)
  {
    goto LABEL_16;
  }

  modelID = self->_modelID;
  if (modelID)
  {
    modelID2 = [v5 modelID];
    v17 = [(NSString *)modelID isEqual:modelID2];

    if (!v17)
    {
      goto LABEL_16;
    }
  }

  v18 = self->_deviceName == 0;
  deviceName = [v5 deviceName];
  v20 = deviceName != 0;

  if (v18 == v20)
  {
    goto LABEL_16;
  }

  deviceName = self->_deviceName;
  if (deviceName)
  {
    deviceName2 = [v5 deviceName];
    v23 = [(NSString *)deviceName isEqual:deviceName2];

    if (!v23)
    {
      goto LABEL_16;
    }
  }

  hasAirplayProperties = self->_hasAirplayProperties;
  if (hasAirplayProperties == [v5 hasAirplayProperties] && (discoveredOverInfra = self->_discoveredOverInfra, discoveredOverInfra == objc_msgSend(v5, "discoveredOverInfra")) && (discoveredWithBroker = self->_discoveredWithBroker, discoveredWithBroker == objc_msgSend(v5, "discoveredWithBroker")) && (deviceType = self->_deviceType, deviceType == objc_msgSend(v5, "deviceType")))
  {
    deviceSubType = self->_deviceSubType;
    v29 = deviceSubType == [v5 deviceSubType];
  }

  else
  {
LABEL_16:
    v29 = 0;
  }

  return v29;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(IRAVOutputDeviceDO *)self isEqualToAVOutputDeviceDO:v5];
  }

  return v6;
}

- (IRAVOutputDeviceDO)initWithCoder:(id)coder
{
  v54[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceID"];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRAVOutputDeviceDO key deviceID (expected %@, decoded %@)", v7, v9, 0];
      v53 = *MEMORY[0x277CCA450];
      v54[0] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:&v53 count:1];
      v12 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRAVOutputDeviceDOOCNTErrorDomain" code:3 userInfo:v11];
      [coderCopy failWithError:v12];
LABEL_15:

LABEL_16:
LABEL_17:
      selfCopy = 0;
LABEL_18:

      goto LABEL_19;
    }

LABEL_6:
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modelID"];
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v15 = objc_opt_class();
        v9 = NSStringFromClass(v15);
        v16 = objc_opt_class();
        v10 = NSStringFromClass(v16);
        v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRAVOutputDeviceDO key modelID (expected %@, decoded %@)", v9, v10, 0];
        v51 = *MEMORY[0x277CCA450];
        v52 = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
        v17 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRAVOutputDeviceDOOCNTErrorDomain" code:3 userInfo:v12];
        [coderCopy failWithError:v17];
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
      error = [coderCopy error];

      if (error)
      {
        selfCopy = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceName"];
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v19 = objc_opt_class();
        v10 = NSStringFromClass(v19);
        v20 = objc_opt_class();
        v11 = NSStringFromClass(v20);
        v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRAVOutputDeviceDO key deviceName (expected %@, decoded %@)", v10, v11, 0];
        v49 = *MEMORY[0x277CCA450];
        v50 = v12;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
        v21 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRAVOutputDeviceDOOCNTErrorDomain" code:3 userInfo:v17];
        [coderCopy failWithError:v21];

        goto LABEL_14;
      }
    }

    else
    {
      error2 = [coderCopy error];

      if (error2)
      {
        goto LABEL_17;
      }
    }

    v25 = [coderCopy decodeInt64ForKey:@"hasAirplayProperties"];
    if (v25)
    {
      goto LABEL_23;
    }

    error3 = [coderCopy error];

    if (error3)
    {
      goto LABEL_17;
    }

    if ([coderCopy containsValueForKey:@"hasAirplayProperties"])
    {
LABEL_23:
      v26 = [coderCopy decodeInt64ForKey:@"discoveredOverInfra"];
      if (v26)
      {
        goto LABEL_24;
      }

      error4 = [coderCopy error];

      if (error4)
      {
        goto LABEL_17;
      }

      if ([coderCopy containsValueForKey:@"discoveredOverInfra"])
      {
LABEL_24:
        v27 = [coderCopy decodeInt64ForKey:@"discoveredWithBroker"];
        if (v27)
        {
          goto LABEL_25;
        }

        error5 = [coderCopy error];

        if (error5)
        {
          goto LABEL_17;
        }

        if ([coderCopy containsValueForKey:@"discoveredWithBroker"])
        {
LABEL_25:
          v28 = [coderCopy decodeInt64ForKey:@"deviceType"];
          if (v28)
          {
            goto LABEL_26;
          }

          error6 = [coderCopy error];

          if (error6)
          {
            goto LABEL_17;
          }

          if ([coderCopy containsValueForKey:@"deviceType"])
          {
LABEL_26:
            v29 = [coderCopy decodeInt64ForKey:@"deviceSubType"];
            if (v29)
            {
              goto LABEL_27;
            }

            v38 = v28;
            error7 = [coderCopy error];

            if (error7)
            {
              goto LABEL_17;
            }

            v28 = v38;
            if ([coderCopy containsValueForKey:@"deviceSubType"])
            {
LABEL_27:
              self = [(IRAVOutputDeviceDO *)self initWithDeviceID:v5 modelID:v7 deviceName:v9 hasAirplayProperties:v25 != 0 discoveredOverInfra:v26 != 0 discoveredWithBroker:v27 != 0 deviceType:v28 deviceSubType:v29];
              selfCopy = self;
              goto LABEL_18;
            }

            v39 = *MEMORY[0x277CCA450];
            v40 = @"Missing serialized value for IRAVOutputDeviceDO.deviceSubType";
            v31 = MEMORY[0x277CBEAC0];
            v32 = &v40;
            v33 = &v39;
          }

          else
          {
            v41 = *MEMORY[0x277CCA450];
            v42 = @"Missing serialized value for IRAVOutputDeviceDO.deviceType";
            v31 = MEMORY[0x277CBEAC0];
            v32 = &v42;
            v33 = &v41;
          }
        }

        else
        {
          v43 = *MEMORY[0x277CCA450];
          v44 = @"Missing serialized value for IRAVOutputDeviceDO.discoveredWithBroker";
          v31 = MEMORY[0x277CBEAC0];
          v32 = &v44;
          v33 = &v43;
        }
      }

      else
      {
        v45 = *MEMORY[0x277CCA450];
        v46 = @"Missing serialized value for IRAVOutputDeviceDO.discoveredOverInfra";
        v31 = MEMORY[0x277CBEAC0];
        v32 = &v46;
        v33 = &v45;
      }
    }

    else
    {
      v47 = *MEMORY[0x277CCA450];
      v48 = @"Missing serialized value for IRAVOutputDeviceDO.hasAirplayProperties";
      v31 = MEMORY[0x277CBEAC0];
      v32 = &v48;
      v33 = &v47;
    }

    v10 = [v31 dictionaryWithObjects:v32 forKeys:v33 count:1];
    v11 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRAVOutputDeviceDOOCNTErrorDomain" code:1 userInfo:v10];
    [coderCopy failWithError:v11];
    goto LABEL_16;
  }

  error8 = [coderCopy error];

  if (!error8)
  {
    goto LABEL_6;
  }

  selfCopy = 0;
LABEL_20:

  v22 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  deviceID = self->_deviceID;
  v8 = coderCopy;
  if (deviceID)
  {
    [coderCopy encodeObject:deviceID forKey:@"deviceID"];
    coderCopy = v8;
  }

  modelID = self->_modelID;
  if (modelID)
  {
    [v8 encodeObject:modelID forKey:@"modelID"];
    coderCopy = v8;
  }

  deviceName = self->_deviceName;
  if (deviceName)
  {
    [v8 encodeObject:deviceName forKey:@"deviceName"];
    coderCopy = v8;
  }

  [coderCopy encodeInt64:self->_hasAirplayProperties forKey:@"hasAirplayProperties"];
  [v8 encodeInt64:self->_discoveredOverInfra forKey:@"discoveredOverInfra"];
  [v8 encodeInt64:self->_discoveredWithBroker forKey:@"discoveredWithBroker"];
  [v8 encodeInt64:self->_deviceType forKey:@"deviceType"];
  [v8 encodeInt64:self->_deviceSubType forKey:@"deviceSubType"];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v12 = *&self->_deviceID;
  deviceName = self->_deviceName;
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasAirplayProperties];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_discoveredOverInfra];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_discoveredWithBroker];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_deviceType];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_deviceSubType];
  v10 = [v3 initWithFormat:@"<IRAVOutputDeviceDO | deviceID:%@ modelID:%@ deviceName:%@ hasAirplayProperties:%@ discoveredOverInfra:%@ discoveredWithBroker:%@ deviceType:%@ deviceSubType:%@>", v12, deviceName, v5, v6, v7, v8, v9];

  return v10;
}

@end