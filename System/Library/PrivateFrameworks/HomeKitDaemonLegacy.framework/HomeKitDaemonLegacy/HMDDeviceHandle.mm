@interface HMDDeviceHandle
+ (id)deviceHandleForDestination:(id)destination;
+ (id)deviceHandleForDeviceIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (BOOL)isGlobal;
- (BOOL)isLocal;
- (BOOL)matchesPushToken:(id)token;
- (HMDAccountHandle)accountHandle;
- (HMDDeviceHandle)init;
- (HMDDeviceHandle)initWithCoder:(id)coder;
- (HMDDeviceHandle)initWithInternal:(id)internal;
- (NSData)pushToken;
- (NSString)destination;
- (NSUUID)identifier;
- (id)attributeDescriptions;
- (id)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDDeviceHandle

uint64_t __39___HMDDeviceHandle_identifierNamespace__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"A08F6CA5-EC1E-4DD6-A068-377BA45247B6"];
  v1 = identifierNamespace_namespace;
  identifierNamespace_namespace = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  internal = [(HMDDeviceHandle *)self internal];
  [coderCopy encodeObject:internal forKey:@"HM.internal"];
}

- (HMDDeviceHandle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.internal"];

  v6 = [(HMDDeviceHandle *)self initWithInternal:v5];
  return v6;
}

- (BOOL)matchesPushToken:(id)token
{
  tokenCopy = token;
  internal = [(HMDDeviceHandle *)self internal];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = internal;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    pushToken = [v7 pushToken];
    v9 = [pushToken isEqualToData:tokenCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSData)pushToken
{
  internal = [(HMDDeviceHandle *)self internal];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = internal;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {
    pushToken = [v4 pushToken];
  }

  else
  {
    pushToken = 0;
  }

  return pushToken;
}

- (NSString)destination
{
  internal = [(HMDDeviceHandle *)self internal];
  destination = [internal destination];

  return destination;
}

- (HMDAccountHandle)accountHandle
{
  internal = [(HMDDeviceHandle *)self internal];
  accountHandle = [internal accountHandle];

  return accountHandle;
}

- (BOOL)isGlobal
{
  internal = [(HMDDeviceHandle *)self internal];
  isGlobal = [internal isGlobal];

  return isGlobal;
}

- (BOOL)isLocal
{
  internal = [(HMDDeviceHandle *)self internal];
  isLocal = [internal isLocal];

  return isLocal;
}

- (NSUUID)identifier
{
  internal = [(HMDDeviceHandle *)self internal];
  identifier = [internal identifier];

  return identifier;
}

- (id)attributeDescriptions
{
  v19[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  identifier = [(HMDDeviceHandle *)self identifier];
  uUIDString = [identifier UUIDString];
  v6 = [v3 initWithName:@"Identifier" value:uUIDString];
  v19[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  if ([(HMDDeviceHandle *)self isGlobal])
  {
    v8 = @"Global";
  }

  else
  {
    v8 = @"Local";
  }

  v9 = [v7 initWithName:@"Type" value:v8];
  v19[1] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  internal = [(HMDDeviceHandle *)self internal];
  v12 = [v10 initWithName:@"Value" value:internal];
  v19[2] = v12;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  accountHandle = [(HMDDeviceHandle *)self accountHandle];
  v15 = [v13 initWithName:@"Account Handle" value:accountHandle options:1 formatter:0];
  v19[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:4];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  identifier = [(HMDDeviceHandle *)self identifier];
  uUIDString = [identifier UUIDString];
  v7 = [v3 stringWithFormat:@"%@ %@", shortDescription, uUIDString];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
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
      internal = [(HMDDeviceHandle *)self internal];
      internal2 = [(HMDDeviceHandle *)v6 internal];
      v9 = [internal isEqual:internal2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  internal = [(HMDDeviceHandle *)self internal];
  v3 = [internal hash];

  return v3;
}

- (HMDDeviceHandle)initWithInternal:(id)internal
{
  v18 = *MEMORY[0x277D85DE8];
  internalCopy = internal;
  if (internalCopy)
  {
    v15.receiver = self;
    v15.super_class = HMDDeviceHandle;
    v5 = [(HMDDeviceHandle *)&v15 init];
    if (v5)
    {
      v6 = [internalCopy copy];
      internal = v5->_internal;
      v5->_internal = v6;
    }

    selfCopy = v5;
    v9 = selfCopy;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Missing internal parameter", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

- (HMDDeviceHandle)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)deviceHandleForDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[_HMDLocalDeviceHandle alloc] initWithDeviceIdentifier:identifierCopy];

  if (v4)
  {
    v5 = [[HMDDeviceHandle alloc] initWithInternal:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)deviceHandleForDestination:(id)destination
{
  v24 = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  if (!destinationCopy)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v13;
      v14 = "%{public}@Invalid destination, nil";
      v15 = v12;
      v16 = OS_LOG_TYPE_ERROR;
      v17 = 12;
LABEL_11:
      _os_log_impl(&dword_2531F8000, v15, v16, v14, &v20, v17);
    }

LABEL_12:

    objc_autoreleasePoolPop(v10);
    goto LABEL_13;
  }

  v5 = IDSCopyAddressDestinationForDestination();

  if (!v5)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v13;
      v22 = 2112;
      v23 = destinationCopy;
      v14 = "%{public}@Invalid device destination: %@";
      v15 = v12;
      v16 = OS_LOG_TYPE_INFO;
      v17 = 22;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v6 = off_27971A290;
  if ([_HMDLocalDeviceHandle isValidDestination:destinationCopy]|| (v6 = off_27971A288, [_HMDGlobalDeviceHandle isValidDestination:destinationCopy]))
  {
    v7 = [objc_alloc(*v6) initWithDestination:destinationCopy];
    if (v7)
    {
      v8 = v7;
      v9 = [[HMDDeviceHandle alloc] initWithInternal:v7];

      goto LABEL_14;
    }
  }

LABEL_13:
  v9 = 0;
LABEL_14:

  v18 = *MEMORY[0x277D85DE8];

  return v9;
}

@end