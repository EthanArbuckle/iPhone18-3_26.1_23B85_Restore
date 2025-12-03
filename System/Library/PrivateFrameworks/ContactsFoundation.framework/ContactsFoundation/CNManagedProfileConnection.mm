@interface CNManagedProfileConnection
+ (id)sharedConnection;
- (BOOL)isOpenInRestrictionInEffect;
- (BOOL)mayShowLocalContactsAccountsForBundleID:(id)d sourceAccountManagement:(int64_t)management;
- (BOOL)mayShowLocalContactsAccountsForTargetBundleID:(id)d targetAccountManagement:(int64_t)management;
- (CNManagedProfileConnection)init;
- (CNManagedProfileConnection)initWithProfileConnection:(id)connection;
- (id)filteredOpenInAccounts:(id)accounts originatingAppBundleID:(id)d sourceAccountManagement:(int64_t)management;
- (id)filteredOpenInOriginatingAccounts:(id)accounts targetAppBundleID:(id)d targetAccountManagement:(int64_t)management;
@end

@implementation CNManagedProfileConnection

+ (id)sharedConnection
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__CNManagedProfileConnection_sharedConnection__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedConnection_cn_once_token_2 != -1)
  {
    dispatch_once(&sharedConnection_cn_once_token_2, block);
  }

  v2 = sharedConnection_cn_once_object_2;

  return v2;
}

- (BOOL)isOpenInRestrictionInEffect
{
  profileConnection = [(CNManagedProfileConnection *)self profileConnection];
  isOpenInRestrictionInEffect = [profileConnection isOpenInRestrictionInEffect];

  return isOpenInRestrictionInEffect;
}

uint64_t __46__CNManagedProfileConnection_sharedConnection__block_invoke(uint64_t a1)
{
  sharedConnection_cn_once_object_2 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (CNManagedProfileConnection)init
{
  sharedConnection = [(objc_class *)getMCProfileConnectionClass() sharedConnection];
  v4 = [(CNManagedProfileConnection *)self initWithProfileConnection:sharedConnection];

  return v4;
}

- (CNManagedProfileConnection)initWithProfileConnection:(id)connection
{
  connectionCopy = connection;
  v10.receiver = self;
  v10.super_class = CNManagedProfileConnection;
  v6 = [(CNManagedProfileConnection *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_profileConnection, connection);
    v8 = v7;
  }

  return v7;
}

- (BOOL)mayShowLocalContactsAccountsForBundleID:(id)d sourceAccountManagement:(int64_t)management
{
  dCopy = d;
  profileConnection = [(CNManagedProfileConnection *)self profileConnection];
  LOBYTE(management) = [profileConnection mayShowLocalContactsAccountsForBundleID:dCopy sourceAccountManagement:management];

  return management;
}

- (BOOL)mayShowLocalContactsAccountsForTargetBundleID:(id)d targetAccountManagement:(int64_t)management
{
  dCopy = d;
  profileConnection = [(CNManagedProfileConnection *)self profileConnection];
  LOBYTE(management) = [profileConnection mayShowLocalContactsAccountsForTargetBundleID:dCopy targetAccountManagement:management];

  return management;
}

- (id)filteredOpenInAccounts:(id)accounts originatingAppBundleID:(id)d sourceAccountManagement:(int64_t)management
{
  dCopy = d;
  accountsCopy = accounts;
  profileConnection = [(CNManagedProfileConnection *)self profileConnection];
  v11 = [profileConnection filteredOpenInContactsAccounts:accountsCopy originatingAppBundleID:dCopy sourceAccountManagement:management];

  return v11;
}

- (id)filteredOpenInOriginatingAccounts:(id)accounts targetAppBundleID:(id)d targetAccountManagement:(int64_t)management
{
  dCopy = d;
  accountsCopy = accounts;
  profileConnection = [(CNManagedProfileConnection *)self profileConnection];
  v11 = [profileConnection filteredOpenInOriginatingContactsAccounts:accountsCopy targetAppBundleID:dCopy targetAccountManagement:management];

  return v11;
}

@end