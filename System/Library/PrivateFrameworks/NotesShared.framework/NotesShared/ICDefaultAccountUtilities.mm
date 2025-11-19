@interface ICDefaultAccountUtilities
+ (id)_defaultAccountIdentifierForTests;
+ (id)accountToAddNewNoteWithTagSelection:(id)a3 modernContext:(id)a4;
+ (id)accountToAddSmartFolderWithModernContext:(id)a3;
+ (id)defaultAccountWithHTMLNoteContext:(id)a3;
+ (id)defaultFolderWithHTMLNoteContext:(id)a3;
+ (void)_setDefaultAccountIdentifierForTests:(id)a3;
+ (void)setDefaultAccountIdentifier:(id)a3;
@end

@implementation ICDefaultAccountUtilities

+ (id)defaultAccountWithHTMLNoteContext:(id)a3
{
  v71 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[ICNoteContext sharedContext];
  v5 = ICSettingsBundleID();
  CFPreferencesAppSynchronize(v5);
  v62 = 0;
  v63[0] = &v62;
  v63[1] = 0x3032000000;
  v63[2] = __Block_byref_object_copy__55;
  v63[3] = __Block_byref_object_dispose__55;
  v64 = [MEMORY[0x277D36260] objectForKey:@"DefaultNotesAccount"];
  v6 = os_log_create("com.apple.notes", "Accounts");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(ICDefaultAccountUtilities *)v63 defaultAccountWithHTMLNoteContext:v6];
  }

  if ([MEMORY[0x277D361D0] isRunningUnitTests])
  {
    v7 = +[ICDefaultAccountUtilities _defaultAccountIdentifierForTests];
    if ([v7 length])
    {
      objc_storeStrong((v63[0] + 40), v7);
      v8 = os_log_create("com.apple.notes", "Accounts");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [(ICDefaultAccountUtilities *)v63 defaultAccountWithHTMLNoteContext:v8];
      }
    }
  }

  v9 = [v4 managedObjectContext];
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __63__ICDefaultAccountUtilities_defaultAccountWithHTMLNoteContext___block_invoke;
  v60[3] = &unk_278194B00;
  v10 = v4;
  v61 = v10;
  [v9 performBlockAndWait:v60];

  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__55;
  v58 = __Block_byref_object_dispose__55;
  v59 = 0;
  v11 = *(v63[0] + 40);
  if (!v11)
  {
    goto LABEL_28;
  }

  if ([v11 isEqualToString:@"DeviceLocalAccount"])
  {
    v12 = [MEMORY[0x277D36260] objectForKey:*MEMORY[0x277D362A8]];
    v13 = [v12 BOOLValue];

    v14 = os_log_create("com.apple.notes", "Accounts");
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
    if (v13)
    {
      if (v15)
      {
        +[ICDefaultAccountUtilities defaultAccountWithHTMLNoteContext:];
      }

      v16 = [v10 managedObjectContext];
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __63__ICDefaultAccountUtilities_defaultAccountWithHTMLNoteContext___block_invoke_10;
      v52[3] = &unk_278194DE8;
      v53[1] = &v54;
      v53[0] = v10;
      [v16 performBlockAndWait:v52];

      v17 = v53;
    }

    else
    {
      if (v15)
      {
        +[ICDefaultAccountUtilities defaultAccountWithHTMLNoteContext:];
      }

      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __63__ICDefaultAccountUtilities_defaultAccountWithHTMLNoteContext___block_invoke_12;
      v50[3] = &unk_278194DE8;
      v51[1] = &v54;
      v51[0] = v3;
      [v51[0] performBlockAndWait:v50];
      v17 = v51;
    }
  }

  if (!v55[5])
  {
    v18 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      +[ICDefaultAccountUtilities defaultAccountWithHTMLNoteContext:];
    }

    v19 = [v10 managedObjectContext];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __63__ICDefaultAccountUtilities_defaultAccountWithHTMLNoteContext___block_invoke_14;
    v46[3] = &unk_2781950A8;
    v48 = &v62;
    v20 = v10;
    v47 = v20;
    v49 = &v54;
    [v19 performBlockAndWait:v46];

    if (!v55[5])
    {
      v21 = os_log_create("com.apple.notes", "Accounts");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        +[ICDefaultAccountUtilities defaultAccountWithHTMLNoteContext:];
      }

      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __63__ICDefaultAccountUtilities_defaultAccountWithHTMLNoteContext___block_invoke_15;
      v42[3] = &unk_2781950A8;
      v44 = &v54;
      v22 = v3;
      v43 = v22;
      v45 = &v62;
      [v22 performBlockAndWait:v42];
      *buf = 0;
      v66 = buf;
      v67 = 0x3032000000;
      v68 = __Block_byref_object_copy__55;
      v69 = __Block_byref_object_dispose__55;
      v70 = ICProtocolCast();
      if (*(v66 + 5))
      {
        v23 = [v20 managedObjectContext];
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __63__ICDefaultAccountUtilities_defaultAccountWithHTMLNoteContext___block_invoke_2;
        v37[3] = &unk_278199B68;
        v38 = v22;
        v40 = buf;
        v39 = v20;
        v41 = &v54;
        [v23 performBlockAndWait:v37];
      }

      _Block_object_dispose(buf, 8);

      if (!v55[5])
      {
LABEL_28:
        v24 = os_log_create("com.apple.notes", "Accounts");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          +[ICDefaultAccountUtilities defaultAccountWithHTMLNoteContext:];
        }

        v25 = [v10 managedObjectContext];
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __63__ICDefaultAccountUtilities_defaultAccountWithHTMLNoteContext___block_invoke_118;
        v34[3] = &unk_278194DE8;
        v36 = &v54;
        v35 = v10;
        [v25 performBlockAndWait:v34];

        if (!v55[5])
        {
          v26 = os_log_create("com.apple.notes", "Accounts");
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            +[ICDefaultAccountUtilities defaultAccountWithHTMLNoteContext:];
          }

          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __63__ICDefaultAccountUtilities_defaultAccountWithHTMLNoteContext___block_invoke_119;
          v31[3] = &unk_278194D68;
          v32 = v3;
          v33 = &v54;
          [v32 performBlockAndWait:v31];
        }
      }
    }
  }

  v27 = os_log_create("com.apple.notes", "Accounts");
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    v28 = [v55[5] objectID];
    [(ICDefaultAccountUtilities *)v28 defaultAccountWithHTMLNoteContext:buf, v27];
  }

  v29 = v55[5];
  _Block_object_dispose(&v54, 8);

  _Block_object_dispose(&v62, 8);

  return v29;
}

