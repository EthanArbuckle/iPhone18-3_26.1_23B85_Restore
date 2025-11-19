@interface MRUActiveGroupSessionRoute
- (BOOL)isB520Route;
- (BOOL)isHomePodRoute;
- (MRUActiveGroupSessionRoute)initWithActiveSession:(id)a3;
- (id)routeName;
- (int64_t)routeSubtype;
@end

@implementation MRUActiveGroupSessionRoute

- (MRUActiveGroupSessionRoute)initWithActiveSession:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MRUActiveGroupSessionRoute;
  v6 = [(MRUActiveGroupSessionRoute *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_groupSessionInfo, a3);
  }

  return v7;
}

- (id)routeName
{
  v3 = [(MRGroupSessionInfo *)self->_groupSessionInfo hostInfo];
  v4 = [v3 displayName];
  v5 = [(MRGroupSessionInfo *)self->_groupSessionInfo hostInfo];
  [v5 routeType];
  v6 = MRGroupSessionRouteMakeName();

  return v6;
}

- (int64_t)routeSubtype
{
  v2 = [(MRGroupSessionInfo *)self->_groupSessionInfo hostInfo];
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
  v2 = [(MRGroupSessionInfo *)self->_groupSessionInfo hostInfo];
  v3 = [v2 routeType];

  return (v3 & 0xFE) == 8;
}

- (BOOL)isB520Route
{
  v2 = [(MRGroupSessionInfo *)self->_groupSessionInfo hostInfo];
  v3 = [v2 routeType] == 9;

  return v3;
}

@end