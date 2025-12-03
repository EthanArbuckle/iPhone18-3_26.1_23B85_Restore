@interface MDMMAIDBearerTokenAuthenticator
+ (id)_createAuthInvalidError;
+ (id)_createGeneralServerError;
+ (id)_createManagedAppleAccountInvalidatedError;
+ (id)_createMissingBearerTokenError;
+ (id)authenticatorWithAnchorCertificateRefs:(id)refs;
- (BOOL)authenticateRequest:(id)request error:(id *)error;
- (BOOL)validAuthParams:(id)params;
- (MDMMAIDBearerTokenAuthenticator)initWithRMAccountID:(id)d;
- (MDMMAIDBearerTokenAuthenticator)initWithTokens:(id)tokens;
- (id)prepareForReauthenticationWithAuthParams:(id)params accountID:(id)d error:(id *)error;
- (void)_executeExchangeRequestWithURL:(id)l accountID:(id)d completionHandler:(id)handler;
- (void)_processTokenResponse:(id)response data:(id)data error:(id)error completionHandler:(id)handler;
- (void)fetchTokenWithAuthParams:(id)params accountID:(id)d completionHandler:(id)handler;
- (void)refreshTokenWithAuthParams:(id)params accountID:(id)d completionHandler:(id)handler;
@end

@implementation MDMMAIDBearerTokenAuthenticator

+ (id)authenticatorWithAnchorCertificateRefs:(id)refs
{
  refsCopy = refs;
  v4 = objc_opt_new();
  [v4 setAnchorCertificateRefs:refsCopy];

  return v4;
}

- (MDMMAIDBearerTokenAuthenticator)initWithRMAccountID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v17.receiver = self;
  v17.super_class = MDMMAIDBearerTokenAuthenticator;
  v5 = [(MDMMAIDBearerTokenAuthenticator *)&v17 init];
  if (v5)
  {
    v16 = 0;
    v6 = [MDMAccountUtilities rmAccountWithIdentifier:dCopy fromStore:0 error:&v16];
    v7 = v16;
    if (v6)
    {
      dmc_bearerToken = [v6 dmc_bearerToken];
      token = v5->_token;
      v5->_token = dmc_bearerToken;

      dmc_personaIdentifier = [v6 dmc_personaIdentifier];
    }

    else
    {
      v11 = *DMCLogObjects();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v19 = v7;
        _os_log_impl(&dword_22E997000, v11, OS_LOG_TYPE_ERROR, "Could not extract auth token from RM account: %{public}@", buf, 0xCu);
      }

      v12 = v5->_token;
      v5->_token = 0;

      dmc_personaIdentifier = 0;
    }

    personaID = v5->_personaID;
    v5->_personaID = dmc_personaIdentifier;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (MDMMAIDBearerTokenAuthenticator)initWithTokens:(id)tokens
{
  tokensCopy = tokens;
  v10.receiver = self;
  v10.super_class = MDMMAIDBearerTokenAuthenticator;
  v5 = [(MDMMAIDBearerTokenAuthenticator *)&v10 init];
  if (v5)
  {
    v6 = [tokensCopy objectForKeyedSubscript:@"token"];
    token = v5->_token;
    v5->_token = v6;

    personaID = v5->_personaID;
    v5->_personaID = 0;
  }

  return v5;
}

- (BOOL)validAuthParams:(id)params
{
  paramsCopy = params;
  v4 = [paramsCopy objectForKeyedSubscript:@"method"];
  v5 = +[MDMMAIDBearerTokenAuthenticator authenticationMethod];
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
  token = [(MDMMAIDBearerTokenAuthenticator *)self token];

  if (token)
  {
    token2 = [(MDMMAIDBearerTokenAuthenticator *)self token];
    v8 = DMCHTTPAuthStringWithAuthToken();
    [requestCopy addValue:v8 forHTTPHeaderField:*MEMORY[0x277D03358]];
  }

  return token != 0;
}

