@interface DBLocalSceneController
- (DBLocalSceneController)initWithScene:(id)scene;
- (UIScenePresentation)presentationView;
- (id)presentationViewWithIdentifier:(id)identifier;
- (void)invalidate;
- (void)invalidatePresentationViewForIdentifier:(id)identifier;
@end

@implementation DBLocalSceneController

- (DBLocalSceneController)initWithScene:(id)scene
{
  v19 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  v16.receiver = self;
  v16.super_class = DBLocalSceneController;
  v6 = [(DBLocalSceneController *)&v16 init];
  if (v6)
  {
    v7 = DBLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      identity = [sceneCopy identity];
      *buf = 138543362;
      v18 = identity;
      _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "[DBLocalSceneController] Activating local scene %{public}@", buf, 0xCu);
    }

    objc_storeStrong(&v6->_scene, scene);
    [(FBScene *)v6->_scene activate:0];
    uiPresentationManager = [(FBScene *)v6->_scene uiPresentationManager];
    v10 = [uiPresentationManager createPresenterWithIdentifier:@"LocalSceneHost"];
    scenePresenter = v6->_scenePresenter;
    v6->_scenePresenter = v10;

    [(UIScenePresenter *)v6->_scenePresenter modifyPresentationContext:&__block_literal_global_37];
    [(UIScenePresenter *)v6->_scenePresenter activate];
    mEMORY[0x277D0AA98] = [MEMORY[0x277D0AA98] sharedInstance];
    v13 = [mEMORY[0x277D0AA98] fbsSceneForScene:v6->_scene];
    clientScene = v6->_clientScene;
    v6->_clientScene = v13;
  }

  return v6;
}

void __40__DBLocalSceneController_initWithScene___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setAppearanceStyle:0];
  v3 = [MEMORY[0x277D75348] clearColor];
  [v2 setBackgroundColorWhileHosting:v3];
}

- (UIScenePresentation)presentationView
{
  scenePresenter = [(DBLocalSceneController *)self scenePresenter];
  presentationView = [scenePresenter presentationView];

  return presentationView;
}

- (id)presentationViewWithIdentifier:(id)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  secondaryScenePresentersByIdentifier = [(DBLocalSceneController *)self secondaryScenePresentersByIdentifier];

  if (!secondaryScenePresentersByIdentifier)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(DBLocalSceneController *)self setSecondaryScenePresentersByIdentifier:v6];
  }

  secondaryScenePresentersByIdentifier2 = [(DBLocalSceneController *)self secondaryScenePresentersByIdentifier];
  scene = [secondaryScenePresentersByIdentifier2 objectForKey:identifierCopy];

  if (!scene)
  {
    scene = [(DBLocalSceneController *)self scene];
    if (scene)
    {
      scene2 = [(DBLocalSceneController *)self scene];
      uiPresentationManager = [scene2 uiPresentationManager];
      isInvalidated = [uiPresentationManager isInvalidated];

      if (isInvalidated)
      {
        scene = 0;
      }

      else
      {
        scene3 = [(DBLocalSceneController *)self scene];
        uiPresentationManager2 = [scene3 uiPresentationManager];
        scene = [uiPresentationManager2 createPresenterWithIdentifier:identifierCopy priority:100];

        [scene modifyPresentationContext:&__block_literal_global_5];
        secondaryScenePresentersByIdentifier3 = [(DBLocalSceneController *)self secondaryScenePresentersByIdentifier];
        [secondaryScenePresentersByIdentifier3 bs_setSafeObject:scene forKey:identifierCopy];
      }
    }
  }

  v9 = DBLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    scene4 = [(DBLocalSceneController *)self scene];
    identity = [scene4 identity];
    v20 = 138543362;
    v21 = identity;
    _os_log_impl(&dword_248146000, v9, OS_LOG_TYPE_DEFAULT, "[DBLocalSceneController] Activating presenter for local scene %{public}@", &v20, 0xCu);
  }

  [scene activate];
  presentationView = [scene presentationView];

  return presentationView;
}

void __57__DBLocalSceneController_presentationViewWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setAppearanceStyle:1];
  v3 = [MEMORY[0x277D75348] clearColor];
  [v2 setBackgroundColorWhileHosting:v3];
}

- (void)invalidatePresentationViewForIdentifier:(id)identifier
{
  v13 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = DBLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    scene = [(DBLocalSceneController *)self scene];
    identity = [scene identity];
    v11 = 138543362;
    v12 = identity;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "[DBLocalSceneController] Invalidating presenter for local scene %{public}@", &v11, 0xCu);
  }

  secondaryScenePresentersByIdentifier = [(DBLocalSceneController *)self secondaryScenePresentersByIdentifier];
  v9 = [secondaryScenePresentersByIdentifier objectForKey:identifierCopy];

  [v9 invalidate];
  secondaryScenePresentersByIdentifier2 = [(DBLocalSceneController *)self secondaryScenePresentersByIdentifier];
  [secondaryScenePresentersByIdentifier2 removeObjectForKey:identifierCopy];
}

- (void)invalidate
{
  scenePresenter = [(DBLocalSceneController *)self scenePresenter];
  [scenePresenter invalidate];

  secondaryScenePresentersByIdentifier = [(DBLocalSceneController *)self secondaryScenePresentersByIdentifier];
  [secondaryScenePresentersByIdentifier enumerateKeysAndObjectsUsingBlock:&__block_literal_global_8];

  secondaryScenePresentersByIdentifier2 = [(DBLocalSceneController *)self secondaryScenePresentersByIdentifier];
  [secondaryScenePresentersByIdentifier2 removeAllObjects];
}

@end