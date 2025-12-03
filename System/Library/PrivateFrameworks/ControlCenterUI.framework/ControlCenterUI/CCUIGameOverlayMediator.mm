@interface CCUIGameOverlayMediator
- (void)launchOverlayForGameBundleIdentifier:(id)identifier;
@end

@implementation CCUIGameOverlayMediator

- (void)launchOverlayForGameBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v4 = getGKDaemonProxyClass_softClass;
  v19 = getGKDaemonProxyClass_softClass;
  if (!getGKDaemonProxyClass_softClass)
  {
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __getGKDaemonProxyClass_block_invoke;
    v14 = &unk_2783822F8;
    v15 = &v16;
    __getGKDaemonProxyClass_block_invoke(&v11);
    v4 = v17[3];
  }

  v5 = v4;
  _Block_object_dispose(&v16, 8);
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v6 = getGKLocalPlayerClass_softClass;
  v19 = getGKLocalPlayerClass_softClass;
  if (!getGKLocalPlayerClass_softClass)
  {
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __getGKLocalPlayerClass_block_invoke;
    v14 = &unk_2783822F8;
    v15 = &v16;
    __getGKLocalPlayerClass_block_invoke(&v11);
    v6 = v17[3];
  }

  v7 = v6;
  _Block_object_dispose(&v16, 8);
  local = [v6 local];
  v9 = [v4 proxyForPlayer:local];

  utilityService = [v9 utilityService];
  [utilityService launchOverlayForGameBundleId:identifierCopy];
}

@end