@interface MUPlaceAttributionUtilities
+ (BOOL)shouldPresentStoreProductViewControllerWithAttribution:(id)a3;
+ (id)overriddenIfNecessaryAppAdamID:(id)a3;
+ (void)presentStoreProductViewControllerWithAppAdamID:(id)a3 bundleIdentifier:(id)a4 presentingViewController:(id)a5;
@end

@implementation MUPlaceAttributionUtilities

+ (id)overriddenIfNecessaryAppAdamID:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [v4 BOOLForKey:@"MKPlacecardOverridePhotosAttributionYelpAdamID"];

  if (v5)
  {

    v3 = @"284910350";
  }

  return v3;
}

+ (void)presentStoreProductViewControllerWithAppAdamID:(id)a3 bundleIdentifier:(id)a4 presentingViewController:(id)a5
{
  v13[1] = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = [a1 overriddenIfNecessaryAppAdamID:a3];
  if ([v8 length])
  {
    v9 = objc_alloc_init(MEMORY[0x1E697BAA0]);
    v12 = *MEMORY[0x1E697BB38];
    v13[0] = v8;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    [v9 loadProductWithParameters:v10 completionBlock:0];

    [v7 presentViewController:v9 animated:1 completion:0];
  }

  v11 = *MEMORY[0x1E69E9840];
}

+ (BOOL)shouldPresentStoreProductViewControllerWithAttribution:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 shouldOpenInAppStore])
  {
    v5 = MUGetPlaceCardLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5620000, v5, OS_LOG_TYPE_INFO, "Attribution allows opening in app store", buf, 2u);
    }

    if (+[MapsUIUtilities deviceIsLockedAndNeedsPasscode])
    {
      v6 = MUGetPlaceCardLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5620000, v6, OS_LOG_TYPE_INFO, "Should not present store product VC, device is locked", buf, 2u);
      }
    }

    else
    {
      v8 = [v4 appAdamID];
      v6 = [a1 overriddenIfNecessaryAppAdamID:v8];

      if ([v6 length])
      {
        v17 = 0;
        v9 = [objc_alloc(MEMORY[0x1E69635F8]) initWithStoreItemIdentifier:-[NSObject longLongValue](v6 error:{"longLongValue"), &v17}];
        v10 = v17;
        v11 = [v9 applicationState];
        v12 = [v11 isInstalled];

        if (v10)
        {
          v13 = MUGetPlaceCardLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v19 = v10;
            _os_log_impl(&dword_1C5620000, v13, OS_LOG_TYPE_ERROR, "Unable to check install state with error %@", buf, 0xCu);
          }
        }

        v7 = v12 ^ 1;
        if (v12)
        {
          v14 = MUGetPlaceCardLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1C5620000, v14, OS_LOG_TYPE_INFO, "Cannot present store product VC", buf, 2u);
          }
        }

        goto LABEL_19;
      }
    }

    v7 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v7 = 0;
LABEL_20:

  v15 = *MEMORY[0x1E69E9840];
  return v7;
}

@end