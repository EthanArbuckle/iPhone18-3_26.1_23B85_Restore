@interface IMCloudSyncNotifier
- (void)notifyClientsOfProgress:(id)a3;
- (void)notifyClientsOfState:(id)a3;
@end

@implementation IMCloudSyncNotifier

- (void)notifyClientsOfState:(id)a3
{
  v3 = a3;
  v5 = +[IMDBroadcastController sharedProvider];
  v4 = [v5 broadcasterForCloudSyncListeners];
  [v4 updateCloudKitStateWithDictionary:v3];
}

- (void)notifyClientsOfProgress:(id)a3
{
  v3 = a3;
  v5 = +[IMDBroadcastController sharedProvider];
  v4 = [v5 broadcasterForCloudSyncListeners];
  [v4 updateCloudKitProgressWithDictionary:v3];
}

@end