@interface DBDashboardWorkspaceOwner
- (DBDashboardWorkspaceOwner)initWithStateResolver:(id)a3 environment:(id)a4 sceneWorkspaceIdentifier:(id)a5 rootViewController:(id)a6 siriViewController:(id)a7;
- (DBEnvironment)environment;
- (DBFocusMovementActionHandling)focusMovementActionHandler;
- (DBNotificationSuspending)notificationSuspender;
- (DBUserAlertServer)userAlertServer;
- (DBWorkspace)workspace;
- (NSString)activeBaseApplicationBundleID;
- (id)_existingViewControllerForEntity:(id)a3;
- (unint64_t)session:(id)a3 policyForRequest:(id)a4;
- (void)_handleSuspendedActivationForEntity:(id)a3 changeItem:(id)a4 completion:(id)a5;
- (void)_newViewControllerForEntity:(id)a3 changeItem:(id)a4 persist:(BOOL)a5 completion:(id)a6;
- (void)_updateViewControllerForEntity:(id)a3 changeItem:(id)a4 oldEntity:(id)a5 completion:(id)a6;
- (void)alertServer:(id)a3 wantsAppDismissalForAlert:(id)a4 bundleID:(id)a5;
- (void)alertServer:(id)a3 wantsAppPresentationForAlert:(id)a4 bundleID:(id)a5;
- (void)handleEvent:(id)a3;
- (void)invalidate;
- (void)session:(id)a3 handleStateChangeRequest:(id)a4;
- (void)setBannerHeight:(double)a3;
- (void)setFocusAssertion:(id)a3;
- (void)setFocusMovementActionHandler:(id)a3;
- (void)setFocusedEntity:(id)a3;
- (void)setUserFocusAlertAssertion:(id)a3;
- (void)startObservingNavigationApplicationProcesses;
- (void)updateApplicationSceneFrames;
- (void)workspace:(id)a3 didBeginStateChangeSession:(id)a4;
- (void)workspace:(id)a3 didEndStateChangeSession:(id)a4;
@end

@implementation DBDashboardWorkspaceOwner

- (DBEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (DBNotificationSuspending)notificationSuspender
{
  WeakRetained = objc_loadWeakRetained(&self->_notificationSuspender);

  return WeakRetained;
}

- (DBUserAlertServer)userAlertServer
{
  WeakRetained = objc_loadWeakRetained(&self->_userAlertServer);

  return WeakRetained;
}

- (DBDashboardWorkspaceOwner)initWithStateResolver:(id)a3 environment:(id)a4 sceneWorkspaceIdentifier:(id)a5 rootViewController:(id)a6 siriViewController:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v28.receiver = self;
  v28.super_class = DBDashboardWorkspaceOwner;
  v18 = [(DBDashboardWorkspaceOwner *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_environment, v14);
    objc_storeStrong(&v19->_stateResolver, a3);
    objc_storeStrong(&v19->_rootViewController, a6);
    objc_storeStrong(&v19->_siriViewController, a7);
    v20 = objc_opt_new();
    entityIdentifierToViewControllerMap = v19->_entityIdentifierToViewControllerMap;
    v19->_entityIdentifierToViewControllerMap = v20;

    v22 = [_TtC9DashBoard23DBDashboardSceneManager alloc];
    WeakRetained = objc_loadWeakRetained(&v19->_environment);
    v24 = [v16 homeViewController];
    v25 = [(DBDashboardSceneManager *)v22 initWithEnvironment:WeakRetained iconProvider:v24 sceneWorkspaceIdentifier:v15];
    sceneManager = v19->_sceneManager;
    v19->_sceneManager = v25;
  }

  return v19;
}

- (void)invalidate
{
  self->_invalidated = 1;
  WeakRetained = objc_loadWeakRetained(&self->_workspace);
  [WeakRetained invalidate];

  [(DBWorkspaceStateChangeSession *)self->_currentSession invalidate];
  v4 = [(DBDashboardWorkspaceOwner *)self sceneManager];
  [v4 invalidate];
}

- (DBFocusMovementActionHandling)focusMovementActionHandler
{
  v2 = [(DBDashboardWorkspaceOwner *)self sceneManager];
  v3 = [v2 focusMovementActionHandler];

  return v3;
}

- (void)setFocusMovementActionHandler:(id)a3
{
  v4 = a3;
  v5 = [(DBDashboardWorkspaceOwner *)self sceneManager];
  [v5 setFocusMovementActionHandler:v4];
}

