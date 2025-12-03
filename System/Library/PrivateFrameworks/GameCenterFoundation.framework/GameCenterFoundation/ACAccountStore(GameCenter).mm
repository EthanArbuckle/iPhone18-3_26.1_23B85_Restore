@interface ACAccountStore(GameCenter)
- (id)_gkAccountForAppleID:()GameCenter;
- (id)_gkAllCredentialsForEnvironment:()GameCenter;
- (id)_gkCredentialForUsername:()GameCenter environment:;
- (id)_gkMapAccountsWithBlock:()GameCenter;
- (id)_gkPrimaryCredentialForEnvironment:()GameCenter;
- (void)_getAltDSIDFromIDMSForCredential:()GameCenter completionHandler:;
- (void)_gkDeleteCredential:()GameCenter completionHandler:;
- (void)_gkDeleteCredentials:()GameCenter completionHandler:;
- (void)_gkRenewCredentialForUsername:()GameCenter completionHandler:;
- (void)_gkSaveCredential:()GameCenter completionHandler:;
- (void)_gkSetScope:()GameCenter forCredential:completionHandler:;
@end

@implementation ACAccountStore(GameCenter)

- (id)_gkMapAccountsWithBlock:()GameCenter
{
  v4 = a3;
  array = [MEMORY[0x277CBEB18] array];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__ACAccountStore_GameCenter___gkMapAccountsWithBlock___block_invoke;
  v10[3] = &unk_2785DDEA0;
  v10[4] = self;
  v12 = v4;
  v6 = array;
  v11 = v6;
  v7 = v4;
  [GKDispatchGroup waitUntilDone:v10];
  if ([v6 count])
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_gkCredentialForUsername:()GameCenter environment:
{
  v5 = [self _gkAccountForAppleID:?];
  v6 = [v5 _gkCredentialForEnvironment:a4];

  return v6;
}

- (void)_gkSetScope:()GameCenter forCredential:completionHandler:
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  environment = [v9 environment];
  accountName = [v9 accountName];
  v13 = [self _gkAccountForAppleID:accountName];
  v14 = +[GKPreferences shared];
  isInternalBuild = [v14 isInternalBuild];

  if (v13)
  {
    if (isInternalBuild)
    {
      if (!os_log_GKGeneral)
      {
        v16 = GKOSLoggers();
      }

      v17 = os_log_GKAccount;
      if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
      {
        v22 = v17;
        v23 = NSStringFromSelector(a2);
        *buf = 138412802;
        v29 = v23;
        v30 = 2048;
        v31 = a3;
        v32 = 2112;
        v33 = v9;
        _os_log_debug_impl(&dword_227904000, v22, OS_LOG_TYPE_DEBUG, "%@: set bits:%lX cred:%@ ", buf, 0x20u);
      }
    }

    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [v13 _gkSetProperty:v18 forKey:@"GKCredentialScope" environment:environment];

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __74__ACAccountStore_GameCenter___gkSetScope_forCredential_completionHandler___block_invoke;
    v24[3] = &unk_2785E08E8;
    v27 = a2;
    v25 = v9;
    v26 = v10;
    [self saveVerifiedAccount:v13 withCompletionHandler:v24];
  }

  else if (isInternalBuild)
  {
    if (!os_log_GKGeneral)
    {
      v19 = GKOSLoggers();
    }

    v20 = os_log_GKAccount;
    if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
    {
      [ACAccountStore(GameCenter) _gkSetScope:v20 forCredential:a2 completionHandler:v9];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)_gkAllCredentialsForEnvironment:()GameCenter
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__ACAccountStore_GameCenter___gkAllCredentialsForEnvironment___block_invoke;
  v5[3] = &__block_descriptor_40_e28___NSArray_16__0__ACAccount_8l;
  v5[4] = a3;
  v3 = [self _gkMapAccountsWithBlock:v5];

  return v3;
}

- (id)_gkPrimaryCredentialForEnvironment:()GameCenter
{
  v1 = [self _gkAllCredentialsForEnvironment:?];
  v2 = [v1 sortedArrayWithOptions:0 usingComparator:&__block_literal_global_98];

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__11;
  v15 = __Block_byref_object_dispose__11;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__ACAccountStore_GameCenter___gkPrimaryCredentialForEnvironment___block_invoke_2;
  v10[3] = &unk_2785E0970;
  v10[4] = &v11;
  [v2 enumerateObjectsUsingBlock:v10];
  if (!v12[5] && [v2 count])
  {
    firstObject = [v2 firstObject];
    v4 = v12[5];
    v12[5] = firstObject;

    [v12[5] setScope:{objc_msgSend(v12[5], "scope") | 0xC}];
  }

  v5 = v12[5];
  if (v5)
  {
    v6 = +[GKPlayerCredentialController sharedController];
    signInVisibilityManager = [v6 signInVisibilityManager];
    [signInVisibilityManager reset];

    v5 = v12[5];
  }

  v8 = v5;
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (id)_gkAccountForAppleID:()GameCenter
{
  v5 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__ACAccountStore_GameCenter___gkAccountForAppleID___block_invoke;
  v12[3] = &unk_2785E0998;
  v6 = v5;
  v13 = v6;
  v7 = [self _gkMapAccountsWithBlock:v12];
  if ([v7 count] && objc_msgSend(v7, "count") >= 2)
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      [(ACAccountStore(GameCenter) *)v9 _gkAccountForAppleID:a2, v6];
    }
  }

  firstObject = [v7 firstObject];

  return firstObject;
}

