@interface ACAccountStore(BRAdditions)
- (id)_br_getAllAppleAccountsWithError:()BRAdditions;
- (id)br_accountForCurrentPersona;
- (id)br_accountForPersona:()BRAdditions;
- (id)br_allEligibleAppleAccountsWithError:()BRAdditions;
- (id)br_allEnabledAppleAccountsIncludingDataSeparated:()BRAdditions withError:;
- (void)invalidateAccountForPersonaCache;
@end

@implementation ACAccountStore(BRAdditions)

- (id)br_accountForCurrentPersona
{
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentPersona = [mEMORY[0x1E69DF068] currentPersona];
  v4 = [self br_accountForPersona:currentPersona];

  return v4;
}

- (id)_br_getAllAppleAccountsWithError:()BRAdditions
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [self accountTypeWithAccountTypeIdentifier:*MEMORY[0x1E69597F8]];
  v6 = [self accountsWithAccountType:v5];
  if (!v6)
  {
    v7 = [MEMORY[0x1E696ABC0] br_errorWithDomain:@"BRCloudDocsErrorDomain" code:118 description:@"Got nil accounts array back from Accounts Store accountsWithAccountType"];
    if (v7)
    {
      v8 = brc_bread_crumbs("[ACAccountStore(BRAdditions) _br_getAllAppleAccountsWithError:]", 46);
      v9 = brc_default_log(0, 0);
      if (os_log_type_enabled(v9, 0x90u))
      {
        v13 = "(passed to caller)";
        v14 = 136315906;
        v15 = "[ACAccountStore(BRAdditions) _br_getAllAppleAccountsWithError:]";
        v16 = 2080;
        if (!a3)
        {
          v13 = "(ignored by caller)";
        }

        v17 = v13;
        v18 = 2112;
        v19 = v7;
        v20 = 2112;
        v21 = v8;
        _os_log_error_impl(&dword_1AE2A9000, v9, 0x90u, "[ERROR] %s: %s error: %@%@", &v14, 0x2Au);
      }
    }

    if (a3)
    {
      v10 = v7;
      *a3 = v7;
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)br_allEligibleAppleAccountsWithError:()BRAdditions
{
  v1 = [self _br_getAllAppleAccountsWithError:?];
  v2 = [v1 br_copy_if:&__block_literal_global_26];

  return v2;
}

- (id)br_allEnabledAppleAccountsIncludingDataSeparated:()BRAdditions withError:
{
  v5 = [self _br_getAllAppleAccountsWithError:a4];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __90__ACAccountStore_BRAdditions__br_allEnabledAppleAccountsIncludingDataSeparated_withError___block_invoke;
  v8[3] = &__block_descriptor_33_e8_B16__0_8l;
  v9 = a3;
  v6 = [v5 br_copy_if:v8];

  return v6;
}

- (id)br_accountForPersona:()BRAdditions
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (br_accountForPersona__onceToken != -1)
  {
    [ACAccountStore(BRAdditions) br_accountForPersona:];
  }

  obj = _accountForPersona;
  objc_sync_enter(obj);
  v5 = [_accountForPersona objectForKeyedSubscript:@"__defaultPersonaID__"];

  if (!v5)
  {
    aa_primaryAppleAccount = [self aa_primaryAppleAccount];
    [_accountForPersona setObject:aa_primaryAppleAccount forKeyedSubscript:@"__defaultPersonaID__"];
  }

  br_personaID = [v4 br_personaID];
  if (([v4 isDataSeparatedPersona] & 1) == 0)
  {
    v17 = [_accountForPersona objectForKeyedSubscript:@"__defaultPersonaID__"];
    goto LABEL_17;
  }

  v8 = [_accountForPersona objectForKeyedSubscript:br_personaID];

  if (v8)
  {
    goto LABEL_15;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  br_allEligibleAppleAccounts = [self br_allEligibleAppleAccounts];
  v10 = [br_allEligibleAppleAccounts countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v10)
  {
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(br_allEligibleAppleAccounts);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = _accountForPersona;
        br_personaIdentifier = [v13 br_personaIdentifier];
        [v14 setObject:v13 forKeyedSubscript:br_personaIdentifier];
      }

      v10 = [br_allEligibleAppleAccounts countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v10);
  }

  v16 = [_accountForPersona objectForKeyedSubscript:br_personaID];

  if (v16)
  {
LABEL_15:
    v17 = [_accountForPersona objectForKeyedSubscript:br_personaID];
LABEL_17:
    v18 = v17;
    goto LABEL_18;
  }

  v21 = brc_bread_crumbs("[ACAccountStore(BRAdditions) br_accountForPersona:]", 111);
  v22 = brc_default_log(1, 0);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v29 = br_personaID;
    v30 = 2112;
    v31 = v21;
    _os_log_impl(&dword_1AE2A9000, v22, OS_LOG_TYPE_DEFAULT, "[WARNING] couldn't find account for persona %@%@", buf, 0x16u);
  }

  v18 = 0;
LABEL_18:

  objc_sync_exit(obj);
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)invalidateAccountForPersonaCache
{
  +[BRAccountDescriptor clearAccountDescriptorCache];
  if (_accountForPersona)
  {
    obj = _accountForPersona;
    objc_sync_enter(obj);
    [_accountForPersona removeAllObjects];
    objc_sync_exit(obj);
  }
}

@end