@interface MDMBearerTokenAuthenticator
+ (id)_createAuthInvalidError;
- (BOOL)authenticateRequest:(id)request error:(id *)error;
- (BOOL)validAuthParams:(id)params;
- (MDMBearerTokenAuthenticator)initWithRMAccountID:(id)d;
- (MDMBearerTokenAuthenticator)initWithTokens:(id)tokens;
- (id)prepareForReauthenticationWithAuthParams:(id)params accountID:(id)d error:(id *)error;
- (id)webAuthenticationURLForAuthParams:(id)params userIdentifier:(id)identifier;
- (void)authTokensWithCallbackURL:(id)l authParams:(id)params completionHandler:(id)handler;
@end

@implementation MDMBearerTokenAuthenticator

- (MDMBearerTokenAuthenticator)initWithRMAccountID:(id)d
{
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v13.receiver = self;
  v13.super_class = MDMBearerTokenAuthenticator;
  v5 = [(MDMBearerTokenAuthenticator *)&v13 init];
  if (v5)
  {
    v12 = 0;
    v6 = [MDMAccountUtilities bearerTokenForRMAccountID:dCopy error:&v12];
    v7 = v12;
    token = v5->_token;
    v5->_token = v6;

    if (v7)
    {
      v9 = *DMCLogObjects();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v15 = v7;
        _os_log_impl(&dword_22E997000, v9, OS_LOG_TYPE_ERROR, "Could not extract auth token from RM account: %{public}@", buf, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (MDMBearerTokenAuthenticator)initWithTokens:(id)tokens
{
  tokensCopy = tokens;
  v9.receiver = self;
  v9.super_class = MDMBearerTokenAuthenticator;
  v5 = [(MDMBearerTokenAuthenticator *)&v9 init];
  if (v5)
  {
    v6 = [tokensCopy objectForKeyedSubscript:@"token"];
    token = v5->_token;
    v5->_token = v6;
  }

  return v5;
}

- (BOOL)validAuthParams:(id)params
{
  paramsCopy = params;
  v4 = [paramsCopy objectForKeyedSubscript:@"method"];
  v5 = +[MDMBearerTokenAuthenticator authenticationMethod];
  if ([v4 isEqualToString:v5])
  {
    v6 = [paramsCopy objectForKeyedSubscript:@"url"];
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)authenticateRequest:(id)request error:(id *)error
{
  requestCopy = request;
  token = [(MDMBearerTokenAuthenticator *)self token];

  if (token)
  {
    token2 = [(MDMBearerTokenAuthenticator *)self token];
    v8 = DMCHTTPAuthStringWithAuthToken();
    [requestCopy addValue:v8 forHTTPHeaderField:*MEMORY[0x277D03358]];
  }

  return token != 0;
}

- (id)webAuthenticationURLForAuthParams:(id)params userIdentifier:(id)identifier
{
  v17[1] = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  identifierCopy = identifier;
  if ([(MDMBearerTokenAuthenticator *)self validAuthParams:paramsCopy])
  {
    v8 = MEMORY[0x277CBEBC0];
    v9 = [paramsCopy objectForKeyedSubscript:@"url"];
    v10 = [v8 URLWithString:v9];

    if (v10)
    {
      v11 = [MEMORY[0x277CCACE0] componentsWithURL:v10 resolvingAgainstBaseURL:0];
      if (identifierCopy)
      {
        v12 = [MEMORY[0x277CCAD18] queryItemWithName:@"user-identifier" value:identifierCopy];
        v17[0] = v12;
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
        [v11 setQueryItems:v13];
      }

      v14 = [v11 URL];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)authTokensWithCallbackURL:(id)l authParams:(id)params completionHandler:(id)handler
{
  v36 = *MEMORY[0x277D85DE8];
  lCopy = l;
  handlerCopy = handler;
  v8 = [MEMORY[0x277CCACE0] componentsWithURL:lCopy resolvingAgainstBaseURL:0];
  scheme = [v8 scheme];
  v10 = [scheme isEqualToString:@"apple-remotemanagement-user-login"];

  if ((v10 & 1) == 0)
  {
    v19 = *DMCLogObjects();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = v19;
      scheme2 = [v8 scheme];
      *buf = 138543362;
      v35 = scheme2;
      _os_log_impl(&dword_22E997000, v20, OS_LOG_TYPE_ERROR, "Incorrect auth callback scheme: %{public}@", buf, 0xCu);
    }

LABEL_17:
    value = +[MDMBearerTokenAuthenticator _createAuthInvalidError];
    handlerCopy[2](handlerCopy, 0, value);
    goto LABEL_18;
  }

  v26 = lCopy;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  queryItems = [v8 queryItems];
  v12 = [queryItems countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (!v12)
  {
LABEL_10:

LABEL_15:
    v24 = *DMCLogObjects();
    lCopy = v26;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v35 = v26;
      _os_log_impl(&dword_22E997000, v24, OS_LOG_TYPE_ERROR, "Invalid auth redirect URL response: %{public}@", buf, 0xCu);
    }

    goto LABEL_17;
  }

  v13 = v12;
  v14 = *v28;
LABEL_4:
  v15 = 0;
  while (1)
  {
    if (*v28 != v14)
    {
      objc_enumerationMutation(queryItems);
    }

    v16 = *(*(&v27 + 1) + 8 * v15);
    name = [v16 name];
    v18 = [name isEqualToString:@"access-token"];

    if (v18)
    {
      break;
    }

    if (v13 == ++v15)
    {
      v13 = [queryItems countByEnumeratingWithState:&v27 objects:v33 count:16];
      if (v13)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  value = [v16 value];

  if (!value)
  {
    goto LABEL_15;
  }

  v31 = @"token";
  v32 = value;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  (handlerCopy)[2](handlerCopy, v23, 0);

  lCopy = v26;
LABEL_18:

  v25 = *MEMORY[0x277D85DE8];
}

- (id)prepareForReauthenticationWithAuthParams:(id)params accountID:(id)d error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  dCopy = d;
  v9 = [paramsCopy objectForKeyedSubscript:@"url"];
  if (v9 && ([MEMORY[0x277CBEBC0] URLWithString:v9], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
    defaultStore = [MEMORY[0x277CB8F48] defaultStore];
    v24 = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __88__MDMBearerTokenAuthenticator_prepareForReauthenticationWithAuthParams_accountID_error___block_invoke;
    v21[3] = &unk_278856D18;
    v13 = v11;
    v22 = v13;
    v23 = paramsCopy;
    v14 = [defaultStore dmc_updateAccountWithIdentifier:dCopy error:&v24 updateBlock:v21];
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
      if (error && v15)
      {
        v18 = v15;
        v16 = 0;
        *error = v15;
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

void __88__MDMBearerTokenAuthenticator_prepareForReauthenticationWithAuthParams_accountID_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 absoluteString];
  [v5 dmc_setBearerReauthURL:v4];

  [v5 dmc_setBearerReauthParams:*(a1 + 40)];
}

+ (id)_createAuthInvalidError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D032F0];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:15024 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

@end