@interface ICLegacyAccountUtilities
+ (BOOL)didChooseToMigrateAccount:(id)account context:(id)context;
+ (BOOL)didChooseToMigrateAccountsForContext:(id)context forAccountPassingTest:(id)test;
+ (BOOL)didChooseToMigrateLegacyAccountType:(int64_t)type;
+ (id)accountForAccountIdentifier:(id)identifier context:(id)context;
+ (id)accountForEmailAddress:(id)address context:(id)context;
+ (id)emailAddressForAccount:(id)account;
+ (id)legacyAccountForICloudACAccount:(id)account context:(id)context;
+ (id)legacyAccountForICloudAccount:(id)account context:(id)context;
+ (id)legacyAccountForLegacyAccountType:(int64_t)type context:(id)context;
+ (id)legacyAccountForLocalAccountWithContext:(id)context;
+ (id)legacyAccountForPrimaryICloudAccountWithContext:(id)context;
@end

@implementation ICLegacyAccountUtilities

+ (BOOL)didChooseToMigrateAccountsForContext:(id)context forAccountPassingTest:(id)test
{
  testCopy = test;
  v7 = 0;
  v8 = 1;
  while (1)
  {
    v9 = v8;
    v10 = [self legacyAccountForLegacyAccountType:v7 context:context];
    if (v10)
    {
      if (testCopy[2](testCopy, v10) && [self didChooseToMigrateLegacyAccountType:v7])
      {
        break;
      }
    }

    v8 = 0;
    v11 = 0;
    v7 = 1;
    if ((v9 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v11 = 1;
LABEL_8:

  return v11;
}

+ (BOOL)didChooseToMigrateAccount:(id)account context:(id)context
{
  accountCopy = account;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__ICLegacyAccountUtilities_didChooseToMigrateAccount_context___block_invoke;
  v9[3] = &unk_2781962C0;
  v10 = accountCopy;
  v7 = accountCopy;
  LOBYTE(context) = [self didChooseToMigrateAccountsForContext:context forAccountPassingTest:v9];

  return context;
}

uint64_t __62__ICLegacyAccountUtilities_didChooseToMigrateAccount_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2 == a2)
  {
    return 1;
  }

  v3 = a2;
  v4 = [v2 accountIdentifier];
  v5 = [v3 accountIdentifier];

  v6 = [v4 isEqual:v5];
  return v6;
}

+ (BOOL)didChooseToMigrateLegacyAccountType:(int64_t)type
{
  if (type == 1)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    didChooseToMigratePrimaryICloudAccount = [standardUserDefaults BOOLForKey:*MEMORY[0x277D362A0]];
    goto LABEL_5;
  }

  if (!type)
  {
    standardUserDefaults = [MEMORY[0x277D36178] sharedInstance];
    didChooseToMigratePrimaryICloudAccount = [standardUserDefaults didChooseToMigratePrimaryICloudAccount];
LABEL_5:
    v6 = didChooseToMigratePrimaryICloudAccount;

    return v6;
  }

  v8 = os_log_create("com.apple.notes", "HTML");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(ICLegacyAccountUtilities *)type didChooseToMigrateLegacyAccountType:v8];
  }

  return 0;
}

+ (id)legacyAccountForLegacyAccountType:(int64_t)type context:(id)context
{
  contextCopy = context;
  if (type == 1)
  {
    v7 = [self legacyAccountForLocalAccountWithContext:contextCopy];
    goto LABEL_5;
  }

  if (!type)
  {
    v7 = [self legacyAccountForPrimaryICloudAccountWithContext:contextCopy];
LABEL_5:
    v8 = v7;
    goto LABEL_9;
  }

  v9 = os_log_create("com.apple.notes", "HTML");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [(ICLegacyAccountUtilities *)type didChooseToMigrateLegacyAccountType:v9];
  }

  v8 = 0;
LABEL_9:

  return v8;
}

