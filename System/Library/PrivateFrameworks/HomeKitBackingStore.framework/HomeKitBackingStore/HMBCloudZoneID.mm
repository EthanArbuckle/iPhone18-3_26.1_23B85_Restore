@interface HMBCloudZoneID
- (BOOL)isEqual:(id)equal;
- (HMBCloudZoneID)initWithCoder:(id)coder;
- (HMBCloudZoneID)initWithContainerID:(id)d scope:(int64_t)scope zoneID:(id)iD;
- (HMBCloudZoneID)initWithContainerID:(id)d scope:(int64_t)scope zoneID:(id)iD name:(id)name modelID:(id)modelID;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMBCloudZoneID

- (unint64_t)hash
{
  token = [(HMBCloudZoneID *)self token];
  v3 = [token hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    token = [(HMBCloudZoneID *)self token];
    token2 = [v6 token];
    v9 = [token isEqual:token2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSString)shortDescription
{
  zoneID = [(HMBCloudZoneID *)self zoneID];
  hmbDescription = [zoneID hmbDescription];

  return hmbDescription;
}

- (HMBCloudZoneID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [[HMBCloudID alloc] initWithCoder:coderCopy];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMBCZID.z"];

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    selfCopy = 0;
  }

  else
  {
    containerID = [(HMBCloudID *)v5 containerID];
    scope = [(HMBCloudID *)v5 scope];
    name = [(HMBCloudID *)v5 name];
    modelID = [(HMBCloudID *)v5 modelID];
    self = [(HMBCloudZoneID *)self initWithContainerID:containerID scope:scope zoneID:v6 name:name modelID:modelID];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HMBCloudZoneID;
  coderCopy = coder;
  [(HMBCloudID *)&v6 encodeWithCoder:coderCopy];
  v5 = [(HMBCloudZoneID *)self zoneID:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"HMBCZID.z"];
}

- (HMBCloudZoneID)initWithContainerID:(id)d scope:(int64_t)scope zoneID:(id)iD
{
  v51[4] = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
  }

  v10 = iDCopy;
  ownerName = [iDCopy ownerName];
  v12 = *MEMORY[0x277CBBF28];
  v13 = [ownerName isEqualToString:*MEMORY[0x277CBBF28]];

  if (scope == 3)
  {
    if (!v13)
    {
      goto LABEL_7;
    }

    _HMFPreconditionFailure();
  }

  if ((v13 & 1) == 0)
  {
    v14 = objc_alloc(MEMORY[0x277CBC5F8]);
    zoneName = [v10 zoneName];
    v16 = [v14 initWithZoneName:zoneName ownerName:v12];

    v10 = v16;
  }

LABEL_7:
  v17 = MEMORY[0x277CCACA8];
  [dCopy environment];
  v18 = CKContainerEnvironmentString();
  v19 = CKDatabaseScopeString();
  containerIdentifier = [dCopy containerIdentifier];
  hmbDescription = [v10 hmbDescription];
  v22 = [v17 stringWithFormat:@"%@.%@.%@/%@", v18, v19, containerIdentifier, hmbDescription];

  selfCopy = self;
  scopeCopy = scope;
  v43 = v22;
  if ((scope - 1) > 2)
  {
    v42 = 0;
  }

  else
  {
    v42 = off_2786E1810[scope - 1];
  }

  zoneName2 = [v10 zoneName];
  ownerName2 = [v10 ownerName];
  v25 = dCopy;
  v26 = zoneName2;
  [v25 environment];
  v27 = CKContainerEnvironmentString();
  v51[0] = v27;
  containerIdentifier2 = [v25 containerIdentifier];
  v51[1] = containerIdentifier2;
  v51[2] = v26;
  v51[3] = ownerName2;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:4];

  data = [MEMORY[0x277CBEB28] data];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v31 = v29;
  v32 = [v31 countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v47;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v47 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = [*(*(&v46 + 1) + 8 * i) dataUsingEncoding:4];
        [data appendData:v36];
      }

      v33 = [v31 countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v33);
  }

  v37 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v42];
  v38 = [MEMORY[0x277CCAD78] hmf_UUIDWithNamespace:v37 data:data];

  v39 = [(HMBCloudZoneID *)selfCopy initWithContainerID:v25 scope:scopeCopy zoneID:v10 name:v43 modelID:v38];
  v40 = *MEMORY[0x277D85DE8];
  return v39;
}

- (HMBCloudZoneID)initWithContainerID:(id)d scope:(int64_t)scope zoneID:(id)iD name:(id)name modelID:(id)modelID
{
  dCopy = d;
  iDCopy = iD;
  nameCopy = name;
  modelIDCopy = modelID;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!iDCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!scope)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!nameCopy)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  v16 = modelIDCopy;
  if (!modelIDCopy)
  {
LABEL_13:
    v23 = _HMFPreconditionFailure();
    return +[(HMBCloudZoneID *)v23];
  }

  v25.receiver = self;
  v25.super_class = HMBCloudZoneID;
  v17 = [(HMBCloudID *)&v25 initWithContainerID:dCopy scope:scope name:nameCopy modelID:modelIDCopy];
  if (v17)
  {
    v18 = [iDCopy copy];
    zoneID = v17->_zoneID;
    v17->_zoneID = v18;

    data = [v16 data];
    token = v17->_token;
    v17->_token = data;
  }

  return v17;
}

@end