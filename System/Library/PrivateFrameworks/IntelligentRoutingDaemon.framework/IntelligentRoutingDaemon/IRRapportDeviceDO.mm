@interface IRRapportDeviceDO
+ (IRRapportDeviceDO)rapportDeviceDOWithRapportEffectiveID:(id)d idsID:(id)iD name:(id)name deviceModel:(id)model mediaRemoteIdentifier:(id)identifier iCloudId:(id)id mediaRouteIdentifier:(id)routeIdentifier;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRapportDeviceDO:(id)o;
- (IRRapportDeviceDO)initWithCoder:(id)coder;
- (IRRapportDeviceDO)initWithRapportEffectiveID:(id)d idsID:(id)iD name:(id)name deviceModel:(id)model mediaRemoteIdentifier:(id)identifier iCloudId:(id)id mediaRouteIdentifier:(id)routeIdentifier;
- (id)copyWithReplacementDeviceModel:(id)model;
- (id)copyWithReplacementICloudId:(id)id;
- (id)copyWithReplacementIdsID:(id)d;
- (id)copyWithReplacementMediaRemoteIdentifier:(id)identifier;
- (id)copyWithReplacementMediaRouteIdentifier:(id)identifier;
- (id)copyWithReplacementName:(id)name;
- (id)copyWithReplacementRapportEffectiveID:(id)d;
- (id)description;
- (id)exportAsDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IRRapportDeviceDO

- (id)exportAsDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v4 setDateFormat:@"yyyy-MMM-dd HH:mm:ss.SSSSSS"];
  rapportEffectiveID = [(IRRapportDeviceDO *)self rapportEffectiveID];
  [v3 setObject:rapportEffectiveID forKeyedSubscript:@"rapportEffectiveID"];

  idsID = [(IRRapportDeviceDO *)self idsID];
  [v3 setObject:idsID forKeyedSubscript:@"idsID"];

  name = [(IRRapportDeviceDO *)self name];
  [v3 setObject:name forKeyedSubscript:@"name"];

  mediaRemoteIdentifier = [(IRRapportDeviceDO *)self mediaRemoteIdentifier];
  [v3 setObject:mediaRemoteIdentifier forKeyedSubscript:@"mediaRemoteIdentifier"];

  iCloudId = [(IRRapportDeviceDO *)self iCloudId];
  [v3 setObject:iCloudId forKeyedSubscript:@"iCloudId"];

  return v3;
}

- (IRRapportDeviceDO)initWithRapportEffectiveID:(id)d idsID:(id)iD name:(id)name deviceModel:(id)model mediaRemoteIdentifier:(id)identifier iCloudId:(id)id mediaRouteIdentifier:(id)routeIdentifier
{
  dCopy = d;
  iDCopy = iD;
  nameCopy = name;
  modelCopy = model;
  identifierCopy = identifier;
  idCopy = id;
  routeIdentifierCopy = routeIdentifier;
  v26.receiver = self;
  v26.super_class = IRRapportDeviceDO;
  v18 = [(IRRapportDeviceDO *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_rapportEffectiveID, d);
    objc_storeStrong(&v19->_idsID, iD);
    objc_storeStrong(&v19->_name, name);
    objc_storeStrong(&v19->_deviceModel, model);
    objc_storeStrong(&v19->_mediaRemoteIdentifier, identifier);
    objc_storeStrong(&v19->_iCloudId, id);
    objc_storeStrong(&v19->_mediaRouteIdentifier, routeIdentifier);
  }

  return v19;
}

