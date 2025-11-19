@interface IRNodeDO
+ (id)nodeDOFromNode:(id)a3;
+ (id)nodeFromNodeDO:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToNodeDO:(id)a3;
- (IRNodeDO)initWithAvOutpuDeviceIdentifier:(id)a3 rapportIdentifier:(id)a4 idsIdentifier:(id)a5 avOutputDevice:(id)a6 rapportDevice:(id)a7 isLocal:(BOOL)a8;
- (IRNodeDO)initWithCoder:(id)a3;
- (id)computeName;
- (id)computedIdsIdentifier;
- (id)computedMediaRemoteIdenfifier;
- (id)computedMediaRouteIdentifier;
- (id)copyWithReplacementAvOutpuDeviceIdentifier:(id)a3;
- (id)copyWithReplacementAvOutputDevice:(id)a3;
- (id)copyWithReplacementIdsIdentifier:(id)a3;
- (id)copyWithReplacementRapportDevice:(id)a3;
- (id)copyWithReplacementRapportIdentifier:(id)a3;
- (id)description;
- (id)deviceTypeAndSubType;
- (id)exportAsDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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
    v4 = [(IRNodeDO *)self avOutputDevice];
    v5 = [v4 deviceID];

    if (v5)
    {
      v6 = MEMORY[0x277CCABB0];
      v7 = [(IRNodeDO *)self avOutputDevice];
      v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(v7, "deviceType")}];
      v9 = MEMORY[0x277CCABB0];
      v10 = [(IRNodeDO *)self avOutputDevice];
      v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(v10, "deviceSubType")}];
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
  v3 = [(IRNodeDO *)self avOutputDevice];
  v4 = [v3 deviceName];

  if (v4)
  {
    v5 = [(IRNodeDO *)self avOutputDevice];
    v6 = [v5 deviceName];
LABEL_5:
    v9 = v6;

    goto LABEL_6;
  }

  v7 = [(IRNodeDO *)self rapportDevice];
  v8 = [v7 name];

  if (v8)
  {
    v5 = [(IRNodeDO *)self rapportDevice];
    v6 = [v5 name];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

+ (id)nodeDOFromNode:(id)a3
{
  v3 = a3;
  v4 = [IRNodeDO alloc];
  v5 = [v3 avOutpuDeviceIdentifier];
  v6 = [v3 rapportIdentifier];
  v7 = [v3 idsIdentifier];
  v8 = [v3 isLocal];

  v9 = [(IRNodeDO *)v4 initWithAvOutpuDeviceIdentifier:v5 rapportIdentifier:v6 idsIdentifier:v7 avOutputDevice:0 rapportDevice:0 isLocal:v8];

  return v9;
}

+ (id)nodeFromNodeDO:(id)a3
{
  v3 = MEMORY[0x277D212D0];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 avOutpuDeviceIdentifier];
  [v5 setAvOutpuDeviceIdentifier:v6];

  v7 = [v4 rapportIdentifier];
  [v5 setRapportIdentifier:v7];

  v8 = [v4 idsIdentifier];
  [v5 setIdsIdentifier:v8];

  v9 = [v4 computeName];
  [v5 setName:v9];

  v10 = [v4 isLocal];
  [v5 setIsLocal:v10];

  return v5;
}

- (id)computedIdsIdentifier
{
  v3 = [(IRNodeDO *)self idsIdentifier];
  if (!v3)
  {
    v4 = [(IRNodeDO *)self rapportDevice];
    v3 = [v4 idsID];
  }

  return v3;
}

- (id)computedMediaRemoteIdenfifier
{
  v3 = [(IRNodeDO *)self avOutpuDeviceIdentifier];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = [(IRNodeDO *)self avOutputDevice];
    v4 = [v5 deviceID];

    if (!v4)
    {
      v6 = [(IRNodeDO *)self rapportDevice];
      v4 = [v6 mediaRemoteIdentifier];
    }
  }

  return v4;
}

- (id)computedMediaRouteIdentifier
{
  v3 = [(IRNodeDO *)self avOutpuDeviceIdentifier];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = [(IRNodeDO *)self avOutputDevice];
    v4 = [v5 deviceID];

    if (!v4)
    {
      v6 = [(IRNodeDO *)self rapportDevice];
      v4 = [v6 mediaRouteIdentifier];
    }
  }

  return v4;
}

