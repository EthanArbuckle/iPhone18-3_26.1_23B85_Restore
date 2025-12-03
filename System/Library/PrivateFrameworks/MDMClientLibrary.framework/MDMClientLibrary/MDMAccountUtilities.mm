@interface MDMAccountUtilities
+ (BOOL)updateOrganizationName:(id)name rmAccountIdentifier:(id)identifier personaID:(id)d error:(id *)error;
+ (id)_createMissingBearerTokenError;
+ (id)_createMissingRMAccountError;
+ (id)_longLivedTokenFromRMAccount:(id)account inStore:(id)store;
+ (id)_shortLivedTokenFromRMAccount:(id)account inStore:(id)store;
+ (id)authenticatorForRMAccountID:(id)d;
+ (id)bearerTokenForRMAccountID:(id)d error:(id *)error;
+ (id)maidPropertiesForRMAccountID:(id)d;
+ (id)rmAccountWithIdentifier:(id)identifier fromStore:(id)store error:(id *)error;
+ (void)removeMAIDShortLivedTokenWithAccount:(id)account;
+ (void)stashMAIDShortLivedTokenWithAccount:(id)account authenticationResults:(id)results;
@end

@implementation MDMAccountUtilities

+ (id)rmAccountWithIdentifier:(id)identifier fromStore:(id)store error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  storeCopy = store;
  if (!storeCopy)
  {
    storeCopy = [MEMORY[0x277CB8F48] defaultStore];
  }

  v10 = [storeCopy dmc_remoteManagementAccountForIdentifier:identifierCopy];
  if (!v10)
  {
    v11 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 138543362;
      v15 = identifierCopy;
      _os_log_impl(&dword_22E997000, v11, OS_LOG_TYPE_ERROR, "No RMAccount with ID: %{public}@", &v14, 0xCu);
    }

    if (error)
    {
      *error = [self _createMissingRMAccountError];
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (void)stashMAIDShortLivedTokenWithAccount:(id)account authenticationResults:(id)results
{
  v22 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  resultsCopy = results;
  v7 = DMCAKAuthenticationIDMSTokenKey();
  v8 = [resultsCopy objectForKeyedSubscript:v7];

  v9 = [v8 objectForKeyedSubscript:@"com.apple.gs.mdm.auth"];
  v10 = *(DMCLogObjects() + 8);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
  if (v9)
  {
    if (v11)
    {
      v12 = v10;
      identifier = [accountCopy identifier];
      v18 = 138543618;
      v19 = @"com.apple.gs.mdm.auth";
      v20 = 2114;
      v21 = identifier;
      _os_log_impl(&dword_22E997000, v12, OS_LOG_TYPE_DEBUG, "Stashing %{public}@ token on RMAccount with ID: %{public}@", &v18, 0x16u);
    }

    v14 = [v8 objectForKeyedSubscript:@"com.apple.gs.mdm.auth"];
    [accountCopy setObject:v14 forKeyedSubscript:@"MAIDShortLivedTokenField"];
  }

  else if (v11)
  {
    v15 = v10;
    identifier2 = [accountCopy identifier];
    v18 = 138543618;
    v19 = @"com.apple.gs.mdm.auth";
    v20 = 2114;
    v21 = identifier2;
    _os_log_impl(&dword_22E997000, v15, OS_LOG_TYPE_DEBUG, "No %{public}@ token to stash on RMAccount with ID: %{public}@", &v18, 0x16u);
  }

  v17 = *MEMORY[0x277D85DE8];
}

+ (void)removeMAIDShortLivedTokenWithAccount:(id)account
{
  v12 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v4 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = v4;
    identifier = [accountCopy identifier];
    v8 = 138543618;
    v9 = @"com.apple.gs.mdm.auth";
    v10 = 2114;
    v11 = identifier;
    _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_DEBUG, "Removing stashed %{public}@ token from RMAccount with ID: %{public}@", &v8, 0x16u);
  }

  [accountCopy setObject:0 forKeyedSubscript:@"MAIDShortLivedTokenField"];

  v7 = *MEMORY[0x277D85DE8];
}

+ (id)authenticatorForRMAccountID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v14 = 0;
  v5 = [self rmAccountWithIdentifier:dCopy fromStore:0 error:&v14];
  v6 = v14;
  if (!v5)
  {
    v10 = *(DMCLogObjects() + 8);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_10:
      v8 = 0;
      goto LABEL_18;
    }

    *buf = 138543362;
    v16 = dCopy;
    v11 = "Failed to find RM account: %{public}@";
