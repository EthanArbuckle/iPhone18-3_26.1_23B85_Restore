@interface DBApplicationViewController
- (BOOL)presentsFullScreen;
- (DBApplicationSceneHostViewController)sceneHostViewController;
- (DBApplicationViewController)initWithScene:(id)scene entity:(id)entity environment:(id)environment;
- (DBEnvironment)environment;
- (NSString)identifier;
- (id)presentationViewWithIdentifier:(id)identifier;
- (void)_addAlertSubviewIfNeeded;
- (void)_removeAlertSubviewIfNeeded;
- (void)_requestDismissal;
- (void)activateSceneWithSettings:(id)settings completion:(id)completion;
- (void)applicationSceneHostViewController:(id)controller didUpdateSceneContentState:(int64_t)state;
- (void)backgroundSceneWithCompletion:(id)completion;
- (void)deactivateSceneWithReasonMask:(unint64_t)mask;
- (void)dealloc;
- (void)foregroundSceneWithSettings:(id)settings completion:(id)completion;
- (void)handleEvent:(id)event;
- (void)invalidatePresentationViewForIdentifier:(id)identifier;
- (void)setUserAlert:(id)alert;
- (void)viewDidLoad;
@end

@implementation DBApplicationViewController

- (DBApplicationSceneHostViewController)sceneHostViewController
{
  sceneHostViewController = self->_sceneHostViewController;
  if (!sceneHostViewController)
  {
    v4 = [DBApplicationSceneHostViewController alloc];
    scene = [(DBApplicationViewController *)self scene];
    application = [(DBApplicationViewController *)self application];
    proxyApplication = [(DBApplicationViewController *)self proxyApplication];
    environment = [(DBApplicationViewController *)self environment];
    v9 = [(DBSceneHostViewController *)v4 initWithScene:scene application:application proxyApplication:proxyApplication environment:environment];
    v10 = self->_sceneHostViewController;
    self->_sceneHostViewController = v9;

    [(DBApplicationSceneHostViewController *)self->_sceneHostViewController setDelegate:self];
    sceneHostViewController = self->_sceneHostViewController;
  }

  return sceneHostViewController;
}

