@interface DAExchangeOAuthFlowController
- (void)exchangeAuthCode:(id)code codeVerifier:(id)verifier claims:(id)claims withCompletion:(id)completion;
@end

@implementation DAExchangeOAuthFlowController

- (void)exchangeAuthCode:(id)code codeVerifier:(id)verifier claims:(id)claims withCompletion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__DAExchangeOAuthFlowController_exchangeAuthCode_codeVerifier_claims_withCompletion___block_invoke;
  v12[3] = &unk_278EE06A8;
  v12[4] = self;
  v13 = completionCopy;
  v11 = completionCopy;
  [(DAEASOAuthFlowController *)self exchangeAuthCode:code codeVerifier:verifier claims:claims forTokensAndUsernameWithCompletion:v12];
}

void __85__DAExchangeOAuthFlowController_exchangeAuthCode_codeVerifier_claims_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v18 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v18 && v9)
  {
    v12 = objc_alloc_init(DAEASOAuthIdentity);
    [(DAEASOAuthIdentity *)v12 setAccessToken:v18];
    [(DAEASOAuthIdentity *)v12 setRefreshToken:v9];
    [(DAEASOAuthIdentity *)v12 setUsername:v10];
    [(DAEASOAuthIdentity *)v12 setDisplayName:v11];
    v13 = [*(a1 + 32) oauthURI];
    [(DAEASOAuthIdentity *)v12 setOauthURI:v13];

    v14 = [*(a1 + 32) tokenRequestURI];
    [(DAEASOAuthIdentity *)v12 setTokenRequestURI:v14];

    v15 = [*(a1 + 32) jwksData];
    [(DAEASOAuthIdentity *)v12 setJwksData:v15];

    v16 = [*(a1 + 32) jwksURI];
    [(DAEASOAuthIdentity *)v12 setJwksURI:v16];

    v17 = [*(a1 + 32) issuer];
    [(DAEASOAuthIdentity *)v12 setIssuer:v17];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

@end