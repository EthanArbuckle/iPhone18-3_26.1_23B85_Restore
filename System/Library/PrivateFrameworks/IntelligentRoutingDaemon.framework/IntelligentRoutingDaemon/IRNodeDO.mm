@interface IRNodeDO
+ (id)nodeDOFromNode:(id)node;
+ (id)nodeFromNodeDO:(id)o;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToNodeDO:(id)o;
- (IRNodeDO)initWithAvOutpuDeviceIdentifier:(id)identifier rapportIdentifier:(id)rapportIdentifier idsIdentifier:(id)idsIdentifier avOutputDevice:(id)device rapportDevice:(id)rapportDevice isLocal:(BOOL)local;
- (IRNodeDO)initWithCoder:(id)coder;
- (id)computeName;
- (id)computedIdsIdentifier;
- (id)computedMediaRemoteIdenfifier;
- (id)computedMediaRouteIdentifier;
- (id)copyWithReplacementAvOutpuDeviceIdentifier:(id)identifier;
- (id)copyWithReplacementAvOutputDevice:(id)device;
- (id)copyWithReplacementIdsIdentifier:(id)identifier;
- (id)copyWithReplacementRapportDevice:(id)device;
- (id)copyWithReplacementRapportIdentifier:(id)identifier;
- (id)description;
- (id)deviceTypeAndSubType;
- (id)exportAsDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IRNodeDO

- (unint64_t)hash
{
  v3 = [(NSString *)self->_avOutpuDeviceIdentifier hash];
  v4 = [(NSString *)self->_rapportIdentifier hash]- v3 + 32 * v3;
  v5 = [(NSString *)self->_idsIdentifier hash]- v4 + 32 * v4;
  v6 = [(IRAVOutputDeviceDO *)self->_avOutputDevice hash]- v5 + 32 * v5;
  v7 = [(IRRapportDeviceDO *)self->_rapportDevice hash];
  return self->_isLocal - (v7 - v6 + 32 * v6) + 32 * (v7 - v6 + 32 * v6);
}