- (void)_getAltDSIDFromIDMSForCredential:()GameCenter completionHandler:
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "ACAccount+GameCenter.m", 686, "-[ACAccountStore(GameCenter) _getAltDSIDFromIDMSForCredential:completionHandler:]"];
  v9 = [GKDispatchGroup dispatchGroupWithName:v8];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __81__ACAccountStore_GameCenter___getAltDSIDFromIDMSForCredential_completionHandler___block_invoke;
  v18[3] = &unk_2785DD910;
  v18[4] = self;
  v10 = v9;
  v19 = v10;
  v20 = v6;
  v11 = v6;
  [v10 perform:v18];
  v12 = dispatch_get_global_queue(21, 0);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __81__ACAccountStore_GameCenter___getAltDSIDFromIDMSForCredential_completionHandler___block_invoke_105;
  v15[3] = &unk_2785DDC10;
  v16 = v10;
  v17 = v7;
  v13 = v10;
  v14 = v7;
  [v13 notifyOnQueue:v12 block:v15];
}

- (void)_gkRenewCredentialForUsername:()GameCenter completionHandler:
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "ACAccount+GameCenter.m", 732, "-[ACAccountStore(GameCenter) _gkRenewCredentialForUsername:completionHandler:]"];
  v9 = [GKDispatchGroup dispatchGroupWithName:v8];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __78__ACAccountStore_GameCenter___gkRenewCredentialForUsername_completionHandler___block_invoke;
  v20[3] = &unk_2785DD910;
  v20[4] = self;
  v10 = v6;
  v21 = v10;
  v11 = v9;
  v22 = v11;
  [v11 perform:v20];
  v12 = dispatch_get_global_queue(21, 0);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __78__ACAccountStore_GameCenter___gkRenewCredentialForUsername_completionHandler___block_invoke_3;
  v16[3] = &unk_2785DE948;
  v17 = v11;
  v18 = v10;
  v19 = v7;
  v13 = v7;
  v14 = v10;
  v15 = v11;
  [v15 notifyOnQueue:v12 block:v16];
}

