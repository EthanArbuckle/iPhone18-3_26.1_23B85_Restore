@interface ICMigrationUtilities
+ (void)deleteMigratedHTMLAccountIfNecessaryForModernAccount:(id)a3;
+ (void)deleteMigratedHTMLAccountsInContext:(id)a3;
+ (void)fetchAndSetMigrationStateForAccountID:(id)a3 withCompletionHandler:(id)a4;
+ (void)fetchMigrationStateAndUserRecordForAccountID:(id)a3 withCompletionHandler:(id)a4;
+ (void)fetchMigrationStateForAccountID:(id)a3 withCompletionHandler:(id)a4;
+ (void)saveDidChooseToMigrate:(BOOL)a3 didFinishMigration:(BOOL)a4 didMigrateOnMac:(BOOL)a5 toACAccount:(id)a6 inStore:(id)a7 completionHandler:(id)a8;
+ (void)updateAllLegacyAccountMigrationStatesInContext:(id)a3;
+ (void)updateLegacyAccountMigrationStateForModernAccount:(id)a3;
@end

@implementation ICMigrationUtilities

+ (void)fetchMigrationStateForAccountID:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__ICMigrationUtilities_fetchMigrationStateForAccountID_withCompletionHandler___block_invoke;
  v8[3] = &unk_278197220;
  v9 = v6;
  v7 = v6;
  [a1 fetchMigrationStateAndUserRecordForAccountID:a3 withCompletionHandler:v8];
}

uint64_t __78__ICMigrationUtilities_fetchMigrationStateForAccountID_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a3, a4, a6);
  }

  return result;
}

+ (void)fetchMigrationStateAndUserRecordForAccountID:(id)a3 withCompletionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [ICCloudContext newNotesContainerForAccountID:v5];
  v8 = [MEMORY[0x277CBC3E0] fetchCurrentUserRecordOperation];
  objc_initWeak(&location, v8);
  [v8 setQualityOfService:17];
  v9 = [v8 configuration];
  [v9 setDiscretionaryNetworkBehavior:0];

  v10 = [v7 privateCloudDatabase];
  [v8 setDatabase:v10];

  v11 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    +[ICMigrationUtilities fetchMigrationStateAndUserRecordForAccountID:withCompletionHandler:];
  }

  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v29 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__28;
  v22[4] = __Block_byref_object_dispose__28;
  v23 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __91__ICMigrationUtilities_fetchMigrationStateAndUserRecordForAccountID_withCompletionHandler___block_invoke;
  v21[3] = &unk_278197248;
  v21[4] = v28;
  v21[5] = v26;
  v21[6] = v24;
  v21[7] = v22;
  [v8 setPerRecordCompletionBlock:v21];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __91__ICMigrationUtilities_fetchMigrationStateAndUserRecordForAccountID_withCompletionHandler___block_invoke_5;
  v14[3] = &unk_278197270;
  objc_copyWeak(&v20, &location);
  v12 = v6;
  v15 = v12;
  v16 = v28;
  v17 = v26;
  v18 = v24;
  v19 = v22;
  [v8 setFetchRecordsCompletionBlock:v14];
  v13 = [v7 privateCloudDatabase];
  [v13 addOperation:v8];

  objc_destroyWeak(&v20);
  _Block_object_dispose(v22, 8);

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(v26, 8);
  _Block_object_dispose(v28, 8);
  objc_destroyWeak(&location);
}

void __91__ICMigrationUtilities_fetchMigrationStateAndUserRecordForAccountID_withCompletionHandler___block_invoke(void *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = os_log_create("com.apple.notes", "Migration");
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __91__ICMigrationUtilities_fetchMigrationStateAndUserRecordForAccountID_withCompletionHandler___block_invoke_cold_1();
    }

    v10 = [v6 objectForKeyedSubscript:@"DidChooseToMigrate"];
    *(*(a1[4] + 8) + 24) = [v10 BOOLValue];

    v11 = [v6 objectForKeyedSubscript:@"DidFinishMigration"];
    *(*(a1[5] + 8) + 24) = [v11 BOOLValue];

    v12 = [v6 objectForKeyedSubscript:@"DidMigrateOnMac"];
    *(*(a1[6] + 8) + 24) = [v12 BOOLValue];

    v13 = *(a1[7] + 8);
    v14 = v6;
    v9 = *(v13 + 40);
    *(v13 + 40) = v14;
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __91__ICMigrationUtilities_fetchMigrationStateAndUserRecordForAccountID_withCompletionHandler___block_invoke_cold_2();
  }
}

