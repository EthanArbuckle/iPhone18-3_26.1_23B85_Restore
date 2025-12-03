@interface CNLSApplicationWorkspace
+ (id)inProcessLaunchServices;
+ (id)launchServices;
+ (id)remoteAdapter;
- (CNLSApplicationWorkspace)init;
- (CNLSApplicationWorkspace)initWithSchedulerProvider:(id)provider;
- (id)applicationForBundleIdentifier:(id)identifier;
- (id)applicationsAvailableForDefaultAppCategory:(unint64_t)category;
- (id)applicationsAvailableForHandlingURLScheme:(id)scheme;
- (id)applicationsForUserActivityType:(id)type;
- (id)defaultApplicationForDefaultAppCategory:(unint64_t)category;
- (id)observableForApplicationsChangedWithSchedulerProvider:(id)provider;
- (void)openSensitiveURLInBackground:(id)background withOptions:(id)options completionHandler:(id)handler;
- (void)openUserActivity:(id)activity inApplication:(id)application options:(id)options completionHandler:(id)handler;
@end

@implementation CNLSApplicationWorkspace

- (CNLSApplicationWorkspace)init
{
  defaultProvider = [MEMORY[0x1E6996820] defaultProvider];
  v4 = [(CNLSApplicationWorkspace *)self initWithSchedulerProvider:defaultProvider];

  return v4;
}

+ (id)launchServices
{
  if (_CFMZEnabled())
  {
    inProcessLaunchServices = [self inProcessLaunchServices];
  }

  else
  {
    currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
    entitlementVerifier = [currentEnvironment entitlementVerifier];
    v6 = *MEMORY[0x1E6996508];
    v12 = 0;
    v7 = [entitlementVerifier currentProcessHasBooleanEntitlement:v6 error:&v12];
    v8 = v12;

    if (v7)
    {
      inProcessLaunchServices2 = [self inProcessLaunchServices];
    }

    else
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __42__CNLSApplicationWorkspace_launchServices__block_invoke;
      v11[3] = &__block_descriptor_40_e5_v8__0l;
      v11[4] = self;
      if (launchServices_cn_once_token_1 != -1)
      {
        dispatch_once(&launchServices_cn_once_token_1, v11);
      }

      inProcessLaunchServices2 = launchServices_cn_once_object_1;
    }

    inProcessLaunchServices = inProcessLaunchServices2;
  }

  return inProcessLaunchServices;
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

- (CNLSApplicationWorkspace)initWithSchedulerProvider:(id)provider
{
  providerCopy = provider;
  v10.receiver = self;
  v10.super_class = CNLSApplicationWorkspace;
  v6 = [(CNLSApplicationWorkspace *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_schedulerProvider, provider);
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

- (id)observableForApplicationsChangedWithSchedulerProvider:(id)provider
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6996798];
  v4 = MEMORY[0x1E696ABB0];
  providerCopy = provider;
  defaultCenter = [v4 defaultCenter];
  v7 = [v3 observableOnNotificationCenter:defaultCenter withName:@"com.apple.LaunchServices.applicationRegistered" object:0];
  v14[0] = v7;
  v8 = MEMORY[0x1E6996798];
  defaultCenter2 = [MEMORY[0x1E696ABB0] defaultCenter];
  v10 = [v8 observableOnNotificationCenter:defaultCenter2 withName:@"com.apple.LaunchServices.applicationUnregistered" object:0];
  v14[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v12 = [v3 merge:v11 schedulerProvider:providerCopy];

  return v12;
}

- (void)openUserActivity:(id)activity inApplication:(id)application options:(id)options completionHandler:(id)handler
{
  applicationCopy = application;
  handlerCopy = handler;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __85__CNLSApplicationWorkspace_openUserActivity_inApplication_options_completionHandler___block_invoke;
  v14[3] = &unk_1E76E9AD8;
  v14[4] = self;
  v15 = applicationCopy;
  v16 = handlerCopy;
  v12 = handlerCopy;
  v13 = applicationCopy;
  [activity _createUserActivityDataWithOptions:options completionHandler:v14];
}

void __85__CNLSApplicationWorkspace_openUserActivity_inApplication_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() inProcessLaunchServices];
  [v4 openUserActivityData:v3 inApplication:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)openSensitiveURLInBackground:(id)background withOptions:(id)options completionHandler:(id)handler
{
  backgroundCopy = background;
  optionsCopy = options;
  handlerCopy = handler;
  schedulerProvider = [(CNLSApplicationWorkspace *)self schedulerProvider];
  backgroundScheduler = [schedulerProvider backgroundScheduler];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __87__CNLSApplicationWorkspace_openSensitiveURLInBackground_withOptions_completionHandler___block_invoke;
  v16[3] = &unk_1E76E8C90;
  v16[4] = self;
  v17 = backgroundCopy;
  v18 = optionsCopy;
  v19 = handlerCopy;
  v13 = handlerCopy;
  v14 = optionsCopy;
  v15 = backgroundCopy;
  [backgroundScheduler performBlock:v16];
}

void __87__CNLSApplicationWorkspace_openSensitiveURLInBackground_withOptions_completionHandler___block_invoke(void *a1)
{
  v2 = [objc_opt_class() inProcessLaunchServices];
  [v2 openSensitiveURLInBackground:a1[5] withOptions:a1[6] completionHandler:a1[7]];
}

- (id)applicationsAvailableForHandlingURLScheme:(id)scheme
{
  schemeCopy = scheme;
  launchServices = [objc_opt_class() launchServices];
  v5 = [launchServices applicationsAvailableForHandlingURLScheme:schemeCopy];

  return v5;
}

- (id)applicationsForUserActivityType:(id)type
{
  typeCopy = type;
  launchServices = [objc_opt_class() launchServices];
  v5 = [launchServices applicationsForUserActivityType:typeCopy];

  return v5;
}

- (id)applicationsAvailableForDefaultAppCategory:(unint64_t)category
{
  launchServices = [objc_opt_class() launchServices];
  v5 = [launchServices applicationsAvailableForDefaultAppCategory:category];

  return v5;
}

- (id)defaultApplicationForDefaultAppCategory:(unint64_t)category
{
  launchServices = [objc_opt_class() launchServices];
  v5 = [launchServices defaultApplicationForDefaultAppCategory:category];

  return v5;
}

- (id)applicationForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  launchServices = [objc_opt_class() launchServices];
  v5 = [launchServices applicationForBundleIdentifier:identifierCopy];

  return v5;
}

@end