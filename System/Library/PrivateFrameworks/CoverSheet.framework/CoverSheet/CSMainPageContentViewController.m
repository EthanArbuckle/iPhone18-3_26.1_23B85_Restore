@interface CSMainPageContentViewController
+ (double)_phoneListWidth;
- (BOOL)_listBelowDateTime;
- (BOOL)_pagingStyleRequiresUserPresenceDetection;
- (BOOL)complicationsUsingBottomPositionForCombinedListViewController:(id)a3;
- (BOOL)dismissNotificationInLongLookAnimated:(BOOL)a3;
- (BOOL)handleEvent:(id)a3;
- (BOOL)isNotificationContentExtensionVisible:(id)a3;
- (BOOL)isPresentingNotificationInLongLook;
- (BOOL)isShowingNonNotificationContent;
- (CSMainPageComplicationsMetricsProvider)complicationGridLayoutMetricsProvider;
- (CSMainPageContentViewController)init;
- (CSMainPageContentViewController)initWithAuthenticationProvider:(id)a3;
- (CSMainPageContentViewControllerMediaControlsObserver)mediaControlsObserver;
- (CSMainPageContentViewControllerNotificationObserver)notificationObserver;
- (CSMainPageDiagnosticsProvider)diagnosticsProvider;
- (CSScrollablePageViewControllerDelegate)delegate;
- (CSTouchEnvironmentStatusProviding)touchEnvironmentStatusProvider;
- (CSUserSessionControlling)userSessionController;
- (CSWallpaperColorProvider)wallpaperColorProvider;
- (CSWallpaperProviding)wallpaperProvider;
- (double)bottomComplicationsInsetForCombinedListViewController:(id)a3;
- (double)customListWidth;
- (double)dateTimeInsetX;
- (double)listInsetX;
- (double)minimumDateToListSpacing;
- (id)diagnosticsDictionaryForCombinedListViewController:(id)a3;
- (id)notificationSectionSettingsForCombinedListViewController:(id)a3;
- (unint64_t)dateTimeLayout;
- (unint64_t)listLayout;
- (unint64_t)listWidthStrategy;
- (void)_addOrRemoveLogoutButtonViewController;
- (void)_addOrRemoveNotificationsListIfNecessaryAnimated:(BOOL)a3;
- (void)_addOrRemoveUserPictureViewController;
- (void)_addOrRemoveViewsAsAppropriate;
- (void)_inlineContentGestureRecognizerDidTap:(id)a3;
- (void)_removeInlineContentGestureRecognizer;
- (void)_setupInlineContentGestureRecognizer;
- (void)_updateSmoothestPermittedPagingStrategy;
- (void)addInlineContentSupportForDelegate:(id)a3;
- (void)aggregateAppearance:(id)a3;
- (void)aggregateBehavior:(id)a3;
- (void)combinedListViewController:(id)a3 isShowingMediaControls:(BOOL)a4;
- (void)combinedListViewControllerWillExpandNotificationListCount:(id)a3;
- (void)dealloc;
- (void)inlineContentDidChange;
- (void)postNotificationRequest:(id)a3;
- (void)removeInlineContentSupport;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4;
- (void)setLayoutStrategy:(id)a3;
- (void)setUseFakeBlur:(BOOL)a3;
- (void)setUserPresenceMonitor:(id)a3;
- (void)setWallpaperColorProvider:(id)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)updateForPresentation:(id)a3;
- (void)updateNotificationRequest:(id)a3;
- (void)userPresenceDetectedSinceWakeDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)withdrawNotificationRequest:(id)a3;
@end

@implementation CSMainPageContentViewController

- (BOOL)isPresentingNotificationInLongLook
{
  if ([(CSPageViewController *)self participantState]!= 2)
  {
    return 0;
  }

  if (!self->_combinedListViewController)
  {
    return 0;
  }

  v3 = [(CSPresentationViewController *)self contentViewControllers];
  v4 = [v3 containsObject:self->_combinedListViewController];

  if (!v4)
  {
    return 0;
  }

  combinedListViewController = self->_combinedListViewController;

  return [(CSCombinedListViewController *)combinedListViewController isPresentingNotificationInLongLook];
}

- (unint64_t)dateTimeLayout
{
  if ([(CSMainPageContentViewController *)self _listBelowDateTime])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)_addOrRemoveUserPictureViewController
{
  if (+[CSUserPictureViewController isUserPictureSupported]|| [(CSLockScreenSettings *)self->_testSettings showUserPicture])
  {
    if (!self->_userPictureViewController)
    {
      v3 = objc_alloc_init(CSUserPictureViewController);
      userPictureViewController = self->_userPictureViewController;
      self->_userPictureViewController = v3;

      v5 = self->_userPictureViewController;

      [(CSPresentationViewController *)self presentContentViewController:v5 animated:0];
    }
  }

  else
  {
    v6 = self->_userPictureViewController;
    if (v6)
    {
      [(CSPresentationViewController *)self dismissContentViewController:v6 animated:0];
      v7 = self->_userPictureViewController;
      self->_userPictureViewController = 0;
    }
  }
}

- (void)_addOrRemoveLogoutButtonViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_userSessionController);
  v4 = [(CSCoverSheetViewControllerBase *)self activeBehavior];
  v5 = [v4 areRestrictedCapabilities:2048];

  if ((v5 & 1) == 0 && (([WeakRetained isLogoutSupported] & 1) != 0 || -[CSLockScreenSettings showLogoutButton](self->_testSettings, "showLogoutButton")))
  {
    if (!self->_logoutButtonViewController)
    {
      v8 = objc_alloc_init(CSLogoutButtonViewController);
      logoutButtonViewController = self->_logoutButtonViewController;
      self->_logoutButtonViewController = v8;

      [(CSLogoutButtonViewController *)self->_logoutButtonViewController setUserSessionController:WeakRetained];
      v10 = self->_logoutButtonViewController;
      v11 = objc_loadWeakRetained(&self->_wallpaperColorProvider);
      [(CSLogoutButtonViewController *)v10 setWallpaperColorProvider:v11];

      v12 = self->_logoutButtonViewController;
      v13 = objc_loadWeakRetained(&self->_wallpaperProvider);
      [(CSLogoutButtonViewController *)v12 setWallpaperProvider:v13];

      v14 = self->_logoutButtonViewController;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __73__CSMainPageContentViewController__addOrRemoveLogoutButtonViewController__block_invoke;
      v16[3] = &unk_27838B798;
      v16[4] = self;
      [(CSMainPageContentViewController *)self bs_addChildViewController:v14 animated:0 transitionBlock:v16];
    }
  }

  else
  {
    v6 = self->_logoutButtonViewController;
    if (v6)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __73__CSMainPageContentViewController__addOrRemoveLogoutButtonViewController__block_invoke_2;
      v15[3] = &unk_27838B798;
      v15[4] = self;
      [(CSMainPageContentViewController *)self bs_removeChildViewController:v6 animated:0 transitionBlock:v15];
      v7 = self->_logoutButtonViewController;
      self->_logoutButtonViewController = 0;
    }
  }
}

- (BOOL)_listBelowDateTime
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 1;
  }

  return [(CSMainPageContentViewController *)self _isPortrait];
}

- (void)_addOrRemoveViewsAsAppropriate
{
  [(CSMainPageContentViewController *)self _addOrRemoveUserPictureViewController];
  [(CSMainPageContentViewController *)self _addOrRemoveLogoutButtonViewController];

  [(CSMainPageContentViewController *)self _addOrRemoveNotificationsListIfNecessaryAnimated:1];
}

- (void)_updateSmoothestPermittedPagingStrategy
{
  v3 = [(CSLockScreenSettings *)self->_testSettings dashBoardScrollModifierSettings];
  v4 = [v3 strategy];

  v5 = [(CSUserPresenceMonitor *)self->_userPresenceMonitor isUserPresenceDetectionSupported];
  v6 = [(SBFAuthenticationStatusProvider *)self->_authenticationProvider hasPasscodeSet];
  if (v4 == 1)
  {
    goto LABEL_6;
  }

  if (v4 == 4)
  {
    userPresenceMonitor = self->_userPresenceMonitor;
    if (v5)
    {
      [(CSUserPresenceMonitor *)userPresenceMonitor enableDetectionForReason:@"Paging Friction" monitorType:0];
      v4 = 4;
      goto LABEL_7;
    }

    [(CSUserPresenceMonitor *)userPresenceMonitor disableDetectionForReason:@"Paging Friction" monitorType:0];
LABEL_6:
    v4 = v6;
  }

LABEL_7:
  self->_smoothestPermittedStrategy = v4;
}

- (BOOL)_pagingStyleRequiresUserPresenceDetection
{
  v2 = [(CSLockScreenSettings *)self->_testSettings dashBoardScrollModifierSettings];
  v3 = [v2 strategy] == 4;

  return v3;
}

