@interface SAIntentGroupLaunchAppWithUserActivity(INSExtensionService)
- (void)ins_launchAppWithConnection:()INSExtensionService userActivityIdentifier:delegate:completionHandler:;
@end

@implementation SAIntentGroupLaunchAppWithUserActivity(INSExtensionService)

- (void)ins_launchAppWithConnection:()INSExtensionService userActivityIdentifier:delegate:completionHandler:
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v13 _transaction];
  v15 = [v14 userActivityWithIdentifier:v12];

  v16 = MEMORY[0x277D21518];
  v17 = [v13 intent];
  v18 = [v15 interaction];
  v19 = [v18 intentResponse];
  v20 = [v16 shouldLaunchAppInBackgroundWithIntent:v17 intentResponse:v19];

  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __141__SAIntentGroupLaunchAppWithUserActivity_INSExtensionService__ins_launchAppWithConnection_userActivityIdentifier_delegate_completionHandler___block_invoke;
  v27 = &unk_2797EA978;
  v28 = a1;
  v29 = v10;
  v21 = v10;
  v22 = [v11 completionHandlerForAppLaunchCommand:a1 withCompletion:&v24];

  v23 = [v13 appProxy];

  [v23 launchAppInBackground:v20 restrictAppsToCarPlay:1 userActivityIdentifier:v12 completionHandler:v22];
}

@end