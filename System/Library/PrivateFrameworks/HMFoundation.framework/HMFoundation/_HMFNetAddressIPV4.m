@interface _HMFNetAddressIPV4
- (BOOL)isEqual:(id)a3;
- (_HMFNetAddressIPV4)init;
- (_HMFNetAddressIPV4)initWithSocketAddress:(const sockaddr *)a3;
- (id)addressString;
- (id)dataUsingEncoding:(unint64_t)a3;
@end

@implementation _HMFNetAddressIPV4

- (_HMFNetAddressIPV4)init
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

- (_HMFNetAddressIPV4)initWithSocketAddress:(const sockaddr *)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if (a3->sa_family == 2)
  {
    v13.receiver = self;
    v13.super_class = _HMFNetAddressIPV4;
    v5 = [(_HMFNetAddressIPV4 *)&v13 init];
    if (v5)
    {
      *(v5 + 24) = *a3;
    }

    v6 = v5;
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
      *buf = 138543362;
      v15 = v10;
      _os_log_impl(&dword_22ADEC000, v9, OS_LOG_TYPE_ERROR, "%{public}@Invalid sockaddr, must be AF_INET", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
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
    v7 = v6 && self->_in.sin_addr.s_addr == v6->_in.sin_addr.s_addr && self->_in.sin_port == v6->_in.sin_port;
  }

  return v7;
}

- (id)addressString
{
  v2 = MEMORY[0x277CCACA8];
  v3.s_addr = self->_in.sin_addr.s_addr;
  v4 = inet_ntoa(v3);

  return [v2 stringWithUTF8String:v4];
}

- (id)dataUsingEncoding:(unint64_t)a3
{
  if (a3 == 1)
  {
    v5 = [MEMORY[0x277CBEA90] dataWithBytes:&self->_in length:{16, v3}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end