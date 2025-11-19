@interface MDMOAuth2Authenticator
+ (id)_createOAuth2InvalidError;
+ (id)deserializeTokens:(id)a3;
+ (id)serializeTokens:(id)a3;
- (BOOL)authenticateRequest:(id)a3 error:(id *)a4;
- (BOOL)canRefreshToken;
- (BOOL)validAuthParams:(id)a3;
- (MDMOAuth2Authenticator)initWithRMAccountID:(id)a3;
- (MDMOAuth2Authenticator)initWithTokens:(id)a3;
- (id)_authorizationGrantURLWithAuthParams:(id)a3;
- (id)prepareForReauthenticationWithAuthParams:(id)a3 accountID:(id)a4 error:(id *)a5;
- (id)webAuthenticationURLForAuthParams:(id)a3 userIdentifier:(id)a4;
- (void)_executeTokenRequestWithURL:(id)a3 body:(id)a4 completionHandler:(id)a5;
- (void)_processTokenResponse:(id)a3 data:(id)a4 error:(id)a5 completionHandler:(id)a6;
- (void)_refreshRequestWithRefreshToken:(id)a3 authParams:(id)a4 completionHandler:(id)a5;
- (void)_tokenRequestWithCode:(id)a3 authParams:(id)a4 completionHandler:(id)a5;
- (void)authTokensWithCallbackURL:(id)a3 authParams:(id)a4 completionHandler:(id)a5;
- (void)refreshTokenWithAuthParams:(id)a3 accountID:(id)a4 completionHandler:(id)a5;
@end

@implementation MDMOAuth2Authenticator

- (MDMOAuth2Authenticator)initWithRMAccountID:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = MDMOAuth2Authenticator;
  v5 = [(MDMOAuth2Authenticator *)&v19 init];
  if (v5)
  {
    v18 = 0;
    v6 = [MDMAccountUtilities rmAccountWithIdentifier:v4 fromStore:0 error:&v18];
    v7 = v18;
    if (v6)
    {
      v8 = [v6 credential];
      v9 = [v8 token];
      v10 = [MDMOAuth2Authenticator deserializeTokens:v9];
      tokens = v5->_tokens;
      v5->_tokens = v10;

      v12 = [v6 dmc_personaIdentifier];
      personaID = v5->_personaID;
      v5->_personaID = v12;
    }

    else
    {
      v14 = *DMCLogObjects();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v21 = v7;
        _os_log_impl(&dword_22E997000, v14, OS_LOG_TYPE_ERROR, "Could not extract auth tokens from RM account: %{public}@", buf, 0xCu);
      }

      v15 = v5->_tokens;
      v5->_tokens = MEMORY[0x277CBEC10];

      v8 = v5->_personaID;
      v5->_personaID = 0;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (MDMOAuth2Authenticator)initWithTokens:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = MDMOAuth2Authenticator;
  v6 = [(MDMOAuth2Authenticator *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tokens, a3);
    personaID = v7->_personaID;
    v7->_personaID = 0;
  }

  return v7;
}