LABEL_9:
    _os_log_impl(&dword_22E997000, v10, OS_LOG_TYPE_ERROR, v11, buf, 0xCu);
    goto LABEL_10;
  }

  dmc_enrollmentMethod = [v5 dmc_enrollmentMethod];
  v8 = 0;
  if (dmc_enrollmentMethod > 2)
  {
    if ((dmc_enrollmentMethod - 3) < 2)
    {
      goto LABEL_18;
    }

    if (dmc_enrollmentMethod == 5)
    {
      v9 = MDMOAuth2Authenticator;
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (!dmc_enrollmentMethod)
  {
    goto LABEL_18;
  }

  if (dmc_enrollmentMethod == 1)
  {
    v9 = MDMMAIDBearerTokenAuthenticator;
    goto LABEL_17;
  }

  if (dmc_enrollmentMethod != 2)
  {
LABEL_14:
    v10 = *(DMCLogObjects() + 8);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 138543362;
    v16 = dCopy;
    v11 = "Failed to match RM account enrollment method: %{public}@";
    goto LABEL_9;
  }

  v9 = MDMBearerTokenAuthenticator;
LABEL_17:
  v8 = [[v9 alloc] initWithRMAccountID:dCopy];
LABEL_18:

  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)bearerTokenForRMAccountID:(id)d error:(id *)error
{
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = [self rmAccountWithIdentifier:dCopy fromStore:0 error:error];
  v8 = v7;
  if (v7)
  {
    dmc_bearerToken = [v7 dmc_bearerToken];
    if (!dmc_bearerToken)
    {
      v10 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = 138543362;
        v14 = dCopy;
        _os_log_impl(&dword_22E997000, v10, OS_LOG_TYPE_ERROR, "No bearer token in RMAccount with ID: %{public}@", &v13, 0xCu);
      }

      if (error)
      {
        *error = [self _createMissingBearerTokenError];
      }
    }
  }

  else
  {
    dmc_bearerToken = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return dmc_bearerToken;
}

+ (id)maidPropertiesForRMAccountID:(id)d
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CB8F48];
  dCopy = d;
  defaultStore = [v4 defaultStore];
  v7 = [self rmAccountWithIdentifier:dCopy fromStore:defaultStore error:0];

  if (v7)
  {
    v8 = objc_opt_new();
    username = [v7 username];
    [v8 setObject:username forKeyedSubscript:*MEMORY[0x277D03390]];

    dmc_altDSID = [v7 dmc_altDSID];
    [v8 setObject:dmc_altDSID forKeyedSubscript:*MEMORY[0x277D03370]];

    dmc_DSID = [v7 dmc_DSID];
    [v8 setObject:dmc_DSID forKeyedSubscript:*MEMORY[0x277D03378]];

    v12 = [self _shortLivedTokenFromRMAccount:v7 inStore:defaultStore];
    if (v12)
    {
      [v8 setObject:v12 forKeyedSubscript:*MEMORY[0x277D03388]];
    }

    else
    {
      v13 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = v13;
        dmc_altDSID2 = [v7 dmc_altDSID];
        v22 = 138543362;
        v23 = dmc_altDSID2;
        _os_log_impl(&dword_22E997000, v14, OS_LOG_TYPE_ERROR, "Unable to find short lived token for RM account: %{public}@", &v22, 0xCu);
      }
    }

    v16 = [self _longLivedTokenFromRMAccount:v7 inStore:defaultStore];
    if (v16)
    {
      [v8 setObject:v16 forKeyedSubscript:*MEMORY[0x277D03380]];
    }

    else
    {
      v17 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = v17;
        dmc_altDSID3 = [v7 dmc_altDSID];
        v22 = 138543362;
        v23 = dmc_altDSID3;
        _os_log_impl(&dword_22E997000, v18, OS_LOG_TYPE_ERROR, "Unable to find long lived token for RM account: %{public}@", &v22, 0xCu);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)_shortLivedTokenFromRMAccount:(id)account inStore:(id)store
{
  v28 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  storeCopy = store;
  v7 = [accountCopy objectForKeyedSubscript:@"MAIDShortLivedTokenField"];
  if (!v7)
  {
    dmc_altDSID = [accountCopy dmc_altDSID];
    v14 = [storeCopy aida_accountForAltDSID:dmc_altDSID];

    if (v14)
    {
      v15 = [v14 aida_tokenForService:@"com.apple.gs.mdm.auth"];
      if (v15)
      {
LABEL_12:
        v12 = v15;

        goto LABEL_13;
      }

      v16 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = v16;
        dmc_altDSID2 = [accountCopy dmc_altDSID];
        v24 = 138543618;
        v25 = @"com.apple.gs.mdm.auth";
        v26 = 2114;
        v27 = dmc_altDSID2;
        _os_log_impl(&dword_22E997000, v17, OS_LOG_TYPE_DEBUG, "Unable to find %{public}@ token on idms account for RM account: %{public}@", &v24, 0x16u);
      }
    }

    else
    {
      v19 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v20 = v19;
        dmc_altDSID3 = [accountCopy dmc_altDSID];
        v24 = 138543362;
        v25 = dmc_altDSID3;
        _os_log_impl(&dword_22E997000, v20, OS_LOG_TYPE_DEBUG, "Unable to find idms account for RM account: %{public}@", &v24, 0xCu);
      }
    }

    v15 = 0;
    goto LABEL_12;
  }

  v8 = v7;
  v9 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = v9;
    dmc_altDSID4 = [accountCopy dmc_altDSID];
    v24 = 138543618;
    v25 = @"com.apple.gs.mdm.auth";
    v26 = 2114;
    v27 = dmc_altDSID4;
    _os_log_impl(&dword_22E997000, v10, OS_LOG_TYPE_DEBUG, "Using stashed %{public}@ token on RM account: %{public}@", &v24, 0x16u);
  }

  v12 = v8;
