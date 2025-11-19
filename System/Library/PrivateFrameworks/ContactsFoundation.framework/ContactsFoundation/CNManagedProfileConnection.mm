@interface CNManagedProfileConnection
+ (id)sharedConnection;
- (BOOL)isOpenInRestrictionInEffect;
- (BOOL)mayShowLocalContactsAccountsForBundleID:(id)a3 sourceAccountManagement:(int64_t)a4;
- (BOOL)mayShowLocalContactsAccountsForTargetBundleID:(id)a3 targetAccountManagement:(int64_t)a4;
- (CNManagedProfileConnection)init;
- (CNManagedProfileConnection)initWithProfileConnection:(id)a3;
- (id)filteredOpenInAccounts:(id)a3 originatingAppBundleID:(id)a4 sourceAccountManagement:(int64_t)a5;
- (id)filteredOpenInOriginatingAccounts:(id)a3 targetAppBundleID:(id)a4 targetAccountManagement:(int64_t)a5;
@end

@implementation CNManagedProfileConnection

+ (id)sharedConnection
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__CNManagedProfileConnection_sharedConnection__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedConnection_cn_once_token_2 != -1)
  {
    dispatch_once(&sharedConnection_cn_once_token_2, block);
  }

  v2 = sharedConnection_cn_once_object_2;

  return v2;
}

- (BOOL)isOpenInRestrictionInEffect
{
  v2 = [(CNManagedProfileConnection *)self profileConnection];
  v3 = [v2 isOpenInRestrictionInEffect];

  return v3;
}

uint64_t __46__CNManagedProfileConnection_sharedConnection__block_invoke(uint64_t a1)
{
  sharedConnection_cn_once_object_2 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (CNManagedProfileConnection)init
{
  v3 = [(objc_class *)getMCProfileConnectionClass() sharedConnection];
  v4 = [(CNManagedProfileConnection *)self initWithProfileConnection:v3];

  return v4;
}

- (CNManagedProfileConnection)initWithProfileConnection:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNManagedProfileConnection;
  v6 = [(CNManagedProfileConnection *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_profileConnection, a3);
    v8 = v7;
  }

  return v7;
}

- (BOOL)mayShowLocalContactsAccountsForBundleID:(id)a3 sourceAccountManagement:(int64_t)a4
{
  v6 = a3;
  v7 = [(CNManagedProfileConnection *)self profileConnection];
  LOBYTE(a4) = [v7 mayShowLocalContactsAccountsForBundleID:v6 sourceAccountManagement:a4];

  return a4;
}

- (BOOL)mayShowLocalContactsAccountsForTargetBundleID:(id)a3 targetAccountManagement:(int64_t)a4
{
  v6 = a3;
  v7 = [(CNManagedProfileConnection *)self profileConnection];
  LOBYTE(a4) = [v7 mayShowLocalContactsAccountsForTargetBundleID:v6 targetAccountManagement:a4];

  return a4;
}

- (id)filteredOpenInAccounts:(id)a3 originatingAppBundleID:(id)a4 sourceAccountManagement:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(CNManagedProfileConnection *)self profileConnection];
  v11 = [v10 filteredOpenInContactsAccounts:v9 originatingAppBundleID:v8 sourceAccountManagement:a5];

  return v11;
}

- (id)filteredOpenInOriginatingAccounts:(id)a3 targetAppBundleID:(id)a4 targetAccountManagement:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(CNManagedProfileConnection *)self profileConnection];
  v11 = [v10 filteredOpenInOriginatingContactsAccounts:v9 targetAppBundleID:v8 targetAccountManagement:a5];

  return v11;
}

@end