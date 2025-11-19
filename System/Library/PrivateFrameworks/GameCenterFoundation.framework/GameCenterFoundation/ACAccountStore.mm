@interface ACAccountStore
@end

@implementation ACAccountStore

void __54__ACAccountStore_GameCenter___gkMapAccountsWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *MEMORY[0x277CB8C38];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__ACAccountStore_GameCenter___gkMapAccountsWithBlock___block_invoke_2;
  v7[3] = &unk_2785E08C0;
  v5 = *(a1 + 32);
  v9 = v3;
  v7[4] = v5;
  v10 = *(a1 + 48);
  v8 = *(a1 + 40);
  v6 = v3;
  [v5 accountTypeWithIdentifier:v4 completion:v7];
}

void __54__ACAccountStore_GameCenter___gkMapAccountsWithBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    v8 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_INFO, "NOT GRANTED ACCESS TO GAME CENTER ACCOUNTS DUE TO AN ACCOUNT INTERNAL ERROR", buf, 2u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __54__ACAccountStore_GameCenter___gkMapAccountsWithBlock___block_invoke_78;
    v10[3] = &unk_2785E0898;
    v10[4] = v9;
    v11 = v5;
    v13 = *(a1 + 56);
    v12 = *(a1 + 40);
    v14 = *(a1 + 48);
    [v9 requestAccessToAccountsWithType:v11 options:0 completion:v10];
  }
}

void __54__ACAccountStore_GameCenter___gkMapAccountsWithBlock___block_invoke_78(uint64_t a1, char a2, void *a3)
{
  v90 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = [*(a1 + 32) accountsWithAccountType:*(a1 + 40)];
    v7 = [MEMORY[0x277CBEB18] array];
    v60 = v5;
    if (![v6 count])
    {
      obj = v6;
      goto LABEL_26;
    }

    v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"username" ascending:0];
    v9 = [MEMORY[0x277CBEA60] arrayWithObject:v8];
    v10 = [v6 sortedArrayUsingDescriptors:v9];

    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v11 = v10;
    obj = v11;
    v12 = [v11 countByEnumeratingWithState:&v81 objects:v89 count:16];
    if (v12)
    {
      v13 = v12;
      v58 = v9;
      v61 = v8;
      v11 = 0;
      v14 = *v82;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v82 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v81 + 1) + 8 * i);
          if (v11)
          {
            v17 = [*(*(&v81 + 1) + 8 * i) username];
            v18 = [v11 username];
            v19 = [v17 isEqual:v18];

            if (v19)
            {
              v20 = [v16 creationDate];
              v21 = [v11 creationDate];
              v22 = [v20 compare:v21];

              v23 = *(a1 + 32);
              if (v22 == 1)
              {
                v79[0] = MEMORY[0x277D85DD0];
                v79[1] = 3221225472;
                v79[2] = __54__ACAccountStore_GameCenter___gkMapAccountsWithBlock___block_invoke_84;
                v79[3] = &unk_2785E0848;
                v80 = v11;
                v24 = v11;
                [v23 removeAccount:v24 withCompletionHandler:v79];
                v11 = v16;
              }

              else
              {
                v78[0] = MEMORY[0x277D85DD0];
                v78[1] = 3221225472;
                v78[2] = __54__ACAccountStore_GameCenter___gkMapAccountsWithBlock___block_invoke_86;
                v78[3] = &unk_2785E0848;
                v78[4] = v16;
                [v23 removeAccount:v16 withCompletionHandler:v78];
              }
            }

            else
            {
              [v7 addObject:v11];
              v25 = v16;

              v11 = v25;
            }
          }

          else
          {
            v11 = v16;
          }
        }

        v13 = [obj countByEnumeratingWithState:&v81 objects:v89 count:16];
      }

      while (v13);

      v8 = v61;
      v9 = v58;
      if (!v11)
      {
        goto LABEL_20;
      }

      [v7 addObject:v11];
    }

LABEL_20:
    v5 = v60;
