@interface ACAccount
@end

@implementation ACAccount

void __54__ACAccount_GameCenter___gkCredentialsForEnvironment___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[(GKInternalRepresentation *)GKPlayerCredential];
  v8 = [v5 integerValue];
  v9 = *(a1 + 56);
  if (v9)
  {
    v10 = v8 == v9;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v19 = +[GKPreferences shared];
    v20 = [v19 isInternalBuild];

    if (v20)
    {
      if (!os_log_GKGeneral)
      {
        v21 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
      {
        __54__ACAccount_GameCenter___gkCredentialsForEnvironment___block_invoke_cold_1(a1);
      }
    }

    goto LABEL_33;
  }

  v11 = v8;
  v12 = [*(a1 + 32) _gkPlayerInternal];
  if (!v12)
  {
    v12 = +[(GKInternalRepresentation *)GKLocalPlayerInternal];
    [v12 setPlayerID:*(a1 + 40)];
    v13 = [*(a1 + 32) username];
    [v12 setAccountName:v13];
  }

  [v7 setPlayerInternal:v12];
  v14 = [*(a1 + 32) username];
  [v7 setAccountName:v14];

  [v7 setEnvironment:v11];
  v31 = v6;
  [v7 setAuthenticationToken:v6];
  v15 = [*(a1 + 32) _gkPropertyForKey:@"altDSID" environment:v11];
  if (v15)
  {
    [v7 setAltDSID:v15];
  }

  v16 = [*(a1 + 32) accountPropertyForKey:@"dsid"];
  if (v16)
  {
    [v7 setDSID:v16];
  }

  v17 = [*(a1 + 32) _gkPropertyForKey:@"GKCredentialScope" environment:v11];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v17, "intValue")}];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v22 = 0;
      goto LABEL_23;
    }

    v18 = v17;
  }

  v22 = v18;
LABEL_23:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = [v22 unsignedIntegerValue];
    [v7 setScope:v23];
    v24 = v23 & 4;
    if ((v23 & 2) != 0)
    {
      v24 = v23 & 4 | 3;
    }

    [v12 setLoginStatus:v24 | v23 & 8];
  }

  v25 = [*(a1 + 32) _gkModifiedDateForProperty:@"GKCredentialScope" environment:v11];
  [v7 setScopeModificationDate:v25];

  [*(a1 + 48) addObject:v7];
  v26 = +[GKPreferences shared];
  v27 = [v26 isInternalBuild];

  if (v27)
  {
    if (!os_log_GKGeneral)
    {
      v28 = GKOSLoggers();
    }

    v29 = os_log_GKAccount;
    if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v33 = v7;
      v34 = 2112;
      v35 = v5;
      v36 = 2112;
      v37 = v31;
      _os_log_debug_impl(&dword_227904000, v29, OS_LOG_TYPE_DEBUG, "ACCOUNT:%@: auth token for environment:%@ authToken:%@", buf, 0x20u);
    }
  }

  v6 = v31;
LABEL_33:

  v30 = *MEMORY[0x277D85DE8];
}

void __53__ACAccount_GameCenter___gkCredentialForEnvironment___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v4 = [v7 environment];
  v5 = *(a1 + 40);
  if (v4 == v5 || v5 == 0)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

void __54__ACAccount_GameCenter___gkCredentialsForEnvironment___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

@end