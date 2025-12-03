@interface DBUserAlertServer
- (DBAppAlertPresenting)appPresenter;
- (DBSystemAlertPresenting)systemPresenter;
- (DBUserAlertServer)initWithSafeAreaInsets:(UIEdgeInsets)insets environmentConfiguration:(id)configuration;
- (UIEdgeInsets)safeAreaInsets;
- (id)_sceneForAlert:(id)alert;
- (id)alertForBundleID:(id)d;
- (void)_dismissAlert:(id)alert;
- (void)_dismissAlert:(id)alert overApplication:(id)application;
- (void)_dismissAppAlert:(id)alert;
- (void)_dismissSystemAlert:(id)alert;
- (void)_presentAlert:(id)alert overApplication:(id)application;
- (void)_presentSystemAlert:(id)alert;
- (void)alertService:(id)service wantsDismissalForAlert:(id)alert;
- (void)alertService:(id)service wantsPresentationForAlert:(id)alert preferredPresentationStyle:(int64_t)style;
- (void)invalidate;
- (void)updateAlertSceneFramesWithSafeAreaInsets:(UIEdgeInsets)insets;
@end

@implementation DBUserAlertServer

- (DBUserAlertServer)initWithSafeAreaInsets:(UIEdgeInsets)insets environmentConfiguration:(id)configuration
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  configurationCopy = configuration;
  v24.receiver = self;
  v24.super_class = DBUserAlertServer;
  v11 = [(DBUserAlertServer *)&v24 init];
  v12 = v11;
  if (v11)
  {
    v11->_safeAreaInsets.top = top;
    v11->_safeAreaInsets.left = left;
    v11->_safeAreaInsets.bottom = bottom;
    v11->_safeAreaInsets.right = right;
    objc_storeStrong(&v11->_environmentConfiguration, configuration);
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingSystemAlerts = v12->_pendingSystemAlerts;
    v12->_pendingSystemAlerts = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingAlertsForAppBundleID = v12->_pendingAlertsForAppBundleID;
    v12->_pendingAlertsForAppBundleID = v15;

    v17 = [objc_alloc(MEMORY[0x277D77BC8]) initWithDomain:@"com.apple.CarPlay.UserAlerts"];
    service = v12->_service;
    v12->_service = v17;

    [(URTAlertService *)v12->_service setDelegate:v12];
    v19 = [[DBSceneWorkspace alloc] initWithIdentifier:@"com.apple.DashBoard.scene-workspace.user-alert"];
    userAlertSceneWorkspace = v12->_userAlertSceneWorkspace;
    v12->_userAlertSceneWorkspace = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    userAlertScenes = v12->_userAlertScenes;
    v12->_userAlertScenes = v21;
  }

  return v12;
}

- (void)invalidate
{
  v21 = *MEMORY[0x277D85DE8];
  [(DBUserAlertServer *)self setSystemPresenter:0];
  [(DBUserAlertServer *)self setAppPresenter:0];
  pendingSystemAlerts = [(DBUserAlertServer *)self pendingSystemAlerts];
  [pendingSystemAlerts enumerateObjectsUsingBlock:&__block_literal_global_4];

  pendingSystemAlerts2 = [(DBUserAlertServer *)self pendingSystemAlerts];
  [pendingSystemAlerts2 removeAllObjects];

  pendingAlertsForAppBundleID = [(DBUserAlertServer *)self pendingAlertsForAppBundleID];
  [pendingAlertsForAppBundleID enumerateKeysAndObjectsUsingBlock:&__block_literal_global_91];

  pendingAlertsForAppBundleID2 = [(DBUserAlertServer *)self pendingAlertsForAppBundleID];
  [pendingAlertsForAppBundleID2 removeAllObjects];

  service = [(DBUserAlertServer *)self service];
  [service invalidate];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  userAlertScenes = [(DBUserAlertServer *)self userAlertScenes];
  allValues = [userAlertScenes allValues];

  v10 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v16 + 1) + 8 * v13++) invalidate];
      }

      while (v11 != v13);
      v11 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  userAlertScenes2 = [(DBUserAlertServer *)self userAlertScenes];
  [userAlertScenes2 removeAllObjects];

  userAlertSceneWorkspace = [(DBUserAlertServer *)self userAlertSceneWorkspace];
  [userAlertSceneWorkspace invalidate];
}

