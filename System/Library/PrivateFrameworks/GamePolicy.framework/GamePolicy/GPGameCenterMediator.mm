@interface GPGameCenterMediator
+ (void)launchApp;
+ (void)launchOverlayForGameBundleId:(id)id;
@end

@implementation GPGameCenterMediator

+ (void)launchOverlayForGameBundleId:(id)id
{
  idCopy = id;
  GKDaemonProxyClass = getGKDaemonProxyClass();
  local = [getGKLocalPlayerClass() local];
  v7 = [GKDaemonProxyClass proxyForPlayer:local];

  utilityService = [v7 utilityService];
  [utilityService launchOverlayForGameBundleId:idCopy];
}

+ (void)launchApp
{
  GKDaemonProxyClass = getGKDaemonProxyClass();
  local = [getGKLocalPlayerClass() local];
  v5 = [GKDaemonProxyClass proxyForPlayer:local];

  utilityService = [v5 utilityService];
  [utilityService launchApp];
}

@end