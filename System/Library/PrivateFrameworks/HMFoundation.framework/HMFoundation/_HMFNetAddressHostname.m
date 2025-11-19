@interface _HMFNetAddressHostname
+ (id)normalizedHostname:(id)a3;
- (BOOL)isEqual:(id)a3;
- (_HMFNetAddressHostname)init;
- (_HMFNetAddressHostname)initWithHostname:(id)a3;
- (unint64_t)hash;
@end

@implementation _HMFNetAddressHostname

- (_HMFNetAddressHostname)init
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

+ (id)normalizedHostname:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@"." options:4];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL || (v6 = v4, v7 = v5, v4 != [v3 length] - 1))
  {
    v8 = [v3 copy];
  }

  else
  {
    v8 = [v3 stringByReplacingCharactersInRange:v6 withString:{v7, &stru_283EBDA30}];
  }

  v9 = v8;

  return v9;
}

- (_HMFNetAddressHostname)initWithHostname:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v15.receiver = self;
    v15.super_class = _HMFNetAddressHostname;
    v5 = [(_HMFNetAddressHostname *)&v15 init];
    if (v5)
    {
      v6 = [_HMFNetAddressHostname normalizedHostname:v4];
      hostname = v5->_hostname;
      v5->_hostname = v6;
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
  v2 = [(_HMFNetAddressHostname *)self hostname];
  v3 = [v2 hash];

  return v3;
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
      v7 = [(_HMFNetAddressHostname *)self hostname];
      v8 = [(_HMFNetAddressHostname *)v6 hostname];
      v9 = [v7 isEqualToString:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

@end