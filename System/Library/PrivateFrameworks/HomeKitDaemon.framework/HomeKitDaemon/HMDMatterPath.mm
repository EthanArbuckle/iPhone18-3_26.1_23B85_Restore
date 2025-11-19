@interface HMDMatterPath
+ (HMDMatterPath)PathWithAttributeID:(id)a3 endpointID:(id)a4 clusterID:(id)a5 accessory:(id)a6;
+ (HMDMatterPath)PathWithCommandID:(id)a3 endpointID:(id)a4 clusterID:(id)a5 accessory:(id)a6;
+ (HMDMatterPath)PathWithEventID:(id)a3 endpointID:(id)a4 clusterID:(id)a5 accessory:(id)a6;
+ (HMDMatterPath)PathWithMTRPath:(id)a3 accessory:(id)a4;
+ (id)logCategory;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (HMDAccessory)accessory;
- (HMDMatterPath)initWithCoder:(id)a3;
- (HMDMatterPath)initWithMTRPath:(id)a3 accessory:(id)a4;
- (HMDMatterPath)initWithPathModel:(id)a3 accessory:(id)a4;
- (HMDMatterPath)initWithUUID:(id)a3 mtrPath:(id)a4 accessory:(id)a5;
- (NSNumber)attributeID;
- (NSNumber)clusterID;
- (NSNumber)commandID;
- (NSNumber)endpointID;
- (NSNumber)eventID;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)modelObjectWithChangeType:(unint64_t)a3 uuid:(id)a4 parentUUID:(id)a5;
- (id)mtrPath;
- (id)path;
- (id)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)populateModelObject:(id)a3;
@end

@implementation HMDMatterPath

- (HMDAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (id)modelObjectWithChangeType:(unint64_t)a3 uuid:(id)a4 parentUUID:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(HMDBackingStoreModelObject *)[HMDMatterPathModel alloc] initWithObjectChangeType:a3 uuid:v8 parentUUID:v7];

  return v9;
}

- (id)shortDescription
{
  v3 = [(HMDMatterPath *)self accessory];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = [v3 identifier];
  v7 = [(HMDMatterPath *)self path];
  v8 = [v4 stringWithFormat:@"%@ %@ %@", v5, v6, v7];

  return v8;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HMDMatterPath *)self uuid];
  v6 = [(HMDMatterPath *)self accessory];
  v7 = [v6 identifier];
  v8 = [(HMDMatterPath *)self path];
  v9 = [v3 stringWithFormat:@"%@ %@/%@ %@", v4, v5, v7, v8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(HMDMatterPath *)self uuid];
  v6 = [(HMDMatterPath *)self mtrPath];
  v7 = [(HMDMatterPath *)self accessory];
  v8 = [v4 initWithUUID:v5 mtrPath:v6 accessory:v7];

  return v8;
}

- (void)populateModelObject:(id)a3
{
  v11 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v11;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [(HMDMatterPath *)self endpointID];
  [v5 setEndpointID:v6];

  v7 = [(HMDMatterPath *)self clusterID];
  [v5 setClusterID:v7];

  v8 = [(HMDMatterPath *)self attributeID];
  [v5 setAttributeID:v8];

  v9 = [(HMDMatterPath *)self commandID];
  [v5 setCommandID:v9];

  v10 = [(HMDMatterPath *)self eventID];
  [v5 setEventID:v10];
}