void __91__ICMigrationUtilities_fetchMigrationStateAndUserRecordForAccountID_withCompletionHandler___block_invoke_5(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __91__ICMigrationUtilities_fetchMigrationStateAndUserRecordForAccountID_withCompletionHandler___block_invoke_5_cold_1(a1);
  }

  if (v4)
  {
    v6 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __91__ICMigrationUtilities_fetchMigrationStateAndUserRecordForAccountID_withCompletionHandler___block_invoke_5_cold_2();
    }
  }

  v7 = a1[4];
  if (v7)
  {
    (*(v7 + 16))(v7, *(*(a1[5] + 8) + 24), *(*(a1[6] + 8) + 24), *(*(a1[7] + 8) + 24), *(*(a1[8] + 8) + 40), v4);
  }
}

+ (void)fetchAndSetMigrationStateForAccountID:(id)a3 withCompletionHandler:(id)a4
{
  v26[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    +[ICMigrationUtilities fetchAndSetMigrationStateForAccountID:withCompletionHandler:];
  }

  v9 = +[ICNoteContext sharedContext];
  v10 = [v9 managedObjectContext];
  if (v6)
  {
    v11 = [ICAccount cloudKitAccountWithIdentifier:v6 context:v10];

    if (v11)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __84__ICMigrationUtilities_fetchAndSetMigrationStateForAccountID_withCompletionHandler___block_invoke;
      v20[3] = &unk_2781972C0;
      v21 = v9;
      v22 = v6;
      v24 = a1;
      v23 = v7;
      [a1 fetchMigrationStateAndUserRecordForAccountID:v22 withCompletionHandler:v20];

      v12 = v21;
LABEL_14:

      goto LABEL_15;
    }
  }

  else
  {
    v13 = [ICAccount cloudKitAccountInContext:v10];
    if (v13)
    {
      v14 = v13;
      v15 = [v9 primaryICloudACAccount];

      if (v15)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }
  }

  v16 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    +[ICMigrationUtilities fetchAndSetMigrationStateForAccountID:withCompletionHandler:];
  }

  if (v7)
  {
    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277D36110];
    v25 = *MEMORY[0x277CCA450];
    v26[0] = @"No CloudKit account while fetching migration state";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v19 = [v17 errorWithDomain:v18 code:203 userInfo:v12];
    (*(v7 + 2))(v7, 0, 0, v19);

    goto LABEL_14;
  }

LABEL_15:
}

void __84__ICMigrationUtilities_fetchAndSetMigrationStateForAccountID_withCompletionHandler___block_invoke(uint64_t a1, char a2, char a3, char a4, void *a5, void *a6)
{
  v11 = a5;
  v12 = a6;
  v13 = [*(a1 + 32) managedObjectContext];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __84__ICMigrationUtilities_fetchAndSetMigrationStateForAccountID_withCompletionHandler___block_invoke_2;
  v19[3] = &unk_278197298;
  v20 = v12;
  v21 = *(a1 + 40);
  v14 = *(a1 + 32);
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v22 = v14;
  v23 = v11;
  v18 = *(a1 + 48);
  v15 = v18;
  v24 = v18;
  v16 = v11;
  v17 = v12;
  [v13 performBlockAndWait:v19];
}