- (id)deviceTypeAndSubType
{
  if ([(IRNodeDO *)self isLocal])
  {
    v3 = [IRPair pairWithFirst:&unk_286768FB0 second:&unk_286768FC8];
  }

  else
  {
    avOutputDevice = [(IRNodeDO *)self avOutputDevice];
    deviceID = [avOutputDevice deviceID];

    if (deviceID)
    {
      v6 = MEMORY[0x277CCABB0];
      avOutputDevice2 = [(IRNodeDO *)self avOutputDevice];
      v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(avOutputDevice2, "deviceType")}];
      v9 = MEMORY[0x277CCABB0];
      avOutputDevice3 = [(IRNodeDO *)self avOutputDevice];
      v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(avOutputDevice3, "deviceSubType")}];
      v3 = [IRPair pairWithFirst:v8 second:v11];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)computeName
{
  avOutputDevice = [(IRNodeDO *)self avOutputDevice];
  deviceName = [avOutputDevice deviceName];

  if (deviceName)
  {
    avOutputDevice2 = [(IRNodeDO *)self avOutputDevice];
    deviceName2 = [avOutputDevice2 deviceName];
LABEL_5:
    v9 = deviceName2;

    goto LABEL_6;
  }

  rapportDevice = [(IRNodeDO *)self rapportDevice];
  name = [rapportDevice name];

  if (name)
  {
    avOutputDevice2 = [(IRNodeDO *)self rapportDevice];
    deviceName2 = [avOutputDevice2 name];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

+ (id)nodeDOFromNode:(id)node
{
  nodeCopy = node;
  v4 = [IRNodeDO alloc];
  avOutpuDeviceIdentifier = [nodeCopy avOutpuDeviceIdentifier];
  rapportIdentifier = [nodeCopy rapportIdentifier];
  idsIdentifier = [nodeCopy idsIdentifier];
  isLocal = [nodeCopy isLocal];

  v9 = [(IRNodeDO *)v4 initWithAvOutpuDeviceIdentifier:avOutpuDeviceIdentifier rapportIdentifier:rapportIdentifier idsIdentifier:idsIdentifier avOutputDevice:0 rapportDevice:0 isLocal:isLocal];

  return v9;
}

+ (id)nodeFromNodeDO:(id)o
{
  v3 = MEMORY[0x277D212D0];
  oCopy = o;
  v5 = objc_alloc_init(v3);
  avOutpuDeviceIdentifier = [oCopy avOutpuDeviceIdentifier];
  [v5 setAvOutpuDeviceIdentifier:avOutpuDeviceIdentifier];

  rapportIdentifier = [oCopy rapportIdentifier];
  [v5 setRapportIdentifier:rapportIdentifier];

  idsIdentifier = [oCopy idsIdentifier];
  [v5 setIdsIdentifier:idsIdentifier];

  computeName = [oCopy computeName];
  [v5 setName:computeName];

  isLocal = [oCopy isLocal];
  [v5 setIsLocal:isLocal];

  return v5;
}

- (id)computedIdsIdentifier
{
  idsIdentifier = [(IRNodeDO *)self idsIdentifier];
  if (!idsIdentifier)
  {
    rapportDevice = [(IRNodeDO *)self rapportDevice];
    idsIdentifier = [rapportDevice idsID];
  }

  return idsIdentifier;
}

- (id)computedMediaRemoteIdenfifier
{
  avOutpuDeviceIdentifier = [(IRNodeDO *)self avOutpuDeviceIdentifier];
  if (avOutpuDeviceIdentifier)
  {
    deviceID = avOutpuDeviceIdentifier;
  }

  else
  {
    avOutputDevice = [(IRNodeDO *)self avOutputDevice];
    deviceID = [avOutputDevice deviceID];

    if (!deviceID)
    {
      rapportDevice = [(IRNodeDO *)self rapportDevice];
      deviceID = [rapportDevice mediaRemoteIdentifier];
    }
  }

  return deviceID;
}

- (id)computedMediaRouteIdentifier
{
  avOutpuDeviceIdentifier = [(IRNodeDO *)self avOutpuDeviceIdentifier];
  if (avOutpuDeviceIdentifier)
  {
    deviceID = avOutpuDeviceIdentifier;
  }

  else
  {
    avOutputDevice = [(IRNodeDO *)self avOutputDevice];
    deviceID = [avOutputDevice deviceID];

    if (!deviceID)
    {
      rapportDevice = [(IRNodeDO *)self rapportDevice];
      deviceID = [rapportDevice mediaRouteIdentifier];
    }
  }

  return deviceID;
}

- (id)exportAsDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  avOutpuDeviceIdentifier = [(IRNodeDO *)self avOutpuDeviceIdentifier];
  [v3 setObject:avOutpuDeviceIdentifier forKeyedSubscript:@"avOutpuDeviceIdentifier"];

  rapportIdentifier = [(IRNodeDO *)self rapportIdentifier];
  [v3 setObject:rapportIdentifier forKeyedSubscript:@"rapportIdentifier"];

  idsIdentifier = [(IRNodeDO *)self idsIdentifier];
  [v3 setObject:idsIdentifier forKeyedSubscript:@"idsIdentifier"];

  avOutputDevice = [(IRNodeDO *)self avOutputDevice];
  exportAsDictionary = [avOutputDevice exportAsDictionary];
  [v3 setObject:exportAsDictionary forKeyedSubscript:@"avOutputDevice"];

  rapportDevice = [(IRNodeDO *)self rapportDevice];
  exportAsDictionary2 = [rapportDevice exportAsDictionary];
  [v3 setObject:exportAsDictionary2 forKeyedSubscript:@"rapportDevice"];

  return v3;
}

- (IRNodeDO)initWithAvOutpuDeviceIdentifier:(id)identifier rapportIdentifier:(id)rapportIdentifier idsIdentifier:(id)idsIdentifier avOutputDevice:(id)device rapportDevice:(id)rapportDevice isLocal:(BOOL)local
{
  identifierCopy = identifier;
  rapportIdentifierCopy = rapportIdentifier;
  idsIdentifierCopy = idsIdentifier;
  deviceCopy = device;
  rapportDeviceCopy = rapportDevice;
  v23.receiver = self;
  v23.super_class = IRNodeDO;
  v18 = [(IRNodeDO *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_avOutpuDeviceIdentifier, identifier);
    objc_storeStrong(&v19->_rapportIdentifier, rapportIdentifier);
    objc_storeStrong(&v19->_idsIdentifier, idsIdentifier);
    objc_storeStrong(&v19->_avOutputDevice, device);
    objc_storeStrong(&v19->_rapportDevice, rapportDevice);
    v19->_isLocal = local;
  }

  return v19;
}

- (id)copyWithReplacementAvOutpuDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [objc_alloc(objc_opt_class()) initWithAvOutpuDeviceIdentifier:identifierCopy rapportIdentifier:self->_rapportIdentifier idsIdentifier:self->_idsIdentifier avOutputDevice:self->_avOutputDevice rapportDevice:self->_rapportDevice isLocal:self->_isLocal];

  return v5;
}