- (BOOL)validAuthParams:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"method"];
  v5 = +[MDMOAuth2Authenticator authenticationMethod];
  if ([v4 isEqualToString:v5])
  {
    v6 = [v3 objectForKeyedSubscript:@"authorization-url"];
    if (v6)
    {
      v7 = [v3 objectForKeyedSubscript:@"token-url"];
      if (v7)
      {
        v8 = [v3 objectForKeyedSubscript:@"client-id"];
        if (v8)
        {
          v9 = [v3 objectForKeyedSubscript:@"redirect-url"];
          v10 = v9 != 0;
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)serializeTokens:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CCAA68]);
  v5 = [v3 objectForKeyedSubscript:@"expires"];
  if (v5)
  {
    v6 = [v4 stringFromDate:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  v8 = [v3 objectForKeyedSubscript:@"access_token"];
  [v7 setObject:v8 forKeyedSubscript:@"access_token"];

  v9 = [v3 objectForKeyedSubscript:@"refresh_token"];
  [v7 setObject:v9 forKeyedSubscript:@"refresh_token"];

  [v7 setObject:v6 forKeyedSubscript:@"expires"];
  v16 = 0;
  v10 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v7 options:0 error:&v16];
  v11 = v16;
  if (v10)
  {
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v10 encoding:4];
  }

  else
  {
    v13 = *DMCLogObjects();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v18 = v7;
      v19 = 2114;
      v20 = v11;
      _os_log_impl(&dword_22E997000, v13, OS_LOG_TYPE_ERROR, "Could not serialize JSON data for token: %{public}@ %{public}@", buf, 0x16u);
    }

    v12 = &stru_28434B568;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)deserializeTokens:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [a3 dataUsingEncoding:4];
  v15 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v3 options:0 error:&v15];
  v5 = v15;
  if (v4)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCAA68]);
    v7 = [v4 objectForKeyedSubscript:@"expires"];
    if (v7)
    {
      v8 = [v6 dateFromString:v7];
    }

    else
    {
      v8 = 0;
    }

    v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
    v11 = [v4 objectForKeyedSubscript:@"access_token"];
    [v10 setObject:v11 forKeyedSubscript:@"access_token"];

    v12 = [v4 objectForKeyedSubscript:@"refresh_token"];
    [v10 setObject:v12 forKeyedSubscript:@"refresh_token"];

    [v10 setObject:v8 forKeyedSubscript:@"expires"];
  }

  else
  {
    v9 = *DMCLogObjects();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v17 = v3;
      v18 = 2114;
      v19 = v5;
      _os_log_impl(&dword_22E997000, v9, OS_LOG_TYPE_ERROR, "Could not deserialize JSON data for token: %{public}@ %{public}@", buf, 0x16u);
    }

    v10 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)authenticateRequest:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(MDMOAuth2Authenticator *)self tokens];
  v7 = [v6 objectForKeyedSubscript:@"access_token"];

  if (v7)
  {
    v8 = DMCHTTPAuthStringWithAuthToken();
    [v5 addValue:v8 forHTTPHeaderField:*MEMORY[0x277D03358]];
  }

  return v7 != 0;
}

- (id)webAuthenticationURLForAuthParams:(id)a3 userIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(MDMOAuth2Authenticator *)self validAuthParams:v6])
  {
    v8 = objc_opt_new();
    v9 = [v8 UUIDString];
    [(MDMOAuth2Authenticator *)self setState:v9];

    v10 = [(MDMOAuth2Authenticator *)self _authorizationGrantURLWithAuthParams:v6];
    if (v10)
    {
      v11 = [MEMORY[0x277CCACE0] componentsWithURL:v10 resolvingAgainstBaseURL:0];
      v12 = v11;
      if (v7)
      {
        v13 = [v11 queryItems];
        v14 = [MEMORY[0x277CCAD18] queryItemWithName:@"login_hint" value:v7];
        v15 = [v13 arrayByAddingObject:v14];
        [v12 setQueryItems:v15];
      }

      v16 = [v12 URL];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)authTokensWithCallbackURL:(id)a3 authParams:(id)a4 completionHandler:(id)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277CCACE0] componentsWithURL:v8 resolvingAgainstBaseURL:0];
  v12 = [v11 scheme];
  v13 = [v12 isEqualToString:@"apple-remotemanagement-user-login"];

  if ((v13 & 1) == 0)
  {
    v31 = *DMCLogObjects();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = v31;
      v33 = [v11 scheme];
      *buf = 138543362;
      v47 = v33;
      _os_log_impl(&dword_22E997000, v32, OS_LOG_TYPE_ERROR, "Incorrect auth callback scheme: %{public}@", buf, 0xCu);
    }

    v18 = +[MDMOAuth2Authenticator _createOAuth2InvalidError];
    v10[2](v10, 0, v18);
    goto LABEL_27;
  }

  v40 = self;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v14 = [v11 queryItems];
  v15 = [v14 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (!v15)
  {

    v18 = 0;
    v17 = 0;
    goto LABEL_23;
  }

  v16 = v15;
  v37 = v10;
  v38 = v9;
  v39 = v8;
  v17 = 0;
  v18 = 0;
  v19 = *v42;
  do
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v42 != v19)
      {
        objc_enumerationMutation(v14);
      }

      v21 = *(*(&v41 + 1) + 8 * i);
      v22 = [v21 name];
      v23 = [v22 isEqualToString:@"code"];

      if (v23)
      {
        v24 = [v21 value];
        v25 = v18;
        v18 = v24;
      }

      else
      {
        v26 = [v21 name];
        v27 = [v26 isEqualToString:@"state"];

        if (!v27)
        {
          continue;
        }

        v28 = [v21 value];
        v25 = v17;
        v17 = v28;
      }
    }

    v16 = [v14 countByEnumeratingWithState:&v41 objects:v45 count:16];
  }

  while (v16);

  if (v18)
  {
    v9 = v38;
    v8 = v39;
    v10 = v37;
    if (v17)
    {
      v29 = [(MDMOAuth2Authenticator *)v40 state];
      v30 = [v17 isEqualToString:v29];

      if (v30)
      {
        [(MDMOAuth2Authenticator *)v40 _tokenRequestWithCode:v18 authParams:v38 completionHandler:v37];
        goto LABEL_26;
      }
    }
  }

  else
  {
    v9 = v38;
    v8 = v39;
    v10 = v37;
  }

