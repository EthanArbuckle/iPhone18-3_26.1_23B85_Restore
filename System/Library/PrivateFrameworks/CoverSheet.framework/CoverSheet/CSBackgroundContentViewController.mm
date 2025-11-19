@interface CSBackgroundContentViewController
- (BOOL)handleEvent:(id)a3;
- (BOOL)isScreenOff;
- (CSBackgroundContentViewController)initWithScene:(id)a3 frame:(CGRect)a4;
- (id)sceneHostEnvironmentEntriesForBacklightSession;
- (void)_reevaluateContentObscured;
- (void)_setContentObscured:(BOOL)a3;
- (void)_updateForegroundState;
- (void)_updateUserInterfaceStyle;
- (void)aggregateAppearance:(id)a3;
- (void)backlightLuminanceChangedForEnvironment:(id)a3 previousTraitCollection:(id)a4;
- (void)coverSheetViewController:(id)a3 didChangeHasContentAbove:(BOOL)a4;
- (void)dealloc;
- (void)loadView;
- (void)scene:(id)a3 didUpdateClientSettings:(id)a4;
- (void)tapGestureRecognizerAction:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CSBackgroundContentViewController

- (CSBackgroundContentViewController)initWithScene:(id)a3 frame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v27[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v25.receiver = self;
  v25.super_class = CSBackgroundContentViewController;
  v11 = [(CSBackgroundContentViewController *)&v25 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_scene, a3);
    v27[0] = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    v14 = [(CSBackgroundContentViewController *)v12 registerForTraitChanges:v13 withAction:sel_backlightLuminanceChangedForEnvironment_previousTraitCollection_];

    v26 = objc_opt_class();
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
    v16 = [(CSBackgroundContentViewController *)v12 registerForTraitChanges:v15 withAction:sel_userInterfaceStyleChangedForEnvironment_previousTraitCollection_];

    scene = v12->_scene;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __57__CSBackgroundContentViewController_initWithScene_frame___block_invoke;
    v24[3] = &__block_descriptor_64_e43_v16__0__UIMutableApplicationSceneSettings_8l;
    *&v24[4] = x;
    *&v24[5] = y;
    *&v24[6] = width;
    *&v24[7] = height;
    [(FBScene *)scene updateSettingsWithBlock:v24];
    v18 = [(FBScene *)v12->_scene uiPresentationManager];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [v18 createPresenterWithIdentifier:v20 priority:1];
    scenePresenter = v12->_scenePresenter;
    v12->_scenePresenter = v21;

    [(UIScenePresenter *)v12->_scenePresenter modifyPresentationContext:&__block_literal_global_13];
    [(UIScenePresenter *)v12->_scenePresenter activate];
    [(FBScene *)v12->_scene addObserver:v12];
  }

  return v12;
}

void __57__CSBackgroundContentViewController_initWithScene_frame___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setAppearanceStyle:2];
  [v2 setClippingDisabled:1];
}

- (void)dealloc
{
  [(FBScene *)self->_scene invalidate];
  [(UIScenePresenter *)self->_scenePresenter invalidate];
  v3.receiver = self;
  v3.super_class = CSBackgroundContentViewController;
  [(CSCoverSheetViewControllerBase *)&v3 dealloc];
}

- (void)loadView
{
  v3 = [(CSBackgroundContentViewController *)self scenePresenter];
  v5 = [v3 presentationView];

  v4 = [[CSBackgroundContentView alloc] initWithPresentationView:v5];
  [(CSBackgroundContentView *)v4 bs_setHitTestingDisabled:1];
  [(CSBackgroundContentViewController *)self setView:v4];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CSBackgroundContentViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewWillAppear:a3];
  [(CSBackgroundContentViewController *)self _updateForegroundState];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CSBackgroundContentViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewDidDisappear:a3];
  [(CSBackgroundContentViewController *)self _updateForegroundState];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v15.receiver = self;
  v15.super_class = CSBackgroundContentViewController;
  [(CSBackgroundContentViewController *)&v15 viewDidMoveToWindow:v6 shouldAppearOrDisappear:v4];
  v7 = [(FBScene *)self->_scene isActive];
  if (v6 && (v7 & 1) == 0)
  {
    scene = self->_scene;
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __81__CSBackgroundContentViewController_viewDidMoveToWindow_shouldAppearOrDisappear___block_invoke;
    v12 = &unk_27838CF10;
    v13 = v6;
    v14 = self;
    [(FBScene *)scene updateSettingsWithBlock:&v9];
    [(FBScene *)self->_scene activateWithTransitionContext:0, v9, v10, v11, v12];
  }
}