- (id)copyWithReplacementRapportIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [objc_alloc(objc_opt_class()) initWithAvOutpuDeviceIdentifier:self->_avOutpuDeviceIdentifier rapportIdentifier:identifierCopy idsIdentifier:self->_idsIdentifier avOutputDevice:self->_avOutputDevice rapportDevice:self->_rapportDevice isLocal:self->_isLocal];

  return v5;
}

- (id)copyWithReplacementIdsIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [objc_alloc(objc_opt_class()) initWithAvOutpuDeviceIdentifier:self->_avOutpuDeviceIdentifier rapportIdentifier:self->_rapportIdentifier idsIdentifier:identifierCopy avOutputDevice:self->_avOutputDevice rapportDevice:self->_rapportDevice isLocal:self->_isLocal];

  return v5;
}

- (id)copyWithReplacementAvOutputDevice:(id)device
{
  deviceCopy = device;
  v5 = [objc_alloc(objc_opt_class()) initWithAvOutpuDeviceIdentifier:self->_avOutpuDeviceIdentifier rapportIdentifier:self->_rapportIdentifier idsIdentifier:self->_idsIdentifier avOutputDevice:deviceCopy rapportDevice:self->_rapportDevice isLocal:self->_isLocal];

  return v5;
}

- (id)copyWithReplacementRapportDevice:(id)device
{
  deviceCopy = device;
  v5 = [objc_alloc(objc_opt_class()) initWithAvOutpuDeviceIdentifier:self->_avOutpuDeviceIdentifier rapportIdentifier:self->_rapportIdentifier idsIdentifier:self->_idsIdentifier avOutputDevice:self->_avOutputDevice rapportDevice:deviceCopy isLocal:self->_isLocal];

  return v5;
}

