@interface DBDashboardWorkspaceStateOEMPunchthroughChangeItem
- (DBDashboardWorkspaceStateOEMPunchthroughChangeItem)init;
- (id)_newEntityFromChangeItemWithPolicyProvider:(id)provider;
@end

@implementation DBDashboardWorkspaceStateOEMPunchthroughChangeItem

- (DBDashboardWorkspaceStateOEMPunchthroughChangeItem)init
{
  v3.receiver = self;
  v3.super_class = DBDashboardWorkspaceStateOEMPunchthroughChangeItem;
  return [(DBDashboardWorkspaceStateChangeItem *)&v3 _init];
}

- (id)_newEntityFromChangeItemWithPolicyProvider:(id)provider
{
  oemPunchthroughIdentifier = [(DBDashboardWorkspaceStateOEMPunchthroughChangeItem *)self oemPunchthroughIdentifier];
  v4 = [DBDashboardOEMPunchthroughEntity oemPunchthroughEntityForIdentifier:oemPunchthroughIdentifier];

  return v4;
}

@end