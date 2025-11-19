@interface DBDashboardWorkspaceState
- (NSString)activeBundleIdentifier;
- (NSString)description;
- (id)_bundleIdentifierFromEntity:(id)a3;
- (id)_initWithState:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation DBDashboardWorkspaceState

- (NSString)description
{
  v3 = [objc_alloc(MEMORY[0x277CF0C00]) initWithObject:self];
  v4 = [v3 appendObject:self->_baseEntity withName:@"baseEntity" skipIfNil:1];
  v5 = [v3 appendObject:self->_stackedEntity withName:@"stackedEntity" skipIfNil:1];
  v6 = [v3 build];

  return v6;
}

- (NSString)activeBundleIdentifier
{
  v3 = [(DBDashboardWorkspaceState *)self _bundleIdentifierFromEntity:self->_stackedEntity];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(DBDashboardWorkspaceState *)self _bundleIdentifierFromEntity:self->_baseEntity];
  }

  v6 = v5;

  return v6;
}

- (id)_initWithState:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = DBDashboardWorkspaceState;
  v5 = [(DBDashboardWorkspaceState *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_baseEntity, v4[1]);
    v7 = [v4[2] copy];
    stackedEntity = v6->_stackedEntity;
    v6->_stackedEntity = v7;
  }

  return v6;
}

- (id)_bundleIdentifierFromEntity:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 applicationToProxy];
LABEL_5:
    v5 = v4;
    v6 = [v4 bundleIdentifier];

    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 application];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v3 identifier];
  }

  else
  {
    v6 = 0;
  }

LABEL_6:

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DBMutableDashboardWorkspaceState alloc];

  return [(DBDashboardWorkspaceState *)v4 _initWithState:self];
}

@end