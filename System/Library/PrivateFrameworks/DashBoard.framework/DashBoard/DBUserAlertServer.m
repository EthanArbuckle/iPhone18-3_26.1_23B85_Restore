@interface DBUserAlertServer
- (DBAppAlertPresenting)appPresenter;
- (DBSystemAlertPresenting)systemPresenter;
- (DBUserAlertServer)initWithSafeAreaInsets:(UIEdgeInsets)a3 environmentConfiguration:(id)a4;
- (UIEdgeInsets)safeAreaInsets;
- (id)_sceneForAlert:(id)a3;
- (id)alertForBundleID:(id)a3;
- (void)_dismissAlert:(id)a3;
- (void)_dismissAlert:(id)a3 overApplication:(id)a4;
- (void)_dismissAppAlert:(id)a3;
- (void)_dismissSystemAlert:(id)a3;
- (void)_presentAlert:(id)a3 overApplication:(id)a4;
- (void)_presentSystemAlert:(id)a3;
- (void)alertService:(id)a3 wantsDismissalForAlert:(id)a4;
- (void)alertService:(id)a3 wantsPresentationForAlert:(id)a4 preferredPresentationStyle:(int64_t)a5;
- (void)invalidate;
- (void)updateAlertSceneFramesWithSafeAreaInsets:(UIEdgeInsets)a3;
@end

@implementation DBUserAlertServer

- (DBUserAlertServer)initWithSafeAreaInsets:(UIEdgeInsets)a3 environmentConfiguration:(id)a4
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v10 = a4;
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
    objc_storeStrong(&v11->_environmentConfiguration, a4);
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
  v3 = [(DBUserAlertServer *)self pendingSystemAlerts];
  [v3 enumerateObjectsUsingBlock:&__block_literal_global_4];

  v4 = [(DBUserAlertServer *)self pendingSystemAlerts];
  [v4 removeAllObjects];

  v5 = [(DBUserAlertServer *)self pendingAlertsForAppBundleID];
  [v5 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_91];

  v6 = [(DBUserAlertServer *)self pendingAlertsForAppBundleID];
  [v6 removeAllObjects];

  v7 = [(DBUserAlertServer *)self service];
  [v7 invalidate];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(DBUserAlertServer *)self userAlertScenes];
  v9 = [v8 allValues];

  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v9);
        }

        [*(*(&v16 + 1) + 8 * v13++) invalidate];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v14 = [(DBUserAlertServer *)self userAlertScenes];
  [v14 removeAllObjects];

  v15 = [(DBUserAlertServer *)self userAlertSceneWorkspace];
  [v15 invalidate];
}

- (id)alertForBundleID:(id)a3
{
  v4 = a3;
  v5 = [(DBUserAlertServer *)self pendingAlertsForAppBundleID];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [v6 firstObject];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)updateAlertSceneFramesWithSafeAreaInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  [(DBUserAlertServer *)self setSafeAreaInsets:?];
  v8 = [(DBUserAlertServer *)self environmentConfiguration];
  [v8 currentSafeViewAreaFrame];
  v10 = v9;
  v12 = v11;

  v13 = *MEMORY[0x277CBF348];
  v14 = *(MEMORY[0x277CBF348] + 8);
  v15 = [(DBUserAlertServer *)self pendingAlertsForAppBundleID];
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
  [v15 enumerateKeysAndObjectsUsingBlock:v16];
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

- (void)alertService:(id)a3 wantsPresentationForAlert:(id)a4 preferredPresentationStyle:(int64_t)a5
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = DBLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v7;
    _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "alertService:wantsPresentationForAlert: %@", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__DBUserAlertServer_alertService_wantsPresentationForAlert_preferredPresentationStyle___block_invoke;
  block[3] = &unk_278F01820;
  block[4] = self;
  v11 = v7;
  v12 = a5;
  v9 = v7;
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

- (void)alertService:(id)a3 wantsDismissalForAlert:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = DBLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v5;
    _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "alertService:wantsDismissalForAlert: %@", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__DBUserAlertServer_alertService_wantsDismissalForAlert___block_invoke;
  v8[3] = &unk_278F014B8;
  v9 = v5;
  v10 = self;
  v7 = v5;
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

