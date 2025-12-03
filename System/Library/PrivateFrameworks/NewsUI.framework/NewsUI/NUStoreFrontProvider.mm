@interface NUStoreFrontProvider
- (NSString)storeFrontIdentifier;
- (NUStoreFrontProvider)initWithAppleAccount:(id)account;
@end

@implementation NUStoreFrontProvider

- (NUStoreFrontProvider)initWithAppleAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = NUStoreFrontProvider;
  v6 = [(NUStoreFrontProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appleAccount, account);
  }

  return v7;
}

- (NSString)storeFrontIdentifier
{
  appleAccount = [(NUStoreFrontProvider *)self appleAccount];
  contentStoreFrontID = [appleAccount contentStoreFrontID];

  return contentStoreFrontID;
}

@end