LABEL_23:
  v34 = *DMCLogObjects();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v47 = v8;
    _os_log_impl(&dword_22E997000, v34, OS_LOG_TYPE_ERROR, "Invalid OAuth2 redirect URL response: %{public}@", buf, 0xCu);
  }

  v35 = +[MDMOAuth2Authenticator _createOAuth2InvalidError];
  v10[2](v10, 0, v35);

LABEL_26:
LABEL_27:

  v36 = *MEMORY[0x277D85DE8];
}

- (BOOL)canRefreshToken
{
  v2 = [(MDMOAuth2Authenticator *)self tokens];
  v3 = [v2 objectForKeyedSubscript:@"refresh_token"];
  v4 = v3 != 0;

  return v4;
}

- (id)prepareForReauthenticationWithAuthParams:(id)a3 accountID:(id)a4 error:(id *)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v7 objectForKeyedSubscript:@"authorization-url"];
  if (v9 && ([MEMORY[0x277CBEBC0] URLWithString:v9], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
    v12 = [MEMORY[0x277CB8F48] defaultStore];
    v24 = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __83__MDMOAuth2Authenticator_prepareForReauthenticationWithAuthParams_accountID_error___block_invoke;
    v21[3] = &unk_278856D18;
    v13 = v11;
    v22 = v13;
    v23 = v7;
    v14 = [v12 dmc_updateAccountWithIdentifier:v8 error:&v24 updateBlock:v21];
    v15 = v24;

    if (v14)
    {
      v16 = v13;
    }

    else
    {
      v17 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v26 = v15;
        _os_log_impl(&dword_22E997000, v17, OS_LOG_TYPE_ERROR, "Unable to update RM account when doing AuthServices re-authentication. Error: %{public}@", buf, 0xCu);
      }

      v16 = 0;
      if (a5 && v15)
      {
        v18 = v15;
        v16 = 0;
        *a5 = v15;
      }
    }
  }

  else
  {
    v16 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v16;
}

void __83__MDMOAuth2Authenticator_prepareForReauthenticationWithAuthParams_accountID_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 absoluteString];
  [v5 dmc_setBearerReauthURL:v4];

  [v5 dmc_setBearerReauthParams:*(a1 + 40)];
}

- (void)refreshTokenWithAuthParams:(id)a3 accountID:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(MDMOAuth2Authenticator *)self tokens];
  v12 = [v11 objectForKeyedSubscript:@"refresh_token"];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __81__MDMOAuth2Authenticator_refreshTokenWithAuthParams_accountID_completionHandler___block_invoke;
  v15[3] = &unk_278857230;
  v16 = v8;
  v17 = v9;
  v15[4] = self;
  v13 = v8;
  v14 = v9;
  [(MDMOAuth2Authenticator *)self _refreshRequestWithRefreshToken:v12 authParams:v10 completionHandler:v15];
}

