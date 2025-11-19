@interface DMTSharingBackedRemoteSetupBroadcastingProvider
- (DMTRemoteSetupBroadcasting)broadcaster;
@end

@implementation DMTSharingBackedRemoteSetupBroadcastingProvider

- (DMTRemoteSetupBroadcasting)broadcaster
{
  v2 = [[DMTSharingBroadcastPrimitives alloc] initWithLoggingIdentifier:@"com.apple.DeviceManagementTools"];
  v3 = [[DMTSharingBackedRemoteSetupBroadcaster alloc] initWithPrimitives:v2];

  return v3;
}

@end