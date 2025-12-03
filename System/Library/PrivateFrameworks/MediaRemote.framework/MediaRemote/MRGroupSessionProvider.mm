@interface MRGroupSessionProvider
+ (id)remoteControlGroupSessionWithIdentifier:(id)identifier delegate:(id)delegate;
@end

@implementation MRGroupSessionProvider

+ (id)remoteControlGroupSessionWithIdentifier:(id)identifier delegate:(id)delegate
{
  delegateCopy = delegate;
  identifierCopy = identifier;
  v7 = [[MRRemoteControlGroupSession alloc] initWithIdentifier:identifierCopy delegate:delegateCopy];

  return v7;
}

@end