void __84__ICMigrationUtilities_fetchAndSetMigrationStateForAccountID_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) managedObjectContext];
  if (v3)
  {
    v5 = [ICAccount cloudKitAccountWithIdentifier:v3 context:v4];

    v6 = [MEMORY[0x277D36178] sharedInstance];
    v7 = [v6 iCloudACAccountWithIdentifier:*(a1 + 40)];

    if (!v5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v5 = [ICAccount cloudKitAccountInContext:v4];

    v7 = [*(a1 + 48) primaryICloudACAccount];
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  if (v7)
  {
    if (!v2)
    {
      v8 = [v5 didChooseToMigrate];
      v9 = *(a1 + 80);
      if (v9 != v8)
      {
        v10 = [MEMORY[0x277CCAB98] defaultCenter];
        [v10 postNotificationName:*MEMORY[0x277D36140] object:0];

        [v5 setDidChooseToMigrate:*(a1 + 80)];
      }

      [v5 setDidFinishMigration:*(a1 + 81)];
      [v5 setDidMigrateOnMac:*(a1 + 82)];
      [v5 setServerRecord:*(a1 + 56)];
      v11 = *(a1 + 72);
      v12 = *(a1 + 80);
      v13 = *(a1 + 81);
      v14 = *(a1 + 82);
      v15 = [v7 accountStore];
      [v11 saveDidChooseToMigrate:v12 didFinishMigration:v13 didMigrateOnMac:v14 toACAccount:v7 inStore:v15 completionHandler:0];

      if (v9 == v8)
      {
        v2 = 0;
        goto LABEL_16;
      }

      v19 = [MEMORY[0x277CCAB98] defaultCenter];
      v21 = *MEMORY[0x277D36138];
      v24 = *MEMORY[0x277D36130];
      v22 = [v5 identifier];
      v25 = v22;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      [v19 postNotificationName:v21 object:0 userInfo:v23];

      v2 = 0;
      goto LABEL_15;
    }

LABEL_13:
    v19 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __84__ICMigrationUtilities_fetchAndSetMigrationStateForAccountID_withCompletionHandler___block_invoke_2_cold_1();
    }

LABEL_15:

    goto LABEL_16;
  }

LABEL_11:
  if (v2)
  {
    goto LABEL_13;
  }

  v16 = MEMORY[0x277CCA9B8];
  v17 = *MEMORY[0x277D36110];
  v26 = *MEMORY[0x277CCA450];
  v27[0] = @"No CloudKit account after fetching migration state";
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v2 = [v16 errorWithDomain:v17 code:203 userInfo:v18];

  if (v2)
  {
    goto LABEL_13;
  }

LABEL_16:
  v20 = *(a1 + 64);
  if (v20)
  {
    (*(v20 + 16))(v20, [v5 didChooseToMigrate], objc_msgSend(v5, "didFinishMigration"), v2);
  }
}

+ (void)saveDidChooseToMigrate:(BOOL)a3 didFinishMigration:(BOOL)a4 didMigrateOnMac:(BOOL)a5 toACAccount:(id)a6 inStore:(id)a7 completionHandler:(id)a8
{
  v30 = a5;
  v31 = a4;
  v32 = a3;
  v47 = *MEMORY[0x277D85DE8];
  v10 = a6;
  v29 = a7;
  v11 = a8;
  v12 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v27 = [v10 identifier];
    *buf = 67109890;
    v40 = v32;
    v41 = 1024;
    v42 = v31;
    v43 = 1024;
    v44 = v30;
    v45 = 2112;
    v46 = v27;
    _os_log_debug_impl(&dword_214D51000, v12, OS_LOG_TYPE_DEBUG, "Trying to set didChooseToMigrate=%d didFinishMigration=%d didMigrateOnMac=%d on ACAccount (%@)", buf, 0x1Eu);
  }

  v13 = *MEMORY[0x277D36098];
  v14 = [v10 objectForKeyedSubscript:*MEMORY[0x277D36098]];
  v15 = *MEMORY[0x277D360A0];
  v16 = [v10 objectForKeyedSubscript:*MEMORY[0x277D360A0]];
  v17 = *MEMORY[0x277D360A8];
  v18 = [v10 objectForKeyedSubscript:*MEMORY[0x277D360A8]];
  v19 = [v14 BOOLValue];
  v20 = [v16 BOOLValue];
  v21 = [v18 BOOLValue];
  if (!v14 || !v16 || !v18 || ((v19 ^ v32) & 1) != 0 || ((v20 ^ v31) & 1) != 0 || v21 != v30)
  {
    v23 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v28 = [v10 identifier];
      *buf = 67109890;
      v40 = v32;
      v41 = 1024;
      v42 = v31;
      v43 = 1024;
      v44 = v30;
      v45 = 2112;
      v46 = v28;
      _os_log_debug_impl(&dword_214D51000, v23, OS_LOG_TYPE_DEBUG, "Actually setting didChooseToMigrate=%d didFinishMigration=%d didMigrateOnMac=%d on ACAccount (%@)", buf, 0x1Eu);
    }

    v24 = [MEMORY[0x277CCABB0] numberWithBool:v32];
    [v10 setObject:v24 forKeyedSubscript:v13];

    v25 = [MEMORY[0x277CCABB0] numberWithBool:v31];
    [v10 setObject:v25 forKeyedSubscript:v15];

    v26 = [MEMORY[0x277CCABB0] numberWithBool:v30];
    [v10 setObject:v26 forKeyedSubscript:v17];

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __120__ICMigrationUtilities_saveDidChooseToMigrate_didFinishMigration_didMigrateOnMac_toACAccount_inStore_completionHandler___block_invoke;
    v33[3] = &unk_2781972E8;
    v36 = v32;
    v37 = v31;
    v38 = v30;
    v34 = v10;
    v35 = v11;
    v22 = v29;
    [v29 saveAccount:v34 withCompletionHandler:v33];
  }

  else
  {
    v22 = v29;
    if (v11)
    {
      (*(v11 + 2))(v11, 1, 0);
    }
  }
}

