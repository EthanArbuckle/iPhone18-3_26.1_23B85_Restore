@interface IDSNWBroadcaster
- (id)broadcastProxyForTargets:(id)targets;
@end

@implementation IDSNWBroadcaster

- (id)broadcastProxyForTargets:(id)targets
{
  targetsCopy = targets;
  if ([targetsCopy count])
  {
    v4 = [[IDSNWBroadcastProxy alloc] initWithTargets:targetsCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end