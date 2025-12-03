@interface DBDashboardApplicationSceneEntity
+ (id)applicationSceneEntityForApplication:(id)application;
- (id)_initWithApplication:(id)application;
- (void)_buildDescriptionWithBuilder:(id)builder;
@end

@implementation DBDashboardApplicationSceneEntity

- (id)_initWithApplication:(id)application
{
  applicationCopy = application;
  bundleIdentifier = [applicationCopy bundleIdentifier];
  v9.receiver = self;
  v9.super_class = DBDashboardApplicationSceneEntity;
  v7 = [(DBDashboardEntity *)&v9 _initWithIdentifier:bundleIdentifier];

  if (v7)
  {
    objc_storeStrong(v7 + 2, application);
  }

  return v7;
}

+ (id)applicationSceneEntityForApplication:(id)application
{
  applicationCopy = application;
  v4 = [[DBDashboardApplicationSceneEntity alloc] _initWithApplication:applicationCopy];

  return v4;
}

- (void)_buildDescriptionWithBuilder:(id)builder
{
  builderCopy = builder;
  v7.receiver = self;
  v7.super_class = DBDashboardApplicationSceneEntity;
  [(DBDashboardEntity *)&v7 _buildDescriptionWithBuilder:builderCopy];
  bundleIdentifier = [(DBApplication *)self->_application bundleIdentifier];
  v6 = [builderCopy appendObject:bundleIdentifier withName:@"bundleID"];
}

@end