- (CSMainPageContentViewController)init
{
  v12.receiver = self;
  v12.super_class = CSMainPageContentViewController;
  v2 = [(CSMainPageContentViewController *)&v12 init];
  if (v2)
  {
    v3 = +[CSLockScreenDomain rootSettings];
    testSettings = v2->_testSettings;
    v2->_testSettings = v3;

    [(PTSettings *)v2->_testSettings addKeyObserver:v2];
    v5 = objc_alloc_init(MEMORY[0x277D3EE88]);
    widgetMetricsProvider = v2->_widgetMetricsProvider;
    v2->_widgetMetricsProvider = v5;

    v7 = objc_alloc_init(CSCombinedListViewController);
    combinedListViewController = v2->_combinedListViewController;
    v2->_combinedListViewController = v7;

    [(CSCombinedListViewController *)v2->_combinedListViewController setDelegate:v2];
    [(CSCombinedListViewController *)v2->_combinedListViewController setPage:v2];
    [(CSCombinedListViewController *)v2->_combinedListViewController setScrollablePage:v2];
    v9 = v2->_combinedListViewController;
    v10 = [(CSMainPageContentViewController *)v2 layoutStrategy];
    [(CSCombinedListViewController *)v9 setLayoutStrategy:v10];

    [(CSCombinedListViewController *)v2->_combinedListViewController setWidgetMetricsProvider:v2->_widgetMetricsProvider];
  }

  return v2;
}

- (CSMainPageContentViewController)initWithAuthenticationProvider:(id)a3
{
  v5 = a3;
  v6 = [(CSMainPageContentViewController *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_authenticationProvider, a3);
  }

  return v7;
}

- (void)dealloc
{
  [(PTSettings *)self->_testSettings removeKeyObserver:self];
  v3.receiver = self;
  v3.super_class = CSMainPageContentViewController;
  [(CSCoverSheetViewControllerBase *)&v3 dealloc];
}

- (BOOL)isShowingNonNotificationContent
{
  v12 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(CSPresentationViewController *)self presentedViewControllers:0];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)setLayoutStrategy:(id)a3
{
  v5 = a3;
  if (self->_layoutStrategy != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_layoutStrategy, a3);
    [(CSCombinedListViewController *)self->_combinedListViewController setLayoutStrategy:v6];
    v5 = v6;
  }
}

- (void)setWallpaperColorProvider:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_wallpaperColorProvider);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_wallpaperColorProvider, obj);
    [(CSLogoutButtonViewController *)self->_logoutButtonViewController setWallpaperColorProvider:obj];
  }
}

- (void)setUserPresenceMonitor:(id)a3
{
  v5 = a3;
  userPresenceMonitor = self->_userPresenceMonitor;
  if (userPresenceMonitor != v5)
  {
    v7 = v5;
    [(CSUserPresenceMonitor *)userPresenceMonitor disableDetectionForReason:@"Paging Friction" monitorType:0];
    [(CSUserPresenceMonitor *)self->_userPresenceMonitor removeObserver:self];
    objc_storeStrong(&self->_userPresenceMonitor, a3);
    [(CSUserPresenceMonitor *)self->_userPresenceMonitor addObserver:self];
    [(CSCoverSheetViewControllerBase *)self updateBehaviorForController:self];
    userPresenceMonitor = [(CSCombinedListViewController *)self->_combinedListViewController setUserPresenceMonitor:v7];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](userPresenceMonitor, v5);
}

- (void)addInlineContentSupportForDelegate:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_inlineContentViewControllerDelegate, a3);
  if ([v5 shouldInlineContentReceiveBackgroundTouches])
  {
    [(CSMainPageContentViewController *)self _setupInlineContentGestureRecognizer];
  }

  else
  {
    [(CSMainPageContentViewController *)self _removeInlineContentGestureRecognizer];
  }
}

- (void)removeInlineContentSupport
{
  if (self->_inlineContentGestureRecognizer)
  {
    [(CSMainPageContentViewController *)self _removeInlineContentGestureRecognizer];
  }

  inlineContentViewControllerDelegate = self->_inlineContentViewControllerDelegate;
  self->_inlineContentViewControllerDelegate = 0;
}

- (void)inlineContentDidChange
{
  BSDispatchQueueAssertMain();
  inlineContentViewControllerDelegate = self->_inlineContentViewControllerDelegate;
  if (inlineContentViewControllerDelegate)
  {
    v4 = [(CSMainPageInlineContentViewControllerDelegate *)inlineContentViewControllerDelegate shouldInlineContentReceiveBackgroundTouches];
    inlineContentGestureRecognizer = self->_inlineContentGestureRecognizer;
    if (v4)
    {
      if (!inlineContentGestureRecognizer)
      {

        [(CSMainPageContentViewController *)self _setupInlineContentGestureRecognizer];
      }
    }

    else if (inlineContentGestureRecognizer)
    {

      [(CSMainPageContentViewController *)self _removeInlineContentGestureRecognizer];
    }
  }
}

- (void)_setupInlineContentGestureRecognizer
{
  if (!self->_inlineContentGestureRecognizer)
  {
    v3 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__inlineContentGestureRecognizerDidTap_];
    inlineContentGestureRecognizer = self->_inlineContentGestureRecognizer;
    self->_inlineContentGestureRecognizer = v3;

    [(UITapGestureRecognizer *)self->_inlineContentGestureRecognizer setNumberOfTapsRequired:1];
    v5 = [(CSPageViewController *)self view];
    [v5 addGestureRecognizer:self->_inlineContentGestureRecognizer];
  }
}

- (void)_removeInlineContentGestureRecognizer
{
  if (self->_inlineContentGestureRecognizer)
  {
    v3 = [(CSPageViewController *)self view];
    [v3 removeGestureRecognizer:self->_inlineContentGestureRecognizer];

    inlineContentGestureRecognizer = self->_inlineContentGestureRecognizer;
    self->_inlineContentGestureRecognizer = 0;
  }
}

- (void)_inlineContentGestureRecognizerDidTap:(id)a3
{
  if ([a3 state] == 3)
  {
    [(CSMainPageInlineContentViewControllerDelegate *)self->_inlineContentViewControllerDelegate didReceiveBackgroundTouch];

    [(CSCoverSheetViewControllerBase *)self updateAppearanceForController:self];
  }
}

- (void)viewDidLoad
{
  v3 = [(CSPageViewController *)self view];
  [MEMORY[0x277D67DA0] idealSearchPlatterWidth];
  [v3 setContentWidth:?];
  [(CSCoverSheetViewControllerBase *)self registerView:v3 forRole:1];
  v4.receiver = self;
  v4.super_class = CSMainPageContentViewController;
  [(CSPageViewController *)&v4 viewDidLoad];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = CSMainPageContentViewController;
  [(CSPresentationViewController *)&v3 viewWillLayoutSubviews];
  [(CSCombinedListViewController *)self->_combinedListViewController layoutListView];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CSMainPageContentViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewWillAppear:a3];
  [(CSMainPageContentViewController *)self _updateSmoothestPermittedPagingStrategy];
  [(CSMainPageContentViewController *)self _addOrRemoveViewsAsAppropriate];
  [(CSCoverSheetViewControllerBase *)self rebuildBehavior];
}

- (void)aggregateAppearance:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CSMainPageContentViewController;
  [(CSPageViewController *)&v19 aggregateAppearance:v4];
  v5 = [(CSCoverSheetViewControllerBase *)self kitPresentedViewController];
  if (v5)
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [CSAppearance appearanceForProvider:v5];
    }

    else
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = [MEMORY[0x277CF0C00] descriptionForObject:v5];
      v9 = [v7 stringWithFormat:@"MainPageUIKitModal:%@", v8];

      v6 = [CSAppearance appearanceWithIdentifier:v9];
      v10 = [v5 presentationController];
      v11 = [v10 shouldPresentInFullscreen];

      if (v11)
      {
        v12 = objc_opt_new();
        v13 = [v12 priority:10];
        v14 = [v13 fakeStatusBar:1];
        v15 = [v14 fakeStatusBarLevel:&unk_28307A3D0];
        [v6 addComponent:v15];
      }
    }

    [v4 unionAppearance:v6];
  }

  if (self->_inlineContentViewControllerDelegate)
  {
    [v4 unionAppearance:?];
  }

  if (self->_useFakeBlur)
  {
    v16 = objc_opt_new();
    v17 = [v16 priority:10];
    v18 = [v17 style:&unk_28307A3E8];
    [v4 addComponent:v18];
  }
}

