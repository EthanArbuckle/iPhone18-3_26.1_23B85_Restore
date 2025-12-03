@interface DBDashboardWorkspaceStateChangeItem
- (NSString)description;
- (id)_init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_buildDescriptionWithBuilder:(id)builder;
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
  build = [v3 build];

  return build;
}

- (void)_buildDescriptionWithBuilder:(id)builder
{
  builderCopy = builder;
  if (self->_changeType)
  {
    v5 = @"Remove";
  }

  else
  {
    v5 = @"Add";
  }

  v11 = builderCopy;
  v6 = [builderCopy appendObject:v5 withName:@"changeType"];
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

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_alloc(objc_opt_class()) _init];
  *(result + 1) = self->_changeType;
  *(result + 2) = self->_presentationPreference;
  return result;
}

@end