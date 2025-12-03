@interface CCUIAppLauncherModule
- (CCUIAppLauncherModule)init;
- (SBFApplication)_application;
- (id)contentViewControllerForContext:(id)context;
- (void)_fetchApplicationIfNeeded;
- (void)handleTapWithTouchType:(int64_t)type;
@end

@implementation CCUIAppLauncherModule

- (CCUIAppLauncherModule)init
{
  v21.receiver = self;
  v21.super_class = CCUIAppLauncherModule;
  v2 = [(CCUIAppLauncherModule *)&v21 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AAE8] ccui_bundleForModuleInstance:v2];
    bundle = v2->_bundle;
    v2->_bundle = v3;

    infoDictionary = [(NSBundle *)v2->_bundle infoDictionary];
    v6 = [infoDictionary objectForKey:@"CCAssociatedBundleIdentifier"];
    [(CCUIAppLauncherModule *)v2 setApplicationIdentifier:v6];

    v7 = [infoDictionary objectForKey:@"CCLaunchApplicationIdentifier"];
    [(CCUIAppLauncherModule *)v2 setLaunchApplicationIdentifier:v7];

    v8 = [infoDictionary objectForKey:@"CCLaunchURL"];
    if (v8)
    {
      v9 = [MEMORY[0x1E695DFF8] URLWithString:v8];
      [(CCUIAppLauncherModule *)v2 setLaunchURL:v9];
    }

    else
    {
      [(CCUIAppLauncherModule *)v2 setLaunchURL:0];
    }

    ccui_displayName = [(NSBundle *)v2->_bundle ccui_displayName];
    displayName = v2->_displayName;
    v2->_displayName = ccui_displayName;

    v12 = [infoDictionary objectForKey:@"CCSupportsApplicationShortcuts"];
    v13 = v12;
    if (v12)
    {
      bOOLValue = [v12 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }

    v2->_supportsApplicationShortcuts = bOOLValue;
    v15 = [infoDictionary objectForKey:@"CCRequestAuthenticationForExpandedModule"];
    v16 = v15;
    if (v15)
    {
      LOBYTE(v15) = [v15 BOOLValue];
    }

    v2->_requestAuthenticationForExpandedModule = v15;
    v17 = dispatch_get_global_queue(9, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __29__CCUIAppLauncherModule_init__block_invoke;
    block[3] = &unk_1E83EA478;
    v20 = v2;
    dispatch_async(v17, block);
  }

  return v2;
}

- (void)handleTapWithTouchType:(int64_t)type
{
  v9 = [(CCUIAppLauncherModule *)self launchURLForTouchType:?];
  launchApplicationIdentifier = [(CCUIAppLauncherModule *)self launchApplicationIdentifier];
  applicationIdentifier = [(CCUIAppLauncherModule *)self applicationIdentifier];
  if (v9)
  {
    contentModuleContext = [(CCUIAppLauncherModule *)self contentModuleContext];
    applicationIdentifier2 = [(CCUIAppLauncherModule *)self launchURLForTouchType:type];
    [contentModuleContext openURL:applicationIdentifier2 completionHandler:0];
LABEL_3:

LABEL_6:
    goto LABEL_7;
  }

  if (launchApplicationIdentifier)
  {
    contentModuleContext = [(CCUIAppLauncherModule *)self contentModuleContext];
    [contentModuleContext openApplication:launchApplicationIdentifier completionHandler:0];
    goto LABEL_6;
  }

  if (applicationIdentifier)
  {
    contentModuleContext = [(CCUIAppLauncherModule *)self contentModuleContext];
    applicationIdentifier2 = [(CCUIAppLauncherModule *)self applicationIdentifier];
    [contentModuleContext openApplication:applicationIdentifier2 completionHandler:0];
    goto LABEL_3;
  }

LABEL_7:
}

- (id)contentViewControllerForContext:(id)context
{
  v4 = objc_alloc_init(CCUIAppLauncherViewController);
  contentModuleContext = [(CCUIAppLauncherModule *)self contentModuleContext];
  [(CCUIMenuModuleViewController *)v4 setContentModuleContext:contentModuleContext];

  [(CCUIAppLauncherViewController *)v4 setModule:self];

  return v4;
}

- (SBFApplication)_application
{
  [(CCUIAppLauncherModule *)self _fetchApplicationIfNeeded];
  application = self->_application;

  return application;
}

- (void)_fetchApplicationIfNeeded
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  if (obj->_applicationIdentifier && !obj->_application)
  {
    v3 = [objc_alloc(MEMORY[0x1E69D3FA8]) initWithApplicationBundleIdentifier:obj->_applicationIdentifier];
    application = obj->_application;
    obj->_application = v3;

    v2 = obj;
  }

  objc_sync_exit(v2);
}

@end