+ (id)legacyAccountForICloudAccount:(id)account context:(id)context
{
  accountCopy = account;
  contextCopy = context;
  if ([accountCopy accountType] == 1)
  {
    mEMORY[0x277D36178] = [MEMORY[0x277D36178] sharedInstance];
    identifier = [accountCopy identifier];
    v10 = [mEMORY[0x277D36178] iCloudACAccountWithIdentifier:identifier];

    v11 = [self legacyAccountForICloudACAccount:v10 context:contextCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)accountForAccountIdentifier:(id)identifier context:(id)context
{
  contextCopy = context;
  identifierCopy = identifier;
  objc_opt_class();
  v7 = ICCheckedDynamicCast();

  v8 = [v7 accountForAccountId:identifierCopy];

  return v8;
}

+ (id)legacyAccountForPrimaryICloudAccountWithContext:(id)context
{
  v4 = MEMORY[0x277D36178];
  contextCopy = context;
  sharedInstance = [v4 sharedInstance];
  primaryICloudACAccount = [sharedInstance primaryICloudACAccount];

  v8 = [self legacyAccountForICloudACAccount:primaryICloudACAccount context:contextCopy];

  return v8;
}

+ (id)legacyAccountForICloudACAccount:(id)account context:(id)context
{
  v20 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [account childAccountsWithAccountTypeIdentifier:{*MEMORY[0x277CB8C70], 0}];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v16 != v10)
      {
        objc_enumerationMutation(v7);
      }

      identifier = [*(*(&v15 + 1) + 8 * v11) identifier];
      v13 = [self accountForAccountIdentifier:identifier context:contextCopy];

      if (v13)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v13 = 0;
  }

  return v13;
}

+ (id)legacyAccountForLocalAccountWithContext:(id)context
{
  contextCopy = context;
  objc_opt_class();
  v4 = ICCheckedDynamicCast();

  localAccount = [v4 localAccount];

  return localAccount;
}

+ (id)accountForEmailAddress:(id)address context:(id)context
{
  v35 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  contextCopy = context;
  objc_opt_class();
  v25 = contextCopy;
  v7 = ICCheckedDynamicCast();
  mEMORY[0x277D35910] = [MEMORY[0x277D35910] sharedAccountUtilities];
  accountsEnabledForNotes = [mEMORY[0x277D35910] accountsEnabledForNotes];
  v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(accountsEnabledForNotes, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = accountsEnabledForNotes;
  v12 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v31;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v30 + 1) + 8 * i);
        identifier = [v16 identifier];
        [v10 setObject:v16 forKeyedSubscript:identifier];
      }

      v13 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v13);
  }

  allAccounts = [v7 allAccounts];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __59__ICLegacyAccountUtilities_accountForEmailAddress_context___block_invoke;
  v26[3] = &unk_2781962E8;
  v27 = v10;
  v28 = mEMORY[0x277D35910];
  v29 = addressCopy;
  v19 = addressCopy;
  v20 = mEMORY[0x277D35910];
  v21 = v10;
  v22 = [allAccounts ic_objectsPassingTest:v26];
  firstObject = [v22 firstObject];

  return firstObject;
}

uint64_t __59__ICLegacyAccountUtilities_accountForEmailAddress_context___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v8 = [v6 accountIdentifier];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (!v9)
  {
    v11 = [*(a1 + 40) accountStore];
    v12 = [v6 accountIdentifier];
    v9 = [v11 accountWithIdentifier:v12];

    if (v6)
    {
      goto LABEL_3;
    }

LABEL_6:
    v13 = 0;
    goto LABEL_9;
  }

  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_3:
  v10 = [v9 username];
  if ([v10 isEqualToString:*(a1 + 48)])
  {

LABEL_8:
    v13 = 1;
    *a4 = 1;
    goto LABEL_9;
  }

  v14 = [v9 displayAccount];
  v15 = [v14 username];
  v13 = [v15 isEqualToString:*(a1 + 48)];

  if (v13)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v13;
}

+ (id)emailAddressForAccount:(id)account
{
  v3 = MEMORY[0x277D35910];
  accountCopy = account;
  sharedAccountUtilities = [v3 sharedAccountUtilities];
  accountStore = [sharedAccountUtilities accountStore];

  accountIdentifier = [accountCopy accountIdentifier];

  v8 = [accountStore accountWithIdentifier:accountIdentifier];

  username = [v8 username];

  return username;
}

+ (void)didChooseToMigrateLegacyAccountType:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_214D51000, a2, OS_LOG_TYPE_ERROR, "Invalid account type %ld", &v2, 0xCu);
}

@end