@interface NSObject(GKSetupAssistantSupport)
- (id)_gkAuthenticatedPlayerID;
- (void)_gkSetupAccountWithParamaters:()GKSetupAssistantSupport completionHandler:;
@end

@implementation NSObject(GKSetupAssistantSupport)

- (id)_gkAuthenticatedPlayerID
{
  v0 = [MEMORY[0x277D0C138] localPlayer];
  v1 = [v0 internal];
  v2 = [v1 playerID];

  return v2;
}

- (void)_gkSetupAccountWithParamaters:()GKSetupAssistantSupport completionHandler:
{
  v5 = MEMORY[0x277D0C010];
  v6 = a4;
  v7 = a3;
  v9 = [v5 proxyForLocalPlayer];
  v8 = [v9 accountServicePrivate];
  [v8 setupAccountForParameters:v7 handler:v6];
}

@end