- (void)aggregateBehavior:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CSMainPageContentViewController;
  [(CSPageViewController *)&v18 aggregateBehavior:v4];
  v5 = [v4 scrollingStrategy];
  v6 = 0;
  smoothestPermittedStrategy = self->_smoothestPermittedStrategy;
  if (smoothestPermittedStrategy <= 1)
  {
    if (smoothestPermittedStrategy)
    {
      if (smoothestPermittedStrategy == 1)
      {
        v8 = [(SBFAuthenticationStatusProvider *)self->_authenticationProvider isAuthenticatedCached];
LABEL_9:
        if (v8)
        {
          v6 = 2;
        }

        else
        {
          v6 = 1;
        }
      }
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_touchEnvironmentStatusProvider);
      if ([WeakRetained expectsPocketTouches])
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }
    }
  }

  else
  {
    switch(smoothestPermittedStrategy)
    {
      case 2:
        v6 = 1;
        break;
      case 3:
        v6 = 2;
        break;
      case 4:
        v8 = [(CSUserPresenceMonitor *)self->_userPresenceMonitor userPresenceDetectedSinceWake];
        goto LABEL_9;
    }
  }

  if (v5 <= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v5;
  }

  [v4 setScrollingStrategy:v10];
  v11 = [(CSCoverSheetViewControllerBase *)self kitPresentedViewController];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_33;
  }

  v13 = [v11 transitionCoordinator];
  v14 = v13;
  if (!v13 || ([v13 isInteractive] & 1) == 0)
  {
    v15 = +[CSBehavior behavior];
    if (objc_opt_respondsToSelector())
    {
      [v15 unionBehavior:v12];
LABEL_31:
      [v4 unionBehavior:v15];

      goto LABEL_32;
    }

    [v15 setIdleTimerMode:1];
    v16 = [v12 presentationController];
    if ([v16 shouldPresentInFullscreen])
    {
      v17 = [v12 isBeingPresented];

      if (v17)
      {
        [v15 setScrollingStrategy:3];
        [v15 setIdleTimerDuration:14];
        [v15 setIdleWarnMode:2];
        goto LABEL_31;
      }
    }

    else
    {
    }

    [v15 setIdleTimerDuration:12];
    goto LABEL_31;
  }

LABEL_32:

LABEL_33:
  if (self->_inlineContentViewControllerDelegate)
  {
    [v4 unionBehavior:?];
  }
}

- (void)updateForPresentation:(id)a3
{
  v4 = a3;
  v5 = [(CSMainPageContentViewController *)self _mainPageView];
  [v5 updateForPresentation:v4];

  v6.receiver = self;
  v6.super_class = CSMainPageContentViewController;
  [(CSCoverSheetViewControllerBase *)&v6 updateForPresentation:v4];
}

- (BOOL)handleEvent:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CSMainPageContentViewController;
  if (!-[CSPresentationViewController handleEvent:](&v17, sel_handleEvent_, v4) || ([v4 isConsumable] & 1) == 0)
  {
    v6 = [v4 type];
    v5 = 0;
    if (v6 > 12)
    {
      switch(v6)
      {
        case 13:
          [(CSCoverSheetViewControllerBase *)self rebuildBehavior];
          break;
        case 21:
          if ([(CSMainPageInlineContentViewControllerDelegate *)self->_inlineContentViewControllerDelegate shouldInlineContentReceiveBackgroundTouches])
          {
            [(CSMainPageInlineContentViewControllerDelegate *)self->_inlineContentViewControllerDelegate didReceiveBackgroundScroll];
          }

          break;
        case 24:
          if (![(CSCombinedListViewController *)self->_combinedListViewController hasContent])
          {
            v8 = dispatch_get_global_queue(17, 0);
            dispatch_async(v8, &__block_literal_global_0);
          }

          break;
        default:
          goto LABEL_20;
      }
    }

    else
    {
      switch(v6)
      {
        case 1:
          [(CSMainPageContentViewController *)self _addOrRemoveViewsAsAppropriate];
          v9 = [(CSCoverSheetViewControllerBase *)self activeAppearance];
          v10 = [v9 legibilitySettings];

          v11 = [(CSMainPageContentViewController *)self _mainPageView];
          [v11 updateForLegibilitySettings:v10];

          v12 = [(CSCoverSheetViewControllerBase *)self activeAppearance];
          v13 = [v12 componentForType:6 property:1];
          v14 = [v13 isHidden];

          v15 = [(CSMainPageContentViewController *)self _mainPageView];
          [v15 setFakeWallpaperVisible:v14 ^ 1u];

          break;
        case 2:
          [(CSMainPageContentViewController *)self _addOrRemoveViewsAsAppropriate];
          break;
        case 9:
          userPictureViewController = self->_userPictureViewController;
          self->_userPictureViewController = 0;

          break;
        default:
          goto LABEL_20;
      }
    }

    v5 = 0;
    goto LABEL_20;
  }

  v5 = [v4 isConsumable];
LABEL_20:

  return v5;
}

void __47__CSMainPageContentViewController_handleEvent___block_invoke()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.springboard.lockNotificationListEmptyAtScreenOn", 0, 0, 1u);
}

- (void)postNotificationRequest:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v4 notificationIdentifier];
    v10 = [v9 un_logDigest];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v14 = 138543874;
    v15 = v8;
    v16 = 2114;
    v17 = v10;
    v18 = 2114;
    v19 = v12;
    _os_log_impl(&dword_21EB05000, v6, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ posting notification %{public}@ to %{public}@", &v14, 0x20u);
  }

  [(CSCombinedListViewController *)self->_combinedListViewController postNotificationRequest:v4];
  WeakRetained = objc_loadWeakRetained(&self->_notificationObserver);
  [WeakRetained didPostNotificationRequest:v4];
}

- (void)updateNotificationRequest:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v4 notificationIdentifier];
    v10 = [v9 un_logDigest];
    v11 = 138543618;
    v12 = v8;
    v13 = 2114;
    v14 = v10;
    _os_log_impl(&dword_21EB05000, v6, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ updating notification %{public}@", &v11, 0x16u);
  }

  [(CSCombinedListViewController *)self->_combinedListViewController updateNotificationRequest:v4];
}

- (void)withdrawNotificationRequest:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v4 notificationIdentifier];
    v10 = [v9 un_logDigest];
    v11 = 138543618;
    v12 = v8;
    v13 = 2114;
    v14 = v10;
    _os_log_impl(&dword_21EB05000, v6, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ withdrawing notification %{public}@", &v11, 0x16u);
  }

  [(CSCombinedListViewController *)self->_combinedListViewController withdrawNotificationRequest:v4];
}

- (BOOL)isNotificationContentExtensionVisible:(id)a3
{
  v7 = -[CSPageViewController participantState](self, "participantState") == 2 && self->_combinedListViewController && (-[CSPresentationViewController contentViewControllers](self, "contentViewControllers"), v5 = v4 = a3;

  return v7;
}

- (BOOL)dismissNotificationInLongLookAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(CSPageViewController *)self participantState]!= 2)
  {
    return 0;
  }

  if (!self->_combinedListViewController)
  {
    return 0;
  }

  v5 = [(CSPresentationViewController *)self contentViewControllers];
  v6 = [v5 containsObject:self->_combinedListViewController];

  if (!v6)
  {
    return 0;
  }

  combinedListViewController = self->_combinedListViewController;

  return [(CSCombinedListViewController *)combinedListViewController dismissNotificationInLongLookAnimated:v3];
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v8 = a4;
  v6 = a3;
  [(CSMainPageContentViewController *)self _addOrRemoveViewsAsAppropriate];
  v7 = [(CSLockScreenSettings *)self->_testSettings dashBoardScrollModifierSettings];

  if (v7 == v6 && [v8 isEqualToString:@"strategy"])
  {
    [(CSMainPageContentViewController *)self _updateSmoothestPermittedPagingStrategy];
    [(CSCoverSheetViewControllerBase *)self updateBehaviorForController:self];
  }
}

- (id)notificationSectionSettingsForCombinedListViewController:(id)a3
{
  v4 = [(CSMainPageContentViewController *)self dispatcher];
  v5 = [v4 notificationSectionSettingsForDestination:self];

  return v5;
}

- (void)combinedListViewControllerWillExpandNotificationListCount:(id)a3
{
  if ([(CSMainPageInlineContentViewControllerDelegate *)self->_inlineContentViewControllerDelegate shouldInlineContentReceiveBackgroundTouches])
  {
    inlineContentViewControllerDelegate = self->_inlineContentViewControllerDelegate;

    [(CSMainPageInlineContentViewControllerDelegate *)inlineContentViewControllerDelegate didReceiveBackgroundTouch];
  }
}

- (void)combinedListViewController:(id)a3 isShowingMediaControls:(BOOL)a4
{
  v4 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_mediaControlsObserver);
  [WeakRetained setShowingMediaControls:v4];
}

- (double)bottomComplicationsInsetForCombinedListViewController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_complicationGridLayoutMetricsProvider);
  [WeakRetained bottomInsetForBottomComplications];
  v5 = v4;

  return v5;
}

- (BOOL)complicationsUsingBottomPositionForCombinedListViewController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_complicationGridLayoutMetricsProvider);
  v4 = [WeakRetained complicationsUsingBottomPosition];

  return v4;
}

- (id)diagnosticsDictionaryForCombinedListViewController:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"clockTimeHeight";
  v3 = MEMORY[0x277CCABB0];
  WeakRetained = objc_loadWeakRetained(&self->_diagnosticsProvider);
  [WeakRetained timeTextHeight];
  v5 = [v3 numberWithDouble:?];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  return v6;
}

- (void)userPresenceDetectedSinceWakeDidChange:(id)a3
{
  if ([(CSMainPageContentViewController *)self _pagingStyleRequiresUserPresenceDetection])
  {

    [(CSCoverSheetViewControllerBase *)self updateBehaviorForController:self];
  }
}