LABEL_26:
    if ([v7 count] >= 2)
    {
      v28 = [MEMORY[0x277CBEB38] dictionary];
      v63 = objc_alloc_init(MEMORY[0x277CF0178]);
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v59 = v7;
      v29 = v7;
      v30 = [v29 countByEnumeratingWithState:&v74 objects:v88 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v75;
        v62 = a1;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v75 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v74 + 1) + 8 * j);
            v35 = [v34 accountPropertyForKey:{@"playerID", v59}];
            if ([v35 length])
            {
              v36 = [v28 objectForKeyedSubscript:v35];

              if (v36)
              {
                v37 = [v28 objectForKeyedSubscript:v35];
                [v37 addObject:v34];
              }

              else
              {
                v37 = [MEMORY[0x277CBEB18] arrayWithObject:v34];
                [v28 setObject:v37 forKeyedSubscript:v35];
              }
            }

            else
            {
              v37 = [v34 accountPropertyForKey:@"altDSID"];
              if (v37)
              {
                v38 = v31;
                v39 = v32;
                v40 = v28;
                v41 = v29;
                v42 = +[GKPreferences shared];
                v43 = [v42 isInternalBuild];

                if (v43)
                {
                  if (!os_log_GKGeneral)
                  {
                    v44 = GKOSLoggers();
                  }

                  v45 = os_log_GKAccount;
                  if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v87 = v37;
                    _os_log_debug_impl(&dword_227904000, v45, OS_LOG_TYPE_DEBUG, "GKAuth:telling authkit account is not in use using altDSID:%@", buf, 0xCu);
                  }
                }

                [v63 setAppleIDWithAltDSID:v37 inUse:0 forService:6];
                v29 = v41;
                v28 = v40;
                v32 = v39;
                v31 = v38;
                a1 = v62;
              }

              [v29 removeObject:v34];
              v46 = *(a1 + 32);
              v73[0] = MEMORY[0x277D85DD0];
              v73[1] = 3221225472;
              v73[2] = __54__ACAccountStore_GameCenter___gkMapAccountsWithBlock___block_invoke_88;
              v73[3] = &unk_2785E0848;
              v73[4] = v34;
              [v46 removeAccount:v34 withCompletionHandler:v73];
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v74 objects:v88 count:16];
        }

        while (v31);
      }

      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v69[2] = __54__ACAccountStore_GameCenter___gkMapAccountsWithBlock___block_invoke_89;
      v69[3] = &unk_2785E0870;
      v70 = v63;
      v47 = v29;
      v48 = *(a1 + 32);
      v71 = v47;
      v72 = v48;
      v49 = v63;
      [v28 enumerateKeysAndObjectsUsingBlock:v69];

      v7 = v59;
      v5 = v60;
    }

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v50 = v7;
    v51 = [v50 countByEnumeratingWithState:&v65 objects:v85 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v66;
      do
      {
        for (k = 0; k != v52; ++k)
        {
          if (*v66 != v53)
          {
            objc_enumerationMutation(v50);
          }

          v55 = *(*(&v65 + 1) + 8 * k);
          v56 = (*(*(a1 + 56) + 16))();
          if ([v56 count])
          {
            [*(a1 + 48) addObjectsFromArray:v56];
          }
        }

        v52 = [v50 countByEnumeratingWithState:&v65 objects:v85 count:16];
      }

      while (v52);
    }

    goto LABEL_57;
  }

  if (!os_log_GKGeneral)
  {
    v26 = GKOSLoggers();
  }

  v27 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_227904000, v27, OS_LOG_TYPE_INFO, "NOT GRANTED ACCESS TO GAME CENTER ACCOUNTS", buf, 2u);
  }

LABEL_57:
  (*(*(a1 + 64) + 16))();

  v57 = *MEMORY[0x277D85DE8];
}

