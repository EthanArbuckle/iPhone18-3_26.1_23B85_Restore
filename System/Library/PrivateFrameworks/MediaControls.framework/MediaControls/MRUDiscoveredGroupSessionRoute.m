@interface MRUDiscoveredGroupSessionRoute
- (BOOL)isB520Route;
- (BOOL)isHomePodRoute;
- (MRUDiscoveredGroupSessionRoute)initWithDiscoveredGroupSession:(id)a3;
- (id)routeName;
- (int64_t)routeSubtype;
@end

@implementation MRUDiscoveredGroupSessionRoute

- (MRUDiscoveredGroupSessionRoute)initWithDiscoveredGroupSession:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MRUDiscoveredGroupSessionRoute;
  v6 = [(MRUDiscoveredGroupSessionRoute *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_discoveredGroupSession, a3);
  }

  return v7;
}

- (id)routeName
{
  v3 = [(MRDiscoveredGroupSession *)self->_discoveredGroupSession hostInfo];
  v4 = [v3 displayName];
  v5 = [(MRDiscoveredGroupSession *)self->_discoveredGroupSession hostInfo];
  [v5 routeType];
  v6 = MRGroupSessionRouteMakeName();

  return v6;
}

- (int64_t)routeSubtype
{
  v2 = [(MRDiscoveredGroupSession *)self->_discoveredGroupSession hostInfo];
  v3 = [v2 routeType] - 1;
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
  v2 = [(MRDiscoveredGroupSession *)self->_discoveredGroupSession hostInfo];
  v3 = [v2 routeType];

  return (v3 & 0xFE) == 8;
}

- (BOOL)isB520Route
{
  v2 = [(MRDiscoveredGroupSession *)self->_discoveredGroupSession hostInfo];
  v3 = [v2 routeType] == 9;

  return v3;
}

@end