- (NSString)activeBaseApplicationBundleID
{
  WeakRetained = objc_loadWeakRetained(&self->_workspace);
  v3 = [WeakRetained state];

  objc_opt_class();
  v4 = [v3 baseEntity];
  if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = [v5 application];
    v7 = [v6 bundleIdentifier];
  }

  else
  {
    objc_opt_class();
    v8 = [v3 baseEntity];
    if (v8 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v6 = v8;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v9 = [v6 applicationToProxy];
      v7 = [v9 bundleIdentifier];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)setBannerHeight:(double)a3
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_bannerHeight = a3;
    WeakRetained = objc_loadWeakRetained(&self->_workspace);
    v6 = [WeakRetained state];
    v7 = [v6 baseEntity];

    if (([v7 isApplicationEntity] & 1) != 0 || objc_msgSend(v7, "isProxiedApplicationEntity"))
    {
      v8 = [(DBDashboardWorkspaceOwner *)self sceneManager];
      v9 = [v8 sceneForApplicationEntity:v7];

      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __45__DBDashboardWorkspaceOwner_setBannerHeight___block_invoke;
      v10[3] = &__block_descriptor_40_e33_v16__0__FBSMutableSceneSettings_8l;
      *&v10[4] = a3;
      [v9 updateSettings:v10];
    }
  }
}

void __45__DBDashboardWorkspaceOwner_setBannerHeight___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v7 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v7;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  [v6 setBannerHeight:*(a1 + 32)];
}

- (void)startObservingNavigationApplicationProcesses
{
  v2 = [(DBDashboardWorkspaceOwner *)self sceneManager];
  [v2 startObservingNavigationApplicationProcesses];
}

- (void)updateApplicationSceneFrames
{
  v2 = [(DBDashboardWorkspaceOwner *)self sceneManager];
  [v2 updateApplicationSceneFrames];
}

- (void)alertServer:(id)a3 wantsAppPresentationForAlert:(id)a4 bundleID:(id)a5
{
  v18 = a4;
  v7 = [(NSMutableDictionary *)self->_entityIdentifierToViewControllerMap objectForKey:a5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 setUserAlert:v18];
    v8 = [v7 entity];
    v9 = [v8 identifier];
    v10 = [(DBDashboardWorkspaceOwner *)self focusedEntity];
    v11 = [v10 identifier];
    v12 = [v9 isEqualToString:v11];

    if (v12)
    {
      v13 = [(DBDashboardWorkspaceOwner *)self environment];
      v14 = [v13 focusController];

      v15 = [v18 window];
      v16 = [v18 scene];
      v17 = [v14 deferFocusToWindow:v15 scene:v16 priority:2 reason:@"appUserAlert"];

      [(DBDashboardWorkspaceOwner *)self setUserAlertFocusAssertion:v17];
    }
  }
}

- (void)alertServer:(id)a3 wantsAppDismissalForAlert:(id)a4 bundleID:(id)a5
{
  v11 = [(NSMutableDictionary *)self->_entityIdentifierToViewControllerMap objectForKey:a5, a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v11 setUserAlert:0];
    v6 = [v11 entity];
    v7 = [v6 identifier];
    v8 = [(DBDashboardWorkspaceOwner *)self focusedEntity];
    v9 = [v8 identifier];
    v10 = [v7 isEqualToString:v9];

    if (v10)
    {
      [(DBDashboardWorkspaceOwner *)self setUserAlertFocusAssertion:0];
    }
  }
}

- (void)workspace:(id)a3 didBeginStateChangeSession:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = DBLogForCategory(8uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "Beginning session: %@", &v8, 0xCu);
  }

  currentSession = self->_currentSession;
  self->_currentSession = v5;
}

- (void)workspace:(id)a3 didEndStateChangeSession:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = DBLogForCategory(8uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "Ended session: %@", &v8, 0xCu);
  }

  currentSession = self->_currentSession;
  self->_currentSession = 0;
}

- (unint64_t)session:(id)a3 policyForRequest:(id)a4
{
  if (self->_invalidated)
  {
    return 1;
  }

  [a3 owner];

  return 0;
}