- (DBEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (void)viewDidLoad
{
  v41[4] = *MEMORY[0x277D85DE8];
  v40.receiver = self;
  v40.super_class = DBApplicationViewController;
  [(DBApplicationViewController *)&v40 viewDidLoad];
  environment = [(DBApplicationViewController *)self environment];
  environmentConfiguration = [environment environmentConfiguration];
  effectiveSceneBackgroundColor = [environmentConfiguration effectiveSceneBackgroundColor];
  view = [(DBApplicationViewController *)self view];
  [view setBackgroundColor:effectiveSceneBackgroundColor];

  sceneHostViewController = [(DBApplicationViewController *)self sceneHostViewController];
  [(DBApplicationViewController *)self addChildViewController:sceneHostViewController];

  view2 = [(DBApplicationViewController *)self view];
  sceneHostViewController2 = [(DBApplicationViewController *)self sceneHostViewController];
  view3 = [sceneHostViewController2 view];
  [view2 addSubview:view3];

  sceneHostViewController3 = [(DBApplicationViewController *)self sceneHostViewController];
  [sceneHostViewController3 didMoveToParentViewController:self];

  sceneHostViewController4 = [(DBApplicationViewController *)self sceneHostViewController];
  view4 = [sceneHostViewController4 view];
  [view4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v28 = MEMORY[0x277CCAAD0];
  sceneHostViewController5 = [(DBApplicationViewController *)self sceneHostViewController];
  view5 = [sceneHostViewController5 view];
  leadingAnchor = [view5 leadingAnchor];
  view6 = [(DBApplicationViewController *)self view];
  leadingAnchor2 = [view6 leadingAnchor];
  v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v41[0] = v34;
  sceneHostViewController6 = [(DBApplicationViewController *)self sceneHostViewController];
  view7 = [sceneHostViewController6 view];
  trailingAnchor = [view7 trailingAnchor];
  view8 = [(DBApplicationViewController *)self view];
  trailingAnchor2 = [view8 trailingAnchor];
  v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v41[1] = v27;
  sceneHostViewController7 = [(DBApplicationViewController *)self sceneHostViewController];
  view9 = [sceneHostViewController7 view];
  topAnchor = [view9 topAnchor];
  view10 = [(DBApplicationViewController *)self view];
  topAnchor2 = [view10 topAnchor];
  v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v41[2] = v16;
  sceneHostViewController8 = [(DBApplicationViewController *)self sceneHostViewController];
  view11 = [sceneHostViewController8 view];
  bottomAnchor = [view11 bottomAnchor];
  view12 = [(DBApplicationViewController *)self view];
  bottomAnchor2 = [view12 bottomAnchor];
  v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v41[3] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:4];
  [v28 activateConstraints:v23];
}

- (BOOL)presentsFullScreen
{
  application = [(DBApplicationViewController *)self application];
  presentsFullScreen = [application presentsFullScreen];

  return presentsFullScreen;
}

- (NSString)identifier
{
  application = [(DBApplicationViewController *)self application];
  bundleIdentifier = [application bundleIdentifier];

  return bundleIdentifier;
}

- (void)_addAlertSubviewIfNeeded
{
  v47[4] = *MEMORY[0x277D85DE8];
  userAlert = [(DBApplicationViewController *)self userAlert];
  if (userAlert)
  {
    v44 = userAlert;
    alertPresentationView = [(DBApplicationViewController *)self alertPresentationView];
    if (alertPresentationView)
    {
    }

    else
    {
      sceneHostViewController = [(DBApplicationViewController *)self sceneHostViewController];
      sceneContentState = [sceneHostViewController sceneContentState];

      if (sceneContentState == 2)
      {
        userAlert2 = [(DBApplicationViewController *)self userAlert];
        alertPresentationRequester = [(DBApplicationViewController *)self alertPresentationRequester];
        v9 = [userAlert2 presentationViewForRequester:alertPresentationRequester];

        [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
        view = [(DBApplicationViewController *)self view];
        [view addSubview:v9];

        [(DBApplicationViewController *)self setAlertPresentationView:v9];
        userAlert3 = [(DBApplicationViewController *)self userAlert];
        LODWORD(alertPresentationRequester) = [userAlert3 requiresSafeAreaWindow];

        if (alertPresentationRequester)
        {
          view2 = [(DBApplicationViewController *)self view];
          safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];

          v37 = MEMORY[0x277CCAAD0];
          topAnchor = [v9 topAnchor];
          topAnchor2 = [safeAreaLayoutGuide topAnchor];
          v45 = [topAnchor constraintEqualToAnchor:topAnchor2];
          v47[0] = v45;
          bottomAnchor = [v9 bottomAnchor];
          bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
          v43 = bottomAnchor;
          v41 = [bottomAnchor constraintEqualToAnchor:?];
          v47[1] = v41;
          leadingAnchor = [v9 leadingAnchor];
          leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
          v40 = leadingAnchor;
          view4 = [leadingAnchor constraintEqualToAnchor:?];
          v47[2] = view4;
          trailingAnchor = [v9 trailingAnchor];
          trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
          trailingAnchor3 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
          v47[3] = trailingAnchor3;
          view5 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:4];
          [v37 activateConstraints:view5];
        }

        else
        {
          v38 = MEMORY[0x277CCAAD0];
          topAnchor3 = [v9 topAnchor];
          view3 = [(DBApplicationViewController *)self view];
          topAnchor4 = [view3 topAnchor];
          v45 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
          v46[0] = v45;
          bottomAnchor3 = [v9 bottomAnchor];
          bottomAnchor2 = [(DBApplicationViewController *)self view];
          [bottomAnchor2 bottomAnchor];
          v41 = v43 = bottomAnchor3;
          v40 = [bottomAnchor3 constraintEqualToAnchor:?];
          v46[1] = v40;
          leadingAnchor3 = [v9 leadingAnchor];
          view4 = [(DBApplicationViewController *)self view];
          trailingAnchor = [view4 leadingAnchor];
          leadingAnchor2 = leadingAnchor3;
          trailingAnchor2 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor];
          v46[2] = trailingAnchor2;
          trailingAnchor3 = [v9 trailingAnchor];
          view5 = [(DBApplicationViewController *)self view];
          trailingAnchor4 = [view5 trailingAnchor];
          v26 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
          v46[3] = v26;
          v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:4];
          [v38 activateConstraints:v27];

          topAnchor = view3;
          topAnchor2 = topAnchor4;

          safeAreaLayoutGuide = topAnchor3;
        }

        environment = [(DBApplicationViewController *)self environment];
        v29 = objc_opt_respondsToSelector();

        if (v29)
        {
          userAlert4 = [(DBApplicationViewController *)self userAlert];
          environment2 = [(DBApplicationViewController *)self environment];
          application = [(DBApplicationViewController *)self application];
          proxyApplication = [(DBApplicationViewController *)self proxyApplication];
          [userAlert4 setUserInterfaceStyle:{objc_msgSend(environment2, "sceneInterfaceStyleForApplication:proxyApplication:", application, proxyApplication)}];
        }
      }
    }
  }
}

- (void)_removeAlertSubviewIfNeeded
{
  userAlert = [(DBApplicationViewController *)self userAlert];

  if (userAlert)
  {
    userAlert2 = [(DBApplicationViewController *)self userAlert];
    alertPresentationRequester = [(DBApplicationViewController *)self alertPresentationRequester];
    [userAlert2 relinquishPresentationForRequester:alertPresentationRequester];

    alertPresentationView = [(DBApplicationViewController *)self alertPresentationView];
    [alertPresentationView removeFromSuperview];

    [(DBApplicationViewController *)self setAlertPresentationView:0];
  }
}

- (void)dealloc
{
  sceneHostViewController = [(DBApplicationViewController *)self sceneHostViewController];
  [sceneHostViewController invalidateScenePresenter];

  userAlert = [(DBApplicationViewController *)self userAlert];
  alertPresentationRequester = [(DBApplicationViewController *)self alertPresentationRequester];
  [userAlert relinquishPresentationForRequester:alertPresentationRequester];

  v6.receiver = self;
  v6.super_class = DBApplicationViewController;
  [(DBApplicationViewController *)&v6 dealloc];
}

