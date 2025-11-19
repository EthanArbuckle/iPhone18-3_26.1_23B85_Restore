@interface CNLSApplicationWorkspace
+ (id)inProcessLaunchServices;
+ (id)launchServices;
+ (id)remoteAdapter;
- (CNLSApplicationWorkspace)init;
- (CNLSApplicationWorkspace)initWithSchedulerProvider:(id)a3;
- (id)applicationForBundleIdentifier:(id)a3;
- (id)applicationsAvailableForDefaultAppCategory:(unint64_t)a3;
- (id)applicationsAvailableForHandlingURLScheme:(id)a3;
- (id)applicationsForUserActivityType:(id)a3;
- (id)defaultApplicationForDefaultAppCategory:(unint64_t)a3;
- (id)observableForApplicationsChangedWithSchedulerProvider:(id)a3;
- (void)openSensitiveURLInBackground:(id)a3 withOptions:(id)a4 completionHandler:(id)a5;
- (void)openUserActivity:(id)a3 inApplication:(id)a4 options:(id)a5 completionHandler:(id)a6;
@end

@implementation CNLSApplicationWorkspace

- (CNLSApplicationWorkspace)init
{
  v3 = [MEMORY[0x1E6996820] defaultProvider];
  v4 = [(CNLSApplicationWorkspace *)self initWithSchedulerProvider:v3];

  return v4;
}

+ (id)launchServices
{
  if (_CFMZEnabled())
  {
    v3 = [a1 inProcessLaunchServices];
  }

  else
  {
    v4 = [MEMORY[0x1E69966E8] currentEnvironment];
    v5 = [v4 entitlementVerifier];
    v6 = *MEMORY[0x1E6996508];
    v12 = 0;
    v7 = [v5 currentProcessHasBooleanEntitlement:v6 error:&v12];
    v8 = v12;

    if (v7)
    {
      v9 = [a1 inProcessLaunchServices];
    }

    else
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __42__CNLSApplicationWorkspace_launchServices__block_invoke;
      v11[3] = &__block_descriptor_40_e5_v8__0l;
      v11[4] = a1;
      if (launchServices_cn_once_token_1 != -1)
      {
        dispatch_once(&launchServices_cn_once_token_1, v11);
      }

      v9 = launchServices_cn_once_object_1;
    }

    v3 = v9;
  }

  return v3;
}

+ (id)inProcessLaunchServices
{
  if (inProcessLaunchServices_cn_once_token_2 != -1)
  {
    +[CNLSApplicationWorkspace inProcessLaunchServices];
  }

  v3 = inProcessLaunchServices_cn_once_object_2;

  return v3;
}

void __42__CNLSApplicationWorkspace_launchServices__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E6996748]);
  v5 = [*(a1 + 32) remoteAdapter];
  v3 = [v2 initWithAdapter:v5];
  v4 = launchServices_cn_once_object_1;
  launchServices_cn_once_object_1 = v3;
}

uint64_t __51__CNLSApplicationWorkspace_inProcessLaunchServices__block_invoke()
{
  inProcessLaunchServices_cn_once_object_2 = objc_alloc_init(MEMORY[0x1E6996748]);

  return MEMORY[0x1EEE66BB8]();
}

- (CNLSApplicationWorkspace)initWithSchedulerProvider:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNLSApplicationWorkspace;
  v6 = [(CNLSApplicationWorkspace *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_schedulerProvider, a3);
    v8 = v7;
  }

  return v7;
}

+ (id)remoteAdapter
{
  if (remoteAdapter_cn_once_token_3 != -1)
  {
    +[CNLSApplicationWorkspace remoteAdapter];
  }

  v3 = remoteAdapter_cn_once_object_3;

  return v3;
}

uint64_t __41__CNLSApplicationWorkspace_remoteAdapter__block_invoke()
{
  remoteAdapter_cn_once_object_3 = objc_alloc_init(MEMORY[0x1E695CEE8]);

  return MEMORY[0x1EEE66BB8]();
}

- (id)observableForApplicationsChangedWithSchedulerProvider:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6996798];
  v4 = MEMORY[0x1E696ABB0];
  v5 = a3;
  v6 = [v4 defaultCenter];
  v7 = [v3 observableOnNotificationCenter:v6 withName:@"com.apple.LaunchServices.applicationRegistered" object:0];
  v14[0] = v7;
  v8 = MEMORY[0x1E6996798];
  v9 = [MEMORY[0x1E696ABB0] defaultCenter];
  v10 = [v8 observableOnNotificationCenter:v9 withName:@"com.apple.LaunchServices.applicationUnregistered" object:0];
  v14[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v12 = [v3 merge:v11 schedulerProvider:v5];

  return v12;
}

- (void)openUserActivity:(id)a3 inApplication:(id)a4 options:(id)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a6;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __85__CNLSApplicationWorkspace_openUserActivity_inApplication_options_completionHandler___block_invoke;
  v14[3] = &unk_1E76E9AD8;
  v14[4] = self;
  v15 = v10;
  v16 = v11;
  v12 = v11;
  v13 = v10;
  [a3 _createUserActivityDataWithOptions:a5 completionHandler:v14];
}

void __85__CNLSApplicationWorkspace_openUserActivity_inApplication_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() inProcessLaunchServices];
  [v4 openUserActivityData:v3 inApplication:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)openSensitiveURLInBackground:(id)a3 withOptions:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CNLSApplicationWorkspace *)self schedulerProvider];
  v12 = [v11 backgroundScheduler];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __87__CNLSApplicationWorkspace_openSensitiveURLInBackground_withOptions_completionHandler___block_invoke;
  v16[3] = &unk_1E76E8C90;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  [v12 performBlock:v16];
}

void __87__CNLSApplicationWorkspace_openSensitiveURLInBackground_withOptions_completionHandler___block_invoke(void *a1)
{
  v2 = [objc_opt_class() inProcessLaunchServices];
  [v2 openSensitiveURLInBackground:a1[5] withOptions:a1[6] completionHandler:a1[7]];
}

- (id)applicationsAvailableForHandlingURLScheme:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() launchServices];
  v5 = [v4 applicationsAvailableForHandlingURLScheme:v3];

  return v5;
}

- (id)applicationsForUserActivityType:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() launchServices];
  v5 = [v4 applicationsForUserActivityType:v3];

  return v5;
}

- (id)applicationsAvailableForDefaultAppCategory:(unint64_t)a3
{
  v4 = [objc_opt_class() launchServices];
  v5 = [v4 applicationsAvailableForDefaultAppCategory:a3];

  return v5;
}

- (id)defaultApplicationForDefaultAppCategory:(unint64_t)a3
{
  v4 = [objc_opt_class() launchServices];
  v5 = [v4 defaultApplicationForDefaultAppCategory:a3];

  return v5;
}

- (id)applicationForBundleIdentifier:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() launchServices];
  v5 = [v4 applicationForBundleIdentifier:v3];

  return v5;
}

@end