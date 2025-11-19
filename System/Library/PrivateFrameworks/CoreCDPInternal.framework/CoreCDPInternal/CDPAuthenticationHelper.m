@interface CDPAuthenticationHelper
+ (id)_authContextForContext:(id)a3;
+ (id)_contextForPrimaryAccount;
+ (id)_contextForPrimaryAccountSilentAuth;
+ (id)authController;
+ (void)_authWithContext:(id)a3 completion:(id)a4;
+ (void)silentAuthenticationForContext:(id)a3 withCompletion:(id)a4;
+ (void)silentAuthenticationForPrimaryAccountWithClientAppName:(id)a3 clientAppBundleId:(id)a4 withCompletion:(id)a5;
+ (void)silentAuthenticationForPrimaryAccountWithCompletion:(id)a3;
@end

@implementation CDPAuthenticationHelper

+ (void)silentAuthenticationForPrimaryAccountWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _contextForPrimaryAccountSilentAuth];
  [a1 _authWithContext:v5 completion:v4];
}

+ (void)silentAuthenticationForPrimaryAccountWithClientAppName:(id)a3 clientAppBundleId:(id)a4 withCompletion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [objc_opt_class() _contextForPrimaryAccountSilentAuth];
  [v11 _setProxiedAppName:v10];

  [v11 _setProxiedAppBundleID:v9];
  [a1 _authWithContext:v11 completion:v8];
}

+ (void)silentAuthenticationForContext:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() _authContextForContext:v7];

  [v8 setAuthenticationType:1];
  [v8 setIsUsernameEditable:0];
  [a1 _authWithContext:v8 completion:v6];
}

+ (id)authController
{
  v2 = objc_alloc_init(MEMORY[0x277CF0178]);

  return v2;
}

+ (void)_authWithContext:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(_TtC15CoreCDPInternal28CDPExponentialRetryScheduler);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__CDPAuthenticationHelper__authWithContext_completion___block_invoke;
  v9[3] = &unk_278E24620;
  v10 = v5;
  v8 = v5;
  [(CDPExponentialRetryScheduler *)v7 retrySilentAuthWithAuthContext:v6 completionHandler:v9];
}

void __55__CDPAuthenticationHelper__authWithContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __55__CDPAuthenticationHelper__authWithContext_completion___block_invoke_cold_1(v6, v7);
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = *(v8 + 16);
LABEL_8:
      v9();
    }
  }

  else
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      v9 = *(v10 + 16);
      goto LABEL_8;
    }
  }
}

+ (id)_contextForPrimaryAccountSilentAuth
{
  v2 = [a1 _contextForPrimaryAccount];
  [v2 setAuthenticationType:1];
  [v2 setIsUsernameEditable:0];

  return v2;
}

+ (id)_authContextForContext:(id)a3
{
  v3 = MEMORY[0x277CF0170];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 dsid];
  v7 = [v6 stringValue];
  [v5 setDSID:v7];

  v8 = [v4 altDSID];
  [v5 setAltDSID:v8];

  v9 = [v4 appleID];
  [v5 setUsername:v9];

  v10 = [v4 password];

  [v5 _setPassword:v10];

  return v5;
}

+ (id)_contextForPrimaryAccount
{
  v2 = [MEMORY[0x277CFD480] sharedInstance];
  v3 = [v2 primaryAccountAltDSID];

  v4 = [MEMORY[0x277CFD480] sharedInstance];
  v5 = [v4 primaryAccountUsername];

  v6 = objc_alloc_init(MEMORY[0x277CF0170]);
  [v6 setAltDSID:v3];
  [v6 setUsername:v5];

  return v6;
}

void __55__CDPAuthenticationHelper__authWithContext_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24510B000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch authentication results due to %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end