- (void)session:(id)a3 handleStateChangeRequest:(id)a4
{
  v122 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_invalidated)
  {
    [v6 invalidate];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_workspace);
    v9 = [WeakRetained state];

    if (!v9)
    {
      v10 = objc_alloc_init(DBMutableDashboardWorkspaceState);
      v11 = +[DBDashboardHomescreenEntity entity];
      [(DBMutableDashboardWorkspaceState *)v10 setBaseEntity:v11];

      v9 = [(DBMutableDashboardWorkspaceState *)v10 copy];
    }

    v86 = [(DBDashboardWorkspaceStateResolver *)self->_stateResolver computeNewStateFromState:v9 andRequest:v7];
    v84 = [v86 state];
    [v6 setState:?];
    v12 = dispatch_group_create();
    v13 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v121 = v6;
      _os_log_impl(&dword_248146000, v13, OS_LOG_TYPE_INFO, "Starting display layout publisher transition for workspace change session: %@", buf, 0xCu);
    }

    v14 = [(DBDashboardWorkspaceOwner *)self environment];
    v15 = [v14 environmentConfiguration];
    v16 = [v15 displayLayoutPublisher];
    v82 = [v16 transitionAssertionWithReason:@"Workspace Change"];

    v17 = [v84 baseEntity];
    v18 = [v84 stackedEntity];
    v19 = [v86 activateSuspendedEntity];
    v20 = [v9 baseEntity];

    v85 = v18;
    v83 = v19;
    if (v17 != v20)
    {
      dispatch_group_enter(v12);
      v21 = [v17 identifier];
      v22 = [v9 baseEntity];
      v23 = [v22 identifier];
      v24 = [v21 isEqualToString:v23];

      if (v24)
      {
        v25 = DBLogForCategory(8uLL);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_248146000, v25, OS_LOG_TYPE_DEFAULT, "[WorkspaceOwner] Starting update for base view controller", buf, 2u);
        }

        v26 = [v86 changeItemForEntity:v17];
        v27 = [v9 baseEntity];
        v118[0] = MEMORY[0x277D85DD0];
        v118[1] = 3221225472;
        v118[2] = __62__DBDashboardWorkspaceOwner_session_handleStateChangeRequest___block_invoke;
        v118[3] = &unk_278F01580;
        v119 = v12;
        [(DBDashboardWorkspaceOwner *)self _updateViewControllerForEntity:v17 changeItem:v26 oldEntity:v27 completion:v118];

        v28 = v119;
      }

      else if ([v17 isHomescreenEntity])
      {
        v80 = v7;
        entityIdentifierToViewControllerMap = self->_entityIdentifierToViewControllerMap;
        v30 = [v9 baseEntity];
        v31 = [v30 identifier];
        [(NSMutableDictionary *)entityIdentifierToViewControllerMap removeObjectForKey:v31];

        v32 = [MEMORY[0x277CCAD78] UUID];
        v33 = [v32 UUIDString];

        v34 = [(DBDashboardWorkspaceOwner *)self notificationSuspender];
        [v34 setSuspended:1 cancellingCurrent:1 forReason:v33];

        v35 = DBLogForCategory(8uLL);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_248146000, v35, OS_LOG_TYPE_DEFAULT, "[WorkspaceOwner] Starting dismissal of base view controller", buf, 2u);
        }

        rootViewController = self->_rootViewController;
        v37 = [v86 changeItemForEntity:v17];
        v38 = [v37 prefersAnimation];
        v115[0] = MEMORY[0x277D85DD0];
        v115[1] = 3221225472;
        v115[2] = __62__DBDashboardWorkspaceOwner_session_handleStateChangeRequest___block_invoke_218;
        v115[3] = &unk_278F015F8;
        v115[4] = self;
        v116 = v33;
        v117 = v12;
        v28 = v33;
        [(DBDashboardRootViewController *)rootViewController dismissBaseViewControllerAnimated:v38 completion:v115];

        v7 = v80;
      }

      else
      {
        v39 = [v86 changeItemForEntity:v17];
        v40 = DBLogForCategory(8uLL);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_248146000, v40, OS_LOG_TYPE_DEFAULT, "[WorkspaceOwner] Starting presentation of base view controller", buf, 2u);
        }

        v110[0] = MEMORY[0x277D85DD0];
        v110[1] = 3221225472;
        v110[2] = __62__DBDashboardWorkspaceOwner_session_handleStateChangeRequest___block_invoke_219;
        v110[3] = &unk_278F04418;
        v110[4] = self;
        v111 = v17;
        v112 = v39;
        v113 = v85;
        v114 = v12;
        v28 = v39;
        [(DBDashboardWorkspaceOwner *)self _newViewControllerForEntity:v111 changeItem:v28 completion:v110];
      }

      v19 = v83;

      v18 = v85;
    }

    v41 = [v9 stackedEntity];

    if (v18 != v41)
    {
      dispatch_group_enter(v12);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __62__DBDashboardWorkspaceOwner_session_handleStateChangeRequest___block_invoke_225;
      aBlock[3] = &unk_278F014B8;
      v42 = v18;
      v108 = v42;
      v109 = self;
      v79 = _Block_copy(aBlock);
      objc_opt_class();
      v43 = v42;
      v81 = v7;
      if (v43 && (objc_opt_isKindOfClass() & 1) != 0)
      {
        -[DBSiriViewController setTouchToDismissEnabled:forRequester:](self->_siriViewController, "setTouchToDismissEnabled:forRequester:", [v43 isFloating], @"FloatingSiri");
        v78 = v43;
      }

      else
      {

        v78 = 0;
      }

      v44 = [v43 identifier];
      v45 = [v9 stackedEntity];
      v46 = [v45 identifier];
      v47 = [v44 isEqualToString:v46];

      if (v47)
      {
        v48 = DBLogForCategory(8uLL);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_248146000, v48, OS_LOG_TYPE_DEFAULT, "[WorkspaceOwner] Starting update for stacked view controller", buf, 2u);
        }

        v49 = [v86 changeItemForEntity:v43];
        v50 = [v9 stackedEntity];
        v104[0] = MEMORY[0x277D85DD0];
        v104[1] = 3221225472;
        v104[2] = __62__DBDashboardWorkspaceOwner_session_handleStateChangeRequest___block_invoke_229;
        v104[3] = &unk_278F02D68;
        v106 = v79;
        v105 = v12;
        [(DBDashboardWorkspaceOwner *)self _updateViewControllerForEntity:v43 changeItem:v49 oldEntity:v50 completion:v104];

        objc_opt_class();
        v51 = [v9 stackedEntity];
        v7 = v81;
        if (v51)
        {
          v19 = v83;
          if (objc_opt_isKindOfClass())
          {
            v52 = v51;
          }

          else
          {
            v52 = 0;
          }
        }

        else
        {
          v52 = 0;
          v19 = v83;
        }

        if ([v52 isFloating])
        {
          v67 = self->_entityIdentifierToViewControllerMap;
          v68 = [v17 identifier];
          v69 = [(NSMutableDictionary *)v67 objectForKeyedSubscript:v68];

          v19 = v83;
          [v69 deactivateSceneWithReasonMask:16];
        }

        v56 = v106;
        v55 = v79;
      }

      else
      {
        if (v43)
        {
          v53 = [v86 changeItemForEntity:v43];
          v54 = DBLogForCategory(8uLL);
          v7 = v81;
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_248146000, v54, OS_LOG_TYPE_DEFAULT, "[WorkspaceOwner] Starting presentation of stacked view controller", buf, 2u);
          }

          v94[0] = MEMORY[0x277D85DD0];
          v94[1] = 3221225472;
          v94[2] = __62__DBDashboardWorkspaceOwner_session_handleStateChangeRequest___block_invoke_231;
          v94[3] = &unk_278F04468;
          v94[4] = self;
          v95 = v17;
          v96 = v43;
          v97 = v53;
          v55 = v79;
          v99 = v79;
          v98 = v12;
          v56 = v53;
          [(DBDashboardWorkspaceOwner *)self _newViewControllerForEntity:v96 changeItem:v56 completion:v94];

          v57 = v95;
        }

        else
        {
          v58 = self->_entityIdentifierToViewControllerMap;
          v59 = [v9 stackedEntity];
          v60 = [v59 identifier];
          [(NSMutableDictionary *)v58 removeObjectForKey:v60];

          v61 = [MEMORY[0x277CCAD78] UUID];
          v62 = [v61 UUIDString];

          v63 = [(DBDashboardWorkspaceOwner *)self notificationSuspender];
          [v63 setSuspended:1 cancellingCurrent:0 forReason:v62];

          v64 = DBLogForCategory(8uLL);
          v7 = v81;
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_248146000, v64, OS_LOG_TYPE_DEFAULT, "[WorkspaceOwner] Starting dismissal of stacked view controller", buf, 2u);
          }

          v65 = self->_rootViewController;
          v100[0] = MEMORY[0x277D85DD0];
          v100[1] = 3221225472;
          v100[2] = __62__DBDashboardWorkspaceOwner_session_handleStateChangeRequest___block_invoke_230;
          v100[3] = &unk_278F03570;
          v103 = v79;
          v100[4] = self;
          v101 = v62;
          v102 = v12;
          v66 = v62;
          v55 = v79;
          v56 = v66;
          [(DBDashboardRootViewController *)v65 dismissStackedViewControllerAnimated:1 completion:v100];

          v57 = v103;
        }

        v19 = v83;
      }

      v18 = v85;
    }

    if ([v17 isHomescreenEntity])
    {
      v70 = 0;
    }

    else
    {
      v70 = v17;
    }

    v71 = v70;
    if (v18 && ([v18 isSiriEntity] & 1) == 0)
    {
      v72 = v18;

      v71 = v72;
    }

    if (v19)
    {
      dispatch_group_enter(v12);
      v73 = [v86 changeItemForEntity:v19];
      v74 = DBLogForCategory(8uLL);
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_248146000, v74, OS_LOG_TYPE_DEFAULT, "[WorkspaceOwner] Starting suspended activation", buf, 2u);
      }

      v92[0] = MEMORY[0x277D85DD0];
      v92[1] = 3221225472;
      v92[2] = __62__DBDashboardWorkspaceOwner_session_handleStateChangeRequest___block_invoke_233;
      v92[3] = &unk_278F01580;
      v93 = v12;
      [(DBDashboardWorkspaceOwner *)self _handleSuspendedActivationForEntity:v19 changeItem:v73 completion:v92];

      v18 = v85;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__DBDashboardWorkspaceOwner_session_handleStateChangeRequest___block_invoke_234;
    block[3] = &unk_278F02130;
    block[4] = self;
    v88 = v71;
    v89 = v6;
    v90 = v82;
    v91 = v7;
    v75 = v82;
    v76 = v19;
    v77 = v71;
    dispatch_group_notify(v12, MEMORY[0x277D85CD0], block);
  }
}