void __81__MDMOAuth2Authenticator_refreshTokenWithAuthParams_accountID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [*(a1 + 32) setTokens:v5];
    *&v30 = 0;
    *(&v30 + 1) = &v30;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__5;
    v33 = __Block_byref_object_dispose__5;
    v34 = 0;
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v7 = MEMORY[0x277D03550];
    v8 = [*(a1 + 32) personaID];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __81__MDMOAuth2Authenticator_refreshTokenWithAuthParams_accountID_completionHandler___block_invoke_73;
    v19[3] = &unk_278857118;
    v22 = &v24;
    v9 = *(a1 + 40);
    v23 = &v30;
    v10 = *(a1 + 32);
    v20 = v9;
    v21 = v10;
    v11 = [v7 performBlockUnderPersona:v8 block:v19];

    if (v25[3])
    {
      v12 = *DMCLogObjects();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22E997000, v12, OS_LOG_TYPE_INFO, "Refreshed OAuth2 tokens", buf, 2u);
      }

      (*(*(a1 + 48) + 16))(*(a1 + 48), v5, 0, v13);
    }

    else
    {
      v15 = *DMCLogObjects();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = *(*(&v30 + 1) + 40);
        *buf = 138543362;
        v29 = v17;
        _os_log_impl(&dword_22E997000, v15, OS_LOG_TYPE_ERROR, "Failed to update OAuth2 tokens during refresh: %{public}@", buf, 0xCu);
      }

      (*(*(a1 + 48) + 16))(*(a1 + 48), 0, *(*(&v30 + 1) + 40), v16);
    }

    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&v30, 8);
  }

  else
  {
    v14 = *DMCLogObjects();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v30) = 138543362;
      *(&v30 + 4) = v6;
      _os_log_impl(&dword_22E997000, v14, OS_LOG_TYPE_ERROR, "Unable to refresh OAuth2 token: %{public}@", &v30, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __81__MDMOAuth2Authenticator_refreshTokenWithAuthParams_accountID_completionHandler___block_invoke_73(void *a1)
{
  v2 = [MEMORY[0x277CB8F48] defaultStore];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__MDMOAuth2Authenticator_refreshTokenWithAuthParams_accountID_completionHandler___block_invoke_2;
  v7[3] = &unk_278856C58;
  v5 = a1[4];
  v7[4] = a1[5];
  obj = v4;
  v6 = [v2 dmc_updateAccountWithIdentifier:v5 error:&obj updateBlock:v7];
  objc_storeStrong((v3 + 40), obj);
  *(*(a1[6] + 8) + 24) = v6;
}

void __81__MDMOAuth2Authenticator_refreshTokenWithAuthParams_accountID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 tokens];
  v5 = [MDMOAuth2Authenticator serializeTokens:v4];

  [v3 dmc_setBearerToken:v5];
}

- (id)_authorizationGrantURLWithAuthParams:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(MDMOAuth2Authenticator *)self validAuthParams:v4])
  {
    v5 = MEMORY[0x277CBEBC0];
    v6 = [v4 objectForKeyedSubscript:@"authorization-url"];
    v7 = [v5 URLWithString:v6];

    v8 = [v4 objectForKeyedSubscript:@"client-id"];
    v9 = [v4 objectForKeyedSubscript:@"redirect-url"];
    v10 = [v4 objectForKeyedSubscript:@"scope"];
    v11 = [MEMORY[0x277CCACE0] componentsWithURL:v7 resolvingAgainstBaseURL:0];
    v12 = MEMORY[0x277CBEB18];
    v13 = [v11 queryItems];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = MEMORY[0x277CBEBF8];
    }

    v16 = [v12 arrayWithArray:v15];

    v17 = [MEMORY[0x277CCAD18] queryItemWithName:@"response_type" value:@"code"];
    [v16 addObject:v17];

    v18 = [MEMORY[0x277CCAD18] queryItemWithName:@"client_id" value:v8];
    [v16 addObject:v18];

    v19 = [MEMORY[0x277CCAD18] queryItemWithName:@"redirect_uri" value:v9];
    [v16 addObject:v19];

    if (v10)
    {
      v20 = [MEMORY[0x277CCAD18] queryItemWithName:@"scope" value:v10];
      [v16 addObject:v20];
    }

    v21 = MEMORY[0x277CCAD18];
    v22 = [(MDMOAuth2Authenticator *)self state];
    v23 = [v21 queryItemWithName:@"state" value:v22];
    [v16 addObject:v23];

    [v11 setQueryItems:v16];
    v24 = [v11 URL];
  }

  else
  {
    v25 = *DMCLogObjects();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v28 = 138543362;
      v29 = v4;
      _os_log_impl(&dword_22E997000, v25, OS_LOG_TYPE_ERROR, "Invalid OAuth2 parameters: %{public}@", &v28, 0xCu);
    }

    v24 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v24;
}