+ (IRRapportDeviceDO)rapportDeviceDOWithRapportEffectiveID:(id)d idsID:(id)iD name:(id)name deviceModel:(id)model mediaRemoteIdentifier:(id)identifier iCloudId:(id)id mediaRouteIdentifier:(id)routeIdentifier
{
  routeIdentifierCopy = routeIdentifier;
  idCopy = id;
  identifierCopy = identifier;
  modelCopy = model;
  nameCopy = name;
  iDCopy = iD;
  dCopy = d;
  v23 = [[self alloc] initWithRapportEffectiveID:dCopy idsID:iDCopy name:nameCopy deviceModel:modelCopy mediaRemoteIdentifier:identifierCopy iCloudId:idCopy mediaRouteIdentifier:routeIdentifierCopy];

  return v23;
}

- (id)copyWithReplacementRapportEffectiveID:(id)d
{
  dCopy = d;
  v5 = [objc_alloc(objc_opt_class()) initWithRapportEffectiveID:dCopy idsID:self->_idsID name:self->_name deviceModel:self->_deviceModel mediaRemoteIdentifier:self->_mediaRemoteIdentifier iCloudId:self->_iCloudId mediaRouteIdentifier:self->_mediaRouteIdentifier];

  return v5;
}

- (id)copyWithReplacementIdsID:(id)d
{
  dCopy = d;
  v5 = [objc_alloc(objc_opt_class()) initWithRapportEffectiveID:self->_rapportEffectiveID idsID:dCopy name:self->_name deviceModel:self->_deviceModel mediaRemoteIdentifier:self->_mediaRemoteIdentifier iCloudId:self->_iCloudId mediaRouteIdentifier:self->_mediaRouteIdentifier];

  return v5;
}

- (id)copyWithReplacementName:(id)name
{
  nameCopy = name;
  v5 = [objc_alloc(objc_opt_class()) initWithRapportEffectiveID:self->_rapportEffectiveID idsID:self->_idsID name:nameCopy deviceModel:self->_deviceModel mediaRemoteIdentifier:self->_mediaRemoteIdentifier iCloudId:self->_iCloudId mediaRouteIdentifier:self->_mediaRouteIdentifier];

  return v5;
}

- (id)copyWithReplacementDeviceModel:(id)model
{
  modelCopy = model;
  v5 = [objc_alloc(objc_opt_class()) initWithRapportEffectiveID:self->_rapportEffectiveID idsID:self->_idsID name:self->_name deviceModel:modelCopy mediaRemoteIdentifier:self->_mediaRemoteIdentifier iCloudId:self->_iCloudId mediaRouteIdentifier:self->_mediaRouteIdentifier];

  return v5;
}

- (id)copyWithReplacementMediaRemoteIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [objc_alloc(objc_opt_class()) initWithRapportEffectiveID:self->_rapportEffectiveID idsID:self->_idsID name:self->_name deviceModel:self->_deviceModel mediaRemoteIdentifier:identifierCopy iCloudId:self->_iCloudId mediaRouteIdentifier:self->_mediaRouteIdentifier];

  return v5;
}

- (id)copyWithReplacementICloudId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithRapportEffectiveID:self->_rapportEffectiveID idsID:self->_idsID name:self->_name deviceModel:self->_deviceModel mediaRemoteIdentifier:self->_mediaRemoteIdentifier iCloudId:idCopy mediaRouteIdentifier:self->_mediaRouteIdentifier];

  return v5;
}

- (id)copyWithReplacementMediaRouteIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [objc_alloc(objc_opt_class()) initWithRapportEffectiveID:self->_rapportEffectiveID idsID:self->_idsID name:self->_name deviceModel:self->_deviceModel mediaRemoteIdentifier:self->_mediaRemoteIdentifier iCloudId:self->_iCloudId mediaRouteIdentifier:identifierCopy];

  return v5;
}

