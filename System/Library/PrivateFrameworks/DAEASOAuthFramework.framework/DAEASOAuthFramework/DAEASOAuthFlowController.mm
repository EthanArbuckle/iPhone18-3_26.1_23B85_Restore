@interface DAEASOAuthFlowController
+ (id)upgradeAuthorizationEndpoint:(id)endpoint;
- (BOOL)shouldHideWebViewForLoadWithRequest:(id)request;
- (DAEASOAuthFlowController)initWithOAuthType:(unint64_t)type authURI:(id)i username:(id)username accountId:(id)id claims:(id)claims isOnPrem:(BOOL)prem;
- (id)_urlRequestForOAuthTokenFromAuthCode:(id)code codeVerifier:(id)verifier claims:(id)claims;
- (id)authURLForUsername:(id)username originalAuthURL:(id)l;
- (id)onPremAuthURLForUsername:(id)username originalAuthURL:(id)l resource:(id)resource;
- (id)requestForAuthURL:(id)l;
- (void)_assignConnectionPropertiesToSessionConfiguration:(id)configuration;
- (void)_exchangeAuthCode:(id)code codeVerifier:(id)verifier claims:(id)claims forTokensAndUsernameWithCompletion:(id)completion;
- (void)_exchangeAuthCode:(id)code codeVerifier:(id)verifier claims:(id)claims forTokensWithCompletion:(id)completion;
- (void)exchangeAuthCode:(id)code codeVerifier:(id)verifier claims:(id)claims forTokensAndUsernameWithCompletion:(id)completion;
- (void)retrieveJWKSDataFromURI:(id)i withCompletion:(id)completion;
- (void)retrieveOpenIDMetadataFromURI:(id)i withCompletion:(id)completion;
- (void)setAuthFlowCompletion:(id)completion;
@end

@implementation DAEASOAuthFlowController

- (DAEASOAuthFlowController)initWithOAuthType:(unint64_t)type authURI:(id)i username:(id)username accountId:(id)id claims:(id)claims isOnPrem:(BOOL)prem
{
  iCopy = i;
  usernameCopy = username;
  idCopy = id;
  claimsCopy = claims;
  if (iCopy)
  {
    v17 = iCopy;
  }

  else
  {
    v17 = @"https://login.microsoftonline.com/consumers/oauth2/v2.0/authorize/";
  }

  if (!prem)
  {
    v18 = [DAEASOAuthFlowController upgradeAuthorizationEndpoint:v17];

    v17 = v18;
  }

  v31.receiver = self;
  v31.super_class = DAEASOAuthFlowController;
  v19 = [(DAEASOAuthFlowController *)&v31 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_accountId, id);
    v20->_oauthType = type;
    objc_storeStrong(&v20->_oauthURI, v17);
    objc_storeStrong(&v20->_username, username);
    tokenRequestURI = v20->_tokenRequestURI;
    v20->_tokenRequestURI = @"https://login.microsoftonline.com/consumers/oauth2/v2.0/token";

    v22 = [DAEASOAuthClient clientIDForOAuthType:[(DAEASOAuthFlowController *)v20 oauthType]];
    clientID = v20->_clientID;
    v20->_clientID = v22;

    v24 = objc_alloc_init(MEMORY[0x277CCAD78]);
    uUIDString = [v24 UUIDString];
    state = v20->_state;
    v20->_state = uUIDString;

    v27 = [[DAEASOAuthPKCEChallenge alloc] initWithCodeChallengeMethod:1];
    challenge = v20->_challenge;
    v20->_challenge = v27;

    objc_storeStrong(&v20->_claimsChallenge, claims);
    v20->_isOnPrem = prem;
  }

  return v20;
}

- (void)setAuthFlowCompletion:(id)completion
{
  v4 = MEMORY[0x24C1BC830](completion, a2);
  completion = self->_completion;
  self->_completion = v4;

  MEMORY[0x2821F96F8]();
}