- (BOOL)isEqualToNodeDO:(id)o
{
  oCopy = o;
  v5 = oCopy;
  if (!oCopy)
  {
    goto LABEL_18;
  }

  v6 = self->_avOutpuDeviceIdentifier == 0;
  avOutpuDeviceIdentifier = [oCopy avOutpuDeviceIdentifier];
  v8 = avOutpuDeviceIdentifier != 0;

  if (v6 == v8)
  {
    goto LABEL_18;
  }

  avOutpuDeviceIdentifier = self->_avOutpuDeviceIdentifier;
  if (avOutpuDeviceIdentifier)
  {
    avOutpuDeviceIdentifier2 = [v5 avOutpuDeviceIdentifier];
    v11 = [(NSString *)avOutpuDeviceIdentifier isEqual:avOutpuDeviceIdentifier2];

    if (!v11)
    {
      goto LABEL_18;
    }
  }

  v12 = self->_rapportIdentifier == 0;
  rapportIdentifier = [v5 rapportIdentifier];
  v14 = rapportIdentifier != 0;

  if (v12 == v14)
  {
    goto LABEL_18;
  }

  rapportIdentifier = self->_rapportIdentifier;
  if (rapportIdentifier)
  {
    rapportIdentifier2 = [v5 rapportIdentifier];
    v17 = [(NSString *)rapportIdentifier isEqual:rapportIdentifier2];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  v18 = self->_idsIdentifier == 0;
  idsIdentifier = [v5 idsIdentifier];
  v20 = idsIdentifier != 0;

  if (v18 == v20)
  {
    goto LABEL_18;
  }

  idsIdentifier = self->_idsIdentifier;
  if (idsIdentifier)
  {
    idsIdentifier2 = [v5 idsIdentifier];
    v23 = [(NSString *)idsIdentifier isEqual:idsIdentifier2];

    if (!v23)
    {
      goto LABEL_18;
    }
  }

  v24 = self->_avOutputDevice == 0;
  avOutputDevice = [v5 avOutputDevice];
  v26 = avOutputDevice != 0;

  if (v24 == v26)
  {
    goto LABEL_18;
  }

  avOutputDevice = self->_avOutputDevice;
  if (avOutputDevice)
  {
    avOutputDevice2 = [v5 avOutputDevice];
    v29 = [(IRAVOutputDeviceDO *)avOutputDevice isEqual:avOutputDevice2];

    if (!v29)
    {
      goto LABEL_18;
    }
  }

  v30 = self->_rapportDevice == 0;
  rapportDevice = [v5 rapportDevice];
  v32 = rapportDevice != 0;

  if (v30 == v32 || (rapportDevice = self->_rapportDevice) != 0 && ([v5 rapportDevice], v34 = objc_claimAutoreleasedReturnValue(), v35 = -[IRRapportDeviceDO isEqual:](rapportDevice, "isEqual:", v34), v34, !v35))
  {
LABEL_18:
    v37 = 0;
  }

  else
  {
    isLocal = self->_isLocal;
    v37 = isLocal == [v5 isLocal];
  }

  return v37;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(IRNodeDO *)self isEqualToNodeDO:v5];
  }

  return v6;
}

- (IRNodeDO)initWithCoder:(id)coder
{
  v38[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"avOutpuDeviceIdentifier"];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRNodeDO key avOutpuDeviceIdentifier (expected %@, decoded %@)", v7, v9, 0];
      v37 = *MEMORY[0x277CCA450];
      v38[0] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
      v12 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRNodeDOOCNTErrorDomain" code:3 userInfo:v11];
      [coderCopy failWithError:v12];
LABEL_16:

LABEL_17:
      selfCopy = 0;
LABEL_18:

LABEL_19:
LABEL_20:

      goto LABEL_21;
    }

