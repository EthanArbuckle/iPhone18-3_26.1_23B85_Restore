@interface NUStoreFrontProvider
- (NSString)storeFrontIdentifier;
- (NUStoreFrontProvider)initWithAppleAccount:(id)a3;
@end

@implementation NUStoreFrontProvider

- (NUStoreFrontProvider)initWithAppleAccount:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NUStoreFrontProvider;
  v6 = [(NUStoreFrontProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appleAccount, a3);
  }

  return v7;
}

- (NSString)storeFrontIdentifier
{
  v2 = [(NUStoreFrontProvider *)self appleAccount];
  v3 = [v2 contentStoreFrontID];

  return v3;
}

@end