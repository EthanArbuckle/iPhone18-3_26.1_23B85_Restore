@interface MEExtensionHostContext
+ (id)extensionHostRequestScheduler;
- (MEMailComposeExtensionHostDelegate)composeExtensionHostDelegate;
- (void)regenerateEmailAddressTokenChangesForSession:(id)a3;
- (void)regenerateSecurityStatusInformationForSession:(id)a3;
@end

@implementation MEExtensionHostContext

+ (id)extensionHostRequestScheduler
{
  if (extensionHostRequestScheduler_onceToken != -1)
  {
    +[MEExtensionHostContext extensionHostRequestScheduler];
  }

  v3 = extensionHostRequestScheduler_scheduler;

  return v3;
}

void __55__MEExtensionHostContext_extensionHostRequestScheduler__block_invoke()
{
  v0 = [MEMORY[0x277D071B8] serialDispatchQueueSchedulerWithName:@"com.apple.email.extension.extensionHostRequestScheduler" qualityOfService:17];
  v1 = extensionHostRequestScheduler_scheduler;
  extensionHostRequestScheduler_scheduler = v0;
}

- (void)regenerateEmailAddressTokenChangesForSession:(id)a3
{
  v4 = a3;
  v5 = +[MEExtensionHostContext extensionHostRequestScheduler];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__MEExtensionHostContext_regenerateEmailAddressTokenChangesForSession___block_invoke;
  v7[3] = &unk_279859068;
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  [v5 performBlock:v7];
}

void __71__MEExtensionHostContext_regenerateEmailAddressTokenChangesForSession___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) composeExtensionHostDelegate];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) _UUID];
  [v4 regenerateEmailAddressTokenChangesForSession:v2 forContextUUID:v3];
}

- (void)regenerateSecurityStatusInformationForSession:(id)a3
{
  v4 = a3;
  v5 = +[MEExtensionHostContext extensionHostRequestScheduler];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__MEExtensionHostContext_regenerateSecurityStatusInformationForSession___block_invoke;
  v7[3] = &unk_279859068;
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  [v5 performBlock:v7];
}

void __72__MEExtensionHostContext_regenerateSecurityStatusInformationForSession___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) composeExtensionHostDelegate];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) _UUID];
  [v4 regenerateSecurityStatusInformationForSession:v2 forContextUUID:v3];
}

- (MEMailComposeExtensionHostDelegate)composeExtensionHostDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_composeExtensionHostDelegate);

  return WeakRetained;
}

@end