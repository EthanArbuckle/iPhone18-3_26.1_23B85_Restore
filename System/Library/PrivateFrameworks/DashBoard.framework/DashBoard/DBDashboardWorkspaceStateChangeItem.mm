@interface DBDashboardWorkspaceStateChangeItem
- (NSString)description;
- (id)_init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_buildDescriptionWithBuilder:(id)a3;
@end

@implementation DBDashboardWorkspaceStateChangeItem

- (id)_init
{
  v3.receiver = self;
  v3.super_class = DBDashboardWorkspaceStateChangeItem;
  return [(DBDashboardWorkspaceStateChangeItem *)&v3 init];
}

- (NSString)description
{
  v3 = [objc_alloc(MEMORY[0x277CF0C00]) initWithObject:self];
  [(DBDashboardWorkspaceStateChangeItem *)self _buildDescriptionWithBuilder:v3];
  v4 = [v3 build];

  return v4;
}

- (void)_buildDescriptionWithBuilder:(id)a3
{
  v4 = a3;
  if (self->_changeType)
  {
    v5 = @"Remove";
  }

  else
  {
    v5 = @"Add";
  }

  v11 = v4;
  v6 = [v4 appendObject:v5 withName:@"changeType"];
  presentationPreference = self->_presentationPreference;
  if (presentationPreference)
  {
    v8 = @"Normal";
    if (presentationPreference != 1)
    {
      v8 = 0;
    }

    if (presentationPreference == 2)
    {
      v9 = @"Stacked";
    }

    else
    {
      v9 = v8;
    }

    v10 = [v11 appendObject:v9 withName:@"presentationPreference"];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_alloc(objc_opt_class()) _init];
  *(result + 1) = self->_changeType;
  *(result + 2) = self->_presentationPreference;
  return result;
}

@end