void __62__DBDashboardWorkspaceOwner_session_handleStateChangeRequest___block_invoke(uint64_t a1)
{
  v2 = DBLogForCategory(8uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_248146000, v2, OS_LOG_TYPE_DEFAULT, "[WorkspaceOwner] Update for base view controller completed", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __62__DBDashboardWorkspaceOwner_session_handleStateChangeRequest___block_invoke_218(uint64_t a1)
{
  v2 = DBLogForCategory(8uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_248146000, v2, OS_LOG_TYPE_DEFAULT, "[WorkspaceOwner] Dismissal of base view controller completed", v4, 2u);
  }

  v3 = [*(a1 + 32) notificationSuspender];
  [v3 setSuspended:0 forReason:*(a1 + 40)];

  dispatch_group_leave(*(a1 + 48));
}

void __62__DBDashboardWorkspaceOwner_session_handleStateChangeRequest___block_invoke_219(id *a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CCAD78] UUID];
  v5 = [v4 UUIDString];

  v6 = [a1[4] notificationSuspender];
  [v6 setSuspended:1 cancellingCurrent:1 forReason:v5];

  if (([a1[5] isApplicationEntity] & 1) != 0 || objc_msgSend(a1[5], "isProxiedApplicationEntity"))
  {
    objc_opt_class();
    v7 = a1[6];
    if (v7 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = [v8 activationSettings];
    v10 = [v9 launchSource];
  }

  else
  {
    v10 = 0;
  }

  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
  [v11 postNotificationName:@"CARApplicationDidLaunchNotification" object:v12];

  if (a1[7])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v13 = a1[7];
      if (v13 && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      if ([v14 isFloating])
      {
        v15 = 0;
      }

      else
      {
        v15 = 16;
      }
    }

    else
    {
      v15 = 128;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a1[4] + 4);
  v17 = [a1[6] prefersAnimation];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __62__DBDashboardWorkspaceOwner_session_handleStateChangeRequest___block_invoke_2;
  v21[3] = &unk_278F03FB8;
  v18 = a1[4];
  v22 = v3;
  v23 = v18;
  v26 = v15;
  v24 = v5;
  v25 = a1[8];
  v19 = v5;
  v20 = v3;
  [v16 presentBaseViewController:v20 animated:v17 launchSource:v10 completion:v21];
}

