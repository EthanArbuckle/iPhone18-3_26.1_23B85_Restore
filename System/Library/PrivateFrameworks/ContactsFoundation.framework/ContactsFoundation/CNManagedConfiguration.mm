@interface CNManagedConfiguration
+ (id)os_log;
- (BOOL)accountIsManagedForIdentifier:(id)a3;
- (BOOL)canAccessProviderContainerWithIdentifier:(id)a3;
- (BOOL)canReadFromAccountWithIdentifier:(id)a3;
- (BOOL)canReadFromLocalAccount;
- (BOOL)canWriteToAccountWithIdentifier:(id)a3 fromSourceAccountIdentifier:(id)a4;
- (BOOL)canWriteToLocalAccount;
- (BOOL)deviceHasManagementRestrictions;
- (BOOL)hasContactProviderRestrictions;
- (CNManagedConfiguration)init;
- (CNManagedConfiguration)initWithAuditToken:(id *)a3 managedProfileConnection:(id)a4;
- (CNManagedConfiguration)initWithBundleIdentifier:(id)a3 managedProfileConnection:(id)a4;
- (id)accountForIdentifier:(id)a3;
- (id)readableAccountIdentifiersFromIdentifiers:(id)a3;
- (id)readableAccountsFromAccounts:(id)a3;
- (id)writableAccountIdentifiersFromIdentifiers:(id)a3;
- (id)writableAccountsFromAccounts:(id)a3 sourceAccountManagement:(int)a4;
- (int)accountManagementForIdentifier:(id)a3;
@end

@implementation CNManagedConfiguration

- (BOOL)deviceHasManagementRestrictions
{
  v2 = [(CNManagedConfiguration *)self profileConnection];
  v3 = [v2 isOpenInRestrictionInEffect];

  return v3;
}

