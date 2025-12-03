@interface MRGroupSessionInfo
- (id)initWithGroupSession:(id)session;
@end

@implementation MRGroupSessionInfo

- (id)initWithGroupSession:(id)session
{
  sessionCopy = session;
  v5 = sessionCopy;
  if (sessionCopy)
  {
    leader = [sessionCopy leader];
    v7 = leader;
    if (leader)
    {
      identity = [leader identity];
      displayName = [identity displayName];
    }

    else
    {
      identity = [v5 joinToken];
      hostInfo = [identity hostInfo];
      displayName = [hostInfo displayName];
    }

    v12 = [MRGroupSessionHostInfo alloc];
    joinToken = [v5 joinToken];
    hostInfo2 = [joinToken hostInfo];
    v15 = [v12 initWithRouteType:objc_msgSend(hostInfo2 displayName:{"routeType"), displayName}];

    v16 = [MRGroupSessionInfo alloc];
    identifier = [v5 identifier];
    isHosted = [v5 isHosted];
    joinToken2 = [v5 joinToken];
    equivalentMediaIdentifier = [joinToken2 equivalentMediaIdentifier];
    v10 = [v16 initWithIdentifier:identifier hostInfo:v15 isHosted:isHosted equivalentMediaIdentifier:equivalentMediaIdentifier isPlaceholder:0];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end