- (id)alertForBundleID:(id)d
{
  dCopy = d;
  pendingAlertsForAppBundleID = [(DBUserAlertServer *)self pendingAlertsForAppBundleID];
  v6 = [pendingAlertsForAppBundleID objectForKeyedSubscript:dCopy];

  if (v6)
  {
    firstObject = [v6 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (void)updateAlertSceneFramesWithSafeAreaInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  [(DBUserAlertServer *)self setSafeAreaInsets:?];
  environmentConfiguration = [(DBUserAlertServer *)self environmentConfiguration];
  [environmentConfiguration currentSafeViewAreaFrame];
  v10 = v9;
  v12 = v11;

  v13 = *MEMORY[0x277CBF348];
  v14 = *(MEMORY[0x277CBF348] + 8);
  pendingAlertsForAppBundleID = [(DBUserAlertServer *)self pendingAlertsForAppBundleID];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__DBUserAlertServer_updateAlertSceneFramesWithSafeAreaInsets___block_invoke;
  v16[3] = &__block_descriptor_96_e41_v32__0__NSString_8__NSMutableArray_16_B24l;
  v16[4] = v13;
  v16[5] = v14;
  v16[6] = v10;
  v16[7] = v12;
  *&v16[8] = top;
  *&v16[9] = left;
  *&v16[10] = bottom;
  *&v16[11] = right;
  [pendingAlertsForAppBundleID enumerateKeysAndObjectsUsingBlock:v16];
}

uint64_t __62__DBUserAlertServer_updateAlertSceneFramesWithSafeAreaInsets___block_invoke(_OWORD *a1, uint64_t a2, void *a3)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__DBUserAlertServer_updateAlertSceneFramesWithSafeAreaInsets___block_invoke_2;
  v6[3] = &__block_descriptor_96_e28_v32__0__DBUserAlert_8Q16_B24l;
  v3 = a1[3];
  v7 = a1[2];
  v8 = v3;
  v4 = a1[5];
  v9 = a1[4];
  v10 = v4;
  return [a3 enumerateObjectsUsingBlock:v6];
}

- (void)alertService:(id)service wantsPresentationForAlert:(id)alert preferredPresentationStyle:(int64_t)style
{
  v15 = *MEMORY[0x277D85DE8];
  alertCopy = alert;
  v8 = DBLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = alertCopy;
    _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "alertService:wantsPresentationForAlert: %@", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__DBUserAlertServer_alertService_wantsPresentationForAlert_preferredPresentationStyle___block_invoke;
  block[3] = &unk_278F01820;
  block[4] = self;
  v11 = alertCopy;
  styleCopy = style;
  v9 = alertCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __87__DBUserAlertServer_alertService_wantsPresentationForAlert_preferredPresentationStyle___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _sceneForAlert:*(a1 + 40)];
  v3 = [DBUserAlert alloc];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  [*(a1 + 32) safeAreaInsets];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [*(a1 + 32) environmentConfiguration];
  v15 = [(DBUserAlert *)v3 initWithAlert:v5 scene:v2 preferredPresentationStyle:v4 safeAreaInsets:v14 environmentConfiguration:v7, v9, v11, v13];

  v16 = [*(a1 + 40) allowedApplicationBundleIDs];
  v17 = [v16 count];

  if (v17)
  {
    v30 = v2;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v18 = [*(a1 + 40) allowedApplicationBundleIDs];
    v19 = [v18 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v32;
      do
      {
        v22 = 0;
        do
        {
          if (*v32 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v31 + 1) + 8 * v22);
          v24 = [*(a1 + 32) pendingAlertsForAppBundleID];
          v25 = [v24 objectForKeyedSubscript:v23];

          if (!v25)
          {
            v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v26 = [*(a1 + 32) pendingAlertsForAppBundleID];
            [v26 setObject:v25 forKeyedSubscript:v23];
          }

          [v25 addObject:v15];
          if ([v25 count] == 1)
          {
            [*(a1 + 32) _presentAlert:v15 overApplication:v23];
          }

          ++v22;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v20);
    }

    v2 = v30;
  }

  else
  {
    v27 = [*(a1 + 32) pendingSystemAlerts];
    [v27 addObject:v15];

    v28 = [*(a1 + 32) pendingSystemAlerts];
    v29 = [v28 count];

    if (v29 == 1)
    {
      [*(a1 + 32) _presentSystemAlert:v15];
    }
  }
}

- (void)alertService:(id)service wantsDismissalForAlert:(id)alert
{
  v13 = *MEMORY[0x277D85DE8];
  alertCopy = alert;
  v6 = DBLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = alertCopy;
    _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "alertService:wantsDismissalForAlert: %@", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__DBUserAlertServer_alertService_wantsDismissalForAlert___block_invoke;
  v8[3] = &unk_278F014B8;
  v9 = alertCopy;
  selfCopy = self;
  v7 = alertCopy;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

uint64_t __57__DBUserAlertServer_alertService_wantsDismissalForAlert___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) allowedApplicationBundleIDs];
  v3 = [v2 count];

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v3)
  {

    return [v4 _dismissAppAlert:v5];
  }

  else
  {

    return [v4 _dismissAlert:v5];
  }
}

