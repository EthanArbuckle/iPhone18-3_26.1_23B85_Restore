@interface ACAccountStore(DeviceManagementClient)
- (DMCHangDetectionQueue)_dmc_workerQueue;
- (id)_dmc_AccountAssociatedWithRemoteManagementWithAccountTypeIdentifier:()DeviceManagementClient;
- (id)_dmc_AccountAssociatedWithRemoteManagementWithAccountTypeIdentifier:()DeviceManagementClient altDSID:;
- (id)_dmc_accountWithType:()DeviceManagementClient error:criteria:;
- (id)dmc_RemoteManagementAccounts;
- (id)dmc_accountsWithPredicateBlock:()DeviceManagementClient;
- (id)dmc_iCloudAccountWithUsername:()DeviceManagementClient;
- (id)dmc_remoteManagementAccountForAltDSID:()DeviceManagementClient;
- (id)dmc_remoteManagementAccountForDSID:()DeviceManagementClient;
- (id)dmc_remoteManagementAccountForEnrollmentURL:()DeviceManagementClient;
- (id)dmc_remoteManagementAccountForIdentifier:()DeviceManagementClient;
- (id)dmc_remoteManagementAccountForManagementProfileIdentifier:()DeviceManagementClient;
- (id)dmc_visibleRemoteManagementAccounts;
- (id)dmc_visibleSecondaryRemoteManagementAccounts;
- (uint64_t)_dmc_updateAccount:()DeviceManagementClient error:updateBlock:;
- (uint64_t)dmc_conflictingAccountsExistWithAltDSID:()DeviceManagementClient error:;
- (uint64_t)dmc_conflictingAccountsExistWithUsername:()DeviceManagementClient error:;
- (uint64_t)dmc_hasPrimaryAccount:()DeviceManagementClient;
- (uint64_t)dmc_updateAccountWithIdentifier:()DeviceManagementClient error:updateBlock:;
- (uint64_t)dmc_updateAccountWithTypeIdentifier:()DeviceManagementClient altDSID:error:updateBlock:;
- (uint64_t)dmc_updateAppleAccountWithPersonaID:()DeviceManagementClient error:updateBlock:;
- (void)dmc_removeAccountWithIdentifier:()DeviceManagementClient asynchronous:;
- (void)dmc_removeAccounts:()DeviceManagementClient asynchronous:;
- (void)dmc_removeMAIDRelatedAccountsWithAltDSID:()DeviceManagementClient asynchronous:;
- (void)dmc_removeMAIDRelatedAccountsWithPersonaID:()DeviceManagementClient asynchronous:;
@end

@implementation ACAccountStore(DeviceManagementClient)

- (id)dmc_visibleSecondaryRemoteManagementAccounts
{
  dmc_visibleRemoteManagementAccounts = [self dmc_visibleRemoteManagementAccounts];
  v2 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_2];
  v3 = [dmc_visibleRemoteManagementAccounts filteredArrayUsingPredicate:v2];

  return v3;
}

