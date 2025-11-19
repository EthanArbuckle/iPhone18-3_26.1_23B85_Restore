@interface DIVerificationSessionContext
- (DIVerificationSessionContext)initWithCoder:(id)a3;
- (DIVerificationSessionContext)initWithName:(id)a3 tier:(id)a4 serviceUrl:(id)a5 httpHeaders:(id)a6;
- (NSArray)preferredLanguages;
- (NSDictionary)httpHeaders;
- (NSString)regionCode;
- (NSString)serviceName;
- (NSString)serviceURL;
- (NSString)tier;
- (unint64_t)invocationReason;
- (void)encodeWithCoder:(id)a3;
- (void)setHttpHeaders:(id)a3;
- (void)setInvocationReason:(unint64_t)a3;
- (void)setPreferredLanguages:(id)a3;
- (void)setRegionCode:(id)a3;
- (void)setServiceName:(id)a3;
- (void)setServiceURL:(id)a3;
- (void)setTier:(id)a3;
@end

@implementation DIVerificationSessionContext

- (DIVerificationSessionContext)initWithName:(id)a3 tier:(id)a4 serviceUrl:(id)a5 httpHeaders:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if ([v11 length])
  {
    v18.receiver = self;
    v18.super_class = DIVerificationSessionContext;
    v15 = [(DIVerificationSessionContext *)&v18 init];
    v16 = v15;
    if (v15)
    {
      v15->_lock._os_unfair_lock_opaque = 0;
      objc_storeStrong(&v15->_serviceName, a3);
      objc_storeStrong(&v16->_tier, a4);
      objc_storeStrong(&v16->_serviceURL, a5);
      objc_storeStrong(&v16->_httpHeaders, a6);
    }
  }

  else
  {

    v16 = 0;
  }

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [v4 encodeObject:self->_serviceName forKey:@"serviceName"];
  [v4 encodeObject:self->_tier forKey:@"tier"];
  [v4 encodeObject:self->_serviceURL forKey:@"serviceURL"];
  [v4 encodeObject:self->_httpHeaders forKey:@"httpHeaders"];
  [v4 encodeObject:self->_regionCode forKey:@"regionCode"];
  [v4 encodeInteger:self->_invocationReason forKey:@"invocationReason"];
  [v4 encodeObject:self->_preferredLanguages forKey:@"preferredLanguages"];

  os_unfair_lock_unlock(&self->_lock);
}

- (DIVerificationSessionContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceName"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceURL"];
  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"httpHeaders"];

  v12 = [(DIVerificationSessionContext *)self initWithName:v5 tier:v6 serviceUrl:v7 httpHeaders:v11];
  if (v12)
  {
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"regionCode"];
    regionCode = v12->_regionCode;
    v12->_regionCode = v13;

    v12->_invocationReason = [v4 decodeIntegerForKey:@"invocationReason"];
    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"preferredLanguages"];
    preferredLanguages = v12->_preferredLanguages;
    v12->_preferredLanguages = v18;
  }

  return v12;
}

- (void)setServiceName:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_serviceName != v6)
  {
    v4 = [(NSString *)v6 copyWithZone:0];
    serviceName = self->_serviceName;
    self->_serviceName = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setTier:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_tier != v6)
  {
    v4 = [(NSString *)v6 copyWithZone:0];
    tier = self->_tier;
    self->_tier = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setServiceURL:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_serviceURL != v6)
  {
    v4 = [(NSString *)v6 copyWithZone:0];
    serviceURL = self->_serviceURL;
    self->_serviceURL = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setHttpHeaders:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_httpHeaders != v6)
  {
    v4 = [(NSDictionary *)v6 copyWithZone:0];
    httpHeaders = self->_httpHeaders;
    self->_httpHeaders = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setRegionCode:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_regionCode != v6)
  {
    v4 = [(NSString *)v6 copyWithZone:0];
    regionCode = self->_regionCode;
    self->_regionCode = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setInvocationReason:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_invocationReason = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setPreferredLanguages:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_preferredLanguages != v6)
  {
    v4 = [(NSArray *)v6 copyWithZone:0];
    preferredLanguages = self->_preferredLanguages;
    self->_preferredLanguages = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)serviceName
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_serviceName;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSString)tier
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_tier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSString)serviceURL
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_serviceURL;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSDictionary)httpHeaders
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_httpHeaders;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSString)regionCode
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_regionCode;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (unint64_t)invocationReason
{
  os_unfair_lock_lock(&self->_lock);
  invocationReason = self->_invocationReason;
  os_unfair_lock_unlock(&self->_lock);
  return invocationReason;
}

- (NSArray)preferredLanguages
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_preferredLanguages;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

@end