@interface DBDashboardWorkspaceStateHomescreenChangeItem
- (DBDashboardWorkspaceStateHomescreenChangeItem)init;
@end

@implementation DBDashboardWorkspaceStateHomescreenChangeItem

- (DBDashboardWorkspaceStateHomescreenChangeItem)init
{
  v3.receiver = self;
  v3.super_class = DBDashboardWorkspaceStateHomescreenChangeItem;
  return [(DBDashboardWorkspaceStateChangeItem *)&v3 _init];
}

@end