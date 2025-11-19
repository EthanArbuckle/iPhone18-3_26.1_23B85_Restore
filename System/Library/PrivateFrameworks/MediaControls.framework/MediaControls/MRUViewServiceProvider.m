@interface MRUViewServiceProvider
+ (BOOL)shouldPresentNewRoutePickerForConfiguration:(id)a3;
+ (id)viewControllerForConfiguration:(id)a3;
@end

@implementation MRUViewServiceProvider

+ (id)viewControllerForConfiguration:(id)a3
{
  v4 = a3;
  v5 = [a1 shouldPresentNewRoutePickerForConfiguration:v4];
  v6 = off_1E7662248;
  if (!v5)
  {
    v6 = off_1E76622B0;
  }

  v7 = objc_alloc_init(*v6);
  [v7 setConfiguration:v4];

  return v7;
}

+ (BOOL)shouldPresentNewRoutePickerForConfiguration:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 presentingAppBundleID];

  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E6999E70]);
    v7 = [v4 presentingAppBundleID];
    [v6 setBundleID:v7];

    v8 = [v6 appIsUsingDeviceAccess];
    v9 = MCLogCategoryDefault();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v4 presentingAppBundleID];
      v15 = 138412802;
      v16 = a1;
      v17 = 2112;
      v18 = v10;
      v19 = 1024;
      v20 = v8;
      _os_log_impl(&dword_1A20FC000, v9, OS_LOG_TYPE_DEFAULT, "[%@] presentingApp:%@ isUsingDeviceAccess:%{BOOL}u", &v15, 0x1Cu);
    }

    v11 = v8 ^ 1;
  }

  else
  {
    v12 = MCLogCategoryDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = a1;
      _os_log_impl(&dword_1A20FC000, v12, OS_LOG_TYPE_DEFAULT, "[%@] presentingApp:nil", &v15, 0xCu);
    }

    v11 = 1;
  }

  v13 = +[MRUFeatureFlagProvider isCayenneEnabled];

  return v13 & v11;
}

@end