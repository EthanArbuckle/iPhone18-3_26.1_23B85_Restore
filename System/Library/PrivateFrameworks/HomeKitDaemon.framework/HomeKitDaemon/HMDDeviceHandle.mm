@interface HMDDeviceHandle
+ (id)deviceHandleForDestination:(id)a3;
+ (id)deviceHandleForDeviceIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isGlobal;
- (BOOL)isLocal;
- (BOOL)matchesPushToken:(id)a3;
- (HMDAccountHandle)accountHandle;
- (HMDDeviceHandle)init;
- (HMDDeviceHandle)initWithCoder:(id)a3;
- (HMDDeviceHandle)initWithInternal:(id)a3;
- (NSData)pushToken;
- (NSString)destination;
- (NSUUID)identifier;
- (id)attributeDescriptions;
- (id)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDDeviceHandle

- (id)attributeDescriptions
{
  v19[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDDeviceHandle *)self identifier];
  v5 = [v4 UUIDString];
  v6 = [v3 initWithName:@"Identifier" value:v5];
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
  v11 = [(HMDDeviceHandle *)self internal];
  v12 = [v10 initWithName:@"Value" value:v11];
  v19[2] = v12;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  v14 = [(HMDDeviceHandle *)self accountHandle];
  v15 = [v13 initWithName:@"Account Handle" value:v14 options:1 formatter:0];
  v19[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:4];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (NSUUID)identifier
{
  v2 = [(HMDDeviceHandle *)self internal];
  v3 = [v2 identifier];

  return v3;
}

- (BOOL)isGlobal
{
  v2 = [(HMDDeviceHandle *)self internal];
  v3 = [v2 isGlobal];

  return v3;
}

- (HMDAccountHandle)accountHandle
{
  v2 = [(HMDDeviceHandle *)self internal];
  v3 = [v2 accountHandle];

  return v3;
}

- (BOOL)isLocal
{
  v2 = [(HMDDeviceHandle *)self internal];
  v3 = [v2 isLocal];

  return v3;
}

void __39___HMDDeviceHandle_identifierNamespace__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"A08F6CA5-EC1E-4DD6-A068-377BA45247B6"];
  v1 = identifierNamespace_namespace;
  identifierNamespace_namespace = v0;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDDeviceHandle *)self internal];
  [v4 encodeObject:v5 forKey:@"HM.internal"];
}

- (HMDDeviceHandle)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.internal"];

  v6 = [(HMDDeviceHandle *)self initWithInternal:v5];
  return v6;
}

- (BOOL)matchesPushToken:(id)a3
{
  v4 = a3;
  v5 = [(HMDDeviceHandle *)self internal];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v7 pushToken];
    v9 = [v8 isEqualToData:v4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSData)pushToken
{
  v2 = [(HMDDeviceHandle *)self internal];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {
    v5 = [v4 pushToken];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)destination
{
  v2 = [(HMDDeviceHandle *)self internal];
  v3 = [v2 destination];

  return v3;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() shortDescription];
  v5 = [(HMDDeviceHandle *)self identifier];
  v6 = [v5 UUIDString];
  v7 = [v3 stringWithFormat:@"%@ %@", v4, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
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
    if (v6)
    {
      v7 = [(HMDDeviceHandle *)self internal];
      v8 = [(HMDDeviceHandle *)v6 internal];
      v9 = [v7 isEqual:v8];
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
  v2 = [(HMDDeviceHandle *)self internal];
  v3 = [v2 hash];

  return v3;
}

- (HMDDeviceHandle)initWithInternal:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v15.receiver = self;
    v15.super_class = HMDDeviceHandle;
    v5 = [(HMDDeviceHandle *)&v15 init];
    if (v5)
    {
      v6 = [v4 copy];
      internal = v5->_internal;
      v5->_internal = v6;
    }

    v8 = v5;
    v9 = v8;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v8 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Missing internal parameter", buf, 0xCu);
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

+ (id)deviceHandleForDeviceIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[_HMDLocalDeviceHandle alloc] initWithDeviceIdentifier:v3];

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

+ (id)deviceHandleForDestination:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = a1;
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
      _os_log_impl(&dword_229538000, v15, v16, v14, &v20, v17);
    }

LABEL_12:

    objc_autoreleasePoolPop(v10);
    goto LABEL_13;
  }

  v5 = IDSCopyAddressDestinationForDestination();

  if (!v5)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = a1;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v13;
      v22 = 2112;
      v23 = v4;
      v14 = "%{public}@Invalid device destination: %@";
      v15 = v12;
      v16 = OS_LOG_TYPE_INFO;
      v17 = 22;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v6 = &off_2786663C0;
  if ([_HMDLocalDeviceHandle isValidDestination:v4]|| (v6 = off_2786663B8, [_HMDGlobalDeviceHandle isValidDestination:v4]))
  {
    v7 = [objc_alloc(*v6) initWithDestination:v4];
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