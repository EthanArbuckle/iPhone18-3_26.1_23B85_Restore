@interface _CNACAccountStoreBasedProvider
- (BOOL)isAccountSyncable:(id)a3;
- (BOOL)isAnyAccountSyncableIgnoringAccount:(id)a3;
- (_CNACAccountStoreBasedProvider)initWithAccountStore:(id)a3;
- (id)accountsWithAccountType:(id)a3;
- (id)allAccountTypes;
- (id)childAccountsForAccount:(id)a3;
@end

@implementation _CNACAccountStoreBasedProvider

- (_CNACAccountStoreBasedProvider)initWithAccountStore:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _CNACAccountStoreBasedProvider;
  v6 = [(_CNACAccountStoreBasedProvider *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountStore, a3);
    v8 = v7;
  }

  return v7;
}

- (id)allAccountTypes
{
  v2 = [(_CNACAccountStoreBasedProvider *)self accountStore];
  v3 = [v2 allAccountTypes];
  v4 = [v3 _cn_filter:&__block_literal_global_71];

  return v4;
}

- (id)accountsWithAccountType:(id)a3
{
  v4 = a3;
  v5 = [(_CNACAccountStoreBasedProvider *)self accountStore];
  v6 = [v5 accountsWithAccountType:v4];

  return v6;
}

- (id)childAccountsForAccount:(id)a3
{
  v4 = a3;
  v5 = [(_CNACAccountStoreBasedProvider *)self accountStore];
  v6 = [v5 childAccountsForAccount:v4];

  return v6;
}

- (BOOL)isAccountSyncable:(id)a3
{
  v3 = [a3 accountType];
  v4 = [v3 syncableDataclasses];
  v5 = [v4 containsObject:*MEMORY[0x1E6959AF0]];

  return v5;
}

- (BOOL)isAnyAccountSyncableIgnoringAccount:(id)a3
{
  v4 = [a3 identifier];
  v5 = v4;
  v6 = &stru_1EF441028;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [(_CNACAccountStoreBasedProvider *)self allAccountTypes];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70___CNACAccountStoreBasedProvider_isAnyAccountSyncableIgnoringAccount___block_invoke;
  v11[3] = &unk_1E6ED7F98;
  v11[4] = self;
  v12 = v7;
  v9 = v7;
  LOBYTE(v7) = [v8 _cn_any:v11];

  return v7;
}

@end