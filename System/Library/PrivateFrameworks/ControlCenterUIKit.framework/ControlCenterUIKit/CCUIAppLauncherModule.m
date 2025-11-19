@interface CCUIAppLauncherModule
- (CCUIAppLauncherModule)init;
- (SBFApplication)_application;
- (id)contentViewControllerForContext:(id)a3;
- (void)_fetchApplicationIfNeeded;
- (void)handleTapWithTouchType:(int64_t)a3;
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

    v5 = [(NSBundle *)v2->_bundle infoDictionary];
    v6 = [v5 objectForKey:@"CCAssociatedBundleIdentifier"];
    [(CCUIAppLauncherModule *)v2 setApplicationIdentifier:v6];

    v7 = [v5 objectForKey:@"CCLaunchApplicationIdentifier"];
    [(CCUIAppLauncherModule *)v2 setLaunchApplicationIdentifier:v7];

    v8 = [v5 objectForKey:@"CCLaunchURL"];
    if (v8)
    {
      v9 = [MEMORY[0x1E695DFF8] URLWithString:v8];
      [(CCUIAppLauncherModule *)v2 setLaunchURL:v9];
    }

    else
    {
      [(CCUIAppLauncherModule *)v2 setLaunchURL:0];
    }

    v10 = [(NSBundle *)v2->_bundle ccui_displayName];
    displayName = v2->_displayName;
    v2->_displayName = v10;

    v12 = [v5 objectForKey:@"CCSupportsApplicationShortcuts"];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 BOOLValue];
    }

    else
    {
      v14 = 1;
    }

    v2->_supportsApplicationShortcuts = v14;
    v15 = [v5 objectForKey:@"CCRequestAuthenticationForExpandedModule"];
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

- (void)handleTapWithTouchType:(int64_t)a3
{
  v9 = [(CCUIAppLauncherModule *)self launchURLForTouchType:?];
  v5 = [(CCUIAppLauncherModule *)self launchApplicationIdentifier];
  v6 = [(CCUIAppLauncherModule *)self applicationIdentifier];
  if (v9)
  {
    v7 = [(CCUIAppLauncherModule *)self contentModuleContext];
    v8 = [(CCUIAppLauncherModule *)self launchURLForTouchType:a3];
    [v7 openURL:v8 completionHandler:0];
LABEL_3:

LABEL_6:
    goto LABEL_7;
  }

  if (v5)
  {
    v7 = [(CCUIAppLauncherModule *)self contentModuleContext];
    [v7 openApplication:v5 completionHandler:0];
    goto LABEL_6;
  }

  if (v6)
  {
    v7 = [(CCUIAppLauncherModule *)self contentModuleContext];
    v8 = [(CCUIAppLauncherModule *)self applicationIdentifier];
    [v7 openApplication:v8 completionHandler:0];
    goto LABEL_3;
  }

LABEL_7:
}

- (id)contentViewControllerForContext:(id)a3
{
  v4 = objc_alloc_init(CCUIAppLauncherViewController);
  v5 = [(CCUIAppLauncherModule *)self contentModuleContext];
  [(CCUIMenuModuleViewController *)v4 setContentModuleContext:v5];

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