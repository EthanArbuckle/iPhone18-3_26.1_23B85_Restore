@interface DBApplicationViewController
- (BOOL)presentsFullScreen;
- (DBApplicationSceneHostViewController)sceneHostViewController;
- (DBApplicationViewController)initWithScene:(id)a3 entity:(id)a4 environment:(id)a5;
- (DBEnvironment)environment;
- (NSString)identifier;
- (id)presentationViewWithIdentifier:(id)a3;
- (void)_addAlertSubviewIfNeeded;
- (void)_removeAlertSubviewIfNeeded;
- (void)_requestDismissal;
- (void)activateSceneWithSettings:(id)a3 completion:(id)a4;
- (void)applicationSceneHostViewController:(id)a3 didUpdateSceneContentState:(int64_t)a4;
- (void)backgroundSceneWithCompletion:(id)a3;
- (void)deactivateSceneWithReasonMask:(unint64_t)a3;
- (void)dealloc;
- (void)foregroundSceneWithSettings:(id)a3 completion:(id)a4;
- (void)handleEvent:(id)a3;
- (void)invalidatePresentationViewForIdentifier:(id)a3;
- (void)setUserAlert:(id)a3;
- (void)viewDidLoad;
@end

@implementation DBApplicationViewController

- (DBApplicationSceneHostViewController)sceneHostViewController
{
  sceneHostViewController = self->_sceneHostViewController;
  if (!sceneHostViewController)
  {
    v4 = [DBApplicationSceneHostViewController alloc];
    v5 = [(DBApplicationViewController *)self scene];
    v6 = [(DBApplicationViewController *)self application];
    v7 = [(DBApplicationViewController *)self proxyApplication];
    v8 = [(DBApplicationViewController *)self environment];
    v9 = [(DBSceneHostViewController *)v4 initWithScene:v5 application:v6 proxyApplication:v7 environment:v8];
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
  v3 = [(DBApplicationViewController *)self environment];
  v4 = [v3 environmentConfiguration];
  v5 = [v4 effectiveSceneBackgroundColor];
  v6 = [(DBApplicationViewController *)self view];
  [v6 setBackgroundColor:v5];

  v7 = [(DBApplicationViewController *)self sceneHostViewController];
  [(DBApplicationViewController *)self addChildViewController:v7];

  v8 = [(DBApplicationViewController *)self view];
  v9 = [(DBApplicationViewController *)self sceneHostViewController];
  v10 = [v9 view];
  [v8 addSubview:v10];

  v11 = [(DBApplicationViewController *)self sceneHostViewController];
  [v11 didMoveToParentViewController:self];

  v12 = [(DBApplicationViewController *)self sceneHostViewController];
  v13 = [v12 view];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

  v28 = MEMORY[0x277CCAAD0];
  v39 = [(DBApplicationViewController *)self sceneHostViewController];
  v38 = [v39 view];
  v36 = [v38 leadingAnchor];
  v37 = [(DBApplicationViewController *)self view];
  v35 = [v37 leadingAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v41[0] = v34;
  v33 = [(DBApplicationViewController *)self sceneHostViewController];
  v32 = [v33 view];
  v30 = [v32 trailingAnchor];
  v31 = [(DBApplicationViewController *)self view];
  v29 = [v31 trailingAnchor];
  v27 = [v30 constraintEqualToAnchor:v29];
  v41[1] = v27;
  v26 = [(DBApplicationViewController *)self sceneHostViewController];
  v25 = [v26 view];
  v24 = [v25 topAnchor];
  v14 = [(DBApplicationViewController *)self view];
  v15 = [v14 topAnchor];
  v16 = [v24 constraintEqualToAnchor:v15];
  v41[2] = v16;
  v17 = [(DBApplicationViewController *)self sceneHostViewController];
  v18 = [v17 view];
  v19 = [v18 bottomAnchor];
  v20 = [(DBApplicationViewController *)self view];
  v21 = [v20 bottomAnchor];
  v22 = [v19 constraintEqualToAnchor:v21];
  v41[3] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:4];
  [v28 activateConstraints:v23];
}

- (BOOL)presentsFullScreen
{
  v2 = [(DBApplicationViewController *)self application];
  v3 = [v2 presentsFullScreen];

  return v3;
}

- (NSString)identifier
{
  v2 = [(DBApplicationViewController *)self application];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (void)_addAlertSubviewIfNeeded
{
  v47[4] = *MEMORY[0x277D85DE8];
  v3 = [(DBApplicationViewController *)self userAlert];
  if (v3)
  {
    v44 = v3;
    v4 = [(DBApplicationViewController *)self alertPresentationView];
    if (v4)
    {
    }

    else
    {
      v5 = [(DBApplicationViewController *)self sceneHostViewController];
      v6 = [v5 sceneContentState];

      if (v6 == 2)
      {
        v7 = [(DBApplicationViewController *)self userAlert];
        v8 = [(DBApplicationViewController *)self alertPresentationRequester];
        v9 = [v7 presentationViewForRequester:v8];

        [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
        v10 = [(DBApplicationViewController *)self view];
        [v10 addSubview:v9];

        [(DBApplicationViewController *)self setAlertPresentationView:v9];
        v11 = [(DBApplicationViewController *)self userAlert];
        LODWORD(v8) = [v11 requiresSafeAreaWindow];

        if (v8)
        {
          v12 = [(DBApplicationViewController *)self view];
          v13 = [v12 safeAreaLayoutGuide];

          v37 = MEMORY[0x277CCAAD0];
          v14 = [v9 topAnchor];
          v15 = [v13 topAnchor];
          v45 = [v14 constraintEqualToAnchor:v15];
          v47[0] = v45;
          v16 = [v9 bottomAnchor];
          v42 = [v13 bottomAnchor];
          v43 = v16;
          v41 = [v16 constraintEqualToAnchor:?];
          v47[1] = v41;
          v17 = [v9 leadingAnchor];
          v39 = [v13 leadingAnchor];
          v40 = v17;
          v18 = [v17 constraintEqualToAnchor:?];
          v47[2] = v18;
          v19 = [v9 trailingAnchor];
          v20 = [v13 trailingAnchor];
          v21 = [v19 constraintEqualToAnchor:v20];
          v47[3] = v21;
          v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:4];
          [v37 activateConstraints:v22];
        }

        else
        {
          v38 = MEMORY[0x277CCAAD0];
          v36 = [v9 topAnchor];
          v35 = [(DBApplicationViewController *)self view];
          v34 = [v35 topAnchor];
          v45 = [v36 constraintEqualToAnchor:v34];
          v46[0] = v45;
          v23 = [v9 bottomAnchor];
          v42 = [(DBApplicationViewController *)self view];
          [v42 bottomAnchor];
          v41 = v43 = v23;
          v40 = [v23 constraintEqualToAnchor:?];
          v46[1] = v40;
          v24 = [v9 leadingAnchor];
          v18 = [(DBApplicationViewController *)self view];
          v19 = [v18 leadingAnchor];
          v39 = v24;
          v20 = [v24 constraintEqualToAnchor:v19];
          v46[2] = v20;
          v21 = [v9 trailingAnchor];
          v22 = [(DBApplicationViewController *)self view];
          v25 = [v22 trailingAnchor];
          v26 = [v21 constraintEqualToAnchor:v25];
          v46[3] = v26;
          v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:4];
          [v38 activateConstraints:v27];

          v14 = v35;
          v15 = v34;

          v13 = v36;
        }

        v28 = [(DBApplicationViewController *)self environment];
        v29 = objc_opt_respondsToSelector();

        if (v29)
        {
          v30 = [(DBApplicationViewController *)self userAlert];
          v31 = [(DBApplicationViewController *)self environment];
          v32 = [(DBApplicationViewController *)self application];
          v33 = [(DBApplicationViewController *)self proxyApplication];
          [v30 setUserInterfaceStyle:{objc_msgSend(v31, "sceneInterfaceStyleForApplication:proxyApplication:", v32, v33)}];
        }
      }
    }
  }
}

- (void)_removeAlertSubviewIfNeeded
{
  v3 = [(DBApplicationViewController *)self userAlert];

  if (v3)
  {
    v4 = [(DBApplicationViewController *)self userAlert];
    v5 = [(DBApplicationViewController *)self alertPresentationRequester];
    [v4 relinquishPresentationForRequester:v5];

    v6 = [(DBApplicationViewController *)self alertPresentationView];
    [v6 removeFromSuperview];

    [(DBApplicationViewController *)self setAlertPresentationView:0];
  }
}

- (void)dealloc
{
  v3 = [(DBApplicationViewController *)self sceneHostViewController];
  [v3 invalidateScenePresenter];

  v4 = [(DBApplicationViewController *)self userAlert];
  v5 = [(DBApplicationViewController *)self alertPresentationRequester];
  [v4 relinquishPresentationForRequester:v5];

  v6.receiver = self;
  v6.super_class = DBApplicationViewController;
  [(DBApplicationViewController *)&v6 dealloc];
}

- (DBApplicationViewController)initWithScene:(id)a3 entity:(id)a4 environment:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v37.receiver = self;
  v37.super_class = DBApplicationViewController;
  v12 = [(DBApplicationViewController *)&v37 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_scene, a3);
    if ([v10 isApplicationEntity])
    {
      v14 = objc_opt_class();
      v15 = v10;
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

      v18 = [v17 application];
      application = v13->_application;
      v13->_application = v18;

      proxyApplication = v13->_proxyApplication;
      v13->_proxyApplication = 0;
    }

    if ([v10 isProxiedApplicationEntity])
    {
      v21 = objc_opt_class();
      v22 = v10;
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

      v25 = [v24 applicationToProxy];
      v26 = v13->_application;
      v13->_application = v25;

      v27 = [v24 proxyEntity];
      v28 = [v27 application];
      v29 = v13->_proxyApplication;
      v13->_proxyApplication = v28;
    }

    objc_storeStrong(&v13->_entity, a4);
    objc_storeWeak(&v13->_environment, v11);
    v30 = MEMORY[0x277CCACA8];
    v31 = objc_opt_class();
    v32 = NSStringFromClass(v31);
    v33 = [(DBApplication *)v13->_application bundleIdentifier];
    v34 = [v30 stringWithFormat:@"%@-%@-%u", v32, v33, ++counter];
    alertPresentationRequester = v13->_alertPresentationRequester;
    v13->_alertPresentationRequester = v34;
  }

  return v13;
}

