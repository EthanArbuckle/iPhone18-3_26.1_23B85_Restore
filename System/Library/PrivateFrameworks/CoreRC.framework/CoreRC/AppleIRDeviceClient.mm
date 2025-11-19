@interface AppleIRDeviceClient
- (BOOL)pairAppleRemote:(id *)a3;
- (BOOL)unpairAppleRemote:(id *)a3;
@end

@implementation AppleIRDeviceClient

- (BOOL)pairAppleRemote:(id *)a3
{
  v5 = [(CoreRCDevice *)self bus];

  return [v5 setPairState:1 forAppleRemote:self error:a3];
}

- (BOOL)unpairAppleRemote:(id *)a3
{
  v5 = [(CoreRCDevice *)self bus];

  return [v5 setPairState:0 forAppleRemote:self error:a3];
}

@end