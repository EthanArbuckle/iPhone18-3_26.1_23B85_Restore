@interface DBDashboardWorkspaceStateApplicationSceneChangeItem
- (BOOL)prefersAnimation;
- (DBDashboardWorkspaceStateApplicationSceneChangeItem)initWithApplication:(id)a3;
- (id)_newEntityFromChangeItemWithPolicyProvider:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_buildDescriptionWithBuilder:(id)a3;
@end

@implementation DBDashboardWorkspaceStateApplicationSceneChangeItem

- (BOOL)prefersAnimation
{
  v7.receiver = self;
  v7.super_class = DBDashboardWorkspaceStateApplicationSceneChangeItem;
  if (![(DBDashboardWorkspaceStateChangeItem *)&v7 prefersAnimation])
  {
    return 0;
  }

  v3 = [(DBDashboardWorkspaceStateApplicationSceneChangeItem *)self activationSettings];

  if (!v3)
  {
    return 1;
  }

  v4 = [(DBDashboardWorkspaceStateApplicationSceneChangeItem *)self activationSettings];
  v5 = [v4 isAnimated];

  return v5;
}

- (DBDashboardWorkspaceStateApplicationSceneChangeItem)initWithApplication:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DBDashboardWorkspaceStateApplicationSceneChangeItem;
  v6 = [(DBDashboardWorkspaceStateChangeItem *)&v9 _init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 3, a3);
  }

  return v7;
}

- (id)_newEntityFromChangeItemWithPolicyProvider:(id)a3
{
  v4 = [(DBDashboardWorkspaceStateApplicationSceneChangeItem *)self application];
  v5 = [v4 appPolicy];

  v6 = self->_application;
  if ([v5 launchUsingTemplateUI])
  {
    v7 = +[DBApplicationController sharedInstance];
    v8 = [v7 templateUIHostApplication];
  }

  else
  {
    if (([v5 launchUsingMusicUIService] & 1) == 0)
    {
      if ([v5 isCarPlayCapable])
      {
        goto LABEL_9;
      }

      v12 = [(DBApplication *)v6 info];
      v13 = [v12 supportsBackgroundMode:*MEMORY[0x277D76778]];

      if (!v13)
      {
        goto LABEL_9;
      }
    }

    v7 = +[DBApplicationController sharedInstance];
    v8 = [v7 musicUIServiceApplication];
  }

  v9 = v8;

  if (!v9)
  {
LABEL_9:
    v11 = [DBDashboardApplicationSceneEntity applicationSceneEntityForApplication:v6];
    goto LABEL_10;
  }

  v10 = [DBDashboardApplicationSceneEntity applicationSceneEntityForApplication:v9];
  v11 = [DBDashboardProxiedApplicationSceneEntity application:v6 proxiedByEntity:v10];

LABEL_10:
  return v11;
}

- (void)_buildDescriptionWithBuilder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = DBDashboardWorkspaceStateApplicationSceneChangeItem;
  [(DBDashboardWorkspaceStateChangeItem *)&v7 _buildDescriptionWithBuilder:v4];
  v5 = [(DBApplication *)self->_application bundleIdentifier];
  v6 = [v4 appendObject:v5 withName:@"bundleID"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = DBDashboardWorkspaceStateApplicationSceneChangeItem;
  v4 = [(DBDashboardWorkspaceStateChangeItem *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 3, self->_application);
  return v4;
}

@end