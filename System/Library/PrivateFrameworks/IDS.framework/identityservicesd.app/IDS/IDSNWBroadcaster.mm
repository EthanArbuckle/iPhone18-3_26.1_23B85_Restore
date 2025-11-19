@interface IDSNWBroadcaster
- (id)broadcastProxyForTargets:(id)a3;
@end

@implementation IDSNWBroadcaster

- (id)broadcastProxyForTargets:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [[IDSNWBroadcastProxy alloc] initWithTargets:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end