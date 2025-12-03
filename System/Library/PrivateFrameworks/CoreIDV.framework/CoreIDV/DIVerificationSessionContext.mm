@interface DIVerificationSessionContext
- (DIVerificationSessionContext)initWithCoder:(id)coder;
- (DIVerificationSessionContext)initWithName:(id)name tier:(id)tier serviceUrl:(id)url httpHeaders:(id)headers;
- (NSArray)preferredLanguages;
- (NSDictionary)httpHeaders;
- (NSString)regionCode;
- (NSString)serviceName;
- (NSString)serviceURL;
- (NSString)tier;
- (unint64_t)invocationReason;
- (void)encodeWithCoder:(id)coder;
- (void)setHttpHeaders:(id)headers;
- (void)setInvocationReason:(unint64_t)reason;
- (void)setPreferredLanguages:(id)languages;
- (void)setRegionCode:(id)code;
- (void)setServiceName:(id)name;
- (void)setServiceURL:(id)l;
- (void)setTier:(id)tier;
@end

@implementation DIVerificationSessionContext

- (DIVerificationSessionContext)initWithName:(id)name tier:(id)tier serviceUrl:(id)url httpHeaders:(id)headers
{
  nameCopy = name;
  tierCopy = tier;
  urlCopy = url;
  headersCopy = headers;
  if ([nameCopy length])
  {
    v18.receiver = self;
    v18.super_class = DIVerificationSessionContext;
    v15 = [(DIVerificationSessionContext *)&v18 init];
    v16 = v15;
    if (v15)
    {
      v15->_lock._os_unfair_lock_opaque = 0;
      objc_storeStrong(&v15->_serviceName, name);
      objc_storeStrong(&v16->_tier, tier);
      objc_storeStrong(&v16->_serviceURL, url);
      objc_storeStrong(&v16->_httpHeaders, headers);
    }
  }

  else
  {

    v16 = 0;
  }

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  os_unfair_lock_lock(&self->_lock);
  [coderCopy encodeObject:self->_serviceName forKey:@"serviceName"];
  [coderCopy encodeObject:self->_tier forKey:@"tier"];
  [coderCopy encodeObject:self->_serviceURL forKey:@"serviceURL"];
  [coderCopy encodeObject:self->_httpHeaders forKey:@"httpHeaders"];
  [coderCopy encodeObject:self->_regionCode forKey:@"regionCode"];
  [coderCopy encodeInteger:self->_invocationReason forKey:@"invocationReason"];
  [coderCopy encodeObject:self->_preferredLanguages forKey:@"preferredLanguages"];

  os_unfair_lock_unlock(&self->_lock);
}

- (DIVerificationSessionContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceName"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceURL"];
  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"httpHeaders"];

  v12 = [(DIVerificationSessionContext *)self initWithName:v5 tier:v6 serviceUrl:v7 httpHeaders:v11];
  if (v12)
  {
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"regionCode"];
    regionCode = v12->_regionCode;
    v12->_regionCode = v13;

    v12->_invocationReason = [coderCopy decodeIntegerForKey:@"invocationReason"];
    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"preferredLanguages"];
    preferredLanguages = v12->_preferredLanguages;
    v12->_preferredLanguages = v18;
  }

  return v12;
}

- (void)setServiceName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock(&self->_lock);
  if (self->_serviceName != nameCopy)
  {
    v4 = [(NSString *)nameCopy copyWithZone:0];
    serviceName = self->_serviceName;
    self->_serviceName = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setTier:(id)tier
{
  tierCopy = tier;
  os_unfair_lock_lock(&self->_lock);
  if (self->_tier != tierCopy)
  {
    v4 = [(NSString *)tierCopy copyWithZone:0];
    tier = self->_tier;
    self->_tier = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setServiceURL:(id)l
{
  lCopy = l;
  os_unfair_lock_lock(&self->_lock);
  if (self->_serviceURL != lCopy)
  {
    v4 = [(NSString *)lCopy copyWithZone:0];
    serviceURL = self->_serviceURL;
    self->_serviceURL = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setHttpHeaders:(id)headers
{
  headersCopy = headers;
  os_unfair_lock_lock(&self->_lock);
  if (self->_httpHeaders != headersCopy)
  {
    v4 = [(NSDictionary *)headersCopy copyWithZone:0];
    httpHeaders = self->_httpHeaders;
    self->_httpHeaders = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setRegionCode:(id)code
{
  codeCopy = code;
  os_unfair_lock_lock(&self->_lock);
  if (self->_regionCode != codeCopy)
  {
    v4 = [(NSString *)codeCopy copyWithZone:0];
    regionCode = self->_regionCode;
    self->_regionCode = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setInvocationReason:(unint64_t)reason
{
  os_unfair_lock_lock(&self->_lock);
  self->_invocationReason = reason;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setPreferredLanguages:(id)languages
{
  languagesCopy = languages;
  os_unfair_lock_lock(&self->_lock);
  if (self->_preferredLanguages != languagesCopy)
  {
    v4 = [(NSArray *)languagesCopy copyWithZone:0];
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