- (id)_sceneForAlert:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = [a3 identifier];
  v5 = [(DBUserAlertServer *)self userAlertScenes];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [(DBUserAlertServer *)self environmentConfiguration];
    v10 = [v9 displayIdentity];
    v11 = [v8 stringWithFormat:@"UserAlert-%@-%@", v4, v10];

    v12 = DBLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = v4;
      _os_log_impl(&dword_248146000, v12, OS_LOG_TYPE_DEFAULT, "Creating local scene for user alert %{public}@", buf, 0xCu);
    }

    v13 = [(DBUserAlertServer *)self userAlertSceneWorkspace];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __36__DBUserAlertServer__sceneForAlert___block_invoke;
    v18[3] = &unk_278F01E30;
    v14 = v11;
    v19 = v14;
    v15 = [v13 createScene:v18];

    if (v15)
    {
      v16 = [(DBUserAlertServer *)self userAlertScenes];
      [v16 setObject:v15 forKey:v4];
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

- (void)_dismissAppAlert:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [v4 allowedApplicationBundleIDs];
  v5 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    v31 = *v35;
    *&v6 = 138412290;
    v28 = v6;
    v30 = v4;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v35 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v34 + 1) + 8 * i);
        v11 = [(DBUserAlertServer *)self pendingAlertsForAppBundleID];
        v12 = [v11 objectForKeyedSubscript:v10];

        if (v12)
        {
          v13 = [v12 firstObject];
          v14 = [v13 alert];
          v15 = v4;
          v16 = [v14 isEqual:v4];

          if (v16)
          {
            [v12 removeObject:v13];
            [(DBUserAlertServer *)self _dismissAlert:v13 overApplication:v10];
            v17 = v13;

            v18 = [v12 firstObject];
            if (v18)
            {
              [(DBUserAlertServer *)self _presentAlert:v18 overApplication:v10];
            }

            else
            {
              v22 = [(DBUserAlertServer *)self pendingAlertsForAppBundleID];
              [v22 removeObjectForKey:v10];
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

            v18 = v33;
            v17 = v8;
          }

          v8 = v17;
          v4 = v30;
        }

        else
        {
          v13 = DBLogForCategory(0);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = v28;
            v39 = v4;
            _os_log_error_impl(&dword_248146000, v13, OS_LOG_TYPE_ERROR, "Received dismissal request for unknown alert: %@", buf, 0xCu);
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

  v23 = [(DBUserAlertServer *)self userAlertScenes];
  v24 = [v4 identifier];
  v25 = [v23 objectForKey:v24];

  if (v25)
  {
    [v25 invalidate];
    v26 = [(DBUserAlertServer *)self userAlertScenes];
    v27 = [v4 identifier];
    [v26 removeObjectForKey:v27];
  }

  [v8 invalidate];
}

uint64_t __38__DBUserAlertServer__dismissAppAlert___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 alert];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)_dismissAlert:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DBUserAlertServer *)self pendingSystemAlerts];
  v6 = [v5 firstObject];

  v7 = [v6 alert];
  v8 = [v7 isEqual:v4];

  v9 = [(DBUserAlertServer *)self pendingSystemAlerts];
  v10 = v9;
  if (v8)
  {
    [v9 removeObject:v6];

    [(DBUserAlertServer *)self _dismissSystemAlert:v6];
    v11 = v6;
    v12 = [(DBUserAlertServer *)self pendingSystemAlerts];
    v13 = [v12 firstObject];

    if (v13)
    {
      [(DBUserAlertServer *)self _presentSystemAlert:v13];
    }
  }

  else
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __35__DBUserAlertServer__dismissAlert___block_invoke;
    v23[3] = &unk_278F01E58;
    v14 = v4;
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

      v16 = [(DBUserAlertServer *)self pendingSystemAlerts];
      [v16 removeObject:v11];

      v17 = v11;
    }
  }

  v18 = [(DBUserAlertServer *)self userAlertScenes];
  v19 = [v4 identifier];
  v20 = [v18 objectForKey:v19];

  if (v20)
  {
    [v20 invalidate];
    v21 = [(DBUserAlertServer *)self userAlertScenes];
    v22 = [v4 identifier];
    [v21 removeObjectForKey:v22];
  }

  [v11 invalidate];
}

uint64_t __35__DBUserAlertServer__dismissAlert___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 alert];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)_presentSystemAlert:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DBLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 alert];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "presenting system alert: %@", &v8, 0xCu);
  }

  v7 = [(DBUserAlertServer *)self systemPresenter];
  if (objc_opt_respondsToSelector())
  {
    [v7 alertServer:self wantsSystemPresentationForAlert:v4];
  }
}

- (void)_dismissSystemAlert:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DBLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 alert];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "dismissing system alert: %@", &v8, 0xCu);
  }

  v7 = [(DBUserAlertServer *)self systemPresenter];
  if (objc_opt_respondsToSelector())
  {
    [v7 alertServer:self wantsSystemDismissalForAlert:v4];
  }
}

- (void)_presentAlert:(id)a3 overApplication:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = DBLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 alert];
    v11 = 138412546;
    v12 = v9;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "presenting alert: %@ over: %@", &v11, 0x16u);
  }

  v10 = [(DBUserAlertServer *)self appPresenter];
  if (objc_opt_respondsToSelector())
  {
    [v10 alertServer:self wantsAppPresentationForAlert:v6 bundleID:v7];
  }
}

- (void)_dismissAlert:(id)a3 overApplication:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = DBLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 alert];
    v11 = 138412546;
    v12 = v9;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "dismissing alert: %@ over: %@", &v11, 0x16u);
  }

  v10 = [(DBUserAlertServer *)self appPresenter];
  if (objc_opt_respondsToSelector())
  {
    [v10 alertServer:self wantsAppDismissalForAlert:v6 bundleID:v7];
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