- (HMDMatterPath)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDMatterPathEndpointIDKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDMatterPathClusterIDKey"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDMatterPathAttributeIDKey"];
  if (v7)
  {
    v8 = [MEMORY[0x277CD51C0] attributePathWithEndpointID:v5 clusterID:v6 attributeID:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDMatterPathCommandIDKey"];
  if (v9)
  {
    v10 = [MEMORY[0x277CD52F0] commandPathWithEndpointID:v5 clusterID:v6 commandID:v9];

    v8 = v10;
  }

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDMatterPathEventIDKey"];
  if (v11)
  {
    v12 = [MEMORY[0x277CD5408] eventPathWithEndpointID:v5 clusterID:v6 eventID:v11];

    v8 = v12;
  }

  v13 = [(HMDMatterPath *)self initWithMTRPath:v8 accessory:0];

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDMatterPath *)self endpointID];
  [v4 encodeObject:v5 forKey:@"HMDMatterPathEndpointIDKey"];

  v6 = [(HMDMatterPath *)self clusterID];
  [v4 encodeObject:v6 forKey:@"HMDMatterPathClusterIDKey"];

  v7 = [(HMDMatterPath *)self attributeID];
  [v4 encodeObject:v7 forKey:@"HMDMatterPathAttributeIDKey"];

  v8 = [(HMDMatterPath *)self commandID];
  [v4 encodeObject:v8 forKey:@"HMDMatterPathCommandIDKey"];

  v9 = [(HMDMatterPath *)self eventID];
  [v4 encodeObject:v9 forKey:@"HMDMatterPathEventIDKey"];
}

- (unint64_t)hash
{
  v2 = [(HMDMatterPath *)self path];
  v3 = [v2 hash];

  return v3;
}

- (id)path
{
  v3 = [(HMDMatterPath *)self attributeID];

  if (v3)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [(HMDMatterPath *)self endpointID];
    v6 = [(HMDMatterPath *)self clusterID];
    v7 = [(HMDMatterPath *)self attributeID];
    [v4 stringWithFormat:@"EP/CL/ATTR: %@/%@/%@", v5, v6, v7];
    v13 = LABEL_7:;

    goto LABEL_8;
  }

  v8 = [(HMDMatterPath *)self commandID];

  if (v8)
  {
    v9 = MEMORY[0x277CCACA8];
    v5 = [(HMDMatterPath *)self endpointID];
    v6 = [(HMDMatterPath *)self clusterID];
    v7 = [(HMDMatterPath *)self commandID];
    [v9 stringWithFormat:@"EP/CL/CMD: %@/%@/%@", v5, v6, v7];
    goto LABEL_7;
  }

  v10 = [(HMDMatterPath *)self eventID];

  v11 = MEMORY[0x277CCACA8];
  v5 = [(HMDMatterPath *)self endpointID];
  v12 = [(HMDMatterPath *)self clusterID];
  v6 = v12;
  if (v10)
  {
    v7 = [(HMDMatterPath *)self eventID];
    [v11 stringWithFormat:@"EP/CL/EVE: %@/%@/%@", v5, v6, v7];
    goto LABEL_7;
  }

  v13 = [v11 stringWithFormat:@"EP/CL: %@/%@", v5, v12];
LABEL_8:

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v25 = 1;
  }

  else
  {
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
    v7 = v6;
    if (!v6)
    {
      goto LABEL_12;
    }

    v8 = [(HMDMatterPath *)v6 endpointID];
    v9 = [(HMDMatterPath *)self endpointID];
    v10 = HMFEqualObjects();

    if (!v10)
    {
      goto LABEL_12;
    }

    v11 = [(HMDMatterPath *)v7 clusterID];
    v12 = [(HMDMatterPath *)self clusterID];
    v13 = HMFEqualObjects();

    if (!v13)
    {
      goto LABEL_12;
    }

    v14 = [(HMDMatterPath *)v7 attributeID];
    v15 = [(HMDMatterPath *)self attributeID];
    v16 = HMFEqualObjects();

    if (!v16)
    {
      goto LABEL_12;
    }

    v17 = [(HMDMatterPath *)v7 commandID];
    v18 = [(HMDMatterPath *)self commandID];
    v19 = HMFEqualObjects();

    if (!v19)
    {
      goto LABEL_12;
    }

    v20 = [(HMDMatterPath *)v7 eventID];
    v21 = [(HMDMatterPath *)self eventID];
    v22 = HMFEqualObjects();

    if (v22)
    {
      v23 = [(HMDMatterPath *)v7 accessory];
      v24 = [(HMDMatterPath *)self accessory];
      v25 = HMFEqualObjects();
    }

    else
    {
LABEL_12:
      v25 = 0;
    }
  }

  return v25;
}

