@interface DBDashboardWorkspaceOwner
- (DBDashboardWorkspaceOwner)initWithStateResolver:(id)resolver environment:(id)environment sceneWorkspaceIdentifier:(id)identifier rootViewController:(id)controller siriViewController:(id)viewController;
- (DBEnvironment)environment;
- (DBFocusMovementActionHandling)focusMovementActionHandler;
- (DBNotificationSuspending)notificationSuspender;
- (DBUserAlertServer)userAlertServer;
- (DBWorkspace)workspace;
- (NSString)activeBaseApplicationBundleID;
- (id)_existingViewControllerForEntity:(id)entity;
- (unint64_t)session:(id)session policyForRequest:(id)request;
- (void)_handleSuspendedActivationForEntity:(id)entity changeItem:(id)item completion:(id)completion;
- (void)_newViewControllerForEntity:(id)entity changeItem:(id)item persist:(BOOL)persist completion:(id)completion;
- (void)_updateViewControllerForEntity:(id)entity changeItem:(id)item oldEntity:(id)oldEntity completion:(id)completion;
- (void)alertServer:(id)server wantsAppDismissalForAlert:(id)alert bundleID:(id)d;
- (void)alertServer:(id)server wantsAppPresentationForAlert:(id)alert bundleID:(id)d;
- (void)handleEvent:(id)event;
- (void)invalidate;
- (void)session:(id)session handleStateChangeRequest:(id)request;
- (void)setBannerHeight:(double)height;
- (void)setFocusAssertion:(id)assertion;
- (void)setFocusMovementActionHandler:(id)handler;
- (void)setFocusedEntity:(id)entity;
- (void)setUserFocusAlertAssertion:(id)assertion;
- (void)startObservingNavigationApplicationProcesses;
- (void)updateApplicationSceneFrames;
- (void)workspace:(id)workspace didBeginStateChangeSession:(id)session;
- (void)workspace:(id)workspace didEndStateChangeSession:(id)session;
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

