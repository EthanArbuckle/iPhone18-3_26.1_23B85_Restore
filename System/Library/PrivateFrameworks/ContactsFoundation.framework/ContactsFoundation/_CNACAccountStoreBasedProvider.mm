@interface _CNACAccountStoreBasedProvider
- (BOOL)isAccountSyncable:(id)syncable;
- (BOOL)isAnyAccountSyncableIgnoringAccount:(id)account;
- (_CNACAccountStoreBasedProvider)initWithAccountStore:(id)store;
- (id)accountsWithAccountType:(id)type;
- (id)allAccountTypes;
- (id)childAccountsForAccount:(id)account;
@end

@implementation _CNACAccountStoreBasedProvider

- (_CNACAccountStoreBasedProvider)initWithAccountStore:(id)store
{
  storeCopy = store;
  v10.receiver = self;
  v10.super_class = _CNACAccountStoreBasedProvider;
  v6 = [(_CNACAccountStoreBasedProvider *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountStore, store);
    v8 = v7;
  }

  return v7;
}

- (id)allAccountTypes
{
  accountStore = [(_CNACAccountStoreBasedProvider *)self accountStore];
  allAccountTypes = [accountStore allAccountTypes];
  v4 = [allAccountTypes _cn_filter:&__block_literal_global_71];

  return v4;
}

- (id)accountsWithAccountType:(id)type
{
  typeCopy = type;
  accountStore = [(_CNACAccountStoreBasedProvider *)self accountStore];
  v6 = [accountStore accountsWithAccountType:typeCopy];

  return v6;
}

- (id)childAccountsForAccount:(id)account
{
  accountCopy = account;
  accountStore = [(_CNACAccountStoreBasedProvider *)self accountStore];
  v6 = [accountStore childAccountsForAccount:accountCopy];

  return v6;
}

- (BOOL)isAccountSyncable:(id)syncable
{
  accountType = [syncable accountType];
  syncableDataclasses = [accountType syncableDataclasses];
  v5 = [syncableDataclasses containsObject:*MEMORY[0x1E6959AF0]];

  return v5;
}

- (BOOL)isAnyAccountSyncableIgnoringAccount:(id)account
{
  identifier = [account identifier];
  v5 = identifier;
  v6 = &stru_1EF441028;
  if (identifier)
  {
    v6 = identifier;
  }

  v7 = v6;

  allAccountTypes = [(_CNACAccountStoreBasedProvider *)self allAccountTypes];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70___CNACAccountStoreBasedProvider_isAnyAccountSyncableIgnoringAccount___block_invoke;
  v11[3] = &unk_1E6ED7F98;
  v11[4] = self;
  v12 = v7;
  v9 = v7;
  LOBYTE(v7) = [allAccountTypes _cn_any:v11];

  return v7;
}

@end