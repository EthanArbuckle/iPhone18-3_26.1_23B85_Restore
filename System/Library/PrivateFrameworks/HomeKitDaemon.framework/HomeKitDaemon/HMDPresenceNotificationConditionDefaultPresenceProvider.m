@interface HMDPresenceNotificationConditionDefaultPresenceProvider
- (id)presenceForHome:(id)a3;
@end

@implementation HMDPresenceNotificationConditionDefaultPresenceProvider

- (id)presenceForHome:(id)a3
{
  v3 = [a3 presenceMonitor];
  v4 = [v3 currentHomePresence];
  v5 = [v4 serializedIdentifierDictionary];

  v6 = [[HMDHomePresenceRemote alloc] initWithPresenceByPairingIdentity:v5];

  return v6;
}

@end