- (void)_gkSaveCredential:()GameCenter completionHandler:
{
  v65 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v53 = a4;
  environment = [v6 environment];
  accountName = [v6 accountName];
  scope = [v6 scope];
  v10 = [self _gkAccountForAppleID:accountName];
  v11 = +[GKPreferences shared];
  isInternalBuild = [v11 isInternalBuild];

  if (!isInternalBuild)
  {
    goto LABEL_5;
  }

  if (!os_log_GKGeneral)
  {
    v13 = GKOSLoggers();
  }

  v14 = os_log_GKAccount;
  if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v62 = v10;
    v63 = 1024;
    *v64 = environment;
    *&v64[4] = 2048;
    *&v64[6] = scope;
    _os_log_debug_impl(&dword_227904000, v14, OS_LOG_TYPE_DEBUG, "STORING ACCOUNT: account:%@ environment:%d scope:%lX", buf, 0x1Cu);
    if (v10)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_5:
    if (v10)
    {
      goto LABEL_13;
    }
  }

  if (accountName)
  {
    v15 = [self accountTypeWithAccountTypeIdentifier:*MEMORY[0x277CB8C38]];
    v10 = [objc_alloc(MEMORY[0x277CB8F30]) initWithAccountType:v15];
    [v10 setUsername:accountName];
    v16 = +[GKPreferences shared];
    isInternalBuild2 = [v16 isInternalBuild];

    if (isInternalBuild2)
    {
      if (!os_log_GKGeneral)
      {
        v18 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
      {
        [ACAccountStore(GameCenter) _gkSaveCredential:completionHandler:];
      }
    }
  }

LABEL_13:
  v54 = accountName;
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:scope];
  [v10 _gkSetProperty:v19 forKey:@"GKCredentialScope" environment:environment];

  _aa_rawPassword = [v10 _aa_rawPassword];

  if (_aa_rawPassword)
  {
    [v10 _aa_setRawPassword:0];
  }

  authenticationToken = [v6 authenticationToken];
  v22 = +[GKPreferences shared];
  isInternalBuild3 = [v22 isInternalBuild];

  if (isInternalBuild3)
  {
    if (!os_log_GKGeneral)
    {
      v24 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
    {
      [ACAccountStore(GameCenter) _gkSaveCredential:completionHandler:];
    }
  }

  [v10 _gkSetToken:authenticationToken forEnvironment:environment];
  playerInternal = [v6 playerInternal];
  v26 = +[GKPreferences shared];
  isInternalBuild4 = [v26 isInternalBuild];

  if (isInternalBuild4)
  {
    if (!os_log_GKGeneral)
    {
      v28 = GKOSLoggers();
    }

    v29 = os_log_GKAccount;
    if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v62 = v10;
      v63 = 2112;
      *v64 = playerInternal;
      *&v64[8] = 2112;
      *&v64[10] = authenticationToken;
      _os_log_debug_impl(&dword_227904000, v29, OS_LOG_TYPE_DEBUG, "STORING ACCOUNT will save: account:%@ player:%@ token:%@", buf, 0x20u);
    }
  }

  v52 = authenticationToken;
  [v10 _gkSetPlayerInternal:playerInternal];
  v30 = [MEMORY[0x277CCABB0] numberWithInteger:environment];
  [v10 setAccountProperty:v30 forKey:@"GKEnvironment"];

  accountDescription = [v10 accountDescription];
  if (!accountDescription)
  {
    goto LABEL_30;
  }

  v32 = accountDescription;
  accountDescription2 = [v10 accountDescription];
  if (![accountDescription2 length])
  {

    goto LABEL_30;
  }

  accountDescription3 = [v10 accountDescription];
  [v10 username];
  v36 = v35 = self;
  v37 = [accountDescription3 isEqualToString:v36];

  self = v35;
  if (v37)
  {
LABEL_30:
    username = [v10 username];
    [v10 setAccountDescription:username];
  }

  altDSID = [v6 altDSID];
  [v10 _gkSetProperty:altDSID forKey:@"altDSID" environment:environment];

  altDSID2 = [v6 altDSID];
  [v10 setAccountProperty:altDSID2 forKey:@"altDSID"];

  dSID = [v6 DSID];
  [v10 setAccountProperty:dSID forKey:@"dsid"];

  v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "ACAccount+GameCenter.m", 846, "-[ACAccountStore(GameCenter) _gkSaveCredential:completionHandler:]"];
  v43 = [GKDispatchGroup dispatchGroupWithName:v42];

  v44 = +[GKPreferences shared];
  LODWORD(v42) = [v44 isInternalBuild];

  if (v42)
  {
    if (!os_log_GKGeneral)
    {
      v45 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
    {
      [ACAccountStore(GameCenter) _gkSaveCredential:completionHandler:];
    }
  }

  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __66__ACAccountStore_GameCenter___gkSaveCredential_completionHandler___block_invoke;
  v58[3] = &unk_2785DD910;
  v58[4] = self;
  v59 = v10;
  v46 = v43;
  v60 = v46;
  v47 = v10;
  [v46 perform:v58];
  v48 = dispatch_get_global_queue(21, 0);
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __66__ACAccountStore_GameCenter___gkSaveCredential_completionHandler___block_invoke_120;
  v55[3] = &unk_2785DDC10;
  v56 = v46;
  v57 = v53;
  v49 = v46;
  v50 = v53;
  [v49 notifyOnQueue:v48 block:v55];

  v51 = *MEMORY[0x277D85DE8];
}