- (id)prepareForReauthenticationWithAuthParams:(id)params accountID:(id)d error:(id *)error
{
  v5 = [params objectForKeyedSubscript:{@"url", d, error}];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEBC0] URLWithString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)fetchTokenWithAuthParams:(id)params accountID:(id)d completionHandler:(id)handler
{
  paramsCopy = params;
  dCopy = d;
  handlerCopy = handler;
  if ([(MDMMAIDBearerTokenAuthenticator *)self validAuthParams:paramsCopy])
  {
    v11 = MEMORY[0x277CBEBC0];
    v12 = [paramsCopy objectForKeyedSubscript:@"url"];
    v13 = [v11 URLWithString:v12];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __88__MDMMAIDBearerTokenAuthenticator_fetchTokenWithAuthParams_accountID_completionHandler___block_invoke;
    v15[3] = &unk_2788570F0;
    v15[4] = self;
    v16 = handlerCopy;
    [(MDMMAIDBearerTokenAuthenticator *)self _executeExchangeRequestWithURL:v13 accountID:dCopy completionHandler:v15];
  }

  else
  {
    v14 = +[MDMMAIDBearerTokenAuthenticator _createAuthInvalidError];
    (*(handlerCopy + 2))(handlerCopy, 0, v14);
  }
}

void __88__MDMMAIDBearerTokenAuthenticator_fetchTokenWithAuthParams_accountID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:@"token"];
    [*(a1 + 32) setToken:v7];

    v8 = *DMCLogObjects();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_22E997000, v8, OS_LOG_TYPE_INFO, "Fetched MAID tokens", &v12, 2u);
    }

    v9 = *(*(a1 + 40) + 16);
  }

  else
  {
    v10 = *DMCLogObjects();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543362;
      v13 = v6;
      _os_log_impl(&dword_22E997000, v10, OS_LOG_TYPE_ERROR, "Unable to fetch MAID token: %{public}@", &v12, 0xCu);
    }

    v9 = *(*(a1 + 40) + 16);
  }

  v9();

  v11 = *MEMORY[0x277D85DE8];
}

- (void)refreshTokenWithAuthParams:(id)params accountID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __90__MDMMAIDBearerTokenAuthenticator_refreshTokenWithAuthParams_accountID_completionHandler___block_invoke;
  v12[3] = &unk_278857140;
  v12[4] = self;
  v13 = dCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = dCopy;
  [(MDMMAIDBearerTokenAuthenticator *)self fetchTokenWithAuthParams:params accountID:v11 completionHandler:v12];
}

void __90__MDMMAIDBearerTokenAuthenticator_refreshTokenWithAuthParams_accountID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v7 = a3;
  if (v7)
  {
    goto LABEL_9;
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__4;
  v32 = __Block_byref_object_dispose__4;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v8 = MEMORY[0x277D03550];
  v9 = [*(a1 + 32) personaID];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __90__MDMMAIDBearerTokenAuthenticator_refreshTokenWithAuthParams_accountID_completionHandler___block_invoke_11;
  v19[3] = &unk_278857118;
  v22 = &v24;
  v10 = *(a1 + 40);
  v23 = &v28;
  v11 = *(a1 + 32);
  v20 = v10;
  v21 = v11;
  v12 = [v8 performBlockUnderPersona:v9 block:v19];

  v13 = *(v25 + 24);
  if (v13)
  {
    v14 = *DMCLogObjects();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22E997000, v14, OS_LOG_TYPE_INFO, "Refreshed MAID tokens", buf, 2u);
    }
  }

  else
  {
    v15 = *DMCLogObjects();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = v29[5];
      *buf = 138543362;
      v35 = v17;
      _os_log_impl(&dword_22E997000, v15, OS_LOG_TYPE_ERROR, "Failed to update account MAID tokens during refresh: %{public}@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), 0, v29[5], v16);
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);

  if (v13)
  {
LABEL_9:
    (*(*(a1 + 48) + 16))(*(a1 + 48), v5, v7, v6);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __90__MDMMAIDBearerTokenAuthenticator_refreshTokenWithAuthParams_accountID_completionHandler___block_invoke_11(void *a1)
{
  v2 = [MEMORY[0x277CB8F48] defaultStore];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __90__MDMMAIDBearerTokenAuthenticator_refreshTokenWithAuthParams_accountID_completionHandler___block_invoke_2;
  v7[3] = &unk_278856C58;
  v5 = a1[4];
  v7[4] = a1[5];
  obj = v4;
  v6 = [v2 dmc_updateAccountWithIdentifier:v5 error:&obj updateBlock:v7];
  objc_storeStrong((v3 + 40), obj);
  *(*(a1[6] + 8) + 24) = v6;
}

void __90__MDMMAIDBearerTokenAuthenticator_refreshTokenWithAuthParams_accountID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 token];
  [v3 dmc_setBearerToken:v4];
}