- (NSNumber)eventID
{
  v2 = [(HMDMatterPath *)self eventPath];
  v3 = [v2 event];

  return v3;
}

- (NSNumber)commandID
{
  v2 = [(HMDMatterPath *)self commandPath];
  v3 = [v2 command];

  return v3;
}

- (NSNumber)attributeID
{
  v2 = [(HMDMatterPath *)self attributePath];
  v3 = [v2 attribute];

  return v3;
}

- (NSNumber)clusterID
{
  v2 = [(HMDMatterPath *)self mtrPath];
  v3 = [v2 cluster];

  return v3;
}

- (NSNumber)endpointID
{
  v2 = [(HMDMatterPath *)self mtrPath];
  v3 = [v2 endpoint];

  return v3;
}

- (BOOL)isValid
{
  v3 = [(HMDMatterPath *)self endpointID];
  if (v3)
  {
    v4 = [(HMDMatterPath *)self clusterID];
    if (v4)
    {
      v5 = [(HMDMatterPath *)self attributeID];
      if (v5)
      {
        v6 = 1;
      }

      else
      {
        v7 = [(HMDMatterPath *)self commandID];
        if (v7)
        {
          v6 = 1;
        }

        else
        {
          v8 = [(HMDMatterPath *)self eventID];
          v6 = v8 != 0;
        }
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)mtrPath
{
  v3 = [(HMDMatterPath *)self attributePath];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(HMDMatterPath *)self commandPath];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [(HMDMatterPath *)self eventPath];
    }

    v5 = v8;
  }

  return v5;
}

- (HMDMatterPath)initWithPathModel:(id)a3 accessory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 endpointID];

  if (!v8)
  {
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  v9 = [v6 clusterID];

  if (!v9)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  v10 = v7;
  v11 = [v10 conformsToProtocol:&unk_283F010C8];

  if (v10 && (v11 & 1) != 0)
  {
    v12 = [v6 attributeID];

    if (v12)
    {
      v13 = MEMORY[0x277CD51C0];
      v14 = [v6 endpointID];
      v15 = [v6 clusterID];
      v16 = [v6 attributeID];
      v17 = [v13 attributePathWithEndpointID:v14 clusterID:v15 attributeID:v16];
    }

    else
    {
      v18 = [v6 commandID];

      if (v18)
      {
        v19 = MEMORY[0x277CD52F0];
        v14 = [v6 endpointID];
        v15 = [v6 clusterID];
        v16 = [v6 commandID];
        v17 = [v19 commandPathWithEndpointID:v14 clusterID:v15 commandID:v16];
      }

      else
      {
        v20 = [v6 eventID];

        if (!v20)
        {
          v26 = MEMORY[0x277CD5290];
          v14 = [v6 endpointID];
          v15 = [v6 clusterID];
          v22 = [v26 clusterPathWithEndpointID:v14 clusterID:v15];
          goto LABEL_12;
        }

        v21 = MEMORY[0x277CD5408];
        v14 = [v6 endpointID];
        v15 = [v6 clusterID];
        v16 = [v6 eventID];
        v17 = [v21 eventPathWithEndpointID:v14 clusterID:v15 eventID:v16];
      }
    }

    v22 = v17;

LABEL_12:
    v23 = [v6 uuid];
    v24 = [(HMDMatterPath *)self initWithUUID:v23 mtrPath:v22 accessory:v10];

    return v24;
  }

LABEL_16:
  v27 = _HMFPreconditionFailure();
  return [(HMDMatterPath *)v27 initWithMTRPath:v28 accessory:v29, v30];
}