void __81__CSBackgroundContentViewController_viewDidMoveToWindow_shouldAppearOrDisappear___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 screen];
  v6 = [v5 displayConfiguration];
  if ([v6 isMainDisplay])
  {
    v9 = [MEMORY[0x277D0AA90] mainConfiguration];
  }

  else
  {
    v7 = [*(a1 + 32) screen];
    v9 = [v7 displayConfiguration];
  }

  [v4 setDisplayConfiguration:v9];
  v8 = [*(a1 + 40) traitCollection];
  [v4 setUserInterfaceStyle:{objc_msgSend(v8, "userInterfaceStyle")}];
}

- (void)tapGestureRecognizerAction:(id)a3
{
  v4 = a3;
  v5 = [(CSBackgroundContentViewController *)self view];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v11 = [objc_alloc(MEMORY[0x277D67C70]) initWithLocation:{v7, v9}];
  v10 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v11, 0}];
  [(FBScene *)self->_scene sendActions:v10];
}

- (void)aggregateAppearance:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CSBackgroundContentViewController;
  [(CSCoverSheetViewControllerBase *)&v8 aggregateAppearance:v4];
  if (self->_showCompactTime)
  {
    v5 = objc_opt_new();
    v6 = [v5 priority:30];
    v7 = [v6 showCompactTime:1];
    [v4 addComponent:v7];
  }
}

- (BOOL)handleEvent:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CSBackgroundContentViewController;
  if (!-[CSCoverSheetViewControllerBase handleEvent:](&v8, sel_handleEvent_, v4) || ([v4 isConsumable] & 1) == 0)
  {
    v6 = [v4 type];
    if (v6 == 41)
    {
      self->_isModalPresented = 0;
    }

    else
    {
      if (v6 != 40)
      {
LABEL_9:
        v5 = 0;
        goto LABEL_10;
      }

      self->_isModalPresented = 1;
    }

    [(CSBackgroundContentViewController *)self _reevaluateContentObscured];
    goto LABEL_9;
  }

  v5 = [v4 isConsumable];
LABEL_10:

  return v5;
}

- (id)sceneHostEnvironmentEntriesForBacklightSession
{
  v3 = [(FBScene *)self->_scene clientHandle];
  v4 = [v3 bundleIdentifier];

  v5 = [(FBScene *)self->_scene backlightSceneHostEnvironment];
  v6 = [MEMORY[0x277D65E08] entryWithSceneHostEnvironment:v5 bundleIdentifier:v4];
  v7 = [MEMORY[0x277CBEB98] setWithObject:v6];

  return v7;
}

- (void)scene:(id)a3 didUpdateClientSettings:(id)a4
{
  v5 = a4;
  v6 = [v5 settings];
  v7 = [v6 showCompactTime];
  v8 = [v5 transitionContext];
  v9 = [v5 settingsDiff];

  if ([v9 containsProperty:sel_showCompactTime])
  {
    self->_showCompactTime = v7;
    v10 = [v8 animationFence];
    if (v10)
    {
      v11 = [(CSBackgroundContentViewController *)self view];
      v12 = [v11 window];
      v13 = [v12 windowScene];
      [v13 _synchronizeDrawingWithFence:v10];
    }

    v14 = MEMORY[0x277CF0D38];
    v15 = [v8 animationSettings];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __67__CSBackgroundContentViewController_scene_didUpdateClientSettings___block_invoke;
    v16[3] = &unk_27838B770;
    v16[4] = self;
    [v14 animateWithSettings:v15 actions:v16];
  }
}

