@interface _HMFNetAddressHostname
+ (id)normalizedHostname:(id)hostname;
- (BOOL)isEqual:(id)equal;
- (_HMFNetAddressHostname)init;
- (_HMFNetAddressHostname)initWithHostname:(id)hostname;
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

+ (id)normalizedHostname:(id)hostname
{
  hostnameCopy = hostname;
  v4 = [hostnameCopy rangeOfString:@"." options:4];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL || (v6 = v4, v7 = v5, v4 != [hostnameCopy length] - 1))
  {
    v8 = [hostnameCopy copy];
  }

  else
  {
    v8 = [hostnameCopy stringByReplacingCharactersInRange:v6 withString:{v7, &stru_283EBDA30}];
  }

  v9 = v8;

  return v9;
}

- (_HMFNetAddressHostname)initWithHostname:(id)hostname
{
  v18 = *MEMORY[0x277D85DE8];
  hostnameCopy = hostname;
  if (hostnameCopy)
  {
    v15.receiver = self;
    v15.super_class = _HMFNetAddressHostname;
    v5 = [(_HMFNetAddressHostname *)&v15 init];
    if (v5)
    {
      v6 = [_HMFNetAddressHostname normalizedHostname:hostnameCopy];
      hostname = v5->_hostname;
      v5->_hostname = v6;
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
      v12 = HMFGetLogIdentifier(selfCopy);
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
  hostname = [(_HMFNetAddressHostname *)self hostname];
  v3 = [hostname hash];

  return v3;
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
      hostname = [(_HMFNetAddressHostname *)self hostname];
      hostname2 = [(_HMFNetAddressHostname *)v6 hostname];
      v9 = [hostname isEqualToString:hostname2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

@end