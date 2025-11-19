@interface DBDashboardProxiedApplicationSceneEntity
+ (id)application:(id)a3 proxiedByEntity:(id)a4;
- (id)_initWithApplication:(id)a3 proxiedByEntity:(id)a4;
- (void)_buildDescriptionWithBuilder:(id)a3;
@end

@implementation DBDashboardProxiedApplicationSceneEntity

- (id)_initWithApplication:(id)a3 proxiedByEntity:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CCACA8];
  v10 = [v8 identifier];
  v11 = [v7 bundleIdentifier];
  v12 = [v9 stringWithFormat:@"%@.%@", v10, v11];
  v15.receiver = self;
  v15.super_class = DBDashboardProxiedApplicationSceneEntity;
  v13 = [(DBDashboardEntity *)&v15 _initWithIdentifier:v12];

  if (v13)
  {
    objc_storeStrong(v13 + 2, a3);
    objc_storeStrong(v13 + 3, a4);
  }

  return v13;
}

- (void)_buildDescriptionWithBuilder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = DBDashboardProxiedApplicationSceneEntity;
  [(DBDashboardEntity *)&v10 _buildDescriptionWithBuilder:v4];
  v5 = [(DBApplication *)self->_applicationToProxy bundleIdentifier];
  v6 = [v4 appendObject:v5 withName:@"applicationToProxy"];

  v7 = [(DBDashboardApplicationSceneEntity *)self->_proxyEntity application];
  v8 = [v7 bundleIdentifier];
  v9 = [v4 appendObject:v8 withName:@"proxyApp"];
}

+ (id)application:(id)a3 proxiedByEntity:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[DBDashboardProxiedApplicationSceneEntity alloc] _initWithApplication:v6 proxiedByEntity:v5];

  return v7;
}

@end