void __63__ICDefaultAccountUtilities_defaultAccountWithHTMLNoteContext___block_invoke_10(uint64_t a1)
{
  v5 = [*(a1 + 32) managedObjectContext];
  v2 = [ICAccount localAccountInContext:v5];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __63__ICDefaultAccountUtilities_defaultAccountWithHTMLNoteContext___block_invoke_12(uint64_t a1)
{
  objc_opt_class();
  v5 = ICCheckedDynamicCast();
  v2 = [v5 localAccount];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __63__ICDefaultAccountUtilities_defaultAccountWithHTMLNoteContext___block_invoke_14(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = [*(a1 + 32) managedObjectContext];
  v4 = [ICAccount accountWithIdentifier:v2 context:v3];

  if ([v4 didChooseToMigrate])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v4);
  }

  else
  {
    v5 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __63__ICDefaultAccountUtilities_defaultAccountWithHTMLNoteContext___block_invoke_14_cold_1();
    }
  }
}

void __63__ICDefaultAccountUtilities_defaultAccountWithHTMLNoteContext___block_invoke_15(uint64_t a1)
{
  objc_opt_class();
  v5 = ICCheckedDynamicCast();
  v2 = [v5 accountForAccountId:*(*(*(a1 + 48) + 8) + 40)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __63__ICDefaultAccountUtilities_defaultAccountWithHTMLNoteContext___block_invoke_2(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__55;
  v13 = __Block_byref_object_dispose__55;
  v14 = 0;
  v2 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__ICDefaultAccountUtilities_defaultAccountWithHTMLNoteContext___block_invoke_3;
  v8[3] = &unk_278196B90;
  v3 = *(a1 + 48);
  v8[4] = &v9;
  v8[5] = v3;
  [v2 performBlockAndWait:v8];
  v4 = v10[5];
  v5 = [*(a1 + 40) managedObjectContext];
  v6 = [ICAccount accountWithIdentifier:v4 context:v5];

  if ([v6 accountType] == 1 && objc_msgSend(v6, "didChooseToMigrate"))
  {
    v7 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __63__ICDefaultAccountUtilities_defaultAccountWithHTMLNoteContext___block_invoke_2_cold_1();
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v6);
  }

  _Block_object_dispose(&v9, 8);
}

void __63__ICDefaultAccountUtilities_defaultAccountWithHTMLNoteContext___block_invoke_3(uint64_t a1)
{
  v2 = [ICLegacyAccountUtilities accountIdentifierForAccount:*(*(*(a1 + 40) + 8) + 40)];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __63__ICDefaultAccountUtilities_defaultAccountWithHTMLNoteContext___block_invoke_118(uint64_t a1)
{
  v5 = [*(a1 + 32) managedObjectContext];
  v2 = [ICAccount cloudKitIfMigratedElseLocalAccountInContext:v5];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __63__ICDefaultAccountUtilities_defaultAccountWithHTMLNoteContext___block_invoke_119(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v2 = ICCheckedDynamicCast();
  v3 = [v2 accountUtilities];
  v4 = [v3 accountsEnabledForNotes];
  v5 = [v4 lastObject];

  if (v5)
  {
    objc_opt_class();
    v6 = ICCheckedDynamicCast();
    v7 = [v5 identifier];
    v8 = [v6 accountForAccountId:v7];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = v5;
      v11 = [v5 childAccounts];
      v12 = [v11 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v33;
        v15 = *MEMORY[0x277CB89F8];
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v33 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*(&v32 + 1) + 8 * i);
            v18 = [v17 accountType];
            v19 = [v18 syncableDataclasses];
            v20 = [v19 containsObject:v15];

            if (v20)
            {
              objc_opt_class();
              v21 = ICCheckedDynamicCast();
              v22 = [v17 identifier];
              v23 = [v21 accountForAccountId:v22];
              v24 = *(*(a1 + 40) + 8);
              v25 = *(v24 + 40);
              *(v24 + 40) = v23;

              goto LABEL_13;
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v32 objects:v36 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:

      v5 = v31;
    }
  }

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v26 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      __63__ICDefaultAccountUtilities_defaultAccountWithHTMLNoteContext___block_invoke_119_cold_1();
    }

    objc_opt_class();
    v27 = ICCheckedDynamicCast();
    v28 = [v27 localAccount];
    v29 = *(*(a1 + 40) + 8);
    v30 = *(v29 + 40);
    *(v29 + 40) = v28;
  }
}

+ (void)_setDefaultAccountIdentifierForTests:(id)a3
{
  v3 = a3;
  os_unfair_lock_lock(&ICDefaultAccountIdentifierLock);
  v4 = ICDefaultAccountIdentifierLockForTests;
  ICDefaultAccountIdentifierLockForTests = v3;

  os_unfair_lock_unlock(&ICDefaultAccountIdentifierLock);
}

+ (id)_defaultAccountIdentifierForTests
{
  os_unfair_lock_lock(&ICDefaultAccountIdentifierLock);
  v2 = ICDefaultAccountIdentifierLockForTests;
  os_unfair_lock_unlock(&ICDefaultAccountIdentifierLock);

  return v2;
}

+ (void)setDefaultAccountIdentifier:(id)a3
{
  [MEMORY[0x277D36260] setObject:a3 forKey:@"DefaultNotesAccount"];
  v3 = [MEMORY[0x277D36290] sharedWidget];
  [v3 reloadTimelinesWithReason:@"Default account has changed"];
}

+ (id)defaultFolderWithHTMLNoteContext:(id)a3
{
  v4 = a3;
  v5 = [a1 defaultAccountWithHTMLNoteContext:v4];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__55;
  v20 = __Block_byref_object_dispose__55;
  v21 = 0;
  v6 = [v5 objectID];
  v7 = [v6 ic_isModernAccountType];

  if (v7)
  {
    v8 = [v5 managedObjectContext];
    v9 = v15;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __62__ICDefaultAccountUtilities_defaultFolderWithHTMLNoteContext___block_invoke;
    v15[3] = &unk_278194DE8;
    v15[5] = &v16;
    v15[4] = v5;
    [v8 performBlockAndWait:v15];
  }

  else
  {
    v10 = [v5 objectID];
    v11 = [v10 ic_isLegacyAccountType];

    if (!v11)
    {
      goto LABEL_6;
    }

    v8 = [v5 managedObjectContext];
    v9 = v14;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __62__ICDefaultAccountUtilities_defaultFolderWithHTMLNoteContext___block_invoke_2;
    v14[3] = &unk_278194DE8;
    v14[5] = &v16;
    v14[4] = v5;
    [v8 performBlockAndWait:v14];
  }

LABEL_6:
  v12 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v12;
}

void __62__ICDefaultAccountUtilities_defaultFolderWithHTMLNoteContext___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v5 = ICCheckedDynamicCast();
  v2 = [v5 defaultFolder];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __62__ICDefaultAccountUtilities_defaultFolderWithHTMLNoteContext___block_invoke_2(uint64_t a1)
{
  objc_opt_class();
  v6 = ICCheckedProtocolCast();
  v2 = [v6 defaultFolder];
  v3 = ICCheckedDynamicCast();
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

+ (id)accountToAddNewNoteWithTagSelection:(id)a3 modernContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 managedObjectContext];

  if (v8 != v7)
  {
    v9 = [v6 copyWithManagedObjectContext:v7];

    v6 = v9;
  }

  v10 = [a1 defaultAccountWithHTMLNoteContext:0];
  objc_opt_class();
  v11 = ICDynamicCast();
  if ([v6 isEmpty])
  {
    v12 = v11;
  }

  else
  {
    v13 = [v6 tags];
    v14 = [v13 count];

    v15 = [v6 tags];
    v16 = v15;
    if (v14 == 1)
    {
      v17 = [v15 firstObject];
      v18 = [v17 account];
      v19 = v18;
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = v11;
      }

      v12 = v20;
    }

    else
    {
      v21 = [v15 ic_compactMap:&__block_literal_global_62];

      v22 = [MEMORY[0x277CBEB98] setWithArray:v21];
      if ([v22 count] == 1)
      {
        v23 = [v22 anyObject];
      }

      else
      {
        v23 = v11;
      }

      v12 = v23;
    }
  }

  return v12;
}

