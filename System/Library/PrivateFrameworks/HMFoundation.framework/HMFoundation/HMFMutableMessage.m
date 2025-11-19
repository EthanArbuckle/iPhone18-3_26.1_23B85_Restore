@interface HMFMutableMessage
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)setActivity:(id)a3;
- (void)setHeaderValue:(id)a3 forKey:(id)a4;
- (void)setHeaders:(id)a3;
- (void)setName:(id)a3;
- (void)setQualityOfService:(int64_t)a3;
- (void)setTimeout:(double)a3;
- (void)setTransport:(id)a3;
- (void)setUntrustedClientIdentifier:(id)a3;
- (void)setUserInfo:(id)a3;
- (void)setUserInfoValue:(id)a3 forKey:(id)a4;
@end

@implementation HMFMutableMessage

- (void)setName:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(HMFMessage *)self internal];
    [v5 setName:v4];
  }
}

- (void)setTimeout:(double)a3
{
  if (a3 >= 0.0)
  {
    [(HMFMessageInternal *)self->super._internal setTimeout:?];
  }
}

- (void)setQualityOfService:(int64_t)a3
{
  v4 = [(HMFMessage *)self internal];
  [v4 setQualityOfService:a3];
}

- (void)setActivity:(id)a3
{
  v4 = a3;
  v5 = [(HMFMessage *)self internal];
  [v5 setActivity:v4];
}

- (void)setUserInfo:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
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
        v13 = v4;
        _os_log_impl(&dword_22ADEC000, v6, OS_LOG_TYPE_FAULT, "%{public}@Invalid userInfo class provided, %@, for message, see <rdar://problem/37677418>", &v10, 0x16u);
      }

      objc_autoreleasePoolPop(v5);
    }
  }

  v8 = [(HMFMessage *)self internal];
  [v8 setUserInfo:v4];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setUserInfoValue:(id)a3 forKey:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = [(HMFMessage *)self userInfo];
    v11 = [v8 mutableCopy];

    [v11 setObject:v7 forKeyedSubscript:v6];
    v9 = [(HMFMessage *)self internal];
    v10 = [v11 copy];
    [v9 setUserInfo:v10];
  }
}

- (void)setHeaders:(id)a3
{
  v4 = a3;
  v5 = [(HMFMessage *)self internal];
  [v5 setHeaders:v4];
}

- (void)setHeaderValue:(id)a3 forKey:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = [(HMFMessage *)self headers];
    v11 = [v8 mutableCopy];

    [v11 setObject:v7 forKeyedSubscript:v6];
    v9 = [(HMFMessage *)self internal];
    v10 = [v11 copy];
    [v9 setHeaders:v10];
  }
}

- (void)setTransport:(id)a3
{
  v4 = a3;
  v5 = [(HMFMessage *)self internal];
  [v5 setTransport:v4];
}

- (void)setUntrustedClientIdentifier:(id)a3
{
  v4 = [a3 copy];
  [(HMFMutableMessage *)self setHeaderValue:v4 forKey:@"HMF.untrustedClientIdentifier"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(HMFMessage *)self internal];
  v5 = [v4 copyWithZone:a3];

  v6 = [[HMFMessage allocWithZone:?], "initWithInternalMessage:", v5];
  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [(HMFMessage *)self internal];
  v5 = [v4 copyWithZone:a3];

  v6 = [MEMORY[0x277CCAD78] UUID];
  [v5 setIdentifier:v6];

  v7 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithInternalMessage:", v5}];
  return v7;
}

@end