void __62__DBDashboardWorkspaceOwner_session_handleStateChangeRequest___block_invoke_2(uint64_t a1)
{
  v2 = DBLogForCategory(8uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_248146000, v2, OS_LOG_TYPE_DEFAULT, "[WorkspaceOwner] Presentation of base view controller completed", v4, 2u);
  }

  [*(a1 + 32) deactivateSceneWithReasonMask:*(a1 + 64)];
  v3 = [*(a1 + 40) notificationSuspender];
  [v3 setSuspended:0 forReason:*(a1 + 48)];

  dispatch_group_leave(*(a1 + 56));
}

void __62__DBDashboardWorkspaceOwner_session_handleStateChangeRequest___block_invoke_225(uint64_t a1)
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v3 = [*(a1 + 40) notificationSuspender];
  [v3 setSuspended:isKindOfClass & 1 forReason:@"DBNotificationSuspensionReasonAssistant"];
}

void __62__DBDashboardWorkspaceOwner_session_handleStateChangeRequest___block_invoke_229(uint64_t a1)
{
  v2 = DBLogForCategory(8uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_248146000, v2, OS_LOG_TYPE_DEFAULT, "[WorkspaceOwner] Update for stacked view controller completed", v3, 2u);
  }

  (*(*(a1 + 40) + 16))();
  dispatch_group_leave(*(a1 + 32));
}

void __62__DBDashboardWorkspaceOwner_session_handleStateChangeRequest___block_invoke_230(uint64_t a1)
{
  v2 = DBLogForCategory(8uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_248146000, v2, OS_LOG_TYPE_DEFAULT, "[WorkspaceOwner] Dismissal of stacked view controller completed", v4, 2u);
  }

  (*(*(a1 + 56) + 16))();
  v3 = [*(a1 + 32) notificationSuspender];
  [v3 setSuspended:0 forReason:*(a1 + 40)];

  dispatch_group_leave(*(a1 + 48));
}

void __62__DBDashboardWorkspaceOwner_session_handleStateChangeRequest___block_invoke_231(id *a1, void *a2)
{
  v3 = MEMORY[0x277CCAD78];
  v4 = a2;
  v5 = [v3 UUID];
  v6 = [v5 UUIDString];

  v7 = [a1[4] notificationSuspender];
  [v7 setSuspended:1 cancellingCurrent:1 forReason:v6];

  v8 = *(a1[4] + 7);
  v9 = [a1[5] identifier];
  v10 = [v8 objectForKeyedSubscript:v9];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = 16;
  }

  else
  {
    v11 = 128;
  }

  v12 = *(a1[4] + 4);
  v13 = [a1[7] prefersAnimation];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__DBDashboardWorkspaceOwner_session_handleStateChangeRequest___block_invoke_2_232;
  v16[3] = &unk_278F04440;
  v17 = v10;
  v22 = v11;
  v21 = a1[9];
  v18 = a1[4];
  v19 = v6;
  v20 = a1[8];
  v14 = v6;
  v15 = v10;
  [v12 presentStackedViewController:v4 animated:v13 completion:v16];
}