- (id)authURLForUsername:(id)username originalAuthURL:(id)l
{
  lCopy = l;
  usernameCopy = username;
  oauthType = [(DAEASOAuthFlowController *)self oauthType];
  easEndPoint = [(DAEASOAuthFlowController *)self easEndPoint];
  v8 = [DAEASOAuthClient defaultScopeForOAuthType:oauthType withResourceIdentifier:easEndPoint forToken:0 isOnPrem:[(DAEASOAuthFlowController *)self isOnPrem]];

  clientID = [(DAEASOAuthFlowController *)self clientID];
  redirectURI = [(DAEASOAuthFlowController *)self redirectURI];
  v11 = redirectURI;
  if (!redirectURI)
  {
    v11 = +[DAEASOAuthClient clientRedirect];
  }

  state = [(DAEASOAuthFlowController *)self state];
  challenge = [(DAEASOAuthFlowController *)self challenge];
  codeChallenge = [challenge codeChallenge];
  challenge2 = [(DAEASOAuthFlowController *)self challenge];
  v16 = +[DAEASOAuthRequest urlForOAuthURI:clientID:redirectURI:scope:username:state:codeChallenge:codeChallengeMethod:](DAEASOAuthRequest, "urlForOAuthURI:clientID:redirectURI:scope:username:state:codeChallenge:codeChallengeMethod:", lCopy, clientID, v11, v8, usernameCopy, state, codeChallenge, [challenge2 codeChallengeMethod]);

  if (!redirectURI)
  {
  }

  return v16;
}

- (id)onPremAuthURLForUsername:(id)username originalAuthURL:(id)l resource:(id)resource
{
  resourceCopy = resource;
  lCopy = l;
  usernameCopy = username;
  clientID = [(DAEASOAuthFlowController *)self clientID];
  redirectURI = [(DAEASOAuthFlowController *)self redirectURI];
  v13 = redirectURI;
  if (!redirectURI)
  {
    v13 = +[DAEASOAuthClient clientRedirect];
  }

  state = [(DAEASOAuthFlowController *)self state];
  claimsChallenge = [(DAEASOAuthFlowController *)self claimsChallenge];
  v16 = [DAEASOAuthRequest urlForOnPremOAuthURI:lCopy clientID:clientID redirectURI:v13 username:usernameCopy state:state resource:resourceCopy claims:claimsChallenge];

  if (!redirectURI)
  {
  }

  return v16;
}

- (id)requestForAuthURL:(id)l
{
  v3 = [DAEASOAuthRequest requestForURL:l];
  v4 = [v3 mutableCopy];

  return v4;
}

