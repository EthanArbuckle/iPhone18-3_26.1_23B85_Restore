@interface BSServiceFeatureFlag
- (BOOL)isEnabled;
- (BSServiceFeatureFlag)initWithDomain:(id)a3 featureName:(id)a4;
- (id)description;
@end

@implementation BSServiceFeatureFlag

- (BSServiceFeatureFlag)initWithDomain:(id)a3 featureName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = BSServiceFeatureFlag;
  v8 = [(BSServiceFeatureFlag *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    domain = v8->_domain;
    v8->_domain = v9;

    v11 = [v7 copy];
    featureName = v8->_featureName;
    v8->_featureName = v11;
  }

  return v8;
}

- (BOOL)isEnabled
{
  if (__explicitResolver)
  {
    v3 = *(__explicitResolver + 16);

    return v3();
  }

  else
  {
    [(NSString *)self->_domain UTF8String];
    [(NSString *)self->_featureName UTF8String];

    return _os_feature_enabled_impl();
  }
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v3 appendString:self->_domain withName:@"domain"];
  [v3 appendString:self->_featureName withName:@"featureName"];
  v4 = [v3 build];

  return v4;
}

@end