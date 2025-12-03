@interface HMFMutableMessage
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)setActivity:(id)activity;
- (void)setHeaderValue:(id)value forKey:(id)key;
- (void)setHeaders:(id)headers;
- (void)setName:(id)name;
- (void)setQualityOfService:(int64_t)service;
- (void)setTimeout:(double)timeout;
- (void)setTransport:(id)transport;
- (void)setUntrustedClientIdentifier:(id)identifier;
- (void)setUserInfo:(id)info;
- (void)setUserInfoValue:(id)value forKey:(id)key;
@end

@implementation HMFMutableMessage

- (void)setName:(id)name
{
  if (name)
  {
    nameCopy = name;
    internal = [(HMFMessage *)self internal];
    [internal setName:nameCopy];
  }
}

- (void)setTimeout:(double)timeout
{
  if (timeout >= 0.0)
  {
    [(HMFMessageInternal *)self->super._internal setTimeout:?];
  }
}

- (void)setQualityOfService:(int64_t)service
{
  internal = [(HMFMessage *)self internal];
  [internal setQualityOfService:service];
}

- (void)setActivity:(id)activity
{
  activityCopy = activity;
  internal = [(HMFMessage *)self internal];
  [internal setActivity:activityCopy];
}

- (void)setUserInfo:(id)info
{
  v14 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if (infoCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        v7 = HMFGetLogIdentifier(0);
        v10 = 138543618;
        v11 = v7;
        v12 = 2112;
        v13 = infoCopy;
        _os_log_impl(&dword_22ADEC000, v6, OS_LOG_TYPE_FAULT, "%{public}@Invalid userInfo class provided, %@, for message, see <rdar://problem/37677418>", &v10, 0x16u);
      }

      objc_autoreleasePoolPop(v5);
    }
  }

  internal = [(HMFMessage *)self internal];
  [internal setUserInfo:infoCopy];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setUserInfoValue:(id)value forKey:(id)key
{
  if (key)
  {
    keyCopy = key;
    valueCopy = value;
    userInfo = [(HMFMessage *)self userInfo];
    v11 = [userInfo mutableCopy];

    [v11 setObject:valueCopy forKeyedSubscript:keyCopy];
    internal = [(HMFMessage *)self internal];
    v10 = [v11 copy];
    [internal setUserInfo:v10];
  }
}

- (void)setHeaders:(id)headers
{
  headersCopy = headers;
  internal = [(HMFMessage *)self internal];
  [internal setHeaders:headersCopy];
}

- (void)setHeaderValue:(id)value forKey:(id)key
{
  if (key)
  {
    keyCopy = key;
    valueCopy = value;
    headers = [(HMFMessage *)self headers];
    v11 = [headers mutableCopy];

    [v11 setObject:valueCopy forKeyedSubscript:keyCopy];
    internal = [(HMFMessage *)self internal];
    v10 = [v11 copy];
    [internal setHeaders:v10];
  }
}

- (void)setTransport:(id)transport
{
  transportCopy = transport;
  internal = [(HMFMessage *)self internal];
  [internal setTransport:transportCopy];
}

- (void)setUntrustedClientIdentifier:(id)identifier
{
  v4 = [identifier copy];
  [(HMFMutableMessage *)self setHeaderValue:v4 forKey:@"HMF.untrustedClientIdentifier"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  internal = [(HMFMessage *)self internal];
  v5 = [internal copyWithZone:zone];

  v6 = [[HMFMessage allocWithZone:?], "initWithInternalMessage:", v5];
  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  internal = [(HMFMessage *)self internal];
  v5 = [internal copyWithZone:zone];

  uUID = [MEMORY[0x277CCAD78] UUID];
  [v5 setIdentifier:uUID];

  v7 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithInternalMessage:", v5}];
  return v7;
}

@end