- (BOOL)shouldHideWebViewForLoadWithRequest:(id)request
{
  v39 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [requestCopy URL];
  v6 = [DAEASOAuthRequest urlPageWillContainAuthorizationCode:v5];

  if (v6)
  {
    v7 = DALoggingwithCategory();
    v8 = MEMORY[0x277D03988];
    v9 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v7, v9))
    {
      *buf = 0;
      _os_log_impl(&dword_247E05000, v7, v9, "DAEASOAuthFlowController shouldHideWebViewForLoadWithRequest: waiting for authentication code from page reload URL", buf, 2u);
    }

    v10 = [DAEASOAuthRequest authCodeFromRequest:requestCopy];
    v11 = [DAEASOAuthRequest stateFromRequest:requestCopy];
    v12 = [DAEASOAuthRequest errorDomainFromRequest:requestCopy];
    v13 = [DAEASOAuthRequest errorDescriptionFromRequest:requestCopy];
    if (v12 | v13)
    {
      v14 = DALoggingwithCategory();
      v15 = *(v8 + 3);
      if (os_log_type_enabled(v14, v15))
      {
        *buf = 138412546;
        v34 = v12;
        v35 = 2112;
        v36 = v13;
        _os_log_impl(&dword_247E05000, v14, v15, "Exchange Hotmail OAuth:Failed with error %@, error_description %@", buf, 0x16u);
      }

      v16 = objc_alloc(MEMORY[0x277CCA9B8]);
      v17 = [v16 initWithDomain:*MEMORY[0x277D038E0] code:93 userInfo:0];
      (*(self->_completion + 2))();
    }

    else
    {
      v29 = v11;
      if (v10 && (-[DAEASOAuthFlowController state](self, "state"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v11 isEqualToString:v18], v18, v19))
      {
        v20 = DALoggingwithCategory();
        if (os_log_type_enabled(v20, v9))
        {
          *buf = 0;
          _os_log_impl(&dword_247E05000, v20, v9, "Exchange Hotmail OAuth: Found an Auth Code String", buf, 2u);
        }

        challenge = [(DAEASOAuthFlowController *)self challenge];
        codeVerifier = [challenge codeVerifier];
        claimsChallenge = [(DAEASOAuthFlowController *)self claimsChallenge];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __64__DAEASOAuthFlowController_shouldHideWebViewForLoadWithRequest___block_invoke;
        v30[3] = &unk_278EE0568;
        v31 = v10;
        selfCopy = self;
        [(DAEASOAuthFlowController *)self exchangeAuthCode:v31 codeVerifier:codeVerifier claims:claimsChallenge forTokensAndUsernameWithCompletion:v30];
      }

      else
      {
        v24 = DALoggingwithCategory();
        v25 = *(v8 + 3);
        if (os_log_type_enabled(v24, v25))
        {
          state = [(DAEASOAuthFlowController *)self state];
          *buf = 138412802;
          v34 = v10;
          v35 = 2112;
          v36 = v29;
          v37 = 2112;
          v38 = state;
          _os_log_impl(&dword_247E05000, v24, v25, "Exchange Hotmail OAuth:Failed with authCode %@, state %@ self.state %@", buf, 0x20u);
        }

        (*(self->_completion + 2))();
      }

      v11 = v29;
    }
  }

  v27 = *MEMORY[0x277D85DE8];
  return v6;
}