- (HMDMatterPath)initWithMTRPath:(id)a3 accessory:(id)a4
{
  v35[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    v34 = v9;
    v10 = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    v33 = v12;

    v13 = v10;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    v16 = MEMORY[0x277CCACA8];
    v17 = [v13 endpoint];
    v18 = [v13 cluster];
    v19 = [v9 attribute];
    [v12 command];
    v20 = v32 = self;
    v21 = [v15 event];
    v22 = [v16 stringWithFormat:@"endpointID=%@ clusterID=%@ attributeID=%@ commandID=%@ eventID=%@", v17, v18, v19, v20, v21];

    v23 = MEMORY[0x277CCAD78];
    v24 = [v7 uuid];
    v35[0] = v22;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
    v26 = [v23 hm_deriveUUIDFromBaseUUID:v24 withSalts:v25];
    v27 = [(HMDMatterPath *)v32 initWithUUID:v26 mtrPath:v13 accessory:v7];

    v28 = v27;
  }

  else
  {
    v29 = [MEMORY[0x277CCAD78] UUID];
    v28 = [(HMDMatterPath *)self initWithUUID:v29 mtrPath:v6 accessory:0];
  }

  v30 = *MEMORY[0x277D85DE8];
  return v28;
}

- (HMDMatterPath)initWithUUID:(id)a3 mtrPath:(id)a4 accessory:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    _HMFPreconditionFailure();
    goto LABEL_17;
  }

  v12 = v11;
  v13 = [v10 endpoint];

  if (!v13)
  {
LABEL_17:
    _HMFPreconditionFailure();
    goto LABEL_18;
  }

  v14 = [v10 cluster];

  if (!v14)
  {
LABEL_18:
    v30 = _HMFPreconditionFailure();
    return +[(HMDMatterPath *)v30];
  }

  v32.receiver = self;
  v32.super_class = HMDMatterPath;
  v15 = [(HMDMatterPath *)&v32 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_uuid, a3);
    objc_storeWeak(&v16->_accessory, v12);
    v17 = v10;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    attributePath = v16->_attributePath;
    v16->_attributePath = v19;

    v21 = v17;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

    commandPath = v16->_commandPath;
    v16->_commandPath = v23;

    v25 = v21;
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

    eventPath = v16->_eventPath;
    v16->_eventPath = v27;
  }

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t9_160424 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t9_160424, &__block_literal_global_160425);
  }

  v3 = logCategory__hmf_once_v10_160426;

  return v3;
}

void __28__HMDMatterPath_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v10_160426;
  logCategory__hmf_once_v10_160426 = v1;
}

+ (HMDMatterPath)PathWithEventID:(id)a3 endpointID:(id)a4 clusterID:(id)a5 accessory:(id)a6
{
  v9 = MEMORY[0x277CD5408];
  v10 = a6;
  v11 = [v9 eventPathWithEndpointID:a4 clusterID:a5 eventID:a3];
  v12 = [HMDMatterPath PathWithMTRPath:v11 accessory:v10];

  return v12;
}

+ (HMDMatterPath)PathWithCommandID:(id)a3 endpointID:(id)a4 clusterID:(id)a5 accessory:(id)a6
{
  v9 = MEMORY[0x277CD52F0];
  v10 = a6;
  v11 = [v9 commandPathWithEndpointID:a4 clusterID:a5 commandID:a3];
  v12 = [HMDMatterPath PathWithMTRPath:v11 accessory:v10];

  return v12;
}

+ (HMDMatterPath)PathWithAttributeID:(id)a3 endpointID:(id)a4 clusterID:(id)a5 accessory:(id)a6
{
  v9 = MEMORY[0x277CD51C0];
  v10 = a6;
  v11 = [v9 attributePathWithEndpointID:a4 clusterID:a5 attributeID:a3];
  v12 = [HMDMatterPath PathWithMTRPath:v11 accessory:v10];

  return v12;
}

+ (HMDMatterPath)PathWithMTRPath:(id)a3 accessory:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[HMDMatterPath alloc] initWithMTRPath:v6 accessory:v5];

  return v7;
}

@end