@interface IRRapportDeviceDO
+ (IRRapportDeviceDO)rapportDeviceDOWithRapportEffectiveID:(id)a3 idsID:(id)a4 name:(id)a5 deviceModel:(id)a6 mediaRemoteIdentifier:(id)a7 iCloudId:(id)a8 mediaRouteIdentifier:(id)a9;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRapportDeviceDO:(id)a3;
- (IRRapportDeviceDO)initWithCoder:(id)a3;
- (IRRapportDeviceDO)initWithRapportEffectiveID:(id)a3 idsID:(id)a4 name:(id)a5 deviceModel:(id)a6 mediaRemoteIdentifier:(id)a7 iCloudId:(id)a8 mediaRouteIdentifier:(id)a9;
- (id)copyWithReplacementDeviceModel:(id)a3;
- (id)copyWithReplacementICloudId:(id)a3;
- (id)copyWithReplacementIdsID:(id)a3;
- (id)copyWithReplacementMediaRemoteIdentifier:(id)a3;
- (id)copyWithReplacementMediaRouteIdentifier:(id)a3;
- (id)copyWithReplacementName:(id)a3;
- (id)copyWithReplacementRapportEffectiveID:(id)a3;
- (id)description;
- (id)exportAsDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IRRapportDeviceDO

- (id)exportAsDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v4 setDateFormat:@"yyyy-MMM-dd HH:mm:ss.SSSSSS"];
  v5 = [(IRRapportDeviceDO *)self rapportEffectiveID];
  [v3 setObject:v5 forKeyedSubscript:@"rapportEffectiveID"];

  v6 = [(IRRapportDeviceDO *)self idsID];
  [v3 setObject:v6 forKeyedSubscript:@"idsID"];

  v7 = [(IRRapportDeviceDO *)self name];
  [v3 setObject:v7 forKeyedSubscript:@"name"];

  v8 = [(IRRapportDeviceDO *)self mediaRemoteIdentifier];
  [v3 setObject:v8 forKeyedSubscript:@"mediaRemoteIdentifier"];

  v9 = [(IRRapportDeviceDO *)self iCloudId];
  [v3 setObject:v9 forKeyedSubscript:@"iCloudId"];

  return v3;
}

- (IRRapportDeviceDO)initWithRapportEffectiveID:(id)a3 idsID:(id)a4 name:(id)a5 deviceModel:(id)a6 mediaRemoteIdentifier:(id)a7 iCloudId:(id)a8 mediaRouteIdentifier:(id)a9
{
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v21 = a7;
  v16 = a8;
  v17 = a9;
  v26.receiver = self;
  v26.super_class = IRRapportDeviceDO;
  v18 = [(IRRapportDeviceDO *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_rapportEffectiveID, a3);
    objc_storeStrong(&v19->_idsID, a4);
    objc_storeStrong(&v19->_name, a5);
    objc_storeStrong(&v19->_deviceModel, a6);
    objc_storeStrong(&v19->_mediaRemoteIdentifier, a7);
    objc_storeStrong(&v19->_iCloudId, a8);
    objc_storeStrong(&v19->_mediaRouteIdentifier, a9);
  }

  return v19;
}

+ (IRRapportDeviceDO)rapportDeviceDOWithRapportEffectiveID:(id)a3 idsID:(id)a4 name:(id)a5 deviceModel:(id)a6 mediaRemoteIdentifier:(id)a7 iCloudId:(id)a8 mediaRouteIdentifier:(id)a9
{
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = [[a1 alloc] initWithRapportEffectiveID:v22 idsID:v21 name:v20 deviceModel:v19 mediaRemoteIdentifier:v18 iCloudId:v17 mediaRouteIdentifier:v16];

  return v23;
}

- (id)copyWithReplacementRapportEffectiveID:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithRapportEffectiveID:v4 idsID:self->_idsID name:self->_name deviceModel:self->_deviceModel mediaRemoteIdentifier:self->_mediaRemoteIdentifier iCloudId:self->_iCloudId mediaRouteIdentifier:self->_mediaRouteIdentifier];

  return v5;
}

- (id)copyWithReplacementIdsID:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithRapportEffectiveID:self->_rapportEffectiveID idsID:v4 name:self->_name deviceModel:self->_deviceModel mediaRemoteIdentifier:self->_mediaRemoteIdentifier iCloudId:self->_iCloudId mediaRouteIdentifier:self->_mediaRouteIdentifier];

  return v5;
}