void __64__DAEASOAuthFlowController_shouldHideWebViewForLoadWithRequest___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__DAEASOAuthFlowController_shouldHideWebViewForLoadWithRequest___block_invoke_2;
  block[3] = &unk_278EE0540;
  v24 = v11;
  v25 = v12;
  v26 = v13;
  v27 = v14;
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v28 = v16;
  v29 = v17;
  v30 = v15;
  v18 = v15;
  v19 = v14;
  v20 = v13;
  v21 = v12;
  v22 = v11;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __64__DAEASOAuthFlowController_shouldHideWebViewForLoadWithRequest___block_invoke_2(uint64_t a1)
{
  v24[10] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2 && (v3 = *(a1 + 40)) != 0 && (v4 = *(a1 + 48)) != 0 && (v5 = *(a1 + 56)) != 0)
  {
    v23[0] = @"authCode";
    v23[1] = @"accessToken";
    v7 = *(a1 + 64);
    v6 = *(a1 + 72);
    v24[0] = *(a1 + 64);
    v24[1] = v2;
    v23[2] = @"refreshToken";
    v23[3] = @"username";
    v24[2] = v3;
    v24[3] = v4;
    v24[4] = v5;
    v23[4] = @"displayName";
    v23[5] = @"oauthURI";
    v8 = [v6 oauthURI];
    v24[5] = v8;
    v23[6] = @"tokenRequestURI";
    v9 = [*(a1 + 72) tokenRequestURI];
    v24[6] = v9;
    v23[7] = @"jwksURI";
    v10 = [*(a1 + 72) jwksURI];
    v24[7] = v10;
    v23[8] = @"issuer";
    v11 = [*(a1 + 72) issuer];
    v24[8] = v11;
    v23[9] = @"jwksData";
    v12 = [*(a1 + 72) jwksData];
    v24[9] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:10];

    v14 = DALoggingwithCategory();
    v15 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v14, v15))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_247E05000, v14, v15, "Exchange Hotmail OAuth:Completed Fetching Tokens", &v21, 2u);
    }

    (*(*(*(a1 + 72) + 8) + 16))();
  }

  else
  {
    v16 = DALoggingwithCategory();
    v17 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(a1 + 80);
      v21 = 138543362;
      v22 = v18;
      _os_log_impl(&dword_247E05000, v16, v17, "Exchange Hotmail OAuth:Completed Fetching Tokens With Error %{public}@", &v21, 0xCu);
    }

    v19 = *(a1 + 80);
    (*(*(*(a1 + 72) + 8) + 16))();
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)_urlRequestForOAuthTokenFromAuthCode:(id)code codeVerifier:(id)verifier claims:(id)claims
{
  claimsCopy = claims;
  verifierCopy = verifier;
  codeCopy = code;
  redirectURI = [(DAEASOAuthFlowController *)self redirectURI];
  v12 = redirectURI;
  if (redirectURI)
  {
    v13 = redirectURI;
  }

  else
  {
    v13 = +[DAEASOAuthClient clientRedirect];
  }

  v14 = v13;

  oauthType = [(DAEASOAuthFlowController *)self oauthType];
  easEndPoint = [(DAEASOAuthFlowController *)self easEndPoint];
  v17 = [DAEASOAuthClient defaultScopeForOAuthType:oauthType withResourceIdentifier:easEndPoint isOnPrem:[(DAEASOAuthFlowController *)self isOnPrem]];

  tokenRequestURI = [(DAEASOAuthFlowController *)self tokenRequestURI];
  clientID = [(DAEASOAuthFlowController *)self clientID];
  v20 = [DAEASOAuthTokenRequest urlRequestForTokenRequestURI:tokenRequestURI clientID:clientID redirectURI:v14 authCode:codeCopy scope:v17 codeVerifier:verifierCopy claims:claimsCopy];

  return v20;
}

- (void)exchangeAuthCode:(id)code codeVerifier:(id)verifier claims:(id)claims forTokensAndUsernameWithCompletion:(id)completion
{
  codeCopy = code;
  verifierCopy = verifier;
  claimsCopy = claims;
  completionCopy = completion;
  oauthURI = [(DAEASOAuthFlowController *)self oauthURI];

  if (oauthURI)
  {
    if ([(DAEASOAuthFlowController *)self isOnPrem])
    {
      v15 = MEMORY[0x277CBEBC0];
      oauthURI2 = [(DAEASOAuthFlowController *)self oauthURI];
      v17 = [v15 URLWithString:oauthURI2];

      uRLByDeletingLastPathComponent = [v17 URLByDeletingLastPathComponent];

      v19 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:@"token"];

      absoluteString = [v19 absoluteString];
      [(DAEASOAuthFlowController *)self setTokenRequestURI:absoluteString];

      [(DAEASOAuthFlowController *)self _exchangeAuthCode:codeCopy codeVerifier:verifierCopy claims:claimsCopy forTokensAndUsernameWithCompletion:completionCopy];
    }

    else
    {
      oauthURI3 = [(DAEASOAuthFlowController *)self oauthURI];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __100__DAEASOAuthFlowController_exchangeAuthCode_codeVerifier_claims_forTokensAndUsernameWithCompletion___block_invoke;
      v26[3] = &unk_278EE05B8;
      v26[4] = self;
      v30 = completionCopy;
      v27 = codeCopy;
      v28 = verifierCopy;
      v29 = claimsCopy;
      [(DAEASOAuthFlowController *)self retrieveOpenIDMetadataFromURI:oauthURI3 withCompletion:v26];
    }
  }

  else
  {
    v21 = DALoggingwithCategory();
    v22 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v21, *(MEMORY[0x277D03988] + 3)))
    {
      *buf = 0;
      _os_log_impl(&dword_247E05000, v21, v22, "Cannot exchange auth code for tokens. self.oauthURI is nil.", buf, 2u);
    }

    v23 = objc_alloc(MEMORY[0x277CCA9B8]);
    v24 = [v23 initWithDomain:*MEMORY[0x277D038E0] code:93 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, 0, 0, 0, v24);
  }
}

