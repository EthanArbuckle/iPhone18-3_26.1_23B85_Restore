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

  v12 = [v8 _transaction];
  v13 = [v12 currentUserActivity];

  if (!v13)
  {
    v14 = [a1 ins_aceIntentResponse];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 userActivity];

      v17 = objc_alloc(MEMORY[0x277CC1EF0]);
      if (v16)
      {
        v18 = [v15 userActivity];
        v19 = [v18 activityType];
        v13 = [v17 initWithActivityType:v19];
      }

      else
      {
        v18 = [v8 intent];
        v13 = [v17 _initWithIntent:v18];
      }

      v20 = objc_alloc(MEMORY[0x277CD3D58]);
      v21 = [v8 intent];
      v22 = [v20 initWithIntent:v21 response:v15];

      [v22 setIntentHandlingStatus:3];
      [v13 _setInteraction:v22 donate:0];
      v23 = [v8 _transaction];
      v24 = objc_alloc(MEMORY[0x277D21528]);
      v25 = [v8 intent];
      v26 = [v24 initWithType:5 intent:v25 intentResponse:v15 userActivities:0];
      [v23 setState:v26];
    }

    else
    {
      v13 = 0;
    }
  }

  v27 = MEMORY[0x277D21518];
  v28 = [v8 intent];
  v29 = [v13 interaction];
  v30 = [v29 intentResponse];
  v31 = [v27 shouldLaunchAppInBackgroundWithIntent:v28 intentResponse:v30];

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __112__SAIntentGroupLaunchAppWithIntent_INSExtensionService__ins_launchAppWithConnection_delegate_completionHandler___block_invoke;
  v41[3] = &unk_2797EA978;
  v41[4] = a1;
  v32 = v10;
  v42 = v32;
  v33 = [v9 completionHandlerForAppLaunchCommand:a1 withCompletion:v41];
  if ([v8 _carPlaySupportsVideoPlayback])
  {
    v34 = [v8 intent];
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
    v38 = [a1 doNotDismissSiri];
    *buf = 136315906;
    v44 = "[SAIntentGroupLaunchAppWithIntent(INSExtensionService) ins_launchAppWithConnection:delegate:completionHandler:]";
    v45 = 1024;
    *v46 = v31;
    *&v46[4] = 1024;
    *&v46[6] = v35 & 1;
    v47 = 1024;
    v48 = v38;
    _os_log_impl(&dword_25553C000, v37, OS_LOG_TYPE_INFO, "%s launchAppInBackground: %d, restrictAppsToCarPlay: %d, donotdismiss: %d", buf, 0x1Eu);
  }

  v39 = [v8 appProxy];
  [v39 launchAppInBackground:v31 restrictAppsToCarPlay:v35 & 1 userActivityIdentifier:0 retainsSiri:objc_msgSend(a1 completionHandler:{"doNotDismissSiri"), v33}];

  v40 = *MEMORY[0x277D85DE8];
}

@end