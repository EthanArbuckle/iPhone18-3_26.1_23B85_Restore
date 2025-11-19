@interface ACAccountStore
@end

@implementation ACAccountStore

uint64_t __86__ACAccountStore_DeviceManagementClient__dmc_visibleSecondaryRemoteManagementAccounts__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 dmc_altDSID];

  if (v3)
  {
    v4 = [MEMORY[0x1E6959A48] defaultStore];
    v5 = [v2 dmc_altDSID];
    v6 = [v4 dmc_iCloudAccountForRemoteManagingAccountWithAltDSID:v5];

    if (v6)
    {
      v7 = [v6 dmc_isPrimaryAccount] ^ 1;
    }

    else
    {
      v8 = *DMCLogObjects();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = v8;
        v10 = [v2 dmc_altDSID];
        v13 = 138543362;
        v14 = v10;
        _os_log_impl(&dword_1B1630000, v9, OS_LOG_TYPE_ERROR, "No iCloud account for altDSID: %{public}@", &v13, 0xCu);
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

BOOL __89__ACAccountStore_DeviceManagementClient__dmc_conflictingAccountsExistWithUsername_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 username];
  v4 = [v3 caseInsensitiveCompare:*(a1 + 32)] == 0;

  return v4;
}

uint64_t __89__ACAccountStore_DeviceManagementClient__dmc_conflictingAccountsExistWithUsername_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 username];
  if ([v4 caseInsensitiveCompare:*(a1 + 32)])
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 isActive];
  }

  return v5;
}

uint64_t __88__ACAccountStore_DeviceManagementClient__dmc_conflictingAccountsExistWithAltDSID_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 dmc_altDSID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __88__ACAccountStore_DeviceManagementClient__dmc_conflictingAccountsExistWithAltDSID_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 dmc_altDSID];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = [v3 isActive];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL __72__ACAccountStore_DeviceManagementClient__dmc_iCloudAccountWithUsername___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 username];
  v4 = [v3 caseInsensitiveCompare:*(a1 + 32)] == 0;

  return v4;
}

uint64_t __96__ACAccountStore_DeviceManagementClient__dmc_updateAppleAccountWithPersonaID_error_updateBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 dmc_personaIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __79__ACAccountStore_DeviceManagementClient___dmc_updateAccount_error_updateBlock___block_invoke(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__ACAccountStore_DeviceManagementClient___dmc_updateAccount_error_updateBlock___block_invoke_2;
  v6[3] = &unk_1E7ADC280;
  v8 = *(a1 + 48);
  v7 = v2;
  v5 = v2;
  [v3 saveVerifiedAccount:v4 withCompletionHandler:v6];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
}

void __79__ACAccountStore_DeviceManagementClient___dmc_updateAccount_error_updateBlock___block_invoke_2(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t __96__ACAccountStore_DeviceManagementClient__dmc_removeMAIDRelatedAccountsWithAltDSID_asynchronous___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 dmc_altDSID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __98__ACAccountStore_DeviceManagementClient__dmc_removeMAIDRelatedAccountsWithPersonaID_asynchronous___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 dmc_personaIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __73__ACAccountStore_DeviceManagementClient__dmc_accountsWithPredicateBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 accountType];
  v8 = [v7 identifier];
  v9 = [v5 indexOfObject:v8];
  v10 = *(a1 + 32);
  v11 = [v6 accountType];

  v12 = [v11 identifier];
  v13 = v9 - [v10 indexOfObject:v12];

  return v13;
}

uint64_t __74__ACAccountStore_DeviceManagementClient__dmc_removeAccounts_asynchronous___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 accountType];
  v8 = [v7 identifier];
  v9 = [v5 indexOfObject:v8];

  v10 = *(a1 + 32);
  v11 = [v6 accountType];

  v12 = [v11 identifier];
  v13 = [v10 indexOfObject:v12];

  if (v9 < v13)
  {
    return -1;
  }

  else
  {
    return v9 > v13;
  }
}

void __74__ACAccountStore_DeviceManagementClient__dmc_removeAccounts_asynchronous___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = dispatch_semaphore_create(0);
  v3 = *DMCLogObjects();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = v3;
    v6 = [v4 identifier];
    v7 = [*(a1 + 32) accountType];
    v8 = [v7 description];
    *buf = 138543618;
    v17 = v6;
    v18 = 2114;
    v19 = v8;
    _os_log_impl(&dword_1B1630000, v5, OS_LOG_TYPE_DEFAULT, "Will remove account: %{public}@ , type: %{public}@", buf, 0x16u);
  }

  v11 = a1 + 32;
  v9 = *(a1 + 32);
  v10 = *(v11 + 8);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__ACAccountStore_DeviceManagementClient__dmc_removeAccounts_asynchronous___block_invoke_11;
  v14[3] = &unk_1E7ADC320;
  v14[4] = v9;
  v15 = v2;
  v12 = v2;
  [v10 removeAccount:v9 withCompletionHandler:v14];
  dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);

  v13 = *MEMORY[0x1E69E9840];
}

void __74__ACAccountStore_DeviceManagementClient__dmc_removeAccounts_asynchronous___block_invoke_11(uint64_t a1, char a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *DMCLogObjects();
  if ((a2 & 1) == 0)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = v6;
      v14 = [v12 identifier];
      *buf = 138412546;
      v26 = v14;
      v27 = 2114;
      v28 = v5;
      _os_log_impl(&dword_1B1630000, v13, OS_LOG_TYPE_ERROR, "Cannot remove account with ID: %@. Error: %{public}@", buf, 0x16u);
    }

    v8 = objc_opt_new();
    v15 = [*(a1 + 32) identifier];
    v9 = v15;
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = &stru_1F2860120;
    }

    v23[1] = @"Type";
    v24[0] = v16;
    v17 = [*(a1 + 32) accountType];
    v18 = [v17 identifier];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = &stru_1F2860120;
    }

    v24[1] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
    [v8 logErrorEventForTopic:@"Accounts" reason:@"Account Removal Failed" error:v5 details:v21];

    goto LABEL_13;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = [v7 identifier];
    v10 = [*(a1 + 32) accountType];
    v11 = [v10 description];
    *buf = 138543618;
    v26 = v9;
    v27 = 2114;
    v28 = v11;
    _os_log_impl(&dword_1B1630000, v8, OS_LOG_TYPE_DEFAULT, "Account removed: %{public}@ , type: %{public}@", buf, 0x16u);

LABEL_13:
  }

  dispatch_semaphore_signal(*(a1 + 40));

  v22 = *MEMORY[0x1E69E9840];
}

@end