- (DBDashboardWorkspaceOwner)initWithStateResolver:(id)resolver environment:(id)environment sceneWorkspaceIdentifier:(id)identifier rootViewController:(id)controller siriViewController:(id)viewController
{
  resolverCopy = resolver;
  environmentCopy = environment;
  identifierCopy = identifier;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v28.receiver = self;
  v28.super_class = DBDashboardWorkspaceOwner;
  v18 = [(DBDashboardWorkspaceOwner *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_environment, environmentCopy);
    objc_storeStrong(&v19->_stateResolver, resolver);
    objc_storeStrong(&v19->_rootViewController, controller);
    objc_storeStrong(&v19->_siriViewController, viewController);
    v20 = objc_opt_new();
    entityIdentifierToViewControllerMap = v19->_entityIdentifierToViewControllerMap;
    v19->_entityIdentifierToViewControllerMap = v20;

    v22 = [_TtC9DashBoard23DBDashboardSceneManager alloc];
    WeakRetained = objc_loadWeakRetained(&v19->_environment);
    homeViewController = [controllerCopy homeViewController];
    v25 = [(DBDashboardSceneManager *)v22 initWithEnvironment:WeakRetained iconProvider:homeViewController sceneWorkspaceIdentifier:identifierCopy];
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
  sceneManager = [(DBDashboardWorkspaceOwner *)self sceneManager];
  [sceneManager invalidate];
}

- (DBFocusMovementActionHandling)focusMovementActionHandler
{
  sceneManager = [(DBDashboardWorkspaceOwner *)self sceneManager];
  focusMovementActionHandler = [sceneManager focusMovementActionHandler];

  return focusMovementActionHandler;
}

- (void)setFocusMovementActionHandler:(id)handler
{
  handlerCopy = handler;
  sceneManager = [(DBDashboardWorkspaceOwner *)self sceneManager];
  [sceneManager setFocusMovementActionHandler:handlerCopy];
}

- (NSString)activeBaseApplicationBundleID
{
  WeakRetained = objc_loadWeakRetained(&self->_workspace);
  state = [WeakRetained state];

  objc_opt_class();
  baseEntity = [state baseEntity];
  if (baseEntity && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = baseEntity;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    application = [v5 application];
    bundleIdentifier = [application bundleIdentifier];
  }

  else
  {
    objc_opt_class();
    baseEntity2 = [state baseEntity];
    if (baseEntity2 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      application = baseEntity2;
    }

    else
    {
      application = 0;
    }

    if (application)
    {
      applicationToProxy = [application applicationToProxy];
      bundleIdentifier = [applicationToProxy bundleIdentifier];
    }

    else
    {
      bundleIdentifier = 0;
    }
  }

  return bundleIdentifier;
}

- (void)setBannerHeight:(double)height
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_bannerHeight = height;
    WeakRetained = objc_loadWeakRetained(&self->_workspace);
    state = [WeakRetained state];
    baseEntity = [state baseEntity];

    if (([baseEntity isApplicationEntity] & 1) != 0 || objc_msgSend(baseEntity, "isProxiedApplicationEntity"))
    {
      sceneManager = [(DBDashboardWorkspaceOwner *)self sceneManager];
      v9 = [sceneManager sceneForApplicationEntity:baseEntity];

      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __45__DBDashboardWorkspaceOwner_setBannerHeight___block_invoke;
      v10[3] = &__block_descriptor_40_e33_v16__0__FBSMutableSceneSettings_8l;
      *&v10[4] = height;
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
  sceneManager = [(DBDashboardWorkspaceOwner *)self sceneManager];
  [sceneManager startObservingNavigationApplicationProcesses];
}

- (void)updateApplicationSceneFrames
{
  sceneManager = [(DBDashboardWorkspaceOwner *)self sceneManager];
  [sceneManager updateApplicationSceneFrames];
}

- (void)alertServer:(id)server wantsAppPresentationForAlert:(id)alert bundleID:(id)d
{
  alertCopy = alert;
  v7 = [(NSMutableDictionary *)self->_entityIdentifierToViewControllerMap objectForKey:d];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 setUserAlert:alertCopy];
    entity = [v7 entity];
    identifier = [entity identifier];
    focusedEntity = [(DBDashboardWorkspaceOwner *)self focusedEntity];
    identifier2 = [focusedEntity identifier];
    v12 = [identifier isEqualToString:identifier2];

    if (v12)
    {
      environment = [(DBDashboardWorkspaceOwner *)self environment];
      focusController = [environment focusController];

      window = [alertCopy window];
      scene = [alertCopy scene];
      v17 = [focusController deferFocusToWindow:window scene:scene priority:2 reason:@"appUserAlert"];

      [(DBDashboardWorkspaceOwner *)self setUserAlertFocusAssertion:v17];
    }
  }
}

- (void)alertServer:(id)server wantsAppDismissalForAlert:(id)alert bundleID:(id)d
{
  alert = [(NSMutableDictionary *)self->_entityIdentifierToViewControllerMap objectForKey:d, alert];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [alert setUserAlert:0];
    entity = [alert entity];
    identifier = [entity identifier];
    focusedEntity = [(DBDashboardWorkspaceOwner *)self focusedEntity];
    identifier2 = [focusedEntity identifier];
    v10 = [identifier isEqualToString:identifier2];

    if (v10)
    {
      [(DBDashboardWorkspaceOwner *)self setUserAlertFocusAssertion:0];
    }
  }
}

- (void)workspace:(id)workspace didBeginStateChangeSession:(id)session
{
  v10 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v6 = DBLogForCategory(8uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = sessionCopy;
    _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "Beginning session: %@", &v8, 0xCu);
  }

  currentSession = self->_currentSession;
  self->_currentSession = sessionCopy;
}

- (void)workspace:(id)workspace didEndStateChangeSession:(id)session
{
  v10 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v6 = DBLogForCategory(8uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = sessionCopy;
    _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "Ended session: %@", &v8, 0xCu);
  }

  currentSession = self->_currentSession;
  self->_currentSession = 0;
}

- (unint64_t)session:(id)session policyForRequest:(id)request
{
  if (self->_invalidated)
  {
    return 1;
  }

  [session owner];

  return 0;
}

