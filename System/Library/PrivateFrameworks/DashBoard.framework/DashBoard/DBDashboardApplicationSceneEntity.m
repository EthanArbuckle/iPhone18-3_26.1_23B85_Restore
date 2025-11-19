@interface DBDashboardApplicationSceneEntity
+ (id)applicationSceneEntityForApplication:(id)a3;
- (id)_initWithApplication:(id)a3;
- (void)_buildDescriptionWithBuilder:(id)a3;
@end

@implementation DBDashboardApplicationSceneEntity

- (id)_initWithApplication:(id)a3
{
  v5 = a3;
  v6 = [v5 bundleIdentifier];
  v9.receiver = self;
  v9.super_class = DBDashboardApplicationSceneEntity;
  v7 = [(DBDashboardEntity *)&v9 _initWithIdentifier:v6];

  if (v7)
  {
    objc_storeStrong(v7 + 2, a3);
  }

  return v7;
}

+ (id)applicationSceneEntityForApplication:(id)a3
{
  v3 = a3;
  v4 = [[DBDashboardApplicationSceneEntity alloc] _initWithApplication:v3];

  return v4;
}

- (void)_buildDescriptionWithBuilder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = DBDashboardApplicationSceneEntity;
  [(DBDashboardEntity *)&v7 _buildDescriptionWithBuilder:v4];
  v5 = [(DBApplication *)self->_application bundleIdentifier];
  v6 = [v4 appendObject:v5 withName:@"bundleID"];
}

@end