void __54__ACAccountStore_GameCenter___gkMapAccountsWithBlock___block_invoke_84(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[GKPreferences shared];
  v7 = [v6 isInternalBuild];

  if (v7)
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKAccount;
    if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 32);
      v12 = 138412802;
      v13 = v11;
      v14 = 1024;
      v15 = a2;
      v16 = 2112;
      v17 = v5;
      _os_log_debug_impl(&dword_227904000, v9, OS_LOG_TYPE_DEBUG, "DELETE ACCOUNT(%@): success:%d error:%@", &v12, 0x1Cu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __54__ACAccountStore_GameCenter___gkMapAccountsWithBlock___block_invoke_86(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[GKPreferences shared];
  v7 = [v6 isInternalBuild];

  if (v7)
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKAccount;
    if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 32);
      v12 = 138412802;
      v13 = v11;
      v14 = 1024;
      v15 = a2;
      v16 = 2112;
      v17 = v5;
      _os_log_debug_impl(&dword_227904000, v9, OS_LOG_TYPE_DEBUG, "DELETE ACCOUNT(%@): success:%d error:%@", &v12, 0x1Cu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __54__ACAccountStore_GameCenter___gkMapAccountsWithBlock___block_invoke_88(uint64_t a1)
{
  v2 = +[GKPreferences shared];
  v3 = [v2 isInternalBuild];

  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
    {
      __54__ACAccountStore_GameCenter___gkMapAccountsWithBlock___block_invoke_88_cold_1(a1);
    }
  }
}

void __54__ACAccountStore_GameCenter___gkMapAccountsWithBlock___block_invoke_89(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count] >= 2)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v17 = v4;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v21;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v20 + 1) + 8 * i);
          v10 = [v9 accountPropertyForKey:@"altDSID"];
          if (v10)
          {
            v11 = +[GKPreferences shared];
            v12 = [v11 isInternalBuild];

            if (v12)
            {
              if (!os_log_GKGeneral)
              {
                v13 = GKOSLoggers();
              }

              v14 = os_log_GKAccount;
              if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v25 = v10;
                _os_log_debug_impl(&dword_227904000, v14, OS_LOG_TYPE_DEBUG, "GKAuth:telling authkit account is not in use using altDSID:%@", buf, 0xCu);
              }
            }

            [*(a1 + 32) setAppleIDWithAltDSID:v10 inUse:0 forService:6];
          }

          [*(a1 + 40) removeObject:v9];
          v15 = *(a1 + 48);
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 3221225472;
          v19[2] = __54__ACAccountStore_GameCenter___gkMapAccountsWithBlock___block_invoke_90;
          v19[3] = &unk_2785E0848;
          v19[4] = v9;
          [v15 removeAccount:v9 withCompletionHandler:v19];
        }

        v6 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v6);
    }

    v4 = v17;
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __54__ACAccountStore_GameCenter___gkMapAccountsWithBlock___block_invoke_90(uint64_t a1)
{
  v2 = +[GKPreferences shared];
  v3 = [v2 isInternalBuild];

  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
    {
      __54__ACAccountStore_GameCenter___gkMapAccountsWithBlock___block_invoke_90_cold_1(a1);
    }
  }
}

void __74__ACAccountStore_GameCenter___gkSetScope_forCredential_completionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    v7 = os_log_GKAccount;
    if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_ERROR))
    {
      __74__ACAccountStore_GameCenter___gkSetScope_forCredential_completionHandler___block_invoke_cold_1(a1, v7, v5);
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v5);
  }
}

uint64_t __65__ACAccountStore_GameCenter___gkPrimaryCredentialForEnvironment___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 scopeModificationDate];
  v6 = [v4 scopeModificationDate];

  v7 = [v5 compare:v6];
  return v7;
}

void __65__ACAccountStore_GameCenter___gkPrimaryCredentialForEnvironment___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (([v7 scope] & 4) != 0)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

id __51__ACAccountStore_GameCenter___gkAccountForAppleID___block_invoke(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 username];
  LODWORD(a1) = [v4 isEqual:*(a1 + 32)];

  if (a1)
  {
    v8[0] = v3;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

void __81__ACAccountStore_GameCenter___getAltDSIDFromIDMSForCredential_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *MEMORY[0x277CB8C58];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__ACAccountStore_GameCenter___getAltDSIDFromIDMSForCredential_completionHandler___block_invoke_2;
  v8[3] = &unk_2785E09E8;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v11 = v3;
  v8[4] = v6;
  v9 = v5;
  v10 = *(a1 + 48);
  v7 = v3;
  [v6 accountTypeWithIdentifier:v4 completion:v8];
}

void __81__ACAccountStore_GameCenter___getAltDSIDFromIDMSForCredential_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      __81__ACAccountStore_GameCenter___getAltDSIDFromIDMSForCredential_completionHandler___block_invoke_2_cold_1();
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __81__ACAccountStore_GameCenter___getAltDSIDFromIDMSForCredential_completionHandler___block_invoke_104;
    v11[3] = &unk_2785E09C0;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    v12 = v9;
    v13 = v10;
    v14 = v5;
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    [v8 requestAccessToAccountsWithType:v14 options:0 completion:v11];
  }
}