- (void)_executeExchangeRequestWithURL:(id)l accountID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = MEMORY[0x277CCAB70];
  dCopy = d;
  v11 = [v9 requestWithURL:l];
  [v11 setAttribution:1];
  [v11 setHTTPMethod:*MEMORY[0x277D03398]];
  [v11 setTimeoutInterval:90.0];
  v12 = objc_alloc_init(MEMORY[0x277D03508]);
  v13 = [[MDMMAIDAuthenticator alloc] initWithRMAccountID:dCopy];

  [v12 setAuthenticator:v13];
  v14 = *DMCLogObjects();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22E997000, v14, OS_LOG_TYPE_INFO, "Exchanging MAID for bearer token...", buf, 2u);
  }

  anchorCertificateRefs = [(MDMMAIDBearerTokenAuthenticator *)self anchorCertificateRefs];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __94__MDMMAIDBearerTokenAuthenticator__executeExchangeRequestWithURL_accountID_completionHandler___block_invoke;
  v17[3] = &unk_278857168;
  v17[4] = self;
  v18 = handlerCopy;
  v16 = handlerCopy;
  [v12 startWithRequest:v11 username:0 password:0 anchorCertificateRefs:anchorCertificateRefs completionBlock:v17];
}

- (void)_processTokenResponse:(id)response data:(id)data error:(id)error completionHandler:(id)handler
{
  v33 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  dataCopy = data;
  errorCopy = error;
  handlerCopy = handler;
  v13 = *DMCLogObjects();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    *buf = 134218242;
    v30 = [dataCopy length];
    v31 = 2114;
    v32 = responseCopy;
    _os_log_impl(&dword_22E997000, v14, OS_LOG_TYPE_DEFAULT, "Exchange MAID for bearer token finished with data: %lu bytes, response: %{public}@", buf, 0x16u);
  }

  if (errorCopy)
  {
    v15 = *DMCLogObjects();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v30 = errorCopy;
      _os_log_impl(&dword_22E997000, v15, OS_LOG_TYPE_ERROR, "Failed to exchange for bearer token with error: %{public}@", buf, 0xCu);
    }

    handlerCopy[2](handlerCopy, 0, errorCopy);
  }

  else
  {
    statusCode = [responseCopy statusCode];
    if (statusCode == 200)
    {
      v26 = 0;
      v17 = [MEMORY[0x277CCAAA0] JSONObjectWithData:dataCopy options:0 error:&v26];
      v18 = v26;
      if (v18)
      {
        v19 = *DMCLogObjects();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v30 = v18;
          _os_log_impl(&dword_22E997000, v19, OS_LOG_TYPE_ERROR, "Failed to deserialize server's response with error: %{public}@", buf, 0xCu);
        }

        handlerCopy[2](handlerCopy, 0, v18);
      }

      else
      {
        v21 = [v17 objectForKeyedSubscript:@"bearer-token"];
        v22 = [v21 length];
        v23 = *DMCLogObjects();
        if (v22)
        {
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v30 = "[MDMMAIDBearerTokenAuthenticator _processTokenResponse:data:error:completionHandler:]";
            v31 = 2112;
            v32 = v17;
            _os_log_impl(&dword_22E997000, v23, OS_LOG_TYPE_DEBUG, "%s results: %@", buf, 0x16u);
          }

          v27 = @"token";
          v28 = v21;
          v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
          (handlerCopy)[2](handlerCopy, v24, 0);
        }

        else
        {
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_22E997000, v23, OS_LOG_TYPE_ERROR, "Server response doesn't contain the bearer token", buf, 2u);
          }

          v24 = +[MDMMAIDBearerTokenAuthenticator _createMissingBearerTokenError];
          handlerCopy[2](handlerCopy, 0, v24);
        }
      }
    }

    else
    {
      if (statusCode == 401)
      {
        +[MDMMAIDBearerTokenAuthenticator _createManagedAppleAccountInvalidatedError];
      }

      else
      {
        +[MDMMAIDBearerTokenAuthenticator _createGeneralServerError];
      }
      v20 = ;
      handlerCopy[2](handlerCopy, 0, v20);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

+ (id)_createAuthInvalidError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D032F0];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:15024 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_createMissingBearerTokenError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D032F0];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:15003 descriptionArray:v4 underlyingError:0 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_createGeneralServerError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D032F0];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:15003 descriptionArray:v4 underlyingError:0 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

+ (id)_createManagedAppleAccountInvalidatedError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D032F0];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:15009 descriptionArray:v4 underlyingError:0 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

@end