- (double)dateTimeInsetX
{
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  result = 16.0;
  if ((v5 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v7 = [(CSMainPageContentViewController *)self _isPortrait];
    result = 24.0;
    if (!v7)
    {
      v8 = __sb__runningInSpringBoard();
      v9 = v8;
      if (v8)
      {
        if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
        {
          goto LABEL_21;
        }

        if (SBFEffectiveHomeButtonType() != 2)
        {
          if (v9)
          {
            goto LABEL_21;
          }

LABEL_13:

          goto LABEL_21;
        }
      }

      else
      {
        v4 = [MEMORY[0x277D75418] currentDevice];
        if ([v4 userInterfaceIdiom] || SBFEffectiveHomeButtonType() != 2)
        {
          goto LABEL_13;
        }
      }

      v10 = __sb__runningInSpringBoard();
      v11 = v10;
      if (v10)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v2 = [MEMORY[0x277D759A0] mainScreen];
        [v2 _referenceBounds];
      }

      BSSizeRoundForScale();
      v13 = v12;
      v14 = *(MEMORY[0x277D66E30] + 120);
      if ((v11 & 1) == 0)
      {
      }

      if ((v9 & 1) == 0)
      {
      }

      if (v13 >= v14)
      {
        return 88.0;
      }

LABEL_21:
      v16 = __sb__runningInSpringBoard();
      v17 = v16;
      if (v16)
      {
        if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
        {
          goto LABEL_39;
        }

        if (SBFEffectiveHomeButtonType() != 2)
        {
          if (v17)
          {
            goto LABEL_39;
          }

LABEL_31:

          goto LABEL_39;
        }
      }

      else
      {
        v4 = [MEMORY[0x277D75418] currentDevice];
        if ([v4 userInterfaceIdiom] || SBFEffectiveHomeButtonType() != 2)
        {
          goto LABEL_31;
        }
      }

      v18 = __sb__runningInSpringBoard();
      v19 = v18;
      if (v18)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v2 = [MEMORY[0x277D759A0] mainScreen];
        [v2 _referenceBounds];
      }

      BSSizeRoundForScale();
      v21 = v20;
      v22 = *(MEMORY[0x277D66E30] + 88);
      if ((v19 & 1) == 0)
      {
      }

      if ((v17 & 1) == 0)
      {
      }

      if (v21 >= v22)
      {
        return 78.0;
      }

LABEL_39:
      v23 = __sb__runningInSpringBoard();
      v24 = v23;
      if (v23)
      {
        if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
        {
          return 40.0;
        }
      }

      else
      {
        v4 = [MEMORY[0x277D75418] currentDevice];
        if ([v4 userInterfaceIdiom])
        {

          return 40.0;
        }
      }

      v25 = __sb__runningInSpringBoard();
      v26 = v25;
      if (v25)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v2 = [MEMORY[0x277D759A0] mainScreen];
        [v2 _referenceBounds];
      }

      BSSizeRoundForScale();
      v28 = v27 >= *(MEMORY[0x277D66E30] + 56);
      if ((v26 & 1) == 0)
      {
      }

      if (v24)
      {
        if (!v28)
        {
          return 40.0;
        }
      }

      else
      {

        if (!v28)
        {
          return 40.0;
        }
      }

      return 44.0;
    }
  }

  return result;
}

- (double)minimumDateToListSpacing
{
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  v6 = 0.0;
  if ((v5 & 0xFFFFFFFFFFFFFFFBLL) != 1 && ![(CSMainPageContentViewController *)self _isPortrait])
  {
    v7 = __sb__runningInSpringBoard();
    v8 = v7;
    if (v7)
    {
      if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
      {
        goto LABEL_20;
      }

      if (SBFEffectiveHomeButtonType() != 2)
      {
        if (v8)
        {
          goto LABEL_20;
        }

LABEL_13:

        goto LABEL_20;
      }
    }

    else
    {
      v4 = [MEMORY[0x277D75418] currentDevice];
      if ([v4 userInterfaceIdiom] || SBFEffectiveHomeButtonType() != 2)
      {
        goto LABEL_13;
      }
    }

    v9 = __sb__runningInSpringBoard();
    v10 = v9;
    if (v9)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v2 = [MEMORY[0x277D759A0] mainScreen];
      [v2 _referenceBounds];
    }

    BSSizeRoundForScale();
    v12 = v11;
    v13 = *(MEMORY[0x277D66E30] + 72);
    if ((v10 & 1) == 0)
    {
    }

    if ((v8 & 1) == 0)
    {
    }

    v6 = 24.0;
    if (v12 < v13)
    {
LABEL_20:
      v14 = __sb__runningInSpringBoard();
      v15 = v14;
      if (v14)
      {
        if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v4 = [MEMORY[0x277D75418] currentDevice];
        if ([v4 userInterfaceIdiom])
        {

          goto LABEL_35;
        }
      }

      v16 = __sb__runningInSpringBoard();
      v17 = v16;
      if (v16)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v2 = [MEMORY[0x277D759A0] mainScreen];
        [v2 _referenceBounds];
      }

      BSSizeRoundForScale();
      v19 = v18;
      v20 = *(MEMORY[0x277D66E30] + 56);
      if ((v17 & 1) == 0)
      {
      }

      if ((v15 & 1) == 0)
      {
      }

      if (v19 >= v20)
      {
        v21 = 0x4044000000000000;
        return *&v21;
      }

LABEL_35:
      v22 = __sb__runningInSpringBoard();
      v23 = v22;
      if (v22)
      {
        if (SBFEffectiveDeviceClass())
        {
          v6 = 24.0;
          if (SBFEffectiveDeviceClass() != 1)
          {
            return v6;
          }
        }
      }

      else
      {
        v4 = [MEMORY[0x277D75418] currentDevice];
        if ([v4 userInterfaceIdiom])
        {

          return 24.0;
        }
      }

      v24 = __sb__runningInSpringBoard();
      v25 = v24;
      if (v24)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        v2 = [MEMORY[0x277D759A0] mainScreen];
        [v2 _referenceBounds];
      }

      BSSizeRoundForScale();
      v27 = v26 >= *(MEMORY[0x277D66E30] + 40);
      if ((v25 & 1) == 0)
      {
      }

      if (v23)
      {
        v6 = 24.0;
        if (!v27)
        {
          return v6;
        }
      }

      else
      {

        v6 = 24.0;
        if (!v27)
        {
          return v6;
        }
      }

      v21 = 0x4040000000000000;
      return *&v21;
    }
  }

  return v6;
}

- (unint64_t)listLayout
{
  if ([(CSMainPageContentViewController *)self _listBelowDateTime])
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

- (unint64_t)listWidthStrategy
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) != 1 && ![(CSMainPageContentViewController *)self _isPortrait])
  {
    return 2;
  }

  v5 = [MEMORY[0x277D75418] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  return (v6 & 0xFFFFFFFFFFFFFFFBLL) == 1;
}

- (double)customListWidth
{
  v3 = [(CSPageViewController *)self view];
  [v3 bounds];
  Height = CGRectGetHeight(v11);

  v5 = [(CSPageViewController *)self view];
  [v5 bounds];
  Width = CGRectGetWidth(v12);

  if (Height >= Width)
  {
    Height = Width;
  }

  v7 = [(CSMainPageContentViewController *)self combinedListViewController];
  [v7 horizontalInsetMargin];
  v9 = Height + v8 * -2.0;

  return v9;
}

