@interface CNManagedConfiguration
+ (id)os_log;
- (BOOL)accountIsManagedForIdentifier:(id)identifier;
- (BOOL)canAccessProviderContainerWithIdentifier:(id)identifier;
- (BOOL)canReadFromAccountWithIdentifier:(id)identifier;
- (BOOL)canReadFromLocalAccount;
- (BOOL)canWriteToAccountWithIdentifier:(id)identifier fromSourceAccountIdentifier:(id)accountIdentifier;
- (BOOL)canWriteToLocalAccount;
- (BOOL)deviceHasManagementRestrictions;
- (BOOL)hasContactProviderRestrictions;
- (CNManagedConfiguration)init;
- (CNManagedConfiguration)initWithAuditToken:(id *)token managedProfileConnection:(id)connection;
- (CNManagedConfiguration)initWithBundleIdentifier:(id)identifier managedProfileConnection:(id)connection;
- (id)accountForIdentifier:(id)identifier;
- (id)readableAccountIdentifiersFromIdentifiers:(id)identifiers;
- (id)readableAccountsFromAccounts:(id)accounts;
- (id)writableAccountIdentifiersFromIdentifiers:(id)identifiers;
- (id)writableAccountsFromAccounts:(id)accounts sourceAccountManagement:(int)management;
- (int)accountManagementForIdentifier:(id)identifier;
@end

@implementation CNManagedConfiguration

- (BOOL)deviceHasManagementRestrictions
{
  profileConnection = [(CNManagedConfiguration *)self profileConnection];
  isOpenInRestrictionInEffect = [profileConnection isOpenInRestrictionInEffect];

  return isOpenInRestrictionInEffect;
}