- (id)exportAsDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(IRNodeDO *)self avOutpuDeviceIdentifier];
  [v3 setObject:v4 forKeyedSubscript:@"avOutpuDeviceIdentifier"];

  v5 = [(IRNodeDO *)self rapportIdentifier];
  [v3 setObject:v5 forKeyedSubscript:@"rapportIdentifier"];

  v6 = [(IRNodeDO *)self idsIdentifier];
  [v3 setObject:v6 forKeyedSubscript:@"idsIdentifier"];

  v7 = [(IRNodeDO *)self avOutputDevice];
  v8 = [v7 exportAsDictionary];
  [v3 setObject:v8 forKeyedSubscript:@"avOutputDevice"];

  v9 = [(IRNodeDO *)self rapportDevice];
  v10 = [v9 exportAsDictionary];
  [v3 setObject:v10 forKeyedSubscript:@"rapportDevice"];

  return v3;
}

- (IRNodeDO)initWithAvOutpuDeviceIdentifier:(id)a3 rapportIdentifier:(id)a4 idsIdentifier:(id)a5 avOutputDevice:(id)a6 rapportDevice:(id)a7 isLocal:(BOOL)a8
{
  v22 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v23.receiver = self;
  v23.super_class = IRNodeDO;
  v18 = [(IRNodeDO *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_avOutpuDeviceIdentifier, a3);
    objc_storeStrong(&v19->_rapportIdentifier, a4);
    objc_storeStrong(&v19->_idsIdentifier, a5);
    objc_storeStrong(&v19->_avOutputDevice, a6);
    objc_storeStrong(&v19->_rapportDevice, a7);
    v19->_isLocal = a8;
  }

  return v19;
}

- (id)copyWithReplacementAvOutpuDeviceIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithAvOutpuDeviceIdentifier:v4 rapportIdentifier:self->_rapportIdentifier idsIdentifier:self->_idsIdentifier avOutputDevice:self->_avOutputDevice rapportDevice:self->_rapportDevice isLocal:self->_isLocal];

  return v5;
}

- (id)copyWithReplacementRapportIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithAvOutpuDeviceIdentifier:self->_avOutpuDeviceIdentifier rapportIdentifier:v4 idsIdentifier:self->_idsIdentifier avOutputDevice:self->_avOutputDevice rapportDevice:self->_rapportDevice isLocal:self->_isLocal];

  return v5;
}

- (id)copyWithReplacementIdsIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithAvOutpuDeviceIdentifier:self->_avOutpuDeviceIdentifier rapportIdentifier:self->_rapportIdentifier idsIdentifier:v4 avOutputDevice:self->_avOutputDevice rapportDevice:self->_rapportDevice isLocal:self->_isLocal];

  return v5;
}

- (id)copyWithReplacementAvOutputDevice:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithAvOutpuDeviceIdentifier:self->_avOutpuDeviceIdentifier rapportIdentifier:self->_rapportIdentifier idsIdentifier:self->_idsIdentifier avOutputDevice:v4 rapportDevice:self->_rapportDevice isLocal:self->_isLocal];

  return v5;
}

- (id)copyWithReplacementRapportDevice:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithAvOutpuDeviceIdentifier:self->_avOutpuDeviceIdentifier rapportIdentifier:self->_rapportIdentifier idsIdentifier:self->_idsIdentifier avOutputDevice:self->_avOutputDevice rapportDevice:v4 isLocal:self->_isLocal];

  return v5;
}

- (BOOL)isEqualToNodeDO:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_18;
  }

  v6 = self->_avOutpuDeviceIdentifier == 0;
  v7 = [v4 avOutpuDeviceIdentifier];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_18;
  }

  avOutpuDeviceIdentifier = self->_avOutpuDeviceIdentifier;
  if (avOutpuDeviceIdentifier)
  {
    v10 = [v5 avOutpuDeviceIdentifier];
    v11 = [(NSString *)avOutpuDeviceIdentifier isEqual:v10];

    if (!v11)
    {
      goto LABEL_18;
    }
  }

  v12 = self->_rapportIdentifier == 0;
  v13 = [v5 rapportIdentifier];
  v14 = v13 != 0;

  if (v12 == v14)
  {
    goto LABEL_18;
  }

  rapportIdentifier = self->_rapportIdentifier;
  if (rapportIdentifier)
  {
    v16 = [v5 rapportIdentifier];
    v17 = [(NSString *)rapportIdentifier isEqual:v16];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  v18 = self->_idsIdentifier == 0;
  v19 = [v5 idsIdentifier];
  v20 = v19 != 0;

  if (v18 == v20)
  {
    goto LABEL_18;
  }

  idsIdentifier = self->_idsIdentifier;
  if (idsIdentifier)
  {
    v22 = [v5 idsIdentifier];
    v23 = [(NSString *)idsIdentifier isEqual:v22];

    if (!v23)
    {
      goto LABEL_18;
    }
  }

  v24 = self->_avOutputDevice == 0;
  v25 = [v5 avOutputDevice];
  v26 = v25 != 0;

  if (v24 == v26)
  {
    goto LABEL_18;
  }

  avOutputDevice = self->_avOutputDevice;
  if (avOutputDevice)
  {
    v28 = [v5 avOutputDevice];
    v29 = [(IRAVOutputDeviceDO *)avOutputDevice isEqual:v28];

    if (!v29)
    {
      goto LABEL_18;
    }
  }

  v30 = self->_rapportDevice == 0;
  v31 = [v5 rapportDevice];
  v32 = v31 != 0;

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(IRNodeDO *)self isEqualToNodeDO:v5];
  }

  return v6;
}