- (id)copyWithReplacementName:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithRapportEffectiveID:self->_rapportEffectiveID idsID:self->_idsID name:v4 deviceModel:self->_deviceModel mediaRemoteIdentifier:self->_mediaRemoteIdentifier iCloudId:self->_iCloudId mediaRouteIdentifier:self->_mediaRouteIdentifier];

  return v5;
}

- (id)copyWithReplacementDeviceModel:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithRapportEffectiveID:self->_rapportEffectiveID idsID:self->_idsID name:self->_name deviceModel:v4 mediaRemoteIdentifier:self->_mediaRemoteIdentifier iCloudId:self->_iCloudId mediaRouteIdentifier:self->_mediaRouteIdentifier];

  return v5;
}

- (id)copyWithReplacementMediaRemoteIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithRapportEffectiveID:self->_rapportEffectiveID idsID:self->_idsID name:self->_name deviceModel:self->_deviceModel mediaRemoteIdentifier:v4 iCloudId:self->_iCloudId mediaRouteIdentifier:self->_mediaRouteIdentifier];

  return v5;
}

- (id)copyWithReplacementICloudId:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithRapportEffectiveID:self->_rapportEffectiveID idsID:self->_idsID name:self->_name deviceModel:self->_deviceModel mediaRemoteIdentifier:self->_mediaRemoteIdentifier iCloudId:v4 mediaRouteIdentifier:self->_mediaRouteIdentifier];

  return v5;
}

- (id)copyWithReplacementMediaRouteIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithRapportEffectiveID:self->_rapportEffectiveID idsID:self->_idsID name:self->_name deviceModel:self->_deviceModel mediaRemoteIdentifier:self->_mediaRemoteIdentifier iCloudId:self->_iCloudId mediaRouteIdentifier:v4];

  return v5;
}

- (BOOL)isEqualToRapportDeviceDO:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_23;
  }

  v6 = self->_rapportEffectiveID == 0;
  v7 = [v4 rapportEffectiveID];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_23;
  }

  rapportEffectiveID = self->_rapportEffectiveID;
  if (rapportEffectiveID)
  {
    v10 = [v5 rapportEffectiveID];
    v11 = [(NSString *)rapportEffectiveID isEqual:v10];

    if (!v11)
    {
      goto LABEL_23;
    }
  }

  v12 = self->_idsID == 0;
  v13 = [v5 idsID];
  v14 = v13 != 0;

  if (v12 == v14)
  {
    goto LABEL_23;
  }

  idsID = self->_idsID;
  if (idsID)
  {
    v16 = [v5 idsID];
    v17 = [(NSString *)idsID isEqual:v16];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  v18 = self->_name == 0;
  v19 = [v5 name];
  v20 = v19 != 0;

  if (v18 == v20)
  {
    goto LABEL_23;
  }

  name = self->_name;
  if (name)
  {
    v22 = [v5 name];
    v23 = [(NSString *)name isEqual:v22];

    if (!v23)
    {
      goto LABEL_23;
    }
  }

  v24 = self->_deviceModel == 0;
  v25 = [v5 deviceModel];
  v26 = v25 != 0;

  if (v24 == v26)
  {
    goto LABEL_23;
  }

  deviceModel = self->_deviceModel;
  if (deviceModel)
  {
    v28 = [v5 deviceModel];
    v29 = [(NSString *)deviceModel isEqual:v28];

    if (!v29)
    {
      goto LABEL_23;
    }
  }

  v30 = self->_mediaRemoteIdentifier == 0;
  v31 = [v5 mediaRemoteIdentifier];
  v32 = v31 != 0;

  if (v30 == v32)
  {
    goto LABEL_23;
  }

  mediaRemoteIdentifier = self->_mediaRemoteIdentifier;
  if (mediaRemoteIdentifier)
  {
    v34 = [v5 mediaRemoteIdentifier];
    v35 = [(NSString *)mediaRemoteIdentifier isEqual:v34];

    if (!v35)
    {
      goto LABEL_23;
    }
  }

  v36 = self->_iCloudId == 0;
  v37 = [v5 iCloudId];
  v38 = v37 != 0;

  if (v36 == v38)
  {
    goto LABEL_23;
  }

  iCloudId = self->_iCloudId;
  if (iCloudId)
  {
    v40 = [v5 iCloudId];
    v41 = [(NSString *)iCloudId isEqual:v40];

    if (!v41)
    {
      goto LABEL_23;
    }
  }

  v42 = self->_mediaRouteIdentifier == 0;
  v43 = [v5 mediaRouteIdentifier];
  v44 = v43 != 0;

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
      v46 = [v5 mediaRouteIdentifier];
      v47 = [(NSString *)mediaRouteIdentifier isEqual:v46];
    }

    else
    {
      v47 = 1;
    }
  }

  return v47 & 1;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(IRRapportDeviceDO *)self isEqualToRapportDeviceDO:v5];
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

