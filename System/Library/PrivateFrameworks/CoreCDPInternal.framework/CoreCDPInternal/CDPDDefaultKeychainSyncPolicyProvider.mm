@interface CDPDDefaultKeychainSyncPolicyProvider
- (BOOL)keychainSyncAllowedByMDM;
- (BOOL)keychainSyncAllowedByServer;
- (BOOL)userHasExplicitlyDisabledSync;
- (CDPDDefaultKeychainSyncPolicyProvider)initWithContext:(id)a3;
@end

@implementation CDPDDefaultKeychainSyncPolicyProvider

- (CDPDDefaultKeychainSyncPolicyProvider)initWithContext:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CDPDDefaultKeychainSyncPolicyProvider;
  v6 = [(CDPDDefaultKeychainSyncPolicyProvider *)&v11 init];
  if (v6)
  {
    v7 = [[CDPDAccount alloc] initWithContext:v5];
    account = v6->_account;
    v6->_account = v7;

    objc_storeStrong(&v6->_context, a3);
    v9 = v6;
  }

  return v6;
}

- (BOOL)keychainSyncAllowedByMDM
{
  v2 = [(CDPDDefaultKeychainSyncPolicyProvider *)self context];
  v3 = [v2 keychainSyncAllowedByMDM];

  return v3;
}

- (BOOL)keychainSyncAllowedByServer
{
  v2 = [(CDPDDefaultKeychainSyncPolicyProvider *)self context];
  v3 = [v2 keychainSyncAllowedByServer];

  return v3;
}

- (BOOL)userHasExplicitlyDisabledSync
{
  v2 = [(CDPDDefaultKeychainSyncPolicyProvider *)self account];
  v3 = [v2 hasDisabledKeychainExplicitly];

  return v3;
}

@end