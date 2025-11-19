@interface DBLocalSceneController
- (DBLocalSceneController)initWithScene:(id)a3;
- (UIScenePresentation)presentationView;
- (id)presentationViewWithIdentifier:(id)a3;
- (void)invalidate;
- (void)invalidatePresentationViewForIdentifier:(id)a3;
@end

@implementation DBLocalSceneController

- (DBLocalSceneController)initWithScene:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v16.receiver = self;
  v16.super_class = DBLocalSceneController;
  v6 = [(DBLocalSceneController *)&v16 init];
  if (v6)
  {
    v7 = DBLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v5 identity];
      *buf = 138543362;
      v18 = v8;
      _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "[DBLocalSceneController] Activating local scene %{public}@", buf, 0xCu);
    }

    objc_storeStrong(&v6->_scene, a3);
    [(FBScene *)v6->_scene activate:0];
    v9 = [(FBScene *)v6->_scene uiPresentationManager];
    v10 = [v9 createPresenterWithIdentifier:@"LocalSceneHost"];
    scenePresenter = v6->_scenePresenter;
    v6->_scenePresenter = v10;

    [(UIScenePresenter *)v6->_scenePresenter modifyPresentationContext:&__block_literal_global_37];
    [(UIScenePresenter *)v6->_scenePresenter activate];
    v12 = [MEMORY[0x277D0AA98] sharedInstance];
    v13 = [v12 fbsSceneForScene:v6->_scene];
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
  v2 = [(DBLocalSceneController *)self scenePresenter];
  v3 = [v2 presentationView];

  return v3;
}

- (id)presentationViewWithIdentifier:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DBLocalSceneController *)self secondaryScenePresentersByIdentifier];

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(DBLocalSceneController *)self setSecondaryScenePresentersByIdentifier:v6];
  }

  v7 = [(DBLocalSceneController *)self secondaryScenePresentersByIdentifier];
  v8 = [v7 objectForKey:v4];

  if (!v8)
  {
    v8 = [(DBLocalSceneController *)self scene];
    if (v8)
    {
      v14 = [(DBLocalSceneController *)self scene];
      v15 = [v14 uiPresentationManager];
      v16 = [v15 isInvalidated];

      if (v16)
      {
        v8 = 0;
      }

      else
      {
        v17 = [(DBLocalSceneController *)self scene];
        v18 = [v17 uiPresentationManager];
        v8 = [v18 createPresenterWithIdentifier:v4 priority:100];

        [v8 modifyPresentationContext:&__block_literal_global_5];
        v19 = [(DBLocalSceneController *)self secondaryScenePresentersByIdentifier];
        [v19 bs_setSafeObject:v8 forKey:v4];
      }
    }
  }

  v9 = DBLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(DBLocalSceneController *)self scene];
    v11 = [v10 identity];
    v20 = 138543362;
    v21 = v11;
    _os_log_impl(&dword_248146000, v9, OS_LOG_TYPE_DEFAULT, "[DBLocalSceneController] Activating presenter for local scene %{public}@", &v20, 0xCu);
  }

  [v8 activate];
  v12 = [v8 presentationView];

  return v12;
}

void __57__DBLocalSceneController_presentationViewWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setAppearanceStyle:1];
  v3 = [MEMORY[0x277D75348] clearColor];
  [v2 setBackgroundColorWhileHosting:v3];
}

- (void)invalidatePresentationViewForIdentifier:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DBLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(DBLocalSceneController *)self scene];
    v7 = [v6 identity];
    v11 = 138543362;
    v12 = v7;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "[DBLocalSceneController] Invalidating presenter for local scene %{public}@", &v11, 0xCu);
  }

  v8 = [(DBLocalSceneController *)self secondaryScenePresentersByIdentifier];
  v9 = [v8 objectForKey:v4];

  [v9 invalidate];
  v10 = [(DBLocalSceneController *)self secondaryScenePresentersByIdentifier];
  [v10 removeObjectForKey:v4];
}

- (void)invalidate
{
  v3 = [(DBLocalSceneController *)self scenePresenter];
  [v3 invalidate];

  v4 = [(DBLocalSceneController *)self secondaryScenePresentersByIdentifier];
  [v4 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_8];

  v5 = [(DBLocalSceneController *)self secondaryScenePresentersByIdentifier];
  [v5 removeAllObjects];
}

@end