- (id)_sceneForAlert:(id)alert
{
  v22 = *MEMORY[0x277D85DE8];
  identifier = [alert identifier];
  userAlertScenes = [(DBUserAlertServer *)self userAlertScenes];
  v6 = [userAlertScenes objectForKey:identifier];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = MEMORY[0x277CCACA8];
    environmentConfiguration = [(DBUserAlertServer *)self environmentConfiguration];
    displayIdentity = [environmentConfiguration displayIdentity];
    v11 = [v8 stringWithFormat:@"UserAlert-%@-%@", identifier, displayIdentity];

    v12 = DBLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = identifier;
      _os_log_impl(&dword_248146000, v12, OS_LOG_TYPE_DEFAULT, "Creating local scene for user alert %{public}@", buf, 0xCu);
    }

    userAlertSceneWorkspace = [(DBUserAlertServer *)self userAlertSceneWorkspace];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __36__DBUserAlertServer__sceneForAlert___block_invoke;
    v18[3] = &unk_278F01E30;
    v14 = v11;
    v19 = v14;
    v15 = [userAlertSceneWorkspace createScene:v18];

    if (v15)
    {
      userAlertScenes2 = [(DBUserAlertServer *)self userAlertScenes];
      [userAlertScenes2 setObject:v15 forKey:identifier];
    }

    v7 = v15;
  }

  return v7;
}

void __36__DBUserAlertServer__sceneForAlert___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setIdentifier:v2];
  v4 = [MEMORY[0x277D0ADA8] localIdentity];
  [v3 setClientIdentity:v4];

  v5 = [MEMORY[0x277D751A0] specification];
  [v3 setSpecification:v5];
}

- (void)_dismissAppAlert:(id)alert
{
  v41 = *MEMORY[0x277D85DE8];
  alertCopy = alert;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [alertCopy allowedApplicationBundleIDs];
  v5 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    v31 = *v35;
    *&v6 = 138412290;
    v28 = v6;
    v30 = alertCopy;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v35 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v34 + 1) + 8 * i);
        pendingAlertsForAppBundleID = [(DBUserAlertServer *)self pendingAlertsForAppBundleID];
        v12 = [pendingAlertsForAppBundleID objectForKeyedSubscript:v10];

        if (v12)
        {
          firstObject = [v12 firstObject];
          alert = [firstObject alert];
          v15 = alertCopy;
          v16 = [alert isEqual:alertCopy];

          if (v16)
          {
            [v12 removeObject:firstObject];
            [(DBUserAlertServer *)self _dismissAlert:firstObject overApplication:v10];
            v17 = firstObject;

            firstObject2 = [v12 firstObject];
            if (firstObject2)
            {
              [(DBUserAlertServer *)self _presentAlert:firstObject2 overApplication:v10];
            }

            else
            {
              pendingAlertsForAppBundleID2 = [(DBUserAlertServer *)self pendingAlertsForAppBundleID];
              [pendingAlertsForAppBundleID2 removeObjectForKey:v10];
            }
          }

          else
          {
            v32[0] = MEMORY[0x277D85DD0];
            v32[1] = 3221225472;
            v32[2] = __38__DBUserAlertServer__dismissAppAlert___block_invoke;
            v32[3] = &unk_278F01E58;
            v33 = v15;
            v19 = [v12 bs_firstObjectPassingTest:v32];
            if (v19)
            {
              v20 = DBLogForCategory(0);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v28;
                v39 = v15;
                _os_log_impl(&dword_248146000, v20, OS_LOG_TYPE_DEFAULT, "Removing pending alert from the queue: %@", buf, 0xCu);
              }

              [v12 removeObject:v19];
              v21 = v19;

              v8 = v21;
            }

            firstObject2 = v33;
            v17 = v8;
          }

          v8 = v17;
          alertCopy = v30;
        }

        else
        {
          firstObject = DBLogForCategory(0);
          if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
          {
            *buf = v28;
            v39 = alertCopy;
            _os_log_error_impl(&dword_248146000, firstObject, OS_LOG_TYPE_ERROR, "Received dismissal request for unknown alert: %@", buf, 0xCu);
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  userAlertScenes = [(DBUserAlertServer *)self userAlertScenes];
  identifier = [alertCopy identifier];
  v25 = [userAlertScenes objectForKey:identifier];

  if (v25)
  {
    [v25 invalidate];
    userAlertScenes2 = [(DBUserAlertServer *)self userAlertScenes];
    identifier2 = [alertCopy identifier];
    [userAlertScenes2 removeObjectForKey:identifier2];
  }

  [v8 invalidate];
}

uint64_t __38__DBUserAlertServer__dismissAppAlert___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 alert];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)_dismissAlert:(id)alert
{
  v27 = *MEMORY[0x277D85DE8];
  alertCopy = alert;
  pendingSystemAlerts = [(DBUserAlertServer *)self pendingSystemAlerts];
  firstObject = [pendingSystemAlerts firstObject];

  alert = [firstObject alert];
  v8 = [alert isEqual:alertCopy];

  pendingSystemAlerts2 = [(DBUserAlertServer *)self pendingSystemAlerts];
  v10 = pendingSystemAlerts2;
  if (v8)
  {
    [pendingSystemAlerts2 removeObject:firstObject];

    [(DBUserAlertServer *)self _dismissSystemAlert:firstObject];
    v11 = firstObject;
    pendingSystemAlerts3 = [(DBUserAlertServer *)self pendingSystemAlerts];
    firstObject2 = [pendingSystemAlerts3 firstObject];

    if (firstObject2)
    {
      [(DBUserAlertServer *)self _presentSystemAlert:firstObject2];
    }
  }

  else
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __35__DBUserAlertServer__dismissAlert___block_invoke;
    v23[3] = &unk_278F01E58;
    v14 = alertCopy;
    v24 = v14;
    v11 = [v10 bs_firstObjectPassingTest:v23];

    if (v11)
    {
      v15 = DBLogForCategory(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v14;
        _os_log_impl(&dword_248146000, v15, OS_LOG_TYPE_DEFAULT, "Removing pending alert from the queue: %@", buf, 0xCu);
      }

      pendingSystemAlerts4 = [(DBUserAlertServer *)self pendingSystemAlerts];
      [pendingSystemAlerts4 removeObject:v11];

      v17 = v11;
    }
  }

  userAlertScenes = [(DBUserAlertServer *)self userAlertScenes];
  identifier = [alertCopy identifier];
  v20 = [userAlertScenes objectForKey:identifier];

  if (v20)
  {
    [v20 invalidate];
    userAlertScenes2 = [(DBUserAlertServer *)self userAlertScenes];
    identifier2 = [alertCopy identifier];
    [userAlertScenes2 removeObjectForKey:identifier2];
  }

  [v11 invalidate];
}

