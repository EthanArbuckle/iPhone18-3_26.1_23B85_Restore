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
  _transaction = [v13 _transaction];
  v15 = [_transaction userActivityWithIdentifier:v12];

  v16 = MEMORY[0x277D21518];
  intent = [v13 intent];
  interaction = [v15 interaction];
  intentResponse = [interaction intentResponse];
  v20 = [v16 shouldLaunchAppInBackgroundWithIntent:intent intentResponse:intentResponse];

  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __141__SAIntentGroupLaunchAppWithUserActivity_INSExtensionService__ins_launchAppWithConnection_userActivityIdentifier_delegate_completionHandler___block_invoke;
  v27 = &unk_2797EA978;
  selfCopy = self;
  v29 = v10;
  v21 = v10;
  v22 = [v11 completionHandlerForAppLaunchCommand:self withCompletion:&v24];

  appProxy = [v13 appProxy];

  [appProxy launchAppInBackground:v20 restrictAppsToCarPlay:1 userActivityIdentifier:v12 completionHandler:v22];
}

@end