@interface CNUIPRSPosterConfiguration
- (CNUIPRSPosterConfiguration)initWithPosterConfiguration:(id)a3;
@end

@implementation CNUIPRSPosterConfiguration

- (CNUIPRSPosterConfiguration)initWithPosterConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CNUIPRSPosterConfiguration;
  v6 = [(CNUIPRSPosterConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedPosterConfiguration, a3);
  }

  return v7;
}

@end