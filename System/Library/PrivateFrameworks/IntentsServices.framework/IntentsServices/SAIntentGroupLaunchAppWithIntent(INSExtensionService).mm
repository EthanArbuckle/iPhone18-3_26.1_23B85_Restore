@interface SAIntentGroupLaunchAppWithIntent(INSExtensionService)
- (void)ins_launchAppWithConnection:()INSExtensionService delegate:completionHandler:;
@end

@implementation SAIntentGroupLaunchAppWithIntent(INSExtensionService)

- (void)ins_launchAppWithConnection:()INSExtensionService delegate:completionHandler:
{
  v49 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v44 = "[SAIntentGroupLaunchAppWithIntent(INSExtensionService) ins_launchAppWithConnection:delegate:completionHandler:]";
    v45 = 2112;
    *v46 = v8;
    _os_log_impl(&dword_25553C000, v11, OS_LOG_TYPE_INFO, "%s ins_launchAppWithConnection: %@", buf, 0x16u);
  }

  _transaction = [v8 _transaction];
  currentUserActivity = [_transaction currentUserActivity];

  if (!currentUserActivity)
  {
    ins_aceIntentResponse = [self ins_aceIntentResponse];
    v15 = ins_aceIntentResponse;
    if (ins_aceIntentResponse)
    {
      userActivity = [ins_aceIntentResponse userActivity];

      v17 = objc_alloc(MEMORY[0x277CC1EF0]);
      if (userActivity)
      {
        userActivity2 = [v15 userActivity];
        activityType = [userActivity2 activityType];
        currentUserActivity = [v17 initWithActivityType:activityType];
      }

      else
      {
        userActivity2 = [v8 intent];
        currentUserActivity = [v17 _initWithIntent:userActivity2];
      }

      v20 = objc_alloc(MEMORY[0x277CD3D58]);
      intent = [v8 intent];
      v22 = [v20 initWithIntent:intent response:v15];

      [v22 setIntentHandlingStatus:3];
      [currentUserActivity _setInteraction:v22 donate:0];
      _transaction2 = [v8 _transaction];
      v24 = objc_alloc(MEMORY[0x277D21528]);
      intent2 = [v8 intent];
      v26 = [v24 initWithType:5 intent:intent2 intentResponse:v15 userActivities:0];
      [_transaction2 setState:v26];
    }

    else
    {
      currentUserActivity = 0;
    }
  }

  v27 = MEMORY[0x277D21518];
  intent3 = [v8 intent];
  interaction = [currentUserActivity interaction];
  intentResponse = [interaction intentResponse];
  v31 = [v27 shouldLaunchAppInBackgroundWithIntent:intent3 intentResponse:intentResponse];

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __112__SAIntentGroupLaunchAppWithIntent_INSExtensionService__ins_launchAppWithConnection_delegate_completionHandler___block_invoke;
  v41[3] = &unk_2797EA978;
  v41[4] = self;
  v32 = v10;
  v42 = v32;
  v33 = [v9 completionHandlerForAppLaunchCommand:self withCompletion:v41];
  if ([v8 _carPlaySupportsVideoPlayback])
  {
    intent4 = [v8 intent];
    objc_opt_class();
    v35 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v35 = 1;
  }

  v36 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
  {
    v37 = v36;
    doNotDismissSiri = [self doNotDismissSiri];
    *buf = 136315906;
    v44 = "[SAIntentGroupLaunchAppWithIntent(INSExtensionService) ins_launchAppWithConnection:delegate:completionHandler:]";
    v45 = 1024;
    *v46 = v31;
    *&v46[4] = 1024;
    *&v46[6] = v35 & 1;
    v47 = 1024;
    v48 = doNotDismissSiri;
    _os_log_impl(&dword_25553C000, v37, OS_LOG_TYPE_INFO, "%s launchAppInBackground: %d, restrictAppsToCarPlay: %d, donotdismiss: %d", buf, 0x1Eu);
  }

  appProxy = [v8 appProxy];
  [appProxy launchAppInBackground:v31 restrictAppsToCarPlay:v35 & 1 userActivityIdentifier:0 retainsSiri:objc_msgSend(self completionHandler:{"doNotDismissSiri"), v33}];

  v40 = *MEMORY[0x277D85DE8];
}

@end