- (BOOL)hasContactProviderRestrictions
{
  providerContainerIdentifier = [(CNManagedConfiguration *)self providerContainerIdentifier];
  if (providerContainerIdentifier)
  {
    providerContainerIdentifier2 = [(CNManagedConfiguration *)self providerContainerIdentifier];
    v5 = [providerContainerIdentifier2 length] != 0;
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

- (CNManagedConfiguration)initWithAuditToken:(id *)token managedProfileConnection:(id)connection
{
  v5 = *&token->var0[4];
  v11 = *token->var0;
  v12 = v5;
  connectionCopy = connection;
  v7 = [CNAuditToken auditToken:&v11];
  v8 = [CNAuditTokenUtilities bundleIdentifierForAuditToken:v7, v11, v12];
  v9 = [(CNManagedConfiguration *)self initWithBundleIdentifier:v8 managedProfileConnection:connectionCopy];

  return v9;
}

- (CNManagedConfiguration)initWithBundleIdentifier:(id)identifier managedProfileConnection:(id)connection
{
  identifierCopy = identifier;
  connectionCopy = connection;
  v13.receiver = self;
  v13.super_class = CNManagedConfiguration;
  v8 = [(CNManagedConfiguration *)&v13 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    bundleIdentifier = v8->_bundleIdentifier;
    v8->_bundleIdentifier = v9;

    objc_storeStrong(&v8->_profileConnection, connection);
    v11 = v8;
  }

  return v8;
}

- (BOOL)canReadFromLocalAccount
{
  profileConnection = [(CNManagedConfiguration *)self profileConnection];
  bundleIdentifier = [(CNManagedConfiguration *)self bundleIdentifier];
  v5 = [profileConnection mayShowLocalContactsAccountsForTargetBundleID:bundleIdentifier targetAccountManagement:0];

  return v5;
}

- (BOOL)canWriteToLocalAccount
{
  profileConnection = [(CNManagedConfiguration *)self profileConnection];
  bundleIdentifier = [(CNManagedConfiguration *)self bundleIdentifier];
  v5 = [profileConnection mayShowLocalContactsAccountsForBundleID:bundleIdentifier sourceAccountManagement:0];

  return v5;
}

- (int)accountManagementForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (off_1EF440728(&__block_literal_global_122, identifierCopy))
  {
    if ([(CNManagedConfiguration *)self accountIsManagedForIdentifier:identifierCopy])
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

- (BOOL)accountIsManagedForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(CNManagedConfiguration *)self deviceHasManagementRestrictions])
  {
    v5 = +[CNManagedAccountsCache sharedCache];
    v6 = [v5 accountForIdentifier:identifierCopy];

    v7 = [(CNManagedConfiguration *)self accountIsManaged:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)canReadFromAccountWithIdentifier:(id)identifier
{
  v12[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (off_1EF440708(&__block_literal_global_120, identifierCopy))
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v6 = [(CNManagedConfiguration *)self accountForIdentifier:identifierCopy];
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

- (BOOL)canWriteToAccountWithIdentifier:(id)identifier fromSourceAccountIdentifier:(id)accountIdentifier
{
  v15[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  accountIdentifierCopy = accountIdentifier;
  if (off_1EF440708(&__block_literal_global_120, identifierCopy))
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v9 = [(CNManagedConfiguration *)self accountForIdentifier:identifierCopy];
    if (v9)
    {
      v10 = [(CNManagedConfiguration *)self accountManagementForIdentifier:accountIdentifierCopy];
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

- (id)readableAccountIdentifiersFromIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if (off_1EF43E9E8(&__block_literal_global_5, identifiersCopy))
  {
    v5 = identifiersCopy;
  }

  else
  {
    v6 = +[CNManagedAccountsCache sharedCache];
    v7 = [v6 accountsForIdentifiers:identifiersCopy];

    v8 = [(CNManagedConfiguration *)self readableAccountsFromAccounts:v7];
    v5 = [v8 _cn_map:&__block_literal_global_74];
  }

  return v5;
}

- (id)writableAccountIdentifiersFromIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if (off_1EF43E9E8(&__block_literal_global_5, identifiersCopy))
  {
    v5 = identifiersCopy;
  }

  else
  {
    v6 = +[CNManagedAccountsCache sharedCache];
    v7 = [v6 accountsForIdentifiers:identifiersCopy];

    v8 = [(CNManagedConfiguration *)self writableAccountsFromAccounts:v7];
    v5 = [v8 _cn_map:&__block_literal_global_76];
  }

  return v5;
}

- (id)writableAccountsFromAccounts:(id)accounts sourceAccountManagement:(int)management
{
  accountsCopy = accounts;
  if (off_1EF43E9E8(&__block_literal_global_5, accountsCopy))
  {
    v7 = accountsCopy;
  }

  else
  {
    profileConnection = [(CNManagedConfiguration *)self profileConnection];
    bundleIdentifier = [(CNManagedConfiguration *)self bundleIdentifier];
    v7 = [profileConnection filteredOpenInAccounts:accountsCopy originatingAppBundleID:bundleIdentifier sourceAccountManagement:management];
  }

  return v7;
}

- (id)readableAccountsFromAccounts:(id)accounts
{
  accountsCopy = accounts;
  if (off_1EF43E9E8(&__block_literal_global_5, accountsCopy))
  {
    v5 = accountsCopy;
  }

  else
  {
    profileConnection = [(CNManagedConfiguration *)self profileConnection];
    bundleIdentifier = [(CNManagedConfiguration *)self bundleIdentifier];
    v5 = [profileConnection filteredOpenInOriginatingAccounts:accountsCopy targetAppBundleID:bundleIdentifier targetAccountManagement:0];
  }

  return v5;
}

- (id)accountForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[CNManagedAccountsCache sharedCache];
  v5 = [v4 accountForIdentifier:identifierCopy];

  return v5;
}

- (BOOL)canAccessProviderContainerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  providerContainerIdentifier = [(CNManagedConfiguration *)self providerContainerIdentifier];
  v6 = [providerContainerIdentifier isEqualToString:identifierCopy];

  return v6;
}

@end