@interface HMFFlow
+ (id)internalOnlyInitializer;
+ (id)untrackedPlaceholderFlow;
- (BOOL)isEqual:(id)a3;
- (HMFFlow)init;
- (HMFFlow)initWithCoder:(id)a3;
- (HMFFlow)initWithUUID:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMFFlow

+ (id)untrackedPlaceholderFlow
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)internalOnlyInitializer
{
  v2 = objc_opt_new();

  return v2;
}

- (HMFFlow)init
{
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = [(HMFFlow *)self initWithUUID:v3];

  return v4;
}

- (HMFFlow)initWithUUID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMFFlow;
  v5 = [(HMFFlow *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    UUID = v5->_UUID;
    v5->_UUID = v6;
  }

  return v5;
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
  v7 = [(HMFFlow *)self UUID];
  v8 = [v6 UUID];

  LOBYTE(v6) = [v7 isEqual:v8];
  return v6;
}

- (unint64_t)hash
{
  v2 = [(HMFFlow *)self UUID];
  v3 = [v2 hash];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMFFlow *)self UUID];
  [v4 encodeObject:v5 forKey:@"HMFFlowUUIDCodingKey"];
}

- (HMFFlow)initWithCoder:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMFFlowUUIDCodingKey"];
  if (v5)
  {
    v6 = [(HMFFlow *)self initWithUUID:v5];
    v7 = v6;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v6 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier(v6);
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_22ADEC000, v9, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize due to nil object after decoding UUID", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

@end