uint64_t __81__ACAccountStore_GameCenter___getAltDSIDFromIDMSForCredential_completionHandler___block_invoke_104(uint64_t a1, char a2)
{
  v23 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setResult:0];
  if (a2)
  {
    v4 = [*(a1 + 40) accountsWithAccountType:*(a1 + 48)];
    if ([v4 count])
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v5 = v4;
      v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v19;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v19 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v18 + 1) + 8 * i);
            v11 = [v10 username];
            v12 = [*(a1 + 56) accountName];
            v13 = [v11 isEqualToString:v12];

            if (v13)
            {
              v15 = [v10 aa_altDSID];
              [*(a1 + 32) setResult:v15];

              goto LABEL_17;
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

LABEL_17:
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v14 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      __81__ACAccountStore_GameCenter___getAltDSIDFromIDMSForCredential_completionHandler___block_invoke_104_cold_1();
    }
  }

  result = (*(*(a1 + 64) + 16))();
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void __81__ACAccountStore_GameCenter___getAltDSIDFromIDMSForCredential_completionHandler___block_invoke_105(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void __78__ACAccountStore_GameCenter___gkRenewCredentialForUsername_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _gkAccountForAppleID:*(a1 + 40)];
  v12[0] = *MEMORY[0x277CB9098];
  v12[1] = @"AARenewShouldPostFollowUp";
  v13[0] = MEMORY[0x277CBEC38];
  v13[1] = MEMORY[0x277CBEC38];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v6 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __78__ACAccountStore_GameCenter___gkRenewCredentialForUsername_completionHandler___block_invoke_2;
  v9[3] = &unk_2785DEDB0;
  v10 = *(a1 + 48);
  v11 = v3;
  v7 = v3;
  [v6 renewCredentialsForAccount:v4 options:v5 completion:v9];

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __78__ACAccountStore_GameCenter___gkRenewCredentialForUsername_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:?];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  [*(a1 + 32) setResult:v4];

  v5 = *(*(a1 + 40) + 16);

  return v5();
}

void __78__ACAccountStore_GameCenter___gkRenewCredentialForUsername_completionHandler___block_invoke_3(uint64_t a1)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) error];

  if (!v3)
  {
    v9 = [*v2 result];
    v11 = +[GKPreferences shared];
    v12 = [v11 isInternalBuild];

    if (!v12)
    {
      goto LABEL_12;
    }

    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
    {
      __78__ACAccountStore_GameCenter___gkRenewCredentialForUsername_completionHandler___block_invoke_3_cold_2(a1);
      if (!v9)
      {
        goto LABEL_14;
      }
    }

    else
    {
LABEL_12:
      if (!v9)
      {
        goto LABEL_14;
      }
    }

    v14 = [v9 integerValue];
    if ((v14 - 1) >= 2)
    {
      if (v14)
      {
        goto LABEL_15;
      }

      v10 = *(*(a1 + 48) + 16);
      goto LABEL_7;
    }

LABEL_14:
    v15 = MEMORY[0x277CCA9B8];
    v20 = @"GKCredentialRenewResult";
    v16 = [*(a1 + 32) result];
    v21 = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v18 = [v15 errorWithDomain:@"GKInternalErrorDomain" code:104 userInfo:v17];

    (*(*(a1 + 48) + 16))();
    goto LABEL_15;
  }

  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKAccount;
  if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_ERROR))
  {
    __78__ACAccountStore_GameCenter___gkRenewCredentialForUsername_completionHandler___block_invoke_3_cold_1(a1, v2, v5);
  }

  v6 = MEMORY[0x277CCA9B8];
  v22 = *MEMORY[0x277CCA7E8];
  v7 = [*(a1 + 32) error];
  v23[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v9 = [v6 errorWithDomain:@"GKInternalErrorDomain" code:104 userInfo:v8];

  v10 = *(*(a1 + 48) + 16);
LABEL_7:
  v10();
LABEL_15:

  v19 = *MEMORY[0x277D85DE8];
}

void __66__ACAccountStore_GameCenter___gkSaveCredential_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__ACAccountStore_GameCenter___gkSaveCredential_completionHandler___block_invoke_2;
  v7[3] = &unk_2785E0A10;
  v8 = *(a1 + 48);
  v9 = *(a1 + 40);
  v10 = v3;
  v6 = v3;
  [v4 saveVerifiedAccount:v5 withCompletionHandler:v7];
}

