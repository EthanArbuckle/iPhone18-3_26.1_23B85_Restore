@interface LNConstraintContextFeatureFlags
- (LNConstraintContextFeatureFlags)initWithDomain:(id)a3;
- (id)valueForKey:(id)a3;
@end

@implementation LNConstraintContextFeatureFlags

- (id)valueForKey:(id)a3
{
  domain = self->_domain;
  v4 = a3;
  if (domain)
  {
    [(NSString *)domain UTF8String];
    [v4 UTF8String];

    v5 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  }

  else
  {
    v5 = [objc_alloc(objc_opt_class()) initWithDomain:v4];
  }

  return v5;
}

- (LNConstraintContextFeatureFlags)initWithDomain:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LNConstraintContextFeatureFlags;
  v6 = [(LNConstraintContextFeatureFlags *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_domain, a3);
  }

  return v7;
}

@end