LABEL_13:

  v22 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)_longLivedTokenFromRMAccount:(id)account inStore:(id)store
{
  v17 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  storeCopy = store;
  dmc_altDSID = [accountCopy dmc_altDSID];
  v8 = [storeCopy dmc_iCloudAccountForRemoteManagingAccountWithAltDSID:dmc_altDSID];

  if (!v8)
  {
    v9 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = v9;
      dmc_altDSID2 = [accountCopy dmc_altDSID];
      v15 = 138543362;
      v16 = dmc_altDSID2;
      _os_log_impl(&dword_22E997000, v10, OS_LOG_TYPE_ERROR, "Unable to find iCloud account for RM account: %{public}@", &v15, 0xCu);
    }
  }

  dmc_mdmServerToken = [v8 dmc_mdmServerToken];

  v13 = *MEMORY[0x277D85DE8];

  return dmc_mdmServerToken;
}

+ (BOOL)updateOrganizationName:(id)name rmAccountIdentifier:(id)identifier personaID:(id)d error:(id *)error
{
  v81 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  identifierCopy = identifier;
  dCopy = d;
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __82__MDMAccountUtilities_updateOrganizationName_rmAccountIdentifier_personaID_error___block_invoke;
  v77[3] = &unk_278856C58;
  v14 = nameCopy;
  v78 = v14;
  v48 = MEMORY[0x2318F0080](v77);
  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = __Block_byref_object_copy_;
  v75 = __Block_byref_object_dispose_;
  v76 = 0;
  v67 = 0;
  v68 = &v67;
  v69 = 0x2020000000;
  v70 = 1;
  v15 = [defaultStore dmc_remoteManagementAccountForIdentifier:identifierCopy];
  v16 = v15;
  if (v15)
  {
    accountDescription = [v15 accountDescription];
    v18 = [accountDescription isEqualToString:v14];

    if (v18)
    {
      v19 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v80 = identifierCopy;
        _os_log_impl(&dword_22E997000, v19, OS_LOG_TYPE_DEFAULT, "RM account organization name does not need to be changed: %{public}@", buf, 0xCu);
      }

      v20 = 1;
    }

    else
    {
      v23 = MEMORY[0x277D03550];
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __82__MDMAccountUtilities_updateOrganizationName_rmAccountIdentifier_personaID_error___block_invoke_7;
      v61[3] = &unk_278856C80;
      v65 = &v67;
      v24 = defaultStore;
      v62 = v24;
      v63 = identifierCopy;
      v66 = &v71;
      v25 = v48;
      v64 = v25;
      v26 = [v23 performBlockUnderPersona:dCopy block:v61];
      if (v68[3])
      {
        v27 = *DMCLogObjects();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22E997000, v27, OS_LOG_TYPE_DEFAULT, "RM Account Saved Successfully.", buf, 2u);
        }

        v28 = MEMORY[0x277D03550];
        v55[0] = MEMORY[0x277D85DD0];
        v55[1] = 3221225472;
        v55[2] = __82__MDMAccountUtilities_updateOrganizationName_rmAccountIdentifier_personaID_error___block_invoke_9;
        v55[3] = &unk_278856C80;
        v59 = &v67;
        v29 = v24;
        v56 = v29;
        v30 = v16;
        v57 = v30;
        v60 = &v71;
        v31 = v25;
        v58 = v31;
        v32 = [v28 performBlockUnderPersona:dCopy block:v55];
        if (v68[3])
        {
          v33 = *DMCLogObjects();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_22E997000, v33, OS_LOG_TYPE_DEFAULT, "iCloud Account Saved Successfully.", buf, 2u);
          }

          v34 = MEMORY[0x277D03550];
          v49[0] = MEMORY[0x277D85DD0];
          v49[1] = 3221225472;
          v49[2] = __82__MDMAccountUtilities_updateOrganizationName_rmAccountIdentifier_personaID_error___block_invoke_10;
          v49[3] = &unk_278856C80;
          v53 = &v67;
          v50 = v29;
          v51 = v30;
          v54 = &v71;
          v52 = v31;
          v35 = [v34 performBlockUnderPersona:dCopy block:v49];
          v20 = *(v68 + 24);
          if (v20)
          {
            v36 = *DMCLogObjects();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_22E997000, v36, OS_LOG_TYPE_DEFAULT, "iTunes Account Saved Successfully.", buf, 2u);
            }
          }

          else
          {
            v43 = *DMCLogObjects();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              v44 = v72[5];
              *buf = 138543362;
              v80 = v44;
              _os_log_impl(&dword_22E997000, v43, OS_LOG_TYPE_ERROR, "Error Updating iTunes Account: %{public}@", buf, 0xCu);
            }

            if (error)
            {
              v45 = v72[5];
              if (v45)
              {
                *error = v45;
              }
            }
          }
        }

        else
        {
          v40 = *DMCLogObjects();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v41 = v72[5];
            *buf = 138543362;
            v80 = v41;
            _os_log_impl(&dword_22E997000, v40, OS_LOG_TYPE_ERROR, "Error Updating iCloud Account: %{public}@", buf, 0xCu);
          }

          if (error && (v42 = v72[5]) != 0)
          {
            v20 = 0;
            *error = v42;
          }

          else
          {
            v20 = 0;
          }
        }
      }

      else
      {
        v37 = *DMCLogObjects();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = v72[5];
          *buf = 138543362;
          v80 = v38;
          _os_log_impl(&dword_22E997000, v37, OS_LOG_TYPE_ERROR, "Error Updating RM Account: %{public}@", buf, 0xCu);
        }

        if (error && (v39 = v72[5]) != 0)
        {
          v20 = 0;
          *error = v39;
        }

        else
        {
          v20 = 0;
        }
      }
    }
  }

  else
  {
    v21 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v80 = identifierCopy;
      _os_log_impl(&dword_22E997000, v21, OS_LOG_TYPE_ERROR, "Unable to find RM account: %{public}@", buf, 0xCu);
    }

    if (error)
    {
      _createMissingRMAccountError = [self _createMissingRMAccountError];
      if (_createMissingRMAccountError)
      {
        _createMissingRMAccountError = _createMissingRMAccountError;
        *error = _createMissingRMAccountError;
      }
    }

    v20 = 0;
  }

  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(&v71, 8);

  v46 = *MEMORY[0x277D85DE8];
  return v20;
}

