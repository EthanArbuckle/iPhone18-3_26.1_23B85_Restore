@interface IMCloudSyncNotifier
- (void)notifyClientsOfProgress:(id)progress;
- (void)notifyClientsOfState:(id)state;
@end

@implementation IMCloudSyncNotifier

- (void)notifyClientsOfState:(id)state
{
  stateCopy = state;
  v5 = +[IMDBroadcastController sharedProvider];
  broadcasterForCloudSyncListeners = [v5 broadcasterForCloudSyncListeners];
  [broadcasterForCloudSyncListeners updateCloudKitStateWithDictionary:stateCopy];
}

- (void)notifyClientsOfProgress:(id)progress
{
  progressCopy = progress;
  v5 = +[IMDBroadcastController sharedProvider];
  broadcasterForCloudSyncListeners = [v5 broadcasterForCloudSyncListeners];
  [broadcasterForCloudSyncListeners updateCloudKitProgressWithDictionary:progressCopy];
}

@end