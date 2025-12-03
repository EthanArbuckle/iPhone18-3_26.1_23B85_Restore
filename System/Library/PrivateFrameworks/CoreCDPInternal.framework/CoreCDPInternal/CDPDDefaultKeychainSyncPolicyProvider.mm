@interface CDPDDefaultKeychainSyncPolicyProvider
- (BOOL)keychainSyncAllowedByMDM;
- (BOOL)keychainSyncAllowedByServer;
- (BOOL)userHasExplicitlyDisabledSync;
- (CDPDDefaultKeychainSyncPolicyProvider)initWithContext:(id)context;
@end

@implementation CDPDDefaultKeychainSyncPolicyProvider

- (CDPDDefaultKeychainSyncPolicyProvider)initWithContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = CDPDDefaultKeychainSyncPolicyProvider;
  v6 = [(CDPDDefaultKeychainSyncPolicyProvider *)&v11 init];
  if (v6)
  {
    v7 = [[CDPDAccount alloc] initWithContext:contextCopy];
    account = v6->_account;
    v6->_account = v7;

    objc_storeStrong(&v6->_context, context);
    v9 = v6;
  }

  return v6;
}

- (BOOL)keychainSyncAllowedByMDM
{
  context = [(CDPDDefaultKeychainSyncPolicyProvider *)self context];
  keychainSyncAllowedByMDM = [context keychainSyncAllowedByMDM];

  return keychainSyncAllowedByMDM;
}

- (BOOL)keychainSyncAllowedByServer
{
  context = [(CDPDDefaultKeychainSyncPolicyProvider *)self context];
  keychainSyncAllowedByServer = [context keychainSyncAllowedByServer];

  return keychainSyncAllowedByServer;
}

- (BOOL)userHasExplicitlyDisabledSync
{
  account = [(CDPDDefaultKeychainSyncPolicyProvider *)self account];
  hasDisabledKeychainExplicitly = [account hasDisabledKeychainExplicitly];

  return hasDisabledKeychainExplicitly;
}

@end