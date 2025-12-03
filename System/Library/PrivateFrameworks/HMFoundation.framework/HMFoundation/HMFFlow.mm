@interface HMFFlow
+ (id)internalOnlyInitializer;
+ (id)untrackedPlaceholderFlow;
- (BOOL)isEqual:(id)equal;
- (HMFFlow)init;
- (HMFFlow)initWithCoder:(id)coder;
- (HMFFlow)initWithUUID:(id)d;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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
  uUID = [MEMORY[0x277CCAD78] UUID];
  v4 = [(HMFFlow *)self initWithUUID:uUID];

  return v4;
}

- (HMFFlow)initWithUUID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = HMFFlow;
  v5 = [(HMFFlow *)&v9 init];
  if (v5)
  {
    v6 = [dCopy copy];
    UUID = v5->_UUID;
    v5->_UUID = v6;
  }

  return v5;
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
  uUID = [(HMFFlow *)self UUID];
  uUID2 = [v6 UUID];

  LOBYTE(v6) = [uUID isEqual:uUID2];
  return v6;
}

- (unint64_t)hash
{
  uUID = [(HMFFlow *)self UUID];
  v3 = [uUID hash];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uUID = [(HMFFlow *)self UUID];
  [coderCopy encodeObject:uUID forKey:@"HMFFlowUUIDCodingKey"];
}

- (HMFFlow)initWithCoder:(id)coder
{
  v15 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMFFlowUUIDCodingKey"];
  if (v5)
  {
    selfCopy = [(HMFFlow *)self initWithUUID:v5];
    v7 = selfCopy;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier(selfCopy);
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