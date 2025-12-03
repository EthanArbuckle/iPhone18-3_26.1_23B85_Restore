@interface AppleIRDeviceClient
- (BOOL)pairAppleRemote:(id *)remote;
- (BOOL)unpairAppleRemote:(id *)remote;
@end

@implementation AppleIRDeviceClient

- (BOOL)pairAppleRemote:(id *)remote
{
  v5 = [(CoreRCDevice *)self bus];

  return [v5 setPairState:1 forAppleRemote:self error:remote];
}

- (BOOL)unpairAppleRemote:(id *)remote
{
  v5 = [(CoreRCDevice *)self bus];

  return [v5 setPairState:0 forAppleRemote:self error:remote];
}

@end