void __120__ICMigrationUtilities_saveDidChooseToMigrate_didFinishMigration_didMigrateOnMac_toACAccount_inStore_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = os_log_create("com.apple.notes", "Migration");
  v7 = v6;
  if (v5 || (a2 & 1) == 0)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __120__ICMigrationUtilities_saveDidChooseToMigrate_didFinishMigration_didMigrateOnMac_toACAccount_inStore_completionHandler___block_invoke_cold_1();
    }
  }

  else
  {
    v8 = v6;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __120__ICMigrationUtilities_saveDidChooseToMigrate_didFinishMigration_didMigrateOnMac_toACAccount_inStore_completionHandler___block_invoke_cold_2(a1);
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v5);
  }
}

+ (void)updateLegacyAccountMigrationStateForModernAccount:(id)a3
{
  v3 = a3;
  v4 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [ICMigrationUtilities updateLegacyAccountMigrationStateForModernAccount:v3];
  }

  v5 = objc_alloc_init(MEMORY[0x277D35930]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__ICMigrationUtilities_updateLegacyAccountMigrationStateForModernAccount___block_invoke;
  v12[3] = &unk_278194AD8;
  v13 = v3;
  v14 = v5;
  v6 = v5;
  v7 = v3;
  v8 = _Block_copy(v12);
  v8[2](v8, v9, v10, v11);
}

void __74__ICMigrationUtilities_updateLegacyAccountMigrationStateForModernAccount___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v2 = [*(a1 + 32) accountType];
  if (v2 == 1)
  {
    v6 = [*(a1 + 32) managedObjectContext];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __74__ICMigrationUtilities_updateLegacyAccountMigrationStateForModernAccount___block_invoke_2;
    v19[3] = &unk_278194DE8;
    v21 = &v22;
    v20 = *(a1 + 32);
    [v6 performBlockAndWait:v19];

    v5 = [ICLegacyAccountUtilities legacyAccountForPrimaryICloudAccountWithContext:*(a1 + 40)];
  }

  else
  {
    if (v2 != 3)
    {
      v5 = 0;
      goto LABEL_19;
    }

    v3 = [MEMORY[0x277D36260] objectForKey:*MEMORY[0x277D362A0]];
    v4 = [v3 BOOLValue];
    *(v23 + 24) = v4;

    v5 = [ICLegacyAccountUtilities legacyAccountForLocalAccountWithContext:*(a1 + 40)];
  }

  if (v5)
  {
    v7 = [v5 didChooseToMigrate];
    if (*(v23 + 24) != v7)
    {
      if ([*(a1 + 32) didFinishMigration])
      {
        v8 = MEMORY[0x277D361A0];
        v9 = [v5 accountIdentifier];
        [v8 markAccountReindexedForMigration:v9];

        v10 = os_log_create("com.apple.notes", "Migration");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v11 = [v5 accountIdentifier];
          __74__ICMigrationUtilities_updateLegacyAccountMigrationStateForModernAccount___block_invoke_cold_1(v11, buf, v10);
        }
      }

      v12 = os_log_create("com.apple.notes", "Migration");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = [v5 accountIdentifier];
        __74__ICMigrationUtilities_updateLegacyAccountMigrationStateForModernAccount___block_invoke_cold_2(v13, v26, v12);
      }

      [v5 setDidChooseToMigrate:*(v23 + 24)];
      v14 = *(a1 + 40);
      v18 = 0;
      v15 = [v14 save:&v18];
      v16 = v18;
      if ((v15 & 1) == 0)
      {
        v17 = os_log_create("com.apple.notes", "Migration");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          __74__ICMigrationUtilities_updateLegacyAccountMigrationStateForModernAccount___block_invoke_cold_3();
        }
      }
    }
  }

LABEL_19:
  _Block_object_dispose(&v22, 8);
}

uint64_t __74__ICMigrationUtilities_updateLegacyAccountMigrationStateForModernAccount___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) didChooseToMigrate];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

+ (void)updateAllLegacyAccountMigrationStatesInContext:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    +[ICMigrationUtilities updateAllLegacyAccountMigrationStatesInContext:];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__ICMigrationUtilities_updateAllLegacyAccountMigrationStatesInContext___block_invoke;
  v7[3] = &unk_278196CD8;
  v8 = v4;
  v9 = a1;
  v6 = v4;
  [v6 performBlockAndWait:v7];
}

