@interface HMBCloudID
- (BOOL)isEqual:(id)a3;
- (HMBCloudID)initWithCoder:(id)a3;
- (HMBCloudID)initWithContainerID:(id)a3 scope:(int64_t)a4;
- (HMBCloudID)initWithContainerID:(id)a3 scope:(int64_t)a4 name:(id)a5 modelID:(id)a6;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMBCloudID

- (unint64_t)hash
{
  v2 = [(HMBCloudID *)self modelID];
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
    v7 = [(HMBCloudID *)self modelID];
    v8 = [v6 modelID];
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (HMBCloudID)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMBCID.c"];
  v6 = [v4 decodeIntegerForKey:@"HMBCID.s"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMBCID.n"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMBCID.m"];

  if (v5)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || v8 == 0)
  {
    v11 = 0;
  }

  else
  {
    self = [(HMBCloudID *)self initWithContainerID:v5 scope:v6 name:v7 modelID:v8];
    v11 = self;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMBCloudID *)self containerID];
  [v4 encodeObject:v5 forKey:@"HMBCID.c"];

  [v4 encodeInteger:-[HMBCloudID scope](self forKey:{"scope"), @"HMBCID.s"}];
  v6 = [(HMBCloudID *)self name];
  [v4 encodeObject:v6 forKey:@"HMBCID.n"];

  v7 = [(HMBCloudID *)self modelID];
  [v4 encodeObject:v7 forKey:@"HMBCID.m"];
}

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMBCloudID *)self name];
  v5 = [v3 initWithName:@"Name" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMBCloudID *)self modelID];
  v8 = [v6 initWithName:@"Model ID" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMBCloudID)initWithContainerID:(id)a3 scope:(int64_t)a4 name:(id)a5 modelID:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = HMBCloudID;
  v14 = [(HMBCloudID *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_containerID, a3);
    v15->_scope = a4;
    objc_storeStrong(&v15->_name, a5);
    objc_storeStrong(&v15->_modelID, a6);
  }

  return v15;
}

- (HMBCloudID)initWithContainerID:(id)a3 scope:(int64_t)a4
{
  v30[3] = *MEMORY[0x277D85DE8];
  v5 = a3;
  [v5 environment];
  v6 = CKContainerEnvironmentString();
  v7 = [v5 containerIdentifier];
  v24 = a4;
  v8 = CKDatabaseScopeString();
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@.%@", v6, v8, v7];
  v30[0] = v6;
  v30[1] = v7;
  v30[2] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:3];
  v10 = [MEMORY[0x277CBEB28] data];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      v15 = 0;
      do
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v25 + 1) + 8 * v15) dataUsingEncoding:4];
        [v10 appendData:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v13);
  }

  v17 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"759390E3-198F-48EB-AD00-31296DACBBA6"];
  v18 = [MEMORY[0x277CCAD78] hmf_UUIDWithNamespace:v17 data:v10];
  v19 = [(HMBCloudID *)self initWithContainerID:v5 scope:v24 name:v22 modelID:v18];

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

@end