- (void)coverSheetViewController:(id)a3 didChangeHasContentAbove:(BOOL)a4
{
  if (self->_hasContentAboveCoverSheet != a4)
  {
    self->_hasContentAboveCoverSheet = a4;
    [(CSBackgroundContentViewController *)self _reevaluateContentObscured];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v20.receiver = self;
  v20.super_class = CSBackgroundContentViewController;
  v7 = a4;
  [(CSCoverSheetViewControllerBase *)&v20 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = MEMORY[0x277CF0B70];
  [v7 transitionDuration];
  v10 = v9;

  v11 = [v8 settingsWithDuration:v10];
  scene = self->_scene;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __88__CSBackgroundContentViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v14[3] = &unk_27838CF38;
  v16 = 0;
  v17 = 0;
  v15 = v11;
  v18 = width;
  v19 = height;
  v13 = v11;
  [(FBScene *)scene performUpdate:v14];
}

void __88__CSBackgroundContentViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277D75940];
  v6 = a3;
  v8 = a2;
  v7 = [v5 _synchronizedDrawingFence];
  [v6 setAnimationFence:v7];

  [v6 setAnimationSettings:*(a1 + 32)];
  [v8 setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
}

- (void)backlightLuminanceChangedForEnvironment:(id)a3 previousTraitCollection:(id)a4
{
  v5 = [a4 _backlightLuminance];
  if ((((v5 != 0) ^ [(CSBackgroundContentViewController *)self isScreenOff]) & 1) == 0)
  {

    [(CSBackgroundContentViewController *)self _updateForegroundState];
  }
}

- (BOOL)isScreenOff
{
  v2 = [(CSBackgroundContentViewController *)self traitCollection];
  v3 = [v2 _backlightLuminance] == 0;

  return v3;
}

- (void)_updateForegroundState
{
  v3 = [(CSBackgroundContentViewController *)self _appearState]!= 0;
  v4 = v3 & ~[(CSBackgroundContentViewController *)self isScreenOff];
  scene = self->_scene;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__CSBackgroundContentViewController__updateForegroundState__block_invoke;
  v6[3] = &__block_descriptor_33_e43_v16__0__UIMutableApplicationSceneSettings_8l;
  v7 = v4;
  [(FBScene *)scene updateSettingsWithBlock:v6];
}

- (void)_updateUserInterfaceStyle
{
  v3 = [(CSBackgroundContentViewController *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  scene = self->_scene;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__CSBackgroundContentViewController__updateUserInterfaceStyle__block_invoke;
  v6[3] = &__block_descriptor_40_e43_v16__0__UIMutableApplicationSceneSettings_8l;
  v6[4] = v4;
  [(FBScene *)scene updateSettingsWithBlock:v6];
}

- (void)_setContentObscured:(BOOL)a3
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_contentObscured != a3)
  {
    v3 = a3;
    self->_contentObscured = a3;
    v5 = SBLogDashBoard();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v10 = v3;
      _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEFAULT, "Background content did get obscured: %{BOOL}u", buf, 8u);
    }

    scene = self->_scene;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __57__CSBackgroundContentViewController__setContentObscured___block_invoke;
    v7[3] = &__block_descriptor_33_e33_v16__0__FBSMutableSceneSettings_8l;
    v8 = v3;
    [(FBScene *)scene updateSettings:v7];
  }
}

- (void)_reevaluateContentObscured
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = self->_isModalPresented || self->_hasContentAboveCoverSheet;
  v4 = SBLogDashBoard();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    isModalPresented = self->_isModalPresented;
    hasContentAboveCoverSheet = self->_hasContentAboveCoverSheet;
    v7[0] = 67109376;
    v7[1] = isModalPresented;
    v8 = 1024;
    v9 = hasContentAboveCoverSheet;
    _os_log_impl(&dword_21EB05000, v4, OS_LOG_TYPE_DEFAULT, "Will set background content obscured... isModalPresented: %{BOOL}u, hasContentAboveCoverSheet: %{BOOL}u", v7, 0xEu);
  }

  [(CSBackgroundContentViewController *)self _setContentObscured:v3];
}

@end