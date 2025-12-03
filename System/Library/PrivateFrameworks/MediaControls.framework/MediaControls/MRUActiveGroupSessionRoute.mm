@interface MRUActiveGroupSessionRoute
- (BOOL)isB520Route;
- (BOOL)isHomePodRoute;
- (MRUActiveGroupSessionRoute)initWithActiveSession:(id)session;
- (id)routeName;
- (int64_t)routeSubtype;
@end

@implementation MRUActiveGroupSessionRoute

- (MRUActiveGroupSessionRoute)initWithActiveSession:(id)session
{
  sessionCopy = session;
  v9.receiver = self;
  v9.super_class = MRUActiveGroupSessionRoute;
  v6 = [(MRUActiveGroupSessionRoute *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_groupSessionInfo, session);
  }

  return v7;
}

- (id)routeName
{
  hostInfo = [(MRGroupSessionInfo *)self->_groupSessionInfo hostInfo];
  displayName = [hostInfo displayName];
  hostInfo2 = [(MRGroupSessionInfo *)self->_groupSessionInfo hostInfo];
  [hostInfo2 routeType];
  v6 = MRGroupSessionRouteMakeName();

  return v6;
}

- (int64_t)routeSubtype
{
  hostInfo = [(MRGroupSessionInfo *)self->_groupSessionInfo hostInfo];
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
  hostInfo = [(MRGroupSessionInfo *)self->_groupSessionInfo hostInfo];
  routeType = [hostInfo routeType];

  return (routeType & 0xFE) == 8;
}

- (BOOL)isB520Route
{
  hostInfo = [(MRGroupSessionInfo *)self->_groupSessionInfo hostInfo];
  v3 = [hostInfo routeType] == 9;

  return v3;
}

@end