- (void)_tokenRequestWithCode:(id)a3 authParams:(id)a4 completionHandler:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(MDMOAuth2Authenticator *)self validAuthParams:v9])
  {
    v11 = MEMORY[0x277CBEBC0];
    v12 = [v9 objectForKeyedSubscript:@"token-url"];
    v13 = [v11 URLWithString:v12];

    v24 = [v9 objectForKeyedSubscript:@"client-id"];
    v14 = [v9 objectForKeyedSubscript:@"redirect-url"];
    v15 = [MEMORY[0x277CCAD18] queryItemWithName:@"grant_type" value:@"authorization_code"];
    v26[0] = v15;
    v16 = [MEMORY[0x277CCAD18] queryItemWithName:@"code" value:v8];
    v26[1] = v16;
    [MEMORY[0x277CCAD18] queryItemWithName:@"redirect_uri" value:v14];
    v17 = v25 = v8;
    v26[2] = v17;
    v18 = [MEMORY[0x277CCAD18] queryItemWithName:@"client_id" value:v24];
    v26[3] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];

    v20 = [MEMORY[0x277CCACE0] componentsWithURL:v13 resolvingAgainstBaseURL:0];
    [v20 setQueryItems:v19];
    v21 = [v20 percentEncodedQuery];
    [(MDMOAuth2Authenticator *)self _executeTokenRequestWithURL:v13 body:v21 completionHandler:v10];

    v8 = v25;
    v10 = v24;
  }

  else
  {
    v22 = *DMCLogObjects();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v28 = v9;
      _os_log_impl(&dword_22E997000, v22, OS_LOG_TYPE_ERROR, "Invalid OAuth2 parameters: %{public}@", buf, 0xCu);
    }

    v13 = +[MDMOAuth2Authenticator _createOAuth2InvalidError];
    (*(v10 + 2))(v10, 0, v13);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_refreshRequestWithRefreshToken:(id)a3 authParams:(id)a4 completionHandler:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(MDMOAuth2Authenticator *)self validAuthParams:v9])
  {
    v11 = MEMORY[0x277CBEBC0];
    v12 = [v9 objectForKeyedSubscript:@"token-url"];
    v13 = [v11 URLWithString:v12];

    v14 = [v9 objectForKeyedSubscript:@"client-id"];
    v15 = [MEMORY[0x277CCAD18] queryItemWithName:@"grant_type" value:@"refresh_token"];
    v23[0] = v15;
    v16 = [MEMORY[0x277CCAD18] queryItemWithName:@"refresh_token" value:v8];
    v23[1] = v16;
    v17 = [MEMORY[0x277CCAD18] queryItemWithName:@"client_id" value:v14];
    v23[2] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];

    v19 = [MEMORY[0x277CCACE0] componentsWithURL:v13 resolvingAgainstBaseURL:0];
    [v19 setQueryItems:v18];
    v20 = [v19 percentEncodedQuery];
    [(MDMOAuth2Authenticator *)self _executeTokenRequestWithURL:v13 body:v20 completionHandler:v10];

    v10 = v14;
  }

  else
  {
    v21 = *DMCLogObjects();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = v9;
      _os_log_impl(&dword_22E997000, v21, OS_LOG_TYPE_ERROR, "Invalid OAuth2 parameters: %{public}@", buf, 0xCu);
    }

    v13 = +[MDMOAuth2Authenticator _createOAuth2InvalidError];
    (*(v10 + 2))(v10, 0, v13);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_executeTokenRequestWithURL:(id)a3 body:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = MEMORY[0x277CCAB70];
  v10 = a4;
  v11 = [v9 requestWithURL:a3];
  [v11 setAttribution:1];
  [v11 setHTTPMethod:*MEMORY[0x277D033A0]];
  [v11 setTimeoutInterval:90.0];
  v12 = [v10 dataUsingEncoding:4];

  [v11 setHTTPBody:v12];
  [v11 setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
  v13 = objc_opt_new();
  v14 = *DMCLogObjects();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22E997000, v14, OS_LOG_TYPE_INFO, "Getting OAuth2 for bearer token...", buf, 2u);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77__MDMOAuth2Authenticator__executeTokenRequestWithURL_body_completionHandler___block_invoke;
  v16[3] = &unk_278857168;
  v16[4] = self;
  v17 = v8;
  v15 = v8;
  [v13 startWithRequest:v11 username:0 password:0 anchorCertificateRefs:0 completionBlock:v16];
}

