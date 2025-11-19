@interface DBDashboardEntity
- (DBDashboardWorkspaceStateChangeItem)_sr_associatedChangeItem;
- (id)_initWithIdentifier:(id)a3;
- (id)description;
@end

@implementation DBDashboardEntity

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277CF0C00]) initWithObject:self];
  [(DBDashboardEntity *)self _buildDescriptionWithBuilder:v3];
  v4 = [v3 build];

  return v4;
}

- (DBDashboardWorkspaceStateChangeItem)_sr_associatedChangeItem
{
  v2 = objc_getAssociatedObject(self, "sr_aci");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)_initWithIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DBDashboardEntity;
  v6 = [(DBDashboardEntity *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
  }

  return v7;
}

@end