void __100__DAEASOAuthFlowController_exchangeAuthCode_codeVerifier_claims_forTokensAndUsernameWithCompletion___block_invoke(id *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a3;
  v10 = a4;
  if (a5)
  {
    (*(a1[8] + 2))();
  }

  else
  {
    [a1[4] setTokenRequestURI:a2];
    [a1[4] setJwksURI:v9];
    [a1[4] setIssuer:v10];
    if (v9)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __100__DAEASOAuthFlowController_exchangeAuthCode_codeVerifier_claims_forTokensAndUsernameWithCompletion___block_invoke_46;
      v20[3] = &unk_278EE0590;
      v19 = *(a1 + 2);
      v11 = *(&v19 + 1);
      v12 = a1[6];
      v13 = a1[7];
      *&v14 = v12;
      *(&v14 + 1) = v13;
      v21 = v19;
      v22 = v14;
      v23 = a1[8];
      [v19 retrieveJWKSDataFromURI:v9 withCompletion:v20];
    }

    else
    {
      v15 = DALoggingwithCategory();
      v16 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v15, v16))
      {
        *buf = 0;
        _os_log_impl(&dword_247E05000, v15, v16, "Cannot exchange auth code for tokens. jwksURI is nil.", buf, 2u);
      }

      v17 = objc_alloc(MEMORY[0x277CCA9B8]);
      v18 = [v17 initWithDomain:*MEMORY[0x277D038E0] code:93 userInfo:0];
      (*(a1[8] + 2))();
    }
  }
}

uint64_t __100__DAEASOAuthFlowController_exchangeAuthCode_codeVerifier_claims_forTokensAndUsernameWithCompletion___block_invoke_46(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 64);
    v5 = *(*(a1 + 64) + 16);

    return v5();
  }

  else
  {
    [*(a1 + 32) setJwksData:a2];
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);

    return [v7 _exchangeAuthCode:v8 codeVerifier:v9 claims:v10 forTokensAndUsernameWithCompletion:v11];
  }
}

- (void)retrieveOpenIDMetadataFromURI:(id)i withCompletion:(id)completion
{
  iCopy = i;
  completionCopy = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__DAEASOAuthFlowController_retrieveOpenIDMetadataFromURI_withCompletion___block_invoke;
  block[3] = &unk_278EE0608;
  v11 = iCopy;
  selfCopy = self;
  v13 = completionCopy;
  v8 = completionCopy;
  v9 = iCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __73__DAEASOAuthFlowController_retrieveOpenIDMetadataFromURI_withCompletion___block_invoke(id *a1)
{
  v2 = [DAEASOpenIDMetadataRequest openIDrequestURLFor:a1[4]];
  v3 = [v2 mutableCopy];

  [v3 _setNonAppInitiated:1];
  v4 = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
  [a1[5] _assignConnectionPropertiesToSessionConfiguration:v4];
  v5 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v4];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __73__DAEASOAuthFlowController_retrieveOpenIDMetadataFromURI_withCompletion___block_invoke_2;
  v10 = &unk_278EE05E0;
  v12 = a1[6];
  v11 = a1[4];
  v6 = [v5 dataTaskWithRequest:v3 completionHandler:&v7];
  [v6 resume];
}