- (void)_gkDeleteCredential:()GameCenter completionHandler:
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v13[0] = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    [self _gkDeleteCredentials:v8 completionHandler:v7];
  }

  else
  {
    v9 = +[GKPreferences shared];
    isInternalBuild = [v9 isInternalBuild];

    if (isInternalBuild)
    {
      if (!os_log_GKGeneral)
      {
        v11 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
      {
        [ACAccountStore(GameCenter) _gkDeleteCredential:completionHandler:];
      }
    }

    v7[2](v7, 0);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_gkDeleteCredentials:()GameCenter completionHandler:
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __69__ACAccountStore_GameCenter___gkDeleteCredentials_completionHandler___block_invoke;
  v32[3] = &unk_2785E0A38;
  v32[4] = self;
  v7 = [a3 _gkMapWithBlock:v32];
  if ([v7 count])
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "ACAccount+GameCenter.m", 892, "-[ACAccountStore(GameCenter) _gkDeleteCredentials:completionHandler:]"];
    v9 = [GKDispatchGroup dispatchGroupWithName:v8];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v7;
    v10 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v29;
      do
      {
        v13 = 0;
        do
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v28 + 1) + 8 * v13);
          v15 = +[GKPreferences shared];
          isInternalBuild = [v15 isInternalBuild];

          if (isInternalBuild)
          {
            if (!os_log_GKGeneral)
            {
              v17 = GKOSLoggers();
            }

            v18 = os_log_GKAccount;
            if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
            {
              [(ACAccountStore(GameCenter) *)v33 _gkDeleteCredentials:v18 completionHandler:v14, &v34];
            }
          }

          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __69__ACAccountStore_GameCenter___gkDeleteCredentials_completionHandler___block_invoke_122;
          v26[3] = &unk_2785DD910;
          v26[4] = self;
          v26[5] = v14;
          v27 = v9;
          [v27 perform:v26];

          ++v13;
        }

        while (v11 != v13);
        v11 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
      }

      while (v11);
    }

    v19 = dispatch_get_global_queue(21, 0);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __69__ACAccountStore_GameCenter___gkDeleteCredentials_completionHandler___block_invoke_123;
    v23[3] = &unk_2785DDC10;
    v24 = v9;
    v25 = v6;
    v20 = v9;
    [v20 notifyOnQueue:v19 block:v23];
  }

  else
  {
    (*(v6 + 2))(v6, 0);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_gkSetScope:()GameCenter forCredential:completionHandler:.cold.1(void *a1, const char *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  v9 = a3;
  _os_log_debug_impl(&dword_227904000, v5, OS_LOG_TYPE_DEBUG, "%@: No account for credential %@", v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_gkAccountForAppleID:()GameCenter .cold.1(void *a1, const char *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  v9 = a3;
  _os_log_error_impl(&dword_227904000, v5, OS_LOG_TYPE_ERROR, "%@: More than one existing account for username %@. Shouldn't be possible.", v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_gkSaveCredential:()GameCenter completionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_6(&dword_227904000, v0, v1, "STORING ACCOUNT: account:%@ does not exist, creating", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_gkSaveCredential:()GameCenter completionHandler:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_gkSaveCredential:()GameCenter completionHandler:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_6(&dword_227904000, v0, v1, "STORING ACCOUNT: SAVING ACCOUNT:%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_gkDeleteCredentials:()GameCenter completionHandler:.cold.1(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 username];
  *a1 = 138412290;
  *a4 = v8;
  _os_log_debug_impl(&dword_227904000, v7, OS_LOG_TYPE_DEBUG, "DELETE ACCOUNT: removing %@", a1, 0xCu);
}

@end