void __62__DBDashboardWorkspaceOwner_session_handleStateChangeRequest___block_invoke_2_232(uint64_t a1)
{
  v2 = DBLogForCategory(8uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_248146000, v2, OS_LOG_TYPE_DEFAULT, "[WorkspaceOwner] Presentation of stacked view controller completed", v4, 2u);
  }

  [*(a1 + 32) deactivateSceneWithReasonMask:*(a1 + 72)];
  (*(*(a1 + 64) + 16))();
  v3 = [*(a1 + 40) notificationSuspender];
  [v3 setSuspended:0 forReason:*(a1 + 48)];

  dispatch_group_leave(*(a1 + 56));
}

void __62__DBDashboardWorkspaceOwner_session_handleStateChangeRequest___block_invoke_233(uint64_t a1)
{
  v2 = DBLogForCategory(8uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_248146000, v2, OS_LOG_TYPE_DEFAULT, "[WorkspaceOwner] Suspended activation completed", v3, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __62__DBDashboardWorkspaceOwner_session_handleStateChangeRequest___block_invoke_234(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setFocusedEntity:*(a1 + 40)];
  [*(a1 + 48) invalidate];
  v2 = DBLogForCategory(8uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 48);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_248146000, v2, OS_LOG_TYPE_INFO, "Invalidating display layout publisher transition for workspace change session: %@", &v6, 0xCu);
  }

  [*(a1 + 56) invalidate];
  v4 = [*(a1 + 64) completionHandler];

  if (v4)
  {
    v5 = [*(a1 + 64) completionHandler];
    v5[2]();
  }
}

- (void)handleEvent:(id)a3
{
  if (!self->_invalidated)
  {
    [(DBDashboardRootViewController *)self->_rootViewController handleEvent:a3];
  }
}

- (void)setFocusAssertion:(id)a3
{
  v5 = a3;
  focusAssertion = self->_focusAssertion;
  p_focusAssertion = &self->_focusAssertion;
  v6 = focusAssertion;
  if (focusAssertion != v5)
  {
    v9 = v5;
    [(DBFocusAssertion *)v6 invalidate];
    objc_storeStrong(p_focusAssertion, a3);
    v5 = v9;
  }

  MEMORY[0x2821F96F8](v6, v5);
}

- (void)setUserFocusAlertAssertion:(id)a3
{
  v5 = a3;
  userAlertFocusAssertion = self->_userAlertFocusAssertion;
  p_userAlertFocusAssertion = &self->_userAlertFocusAssertion;
  v6 = userAlertFocusAssertion;
  if (userAlertFocusAssertion != v5)
  {
    v9 = v5;
    [(DBFocusAssertion *)v6 invalidate];
    objc_storeStrong(p_userAlertFocusAssertion, a3);
    v5 = v9;
  }

  MEMORY[0x2821F96F8](v6, v5);
}

- (void)setFocusedEntity:(id)a3
{
  v26 = a3;
  p_focusedEntity = &self->_focusedEntity;
  v6 = self->_focusedEntity;
  objc_storeStrong(&self->_focusedEntity, a3);
  v7 = [(DBDashboardEntity *)self->_focusedEntity identifier];
  v8 = [(DBDashboardEntity *)v6 identifier];
  v9 = [v7 isEqualToString:v8];

  if ((v9 & 1) == 0)
  {
    v10 = [(DBDashboardWorkspaceOwner *)self environment];
    v11 = [v10 focusController];

    focusedEntity = self->_focusedEntity;
    if (focusedEntity)
    {
      if ([(DBDashboardEntity *)focusedEntity isApplicationEntity]|| [(DBDashboardEntity *)*p_focusedEntity isProxiedApplicationEntity])
      {
        v13 = [(DBDashboardWorkspaceOwner *)self sceneManager];
        v14 = [v13 sceneForApplicationEntity:v26];

        if (v14)
        {
          v15 = [v11 deferFocusToScene:v14 priority:1 reason:@"app"];
          [(DBDashboardWorkspaceOwner *)self setFocusAssertion:v15];
        }
      }

      v16 = [(DBDashboardEntity *)*p_focusedEntity isApplicationEntity];
      v17 = *p_focusedEntity;
      if (v16)
      {
        v18 = [(DBDashboardEntity *)v17 application];
        goto LABEL_12;
      }

      if ([(DBDashboardEntity *)v17 isProxiedApplicationEntity])
      {
        v18 = [(DBDashboardEntity *)*p_focusedEntity applicationToProxy];
LABEL_12:
        v19 = v18;
        v20 = [v18 bundleIdentifier];

        [(DBDashboardWorkspaceOwner *)self setUserAlertFocusAssertion:0];
        if (v20)
        {
          v21 = [(DBDashboardWorkspaceOwner *)self userAlertServer];
          v22 = [v21 alertForBundleID:v20];

          if (v22)
          {
            v23 = [v22 window];
            v24 = [v22 scene];
            v25 = [v11 deferFocusToWindow:v23 scene:v24 priority:2 reason:@"appUserAlert"];

            [(DBDashboardWorkspaceOwner *)self setUserAlertFocusAssertion:v25];
          }
        }

        goto LABEL_17;
      }

      [(DBDashboardWorkspaceOwner *)self setUserAlertFocusAssertion:0];
    }

    else
    {
      [(DBDashboardWorkspaceOwner *)self setFocusAssertion:0];
    }

LABEL_17:
  }
}