void __73__DAEASOAuthFlowController_retrieveOpenIDMetadataFromURI_withCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [[DAEASOpenIDMetadataResponse alloc] initWithData:v9 urlResponse:v8 error:v7];

  v11 = [(DAEASOpenIDMetadataResponse *)v10 error];
  if (v11)
  {
    goto LABEL_2;
  }

  v18 = [(DAEASOpenIDMetadataResponse *)v10 tokenRequestURI];
  if (!v18)
  {
    goto LABEL_3;
  }

  v11 = v18;
  v19 = [(DAEASOpenIDMetadataResponse *)v10 jwksURI];
  if (!v19)
  {
LABEL_2:
  }

  else
  {
    v20 = v19;
    v21 = [(DAEASOpenIDMetadataResponse *)v10 issuer];

    if (v21)
    {
      v22 = *(a1 + 40);
      v16 = [(DAEASOpenIDMetadataResponse *)v10 tokenRequestURI];
      v23 = [(DAEASOpenIDMetadataResponse *)v10 jwksURI];
      v24 = [(DAEASOpenIDMetadataResponse *)v10 issuer];
      (*(v22 + 16))(v22, v16, v23, v24, 0);

      goto LABEL_6;
    }
  }

LABEL_3:
  v12 = DALoggingwithCategory();
  v13 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(a1 + 32);
    v25 = 138412546;
    v26 = v14;
    v27 = 2112;
    v28 = v7;
    _os_log_impl(&dword_247E05000, v12, v13, "DAEASOAuthFlowController couldn't retrieve OpenID metadata from URI: %@ Error: %@", &v25, 0x16u);
  }

  v15 = *(a1 + 40);
  v16 = [(DAEASOpenIDMetadataResponse *)v10 error];
  (*(v15 + 16))(v15, 0, 0, 0, v16);
LABEL_6:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)retrieveJWKSDataFromURI:(id)i withCompletion:(id)completion
{
  iCopy = i;
  completionCopy = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__DAEASOAuthFlowController_retrieveJWKSDataFromURI_withCompletion___block_invoke;
  block[3] = &unk_278EE0608;
  v11 = iCopy;
  selfCopy = self;
  v13 = completionCopy;
  v8 = completionCopy;
  v9 = iCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __67__DAEASOAuthFlowController_retrieveJWKSDataFromURI_withCompletion___block_invoke(id *a1)
{
  v2 = objc_alloc(MEMORY[0x277CCAB70]);
  v3 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:a1[4]];
  v4 = [v2 initWithURL:v3];

  [v4 _setNonAppInitiated:1];
  v5 = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
  [a1[5] _assignConnectionPropertiesToSessionConfiguration:v5];
  v6 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v5];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __67__DAEASOAuthFlowController_retrieveJWKSDataFromURI_withCompletion___block_invoke_2;
  v11 = &unk_278EE05E0;
  v13 = a1[6];
  v12 = a1[4];
  v7 = [v6 dataTaskWithRequest:v4 completionHandler:&v8];
  [v7 resume];
}

void __67__DAEASOAuthFlowController_retrieveJWKSDataFromURI_withCompletion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = v6;
  if (!a2 || v6)
  {
    v9 = DALoggingwithCategory();
    v10 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(a1 + 32);
      v13 = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_247E05000, v9, v10, "DAEASOAuthFlowController couldn't retrieve JWKS data from URI: %@ Error: %@", &v13, 0x16u);
    }

    v8 = *(*(a1 + 40) + 16);
  }

  else
  {
    v8 = *(*(a1 + 40) + 16);
  }

  v8();

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_exchangeAuthCode:(id)code codeVerifier:(id)verifier claims:(id)claims forTokensAndUsernameWithCompletion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __101__DAEASOAuthFlowController__exchangeAuthCode_codeVerifier_claims_forTokensAndUsernameWithCompletion___block_invoke;
  v12[3] = &unk_278EE0630;
  v12[4] = self;
  v13 = completionCopy;
  v11 = completionCopy;
  [(DAEASOAuthFlowController *)self _exchangeAuthCode:code codeVerifier:verifier claims:claims forTokensWithCompletion:v12];
}

