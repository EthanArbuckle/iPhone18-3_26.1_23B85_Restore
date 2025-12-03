@interface DBDashboardWorkspaceState
- (NSString)activeBundleIdentifier;
- (NSString)description;
- (id)_bundleIdentifierFromEntity:(id)entity;
- (id)_initWithState:(id)state;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation DBDashboardWorkspaceState

- (NSString)description
{
  v3 = [objc_alloc(MEMORY[0x277CF0C00]) initWithObject:self];
  v4 = [v3 appendObject:self->_baseEntity withName:@"baseEntity" skipIfNil:1];
  v5 = [v3 appendObject:self->_stackedEntity withName:@"stackedEntity" skipIfNil:1];
  build = [v3 build];

  return build;
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

- (id)_initWithState:(id)state
{
  stateCopy = state;
  v10.receiver = self;
  v10.super_class = DBDashboardWorkspaceState;
  v5 = [(DBDashboardWorkspaceState *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_baseEntity, stateCopy[1]);
    v7 = [stateCopy[2] copy];
    stackedEntity = v6->_stackedEntity;
    v6->_stackedEntity = v7;
  }

  return v6;
}

- (id)_bundleIdentifierFromEntity:(id)entity
{
  entityCopy = entity;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    applicationToProxy = [entityCopy applicationToProxy];
LABEL_5:
    v5 = applicationToProxy;
    bundleIdentifier = [applicationToProxy bundleIdentifier];

    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    applicationToProxy = [entityCopy application];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bundleIdentifier = [entityCopy identifier];
  }

  else
  {
    bundleIdentifier = 0;
  }

LABEL_6:

  return bundleIdentifier;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DBMutableDashboardWorkspaceState alloc];

  return [(DBDashboardWorkspaceState *)v4 _initWithState:self];
}

@end