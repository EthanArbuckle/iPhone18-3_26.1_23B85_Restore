@interface CDPAuthenticationHelper
+ (id)_authContextForContext:(id)context;
+ (id)_contextForPrimaryAccount;
+ (id)_contextForPrimaryAccountSilentAuth;
+ (id)authController;
+ (void)_authWithContext:(id)context completion:(id)completion;
+ (void)silentAuthenticationForContext:(id)context withCompletion:(id)completion;
+ (void)silentAuthenticationForPrimaryAccountWithClientAppName:(id)name clientAppBundleId:(id)id withCompletion:(id)completion;
+ (void)silentAuthenticationForPrimaryAccountWithCompletion:(id)completion;
@end

@implementation CDPAuthenticationHelper

+ (void)silentAuthenticationForPrimaryAccountWithCompletion:(id)completion
{
  completionCopy = completion;
  _contextForPrimaryAccountSilentAuth = [objc_opt_class() _contextForPrimaryAccountSilentAuth];
  [self _authWithContext:_contextForPrimaryAccountSilentAuth completion:completionCopy];
}

+ (void)silentAuthenticationForPrimaryAccountWithClientAppName:(id)name clientAppBundleId:(id)id withCompletion:(id)completion
{
  completionCopy = completion;
  idCopy = id;
  nameCopy = name;
  _contextForPrimaryAccountSilentAuth = [objc_opt_class() _contextForPrimaryAccountSilentAuth];
  [_contextForPrimaryAccountSilentAuth _setProxiedAppName:nameCopy];

  [_contextForPrimaryAccountSilentAuth _setProxiedAppBundleID:idCopy];
  [self _authWithContext:_contextForPrimaryAccountSilentAuth completion:completionCopy];
}

+ (void)silentAuthenticationForContext:(id)context withCompletion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  v8 = [objc_opt_class() _authContextForContext:contextCopy];

  [v8 setAuthenticationType:1];
  [v8 setIsUsernameEditable:0];
  [self _authWithContext:v8 completion:completionCopy];
}

+ (id)authController
{
  v2 = objc_alloc_init(MEMORY[0x277CF0178]);

  return v2;
}

+ (void)_authWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  v7 = objc_alloc_init(_TtC15CoreCDPInternal28CDPExponentialRetryScheduler);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__CDPAuthenticationHelper__authWithContext_completion___block_invoke;
  v9[3] = &unk_278E24620;
  v10 = completionCopy;
  v8 = completionCopy;
  [(CDPExponentialRetryScheduler *)v7 retrySilentAuthWithAuthContext:contextCopy completionHandler:v9];
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
  _contextForPrimaryAccount = [self _contextForPrimaryAccount];
  [_contextForPrimaryAccount setAuthenticationType:1];
  [_contextForPrimaryAccount setIsUsernameEditable:0];

  return _contextForPrimaryAccount;
}

+ (id)_authContextForContext:(id)context
{
  v3 = MEMORY[0x277CF0170];
  contextCopy = context;
  v5 = objc_alloc_init(v3);
  dsid = [contextCopy dsid];
  stringValue = [dsid stringValue];
  [v5 setDSID:stringValue];

  altDSID = [contextCopy altDSID];
  [v5 setAltDSID:altDSID];

  appleID = [contextCopy appleID];
  [v5 setUsername:appleID];

  password = [contextCopy password];

  [v5 _setPassword:password];

  return v5;
}

+ (id)_contextForPrimaryAccount
{
  mEMORY[0x277CFD480] = [MEMORY[0x277CFD480] sharedInstance];
  primaryAccountAltDSID = [mEMORY[0x277CFD480] primaryAccountAltDSID];

  mEMORY[0x277CFD480]2 = [MEMORY[0x277CFD480] sharedInstance];
  primaryAccountUsername = [mEMORY[0x277CFD480]2 primaryAccountUsername];

  v6 = objc_alloc_init(MEMORY[0x277CF0170]);
  [v6 setAltDSID:primaryAccountAltDSID];
  [v6 setUsername:primaryAccountUsername];

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