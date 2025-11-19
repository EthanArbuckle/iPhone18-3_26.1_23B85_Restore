@interface CNACAccountProvider
+ (id)providerWithAccounts:(id)a3;
+ (id)providerWithStore:(id)a3;
@end

@implementation CNACAccountProvider

+ (id)providerWithStore:(id)a3
{
  v3 = a3;
  v4 = [[_CNACAccountStoreBasedProvider alloc] initWithAccountStore:v3];

  return v4;
}

+ (id)providerWithAccounts:(id)a3
{
  v3 = a3;
  v4 = [[_CNACAccountStaticProvider alloc] initWithAccounts:v3];

  return v4;
}

@end