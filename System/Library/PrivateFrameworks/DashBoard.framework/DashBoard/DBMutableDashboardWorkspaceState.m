@interface DBMutableDashboardWorkspaceState
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation DBMutableDashboardWorkspaceState

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [DBDashboardWorkspaceState alloc];

  return [(DBDashboardWorkspaceState *)v4 _initWithState:self];
}

@end