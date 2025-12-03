@interface DBDashboardWorkspaceStateApplicationSceneChangeItem
- (BOOL)prefersAnimation;
- (DBDashboardWorkspaceStateApplicationSceneChangeItem)initWithApplication:(id)application;
- (id)_newEntityFromChangeItemWithPolicyProvider:(id)provider;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_buildDescriptionWithBuilder:(id)builder;
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

  activationSettings = [(DBDashboardWorkspaceStateApplicationSceneChangeItem *)self activationSettings];

  if (!activationSettings)
  {
    return 1;
  }

  activationSettings2 = [(DBDashboardWorkspaceStateApplicationSceneChangeItem *)self activationSettings];
  isAnimated = [activationSettings2 isAnimated];

  return isAnimated;
}

- (DBDashboardWorkspaceStateApplicationSceneChangeItem)initWithApplication:(id)application
{
  applicationCopy = application;
  v9.receiver = self;
  v9.super_class = DBDashboardWorkspaceStateApplicationSceneChangeItem;
  _init = [(DBDashboardWorkspaceStateChangeItem *)&v9 _init];
  v7 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 3, application);
  }

  return v7;
}

- (id)_newEntityFromChangeItemWithPolicyProvider:(id)provider
{
  application = [(DBDashboardWorkspaceStateApplicationSceneChangeItem *)self application];
  appPolicy = [application appPolicy];

  v6 = self->_application;
  if ([appPolicy launchUsingTemplateUI])
  {
    v7 = +[DBApplicationController sharedInstance];
    templateUIHostApplication = [v7 templateUIHostApplication];
  }

  else
  {
    if (([appPolicy launchUsingMusicUIService] & 1) == 0)
    {
      if ([appPolicy isCarPlayCapable])
      {
        goto LABEL_9;
      }

      info = [(DBApplication *)v6 info];
      v13 = [info supportsBackgroundMode:*MEMORY[0x277D76778]];

      if (!v13)
      {
        goto LABEL_9;
      }
    }

    v7 = +[DBApplicationController sharedInstance];
    templateUIHostApplication = [v7 musicUIServiceApplication];
  }

  v9 = templateUIHostApplication;

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

- (void)_buildDescriptionWithBuilder:(id)builder
{
  builderCopy = builder;
  v7.receiver = self;
  v7.super_class = DBDashboardWorkspaceStateApplicationSceneChangeItem;
  [(DBDashboardWorkspaceStateChangeItem *)&v7 _buildDescriptionWithBuilder:builderCopy];
  bundleIdentifier = [(DBApplication *)self->_application bundleIdentifier];
  v6 = [builderCopy appendObject:bundleIdentifier withName:@"bundleID"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = DBDashboardWorkspaceStateApplicationSceneChangeItem;
  v4 = [(DBDashboardWorkspaceStateChangeItem *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 3, self->_application);
  return v4;
}

@end