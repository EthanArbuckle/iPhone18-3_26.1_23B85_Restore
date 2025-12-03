@interface CNUIPRSPosterConfiguration
- (CNUIPRSPosterConfiguration)initWithPosterConfiguration:(id)configuration;
@end

@implementation CNUIPRSPosterConfiguration

- (CNUIPRSPosterConfiguration)initWithPosterConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = CNUIPRSPosterConfiguration;
  v6 = [(CNUIPRSPosterConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedPosterConfiguration, configuration);
  }

  return v7;
}

@end