- (id)_existingViewControllerForEntity:(id)a3
{
  entityIdentifierToViewControllerMap = self->_entityIdentifierToViewControllerMap;
  v4 = [a3 identifier];
  v5 = [(NSMutableDictionary *)entityIdentifierToViewControllerMap objectForKey:v4];

  return v5;
}

- (void)_newViewControllerForEntity:(id)a3 changeItem:(id)a4 persist:(BOOL)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v48 = a6;
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = __Block_byref_object_copy__8;
  v67 = __Block_byref_object_dispose__8;
  v68 = 0;
  v11 = dispatch_group_create();
  if ([v9 isApplicationEntity])
  {
    WeakRetained = v9;
    v47 = v10;
    v46 = v10;
    v13 = [(DBDashboardWorkspaceOwner *)self sceneManager];
    v14 = [v13 sceneForApplicationEntity:WeakRetained];

    v15 = [DBApplicationViewController alloc];
    v16 = [(DBDashboardWorkspaceOwner *)self environment];
    v17 = [(DBApplicationViewController *)v15 initWithScene:v14 entity:WeakRetained environment:v16];

    v18 = [(DBDashboardWorkspaceOwner *)self environment];
    [v18 statusBarInsets];
    [(DBApplicationViewController *)v17 setAdditionalSafeAreaInsets:?];

    v19 = [(DBDashboardWorkspaceOwner *)self userAlertServer];
    v20 = [WeakRetained application];
    v21 = [v20 bundleIdentifier];
    v22 = [v19 alertForBundleID:v21];

    if (v22)
    {
      [(DBApplicationViewController *)v17 setUserAlert:v22];
    }

    dispatch_group_enter(v11);
    v23 = [v46 activationSettings];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __87__DBDashboardWorkspaceOwner__newViewControllerForEntity_changeItem_persist_completion___block_invoke;
    v59[3] = &unk_278F04490;
    v62 = &v63;
    v24 = v17;
    v60 = v24;
    v61 = v11;
    [(DBApplicationViewController *)v24 foregroundSceneWithSettings:v23 completion:v59];

LABEL_9:
    v10 = v47;
    goto LABEL_10;
  }

  if ([v9 isProxiedApplicationEntity])
  {
    WeakRetained = v9;
    v47 = v10;
    v46 = v10;
    v25 = [(DBDashboardWorkspaceOwner *)self sceneManager];
    v26 = [v25 sceneForApplicationEntity:WeakRetained];

    v27 = [DBApplicationViewController alloc];
    v28 = [(DBDashboardWorkspaceOwner *)self environment];
    v29 = [(DBApplicationViewController *)v27 initWithScene:v26 entity:WeakRetained environment:v28];

    v30 = [(DBDashboardWorkspaceOwner *)self environment];
    [v30 statusBarInsets];
    [(DBApplicationViewController *)v29 setAdditionalSafeAreaInsets:?];
    v45 = v26;

    v31 = [(DBDashboardWorkspaceOwner *)self userAlertServer];
    v32 = [WeakRetained proxyEntity];
    v33 = [v32 application];
    v34 = [v33 bundleIdentifier];
    v35 = [v31 alertForBundleID:v34];

    if (v35)
    {
      [(DBApplicationViewController *)v29 setUserAlert:v35];
    }

    dispatch_group_enter(v11);
    v36 = [v46 activationSettings];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __87__DBDashboardWorkspaceOwner__newViewControllerForEntity_changeItem_persist_completion___block_invoke_2;
    v55[3] = &unk_278F04490;
    v58 = &v63;
    v37 = v29;
    v56 = v37;
    v57 = v11;
    [(DBApplicationViewController *)v37 foregroundSceneWithSettings:v36 completion:v55];

    goto LABEL_9;
  }

  if ([v9 isSiriEntity])
  {
    v40 = v64;
    v41 = self->_siriViewController;
    WeakRetained = v40[5];
    v40[5] = v41;
  }

  else
  {
    if (![v9 isOEMPunchthroughEntity])
    {
      goto LABEL_11;
    }

    v42 = [DBOEMPunchthroughViewController alloc];
    WeakRetained = objc_loadWeakRetained(&self->_environment);
    v43 = [(DBOEMPunchthroughViewController *)v42 initWithOEMPunchthroughEntity:v9 environment:WeakRetained];
    v44 = v64[5];
    v64[5] = v43;
  }

LABEL_10:

LABEL_11:
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__DBDashboardWorkspaceOwner__newViewControllerForEntity_changeItem_persist_completion___block_invoke_3;
  block[3] = &unk_278F044B8;
  v54 = a5;
  block[4] = self;
  v51 = v9;
  v53 = &v63;
  v52 = v48;
  v38 = v48;
  v39 = v9;
  dispatch_group_notify(v11, MEMORY[0x277D85CD0], block);

  _Block_object_dispose(&v63, 8);
}

void __87__DBDashboardWorkspaceOwner__newViewControllerForEntity_changeItem_persist_completion___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 32));
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

void __87__DBDashboardWorkspaceOwner__newViewControllerForEntity_changeItem_persist_completion___block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 32));
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

uint64_t __87__DBDashboardWorkspaceOwner__newViewControllerForEntity_changeItem_persist_completion___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = *(*(*(a1 + 56) + 8) + 40);
    v3 = *(*(a1 + 32) + 56);
    v4 = [*(a1 + 40) identifier];
    [v3 setObject:v2 forKeyedSubscript:v4];
  }

  v5 = *(*(a1 + 48) + 16);

  return v5();
}

- (void)_updateViewControllerForEntity:(id)a3 changeItem:(id)a4 oldEntity:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = dispatch_group_create();
  entityIdentifierToViewControllerMap = self->_entityIdentifierToViewControllerMap;
  v16 = [v13 identifier];

  v17 = [(NSMutableDictionary *)entityIdentifierToViewControllerMap objectForKeyedSubscript:v16];

  if (([v10 isApplicationEntity] & 1) != 0 || objc_msgSend(v10, "isProxiedApplicationEntity"))
  {
    v18 = v17;
    v19 = v11;
    v20 = [v19 activationSettings];

    if (v20)
    {
      dispatch_group_enter(v14);
      v21 = [v19 activationSettings];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __92__DBDashboardWorkspaceOwner__updateViewControllerForEntity_changeItem_oldEntity_completion___block_invoke;
      v29[3] = &unk_278F01580;
      v30 = v14;
      [v18 activateSceneWithSettings:v21 completion:v29];
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__DBDashboardWorkspaceOwner__updateViewControllerForEntity_changeItem_oldEntity_completion___block_invoke_2;
  block[3] = &unk_278F044E0;
  block[4] = self;
  v26 = v10;
  v27 = v17;
  v28 = v12;
  v22 = v12;
  v23 = v17;
  v24 = v10;
  dispatch_group_notify(v14, MEMORY[0x277D85CD0], block);
}

uint64_t __92__DBDashboardWorkspaceOwner__updateViewControllerForEntity_changeItem_oldEntity_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 32) + 56);
  v4 = [*(a1 + 40) identifier];
  [v3 setObject:v2 forKeyedSubscript:v4];

  v5 = *(*(a1 + 56) + 16);

  return v5();
}

- (void)_handleSuspendedActivationForEntity:(id)a3 changeItem:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = dispatch_group_create();
  entityIdentifierToViewControllerMap = self->_entityIdentifierToViewControllerMap;
  v13 = [v8 identifier];
  v14 = [(NSMutableDictionary *)entityIdentifierToViewControllerMap objectForKeyedSubscript:v13];

  if (!v14)
  {
    dispatch_group_enter(v11);
    v19 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v19, OS_LOG_TYPE_DEFAULT, "[WorkspaceOwner] Using transient view controlller for suspended activation", buf, 2u);
    }

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __87__DBDashboardWorkspaceOwner__handleSuspendedActivationForEntity_changeItem_completion___block_invoke_239;
    v23[3] = &unk_278F04508;
    v18 = &v24;
    v24 = v11;
    [(DBDashboardWorkspaceOwner *)self _newViewControllerForEntity:v8 changeItem:v9 persist:0 completion:v23];
    goto LABEL_10;
  }

  if (([v8 isApplicationEntity] & 1) != 0 || objc_msgSend(v8, "isProxiedApplicationEntity"))
  {
    v15 = v9;
    v16 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v16, OS_LOG_TYPE_DEFAULT, "[WorkspaceOwner] Delivering suspended activation to existing view controller", buf, 2u);
    }

    dispatch_group_enter(v11);
    v17 = [v15 activationSettings];

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __87__DBDashboardWorkspaceOwner__handleSuspendedActivationForEntity_changeItem_completion___block_invoke;
    v25[3] = &unk_278F01580;
    v18 = &v26;
    v26 = v11;
    [v14 foregroundSceneWithSettings:v17 completion:v25];

LABEL_10:
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__DBDashboardWorkspaceOwner__handleSuspendedActivationForEntity_changeItem_completion___block_invoke_2;
  block[3] = &unk_278F02678;
  v22 = v10;
  v20 = v10;
  dispatch_group_notify(v11, MEMORY[0x277D85CD0], block);
}

- (DBWorkspace)workspace
{
  WeakRetained = objc_loadWeakRetained(&self->_workspace);

  return WeakRetained;
}

@end