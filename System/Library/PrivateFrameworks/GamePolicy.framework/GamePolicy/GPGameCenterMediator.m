@interface GPGameCenterMediator
+ (void)launchApp;
+ (void)launchOverlayForGameBundleId:(id)a3;
@end

@implementation GPGameCenterMediator

+ (void)launchOverlayForGameBundleId:(id)a3
{
  v3 = a3;
  GKDaemonProxyClass = getGKDaemonProxyClass();
  v5 = [getGKLocalPlayerClass() local];
  v7 = [GKDaemonProxyClass proxyForPlayer:v5];

  v6 = [v7 utilityService];
  [v6 launchOverlayForGameBundleId:v3];
}

+ (void)launchApp
{
  GKDaemonProxyClass = getGKDaemonProxyClass();
  v3 = [getGKLocalPlayerClass() local];
  v5 = [GKDaemonProxyClass proxyForPlayer:v3];

  v4 = [v5 utilityService];
  [v4 launchApp];
}

@end