- (BOOL)isEqualToRapportDeviceDO:(id)o
{
  oCopy = o;
  v5 = oCopy;
  if (!oCopy)
  {
    goto LABEL_23;
  }

  v6 = self->_rapportEffectiveID == 0;
  rapportEffectiveID = [oCopy rapportEffectiveID];
  v8 = rapportEffectiveID != 0;

  if (v6 == v8)
  {
    goto LABEL_23;
  }

  rapportEffectiveID = self->_rapportEffectiveID;
  if (rapportEffectiveID)
  {
    rapportEffectiveID2 = [v5 rapportEffectiveID];
    v11 = [(NSString *)rapportEffectiveID isEqual:rapportEffectiveID2];

    if (!v11)
    {
      goto LABEL_23;
    }
  }

  v12 = self->_idsID == 0;
  idsID = [v5 idsID];
  v14 = idsID != 0;

  if (v12 == v14)
  {
    goto LABEL_23;
  }

  idsID = self->_idsID;
  if (idsID)
  {
    idsID2 = [v5 idsID];
    v17 = [(NSString *)idsID isEqual:idsID2];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  v18 = self->_name == 0;
  name = [v5 name];
  v20 = name != 0;

  if (v18 == v20)
  {
    goto LABEL_23;
  }

  name = self->_name;
  if (name)
  {
    name2 = [v5 name];
    v23 = [(NSString *)name isEqual:name2];

    if (!v23)
    {
      goto LABEL_23;
    }
  }

  v24 = self->_deviceModel == 0;
  deviceModel = [v5 deviceModel];
  v26 = deviceModel != 0;

  if (v24 == v26)
  {
    goto LABEL_23;
  }

  deviceModel = self->_deviceModel;
  if (deviceModel)
  {
    deviceModel2 = [v5 deviceModel];
    v29 = [(NSString *)deviceModel isEqual:deviceModel2];

    if (!v29)
    {
      goto LABEL_23;
    }
  }

  v30 = self->_mediaRemoteIdentifier == 0;
  mediaRemoteIdentifier = [v5 mediaRemoteIdentifier];
  v32 = mediaRemoteIdentifier != 0;

  if (v30 == v32)
  {
    goto LABEL_23;
  }

  mediaRemoteIdentifier = self->_mediaRemoteIdentifier;
  if (mediaRemoteIdentifier)
  {
    mediaRemoteIdentifier2 = [v5 mediaRemoteIdentifier];
    v35 = [(NSString *)mediaRemoteIdentifier isEqual:mediaRemoteIdentifier2];

    if (!v35)
    {
      goto LABEL_23;
    }
  }

  v36 = self->_iCloudId == 0;
  iCloudId = [v5 iCloudId];
  v38 = iCloudId != 0;

  if (v36 == v38)
  {
    goto LABEL_23;
  }

  iCloudId = self->_iCloudId;
  if (iCloudId)
  {
    iCloudId2 = [v5 iCloudId];
    v41 = [(NSString *)iCloudId isEqual:iCloudId2];

    if (!v41)
    {
      goto LABEL_23;
    }
  }

  v42 = self->_mediaRouteIdentifier == 0;
  mediaRouteIdentifier = [v5 mediaRouteIdentifier];
  v44 = mediaRouteIdentifier != 0;

  if (v42 == v44)
  {
LABEL_23:
    v47 = 0;
  }

  else
  {
    mediaRouteIdentifier = self->_mediaRouteIdentifier;
    if (mediaRouteIdentifier)
    {
      mediaRouteIdentifier2 = [v5 mediaRouteIdentifier];
      v47 = [(NSString *)mediaRouteIdentifier isEqual:mediaRouteIdentifier2];
    }

    else
    {
      v47 = 1;
    }
  }

  return v47 & 1;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(IRRapportDeviceDO *)self isEqualToRapportDeviceDO:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_rapportEffectiveID hash];
  v4 = [(NSString *)self->_idsID hash]- v3 + 32 * v3;
  v5 = [(NSString *)self->_name hash]- v4 + 32 * v4;
  v6 = [(NSString *)self->_deviceModel hash]- v5 + 32 * v5;
  v7 = [(NSString *)self->_mediaRemoteIdentifier hash]- v6 + 32 * v6;
  v8 = [(NSString *)self->_iCloudId hash]- v7 + 32 * v7;
  return [(NSString *)self->_mediaRouteIdentifier hash]- v8 + 32 * v8;
}