LABEL_6:
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rapportIdentifier"];
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v15 = objc_opt_class();
        v9 = NSStringFromClass(v15);
        v16 = objc_opt_class();
        v10 = NSStringFromClass(v16);
        v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRNodeDO key rapportIdentifier (expected %@, decoded %@)", v9, v10, 0];
        v35 = *MEMORY[0x277CCA450];
        v36 = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        v17 = objc_alloc(MEMORY[0x277CCA9B8]);
        v18 = 3;
        goto LABEL_9;
      }
    }

    else
    {
      error = [coderCopy error];

      if (error)
      {
        selfCopy = 0;
LABEL_21:

        goto LABEL_22;
      }
    }

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"idsIdentifier"];
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v21 = objc_opt_class();
        v10 = NSStringFromClass(v21);
        v22 = objc_opt_class();
        v11 = NSStringFromClass(v22);
        v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRNodeDO key idsIdentifier (expected %@, decoded %@)", v10, v11, 0];
        v33 = *MEMORY[0x277CCA450];
        v34 = v12;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
        v23 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRNodeDOOCNTErrorDomain" code:3 userInfo:v19];
        [coderCopy failWithError:v23];

        goto LABEL_15;
      }
    }

    else
    {
      error2 = [coderCopy error];

      if (error2)
      {
        selfCopy = 0;
        goto LABEL_20;
      }
    }

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"avOutputDevice"];
    if (!v10)
    {
      error3 = [coderCopy error];

      if (error3)
      {
        selfCopy = 0;
        goto LABEL_19;
      }
    }

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rapportDevice"];
    if (!v11)
    {
      error4 = [coderCopy error];

      if (error4)
      {
        goto LABEL_17;
      }
    }

    v27 = [coderCopy decodeInt64ForKey:@"isLocal"];
    if (v27)
    {
      goto LABEL_28;
    }

    error5 = [coderCopy error];

    if (error5)
    {
      goto LABEL_17;
    }

    if ([coderCopy containsValueForKey:@"isLocal"])
    {
LABEL_28:
      self = [(IRNodeDO *)self initWithAvOutpuDeviceIdentifier:v5 rapportIdentifier:v7 idsIdentifier:v9 avOutputDevice:v10 rapportDevice:v11 isLocal:v27 != 0];
      selfCopy = self;
      goto LABEL_18;
    }

    v31 = *MEMORY[0x277CCA450];
    v32 = @"Missing serialized value for IRNodeDO.isLocal";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v17 = objc_alloc(MEMORY[0x277CCA9B8]);
    v18 = 1;
LABEL_9:
    v19 = [v17 initWithDomain:@"IRNodeDOOCNTErrorDomain" code:v18 userInfo:v12];
    [coderCopy failWithError:v19];
LABEL_15:

    goto LABEL_16;
  }

  error6 = [coderCopy error];

  if (!error6)
  {
    goto LABEL_6;
  }

  selfCopy = 0;
LABEL_22:

  v24 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  avOutpuDeviceIdentifier = self->_avOutpuDeviceIdentifier;
  v10 = coderCopy;
  if (avOutpuDeviceIdentifier)
  {
    [coderCopy encodeObject:avOutpuDeviceIdentifier forKey:@"avOutpuDeviceIdentifier"];
    coderCopy = v10;
  }

  rapportIdentifier = self->_rapportIdentifier;
  if (rapportIdentifier)
  {
    [v10 encodeObject:rapportIdentifier forKey:@"rapportIdentifier"];
    coderCopy = v10;
  }

  idsIdentifier = self->_idsIdentifier;
  if (idsIdentifier)
  {
    [v10 encodeObject:idsIdentifier forKey:@"idsIdentifier"];
    coderCopy = v10;
  }

  avOutputDevice = self->_avOutputDevice;
  if (avOutputDevice)
  {
    [v10 encodeObject:avOutputDevice forKey:@"avOutputDevice"];
    coderCopy = v10;
  }

  rapportDevice = self->_rapportDevice;
  if (rapportDevice)
  {
    [v10 encodeObject:rapportDevice forKey:@"rapportDevice"];
    coderCopy = v10;
  }

  [coderCopy encodeInt64:self->_isLocal forKey:@"isLocal"];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v9 = *&self->_avOutpuDeviceIdentifier;
  v8 = *&self->_idsIdentifier;
  rapportDevice = self->_rapportDevice;
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_isLocal];
  v6 = [v3 initWithFormat:@"<IRNodeDO | avOutpuDeviceIdentifier:%@ rapportIdentifier:%@ idsIdentifier:%@ avOutputDevice:%@ rapportDevice:%@ isLocal:%@>", v9, v8, rapportDevice, v5];

  return v6;
}

@end