- (void)_processTokenResponse:(id)a3 data:(id)a4 error:(id)a5 completionHandler:(id)a6
{
  v39 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = *DMCLogObjects();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    *buf = 134218242;
    v36 = [v10 length];
    v37 = 2114;
    v38 = v9;
    _os_log_impl(&dword_22E997000, v14, OS_LOG_TYPE_DEFAULT, "Getting OAuth2 bearer token finished with data: %lu bytes, response: %{public}@", buf, 0x16u);
  }

  if (v11)
  {
    v15 = *DMCLogObjects();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v36 = v11;
      _os_log_impl(&dword_22E997000, v15, OS_LOG_TYPE_ERROR, "Failed to get OAuth2 bearer token with error: %{public}@", buf, 0xCu);
    }

    v12[2](v12, 0, v11);
    goto LABEL_29;
  }

  v16 = [v9 statusCode];
  if (v16 == 200)
  {
    v34 = 0;
    v17 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v10 options:0 error:&v34];
    v18 = v34;
    if (v18)
    {
      v19 = *DMCLogObjects();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v36 = v18;
        _os_log_impl(&dword_22E997000, v19, OS_LOG_TYPE_ERROR, "Failed to deserialize server's response with error: %{public}@", buf, 0xCu);
      }

      v12[2](v12, 0, v18);
      goto LABEL_28;
    }

    v23 = [v17 objectForKeyedSubscript:@"token_type"];
    v24 = [v17 objectForKeyedSubscript:@"access_token"];
    v33 = [v17 objectForKeyedSubscript:@"refresh_token"];
    v25 = [v17 objectForKeyedSubscript:@"expires_in"];
    v26 = v25;
    if (v25)
    {
      v32 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:{objc_msgSend(v25, "intValue")}];
      if (!v23)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v32 = 0;
      if (!v23)
      {
        goto LABEL_24;
      }
    }

    if (![v23 caseInsensitiveCompare:@"Bearer"] && v24)
    {
      v27 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
      v31 = v24;
      [v27 setObject:v24 forKeyedSubscript:@"access_token"];
      [v27 setObject:v33 forKeyedSubscript:@"refresh_token"];
      [v27 setObject:v32 forKeyedSubscript:@"expires"];
      v28 = *DMCLogObjects();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v36 = "[MDMOAuth2Authenticator _processTokenResponse:data:error:completionHandler:]";
        v37 = 2112;
        v38 = v27;
        _os_log_impl(&dword_22E997000, v28, OS_LOG_TYPE_DEBUG, "%s results: %@", buf, 0x16u);
      }

      (v12)[2](v12, v27, 0);
      v24 = v31;
      goto LABEL_27;
    }

LABEL_24:
    v29 = *DMCLogObjects();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v36 = v17;
      _os_log_impl(&dword_22E997000, v29, OS_LOG_TYPE_ERROR, "Failed to get OAuth2 bearer token invalid response: %{public}@}", buf, 0xCu);
    }

    v27 = +[MDMOAuth2Authenticator _createOAuth2InvalidError];
    v12[2](v12, 0, v27);
LABEL_27:

LABEL_28:
    goto LABEL_29;
  }

  v20 = v16;
  v21 = *DMCLogObjects();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v36 = v20;
    _os_log_impl(&dword_22E997000, v21, OS_LOG_TYPE_ERROR, "Failed to get OAuth2 bearer token with HTTP status: %ld", buf, 0xCu);
  }

  v22 = +[MDMOAuth2Authenticator _createOAuth2InvalidError];
  v12[2](v12, 0, v22);

LABEL_29:
  v30 = *MEMORY[0x277D85DE8];
}

+ (id)_createOAuth2InvalidError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D032F0];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:15025 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

@end