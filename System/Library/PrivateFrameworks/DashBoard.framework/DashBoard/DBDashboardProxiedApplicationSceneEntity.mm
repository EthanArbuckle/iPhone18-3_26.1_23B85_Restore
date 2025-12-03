@interface DBDashboardProxiedApplicationSceneEntity
+ (id)application:(id)application proxiedByEntity:(id)entity;
- (id)_initWithApplication:(id)application proxiedByEntity:(id)entity;
- (void)_buildDescriptionWithBuilder:(id)builder;
@end

@implementation DBDashboardProxiedApplicationSceneEntity

- (id)_initWithApplication:(id)application proxiedByEntity:(id)entity
{
  applicationCopy = application;
  entityCopy = entity;
  v9 = MEMORY[0x277CCACA8];
  identifier = [entityCopy identifier];
  bundleIdentifier = [applicationCopy bundleIdentifier];
  v12 = [v9 stringWithFormat:@"%@.%@", identifier, bundleIdentifier];
  v15.receiver = self;
  v15.super_class = DBDashboardProxiedApplicationSceneEntity;
  v13 = [(DBDashboardEntity *)&v15 _initWithIdentifier:v12];

  if (v13)
  {
    objc_storeStrong(v13 + 2, application);
    objc_storeStrong(v13 + 3, entity);
  }

  return v13;
}

- (void)_buildDescriptionWithBuilder:(id)builder
{
  builderCopy = builder;
  v10.receiver = self;
  v10.super_class = DBDashboardProxiedApplicationSceneEntity;
  [(DBDashboardEntity *)&v10 _buildDescriptionWithBuilder:builderCopy];
  bundleIdentifier = [(DBApplication *)self->_applicationToProxy bundleIdentifier];
  v6 = [builderCopy appendObject:bundleIdentifier withName:@"applicationToProxy"];

  application = [(DBDashboardApplicationSceneEntity *)self->_proxyEntity application];
  bundleIdentifier2 = [application bundleIdentifier];
  v9 = [builderCopy appendObject:bundleIdentifier2 withName:@"proxyApp"];
}

+ (id)application:(id)application proxiedByEntity:(id)entity
{
  entityCopy = entity;
  applicationCopy = application;
  v7 = [[DBDashboardProxiedApplicationSceneEntity alloc] _initWithApplication:applicationCopy proxiedByEntity:entityCopy];

  return v7;
}

@end