- (double)listInsetX
{
  v6 = [(CSMainPageContentViewController *)self combinedListViewController];
  [v6 horizontalInsetMargin];
  v8 = v7;

  if ([(CSMainPageContentViewController *)self _listBelowDateTime])
  {
    return v8;
  }

  v9 = __sb__runningInSpringBoard();
  if (v9)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v10 = 0;
      v11 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v129 = [MEMORY[0x277D75418] currentDevice];
    if ([v129 userInterfaceIdiom] != 1)
    {
      v10 = 0;
      v11 = 1;
      goto LABEL_11;
    }
  }

  v11 = v9 ^ 1u;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v12 = __sb__runningInSpringBoard();
    if (v12)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v120 = [MEMORY[0x277D759A0] mainScreen];
      [v120 _referenceBounds];
    }

    v10 = v12 ^ 1;
    BSSizeRoundForScale();
    if (v31 == *(MEMORY[0x277D66E30] + 288) && v30 == *(MEMORY[0x277D66E30] + 296))
    {
      v146 = v12 ^ 1;
      v147 = v11;
      v138 = 0;
      memset(v137, 0, sizeof(v137));
      v139 = 0;
      v136 = 0;
      v140 = 0;
      v135 = 0;
      v134 = 0;
      v141 = 0;
      v142 = 0;
      v133 = 0;
      v132 = 0;
      v143 = 0;
      v144 = 0;
      v131 = 0;
      v130 = 0;
      v22 = 0;
      v145 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v8 = 0.0;
      goto LABEL_68;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_11:
  v13 = __sb__runningInSpringBoard();
  v146 = v10;
  v147 = v11;
  if (v13)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v14 = 0;
      v15 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    v128 = [MEMORY[0x277D75418] currentDevice];
    if ([v128 userInterfaceIdiom] != 1)
    {
      v14 = 0;
      v15 = 1;
      goto LABEL_20;
    }
  }

  v15 = v13 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v12 = __sb__runningInSpringBoard();
    if (v12)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v119 = [MEMORY[0x277D759A0] mainScreen];
      [v119 _referenceBounds];
    }

    v14 = v12 ^ 1;
    BSSizeRoundForScale();
    if (v33 >= *(MEMORY[0x277D66E30] + 440))
    {
      v144 = v12 ^ 1;
      v145 = v15;
      v138 = 0;
      memset(v137, 0, sizeof(v137));
      v139 = 0;
      v136 = 0;
      v140 = 0;
      v135 = 0;
      v134 = 0;
      v141 = 0;
      v142 = 0;
      v133 = 0;
      v132 = 0;
      v143 = 0;
      v131 = 0;
      v130 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v8 = 0.0;
      goto LABEL_68;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_20:
  v16 = __sb__runningInSpringBoard();
  v144 = v14;
  v145 = v15;
  if (v16)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v17 = 0;
      v18 = 0;
      goto LABEL_29;
    }
  }

  else
  {
    v127 = [MEMORY[0x277D75418] currentDevice];
    if ([v127 userInterfaceIdiom] != 1)
    {
      v17 = 0;
      v18 = 1;
      goto LABEL_29;
    }
  }

  v18 = v16 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v12 = __sb__runningInSpringBoard();
    if (v12)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v118 = [MEMORY[0x277D759A0] mainScreen];
      [v118 _referenceBounds];
    }

    v17 = v12 ^ 1;
    BSSizeRoundForScale();
    if (v34 >= *(MEMORY[0x277D66E30] + 376))
    {
      v142 = v12 ^ 1;
      v143 = v18;
      v138 = 0;
      memset(v137, 0, sizeof(v137));
      v139 = 0;
      v136 = 0;
      v140 = 0;
      v135 = 0;
      v134 = 0;
      v141 = 0;
      v132 = 0;
      v133 = 0;
      v131 = 0;
      v130 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v8 = 0.0;
      goto LABEL_68;
    }
  }

  else
  {
    v17 = 0;
  }

LABEL_29:
  v19 = __sb__runningInSpringBoard();
  v142 = v17;
  v143 = v18;
  if (v19)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v2 = 0;
      v3 = 0;
      goto LABEL_38;
    }
  }

  else
  {
    v126 = [MEMORY[0x277D75418] currentDevice];
    if ([v126 userInterfaceIdiom] != 1)
    {
      v2 = 0;
      v3 = 1;
      goto LABEL_38;
    }
  }

  v3 = v19 ^ 1u;
  v12 = __sb__runningInSpringBoard();
  if (v12)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v123 = [MEMORY[0x277D759A0] mainScreen];
    [v123 _referenceBounds];
  }

  v2 = v12 ^ 1;
  BSSizeRoundForScale();
  if (v20 >= *(MEMORY[0x277D66E30] + 280))
  {
    v140 = v12 ^ 1;
    v141 = v3;
    v138 = 0;
    memset(v137, 0, sizeof(v137));
    v139 = 0;
    v136 = 0;
    v134 = 0;
    v135 = 0;
    v132 = 0;
    v133 = 0;
    v131 = 0;
    v130 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v8 = 0.0;
    goto LABEL_68;
  }

LABEL_38:
  v21 = __sb__runningInSpringBoard();
  v140 = v2;
  v141 = v3;
  if (v21)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v139 = 0;
      goto LABEL_48;
    }
  }

  else
  {
    v125 = [MEMORY[0x277D75418] currentDevice];
    if ([v125 userInterfaceIdiom] != 1)
    {
      v139 = 0x100000000;
      goto LABEL_48;
    }
  }

  HIDWORD(v139) = v21 ^ 1;
  v12 = __sb__runningInSpringBoard();
  if (v12)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v121 = [MEMORY[0x277D759A0] mainScreen];
    [v121 _referenceBounds];
  }

  LODWORD(v139) = v12 ^ 1;
  BSSizeRoundForScale();
  if (v28 >= *(MEMORY[0x277D66E30] + 264))
  {
    v138 = 0;
    memset(v137, 0, sizeof(v137));
    v135 = 0;
    v136 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v130 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v8 = 0.0;
    goto LABEL_68;
  }

LABEL_48:
  v29 = __sb__runningInSpringBoard();
  if (v29)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v138 = 0;
      goto LABEL_188;
    }
  }

  else
  {
    v124 = [MEMORY[0x277D75418] currentDevice];
    if ([v124 userInterfaceIdiom] != 1)
    {
      v138 = 0x100000000;
      goto LABEL_188;
    }
  }

  HIDWORD(v138) = v29 ^ 1;
  v12 = __sb__runningInSpringBoard();
  if (v12)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v117 = [MEMORY[0x277D759A0] mainScreen];
    [v117 _referenceBounds];
  }

  LODWORD(v138) = v12 ^ 1;
  BSSizeRoundForScale();
  if (v36 >= *(MEMORY[0x277D66E30] + 248))
  {
    memset(v137, 0, sizeof(v137));
    v135 = 0;
    v136 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v130 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v8 = 0.0;
    goto LABEL_68;
  }

LABEL_188:
  v12 = __sb__runningInSpringBoard();
  if (v12)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_190;
    }

LABEL_196:
    memset(v137, 0, 100);
    v135 = 0;
    v136 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v130 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v8 = 0.0;
    HIDWORD(v137[12]) = v12 ^ 1;
    goto LABEL_68;
  }

  v122 = [MEMORY[0x277D75418] currentDevice];
  if ([v122 userInterfaceIdiom] == 1)
  {
    goto LABEL_196;
  }

LABEL_190:
  HIDWORD(v137[12]) = v12 ^ 1;
  if (!_SBF_Private_IsD94Like())
  {
LABEL_194:
    *(&v137[11] + 4) = 0;
    goto LABEL_204;
  }

  v37 = __sb__runningInSpringBoard();
  if (v37)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_194;
    }
  }

  else
  {
    v115 = [MEMORY[0x277D75418] currentDevice];
    if ([v115 userInterfaceIdiom])
    {
      HIDWORD(v137[11]) = 0;
      LODWORD(v137[12]) = 1;
      goto LABEL_204;
    }
  }

  LODWORD(v137[12]) = v37 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v12 = __sb__runningInSpringBoard();
    if (v12)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v108 = [MEMORY[0x277D759A0] mainScreen];
      [v108 _referenceBounds];
    }

    HIDWORD(v137[11]) = v12 ^ 1;
    BSSizeRoundForScale();
    if (v40 >= *(MEMORY[0x277D66E30] + 200))
    {
      memset(v137, 0, 92);
      v135 = 0;
      v136 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v130 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v8 = 136.0;
      goto LABEL_68;
    }
  }

  else
  {
    HIDWORD(v137[11]) = 0;
  }

LABEL_204:
  v12 = __sb__runningInSpringBoard();
  if (v12)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v137[10] + 4) = 0;
      goto LABEL_214;
    }
  }

  else
  {
    v116 = [MEMORY[0x277D75418] currentDevice];
    if ([v116 userInterfaceIdiom])
    {
      HIDWORD(v137[10]) = 0;
      LODWORD(v137[11]) = 1;
      goto LABEL_214;
    }
  }

  LODWORD(v137[11]) = v12 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v12 = __sb__runningInSpringBoard();
    if (v12)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v111 = [MEMORY[0x277D759A0] mainScreen];
      [v111 _referenceBounds];
    }

    HIDWORD(v137[10]) = v12 ^ 1;
    BSSizeRoundForScale();
    if (v38 >= *(MEMORY[0x277D66E30] + 200))
    {
      goto LABEL_218;
    }
  }

  else
  {
    HIDWORD(v137[10]) = 0;
  }

LABEL_214:
  if (_SBF_Private_IsD94Like())
  {
    memset(v137, 0, 84);
    v135 = 0;
    v136 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v130 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v8 = 129.0;
    goto LABEL_68;
  }

LABEL_218:
  if (!_SBF_Private_IsD64Like())
  {
LABEL_222:
    *(&v137[9] + 4) = 0;
    goto LABEL_232;
  }

  v39 = __sb__runningInSpringBoard();
  if (v39)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_222;
    }
  }

  else
  {
    v112 = [MEMORY[0x277D75418] currentDevice];
    if ([v112 userInterfaceIdiom])
    {
      HIDWORD(v137[9]) = 0;
      LODWORD(v137[10]) = 1;
      goto LABEL_232;
    }
  }

  LODWORD(v137[10]) = v39 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v12 = __sb__runningInSpringBoard();
    if (v12)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v103 = [MEMORY[0x277D759A0] mainScreen];
      [v103 _referenceBounds];
    }

    HIDWORD(v137[9]) = v12 ^ 1;
    BSSizeRoundForScale();
    if (v44 >= *(MEMORY[0x277D66E30] + 136))
    {
      memset(v137, 0, 76);
      v135 = 0;
      v136 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v130 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v8 = 124.0;
      goto LABEL_68;
    }
  }

  else
  {
    HIDWORD(v137[9]) = 0;
  }

