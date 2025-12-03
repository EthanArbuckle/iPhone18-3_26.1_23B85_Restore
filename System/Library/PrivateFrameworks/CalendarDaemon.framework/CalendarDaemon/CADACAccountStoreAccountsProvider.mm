@interface CADACAccountStoreAccountsProvider
- (CADACAccountStoreAccountsProvider)initWithAccountStore:(id)store;
- (id)accountWithIdentifier:(id)identifier;
- (id)accounts;
@end

@implementation CADACAccountStoreAccountsProvider

- (CADACAccountStoreAccountsProvider)initWithAccountStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = CADACAccountStoreAccountsProvider;
  v6 = [(CADACAccountStoreAccountsProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountStore, store);
  }

  return v7;
}

- (id)accounts
{
  accountStore = [(CADACAccountStoreAccountsProvider *)self accountStore];
  accounts = [accountStore accounts];

  return accounts;
}

- (id)accountWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  accountStore = [(CADACAccountStoreAccountsProvider *)self accountStore];
  v6 = [accountStore accountWithIdentifier:identifierCopy];

  return v6;
}

@end