void __101__DAEASOAuthFlowController__exchangeAuthCode_codeVerifier_claims_forTokensAndUsernameWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = DALoggingwithCategory();
  v14 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v13, v14))
  {
    *v17 = 0;
    _os_log_impl(&dword_247E05000, v13, v14, "EAS OAuth: Received Tokens", v17, 2u);
  }

  v15 = *(a1 + 40);
  if (v9 && v10)
  {
    v16 = [*(a1 + 32) _accountDescription];
    (*(v15 + 16))(v15, v9, v10, v11, v16, 0);
  }

  else
  {
    (*(v15 + 16))(*(a1 + 40), 0, 0, 0, 0, v12);
  }
}

- (void)_exchangeAuthCode:(id)code codeVerifier:(id)verifier claims:(id)claims forTokensWithCompletion:(id)completion
{
  codeCopy = code;
  verifierCopy = verifier;
  claimsCopy = claims;
  completionCopy = completion;
  v14 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__DAEASOAuthFlowController__exchangeAuthCode_codeVerifier_claims_forTokensWithCompletion___block_invoke;
  block[3] = &unk_278EE0680;
  block[4] = self;
  v20 = codeCopy;
  v21 = verifierCopy;
  v22 = claimsCopy;
  v23 = completionCopy;
  v15 = completionCopy;
  v16 = claimsCopy;
  v17 = verifierCopy;
  v18 = codeCopy;
  dispatch_async(v14, block);
}

void __90__DAEASOAuthFlowController__exchangeAuthCode_codeVerifier_claims_forTokensWithCompletion___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _urlRequestForOAuthTokenFromAuthCode:*(a1 + 40) codeVerifier:*(a1 + 48) claims:*(a1 + 56)];
  v3 = [v2 mutableCopy];

  [v3 _setNonAppInitiated:1];
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = [v3 URL];
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    v8 = [v3 HTTPBody];
    v9 = [v7 initWithData:v8 encoding:4];
    *buf = 138412546;
    v21 = v6;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_247E05000, v4, v5, "DAEASOAuthFlowController: Sending request: %@ %@", buf, 0x16u);
  }

  v10 = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
  [*(a1 + 32) _assignConnectionPropertiesToSessionConfiguration:v10];
  v11 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v10];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __90__DAEASOAuthFlowController__exchangeAuthCode_codeVerifier_claims_forTokensWithCompletion___block_invoke_60;
  v17 = &unk_278EE0658;
  v18 = *(a1 + 32);
  v19 = *(a1 + 64);
  v12 = [v11 dataTaskWithRequest:v3 completionHandler:&v14];
  [v12 resume];

  v13 = *MEMORY[0x277D85DE8];
}

void __90__DAEASOAuthFlowController__exchangeAuthCode_codeVerifier_claims_forTokensWithCompletion___block_invoke_60(uint64_t a1, void *a2, void *a3, void *a4)
{
  v46[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [[DAEASOAuthTokenResponse alloc] initWithData:v9 urlResponse:v8 error:v7];

  v11 = [(DAEASOAuthTokenResponse *)v10 error];
  if (v11)
  {

LABEL_3:
    v12 = *(a1 + 40);
    v13 = [(DAEASOAuthTokenResponse *)v10 error];
    (*(v12 + 16))(v12, 0, 0, 0, v13);
LABEL_16:

    goto LABEL_17;
  }

  v14 = [(DAEASOAuthTokenResponse *)v10 idToken];

  if (!v14)
  {
    goto LABEL_3;
  }

  v15 = [(DAEASOAuthTokenResponse *)v10 user_id];
  v16 = *(a1 + 32);
  if (v15)
  {
    [v16 setUsername:v15];
  }

  else
  {
    v17 = [v16 username];
    [*(a1 + 32) setUsername:v17];
  }

  if ([(DAEASOAuthTokenResponse *)v10 statusCode]!= 200 || ([(DAEASOAuthTokenResponse *)v10 accessToken], (v18 = objc_claimAutoreleasedReturnValue()) == 0) || (v19 = v18, [(DAEASOAuthTokenResponse *)v10 refreshToken], v20 = objc_claimAutoreleasedReturnValue(), v20, v19, !v20))
  {
    v32 = MEMORY[0x277CCACA8];
    v33 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DAEASOAuthTokenResponse statusCode](v10, "statusCode")}];
    v34 = [(DAEASOAuthTokenResponse *)v10 errorMessage];
    v13 = [v32 stringWithFormat:@"Server failed to exchange auth code for tokens, with status code %@ and error message %@", v33, v34];

    v35 = MEMORY[0x277CCA9B8];
    v36 = *MEMORY[0x277CB8DC0];
    v43 = *MEMORY[0x277CCA450];
    v44 = v13;
    v37 = MEMORY[0x277CBEAC0];
    v38 = &v44;
    v39 = &v43;