+ (id)accountToAddSmartFolderWithModernContext:(id)a3
{
  v4 = a3;
  v5 = [a1 defaultAccountWithHTMLNoteContext:0];
  objc_opt_class();
  v6 = ICDynamicCast();
  if (v6)
  {
    v7 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [ICDefaultAccountUtilities accountToAddSmartFolderWithModernContext:v6];
    }

    v8 = v6;
  }

  else
  {
    v9 = [ICAccount cloudKitAccountInContext:v4];
    if (v9)
    {
      v10 = os_log_create("com.apple.notes", "Accounts");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [ICDefaultAccountUtilities accountToAddSmartFolderWithModernContext:v9];
      }

      v8 = v9;
    }

    else
    {
      v8 = [ICAccount localAccountInContext:v4];
      if (v8)
      {
        v11 = os_log_create("com.apple.notes", "Accounts");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          +[ICDefaultAccountUtilities accountToAddSmartFolderWithModernContext:];
        }

        v12 = v8;
      }
    }
  }

  return v8;
}

+ (void)defaultAccountWithHTMLNoteContext:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_214D51000, a2, OS_LOG_TYPE_DEBUG, "Retrieved default account ID from settings {accountID: %@}", &v3, 0xCu);
}

+ (void)defaultAccountWithHTMLNoteContext:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_214D51000, a2, OS_LOG_TYPE_DEBUG, "Overriding default account ID for testing {accountID: %@}", &v3, 0xCu);
}

+ (void)defaultAccountWithHTMLNoteContext:(os_log_t)log .cold.9(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_214D51000, log, OS_LOG_TYPE_DEBUG, "Retrieved default account {accountID: %@}", buf, 0xCu);
}

+ (void)accountToAddSmartFolderWithModernContext:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 ic_loggingDescription];
  OUTLINED_FUNCTION_0_0(&dword_214D51000, v2, v3, "Can add smart folder to default modern account: %@", v4, v5, v6, v7, 2u);
}

+ (void)accountToAddSmartFolderWithModernContext:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 ic_loggingDescription];
  OUTLINED_FUNCTION_0_0(&dword_214D51000, v2, v3, "Can add smart folder to CloudKit account: %@", v4, v5, v6, v7, 2u);
}

+ (void)accountToAddSmartFolderWithModernContext:.cold.3()
{
  v0 = [0 ic_loggingDescription];
  OUTLINED_FUNCTION_0_0(&dword_214D51000, v1, v2, "Can add smart folder to local account: %@", v3, v4, v5, v6, 2u);
}

@end