void __82__MDMAccountUtilities_updateOrganizationName_rmAccountIdentifier_personaID_error___block_invoke_7(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = [v2 dmc_updateAccountWithIdentifier:v3 error:&obj updateBlock:v4];
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[7] + 8) + 24) = v6;
}

void __82__MDMAccountUtilities_updateOrganizationName_rmAccountIdentifier_personaID_error___block_invoke_9(uint64_t a1)
{
  v2 = *MEMORY[0x277CB8BA0];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) dmc_altDSID];
  v5 = *(*(a1 + 64) + 8);
  obj = *(v5 + 40);
  LOBYTE(v2) = [v3 dmc_updateAccountWithTypeIdentifier:v2 altDSID:v4 error:&obj updateBlock:*(a1 + 48)];
  objc_storeStrong((v5 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v2;
}

void __82__MDMAccountUtilities_updateOrganizationName_rmAccountIdentifier_personaID_error___block_invoke_10(uint64_t a1)
{
  v2 = *MEMORY[0x277CB8D58];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) dmc_altDSID];
  v5 = *(*(a1 + 64) + 8);
  obj = *(v5 + 40);
  LOBYTE(v2) = [v3 dmc_updateAccountWithTypeIdentifier:v2 altDSID:v4 error:&obj updateBlock:*(a1 + 48)];
  objc_storeStrong((v5 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v2;
}

+ (id)_createMissingRMAccountError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D032F0];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:15005 descriptionArray:v4 underlyingError:0 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_createMissingBearerTokenError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D032F0];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:15006 descriptionArray:v4 underlyingError:0 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

@end