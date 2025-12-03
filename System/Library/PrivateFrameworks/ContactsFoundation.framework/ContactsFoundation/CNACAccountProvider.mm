@interface CNACAccountProvider
+ (id)providerWithAccounts:(id)accounts;
+ (id)providerWithStore:(id)store;
@end

@implementation CNACAccountProvider

+ (id)providerWithStore:(id)store
{
  storeCopy = store;
  v4 = [[_CNACAccountStoreBasedProvider alloc] initWithAccountStore:storeCopy];

  return v4;
}

+ (id)providerWithAccounts:(id)accounts
{
  accountsCopy = accounts;
  v4 = [[_CNACAccountStaticProvider alloc] initWithAccounts:accountsCopy];

  return v4;
}

@end