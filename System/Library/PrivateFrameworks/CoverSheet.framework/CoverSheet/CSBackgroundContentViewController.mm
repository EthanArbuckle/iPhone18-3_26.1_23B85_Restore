@interface CSBackgroundContentViewController
- (BOOL)handleEvent:(id)event;
- (BOOL)isScreenOff;
- (CSBackgroundContentViewController)initWithScene:(id)scene frame:(CGRect)frame;
- (id)sceneHostEnvironmentEntriesForBacklightSession;
- (void)_reevaluateContentObscured;
- (void)_setContentObscured:(BOOL)obscured;
- (void)_updateForegroundState;
- (void)_updateUserInterfaceStyle;
- (void)aggregateAppearance:(id)appearance;
- (void)backlightLuminanceChangedForEnvironment:(id)environment previousTraitCollection:(id)collection;
- (void)coverSheetViewController:(id)controller didChangeHasContentAbove:(BOOL)above;
- (void)dealloc;
- (void)loadView;
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
- (void)tapGestureRecognizerAction:(id)action;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CSBackgroundContentViewController

- (CSBackgroundContentViewController)initWithScene:(id)scene frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v27[1] = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  v25.receiver = self;
  v25.super_class = CSBackgroundContentViewController;
  v11 = [(CSBackgroundContentViewController *)&v25 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_scene, scene);
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
    uiPresentationManager = [(FBScene *)v12->_scene uiPresentationManager];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [uiPresentationManager createPresenterWithIdentifier:v20 priority:1];
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
  scenePresenter = [(CSBackgroundContentViewController *)self scenePresenter];
  presentationView = [scenePresenter presentationView];

  v4 = [[CSBackgroundContentView alloc] initWithPresentationView:presentationView];
  [(CSBackgroundContentView *)v4 bs_setHitTestingDisabled:1];
  [(CSBackgroundContentViewController *)self setView:v4];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CSBackgroundContentViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewWillAppear:appear];
  [(CSBackgroundContentViewController *)self _updateForegroundState];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CSBackgroundContentViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewDidDisappear:disappear];
  [(CSBackgroundContentViewController *)self _updateForegroundState];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  windowCopy = window;
  v15.receiver = self;
  v15.super_class = CSBackgroundContentViewController;
  [(CSBackgroundContentViewController *)&v15 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
  isActive = [(FBScene *)self->_scene isActive];
  if (windowCopy && (isActive & 1) == 0)
  {
    scene = self->_scene;
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __81__CSBackgroundContentViewController_viewDidMoveToWindow_shouldAppearOrDisappear___block_invoke;
    v12 = &unk_27838CF10;
    v13 = windowCopy;
    selfCopy = self;
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

- (void)tapGestureRecognizerAction:(id)action
{
  actionCopy = action;
  view = [(CSBackgroundContentViewController *)self view];
  [actionCopy locationInView:view];
  v7 = v6;
  v9 = v8;

  v11 = [objc_alloc(MEMORY[0x277D67C70]) initWithLocation:{v7, v9}];
  v10 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v11, 0}];
  [(FBScene *)self->_scene sendActions:v10];
}

- (void)aggregateAppearance:(id)appearance
{
  appearanceCopy = appearance;
  v8.receiver = self;
  v8.super_class = CSBackgroundContentViewController;
  [(CSCoverSheetViewControllerBase *)&v8 aggregateAppearance:appearanceCopy];
  if (self->_showCompactTime)
  {
    v5 = objc_opt_new();
    v6 = [v5 priority:30];
    v7 = [v6 showCompactTime:1];
    [appearanceCopy addComponent:v7];
  }
}

- (BOOL)handleEvent:(id)event
{
  eventCopy = event;
  v8.receiver = self;
  v8.super_class = CSBackgroundContentViewController;
  if (!-[CSCoverSheetViewControllerBase handleEvent:](&v8, sel_handleEvent_, eventCopy) || ([eventCopy isConsumable] & 1) == 0)
  {
    type = [eventCopy type];
    if (type == 41)
    {
      self->_isModalPresented = 0;
    }

    else
    {
      if (type != 40)
      {
LABEL_9:
        isConsumable = 0;
        goto LABEL_10;
      }

      self->_isModalPresented = 1;
    }

    [(CSBackgroundContentViewController *)self _reevaluateContentObscured];
    goto LABEL_9;
  }

  isConsumable = [eventCopy isConsumable];
LABEL_10:

  return isConsumable;
}

