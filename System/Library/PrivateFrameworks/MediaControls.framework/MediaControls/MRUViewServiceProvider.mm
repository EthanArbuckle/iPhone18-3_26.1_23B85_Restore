@interface MRUViewServiceProvider
+ (BOOL)shouldPresentNewRoutePickerForConfiguration:(id)configuration;
+ (id)viewControllerForConfiguration:(id)configuration;
@end

@implementation MRUViewServiceProvider

+ (id)viewControllerForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [self shouldPresentNewRoutePickerForConfiguration:configurationCopy];
  v6 = off_1E7662248;
  if (!v5)
  {
    v6 = off_1E76622B0;
  }

  v7 = objc_alloc_init(*v6);
  [v7 setConfiguration:configurationCopy];

  return v7;
}

+ (BOOL)shouldPresentNewRoutePickerForConfiguration:(id)configuration
{
  v21 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  presentingAppBundleID = [configurationCopy presentingAppBundleID];

  if (presentingAppBundleID)
  {
    v6 = objc_alloc_init(MEMORY[0x1E6999E70]);
    presentingAppBundleID2 = [configurationCopy presentingAppBundleID];
    [v6 setBundleID:presentingAppBundleID2];

    appIsUsingDeviceAccess = [v6 appIsUsingDeviceAccess];
    v9 = MCLogCategoryDefault();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      presentingAppBundleID3 = [configurationCopy presentingAppBundleID];
      v15 = 138412802;
      selfCopy2 = self;
      v17 = 2112;
      v18 = presentingAppBundleID3;
      v19 = 1024;
      v20 = appIsUsingDeviceAccess;
      _os_log_impl(&dword_1A20FC000, v9, OS_LOG_TYPE_DEFAULT, "[%@] presentingApp:%@ isUsingDeviceAccess:%{BOOL}u", &v15, 0x1Cu);
    }

    v11 = appIsUsingDeviceAccess ^ 1;
  }

  else
  {
    v12 = MCLogCategoryDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_1A20FC000, v12, OS_LOG_TYPE_DEFAULT, "[%@] presentingApp:nil", &v15, 0xCu);
    }

    v11 = 1;
  }

  v13 = +[MRUFeatureFlagProvider isCayenneEnabled];

  return v13 & v11;
}

@end