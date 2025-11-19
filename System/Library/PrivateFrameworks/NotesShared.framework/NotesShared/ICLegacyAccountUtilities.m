@interface ICLegacyAccountUtilities
+ (BOOL)didChooseToMigrateAccount:(id)a3 context:(id)a4;
+ (BOOL)didChooseToMigrateAccountsForContext:(id)a3 forAccountPassingTest:(id)a4;
+ (BOOL)didChooseToMigrateLegacyAccountType:(int64_t)a3;
+ (id)accountForAccountIdentifier:(id)a3 context:(id)a4;
+ (id)accountForEmailAddress:(id)a3 context:(id)a4;
+ (id)emailAddressForAccount:(id)a3;
+ (id)legacyAccountForICloudACAccount:(id)a3 context:(id)a4;
+ (id)legacyAccountForICloudAccount:(id)a3 context:(id)a4;
+ (id)legacyAccountForLegacyAccountType:(int64_t)a3 context:(id)a4;
+ (id)legacyAccountForLocalAccountWithContext:(id)a3;
+ (id)legacyAccountForPrimaryICloudAccountWithContext:(id)a3;
@end

@implementation ICLegacyAccountUtilities

+ (BOOL)didChooseToMigrateAccountsForContext:(id)a3 forAccountPassingTest:(id)a4
{
  v6 = a4;
  v7 = 0;
  v8 = 1;
  while (1)
  {
    v9 = v8;
    v10 = [a1 legacyAccountForLegacyAccountType:v7 context:a3];
    if (v10)
    {
      if (v6[2](v6, v10) && [a1 didChooseToMigrateLegacyAccountType:v7])
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

+ (BOOL)didChooseToMigrateAccount:(id)a3 context:(id)a4
{
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__ICLegacyAccountUtilities_didChooseToMigrateAccount_context___block_invoke;
  v9[3] = &unk_2781962C0;
  v10 = v6;
  v7 = v6;
  LOBYTE(a4) = [a1 didChooseToMigrateAccountsForContext:a4 forAccountPassingTest:v9];

  return a4;
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

+ (BOOL)didChooseToMigrateLegacyAccountType:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v5 = [v4 BOOLForKey:*MEMORY[0x277D362A0]];
    goto LABEL_5;
  }

  if (!a3)
  {
    v4 = [MEMORY[0x277D36178] sharedInstance];
    v5 = [v4 didChooseToMigratePrimaryICloudAccount];
LABEL_5:
    v6 = v5;

    return v6;
  }

  v8 = os_log_create("com.apple.notes", "HTML");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(ICLegacyAccountUtilities *)a3 didChooseToMigrateLegacyAccountType:v8];
  }

  return 0;
}

+ (id)legacyAccountForLegacyAccountType:(int64_t)a3 context:(id)a4
{
  v6 = a4;
  if (a3 == 1)
  {
    v7 = [a1 legacyAccountForLocalAccountWithContext:v6];
    goto LABEL_5;
  }

  if (!a3)
  {
    v7 = [a1 legacyAccountForPrimaryICloudAccountWithContext:v6];
LABEL_5:
    v8 = v7;
    goto LABEL_9;
  }

  v9 = os_log_create("com.apple.notes", "HTML");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [(ICLegacyAccountUtilities *)a3 didChooseToMigrateLegacyAccountType:v9];
  }

  v8 = 0;
LABEL_9:

  return v8;
}

+ (id)legacyAccountForICloudAccount:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 accountType] == 1)
  {
    v8 = [MEMORY[0x277D36178] sharedInstance];
    v9 = [v6 identifier];
    v10 = [v8 iCloudACAccountWithIdentifier:v9];

    v11 = [a1 legacyAccountForICloudACAccount:v10 context:v7];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)accountForAccountIdentifier:(id)a3 context:(id)a4
{
  v5 = a4;
  v6 = a3;
  objc_opt_class();
  v7 = ICCheckedDynamicCast();

  v8 = [v7 accountForAccountId:v6];

  return v8;
}

+ (id)legacyAccountForPrimaryICloudAccountWithContext:(id)a3
{
  v4 = MEMORY[0x277D36178];
  v5 = a3;
  v6 = [v4 sharedInstance];
  v7 = [v6 primaryICloudACAccount];

  v8 = [a1 legacyAccountForICloudACAccount:v7 context:v5];

  return v8;
}

+ (id)legacyAccountForICloudACAccount:(id)a3 context:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [a3 childAccountsWithAccountTypeIdentifier:{*MEMORY[0x277CB8C70], 0}];
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

      v12 = [*(*(&v15 + 1) + 8 * v11) identifier];
      v13 = [a1 accountForAccountIdentifier:v12 context:v6];

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

+ (id)legacyAccountForLocalAccountWithContext:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = ICCheckedDynamicCast();

  v5 = [v4 localAccount];

  return v5;
}

+ (id)accountForEmailAddress:(id)a3 context:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  v25 = v6;
  v7 = ICCheckedDynamicCast();
  v8 = [MEMORY[0x277D35910] sharedAccountUtilities];
  v9 = [v8 accountsEnabledForNotes];
  v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v9, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = v9;
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
        v17 = [v16 identifier];
        [v10 setObject:v16 forKeyedSubscript:v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v13);
  }

  v18 = [v7 allAccounts];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __59__ICLegacyAccountUtilities_accountForEmailAddress_context___block_invoke;
  v26[3] = &unk_2781962E8;
  v27 = v10;
  v28 = v8;
  v29 = v5;
  v19 = v5;
  v20 = v8;
  v21 = v10;
  v22 = [v18 ic_objectsPassingTest:v26];
  v23 = [v22 firstObject];

  return v23;
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

+ (id)emailAddressForAccount:(id)a3
{
  v3 = MEMORY[0x277D35910];
  v4 = a3;
  v5 = [v3 sharedAccountUtilities];
  v6 = [v5 accountStore];

  v7 = [v4 accountIdentifier];

  v8 = [v6 accountWithIdentifier:v7];

  v9 = [v8 username];

  return v9;
}

+ (void)didChooseToMigrateLegacyAccountType:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_214D51000, a2, OS_LOG_TYPE_ERROR, "Invalid account type %ld", &v2, 0xCu);
}

@end