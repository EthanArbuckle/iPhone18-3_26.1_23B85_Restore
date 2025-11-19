@interface HMIPerson
+ (id)personFromHomePerson:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HMIPerson)initWithCoder:(id)a3;
- (HMIPerson)initWithUUID:(id)a3 name:(id)a4;
- (HMIPerson)initWithUUID:(id)a3 name:(id)a4 personLinks:(id)a5;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMIPerson

- (HMIPerson)initWithUUID:(id)a3 name:(id)a4
{
  v6 = MEMORY[0x277CBEB98];
  v7 = a4;
  v8 = a3;
  v9 = [v6 set];
  v10 = [(HMIPerson *)self initWithUUID:v8 name:v7 personLinks:v9];

  return v10;
}

- (HMIPerson)initWithUUID:(id)a3 name:(id)a4 personLinks:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = v10;
    v22.receiver = self;
    v22.super_class = HMIPerson;
    v12 = [(HMIPerson *)&v22 init];
    if (v12)
    {
      v13 = [v8 copy];
      UUID = v12->_UUID;
      v12->_UUID = v13;

      v15 = [v9 copy];
      name = v12->_name;
      v12->_name = v15;

      v17 = [v11 copy];
      personLinks = v12->_personLinks;
      v12->_personLinks = v17;
    }

    return v12;
  }

  else
  {
    v20 = [HMIPersonFaceCrop initWithUUID:dataRepresentation:dateCreated:faceBoundingBox:personUUID:source:];
    return [(HMIPerson *)v20 attributeDescriptions];
  }
}

- (id)attributeDescriptions
{
  v15[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMIPerson *)self UUID];
  v5 = [v3 initWithName:@"UUID" value:v4];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMIPerson *)self name];
  v8 = [MEMORY[0x277D0F8D8] defaultFormatter];
  v9 = [v6 initWithName:@"name" value:v7 options:2 formatter:v8];
  v15[1] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  v11 = [(HMIPerson *)self personLinks];
  v12 = [v10 initWithName:@"personLinks" value:v11];
  v15[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];

  return v13;
}

+ (id)personFromHomePerson:(id)a3
{
  v3 = a3;
  v4 = [v3 personLinks];
  v5 = [v4 na_map:&__block_literal_global_21];

  v6 = [HMIPerson alloc];
  v7 = [v3 UUID];
  v8 = [v3 name];

  v9 = [(HMIPerson *)v6 initWithUUID:v7 name:v8 personLinks:v5];

  return v9;
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
    v7 = [(HMIPerson *)self UUID];
    v8 = [v6 UUID];
    if ([v7 isEqual:v8] && (-[HMIPerson name](self, "name"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "name"), v10 = objc_claimAutoreleasedReturnValue(), v11 = HMFEqualObjects(), v10, v9, v11))
    {
      v12 = [(HMIPerson *)self personLinks];
      v13 = [v6 personLinks];
      v14 = HMFEqualObjects();
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unint64_t)hash
{
  v2 = [(HMIPerson *)self UUID];
  v3 = [v2 hash];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMIPerson *)self UUID];
  [v4 encodeObject:v5 forKey:@"HMIP.ck.u"];

  v6 = [(HMIPerson *)self name];
  [v4 encodeObject:v6 forKey:@"HMIP.ck.n"];

  v7 = [(HMIPerson *)self personLinks];
  [v4 encodeObject:v7 forKey:@"HMIP.ck.pl"];
}

- (HMIPerson)initWithCoder:(id)a3
{
  v21[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMIP.ck.u"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMIP.ck.n"];
  v7 = MEMORY[0x277CBEB98];
  v21[0] = objc_opt_class();
  v21[1] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v9 = [v7 setWithArray:v8];

  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"HMIP.ck.pl"];
  if (v5)
  {
    v11 = [(HMIPerson *)self initWithUUID:v5 name:v6 personLinks:v10];
    v12 = v11;
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v11 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v15;
      v19 = 2112;
      v20 = 0;
      _os_log_impl(&dword_22D12F000, v14, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded UUID: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 0;
  }

  return v12;
}

@end