- (void)setUserAlert:(id)a3
{
  v5 = a3;
  if (self->_userAlert != v5)
  {
    v6 = v5;
    [(DBApplicationViewController *)self _removeAlertSubviewIfNeeded];
    objc_storeStrong(&self->_userAlert, a3);
    [(DBApplicationViewController *)self _addAlertSubviewIfNeeded];
    v5 = v6;
  }
}

- (void)applicationSceneHostViewController:(id)a3 didUpdateSceneContentState:(int64_t)a4
{
  if (a4 == 2)
  {
    [(DBApplicationViewController *)self _addAlertSubviewIfNeeded];
  }

  else
  {
    [(DBApplicationViewController *)self _removeAlertSubviewIfNeeded];
  }
}

- (id)presentationViewWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DBApplicationViewController *)self sceneHostViewController];
  v6 = [v5 presentationViewWithIdentifier:v4];

  return v6;
}

- (void)invalidatePresentationViewForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DBApplicationViewController *)self sceneHostViewController];
  [v5 invalidatePresentationViewForIdentifier:v4];
}

- (void)foregroundSceneWithSettings:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DBApplicationViewController *)self sceneHostViewController];
  [v8 foregroundSceneWithSettings:v7 completion:v6];
}

- (void)backgroundSceneWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(DBApplicationViewController *)self sceneHostViewController];
  [v5 backgroundSceneWithCompletion:v4];
}

- (void)activateSceneWithSettings:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DBApplicationViewController *)self sceneHostViewController];
  [v8 activateSceneWithSettings:v7 completion:v6];
}

- (void)deactivateSceneWithReasonMask:(unint64_t)a3
{
  v4 = [(DBApplicationViewController *)self sceneHostViewController];
  [v4 deactivateSceneWithReasonMask:a3];
}

- (void)handleEvent:(id)a3
{
  if ([a3 type] == 1)
  {

    [(DBApplicationViewController *)self _requestDismissal];
  }
}

- (void)_requestDismissal
{
  v6 = objc_alloc_init(DBMutableWorkspaceStateChangeRequest);
  v3 = [(DBApplicationViewController *)self application];
  [(DBMutableWorkspaceStateChangeRequest *)v6 deactivateApplication:v3];

  v4 = [(DBApplicationViewController *)self environment];
  v5 = [v4 workspace];
  [v5 requestStateChange:v6];
}

@end