LABEL_232:
  v12 = __sb__runningInSpringBoard();
  if (v12)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v137[8] + 4) = 0;
      goto LABEL_242;
    }
  }

  else
  {
    v114 = [MEMORY[0x277D75418] currentDevice];
    if ([v114 userInterfaceIdiom])
    {
      HIDWORD(v137[8]) = 0;
      LODWORD(v137[9]) = 1;
      goto LABEL_242;
    }
  }

  LODWORD(v137[9]) = v12 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v12 = __sb__runningInSpringBoard();
    if (v12)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v107 = [MEMORY[0x277D759A0] mainScreen];
      [v107 _referenceBounds];
    }

    HIDWORD(v137[8]) = v12 ^ 1;
    BSSizeRoundForScale();
    if (v41 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_246;
    }
  }

  else
  {
    HIDWORD(v137[8]) = 0;
  }

LABEL_242:
  if (_SBF_Private_IsD64Like())
  {
    memset(v137, 0, 68);
    v135 = 0;
    v136 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v130 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v8 = 118.0;
    goto LABEL_68;
  }

LABEL_246:
  v42 = __sb__runningInSpringBoard();
  if (v42)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v137[7] + 4) = 0;
      goto LABEL_256;
    }
  }

  else
  {
    v113 = [MEMORY[0x277D75418] currentDevice];
    if ([v113 userInterfaceIdiom])
    {
      HIDWORD(v137[7]) = 0;
      LODWORD(v137[8]) = 1;
      goto LABEL_256;
    }
  }

  LODWORD(v137[8]) = v42 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v12 = __sb__runningInSpringBoard();
    if (v12)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v104 = [MEMORY[0x277D759A0] mainScreen];
      [v104 _referenceBounds];
    }

    HIDWORD(v137[7]) = v12 ^ 1;
    BSSizeRoundForScale();
    if (v43 >= *(MEMORY[0x277D66E30] + 136))
    {
      memset(v137, 0, 60);
      v135 = 0;
      v136 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v130 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v8 = 124.0;
      goto LABEL_68;
    }
  }

  else
  {
    HIDWORD(v137[7]) = 0;
  }

LABEL_256:
  v12 = __sb__runningInSpringBoard();
  if (v12)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v137[6] + 4) = 0;
      goto LABEL_266;
    }
  }

  else
  {
    v110 = [MEMORY[0x277D75418] currentDevice];
    if ([v110 userInterfaceIdiom])
    {
      HIDWORD(v137[6]) = 0;
      LODWORD(v137[7]) = 1;
      goto LABEL_266;
    }
  }

  LODWORD(v137[7]) = v12 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v12 = __sb__runningInSpringBoard();
    if (v12)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v102 = [MEMORY[0x277D759A0] mainScreen];
      [v102 _referenceBounds];
    }

    HIDWORD(v137[6]) = v12 ^ 1;
    BSSizeRoundForScale();
    if (v45 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_276;
    }
  }

  else
  {
    HIDWORD(v137[6]) = 0;
  }

LABEL_266:
  if (_SBF_Private_IsD54())
  {
    memset(v137, 0, 52);
    v135 = 0;
    v136 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v130 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v8 = 118.0;
    goto LABEL_68;
  }

LABEL_276:
  v46 = __sb__runningInSpringBoard();
  if (v46)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v137[5] + 4) = 0;
      goto LABEL_286;
    }
  }

  else
  {
    v109 = [MEMORY[0x277D75418] currentDevice];
    if ([v109 userInterfaceIdiom])
    {
      HIDWORD(v137[5]) = 0;
      LODWORD(v137[6]) = 1;
      goto LABEL_286;
    }
  }

  LODWORD(v137[6]) = v46 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v47 = __sb__runningInSpringBoard();
    if (v47)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v99 = [MEMORY[0x277D759A0] mainScreen];
      [v99 _referenceBounds];
    }

    v12 = v47 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v137[5]) = v12;
    if (v48 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
    {
      memset(v137, 0, 44);
      v135 = 0;
      v136 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v130 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v8 = 118.0;
      goto LABEL_68;
    }
  }

  else
  {
    HIDWORD(v137[5]) = 0;
  }

LABEL_286:
  v12 = __sb__runningInSpringBoard();
  if (v12)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v137[4] + 4) = 0;
      goto LABEL_296;
    }
  }

  else
  {
    v106 = [MEMORY[0x277D75418] currentDevice];
    if ([v106 userInterfaceIdiom])
    {
      HIDWORD(v137[4]) = 0;
      LODWORD(v137[5]) = 1;
      goto LABEL_296;
    }
  }

  LODWORD(v137[5]) = v12 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v12 = __sb__runningInSpringBoard();
    if (v12)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v98 = [MEMORY[0x277D759A0] mainScreen];
      [v98 _referenceBounds];
    }

    HIDWORD(v137[4]) = v12 ^ 1;
    BSSizeRoundForScale();
    if (v49 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_305;
    }
  }

  else
  {
    HIDWORD(v137[4]) = 0;
  }

LABEL_296:
  if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
  {
    memset(v137, 0, 36);
    v135 = 0;
    v136 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v130 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v8 = 118.0;
    goto LABEL_68;
  }

LABEL_305:
  if (!_SBF_Private_IsD93Like())
  {
LABEL_309:
    *(&v137[3] + 4) = 0;
    goto LABEL_316;
  }

  v50 = __sb__runningInSpringBoard();
  if (v50)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_309;
    }
  }

  else
  {
    v101 = [MEMORY[0x277D75418] currentDevice];
    if ([v101 userInterfaceIdiom])
    {
      HIDWORD(v137[3]) = 0;
      LODWORD(v137[4]) = 1;
      goto LABEL_316;
    }
  }

  LODWORD(v137[4]) = v50 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v51 = __sb__runningInSpringBoard();
    if (v51)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v92 = [MEMORY[0x277D759A0] mainScreen];
      [v92 _referenceBounds];
    }

    v12 = v51 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v137[3]) = v12;
    if (v54 >= *(MEMORY[0x277D66E30] + 184))
    {
      memset(v137, 0, 28);
      v135 = 0;
      v136 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v130 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v8 = 144.0;
      goto LABEL_68;
    }
  }

  else
  {
    HIDWORD(v137[3]) = 0;
  }

LABEL_316:
  v12 = __sb__runningInSpringBoard();
  if (v12)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(&v137[2] + 4) = 0;
      goto LABEL_326;
    }
  }

  else
  {
    v105 = [MEMORY[0x277D75418] currentDevice];
    if ([v105 userInterfaceIdiom])
    {
      HIDWORD(v137[2]) = 0;
      LODWORD(v137[3]) = 1;
      goto LABEL_326;
    }
  }

  LODWORD(v137[3]) = v12 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v12 = __sb__runningInSpringBoard();
    if (v12)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v95 = [MEMORY[0x277D759A0] mainScreen];
      [v95 _referenceBounds];
    }

    HIDWORD(v137[2]) = v12 ^ 1;
    BSSizeRoundForScale();
    if (v52 >= *(MEMORY[0x277D66E30] + 184))
    {
      goto LABEL_330;
    }
  }

  else
  {
    HIDWORD(v137[2]) = 0;
  }

LABEL_326:
  if (_SBF_Private_IsD93Like())
  {
    memset(v137, 0, 20);
    v135 = 0;
    v136 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v130 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v8 = 93.0;
    goto LABEL_68;
  }

LABEL_330:
  if (!_SBF_Private_IsD63Like())
  {
LABEL_334:
    *(&v137[1] + 4) = 0;
    goto LABEL_344;
  }

  v53 = __sb__runningInSpringBoard();
  if (v53)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_334;
    }
  }

  else
  {
    v97 = [MEMORY[0x277D75418] currentDevice];
    if ([v97 userInterfaceIdiom])
    {
      HIDWORD(v137[1]) = 0;
      LODWORD(v137[2]) = 1;
      goto LABEL_344;
    }
  }

  v2 = v53 ^ 1u;
  LODWORD(v137[2]) = v53 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v55 = __sb__runningInSpringBoard();
    if (v55)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v87 = [MEMORY[0x277D759A0] mainScreen];
      [v87 _referenceBounds];
    }

    v12 = v55 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v137[1]) = v12;
    if (v58 >= *(MEMORY[0x277D66E30] + 104))
    {
      *(v137 + 4) = 0;
      LODWORD(v137[0]) = 0;
      v135 = 0;
      v136 = 0;
      v133 = 0;
      v134 = 0;
      v131 = 0;
      v132 = 0;
      v130 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v8 = 135.0;
      goto LABEL_68;
    }
  }

  else
  {
    HIDWORD(v137[1]) = 0;
  }