- (DBApplicationViewController)initWithScene:(id)scene entity:(id)entity environment:(id)environment
{
  sceneCopy = scene;
  entityCopy = entity;
  environmentCopy = environment;
  v37.receiver = self;
  v37.super_class = DBApplicationViewController;
  v12 = [(DBApplicationViewController *)&v37 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_scene, scene);
    if ([entityCopy isApplicationEntity])
    {
      v14 = objc_opt_class();
      v15 = entityCopy;
      if (v14)
      {
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      application = [v17 application];
      application = v13->_application;
      v13->_application = application;

      proxyApplication = v13->_proxyApplication;
      v13->_proxyApplication = 0;
    }

    if ([entityCopy isProxiedApplicationEntity])
    {
      v21 = objc_opt_class();
      v22 = entityCopy;
      if (v21)
      {
        if (objc_opt_isKindOfClass())
        {
          v23 = v22;
        }

        else
        {
          v23 = 0;
        }
      }

      else
      {
        v23 = 0;
      }

      v24 = v23;

      applicationToProxy = [v24 applicationToProxy];
      v26 = v13->_application;
      v13->_application = applicationToProxy;

      proxyEntity = [v24 proxyEntity];
      application2 = [proxyEntity application];
      v29 = v13->_proxyApplication;
      v13->_proxyApplication = application2;
    }

    objc_storeStrong(&v13->_entity, entity);
    objc_storeWeak(&v13->_environment, environmentCopy);
    v30 = MEMORY[0x277CCACA8];
    v31 = objc_opt_class();
    v32 = NSStringFromClass(v31);
    bundleIdentifier = [(DBApplication *)v13->_application bundleIdentifier];
    v34 = [v30 stringWithFormat:@"%@-%@-%u", v32, bundleIdentifier, ++counter];
    alertPresentationRequester = v13->_alertPresentationRequester;
    v13->_alertPresentationRequester = v34;
  }

  return v13;
}

- (void)setUserAlert:(id)alert
{
  alertCopy = alert;
  if (self->_userAlert != alertCopy)
  {
    v6 = alertCopy;
    [(DBApplicationViewController *)self _removeAlertSubviewIfNeeded];
    objc_storeStrong(&self->_userAlert, alert);
    [(DBApplicationViewController *)self _addAlertSubviewIfNeeded];
    alertCopy = v6;
  }
}

- (void)applicationSceneHostViewController:(id)controller didUpdateSceneContentState:(int64_t)state
{
  if (state == 2)
  {
    [(DBApplicationViewController *)self _addAlertSubviewIfNeeded];
  }

  else
  {
    [(DBApplicationViewController *)self _removeAlertSubviewIfNeeded];
  }
}

- (id)presentationViewWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  sceneHostViewController = [(DBApplicationViewController *)self sceneHostViewController];
  v6 = [sceneHostViewController presentationViewWithIdentifier:identifierCopy];

  return v6;
}

- (void)invalidatePresentationViewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  sceneHostViewController = [(DBApplicationViewController *)self sceneHostViewController];
  [sceneHostViewController invalidatePresentationViewForIdentifier:identifierCopy];
}

- (void)foregroundSceneWithSettings:(id)settings completion:(id)completion
{
  completionCopy = completion;
  settingsCopy = settings;
  sceneHostViewController = [(DBApplicationViewController *)self sceneHostViewController];
  [sceneHostViewController foregroundSceneWithSettings:settingsCopy completion:completionCopy];
}

- (void)backgroundSceneWithCompletion:(id)completion
{
  completionCopy = completion;
  sceneHostViewController = [(DBApplicationViewController *)self sceneHostViewController];
  [sceneHostViewController backgroundSceneWithCompletion:completionCopy];
}

- (void)activateSceneWithSettings:(id)settings completion:(id)completion
{
  completionCopy = completion;
  settingsCopy = settings;
  sceneHostViewController = [(DBApplicationViewController *)self sceneHostViewController];
  [sceneHostViewController activateSceneWithSettings:settingsCopy completion:completionCopy];
}

- (void)deactivateSceneWithReasonMask:(unint64_t)mask
{
  sceneHostViewController = [(DBApplicationViewController *)self sceneHostViewController];
  [sceneHostViewController deactivateSceneWithReasonMask:mask];
}

- (void)handleEvent:(id)event
{
  if ([event type] == 1)
  {

    [(DBApplicationViewController *)self _requestDismissal];
  }
}

- (void)_requestDismissal
{
  v6 = objc_alloc_init(DBMutableWorkspaceStateChangeRequest);
  application = [(DBApplicationViewController *)self application];
  [(DBMutableWorkspaceStateChangeRequest *)v6 deactivateApplication:application];

  environment = [(DBApplicationViewController *)self environment];
  workspace = [environment workspace];
  [workspace requestStateChange:v6];
}

@end