- (BOOL)hasContactProviderRestrictions
{
  v3 = [(CNManagedConfiguration *)self providerContainerIdentifier];
  if (v3)
  {
    v4 = [(CNManagedConfiguration *)self providerContainerIdentifier];
    v5 = [v4 length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)os_log
{
  if (os_log_cn_once_token_3_0 != -1)
  {
    +[CNManagedConfiguration os_log];
  }

  v3 = os_log_cn_once_object_3_0;

  return v3;
}

uint64_t __32__CNManagedConfiguration_os_log__block_invoke()
{
  os_log_cn_once_object_3_0 = os_log_create("com.apple.contacts.managedConfiguration", "general");

  return MEMORY[0x1EEE66BB8]();
}

- (CNManagedConfiguration)init
{
  v2 = CNUnimplementedMethodException([(CNManagedConfiguration *)self initWithBundleIdentifier:0 managedProfileConnection:0], a2);
  objc_exception_throw(v2);
}

- (CNManagedConfiguration)initWithAuditToken:(id *)a3 managedProfileConnection:(id)a4
{
  v5 = *&a3->var0[4];
  v11 = *a3->var0;
  v12 = v5;
  v6 = a4;
  v7 = [CNAuditToken auditToken:&v11];
  v8 = [CNAuditTokenUtilities bundleIdentifierForAuditToken:v7, v11, v12];
  v9 = [(CNManagedConfiguration *)self initWithBundleIdentifier:v8 managedProfileConnection:v6];

  return v9;
}

- (CNManagedConfiguration)initWithBundleIdentifier:(id)a3 managedProfileConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = CNManagedConfiguration;
  v8 = [(CNManagedConfiguration *)&v13 init];
  if (v8)
  {
    v9 = [v6 copy];
    bundleIdentifier = v8->_bundleIdentifier;
    v8->_bundleIdentifier = v9;

    objc_storeStrong(&v8->_profileConnection, a4);
    v11 = v8;
  }

  return v8;
}

- (BOOL)canReadFromLocalAccount
{
  v3 = [(CNManagedConfiguration *)self profileConnection];
  v4 = [(CNManagedConfiguration *)self bundleIdentifier];
  v5 = [v3 mayShowLocalContactsAccountsForTargetBundleID:v4 targetAccountManagement:0];

  return v5;
}

- (BOOL)canWriteToLocalAccount
{
  v3 = [(CNManagedConfiguration *)self profileConnection];
  v4 = [(CNManagedConfiguration *)self bundleIdentifier];
  v5 = [v3 mayShowLocalContactsAccountsForBundleID:v4 sourceAccountManagement:0];

  return v5;
}

- (int)accountManagementForIdentifier:(id)a3
{
  v4 = a3;
  if (off_1EF440728(&__block_literal_global_122, v4))
  {
    if ([(CNManagedConfiguration *)self accountIsManagedForIdentifier:v4])
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)accountIsManagedForIdentifier:(id)a3
{
  v4 = a3;
  if ([(CNManagedConfiguration *)self deviceHasManagementRestrictions])
  {
    v5 = +[CNManagedAccountsCache sharedCache];
    v6 = [v5 accountForIdentifier:v4];

    v7 = [(CNManagedConfiguration *)self accountIsManaged:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)canReadFromAccountWithIdentifier:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (off_1EF440708(&__block_literal_global_120, v4))
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v6 = [(CNManagedConfiguration *)self accountForIdentifier:v4];
    v7 = v6;
    if (v6)
    {
      v12[0] = v6;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
      v9 = [(CNManagedConfiguration *)self readableAccountsFromAccounts:v8];

      v5 = !off_1EF43E9E8(&__block_literal_global_5, v9);
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)canWriteToAccountWithIdentifier:(id)a3 fromSourceAccountIdentifier:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (off_1EF440708(&__block_literal_global_120, v6))
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v9 = [(CNManagedConfiguration *)self accountForIdentifier:v6];
    if (v9)
    {
      v10 = [(CNManagedConfiguration *)self accountManagementForIdentifier:v7];
      v15[0] = v9;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
      v12 = [(CNManagedConfiguration *)self writableAccountsFromAccounts:v11 sourceAccountManagement:v10];

      v8 = !off_1EF43E9E8(&__block_literal_global_5, v12);
    }

    else
    {
      LOBYTE(v8) = 1;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)readableAccountIdentifiersFromIdentifiers:(id)a3
{
  v4 = a3;
  if (off_1EF43E9E8(&__block_literal_global_5, v4))
  {
    v5 = v4;
  }

  else
  {
    v6 = +[CNManagedAccountsCache sharedCache];
    v7 = [v6 accountsForIdentifiers:v4];

    v8 = [(CNManagedConfiguration *)self readableAccountsFromAccounts:v7];
    v5 = [v8 _cn_map:&__block_literal_global_74];
  }

  return v5;
}

- (id)writableAccountIdentifiersFromIdentifiers:(id)a3
{
  v4 = a3;
  if (off_1EF43E9E8(&__block_literal_global_5, v4))
  {
    v5 = v4;
  }

  else
  {
    v6 = +[CNManagedAccountsCache sharedCache];
    v7 = [v6 accountsForIdentifiers:v4];

    v8 = [(CNManagedConfiguration *)self writableAccountsFromAccounts:v7];
    v5 = [v8 _cn_map:&__block_literal_global_76];
  }

  return v5;
}

- (id)writableAccountsFromAccounts:(id)a3 sourceAccountManagement:(int)a4
{
  v6 = a3;
  if (off_1EF43E9E8(&__block_literal_global_5, v6))
  {
    v7 = v6;
  }

  else
  {
    v8 = [(CNManagedConfiguration *)self profileConnection];
    v9 = [(CNManagedConfiguration *)self bundleIdentifier];
    v7 = [v8 filteredOpenInAccounts:v6 originatingAppBundleID:v9 sourceAccountManagement:a4];
  }

  return v7;
}

- (id)readableAccountsFromAccounts:(id)a3
{
  v4 = a3;
  if (off_1EF43E9E8(&__block_literal_global_5, v4))
  {
    v5 = v4;
  }

  else
  {
    v6 = [(CNManagedConfiguration *)self profileConnection];
    v7 = [(CNManagedConfiguration *)self bundleIdentifier];
    v5 = [v6 filteredOpenInOriginatingAccounts:v4 targetAppBundleID:v7 targetAccountManagement:0];
  }

  return v5;
}

- (id)accountForIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[CNManagedAccountsCache sharedCache];
  v5 = [v4 accountForIdentifier:v3];

  return v5;
}

- (BOOL)canAccessProviderContainerWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CNManagedConfiguration *)self providerContainerIdentifier];
  v6 = [v5 isEqualToString:v4];

  return v6;
}

@end