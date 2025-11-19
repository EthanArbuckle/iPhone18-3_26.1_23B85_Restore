@interface HMIPersonSourceUUIDPair
+ (id)personSourceUUIDPairFromPersonLink:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HMIPersonSourceUUIDPair)initWithCoder:(id)a3;
- (HMIPersonSourceUUIDPair)initWithPersonUUID:(id)a3 sourceUUID:(id)a4;
- (HMIPersonSourceUUIDPair)initWithUUIDPairString:(id)a3;
- (NSString)UUIDPairString;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMIPersonSourceUUIDPair

- (HMIPersonSourceUUIDPair)initWithPersonUUID:(id)a3 sourceUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HMIPersonSourceUUIDPair;
  v8 = [(HMIPersonSourceUUIDPair *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    personUUID = v8->_personUUID;
    v8->_personUUID = v9;

    v11 = [v7 copy];
    sourceUUID = v8->_sourceUUID;
    v8->_sourceUUID = v11;
  }

  return v8;
}

- (HMIPersonSourceUUIDPair)initWithUUIDPairString:(id)a3
{
  v4 = [a3 componentsSeparatedByString:@"_"];
  if ([v4 count] == 2)
  {
    v5 = objc_alloc(MEMORY[0x277CCAD78]);
    v6 = [v4 firstObject];
    v7 = [v5 initWithUUIDString:v6];

    v8 = objc_alloc(MEMORY[0x277CCAD78]);
    v9 = [v4 lastObject];
    v10 = [v8 initWithUUIDString:v9];

    v11 = 0;
    if (v7 && v10)
    {
      self = [(HMIPersonSourceUUIDPair *)self initWithPersonUUID:v7 sourceUUID:v10];
      v11 = self;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSString)UUIDPairString
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = [(HMIPersonSourceUUIDPair *)self personUUID];
  v4 = [v3 UUIDString];
  v10[0] = v4;
  v5 = [(HMIPersonSourceUUIDPair *)self sourceUUID];
  v6 = [v5 UUIDString];
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v8 = [v7 componentsJoinedByString:@"_"];

  return v8;
}

- (id)attributeDescriptions
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMIPersonSourceUUIDPair *)self personUUID];
  v5 = [v3 initWithName:@"personUUID" value:v4];
  v11[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMIPersonSourceUUIDPair *)self sourceUUID];
  v8 = [v6 initWithName:@"sourceUUID" value:v7];
  v11[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];

  return v9;
}

+ (id)personSourceUUIDPairFromPersonLink:(id)a3
{
  v3 = a3;
  v4 = [HMIPersonSourceUUIDPair alloc];
  v5 = [v3 personUUID];
  v6 = [v3 personManagerUUID];

  v7 = [(HMIPersonSourceUUIDPair *)v4 initWithPersonUUID:v5 sourceUUID:v6];

  return v7;
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
    v7 = [(HMIPersonSourceUUIDPair *)self personUUID];
    v8 = [v6 personUUID];
    if ([v7 isEqual:v8])
    {
      v9 = [(HMIPersonSourceUUIDPair *)self sourceUUID];
      v10 = [v6 sourceUUID];
      v11 = [v9 isEqual:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v2 = [(HMIPersonSourceUUIDPair *)self personUUID];
  v3 = [v2 hash];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMIPersonSourceUUIDPair *)self personUUID];
  [v4 encodeObject:v5 forKey:@"HMIPSUP.ck.p"];

  v6 = [(HMIPersonSourceUUIDPair *)self sourceUUID];
  [v4 encodeObject:v6 forKey:@"HMIPSUP.ck.s"];
}

- (HMIPersonSourceUUIDPair)initWithCoder:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMIPSUP.ck.p"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMIPSUP.ck.s"];
  v7 = v6;
  if (!v5)
  {
    v10 = objc_autoreleasePoolPush();
    v8 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = 0;
      v13 = "%{public}@Could not initialize from decoded personUUID: %@";
LABEL_8:
      _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_ERROR, v13, &v15, 0x16u);
    }

LABEL_9:

    objc_autoreleasePoolPop(v10);
    v9 = 0;
    goto LABEL_10;
  }

  if (!v6)
  {
    v10 = objc_autoreleasePoolPush();
    v8 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = 0;
      v13 = "%{public}@Could not initialize from decoded sourceUUID: %@";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v8 = [(HMIPersonSourceUUIDPair *)self initWithPersonUUID:v5 sourceUUID:v6];
  v9 = v8;
LABEL_10:

  return v9;
}

@end