- (IRRapportDeviceDO)initWithCoder:(id)a3
{
  v69[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rapportEffectiveID"];
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
      [v4 failWithError:v12];
LABEL_4:
      v13 = 0;
LABEL_23:

LABEL_24:
LABEL_25:

      goto LABEL_26;
    }

LABEL_7:
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"idsID"];
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
        [v4 failWithError:v17];
LABEL_21:
        v13 = 0;
LABEL_22:

        goto LABEL_23;
      }
    }

    else
    {
      v18 = [v4 error];

      if (v18)
      {
        v13 = 0;
LABEL_27:

        goto LABEL_28;
      }
    }

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
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
        [v4 failWithError:v21];
LABEL_20:

        goto LABEL_21;
      }
    }

    else
    {
      v22 = [v4 error];

      if (v22)
      {
        v13 = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceModel"];
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
        [v4 failWithError:v25];

        v17 = v52;
        goto LABEL_20;
      }
    }

    else
    {
      v28 = [v4 error];

      if (v28)
      {
        v13 = 0;
        goto LABEL_25;
      }
    }

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mediaRemoteIdentifier"];
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
        [v4 failWithError:v32];

        v17 = v53;
LABEL_39:

        goto LABEL_21;
      }
    }

    else
    {
      v33 = [v4 error];

      if (v33)
      {
        v13 = 0;
        goto LABEL_24;
      }
    }

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iCloudId"];
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
        [v4 failWithError:v37];

        v17 = v54;
        goto LABEL_39;
      }
    }

    else
    {
      v38 = [v4 error];

      if (v38)
      {
        goto LABEL_4;
      }
    }

    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mediaRouteIdentifier"];
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
        [v4 failWithError:v45];

        v13 = 0;
        v17 = v55;
        goto LABEL_22;
      }
    }

    else
    {
      v46 = [v4 error];

      v41 = 0;
      if (v46)
      {
        v13 = 0;
        v17 = 0;
        goto LABEL_22;
      }
    }

    v17 = v41;
    self = [(IRRapportDeviceDO *)self initWithRapportEffectiveID:v5 idsID:v7 name:v9 deviceModel:v10 mediaRemoteIdentifier:v11 iCloudId:v12 mediaRouteIdentifier:v41];
    v13 = self;
    goto LABEL_22;
  }

  v14 = [v4 error];

  if (!v14)
  {
    goto LABEL_7;
  }

  v13 = 0;
LABEL_28:

  v26 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  rapportEffectiveID = self->_rapportEffectiveID;
  v12 = v4;
  if (rapportEffectiveID)
  {
    [v4 encodeObject:rapportEffectiveID forKey:@"rapportEffectiveID"];
    v4 = v12;
  }

  idsID = self->_idsID;
  if (idsID)
  {
    [v12 encodeObject:idsID forKey:@"idsID"];
    v4 = v12;
  }

  name = self->_name;
  if (name)
  {
    [v12 encodeObject:name forKey:@"name"];
    v4 = v12;
  }

  deviceModel = self->_deviceModel;
  if (deviceModel)
  {
    [v12 encodeObject:deviceModel forKey:@"deviceModel"];
    v4 = v12;
  }

  mediaRemoteIdentifier = self->_mediaRemoteIdentifier;
  if (mediaRemoteIdentifier)
  {
    [v12 encodeObject:mediaRemoteIdentifier forKey:@"mediaRemoteIdentifier"];
    v4 = v12;
  }

  iCloudId = self->_iCloudId;
  if (iCloudId)
  {
    [v12 encodeObject:iCloudId forKey:@"iCloudId"];
    v4 = v12;
  }

  mediaRouteIdentifier = self->_mediaRouteIdentifier;
  if (mediaRouteIdentifier)
  {
    [v12 encodeObject:mediaRouteIdentifier forKey:@"mediaRouteIdentifier"];
    v4 = v12;
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