LABEL_344:
  v12 = __sb__runningInSpringBoard();
  v2 = &off_21EC94000;
  if (v12)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      *(v137 + 4) = 0;
      goto LABEL_354;
    }
  }

  else
  {
    v100 = [MEMORY[0x277D75418] currentDevice];
    if ([v100 userInterfaceIdiom])
    {
      HIDWORD(v137[0]) = 0;
      LODWORD(v137[1]) = 1;
      goto LABEL_354;
    }
  }

  LODWORD(v137[1]) = v12 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v12 = __sb__runningInSpringBoard();
    if (v12)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v91 = [MEMORY[0x277D759A0] mainScreen];
      [v91 _referenceBounds];
    }

    HIDWORD(v137[0]) = v12 ^ 1;
    BSSizeRoundForScale();
    if (v56 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_358;
    }
  }

  else
  {
    HIDWORD(v137[0]) = 0;
  }

LABEL_354:
  if (_SBF_Private_IsD63Like())
  {
    LODWORD(v137[0]) = 0;
    v135 = 0;
    v136 = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v130 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v8 = 87.0;
    goto LABEL_68;
  }

LABEL_358:
  if (!_SBF_Private_IsD23Like())
  {
LABEL_362:
    LODWORD(v137[0]) = 0;
    HIDWORD(v136) = 0;
    goto LABEL_372;
  }

  v57 = __sb__runningInSpringBoard();
  if (v57)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_362;
    }
  }

  else
  {
    v93 = [MEMORY[0x277D75418] currentDevice];
    if ([v93 userInterfaceIdiom])
    {
      HIDWORD(v136) = 0;
      LODWORD(v137[0]) = 1;
      goto LABEL_372;
    }
  }

  LODWORD(v137[0]) = v57 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v12 = __sb__runningInSpringBoard();
    if (v12)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v84 = [MEMORY[0x277D759A0] mainScreen];
      [v84 _referenceBounds];
    }

    HIDWORD(v136) = v12 ^ 1;
    BSSizeRoundForScale();
    if (v64 >= *(MEMORY[0x277D66E30] + 216))
    {
      LODWORD(v136) = 0;
      v134 = 0;
      v135 = 0;
      v132 = 0;
      v133 = 0;
      v131 = 0;
      v130 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v8 = 118.0;
      goto LABEL_68;
    }
  }

  else
  {
    HIDWORD(v136) = 0;
  }

LABEL_372:
  v12 = __sb__runningInSpringBoard();
  if (v12)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v136) = 0;
      HIDWORD(v135) = 0;
      goto LABEL_382;
    }
  }

  else
  {
    v96 = [MEMORY[0x277D75418] currentDevice];
    if ([v96 userInterfaceIdiom])
    {
      HIDWORD(v135) = 0;
      LODWORD(v136) = 1;
      goto LABEL_382;
    }
  }

  LODWORD(v136) = v12 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v12 = __sb__runningInSpringBoard();
    if (v12)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v86 = [MEMORY[0x277D759A0] mainScreen];
      [v86 _referenceBounds];
    }

    HIDWORD(v135) = v12 ^ 1;
    BSSizeRoundForScale();
    if (v59 >= *(MEMORY[0x277D66E30] + 216))
    {
      goto LABEL_386;
    }
  }

  else
  {
    HIDWORD(v135) = 0;
  }

LABEL_382:
  if (_SBF_Private_IsD23Like())
  {
    LODWORD(v135) = 0;
    v133 = 0;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v130 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v8 = 87.0;
    goto LABEL_68;
  }

LABEL_386:
  v60 = __sb__runningInSpringBoard();
  if (v60)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v135) = 0;
      HIDWORD(v134) = 0;
      goto LABEL_396;
    }
  }

  else
  {
    v94 = [MEMORY[0x277D75418] currentDevice];
    if ([v94 userInterfaceIdiom])
    {
      HIDWORD(v134) = 0;
      LODWORD(v135) = 1;
      goto LABEL_396;
    }
  }

  LODWORD(v135) = v60 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v61 = __sb__runningInSpringBoard();
    if (v61)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v11 = [MEMORY[0x277D759A0] mainScreen];
      [v11 _referenceBounds];
    }

    v89 = v11;
    v12 = v61 ^ 1u;
    BSSizeRoundForScale();
    HIDWORD(v134) = v12;
    if (v62 >= *(MEMORY[0x277D66E30] + 120))
    {
      LODWORD(v134) = 0;
      v132 = 0;
      v133 = 0;
      v131 = 0;
      v130 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      *&v63 = 124.0;
LABEL_411:
      v8 = *&v63;
      goto LABEL_68;
    }
  }

  else
  {
    HIDWORD(v134) = 0;
  }

LABEL_396:
  v12 = __sb__runningInSpringBoard();
  v3 = &off_21EC94000;
  if (v12)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v134) = 0;
      HIDWORD(v133) = 0;
      goto LABEL_406;
    }
  }

  else
  {
    v90 = [MEMORY[0x277D75418] currentDevice];
    if ([v90 userInterfaceIdiom])
    {
      HIDWORD(v133) = 0;
      LODWORD(v134) = 1;
      goto LABEL_406;
    }
  }

  LODWORD(v134) = v12 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v12 = __sb__runningInSpringBoard();
    if (v12)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v83 = [MEMORY[0x277D759A0] mainScreen];
      [v83 _referenceBounds];
    }

    HIDWORD(v133) = v12 ^ 1;
    BSSizeRoundForScale();
    if (v65 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_417;
    }
  }

  else
  {
    HIDWORD(v133) = 0;
  }

LABEL_406:
  if (_SBF_Private_IsD33OrSimilarDevice())
  {
    LODWORD(v133) = 0;
    v131 = 0;
    v132 = 0;
    v130 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v8 = 118.0;
    goto LABEL_68;
  }

LABEL_417:
  v66 = __sb__runningInSpringBoard();
  if (v66)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v133) = 0;
      HIDWORD(v132) = 0;
      goto LABEL_427;
    }
  }

  else
  {
    v88 = [MEMORY[0x277D75418] currentDevice];
    if ([v88 userInterfaceIdiom])
    {
      HIDWORD(v132) = 0;
      LODWORD(v133) = 1;
      goto LABEL_427;
    }
  }

  LODWORD(v133) = v66 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v12 = __sb__runningInSpringBoard();
    if (v12)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v82 = [MEMORY[0x277D759A0] mainScreen];
      [v82 _referenceBounds];
    }

    HIDWORD(v132) = v12 ^ 1;
    BSSizeRoundForScale();
    if (v67 >= *(MEMORY[0x277D66E30] + 104))
    {
      LODWORD(v132) = 0;
      v131 = 0;
      v130 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v8 = 135.0;
      goto LABEL_68;
    }
  }

  else
  {
    HIDWORD(v132) = 0;
  }

LABEL_427:
  v12 = __sb__runningInSpringBoard();
  if (v12)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v132) = 0;
      HIDWORD(v131) = 0;
      goto LABEL_437;
    }
  }

  else
  {
    v85 = [MEMORY[0x277D75418] currentDevice];
    if ([v85 userInterfaceIdiom])
    {
      HIDWORD(v131) = 0;
      LODWORD(v132) = 1;
      goto LABEL_437;
    }
  }

  LODWORD(v132) = v12 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v12 = __sb__runningInSpringBoard();
    if (v12)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v81 = [MEMORY[0x277D759A0] mainScreen];
      [v81 _referenceBounds];
    }

    HIDWORD(v131) = v12 ^ 1;
    BSSizeRoundForScale();
    if (v68 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_444;
    }
  }

  else
  {
    HIDWORD(v131) = 0;
  }

LABEL_437:
  if (_SBF_Private_IsD53())
  {
LABEL_438:
    LODWORD(v131) = 0;
    v130 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v8 = 87.0;
    goto LABEL_68;
  }

LABEL_444:
  if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
  {
    LODWORD(v131) = 0;
    v130 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v8 = 118.0;
    goto LABEL_68;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
  {
    goto LABEL_438;
  }

  v8 = 118.0;
  if (_SBF_Private_IsD52OrSimilarDevice())
  {
    LODWORD(v131) = 0;
    v130 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    goto LABEL_68;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
  {
    LODWORD(v131) = 0;
    v130 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
LABEL_453:
    v8 = 87.0;
    goto LABEL_68;
  }

  v69 = __sb__runningInSpringBoard();
  if (v69)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      LODWORD(v131) = 0;
      v130 = 0;
      goto LABEL_464;
    }
  }

  else
  {
    v80 = [MEMORY[0x277D75418] currentDevice];
    if ([v80 userInterfaceIdiom])
    {
      v130 = 0;
      LODWORD(v131) = 1;
      goto LABEL_464;
    }
  }

  LODWORD(v131) = v69 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v12 = __sb__runningInSpringBoard();
    if (v12)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v78 = [MEMORY[0x277D759A0] mainScreen];
      [v78 _referenceBounds];
    }

    v130 = v12 ^ 1;
    BSSizeRoundForScale();
    if (v73 >= *(MEMORY[0x277D66E30] + 88))
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      goto LABEL_68;
    }
  }

  else
  {
    v130 = 0;
  }