void __66__ACAccountStore_GameCenter___gkSaveCredential_completionHandler___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    [*(a1 + 32) setError:v5];
  }

  v6 = +[GKPreferences shared];
  v7 = [v6 isInternalBuild];

  if (v7)
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKAccount;
    if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 40);
      v12 = 138412802;
      v13 = v11;
      v14 = 1024;
      v15 = a2;
      v16 = 2112;
      v17 = v5;
      _os_log_debug_impl(&dword_227904000, v9, OS_LOG_TYPE_DEBUG, "SAVED ACCOUNT: %@ success:%d error:%@", &v12, 0x1Cu);
    }
  }

  (*(*(a1 + 48) + 16))();

  v10 = *MEMORY[0x277D85DE8];
}

void __66__ACAccountStore_GameCenter___gkSaveCredential_completionHandler___block_invoke_120(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) error];
    (*(v1 + 16))(v1, v2);
  }
}

id __69__ACAccountStore_GameCenter___gkDeleteCredentials_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 accountName];
  v4 = [*(a1 + 32) _gkAccountForAppleID:v3];
  if (!v4)
  {
    v5 = +[GKPreferences shared];
    v6 = [v5 isInternalBuild];

    if (v6)
    {
      if (!os_log_GKGeneral)
      {
        v7 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
      {
        __69__ACAccountStore_GameCenter___gkDeleteCredentials_completionHandler___block_invoke_cold_1();
      }
    }
  }

  return v4;
}

void __69__ACAccountStore_GameCenter___gkDeleteCredentials_completionHandler___block_invoke_122(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__ACAccountStore_GameCenter___gkDeleteCredentials_completionHandler___block_invoke_2;
  v9[3] = &unk_2785E0A10;
  v6 = *(a1 + 48);
  v7 = *(a1 + 40);
  v10 = v6;
  v11 = v7;
  v12 = v3;
  v8 = v3;
  [v4 removeAccount:v5 withCompletionHandler:v9];
}

void __69__ACAccountStore_GameCenter___gkDeleteCredentials_completionHandler___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    [*(a1 + 32) setError:v5];
  }

  v6 = +[GKPreferences shared];
  v7 = [v6 isInternalBuild];

  if (v7)
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKAccount;
    if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 40);
      v12 = v9;
      v13 = [v11 username];
      v14 = 138413058;
      v15 = v11;
      v16 = 2112;
      v17 = v13;
      v18 = 1024;
      v19 = a2;
      v20 = 2112;
      v21 = v5;
      _os_log_debug_impl(&dword_227904000, v12, OS_LOG_TYPE_DEBUG, "DELETE ACCOUNT(%@): REMOVED:%@ success:%d error:%@", &v14, 0x26u);
    }
  }

  (*(*(a1 + 48) + 16))();

  v10 = *MEMORY[0x277D85DE8];
}

void __69__ACAccountStore_GameCenter___gkDeleteCredentials_completionHandler___block_invoke_123(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

void __54__ACAccountStore_GameCenter___gkMapAccountsWithBlock___block_invoke_88_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_0_6(&dword_227904000, v2, v3, "GKAuth:removed malformed legacy account(%@)- it will be automatically re-added with correct format", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void __54__ACAccountStore_GameCenter___gkMapAccountsWithBlock___block_invoke_90_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_0_6(&dword_227904000, v2, v3, "GKAuth:removed duplicate account(%@)", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void __74__ACAccountStore_GameCenter___gkSetScope_forCredential_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 48);
  v6 = a2;
  v7 = NSStringFromSelector(v5);
  v8 = *(a1 + 32);
  OUTLINED_FUNCTION_0();
  v12 = 2112;
  v13 = v9;
  v14 = 2112;
  v15 = a3;
  _os_log_error_impl(&dword_227904000, v6, OS_LOG_TYPE_ERROR, "%@: Failed to save credential %@ (%@)", v11, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

void __78__ACAccountStore_GameCenter___gkRenewCredentialForUsername_completionHandler___block_invoke_3_cold_1(uint64_t a1, void **a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v4 = *a2;
  v5 = a3;
  v6 = [v4 error];
  v9 = 138412546;
  v10 = v3;
  OUTLINED_FUNCTION_6();
  v11 = v7;
  _os_log_error_impl(&dword_227904000, v5, OS_LOG_TYPE_ERROR, "Received error while attempting to renew user: %@, error: %@", &v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void __78__ACAccountStore_GameCenter___gkRenewCredentialForUsername_completionHandler___block_invoke_3_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __69__ACAccountStore_GameCenter___gkDeleteCredentials_completionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_6(&dword_227904000, v0, v1, "DELETE ACCOUNT: account %@ doesn't exist, ignoring", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end