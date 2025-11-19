@interface _HMDDeviceHandle
+ (BOOL)isValidDestination:(id)a3;
+ (NSUUID)identifierNamespace;
- (NSString)destination;
- (_HMDDeviceHandle)init;
- (_HMDDeviceHandle)initWithCoder:(id)a3;
- (_HMDDeviceHandle)initWithDestination:(id)a3;
- (_HMDDeviceHandle)initWithIdentifier:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HMDDeviceHandle

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_HMDDeviceHandle *)self identifier];
  [v4 encodeObject:v5 forKey:@"HM.identifier"];
}

- (_HMDDeviceHandle)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.identifier"];

  v6 = [(_HMDDeviceHandle *)self initWithIdentifier:v5];
  return v6;
}

- (_HMDDeviceHandle)initWithIdentifier:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v15.receiver = self;
    v15.super_class = _HMDDeviceHandle;
    v5 = [(_HMDDeviceHandle *)&v15 init];
    if (v5)
    {
      v6 = [v4 copy];
      identifier = v5->_identifier;
      v5->_identifier = v6;
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
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Missing required parameter 'identifier'", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

- (_HMDDeviceHandle)initWithDestination:(id)a3
{
  v4 = a3;
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  v5 = _HMFPreconditionFailureWithFormat();
  [(_HMDDeviceHandle *)v5 destination];
}

- (NSString)destination
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (_HMDDeviceHandle)init
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

+ (NSUUID)identifierNamespace
{
  if (identifierNamespace_onceToken != -1)
  {
    dispatch_once(&identifierNamespace_onceToken, &__block_literal_global_25546);
  }

  v3 = identifierNamespace_namespace;

  return v3;
}

+ (BOOL)isValidDestination:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

@end