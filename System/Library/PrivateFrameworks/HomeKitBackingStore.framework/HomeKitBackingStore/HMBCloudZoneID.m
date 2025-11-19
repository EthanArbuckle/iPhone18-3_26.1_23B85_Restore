@interface HMBCloudZoneID
- (BOOL)isEqual:(id)a3;
- (HMBCloudZoneID)initWithCoder:(id)a3;
- (HMBCloudZoneID)initWithContainerID:(id)a3 scope:(int64_t)a4 zoneID:(id)a5;
- (HMBCloudZoneID)initWithContainerID:(id)a3 scope:(int64_t)a4 zoneID:(id)a5 name:(id)a6 modelID:(id)a7;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMBCloudZoneID

- (unint64_t)hash
{
  v2 = [(HMBCloudZoneID *)self token];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
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
  if (v6)
  {
    v7 = [(HMBCloudZoneID *)self token];
    v8 = [v6 token];
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSString)shortDescription
{
  v2 = [(HMBCloudZoneID *)self zoneID];
  v3 = [v2 hmbDescription];

  return v3;
}

- (HMBCloudZoneID)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [[HMBCloudID alloc] initWithCoder:v4];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMBCZID.z"];

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
    v12 = 0;
  }

  else
  {
    v8 = [(HMBCloudID *)v5 containerID];
    v9 = [(HMBCloudID *)v5 scope];
    v10 = [(HMBCloudID *)v5 name];
    v11 = [(HMBCloudID *)v5 modelID];
    self = [(HMBCloudZoneID *)self initWithContainerID:v8 scope:v9 zoneID:v6 name:v10 modelID:v11];

    v12 = self;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = HMBCloudZoneID;
  v4 = a3;
  [(HMBCloudID *)&v6 encodeWithCoder:v4];
  v5 = [(HMBCloudZoneID *)self zoneID:v6.receiver];
  [v4 encodeObject:v5 forKey:@"HMBCZID.z"];
}

- (HMBCloudZoneID)initWithContainerID:(id)a3 scope:(int64_t)a4 zoneID:(id)a5
{
  v51[4] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (!v8)
  {
    _HMFPreconditionFailure();
  }

  v10 = v9;
  v11 = [v9 ownerName];
  v12 = *MEMORY[0x277CBBF28];
  v13 = [v11 isEqualToString:*MEMORY[0x277CBBF28]];

  if (a4 == 3)
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
    v15 = [v10 zoneName];
    v16 = [v14 initWithZoneName:v15 ownerName:v12];

    v10 = v16;
  }

LABEL_7:
  v17 = MEMORY[0x277CCACA8];
  [v8 environment];
  v18 = CKContainerEnvironmentString();
  v19 = CKDatabaseScopeString();
  v20 = [v8 containerIdentifier];
  v21 = [v10 hmbDescription];
  v22 = [v17 stringWithFormat:@"%@.%@.%@/%@", v18, v19, v20, v21];

  v44 = self;
  v45 = a4;
  v43 = v22;
  if ((a4 - 1) > 2)
  {
    v42 = 0;
  }

  else
  {
    v42 = off_2786E1810[a4 - 1];
  }

  v23 = [v10 zoneName];
  v24 = [v10 ownerName];
  v25 = v8;
  v26 = v23;
  [v25 environment];
  v27 = CKContainerEnvironmentString();
  v51[0] = v27;
  v28 = [v25 containerIdentifier];
  v51[1] = v28;
  v51[2] = v26;
  v51[3] = v24;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:4];

  v30 = [MEMORY[0x277CBEB28] data];
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
        [v30 appendData:v36];
      }

      v33 = [v31 countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v33);
  }

  v37 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v42];
  v38 = [MEMORY[0x277CCAD78] hmf_UUIDWithNamespace:v37 data:v30];

  v39 = [(HMBCloudZoneID *)v44 initWithContainerID:v25 scope:v45 zoneID:v10 name:v43 modelID:v38];
  v40 = *MEMORY[0x277D85DE8];
  return v39;
}

- (HMBCloudZoneID)initWithContainerID:(id)a3 scope:(int64_t)a4 zoneID:(id)a5 name:(id)a6 modelID:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (!v12)
  {
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!v13)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!a4)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!v14)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  v16 = v15;
  if (!v15)
  {
LABEL_13:
    v23 = _HMFPreconditionFailure();
    return +[(HMBCloudZoneID *)v23];
  }

  v25.receiver = self;
  v25.super_class = HMBCloudZoneID;
  v17 = [(HMBCloudID *)&v25 initWithContainerID:v12 scope:a4 name:v14 modelID:v15];
  if (v17)
  {
    v18 = [v13 copy];
    zoneID = v17->_zoneID;
    v17->_zoneID = v18;

    v20 = [v16 data];
    token = v17->_token;
    v17->_token = v20;
  }

  return v17;
}

@end