LABEL_15:
    v40 = [v37 dictionaryWithObjects:v38 forKeys:v39 count:1];
    v41 = [v35 errorWithDomain:v36 code:1 userInfo:v40];

    (*(*(a1 + 40) + 16))();
    goto LABEL_16;
  }

  if (([*(a1 + 32) isOnPrem] & 1) == 0)
  {
    v21 = [DAEASOAuthJWTValidator alloc];
    v22 = [(DAEASOAuthTokenResponse *)v10 idToken];
    v23 = [(DAEASOAuthJWTValidator *)v21 initWithIdToken:v22];

    v24 = [*(a1 + 32) jwksData];
    v25 = [*(a1 + 32) clientID];
    v26 = [*(a1 + 32) issuer];
    v27 = [(DAEASOAuthJWTValidator *)v23 idTokenValidWithJWKS:v24 withAudience:v25 withIssuer:v26];

    if (!v27)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not validate the id_token received from the server"];
      v35 = MEMORY[0x277CCA9B8];
      v36 = *MEMORY[0x277CB8DC0];
      v45 = *MEMORY[0x277CCA450];
      v46[0] = v13;
      v37 = MEMORY[0x277CBEAC0];
      v38 = v46;
      v39 = &v45;
      goto LABEL_15;
    }
  }

  v28 = *(a1 + 40);
  v29 = [(DAEASOAuthTokenResponse *)v10 accessToken];
  v30 = [(DAEASOAuthTokenResponse *)v10 refreshToken];
  v31 = [*(a1 + 32) username];
  (*(v28 + 16))(v28, v29, v30, v31, 0);

LABEL_17:
  v42 = *MEMORY[0x277D85DE8];
}

- (void)_assignConnectionPropertiesToSessionConfiguration:(id)configuration
{
  accountId = self->_accountId;
  configurationCopy = configuration;
  [configurationCopy set_sourceApplicationSecondaryIdentifier:accountId];
  [configurationCopy set_sourceApplicationBundleIdentifier:*MEMORY[0x277D07A08]];
}

+ (id)upgradeAuthorizationEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v4 = [MEMORY[0x277CBEBC0] URLWithString:endpointCopy];
  v5 = v4;
  if (v4 && ([v4 host], (v6 = objc_claimAutoreleasedReturnValue()) != 0) && (v7 = v6, objc_msgSend(v5, "path"), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    lastPathComponent = [v5 lastPathComponent];
    uRLByDeletingLastPathComponent = [v5 URLByDeletingLastPathComponent];

    lastPathComponent2 = [uRLByDeletingLastPathComponent lastPathComponent];
    v12 = [lastPathComponent2 caseInsensitiveCompare:@"v2.0"];

    if (v12)
    {
      v13 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:@"v2.0"];

      uRLByDeletingLastPathComponent = [v13 URLByAppendingPathComponent:lastPathComponent];

      absoluteString = [uRLByDeletingLastPathComponent absoluteString];
    }

    else
    {
      absoluteString = endpointCopy;
    }

    v15 = absoluteString;

    v5 = uRLByDeletingLastPathComponent;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end