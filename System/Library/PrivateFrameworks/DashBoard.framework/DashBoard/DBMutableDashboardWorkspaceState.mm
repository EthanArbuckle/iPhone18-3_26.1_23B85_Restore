@interface DBMutableDashboardWorkspaceState
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation DBMutableDashboardWorkspaceState

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DBDashboardWorkspaceState alloc];

  return [(DBDashboardWorkspaceState *)v4 _initWithState:self];
}

@end