- (IRNodeDO)initWithCoder:(id)a3
{
  v38[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"avOutpuDeviceIdentifier"];
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
      [v4 failWithError:v12];
LABEL_16:

LABEL_17:
      v14 = 0;
LABEL_18:

LABEL_19:
LABEL_20:

      goto LABEL_21;
    }

LABEL_6:
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rapportIdentifier"];
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
      v20 = [v4 error];

      if (v20)
      {
        v14 = 0;
LABEL_21:

        goto LABEL_22;
      }
    }

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"idsIdentifier"];
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
        [v4 failWithError:v23];

        goto LABEL_15;
      }
    }

    else
    {
      v26 = [v4 error];

      if (v26)
      {
        v14 = 0;
        goto LABEL_20;
      }
    }

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"avOutputDevice"];
    if (!v10)
    {
      v28 = [v4 error];

      if (v28)
      {
        v14 = 0;
        goto LABEL_19;
      }
    }

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rapportDevice"];
    if (!v11)
    {
      v29 = [v4 error];

      if (v29)
      {
        goto LABEL_17;
      }
    }

    v27 = [v4 decodeInt64ForKey:@"isLocal"];
    if (v27)
    {
      goto LABEL_28;
    }

    v30 = [v4 error];

    if (v30)
    {
      goto LABEL_17;
    }

    if ([v4 containsValueForKey:@"isLocal"])
    {
LABEL_28:
      self = [(IRNodeDO *)self initWithAvOutpuDeviceIdentifier:v5 rapportIdentifier:v7 idsIdentifier:v9 avOutputDevice:v10 rapportDevice:v11 isLocal:v27 != 0];
      v14 = self;
      goto LABEL_18;
    }

    v31 = *MEMORY[0x277CCA450];
    v32 = @"Missing serialized value for IRNodeDO.isLocal";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v17 = objc_alloc(MEMORY[0x277CCA9B8]);
    v18 = 1;
LABEL_9:
    v19 = [v17 initWithDomain:@"IRNodeDOOCNTErrorDomain" code:v18 userInfo:v12];
    [v4 failWithError:v19];
LABEL_15:

    goto LABEL_16;
  }

  v13 = [v4 error];

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = 0;
LABEL_22:

  v24 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  avOutpuDeviceIdentifier = self->_avOutpuDeviceIdentifier;
  v10 = v4;
  if (avOutpuDeviceIdentifier)
  {
    [v4 encodeObject:avOutpuDeviceIdentifier forKey:@"avOutpuDeviceIdentifier"];
    v4 = v10;
  }

  rapportIdentifier = self->_rapportIdentifier;
  if (rapportIdentifier)
  {
    [v10 encodeObject:rapportIdentifier forKey:@"rapportIdentifier"];
    v4 = v10;
  }

  idsIdentifier = self->_idsIdentifier;
  if (idsIdentifier)
  {
    [v10 encodeObject:idsIdentifier forKey:@"idsIdentifier"];
    v4 = v10;
  }

  avOutputDevice = self->_avOutputDevice;
  if (avOutputDevice)
  {
    [v10 encodeObject:avOutputDevice forKey:@"avOutputDevice"];
    v4 = v10;
  }

  rapportDevice = self->_rapportDevice;
  if (rapportDevice)
  {
    [v10 encodeObject:rapportDevice forKey:@"rapportDevice"];
    v4 = v10;
  }

  [v4 encodeInt64:self->_isLocal forKey:@"isLocal"];
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