- (id)sceneHostEnvironmentEntriesForBacklightSession
{
  clientHandle = [(FBScene *)self->_scene clientHandle];
  bundleIdentifier = [clientHandle bundleIdentifier];

  backlightSceneHostEnvironment = [(FBScene *)self->_scene backlightSceneHostEnvironment];
  v6 = [MEMORY[0x277D65E08] entryWithSceneHostEnvironment:backlightSceneHostEnvironment bundleIdentifier:bundleIdentifier];
  v7 = [MEMORY[0x277CBEB98] setWithObject:v6];

  return v7;
}

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  settingsCopy = settings;
  settings = [settingsCopy settings];
  showCompactTime = [settings showCompactTime];
  transitionContext = [settingsCopy transitionContext];
  settingsDiff = [settingsCopy settingsDiff];

  if ([settingsDiff containsProperty:sel_showCompactTime])
  {
    self->_showCompactTime = showCompactTime;
    animationFence = [transitionContext animationFence];
    if (animationFence)
    {
      view = [(CSBackgroundContentViewController *)self view];
      window = [view window];
      windowScene = [window windowScene];
      [windowScene _synchronizeDrawingWithFence:animationFence];
    }

    v14 = MEMORY[0x277CF0D38];
    animationSettings = [transitionContext animationSettings];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __67__CSBackgroundContentViewController_scene_didUpdateClientSettings___block_invoke;
    v16[3] = &unk_27838B770;
    v16[4] = self;
    [v14 animateWithSettings:animationSettings actions:v16];
  }
}

- (void)coverSheetViewController:(id)controller didChangeHasContentAbove:(BOOL)above
{
  if (self->_hasContentAboveCoverSheet != above)
  {
    self->_hasContentAboveCoverSheet = above;
    [(CSBackgroundContentViewController *)self _reevaluateContentObscured];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v20.receiver = self;
  v20.super_class = CSBackgroundContentViewController;
  coordinatorCopy = coordinator;
  [(CSCoverSheetViewControllerBase *)&v20 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8 = MEMORY[0x277CF0B70];
  [coordinatorCopy transitionDuration];
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

- (void)backlightLuminanceChangedForEnvironment:(id)environment previousTraitCollection:(id)collection
{
  _backlightLuminance = [collection _backlightLuminance];
  if ((((_backlightLuminance != 0) ^ [(CSBackgroundContentViewController *)self isScreenOff]) & 1) == 0)
  {

    [(CSBackgroundContentViewController *)self _updateForegroundState];
  }
}

- (BOOL)isScreenOff
{
  traitCollection = [(CSBackgroundContentViewController *)self traitCollection];
  v3 = [traitCollection _backlightLuminance] == 0;

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
  traitCollection = [(CSBackgroundContentViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  scene = self->_scene;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__CSBackgroundContentViewController__updateUserInterfaceStyle__block_invoke;
  v6[3] = &__block_descriptor_40_e43_v16__0__UIMutableApplicationSceneSettings_8l;
  v6[4] = userInterfaceStyle;
  [(FBScene *)scene updateSettingsWithBlock:v6];
}

- (void)_setContentObscured:(BOOL)obscured
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_contentObscured != obscured)
  {
    obscuredCopy = obscured;
    self->_contentObscured = obscured;
    v5 = SBLogDashBoard();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v10 = obscuredCopy;
      _os_log_impl(&dword_21EB05000, v5, OS_LOG_TYPE_DEFAULT, "Background content did get obscured: %{BOOL}u", buf, 8u);
    }

    scene = self->_scene;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __57__CSBackgroundContentViewController__setContentObscured___block_invoke;
    v7[3] = &__block_descriptor_33_e33_v16__0__FBSMutableSceneSettings_8l;
    v8 = obscuredCopy;
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