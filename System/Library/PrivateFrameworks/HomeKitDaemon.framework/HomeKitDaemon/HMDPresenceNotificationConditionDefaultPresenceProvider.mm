@interface HMDPresenceNotificationConditionDefaultPresenceProvider
- (id)presenceForHome:(id)home;
@end

@implementation HMDPresenceNotificationConditionDefaultPresenceProvider

- (id)presenceForHome:(id)home
{
  presenceMonitor = [home presenceMonitor];
  currentHomePresence = [presenceMonitor currentHomePresence];
  serializedIdentifierDictionary = [currentHomePresence serializedIdentifierDictionary];

  v6 = [[HMDHomePresenceRemote alloc] initWithPresenceByPairingIdentity:serializedIdentifierDictionary];

  return v6;
}

@end