- (IRRapportDeviceDO)initWithCoder:(id)coder
{
  v69[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rapportEffectiveID"];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRRapportDeviceDO key rapportEffectiveID (expected %@, decoded %@)", v7, v9, 0];
      v68 = *MEMORY[0x277CCA450];
      v69[0] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:&v68 count:1];
      v12 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRRapportDeviceDOOCNTErrorDomain" code:3 userInfo:v11];
      [coderCopy failWithError:v12];
LABEL_4:
      selfCopy = 0;
LABEL_23:

LABEL_24:
LABEL_25:

      goto LABEL_26;
    }

LABEL_7:
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"idsID"];
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v15 = objc_opt_class();
        v9 = NSStringFromClass(v15);
        v16 = objc_opt_class();
        v10 = NSStringFromClass(v16);
        v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRRapportDeviceDO key idsID (expected %@, decoded %@)", v9, v10, 0];
        v66 = *MEMORY[0x277CCA450];
        v67 = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
        v17 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRRapportDeviceDOOCNTErrorDomain" code:3 userInfo:v12];
        [coderCopy failWithError:v17];
LABEL_21:
        selfCopy = 0;
LABEL_22:

        goto LABEL_23;
      }
    }

    else
    {
      error = [coderCopy error];

      if (error)
      {
        selfCopy = 0;
LABEL_27:

        goto LABEL_28;
      }
    }

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v19 = objc_opt_class();
        v10 = NSStringFromClass(v19);
        v20 = objc_opt_class();
        v11 = NSStringFromClass(v20);
        v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRRapportDeviceDO key name (expected %@, decoded %@)", v10, v11, 0];
        v64 = *MEMORY[0x277CCA450];
        v65 = v12;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
        v21 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRRapportDeviceDOOCNTErrorDomain" code:3 userInfo:v17];
        [coderCopy failWithError:v21];
LABEL_20:

        goto LABEL_21;
      }
    }

    else
    {
      error2 = [coderCopy error];

      if (error2)
      {
        selfCopy = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceModel"];
    if (v10)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v23 = objc_opt_class();
        v11 = NSStringFromClass(v23);
        v24 = objc_opt_class();
        v12 = NSStringFromClass(v24);
        v52 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRRapportDeviceDO key deviceModel (expected %@, decoded %@)", v11, v12, 0];
        v62 = *MEMORY[0x277CCA450];
        v63 = v52;
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
        v25 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRRapportDeviceDOOCNTErrorDomain" code:3 userInfo:v21];
        [coderCopy failWithError:v25];

        v17 = v52;
        goto LABEL_20;
      }
    }

    else
    {
      error3 = [coderCopy error];

      if (error3)
      {
        selfCopy = 0;
        goto LABEL_25;
      }
    }

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaRemoteIdentifier"];
    if (v11)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v29 = objc_opt_class();
        v12 = NSStringFromClass(v29);
        v30 = objc_opt_class();
        v53 = NSStringFromClass(v30);
        v50 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRRapportDeviceDO key mediaRemoteIdentifier (expected %@, decoded %@)", v12, v53, 0];
        v60 = *MEMORY[0x277CCA450];
        v61 = v50;
        v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
        v32 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRRapportDeviceDOOCNTErrorDomain" code:3 userInfo:v31];
        [coderCopy failWithError:v32];

        v17 = v53;
