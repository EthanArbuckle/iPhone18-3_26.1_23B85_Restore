@interface DBDashboardWorkspaceStateSiriChangeItem
- (DBDashboardWorkspaceStateSiriChangeItem)init;
- (id)_newEntityFromChangeItemWithPolicyProvider:(id)provider;
@end

@implementation DBDashboardWorkspaceStateSiriChangeItem

- (DBDashboardWorkspaceStateSiriChangeItem)init
{
  v3.receiver = self;
  v3.super_class = DBDashboardWorkspaceStateSiriChangeItem;
  return [(DBDashboardWorkspaceStateChangeItem *)&v3 _init];
}

- (id)_newEntityFromChangeItemWithPolicyProvider:(id)provider
{
  v4 = +[DBDashboardSiriEntity entity];
  [v4 setFloating:{-[DBDashboardWorkspaceStateSiriChangeItem isFloating](self, "isFloating")}];
  return v4;
}

@end