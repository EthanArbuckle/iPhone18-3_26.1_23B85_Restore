@interface DBDashboardWorkspaceStateOEMPunchthroughChangeItem
- (DBDashboardWorkspaceStateOEMPunchthroughChangeItem)init;
- (id)_newEntityFromChangeItemWithPolicyProvider:(id)a3;
@end

@implementation DBDashboardWorkspaceStateOEMPunchthroughChangeItem

- (DBDashboardWorkspaceStateOEMPunchthroughChangeItem)init
{
  v3.receiver = self;
  v3.super_class = DBDashboardWorkspaceStateOEMPunchthroughChangeItem;
  return [(DBDashboardWorkspaceStateChangeItem *)&v3 _init];
}

- (id)_newEntityFromChangeItemWithPolicyProvider:(id)a3
{
  v3 = [(DBDashboardWorkspaceStateOEMPunchthroughChangeItem *)self oemPunchthroughIdentifier];
  v4 = [DBDashboardOEMPunchthroughEntity oemPunchthroughEntityForIdentifier:v3];

  return v4;
}

@end