LABEL_39:

        goto LABEL_21;
      }
    }

    else
    {
      error4 = [coderCopy error];

      if (error4)
      {
        selfCopy = 0;
        goto LABEL_24;
      }
    }

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iCloudId"];
    if (v12)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v34 = objc_opt_class();
        v54 = NSStringFromClass(v34);
        v35 = objc_opt_class();
        v50 = NSStringFromClass(v35);
        v48 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRRapportDeviceDO key iCloudId (expected %@, decoded %@)", v54, v50, 0];
        v58 = *MEMORY[0x277CCA450];
        v59 = v48;
        v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        v37 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRRapportDeviceDOOCNTErrorDomain" code:3 userInfo:v36];
        [coderCopy failWithError:v37];

        v17 = v54;
        goto LABEL_39;
      }
    }

    else
    {
      error5 = [coderCopy error];

      if (error5)
      {
        goto LABEL_4;
      }
    }

    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaRouteIdentifier"];
    if (v39)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v41 = v39;
      if ((isKindOfClass & 1) == 0)
      {
        v55 = v39;
        v42 = objc_opt_class();
        v51 = NSStringFromClass(v42);
        v43 = objc_opt_class();
        v49 = NSStringFromClass(v43);
        v47 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRRapportDeviceDO key mediaRouteIdentifier (expected %@, decoded %@)", v51, v49, 0];
        v56 = *MEMORY[0x277CCA450];
        v57 = v47;
        v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
        v45 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRRapportDeviceDOOCNTErrorDomain" code:3 userInfo:v44];
        [coderCopy failWithError:v45];

        selfCopy = 0;
        v17 = v55;
        goto LABEL_22;
      }
    }

    else
    {
      error6 = [coderCopy error];

      v41 = 0;
      if (error6)
      {
        selfCopy = 0;
        v17 = 0;
        goto LABEL_22;
      }
    }

    v17 = v41;
    self = [(IRRapportDeviceDO *)self initWithRapportEffectiveID:v5 idsID:v7 name:v9 deviceModel:v10 mediaRemoteIdentifier:v11 iCloudId:v12 mediaRouteIdentifier:v41];
    selfCopy = self;
    goto LABEL_22;
  }

  error7 = [coderCopy error];

  if (!error7)
  {
    goto LABEL_7;
  }

  selfCopy = 0;
LABEL_28:

  v26 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  rapportEffectiveID = self->_rapportEffectiveID;
  v12 = coderCopy;
  if (rapportEffectiveID)
  {
    [coderCopy encodeObject:rapportEffectiveID forKey:@"rapportEffectiveID"];
    coderCopy = v12;
  }

  idsID = self->_idsID;
  if (idsID)
  {
    [v12 encodeObject:idsID forKey:@"idsID"];
    coderCopy = v12;
  }

  name = self->_name;
  if (name)
  {
    [v12 encodeObject:name forKey:@"name"];
    coderCopy = v12;
  }

  deviceModel = self->_deviceModel;
  if (deviceModel)
  {
    [v12 encodeObject:deviceModel forKey:@"deviceModel"];
    coderCopy = v12;
  }

  mediaRemoteIdentifier = self->_mediaRemoteIdentifier;
  if (mediaRemoteIdentifier)
  {
    [v12 encodeObject:mediaRemoteIdentifier forKey:@"mediaRemoteIdentifier"];
    coderCopy = v12;
  }

  iCloudId = self->_iCloudId;
  if (iCloudId)
  {
    [v12 encodeObject:iCloudId forKey:@"iCloudId"];
    coderCopy = v12;
  }

  mediaRouteIdentifier = self->_mediaRouteIdentifier;
  if (mediaRouteIdentifier)
  {
    [v12 encodeObject:mediaRouteIdentifier forKey:@"mediaRouteIdentifier"];
    coderCopy = v12;
  }
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = *&self->_name;
  v5 = [v3 initWithFormat:@"<IRRapportDeviceDO | rapportEffectiveID:%@ idsID:%@ name:%@ deviceModel:%@ mediaRemoteIdentifier:%@ iCloudId:%@ mediaRouteIdentifier:%@>", self->_rapportEffectiveID, self->_idsID, self->_name, self->_deviceModel, self->_mediaRemoteIdentifier, self->_iCloudId, self->_mediaRouteIdentifier];

  return v5;
}

@end