- (id)dmc_visibleRemoteManagementAccounts
{
  dmc_RemoteManagementAccounts = [self dmc_RemoteManagementAccounts];
  if (dmc_RemoteManagementAccounts)
  {
    v2 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global];
    v3 = [dmc_RemoteManagementAccounts filteredArrayUsingPredicate:v2];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (id)dmc_RemoteManagementAccounts
{
  dmc_RemoteManagementAccountType = [self dmc_RemoteManagementAccountType];
  v3 = [self accountsWithAccountType:dmc_RemoteManagementAccountType];

  return v3;
}

- (id)_dmc_AccountAssociatedWithRemoteManagementWithAccountTypeIdentifier:()DeviceManagementClient
{
  v4 = a3;
  dmc_RemoteManagementAccounts = [self dmc_RemoteManagementAccounts];
  firstObject = [dmc_RemoteManagementAccounts firstObject];

  if (firstObject)
  {
    dmc_altDSID = [firstObject dmc_altDSID];
    v8 = [self _dmc_AccountAssociatedWithRemoteManagementWithAccountTypeIdentifier:v4 altDSID:dmc_altDSID];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_dmc_AccountAssociatedWithRemoteManagementWithAccountTypeIdentifier:()DeviceManagementClient altDSID:
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v26[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v24 = 0;
  v9 = [self accountsWithAccountTypeIdentifiers:v8 preloadedProperties:0 error:&v24];
  v10 = v24;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v12)
  {
    v13 = *v21;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        dmc_altDSID = [v15 dmc_altDSID];
        v17 = [dmc_altDSID isEqualToString:v7];

        if (v17)
        {
          v12 = v15;
          goto LABEL_11;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v18 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)dmc_remoteManagementAccountForAltDSID:()DeviceManagementClient
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [self dmc_RemoteManagementAccounts];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        dmc_altDSID = [v9 dmc_altDSID];
        v11 = [dmc_altDSID isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)dmc_remoteManagementAccountForDSID:()DeviceManagementClient
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [self dmc_RemoteManagementAccounts];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        dmc_DSID = [v9 dmc_DSID];
        v11 = [dmc_DSID isEqualToNumber:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)dmc_remoteManagementAccountForIdentifier:()DeviceManagementClient
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [self dmc_RemoteManagementAccounts];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [identifier isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)dmc_remoteManagementAccountForEnrollmentURL:()DeviceManagementClient
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [self dmc_RemoteManagementAccounts];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        dmc_enrollmentURL = [v9 dmc_enrollmentURL];
        v11 = [dmc_enrollmentURL isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)dmc_remoteManagementAccountForManagementProfileIdentifier:()DeviceManagementClient
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [self dmc_RemoteManagementAccounts];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        dmc_managementProfileIdentifier = [v9 dmc_managementProfileIdentifier];
        v11 = [dmc_managementProfileIdentifier isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (uint64_t)dmc_hasPrimaryAccount:()DeviceManagementClient
{
  v29[2] = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69597F8];
  v6 = *MEMORY[0x1E6959930];
  v29[0] = *MEMORY[0x1E69597F8];
  v29[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v8 = [self accountsWithAccountTypeIdentifiers:v7 error:a3];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        accountType = [v14 accountType];
        identifier = [accountType identifier];
        if ([identifier isEqualToString:v5])
        {
          dmc_isPrimaryAccount = [v14 dmc_isPrimaryAccount];

          if (dmc_isPrimaryAccount)
          {
            goto LABEL_17;
          }
        }

        else
        {
        }

        accountType2 = [v14 accountType];
        identifier2 = [accountType2 identifier];
        if ([identifier2 isEqualToString:v6])
        {
          isActive = [v14 isActive];

          if (isActive)
          {
LABEL_17:
            v21 = 1;
            goto LABEL_18;
          }
        }

        else
        {
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v21 = 0;
LABEL_18:

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

- (uint64_t)dmc_conflictingAccountsExistWithUsername:()DeviceManagementClient error:
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = *MEMORY[0x1E69597F8];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __89__ACAccountStore_DeviceManagementClient__dmc_conflictingAccountsExistWithUsername_error___block_invoke;
  v23[3] = &unk_1E7ADC258;
  v9 = v7;
  v24 = v9;
  v10 = [self _dmc_accountWithType:v8 error:a4 criteria:v23];
  v11 = v10;
  if (!v10)
  {
    v12 = *MEMORY[0x1E6959930];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __89__ACAccountStore_DeviceManagementClient__dmc_conflictingAccountsExistWithUsername_error___block_invoke_2;
    v21[3] = &unk_1E7ADC258;
    v4 = &v22;
    v22 = v9;
    v11 = [self _dmc_accountWithType:v12 error:a4 criteria:v21];
    if (!v11)
    {
      v18 = 0;
LABEL_8:

      goto LABEL_9;
    }
  }

  v13 = *DMCLogObjects();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    identifier = [v11 identifier];
    accountType = [v11 accountType];
    accountTypeDescription = [accountType accountTypeDescription];
    *buf = 138543874;
    v26 = v9;
    v27 = 2112;
    v28 = identifier;
    v29 = 2114;
    v30 = accountTypeDescription;
    _os_log_impl(&dword_1B1630000, v14, OS_LOG_TYPE_DEFAULT, "Conflicting account with username (%{public}@) exists. Identifier: %@, type: %{public}@", buf, 0x20u);
  }

  v18 = 1;
  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_9:

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (uint64_t)dmc_conflictingAccountsExistWithAltDSID:()DeviceManagementClient error:
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = *MEMORY[0x1E69597F8];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __88__ACAccountStore_DeviceManagementClient__dmc_conflictingAccountsExistWithAltDSID_error___block_invoke;
  v23[3] = &unk_1E7ADC258;
  v9 = v7;
  v24 = v9;
  v10 = [self _dmc_accountWithType:v8 error:a4 criteria:v23];
  v11 = v10;
  if (!v10)
  {
    v12 = *MEMORY[0x1E6959930];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __88__ACAccountStore_DeviceManagementClient__dmc_conflictingAccountsExistWithAltDSID_error___block_invoke_2;
    v21[3] = &unk_1E7ADC258;
    v4 = &v22;
    v22 = v9;
    v11 = [self _dmc_accountWithType:v12 error:a4 criteria:v21];
    if (!v11)
    {
      v18 = 0;
LABEL_8:

      goto LABEL_9;
    }
  }

  v13 = *DMCLogObjects();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    identifier = [v11 identifier];
    accountType = [v11 accountType];
    accountTypeDescription = [accountType accountTypeDescription];
    *buf = 138543874;
    v26 = v9;
    v27 = 2112;
    v28 = identifier;
    v29 = 2114;
    v30 = accountTypeDescription;
    _os_log_impl(&dword_1B1630000, v14, OS_LOG_TYPE_DEFAULT, "Conflicting account with altDSID (%{public}@) exists. Identifier: %@, type: %{public}@", buf, 0x20u);
  }

  v18 = 1;
  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_9:

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (id)dmc_iCloudAccountWithUsername:()DeviceManagementClient
{
  v4 = a3;
  v5 = *MEMORY[0x1E69597F8];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__ACAccountStore_DeviceManagementClient__dmc_iCloudAccountWithUsername___block_invoke;
  v9[3] = &unk_1E7ADC258;
  v10 = v4;
  v6 = v4;
  v7 = [self _dmc_accountWithType:v5 error:0 criteria:v9];

  return v7;
}

- (id)_dmc_accountWithType:()DeviceManagementClient error:criteria:
{
  v32[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v32[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  v28 = 0;
  v11 = [self accountsWithAccountTypeIdentifiers:v10 error:&v28];
  v12 = v28;

  if (v12)
  {
    v13 = *DMCLogObjects();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v31 = v12;
      _os_log_impl(&dword_1B1630000, v13, OS_LOG_TYPE_ERROR, "Failed to fetch accounts with error: %{public}@", buf, 0xCu);
    }

    if (a4)
    {
      v14 = v12;
      v15 = 0;
      *a4 = v12;
      goto LABEL_17;
    }
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v16 = v11;
    v17 = [v16 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v25;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v24 + 1) + 8 * i);
          if (v9[2](v9, v21))
          {
            v15 = v21;

            goto LABEL_17;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v24 objects:v29 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }
  }

  v15 = 0;
LABEL_17:

  v22 = *MEMORY[0x1E69E9840];

  return v15;
}

- (uint64_t)dmc_updateAccountWithTypeIdentifier:()DeviceManagementClient altDSID:error:updateBlock:
{
  v22 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [self _dmc_AccountAssociatedWithRemoteManagementWithAccountTypeIdentifier:v10 altDSID:v11];
  if (v13)
  {
    v14 = [self _dmc_updateAccount:v13 error:a5 updateBlock:v12];
  }

  else
  {
    v15 = *DMCLogObjects();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = 138543618;
      v19 = v10;
      v20 = 2114;
      v21 = v11;
      _os_log_impl(&dword_1B1630000, v15, OS_LOG_TYPE_ERROR, "Couldn't find account with type: %{public}@, altDSID: %{public}@.", &v18, 0x16u);
    }

    if (a5)
    {
      [self _dmc_missingAccountError];
      *a5 = v14 = 0;
    }

    else
    {
      v14 = 0;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

- (uint64_t)dmc_updateAccountWithIdentifier:()DeviceManagementClient error:updateBlock:
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [self dmc_remoteManagementAccountForIdentifier:v8];
  if (v10)
  {
    v11 = [self _dmc_updateAccount:v10 error:a4 updateBlock:v9];
  }

  else
  {
    v12 = *DMCLogObjects();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543362;
      v16 = v8;
      _os_log_impl(&dword_1B1630000, v12, OS_LOG_TYPE_ERROR, "Couldn't find account with identifier: %{public}@", &v15, 0xCu);
    }

    if (a4)
    {
      [self _dmc_missingAccountError];
      *a4 = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

- (uint64_t)dmc_updateAppleAccountWithPersonaID:()DeviceManagementClient error:updateBlock:
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = *MEMORY[0x1E69597F8];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __96__ACAccountStore_DeviceManagementClient__dmc_updateAppleAccountWithPersonaID_error_updateBlock___block_invoke;
  v17[3] = &unk_1E7ADC258;
  v11 = v8;
  v18 = v11;
  v12 = [self _dmc_accountWithType:v10 error:a4 criteria:v17];
  if (v12)
  {
    v13 = [self _dmc_updateAccount:v12 error:a4 updateBlock:v9];
  }

  else
  {
    v14 = *DMCLogObjects();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v20 = v11;
      _os_log_impl(&dword_1B1630000, v14, OS_LOG_TYPE_ERROR, "Couldn't find apple account with persona ID: %{public}@", buf, 0xCu);
    }

    v13 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

- (uint64_t)_dmc_updateAccount:()DeviceManagementClient error:updateBlock:
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = *DMCLogObjects();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    accountType = [v8 accountType];
    accountTypeDescription = [accountType accountTypeDescription];
    dmc_altDSID = [v8 dmc_altDSID];
    *buf = 138543618;
    *&buf[4] = accountTypeDescription;
    *&buf[12] = 2114;
    *&buf[14] = dmc_altDSID;
    _os_log_impl(&dword_1B1630000, v11, OS_LOG_TYPE_DEFAULT, "Will update account with type: %{public}@, altDSID: %{public}@.", buf, 0x16u);
  }

  v9[2](v9, v8);
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 1;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v34 = __Block_byref_object_copy__0;
  v35 = __Block_byref_object_dispose__0;
  v36 = 0;
  _dmc_workerQueue = [self _dmc_workerQueue];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __79__ACAccountStore_DeviceManagementClient___dmc_updateAccount_error_updateBlock___block_invoke;
  v24 = &unk_1E7ADC2A8;
  selfCopy = self;
  v16 = v8;
  v26 = v16;
  v27 = &v29;
  v28 = buf;
  [_dmc_workerQueue queueBlock:&v21];

  _dmc_workerQueue2 = [self _dmc_workerQueue];
  [_dmc_workerQueue2 waitUntilAllBlocksAreFinished];

  if (a4)
  {
    *a4 = *(*&buf[8] + 40);
  }

  v18 = *(v30 + 24);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v29, 8);

  v19 = *MEMORY[0x1E69E9840];
  return v18 & 1;
}

- (void)dmc_removeMAIDRelatedAccountsWithAltDSID:()DeviceManagementClient asynchronous:
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = *DMCLogObjects();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v14 = v6;
    _os_log_impl(&dword_1B1630000, v7, OS_LOG_TYPE_INFO, "Will sign out accounts with altDSID: %{public}@", buf, 0xCu);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __96__ACAccountStore_DeviceManagementClient__dmc_removeMAIDRelatedAccountsWithAltDSID_asynchronous___block_invoke;
  v11[3] = &unk_1E7ADC2D0;
  v12 = v6;
  v8 = v6;
  v9 = [self dmc_accountsWithPredicateBlock:v11];
  [self dmc_removeAccounts:v9 asynchronous:a4];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)dmc_removeMAIDRelatedAccountsWithPersonaID:()DeviceManagementClient asynchronous:
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = *DMCLogObjects();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v14 = v6;
    _os_log_impl(&dword_1B1630000, v7, OS_LOG_TYPE_INFO, "Will remove accounts with personaID: %{public}@", buf, 0xCu);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __98__ACAccountStore_DeviceManagementClient__dmc_removeMAIDRelatedAccountsWithPersonaID_asynchronous___block_invoke;
  v11[3] = &unk_1E7ADC2D0;
  v12 = v6;
  v8 = v6;
  v9 = [self dmc_accountsWithPredicateBlock:v11];
  [self dmc_removeAccounts:v9 asynchronous:a4];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)dmc_removeAccountWithIdentifier:()DeviceManagementClient asynchronous:
{
  v10[1] = *MEMORY[0x1E69E9840];
  v6 = [self accountWithIdentifier:?];
  v7 = v6;
  if (v6)
  {
    v10[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [self dmc_removeAccounts:v8 asynchronous:a4];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)dmc_accountsWithPredicateBlock:()DeviceManagementClient
{
  v22[7] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E69598B0];
  v22[0] = *MEMORY[0x1E6959930];
  v22[1] = v5;
  v6 = *MEMORY[0x1E6959810];
  v22[2] = *MEMORY[0x1E69597F8];
  v22[3] = v6;
  v7 = *MEMORY[0x1E69598E8];
  v22[4] = *MEMORY[0x1E6959888];
  v22[5] = v7;
  v22[6] = *MEMORY[0x1E6959860];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:7];
  v19 = 0;
  v9 = [self accountsWithAccountTypeIdentifiers:v8 preloadedProperties:0 error:&v19];
  v10 = v19;
  if (v10)
  {
    v11 = *DMCLogObjects();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = v10;
      _os_log_impl(&dword_1B1630000, v11, OS_LOG_TYPE_ERROR, "Fetching accounts failed with error: %{public}@", buf, 0xCu);
    }

    v12 = 0;
  }

  else
  {
    v13 = [MEMORY[0x1E696AE18] predicateWithBlock:v4];
    v14 = [v9 filteredArrayUsingPredicate:v13];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __73__ACAccountStore_DeviceManagementClient__dmc_accountsWithPredicateBlock___block_invoke;
    v17[3] = &unk_1E7ADC2F8;
    v18 = v8;
    v12 = [v14 sortedArrayUsingComparator:v17];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)dmc_removeAccounts:()DeviceManagementClient asynchronous:
{
  v31[7] = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E69597F8];
  v31[0] = *MEMORY[0x1E69598E8];
  v31[1] = v6;
  v7 = *MEMORY[0x1E6959860];
  v31[2] = *MEMORY[0x1E69598B0];
  v31[3] = v7;
  v8 = *MEMORY[0x1E6959810];
  v31[4] = *MEMORY[0x1E6959930];
  v31[5] = v8;
  v31[6] = *MEMORY[0x1E6959888];
  v9 = MEMORY[0x1E695DEC8];
  v10 = a3;
  v11 = [v9 arrayWithObjects:v31 count:7];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __74__ACAccountStore_DeviceManagementClient__dmc_removeAccounts_asynchronous___block_invoke;
  v28[3] = &unk_1E7ADC2F8;
  v21 = v11;
  v29 = v21;
  v12 = [v10 sortedArrayUsingComparator:v28];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v12;
  v13 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      v16 = 0;
      do
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v24 + 1) + 8 * v16);
        _dmc_workerQueue = [self _dmc_workerQueue];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __74__ACAccountStore_DeviceManagementClient__dmc_removeAccounts_asynchronous___block_invoke_2;
        v23[3] = &unk_1E7ADC348;
        v23[4] = v17;
        v23[5] = self;
        [_dmc_workerQueue queueBlock:v23];

        if ((a4 & 1) == 0)
        {
          _dmc_workerQueue2 = [self _dmc_workerQueue];
          [_dmc_workerQueue2 waitUntilAllBlocksAreFinished];
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v14);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (DMCHangDetectionQueue)_dmc_workerQueue
{
  v4 = objc_getAssociatedObject(self, a2);
  if (!v4)
  {
    v4 = [[DMCHangDetectionQueue alloc] initWithQoS:-1 hangThreshold:@"ACAccountStore+DMC" owner:65.0];
    objc_setAssociatedObject(self, a2, v4, 1);
  }

  return v4;
}

@end