LABEL_464:
  v70 = __sb__runningInSpringBoard();
  if (v70)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v22 = 0;
      v23 = 0;
      goto LABEL_474;
    }
  }

  else
  {
    v79 = [MEMORY[0x277D75418] currentDevice];
    if ([v79 userInterfaceIdiom])
    {
      v23 = 0;
      v22 = 1;
      goto LABEL_474;
    }
  }

  v22 = v70 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v12 = __sb__runningInSpringBoard();
    if (v12)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v77 = [MEMORY[0x277D759A0] mainScreen];
      [v77 _referenceBounds];
    }

    v23 = v12 ^ 1;
    BSSizeRoundForScale();
    if (v74 >= *(MEMORY[0x277D66E30] + 72))
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      goto LABEL_453;
    }
  }

  else
  {
    v23 = 0;
  }

LABEL_474:
  v12 = __sb__runningInSpringBoard();
  if (v12)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v24 = 0;
      v25 = 0;
      goto LABEL_484;
    }
  }

  else
  {
    v2 = [MEMORY[0x277D75418] currentDevice];
    if ([v2 userInterfaceIdiom])
    {
      v25 = 0;
      v24 = 1;
      goto LABEL_484;
    }
  }

  v24 = v12 ^ 1;
  v12 = __sb__runningInSpringBoard();
  if (v12)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v4 = [MEMORY[0x277D759A0] mainScreen];
    [v4 _referenceBounds];
  }

  v25 = v12 ^ 1;
  BSSizeRoundForScale();
  if (v71 >= *(MEMORY[0x277D66E30] + 56))
  {
    v26 = 0;
    v27 = 0;
    *&v72 = 44.0;
    goto LABEL_491;
  }

LABEL_484:
  v3 = __sb__runningInSpringBoard();
  if (v3)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v26 = 0;
      v27 = 0;
      *&v72 = 40.0;
LABEL_491:
      v8 = *&v72;
      goto LABEL_68;
    }

    goto LABEL_498;
  }

  v12 = [MEMORY[0x277D75418] currentDevice];
  if ([v12 userInterfaceIdiom])
  {
    v27 = 0;
    v26 = 1;
    *&v63 = 40.0;
    goto LABEL_411;
  }

LABEL_498:
  v26 = v3 ^ 1;
  v75 = __sb__runningInSpringBoard();
  if (v75)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v3 = [MEMORY[0x277D759A0] mainScreen];
    [v3 _referenceBounds];
  }

  v27 = v75 ^ 1;
  BSSizeRoundForScale();
  if (v76 < *(MEMORY[0x277D66E30] + 40))
  {
    v8 = 40.0;
  }

  else
  {
    v8 = 69.0;
  }

LABEL_68:
  if (v27)
  {
  }

  if (v26)
  {
  }

  if (v25)
  {

    if (!v24)
    {
      goto LABEL_74;
    }
  }

  else if (!v24)
  {
LABEL_74:
    if (!v23)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

  if (v23)
  {
LABEL_75:
  }

LABEL_76:
  if (v22)
  {
  }

  if (v130)
  {
  }

  if (v131)
  {
  }

  if (HIDWORD(v131))
  {
  }

  if (v132)
  {
  }

  if (HIDWORD(v132))
  {
  }

  if (v133)
  {
  }

  if (HIDWORD(v133))
  {
  }

  if (v134)
  {
  }

  if (HIDWORD(v134))
  {
  }

  if (v135)
  {
  }

  if (HIDWORD(v135))
  {
  }

  if (v136)
  {
  }

  if (HIDWORD(v136))
  {
  }

  if (LODWORD(v137[0]))
  {
  }

  if (HIDWORD(v137[0]))
  {
  }

  if (LODWORD(v137[1]))
  {
  }

  if (HIDWORD(v137[1]))
  {
  }

  if (LODWORD(v137[2]))
  {
  }

  if (HIDWORD(v137[2]))
  {
  }

  if (LODWORD(v137[3]))
  {
  }

  if (HIDWORD(v137[3]))
  {
  }

  if (LODWORD(v137[4]))
  {
  }

  if (HIDWORD(v137[4]))
  {
  }

  if (LODWORD(v137[5]))
  {
  }

  if (HIDWORD(v137[5]))
  {
  }

  if (LODWORD(v137[6]))
  {
  }

  if (HIDWORD(v137[6]))
  {
  }

  if (LODWORD(v137[7]))
  {
  }

  if (HIDWORD(v137[7]))
  {
  }

  if (LODWORD(v137[8]))
  {
  }

  if (HIDWORD(v137[8]))
  {
  }

  if (LODWORD(v137[9]))
  {
  }

  if (HIDWORD(v137[9]))
  {
  }

  if (LODWORD(v137[10]))
  {
  }

  if (HIDWORD(v137[10]))
  {
  }

  if (LODWORD(v137[11]))
  {
  }

  if (HIDWORD(v137[11]))
  {
  }

  if (LODWORD(v137[12]))
  {
  }

  if (HIDWORD(v137[12]))
  {
  }

  if (v138)
  {
  }

  if (HIDWORD(v138))
  {
  }

  if (v139)
  {
  }

  if (HIDWORD(v139))
  {
  }

  if (v140)
  {
  }

  if (v141)
  {
  }

  if (v142)
  {
  }

  if (v143)
  {

    if (!v144)
    {
      goto LABEL_172;
    }
  }

  else if (!v144)
  {
LABEL_172:
    if (v145)
    {
      goto LABEL_173;
    }

    goto LABEL_182;
  }

  if (v145)
  {
LABEL_173:

    if (!v146)
    {
      goto LABEL_174;
    }

LABEL_183:

    if (!v147)
    {
      return v8;
    }

    goto LABEL_175;
  }

LABEL_182:
  if (v146)
  {
    goto LABEL_183;
  }

LABEL_174:
  if (v147)
  {
LABEL_175:
  }

  return v8;
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  v5 = [(CSMainPageContentViewController *)self delegate];
  [v5 scrollablePageViewController:self scrollViewWillBeginDragging:v4];
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = [(CSMainPageContentViewController *)self delegate];
  [v5 scrollablePageViewController:self scrollViewDidScroll:v4];
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [(CSMainPageContentViewController *)self delegate];
  [v8 scrollablePageViewController:self scrollViewWillEndDragging:v7 withVelocity:{x, y}];
}

void __73__CSMainPageContentViewController__addOrRemoveLogoutButtonViewController__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 _mainPageView];
  v5 = [*(*(a1 + 32) + 1152) button];
  [v4 setLogoutButtonView:v5];

  v6[2]();
}

void __73__CSMainPageContentViewController__addOrRemoveLogoutButtonViewController__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  v3 = [v2 _mainPageView];
  [v3 setLogoutButtonView:0];

  v4[2]();
}

- (void)_addOrRemoveNotificationsListIfNecessaryAnimated:(BOOL)a3
{
  v4 = [(CSCoverSheetViewControllerBase *)self activeBehavior];
  v5 = [v4 notificationBehavior];

  combinedListViewController = self->_combinedListViewController;
  if (v5 == 3)
  {

    [(CSPresentationViewController *)self dismissContentViewController:combinedListViewController animated:0];
  }

  else
  {

    [(CSPresentationViewController *)self presentContentViewController:combinedListViewController animated:1];
  }
}

+ (double)_phoneListWidth
{
  if (_phoneListWidth_onceToken != -1)
  {
    +[CSMainPageContentViewController _phoneListWidth];
  }

  return *&_phoneListWidth_phoneListWidth;
}

void __50__CSMainPageContentViewController__phoneListWidth__block_invoke()
{
  v0 = [MEMORY[0x277D759A0] mainScreen];
  [v0 _referenceBounds];
  *&_phoneListWidth_phoneListWidth = CGRectGetWidth(v2) + -16.0;
}

- (void)setUseFakeBlur:(BOOL)a3
{
  if (self->_useFakeBlur != a3)
  {
    self->_useFakeBlur = a3;
    [(CSCoverSheetViewControllerBase *)self rebuildAppearance];
  }
}

- (CSWallpaperColorProvider)wallpaperColorProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_wallpaperColorProvider);

  return WeakRetained;
}

- (CSScrollablePageViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CSMainPageContentViewControllerMediaControlsObserver)mediaControlsObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaControlsObserver);

  return WeakRetained;
}

- (CSTouchEnvironmentStatusProviding)touchEnvironmentStatusProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_touchEnvironmentStatusProvider);

  return WeakRetained;
}

- (CSUserSessionControlling)userSessionController
{
  WeakRetained = objc_loadWeakRetained(&self->_userSessionController);

  return WeakRetained;
}

- (CSWallpaperProviding)wallpaperProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_wallpaperProvider);

  return WeakRetained;
}

- (CSMainPageComplicationsMetricsProvider)complicationGridLayoutMetricsProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_complicationGridLayoutMetricsProvider);

  return WeakRetained;
}

- (CSMainPageDiagnosticsProvider)diagnosticsProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_diagnosticsProvider);

  return WeakRetained;
}

- (CSMainPageContentViewControllerNotificationObserver)notificationObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_notificationObserver);

  return WeakRetained;
}

@end