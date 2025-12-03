@interface CADDefaultAppProtectionGuard
+ (id)shared;
- (void)initiateAuthenticationForApplicationWithBundleIdentifier:(id)identifier onBehalfOfProcessWithAuditToken:(id *)token accessGrantedByEntitlement:(BOOL)entitlement completion:(id)completion;
@end

@implementation CADDefaultAppProtectionGuard

+ (id)shared
{
  if (shared_onceToken != -1)
  {
    +[CADDefaultAppProtectionGuard shared];
  }

  v3 = shared_guard;

  return v3;
}

uint64_t __38__CADDefaultAppProtectionGuard_shared__block_invoke()
{
  shared_guard = objc_alloc_init(CADDefaultAppProtectionGuard);

  return MEMORY[0x2821F96F8]();
}

- (void)initiateAuthenticationForApplicationWithBundleIdentifier:(id)identifier onBehalfOfProcessWithAuditToken:(id *)token accessGrantedByEntitlement:(BOOL)entitlement completion:(id)completion
{
  entitlementCopy = entitlement;
  identifierCopy = identifier;
  completionCopy = completion;
  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    v11 = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:identifierCopy];
    mEMORY[0x277CEBE98] = [MEMORY[0x277CEBE98] sharedGuard];
    if (entitlementCopy)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __159__CADDefaultAppProtectionGuard_initiateAuthenticationForApplicationWithBundleIdentifier_onBehalfOfProcessWithAuditToken_accessGrantedByEntitlement_completion___block_invoke;
    v16[3] = &unk_278519DC8;
    v17 = completionCopy;
    v14 = *&token->var0[4];
    v15[0] = *token->var0;
    v15[1] = v14;
    [mEMORY[0x277CEBE98] initiateAuthenticationWithShieldingForSubject:v11 onBehalfOfProcessWithAuditToken:v15 accessGrantReason:v13 completion:v16];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 1, 0);
  }
}

void __159__CADDefaultAppProtectionGuard_initiateAuthenticationForApplicationWithBundleIdentifier_onBehalfOfProcessWithAuditToken_accessGrantedByEntitlement_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = CADLogHandle;
  if (v5 || (a2 & 1) == 0)
  {
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v5;
      v7 = "CADDefaultAppProtectionGuard: initiateAuth error: %@";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 12;
      goto LABEL_7;
    }
  }

  else if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    v7 = "CADDefaultAppProtectionGuard: initiateAuth finished with success.";
    v8 = v6;
    v9 = OS_LOG_TYPE_DEFAULT;
    v10 = 2;
LABEL_7:
    _os_log_impl(&dword_22430B000, v8, v9, v7, &v12, v10);
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), a2);

  v11 = *MEMORY[0x277D85DE8];
}

@end