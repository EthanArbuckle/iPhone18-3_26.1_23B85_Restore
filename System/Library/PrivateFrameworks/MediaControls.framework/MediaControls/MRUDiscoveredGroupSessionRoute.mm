@interface MRUDiscoveredGroupSessionRoute
- (BOOL)isB520Route;
- (BOOL)isHomePodRoute;
- (MRUDiscoveredGroupSessionRoute)initWithDiscoveredGroupSession:(id)session;
- (id)routeName;
- (int64_t)routeSubtype;
@end

@implementation MRUDiscoveredGroupSessionRoute

- (MRUDiscoveredGroupSessionRoute)initWithDiscoveredGroupSession:(id)session
{
  sessionCopy = session;
  v9.receiver = self;
  v9.super_class = MRUDiscoveredGroupSessionRoute;
  v6 = [(MRUDiscoveredGroupSessionRoute *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_discoveredGroupSession, session);
  }

  return v7;
}

- (id)routeName
{
  hostInfo = [(MRDiscoveredGroupSession *)self->_discoveredGroupSession hostInfo];
  displayName = [hostInfo displayName];
  hostInfo2 = [(MRDiscoveredGroupSession *)self->_discoveredGroupSession hostInfo];
  [hostInfo2 routeType];
  v6 = MRGroupSessionRouteMakeName();

  return v6;
}

- (int64_t)routeSubtype
{
  hostInfo = [(MRDiscoveredGroupSession *)self->_discoveredGroupSession hostInfo];
  v3 = [hostInfo routeType] - 1;
  if (v3 > 0xA)
  {
    v4 = 1;
  }

  else
  {
    v4 = qword_1A2307EB0[v3];
  }

  return v4;
}

- (BOOL)isHomePodRoute
{
  hostInfo = [(MRDiscoveredGroupSession *)self->_discoveredGroupSession hostInfo];
  routeType = [hostInfo routeType];

  return (routeType & 0xFE) == 8;
}

- (BOOL)isB520Route
{
  hostInfo = [(MRDiscoveredGroupSession *)self->_discoveredGroupSession hostInfo];
  v3 = [hostInfo routeType] == 9;

  return v3;
}

@end