void __71__ICMigrationUtilities_updateAllLegacyAccountMigrationStatesInContext___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [ICAccount allAccountsInContext:*(a1 + 32)];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) updateLegacyAccountMigrationStateForModernAccount:*(*(&v7 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

+ (void)deleteMigratedHTMLAccountsInContext:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__ICMigrationUtilities_deleteMigratedHTMLAccountsInContext___block_invoke;
  v6[3] = &unk_278196CD8;
  v7 = v4;
  v8 = a1;
  v5 = v4;
  [v5 performBlockAndWait:v6];
}

void __60__ICMigrationUtilities_deleteMigratedHTMLAccountsInContext___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [ICAccount allAccountsInContext:*(a1 + 32)];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) deleteMigratedHTMLAccountIfNecessaryForModernAccount:*(*(&v7 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

+ (void)deleteMigratedHTMLAccountIfNecessaryForModernAccount:(id)a3
{
  v3 = a3;
  if ([v3 didFinishMigration])
  {
    v4 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [ICMigrationUtilities deleteMigratedHTMLAccountIfNecessaryForModernAccount:v3];
    }

    v5 = ICNewLegacyContext();
    v6 = [v5 managedObjectContext];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __77__ICMigrationUtilities_deleteMigratedHTMLAccountIfNecessaryForModernAccount___block_invoke;
    v9[3] = &unk_278194DC0;
    v10 = v3;
    v11 = v5;
    v12 = v6;
    v7 = v6;
    v8 = v5;
    [v7 performBlockAndWait:v9];
  }
}

void __77__ICMigrationUtilities_deleteMigratedHTMLAccountIfNecessaryForModernAccount___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) accountType];
  if (v3 == 1)
  {
    v4 = [ICLegacyAccountUtilities legacyAccountForICloudAccount:*(a1 + 32) context:*(a1 + 40)];
  }

  else
  {
    if (v3 != 3)
    {
      goto LABEL_9;
    }

    v4 = [ICLegacyAccountUtilities legacyAccountForLocalAccountWithContext:*(a1 + 40)];
  }

  v5 = v4;
  if (v4)
  {
    v6 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __77__ICMigrationUtilities_deleteMigratedHTMLAccountIfNecessaryForModernAccount___block_invoke_cold_1(v2);
    }

    objc_opt_class();
    v7 = ICCheckedDynamicCast();
    objc_opt_class();
    v8 = ICCheckedDynamicCast();
    [v7 forceDeleteAccount:v8];

    [*(a1 + 48) ic_saveWithLogDescription:@"Deleting migrated HTML account"];
    goto LABEL_12;
  }

LABEL_9:
  v5 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __77__ICMigrationUtilities_deleteMigratedHTMLAccountIfNecessaryForModernAccount___block_invoke_cold_2(v2);
  }

LABEL_12:
}

+ (void)fetchMigrationStateAndUserRecordForAccountID:withCompletionHandler:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_214D51000, v0, OS_LOG_TYPE_DEBUG, "Fetching migration state from user record: %@", v1, 0xCu);
}

void __91__ICMigrationUtilities_fetchMigrationStateAndUserRecordForAccountID_withCompletionHandler___block_invoke_5_cold_1(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __120__ICMigrationUtilities_saveDidChooseToMigrate_didFinishMigration_didMigrateOnMac_toACAccount_inStore_completionHandler___block_invoke_cold_2(uint64_t a1)
{
  v6 = [*(a1 + 32) identifier];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x1Eu);
}

+ (void)updateLegacyAccountMigrationStateForModernAccount:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __74__ICMigrationUtilities_updateLegacyAccountMigrationStateForModernAccount___block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_214D51000, log, OS_LOG_TYPE_DEBUG, "Marked this legacy account to avoid it triggering reindexing %@", buf, 0xCu);
}

void __74__ICMigrationUtilities_updateLegacyAccountMigrationStateForModernAccount___block_invoke_cold_2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_214D51000, log, OS_LOG_TYPE_DEBUG, "Updating migration state for legacy account %@", buf, 0xCu);
}

+ (void)deleteMigratedHTMLAccountIfNecessaryForModernAccount:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __77__ICMigrationUtilities_deleteMigratedHTMLAccountIfNecessaryForModernAccount___block_invoke_cold_1(id *a1)
{
  v1 = [*a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __77__ICMigrationUtilities_deleteMigratedHTMLAccountIfNecessaryForModernAccount___block_invoke_cold_2(id *a1)
{
  v1 = [*a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end