uint64_t __35__DBUserAlertServer__dismissAlert___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 alert];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)_presentSystemAlert:(id)alert
{
  v10 = *MEMORY[0x277D85DE8];
  alertCopy = alert;
  v5 = DBLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    alert = [alertCopy alert];
    v8 = 138412290;
    v9 = alert;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "presenting system alert: %@", &v8, 0xCu);
  }

  systemPresenter = [(DBUserAlertServer *)self systemPresenter];
  if (objc_opt_respondsToSelector())
  {
    [systemPresenter alertServer:self wantsSystemPresentationForAlert:alertCopy];
  }
}

- (void)_dismissSystemAlert:(id)alert
{
  v10 = *MEMORY[0x277D85DE8];
  alertCopy = alert;
  v5 = DBLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    alert = [alertCopy alert];
    v8 = 138412290;
    v9 = alert;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "dismissing system alert: %@", &v8, 0xCu);
  }

  systemPresenter = [(DBUserAlertServer *)self systemPresenter];
  if (objc_opt_respondsToSelector())
  {
    [systemPresenter alertServer:self wantsSystemDismissalForAlert:alertCopy];
  }
}

- (void)_presentAlert:(id)alert overApplication:(id)application
{
  v15 = *MEMORY[0x277D85DE8];
  alertCopy = alert;
  applicationCopy = application;
  v8 = DBLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    alert = [alertCopy alert];
    v11 = 138412546;
    v12 = alert;
    v13 = 2112;
    v14 = applicationCopy;
    _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "presenting alert: %@ over: %@", &v11, 0x16u);
  }

  appPresenter = [(DBUserAlertServer *)self appPresenter];
  if (objc_opt_respondsToSelector())
  {
    [appPresenter alertServer:self wantsAppPresentationForAlert:alertCopy bundleID:applicationCopy];
  }
}

- (void)_dismissAlert:(id)alert overApplication:(id)application
{
  v15 = *MEMORY[0x277D85DE8];
  alertCopy = alert;
  applicationCopy = application;
  v8 = DBLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    alert = [alertCopy alert];
    v11 = 138412546;
    v12 = alert;
    v13 = 2112;
    v14 = applicationCopy;
    _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "dismissing alert: %@ over: %@", &v11, 0x16u);
  }

  appPresenter = [(DBUserAlertServer *)self appPresenter];
  if (objc_opt_respondsToSelector())
  {
    [appPresenter alertServer:self wantsAppDismissalForAlert:alertCopy bundleID:applicationCopy];
  }
}

- (DBSystemAlertPresenting)systemPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->_systemPresenter);

  return WeakRetained;
}

- (DBAppAlertPresenting)appPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->_appPresenter);

  return WeakRetained;
}

- (UIEdgeInsets)safeAreaInsets
{
  top = self->_safeAreaInsets.top;
  left = self->_safeAreaInsets.left;
  bottom = self->_safeAreaInsets.bottom;
  right = self->_safeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end