- (void)session:(id)session handleStateChangeRequest:(id)request
{
  v122 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  requestCopy = request;
  if (self->_invalidated)
  {
    [sessionCopy invalidate];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_workspace);
    state = [WeakRetained state];

    if (!state)
    {
      v10 = objc_alloc_init(DBMutableDashboardWorkspaceState);
      v11 = +[DBDashboardHomescreenEntity entity];
      [(DBMutableDashboardWorkspaceState *)v10 setBaseEntity:v11];

      state = [(DBMutableDashboardWorkspaceState *)v10 copy];
    }

    v86 = [(DBDashboardWorkspaceStateResolver *)self->_stateResolver computeNewStateFromState:state andRequest:requestCopy];
    state2 = [v86 state];
    [sessionCopy setState:?];
    v12 = dispatch_group_create();
    v13 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v121 = sessionCopy;
      _os_log_impl(&dword_248146000, v13, OS_LOG_TYPE_INFO, "Starting display layout publisher transition for workspace change session: %@", buf, 0xCu);
    }

    environment = [(DBDashboardWorkspaceOwner *)self environment];
    environmentConfiguration = [environment environmentConfiguration];
    displayLayoutPublisher = [environmentConfiguration displayLayoutPublisher];
    v82 = [displayLayoutPublisher transitionAssertionWithReason:@"Workspace Change"];

    baseEntity = [state2 baseEntity];
    stackedEntity = [state2 stackedEntity];
    activateSuspendedEntity = [v86 activateSuspendedEntity];
    baseEntity2 = [state baseEntity];

    v85 = stackedEntity;
    v83 = activateSuspendedEntity;
    if (baseEntity != baseEntity2)
    {
      dispatch_group_enter(v12);
      identifier = [baseEntity identifier];
      baseEntity3 = [state baseEntity];
      identifier2 = [baseEntity3 identifier];
      v24 = [identifier isEqualToString:identifier2];

      if (v24)
      {
        v25 = DBLogForCategory(8uLL);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_248146000, v25, OS_LOG_TYPE_DEFAULT, "[WorkspaceOwner] Starting update for base view controller", buf, 2u);
        }

        v26 = [v86 changeItemForEntity:baseEntity];
        baseEntity4 = [state baseEntity];
        v118[0] = MEMORY[0x277D85DD0];
        v118[1] = 3221225472;
        v118[2] = __62__DBDashboardWorkspaceOwner_session_handleStateChangeRequest___block_invoke;
        v118[3] = &unk_278F01580;
        v119 = v12;
        [(DBDashboardWorkspaceOwner *)self _updateViewControllerForEntity:baseEntity changeItem:v26 oldEntity:baseEntity4 completion:v118];

        v28 = v119;
      }

      else if ([baseEntity isHomescreenEntity])
      {
        v80 = requestCopy;
        entityIdentifierToViewControllerMap = self->_entityIdentifierToViewControllerMap;
        baseEntity5 = [state baseEntity];
        identifier3 = [baseEntity5 identifier];
        [(NSMutableDictionary *)entityIdentifierToViewControllerMap removeObjectForKey:identifier3];

        uUID = [MEMORY[0x277CCAD78] UUID];
        uUIDString = [uUID UUIDString];

        notificationSuspender = [(DBDashboardWorkspaceOwner *)self notificationSuspender];
        [notificationSuspender setSuspended:1 cancellingCurrent:1 forReason:uUIDString];

        v35 = DBLogForCategory(8uLL);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_248146000, v35, OS_LOG_TYPE_DEFAULT, "[WorkspaceOwner] Starting dismissal of base view controller", buf, 2u);
        }

        rootViewController = self->_rootViewController;
        v37 = [v86 changeItemForEntity:baseEntity];
        prefersAnimation = [v37 prefersAnimation];
        v115[0] = MEMORY[0x277D85DD0];
        v115[1] = 3221225472;
        v115[2] = __62__DBDashboardWorkspaceOwner_session_handleStateChangeRequest___block_invoke_218;
        v115[3] = &unk_278F015F8;
        v115[4] = self;
        v116 = uUIDString;
        v117 = v12;
        v28 = uUIDString;
        [(DBDashboardRootViewController *)rootViewController dismissBaseViewControllerAnimated:prefersAnimation completion:v115];

        requestCopy = v80;
      }

      else
      {
        v39 = [v86 changeItemForEntity:baseEntity];
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
        v111 = baseEntity;
        v112 = v39;
        v113 = v85;
        v114 = v12;
        v28 = v39;
        [(DBDashboardWorkspaceOwner *)self _newViewControllerForEntity:v111 changeItem:v28 completion:v110];
      }

      activateSuspendedEntity = v83;

      stackedEntity = v85;
    }

    stackedEntity2 = [state stackedEntity];

    if (stackedEntity != stackedEntity2)
    {
      dispatch_group_enter(v12);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __62__DBDashboardWorkspaceOwner_session_handleStateChangeRequest___block_invoke_225;
      aBlock[3] = &unk_278F014B8;
      v42 = stackedEntity;
      v108 = v42;
      selfCopy = self;
      v79 = _Block_copy(aBlock);
      objc_opt_class();
      v43 = v42;
      v81 = requestCopy;
      if (v43 && (objc_opt_isKindOfClass() & 1) != 0)
      {
        -[DBSiriViewController setTouchToDismissEnabled:forRequester:](self->_siriViewController, "setTouchToDismissEnabled:forRequester:", [v43 isFloating], @"FloatingSiri");
        v78 = v43;
      }

      else
      {

        v78 = 0;
      }

      identifier4 = [v43 identifier];
      stackedEntity3 = [state stackedEntity];
      identifier5 = [stackedEntity3 identifier];
      v47 = [identifier4 isEqualToString:identifier5];

      if (v47)
      {
        v48 = DBLogForCategory(8uLL);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_248146000, v48, OS_LOG_TYPE_DEFAULT, "[WorkspaceOwner] Starting update for stacked view controller", buf, 2u);
        }

        v49 = [v86 changeItemForEntity:v43];
        stackedEntity4 = [state stackedEntity];
        v104[0] = MEMORY[0x277D85DD0];
        v104[1] = 3221225472;
        v104[2] = __62__DBDashboardWorkspaceOwner_session_handleStateChangeRequest___block_invoke_229;
        v104[3] = &unk_278F02D68;
        v106 = v79;
        v105 = v12;
        [(DBDashboardWorkspaceOwner *)self _updateViewControllerForEntity:v43 changeItem:v49 oldEntity:stackedEntity4 completion:v104];

        objc_opt_class();
        stackedEntity5 = [state stackedEntity];
        requestCopy = v81;
        if (stackedEntity5)
        {
          activateSuspendedEntity = v83;
          if (objc_opt_isKindOfClass())
          {
            v52 = stackedEntity5;
          }

          else
          {
            v52 = 0;
          }
        }

        else
        {
          v52 = 0;
          activateSuspendedEntity = v83;
        }

        if ([v52 isFloating])
        {
          v67 = self->_entityIdentifierToViewControllerMap;
          identifier6 = [baseEntity identifier];
          v69 = [(NSMutableDictionary *)v67 objectForKeyedSubscript:identifier6];

          activateSuspendedEntity = v83;
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
          requestCopy = v81;
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
          v95 = baseEntity;
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
          stackedEntity6 = [state stackedEntity];
          identifier7 = [stackedEntity6 identifier];
          [(NSMutableDictionary *)v58 removeObjectForKey:identifier7];

          uUID2 = [MEMORY[0x277CCAD78] UUID];
          uUIDString2 = [uUID2 UUIDString];

          notificationSuspender2 = [(DBDashboardWorkspaceOwner *)self notificationSuspender];
          [notificationSuspender2 setSuspended:1 cancellingCurrent:0 forReason:uUIDString2];

          v64 = DBLogForCategory(8uLL);
          requestCopy = v81;
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
          v101 = uUIDString2;
          v102 = v12;
          v66 = uUIDString2;
          v55 = v79;
          v56 = v66;
          [(DBDashboardRootViewController *)v65 dismissStackedViewControllerAnimated:1 completion:v100];

          v57 = v103;
        }

        activateSuspendedEntity = v83;
      }

      stackedEntity = v85;
    }

    if ([baseEntity isHomescreenEntity])
    {
      v70 = 0;
    }

    else
    {
      v70 = baseEntity;
    }

    v71 = v70;
    if (stackedEntity && ([stackedEntity isSiriEntity] & 1) == 0)
    {
      v72 = stackedEntity;

      v71 = v72;
    }

    if (activateSuspendedEntity)
    {
      dispatch_group_enter(v12);
      v73 = [v86 changeItemForEntity:activateSuspendedEntity];
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
      [(DBDashboardWorkspaceOwner *)self _handleSuspendedActivationForEntity:activateSuspendedEntity changeItem:v73 completion:v92];

      stackedEntity = v85;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__DBDashboardWorkspaceOwner_session_handleStateChangeRequest___block_invoke_234;
    block[3] = &unk_278F02130;
    block[4] = self;
    v88 = v71;
    v89 = sessionCopy;
    v90 = v82;
    v91 = requestCopy;
    v75 = v82;
    v76 = activateSuspendedEntity;
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

- (void)handleEvent:(id)event
{
  if (!self->_invalidated)
  {
    [(DBDashboardRootViewController *)self->_rootViewController handleEvent:event];
  }
}

- (void)setFocusAssertion:(id)assertion
{
  assertionCopy = assertion;
  focusAssertion = self->_focusAssertion;
  p_focusAssertion = &self->_focusAssertion;
  v6 = focusAssertion;
  if (focusAssertion != assertionCopy)
  {
    v9 = assertionCopy;
    [(DBFocusAssertion *)v6 invalidate];
    objc_storeStrong(p_focusAssertion, assertion);
    assertionCopy = v9;
  }

  MEMORY[0x2821F96F8](v6, assertionCopy);
}

- (void)setUserFocusAlertAssertion:(id)assertion
{
  assertionCopy = assertion;
  userAlertFocusAssertion = self->_userAlertFocusAssertion;
  p_userAlertFocusAssertion = &self->_userAlertFocusAssertion;
  v6 = userAlertFocusAssertion;
  if (userAlertFocusAssertion != assertionCopy)
  {
    v9 = assertionCopy;
    [(DBFocusAssertion *)v6 invalidate];
    objc_storeStrong(p_userAlertFocusAssertion, assertion);
    assertionCopy = v9;
  }

  MEMORY[0x2821F96F8](v6, assertionCopy);
}

- (void)setFocusedEntity:(id)entity
{
  entityCopy = entity;
  p_focusedEntity = &self->_focusedEntity;
  v6 = self->_focusedEntity;
  objc_storeStrong(&self->_focusedEntity, entity);
  identifier = [(DBDashboardEntity *)self->_focusedEntity identifier];
  identifier2 = [(DBDashboardEntity *)v6 identifier];
  v9 = [identifier isEqualToString:identifier2];

  if ((v9 & 1) == 0)
  {
    environment = [(DBDashboardWorkspaceOwner *)self environment];
    focusController = [environment focusController];

    focusedEntity = self->_focusedEntity;
    if (focusedEntity)
    {
      if ([(DBDashboardEntity *)focusedEntity isApplicationEntity]|| [(DBDashboardEntity *)*p_focusedEntity isProxiedApplicationEntity])
      {
        sceneManager = [(DBDashboardWorkspaceOwner *)self sceneManager];
        v14 = [sceneManager sceneForApplicationEntity:entityCopy];

        if (v14)
        {
          v15 = [focusController deferFocusToScene:v14 priority:1 reason:@"app"];
          [(DBDashboardWorkspaceOwner *)self setFocusAssertion:v15];
        }
      }

      isApplicationEntity = [(DBDashboardEntity *)*p_focusedEntity isApplicationEntity];
      v17 = *p_focusedEntity;
      if (isApplicationEntity)
      {
        application = [(DBDashboardEntity *)v17 application];
        goto LABEL_12;
      }

      if ([(DBDashboardEntity *)v17 isProxiedApplicationEntity])
      {
        application = [(DBDashboardEntity *)*p_focusedEntity applicationToProxy];
LABEL_12:
        v19 = application;
        bundleIdentifier = [application bundleIdentifier];

        [(DBDashboardWorkspaceOwner *)self setUserAlertFocusAssertion:0];
        if (bundleIdentifier)
        {
          userAlertServer = [(DBDashboardWorkspaceOwner *)self userAlertServer];
          v22 = [userAlertServer alertForBundleID:bundleIdentifier];

          if (v22)
          {
            window = [v22 window];
            scene = [v22 scene];
            v25 = [focusController deferFocusToWindow:window scene:scene priority:2 reason:@"appUserAlert"];

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

- (id)_existingViewControllerForEntity:(id)entity
{
  entityIdentifierToViewControllerMap = self->_entityIdentifierToViewControllerMap;
  identifier = [entity identifier];
  v5 = [(NSMutableDictionary *)entityIdentifierToViewControllerMap objectForKey:identifier];

  return v5;
}

- (void)_newViewControllerForEntity:(id)entity changeItem:(id)item persist:(BOOL)persist completion:(id)completion
{
  entityCopy = entity;
  itemCopy = item;
  completionCopy = completion;
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = __Block_byref_object_copy__8;
  v67 = __Block_byref_object_dispose__8;
  v68 = 0;
  v11 = dispatch_group_create();
  if ([entityCopy isApplicationEntity])
  {
    WeakRetained = entityCopy;
    v47 = itemCopy;
    v46 = itemCopy;
    sceneManager = [(DBDashboardWorkspaceOwner *)self sceneManager];
    v14 = [sceneManager sceneForApplicationEntity:WeakRetained];

    v15 = [DBApplicationViewController alloc];
    environment = [(DBDashboardWorkspaceOwner *)self environment];
    v17 = [(DBApplicationViewController *)v15 initWithScene:v14 entity:WeakRetained environment:environment];

    environment2 = [(DBDashboardWorkspaceOwner *)self environment];
    [environment2 statusBarInsets];
    [(DBApplicationViewController *)v17 setAdditionalSafeAreaInsets:?];

    userAlertServer = [(DBDashboardWorkspaceOwner *)self userAlertServer];
    application = [WeakRetained application];
    bundleIdentifier = [application bundleIdentifier];
    v22 = [userAlertServer alertForBundleID:bundleIdentifier];

    if (v22)
    {
      [(DBApplicationViewController *)v17 setUserAlert:v22];
    }

    dispatch_group_enter(v11);
    activationSettings = [v46 activationSettings];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __87__DBDashboardWorkspaceOwner__newViewControllerForEntity_changeItem_persist_completion___block_invoke;
    v59[3] = &unk_278F04490;
    v62 = &v63;
    v24 = v17;
    v60 = v24;
    v61 = v11;
    [(DBApplicationViewController *)v24 foregroundSceneWithSettings:activationSettings completion:v59];

LABEL_9:
    itemCopy = v47;
    goto LABEL_10;
  }

  if ([entityCopy isProxiedApplicationEntity])
  {
    WeakRetained = entityCopy;
    v47 = itemCopy;
    v46 = itemCopy;
    sceneManager2 = [(DBDashboardWorkspaceOwner *)self sceneManager];
    v26 = [sceneManager2 sceneForApplicationEntity:WeakRetained];

    v27 = [DBApplicationViewController alloc];
    environment3 = [(DBDashboardWorkspaceOwner *)self environment];
    v29 = [(DBApplicationViewController *)v27 initWithScene:v26 entity:WeakRetained environment:environment3];

    environment4 = [(DBDashboardWorkspaceOwner *)self environment];
    [environment4 statusBarInsets];
    [(DBApplicationViewController *)v29 setAdditionalSafeAreaInsets:?];
    v45 = v26;

    userAlertServer2 = [(DBDashboardWorkspaceOwner *)self userAlertServer];
    proxyEntity = [WeakRetained proxyEntity];
    application2 = [proxyEntity application];
    bundleIdentifier2 = [application2 bundleIdentifier];
    v35 = [userAlertServer2 alertForBundleID:bundleIdentifier2];

    if (v35)
    {
      [(DBApplicationViewController *)v29 setUserAlert:v35];
    }

    dispatch_group_enter(v11);
    activationSettings2 = [v46 activationSettings];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __87__DBDashboardWorkspaceOwner__newViewControllerForEntity_changeItem_persist_completion___block_invoke_2;
    v55[3] = &unk_278F04490;
    v58 = &v63;
    v37 = v29;
    v56 = v37;
    v57 = v11;
    [(DBApplicationViewController *)v37 foregroundSceneWithSettings:activationSettings2 completion:v55];

    goto LABEL_9;
  }

  if ([entityCopy isSiriEntity])
  {
    v40 = v64;
    v41 = self->_siriViewController;
    WeakRetained = v40[5];
    v40[5] = v41;
  }

  else
  {
    if (![entityCopy isOEMPunchthroughEntity])
    {
      goto LABEL_11;
    }

    v42 = [DBOEMPunchthroughViewController alloc];
    WeakRetained = objc_loadWeakRetained(&self->_environment);
    v43 = [(DBOEMPunchthroughViewController *)v42 initWithOEMPunchthroughEntity:entityCopy environment:WeakRetained];
    v44 = v64[5];
    v64[5] = v43;
  }

LABEL_10:

LABEL_11:
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__DBDashboardWorkspaceOwner__newViewControllerForEntity_changeItem_persist_completion___block_invoke_3;
  block[3] = &unk_278F044B8;
  persistCopy = persist;
  block[4] = self;
  v51 = entityCopy;
  v53 = &v63;
  v52 = completionCopy;
  v38 = completionCopy;
  v39 = entityCopy;
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

- (void)_updateViewControllerForEntity:(id)entity changeItem:(id)item oldEntity:(id)oldEntity completion:(id)completion
{
  entityCopy = entity;
  itemCopy = item;
  completionCopy = completion;
  oldEntityCopy = oldEntity;
  v14 = dispatch_group_create();
  entityIdentifierToViewControllerMap = self->_entityIdentifierToViewControllerMap;
  identifier = [oldEntityCopy identifier];

  v17 = [(NSMutableDictionary *)entityIdentifierToViewControllerMap objectForKeyedSubscript:identifier];

  if (([entityCopy isApplicationEntity] & 1) != 0 || objc_msgSend(entityCopy, "isProxiedApplicationEntity"))
  {
    v18 = v17;
    v19 = itemCopy;
    activationSettings = [v19 activationSettings];

    if (activationSettings)
    {
      dispatch_group_enter(v14);
      activationSettings2 = [v19 activationSettings];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __92__DBDashboardWorkspaceOwner__updateViewControllerForEntity_changeItem_oldEntity_completion___block_invoke;
      v29[3] = &unk_278F01580;
      v30 = v14;
      [v18 activateSceneWithSettings:activationSettings2 completion:v29];
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__DBDashboardWorkspaceOwner__updateViewControllerForEntity_changeItem_oldEntity_completion___block_invoke_2;
  block[3] = &unk_278F044E0;
  block[4] = self;
  v26 = entityCopy;
  v27 = v17;
  v28 = completionCopy;
  v22 = completionCopy;
  v23 = v17;
  v24 = entityCopy;
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

- (void)_handleSuspendedActivationForEntity:(id)entity changeItem:(id)item completion:(id)completion
{
  entityCopy = entity;
  itemCopy = item;
  completionCopy = completion;
  v11 = dispatch_group_create();
  entityIdentifierToViewControllerMap = self->_entityIdentifierToViewControllerMap;
  identifier = [entityCopy identifier];
  v14 = [(NSMutableDictionary *)entityIdentifierToViewControllerMap objectForKeyedSubscript:identifier];

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
    [(DBDashboardWorkspaceOwner *)self _newViewControllerForEntity:entityCopy changeItem:itemCopy persist:0 completion:v23];
    goto LABEL_10;
  }

  if (([entityCopy isApplicationEntity] & 1) != 0 || objc_msgSend(entityCopy, "isProxiedApplicationEntity"))
  {
    v15 = itemCopy;
    v16 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v16, OS_LOG_TYPE_DEFAULT, "[WorkspaceOwner] Delivering suspended activation to existing view controller", buf, 2u);
    }

    dispatch_group_enter(v11);
    activationSettings = [v15 activationSettings];

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __87__DBDashboardWorkspaceOwner__handleSuspendedActivationForEntity_changeItem_completion___block_invoke;
    v25[3] = &unk_278F01580;
    v18 = &v26;
    v26 = v11;
    [v14 foregroundSceneWithSettings:activationSettings completion:v25];

LABEL_10:
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__DBDashboardWorkspaceOwner__handleSuspendedActivationForEntity_changeItem_completion___block_invoke_2;
  block[3] = &unk_278F02678;
  v22 = completionCopy;
  v20 = completionCopy;
  dispatch_group_notify(v11, MEMORY[0x277D85CD0], block);
}

- (DBWorkspace)workspace
{
  WeakRetained = objc_loadWeakRetained(&self->_workspace);

  return WeakRetained;
}

@end