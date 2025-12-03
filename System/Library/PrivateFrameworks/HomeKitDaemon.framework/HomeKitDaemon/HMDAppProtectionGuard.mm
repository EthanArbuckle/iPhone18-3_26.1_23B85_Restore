@interface HMDAppProtectionGuard
- (void)initiateAuthenticationForApplicationWithBundleIdentifier:(id)identifier onBehalfOfProcessWithAuditToken:(id *)token completion:(id)completion;
@end

@implementation HMDAppProtectionGuard

- (void)initiateAuthenticationForApplicationWithBundleIdentifier:(id)identifier onBehalfOfProcessWithAuditToken:(id *)token completion:(id)completion
{
  v7 = MEMORY[0x277CEBE80];
  completionCopy = completion;
  v9 = [v7 applicationWithBundleIdentifier:identifier];
  mEMORY[0x277CEBE98] = [MEMORY[0x277CEBE98] sharedGuard];
  v11 = *&token->var0[4];
  v12[0] = *token->var0;
  v12[1] = v11;
  [mEMORY[0x277CEBE98] initiateAuthenticationWithShieldingForSubject:v9 onBehalfOfProcessWithAuditToken:v12 accessGrantReason:1 completion:completionCopy];
}

@end