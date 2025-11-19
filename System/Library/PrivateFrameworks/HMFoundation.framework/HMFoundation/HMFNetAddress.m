@interface HMFNetAddress
+ (id)localAddress;
- (BOOL)isEqual:(id)a3;
- (HMFNetAddress)init;
- (HMFNetAddress)initWithHostname:(id)a3;
- (HMFNetAddress)initWithSocketAddress:(const sockaddr *)a3;
- (NSString)addressString;
- (id)attributeDescriptions;
- (id)dataUsingEncoding:(unint64_t)a3;
- (unint64_t)addressFamily;
- (unint64_t)hash;
@end

@implementation HMFNetAddress

+ (id)localAddress
{
  if (qword_280AFC6C0 != -1)
  {
    dispatch_once(&qword_280AFC6C0, &__block_literal_global_41);
  }

  v3 = _MergedGlobals_73;

  return v3;
}

void __29__HMFNetAddress_localAddress__block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = xmmword_22AE82970;
  v0 = [[HMFNetAddress alloc] initWithSocketAddress:&v3];
  v1 = _MergedGlobals_73;
  _MergedGlobals_73 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (HMFNetAddress)init
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

- (HMFNetAddress)initWithSocketAddress:(const sockaddr *)a3
{
  v24 = *MEMORY[0x277D85DE8];
  sa_family = a3->sa_family;
  if (sa_family == 2)
  {
    v6 = off_2786E64E8;
  }

  else
  {
    if (sa_family != 30)
    {
      goto LABEL_9;
    }

    v6 = off_2786E64F0;
  }

  v7 = [objc_alloc(*v6) initWithSocketAddress:a3];
  if (v7)
  {
    v8 = v7;
    v19.receiver = self;
    v19.super_class = HMFNetAddress;
    v9 = [(HMFNetAddress *)&v19 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_internal, v8);
    }

    v11 = v10;

    v12 = v11;
    goto LABEL_12;
  }

LABEL_9:
  v13 = objc_autoreleasePoolPush();
  v11 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = HMFGetLogIdentifier(v11);
    v16 = a3->sa_family;
    *buf = 138543618;
    v21 = v15;
    v22 = 1024;
    v23 = v16;
    _os_log_impl(&dword_22ADEC000, v14, OS_LOG_TYPE_ERROR, "%{public}@Invalid socket address family: 0x%02x", buf, 0x12u);
  }

  objc_autoreleasePoolPop(v13);
  v12 = 0;
LABEL_12:

  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

- (HMFNetAddress)initWithHostname:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v15.receiver = self;
    v15.super_class = HMFNetAddress;
    v5 = [(HMFNetAddress *)&v15 init];
    if (v5)
    {
      v6 = [[_HMFNetAddressHostname alloc] initWithHostname:v4];
      internal = v5->_internal;
      v5->_internal = &v6->super;
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
      v12 = HMFGetLogIdentifier(v8);
      *buf = 138543362;
      v17 = v12;
      _os_log_impl(&dword_22ADEC000, v11, OS_LOG_TYPE_ERROR, "%{public}@Invalid hostname", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

- (unint64_t)hash
{
  v2 = [(HMFNetAddress *)self internal];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(HMFNetAddress *)self internal];
      v6 = [(HMFNetAddress *)v4 internal];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [HMFAttributeDescription alloc];
  v4 = [(HMFNetAddress *)self addressString];
  v5 = [(HMFAttributeDescription *)v3 initWithName:@"Address" value:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (unint64_t)addressFamily
{
  v2 = [(HMFNetAddress *)self internal];
  v3 = [v2 addressFamily];

  return v3;
}

- (NSString)addressString
{
  v2 = [(HMFNetAddress *)self internal];
  v3 = [v2 addressString];

  return v3;
}

- (id)dataUsingEncoding:(unint64_t)a3
{
  v4 = [(HMFNetAddress *)self internal];
  v5 = [v4 dataUsingEncoding:a3];

  return v5;
}

@end