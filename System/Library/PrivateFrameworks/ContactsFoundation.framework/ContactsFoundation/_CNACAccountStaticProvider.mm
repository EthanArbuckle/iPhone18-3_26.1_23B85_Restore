@interface _CNACAccountStaticProvider
- (BOOL)isAccountSyncable:(id)syncable;
- (_CNACAccountStaticProvider)initWithAccounts:(id)accounts;
- (id)accountsWithAccountType:(id)type;
- (id)allAccountTypes;
- (id)childAccountsForAccount:(id)account;
@end

@implementation _CNACAccountStaticProvider

- (_CNACAccountStaticProvider)initWithAccounts:(id)accounts
{
  accountsCopy = accounts;
  v10.receiver = self;
  v10.super_class = _CNACAccountStaticProvider;
  v6 = [(_CNACAccountStaticProvider *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountChildAccountsPairs, accounts);
    v8 = v7;
  }

  return v7;
}

- (id)allAccountTypes
{
  accountChildAccountsPairs = [(_CNACAccountStaticProvider *)self accountChildAccountsPairs];
  v3 = [accountChildAccountsPairs _cn_reduce:&__block_literal_global_21 initialValue:MEMORY[0x1E695E0F0]];
  v4 = [v3 _cn_map:&__block_literal_global_25];

  return v4;
}

- (id)accountsWithAccountType:(id)type
{
  typeCopy = type;
  accountChildAccountsPairs = [(_CNACAccountStaticProvider *)self accountChildAccountsPairs];
  v6 = [accountChildAccountsPairs _cn_reduce:&__block_literal_global_21 initialValue:MEMORY[0x1E695E0F0]];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54___CNACAccountStaticProvider_accountsWithAccountType___block_invoke;
  v10[3] = &unk_1E6ED7F70;
  v11 = typeCopy;
  v7 = typeCopy;
  v8 = [v6 _cn_filter:v10];

  return v8;
}

- (id)childAccountsForAccount:(id)account
{
  accountCopy = account;
  accountChildAccountsPairs = [(_CNACAccountStaticProvider *)self accountChildAccountsPairs];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54___CNACAccountStaticProvider_childAccountsForAccount___block_invoke;
  v10[3] = &unk_1E6ED7FE0;
  v11 = accountCopy;
  v6 = accountCopy;
  v7 = [accountChildAccountsPairs _cn_firstObjectPassingTest:v10];
  second = [v7 second];

  return second;
}

- (BOOL)isAccountSyncable:(id)syncable
{
  syncableCopy = syncable;
  accountChildAccountsPairs = [(_CNACAccountStaticProvider *)self accountChildAccountsPairs];
  v6 = [accountChildAccountsPairs _cn_reduce:&__block_literal_global_21 initialValue:MEMORY[0x1E695E0F0]];
  v7 = [v6 _cn_filter:&__block_literal_global_27];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48___CNACAccountStaticProvider_isAccountSyncable___block_invoke;
  v11[3] = &unk_1E6ED7F70;
  v12 = syncableCopy;
  v8 = syncableCopy;
  v9 = [v7 _cn_any:v11];

  return v9;
}

@end