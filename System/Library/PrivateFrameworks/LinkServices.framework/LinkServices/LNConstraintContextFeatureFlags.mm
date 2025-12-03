@interface LNConstraintContextFeatureFlags
- (LNConstraintContextFeatureFlags)initWithDomain:(id)domain;
- (id)valueForKey:(id)key;
@end

@implementation LNConstraintContextFeatureFlags

- (id)valueForKey:(id)key
{
  domain = self->_domain;
  keyCopy = key;
  if (domain)
  {
    [(NSString *)domain UTF8String];
    [keyCopy UTF8String];

    v5 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  }

  else
  {
    v5 = [objc_alloc(objc_opt_class()) initWithDomain:keyCopy];
  }

  return v5;
}

- (LNConstraintContextFeatureFlags)initWithDomain:(id)domain
{
  domainCopy = domain;
  v9.receiver = self;
  v9.super_class = LNConstraintContextFeatureFlags;
  v6 = [(LNConstraintContextFeatureFlags *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_domain, domain);
  }

  return v7;
}

@end