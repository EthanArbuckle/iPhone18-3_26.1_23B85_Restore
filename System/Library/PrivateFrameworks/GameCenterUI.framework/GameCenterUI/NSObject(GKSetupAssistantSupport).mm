@interface NSObject(GKSetupAssistantSupport)
- (id)_gkAuthenticatedPlayerID;
- (void)_gkSetupAccountWithParamaters:()GKSetupAssistantSupport completionHandler:;
@end

@implementation NSObject(GKSetupAssistantSupport)

- (id)_gkAuthenticatedPlayerID
{
  localPlayer = [MEMORY[0x277D0C138] localPlayer];
  internal = [localPlayer internal];
  playerID = [internal playerID];

  return playerID;
}

- (void)_gkSetupAccountWithParamaters:()GKSetupAssistantSupport completionHandler:
{
  v5 = MEMORY[0x277D0C010];
  v6 = a4;
  v7 = a3;
  proxyForLocalPlayer = [v5 proxyForLocalPlayer];
  accountServicePrivate = [proxyForLocalPlayer accountServicePrivate];
  [accountServicePrivate setupAccountForParameters:v7 handler:v6];
}

@end