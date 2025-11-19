@interface DBNotificationViewController
- (BOOL)bannerSourceListener:(id)a3 recommendsSuspending:(BOOL)a4 forReason:(id)a5 revokingCurrent:(BOOL)a6 error:(id *)a7;
- (BOOL)bannerSourceListener:(id)a3 requestsPostingPresentable:(id)a4 options:(unint64_t)a5 userInfo:(id)a6 error:(id *)a7;
- (BOOL)handleHomeEvent;
- (BOOL)presentableIsLiveActivityBanner:(id)a3;
- (BOOL)presentableIsLiveActivityConfigurator:(id)a3;
- (BOOL)presentableIsOEMNotification:(id)a3;
- (CGPoint)presenter:(id)a3 gestureRecognizer:(id)a4 locationForTouch:(id)a5 inView:(id)a6;
- (CGPoint)presenter:(id)a3 gestureRecognizer:(id)a4 translationInView:(id)a5;
- (CGPoint)presenter:(id)a3 gestureRecognizer:(id)a4 velocityInView:(id)a5;
- (DBEnvironment)environment;
- (DBNotificationViewController)initWithEnvironment:(id)a3 layoutEngine:(id)a4 delegate:(id)a5;
- (DBNotificationViewControllerDelegate)delegate;
- (FBScene)visibleNotificationScene;
- (UIEdgeInsets)presenterMinimumPreferredEdgeInsets:(id)a3;
- (double)notificationHeight;
- (id)_layoutDescriptionWithBounds:(CGRect)a3 preferredSize:(CGSize)a4 layoutManager:(id)a5;
- (id)bannerSourceListener:(id)a3 layoutDescriptionWithError:(id *)a4;
- (id)bannerSourceListener:(id)a3 requestsRevokingPresentablesWithIdentification:(id)a4 reason:(id)a5 animated:(BOOL)a6 userInfo:(id)a7 error:(id *)a8;
- (id)defaultTransitioningDelegateForPresenter:(id)a3;
- (void)_performCancelTapGesture:(id)a3;
- (void)_updateIconStyleConfigurationForVisibleNotificationScene;
- (void)bannerSourceListener:(id)a3 addExtensionIfNeededForScene:(id)a4 userInfo:(id)a5;
- (void)dealloc;
- (void)handleHomeEvent;
- (void)handleTransitionFromFrame:(CGRect)a3 toFrame:(CGRect)a4;
- (void)invalidate;
- (void)liveActivityRequestsDismissing:(id)a3;
- (void)liveActivityRequestsPresenting:(id)a3;
- (void)loadView;
- (void)presenter:(id)a3 willDismissPresentable:(id)a4 withTransitionCoordinator:(id)a5 userInfo:(id)a6;
- (void)presenter:(id)a3 willPresentPresentable:(id)a4 withTransitionCoordinator:(id)a5 userInfo:(id)a6;
- (void)presenter:(id)a3 willTransitionToSize:(CGSize)a4 withTransitionCoordinator:(id)a5;
- (void)presenterRelinquishesVisibility:(id)a3;
- (void)presenterRequestsVisibility:(id)a3;
- (void)setSuspended:(BOOL)a3 cancellingCurrent:(BOOL)a4 forReason:(id)a5;
@end

@implementation DBNotificationViewController

- (DBNotificationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (DBNotificationViewController)initWithEnvironment:(id)a3 layoutEngine:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v34.receiver = self;
  v34.super_class = DBNotificationViewController;
  v11 = [(DBNotificationViewController *)&v34 init];
  if (v11)
  {
    v12 = DBLogForCategory(0x14uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v12, OS_LOG_TYPE_INFO, "Initializing notification view controller...", buf, 2u);
    }

    objc_storeWeak(&v11->_delegate, v10);
    objc_storeWeak(&v11->_environment, v8);
    objc_storeStrong(&v11->_layoutEngine, a4);
    v13 = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.Maps", @"com.apple.CarPlayTemplateUIHost", @"com.apple.springboard", @"com.apple.AutoSettings", @"com.apple.InCallService", 0}];
    v14 = objc_alloc(MEMORY[0x277CF0A98]);
    WeakRetained = objc_loadWeakRetained(&v11->_environment);
    v16 = [WeakRetained environmentConfiguration];
    v17 = [v16 displayConfiguration];
    v18 = [v14 initWithServiceDomain:@"com.apple.CarPlay" displayConfiguration:v17 authorizedBundleIDs:v13];
    bannerSourceListener = v11->_bannerSourceListener;
    v11->_bannerSourceListener = v18;

    [(BNBannerSourceListener *)v11->_bannerSourceListener setDelegate:v11];
    v20 = objc_alloc(MEMORY[0x277CF0A70]);
    v21 = [MEMORY[0x277CF3288] defaultShellMachName];
    v22 = [v20 initWithMachName:v21];
    bannerHostMonitor = v11->_bannerHostMonitor;
    v11->_bannerHostMonitor = v22;

    [(BNBannerHostMonitor *)v11->_bannerHostMonitor activate];
    v24 = objc_alloc_init(MEMORY[0x277CF0AA8]);
    bannerContentViewController = v11->_bannerContentViewController;
    v11->_bannerContentViewController = v24;

    [(BNContentViewController *)v11->_bannerContentViewController setDelegate:v11];
    v26 = objc_alloc_init(DBBannerAuthority);
    bannerAuthority = v11->_bannerAuthority;
    v11->_bannerAuthority = v26;

    v28 = [objc_alloc(MEMORY[0x277CF0A68]) initWithAuthority:v11->_bannerAuthority pender:0 presenter:v11->_bannerContentViewController];
    bannerController = v11->_bannerController;
    v11->_bannerController = v28;

    v30 = objc_opt_new();
    suspensionReasons = v11->_suspensionReasons;
    v11->_suspensionReasons = v30;
  }

  return v11;
}

- (void)dealloc
{
  [(BNBannerHostMonitor *)self->_bannerHostMonitor deactivate];
  v3.receiver = self;
  v3.super_class = DBNotificationViewController;
  [(DBNotificationViewController *)&v3 dealloc];
}

- (FBScene)visibleNotificationScene
{
  v2 = [(DBNotificationViewController *)self bannerContentViewController];
  v3 = [v2 topPresentables];
  v4 = [v3 lastObject];

  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 scene];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)presentableIsOEMNotification:(id)a3
{
  v3 = [a3 requesterIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.AutoSettings.banner"];

  return v4;
}

- (BOOL)presentableIsLiveActivityConfigurator:(id)a3
{
  v3 = [a3 requesterIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.CarPlayApp.liveActivityConfigurator"];

  return v4;
}

- (BOOL)presentableIsLiveActivityBanner:(id)a3
{
  v3 = [a3 requesterIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.CarPlayApp.liveActivityBanner"];

  return v4;
}

- (double)notificationHeight
{
  v2 = [(DBNotificationViewController *)self bannerContentViewController];
  v3 = [v2 topPresentables];
  v4 = [v3 firstObject];
  v5 = [v4 viewController];

  if (v5)
  {
    [v5 preferredContentSize];
    v7 = fmax(v6, 61.0);
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (BOOL)handleHomeEvent
{
  v3 = [(DBNotificationViewController *)self bannerContentViewController];
  v4 = [v3 topPresentables];
  v5 = [v4 count];

  if (!v5)
  {
    return 0;
  }

  v6 = [(DBNotificationViewController *)self bannerContentViewController];
  v7 = [v6 topPresentables];
  v8 = [v7 lastObject];

  if (-[DBNotificationViewController presentableIsOEMNotification:](self, "presentableIsOEMNotification:", v8) && ([v8 isTouchOutsideDismissalEnabled] & 1) == 0)
  {
    v9 = DBLogForCategory(0x14uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [DBNotificationViewController handleHomeEvent];
    }

    v15 = 0;
  }

  else
  {
    v9 = [MEMORY[0x277CF0AC0] uniqueIdentificationForPresentable:v8];
    v10 = [(DBNotificationViewController *)self bannerController];
    v11 = *MEMORY[0x277CF91C0];
    v17 = 0;
    v12 = [v10 revokePresentablesWithIdentification:v9 reason:v11 options:0 animated:1 userInfo:0 error:&v17];
    v13 = v17;

    if (!v12)
    {
      v14 = DBLogForCategory(0x14uLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [DBNotificationViewController handleHomeEvent];
      }
    }

    v15 = 1;
  }

  return v15;
}

- (void)handleTransitionFromFrame:(CGRect)a3 toFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  v13 = objc_alloc_init(MEMORY[0x277D76390]);
  v14 = [(DBNotificationViewController *)self view];
  [v13 _setContainerView:v14];

  v15 = [(DBNotificationViewController *)self bannerContentViewController];
  [v13 _setToViewController:v15];

  [v13 _setToStartFrame:{v11, v10, v9, v8}];
  [v13 _setToEndFrame:{x, y, width, height}];
  [v13 _setIsAnimated:0];
  v16 = [v13 _transitionCoordinator];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __66__DBNotificationViewController_handleTransitionFromFrame_toFrame___block_invoke;
  v19[3] = &unk_278F02D18;
  v19[4] = self;
  [v16 animateAlongsideTransition:v19 completion:0];

  v17 = [(DBNotificationViewController *)self bannerContentViewController];
  v18 = [v13 _transitionCoordinator];
  [v17 viewWillTransitionToSize:v18 withTransitionCoordinator:{width, height}];

  [v13 __runAlongsideAnimations];
}

void __66__DBNotificationViewController_handleTransitionFromFrame_toFrame___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 layoutIfNeeded];
}

- (void)loadView
{
  v42[4] = *MEMORY[0x277D85DE8];
  v3 = [DBNotificationView alloc];
  v4 = [(DBNotificationView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(DBNotificationViewController *)self setView:v4];
  v5 = [(DBNotificationViewController *)self bannerContentViewController];
  [(DBNotificationViewController *)self addChildViewController:v5];

  v6 = [(DBNotificationViewController *)self bannerContentViewController];
  v7 = [v6 view];
  [(DBNotificationView *)v4 addSubview:v7];

  v8 = [(DBNotificationViewController *)self bannerContentViewController];
  [v8 didMoveToParentViewController:self];

  v9 = [(DBNotificationViewController *)self bannerContentViewController];
  v10 = [v9 view];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v31 = MEMORY[0x277CCAAD0];
  v40 = [(DBNotificationViewController *)self bannerContentViewController];
  v39 = [v40 view];
  v38 = [v39 leadingAnchor];
  v11 = v4;
  v37 = [(DBNotificationView *)v4 leadingAnchor];
  v36 = [v38 constraintEqualToAnchor:v37];
  v42[0] = v36;
  v35 = [(DBNotificationViewController *)self bannerContentViewController];
  v34 = [v35 view];
  v33 = [v34 trailingAnchor];
  v32 = [(DBNotificationView *)v4 trailingAnchor];
  v30 = [v33 constraintEqualToAnchor:v32];
  v42[1] = v30;
  v29 = [(DBNotificationViewController *)self bannerContentViewController];
  v28 = [v29 view];
  v12 = [v28 topAnchor];
  v41 = v4;
  v13 = [(DBNotificationView *)v4 topAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v42[2] = v14;
  v15 = [(DBNotificationViewController *)self bannerContentViewController];
  v16 = [v15 view];
  v17 = [v16 bottomAnchor];
  v18 = [(DBNotificationView *)v11 bottomAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  v42[3] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
  [v31 activateConstraints:v20];

  v21 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__performCancelTapGesture_];
  tapDismissGestureRecognizer = self->_tapDismissGestureRecognizer;
  self->_tapDismissGestureRecognizer = v21;

  [(UITapGestureRecognizer *)self->_tapDismissGestureRecognizer setCancelsTouchesInView:0];
  [(UITapGestureRecognizer *)self->_tapDismissGestureRecognizer setAllowedTouchTypes:&unk_285AA4A90];
  [(UITapGestureRecognizer *)self->_tapDismissGestureRecognizer setEnabled:0];
  v23 = [MEMORY[0x277D76330] sharedInstance];
  v24 = self->_tapDismissGestureRecognizer;
  v25 = [(DBNotificationViewController *)self environment];
  v26 = [v25 environmentConfiguration];
  v27 = [v26 displayIdentity];
  [v23 addGestureRecognizer:v24 toDisplayWithIdentity:v27];
}

- (id)bannerSourceListener:(id)a3 layoutDescriptionWithError:(id *)a4
{
  v5 = [(DBNotificationViewController *)self _layoutManager:a3];
  v14 = 4;
  v15 = xmmword_24839BFA0;
  __asm { FMOV            V0.2D, #8.0 }

  v16 = _Q0;
  v17 = xmmword_24839BFB0;
  v18 = 0;
  [v5 setLayoutInfoV2:&v14];
  v11 = [(DBNotificationViewController *)self view];
  [v11 bounds];
  v12 = [DBNotificationViewController _layoutDescriptionWithBounds:"_layoutDescriptionWithBounds:preferredSize:layoutManager:" preferredSize:v5 layoutManager:?];

  return v12;
}

- (BOOL)bannerSourceListener:(id)a3 requestsPostingPresentable:(id)a4 options:(unint64_t)a5 userInfo:(id)a6 error:(id *)a7
{
  v11 = a4;
  v12 = a6;
  v13 = [(DBNotificationViewController *)self bannerContentViewController];
  v14 = [v13 topPresentables];
  v15 = [v14 lastObject];

  if (v15 && [(DBNotificationViewController *)self presentableIsOEMNotification:v11])
  {
    v16 = a7;
    v17 = [MEMORY[0x277CF0AC0] uniqueIdentificationForPresentable:v15];
    v18 = [(DBNotificationViewController *)self bannerController];
    v19 = *MEMORY[0x277CF91C8];
    v47 = 0;
    v20 = [v18 revokePresentablesWithIdentification:v17 reason:v19 options:0 animated:1 userInfo:0 error:&v47];
    v21 = v47;

    if (!v20)
    {
      v22 = DBLogForCategory(0x14uLL);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [DBNotificationViewController bannerSourceListener:requestsPostingPresentable:options:userInfo:error:];
      }
    }

    a7 = v16;
  }

  if ([(DBNotificationViewController *)self presentableIsOEMNotification:v11])
  {
    v23 = [v12 objectForKeyedSubscript:*MEMORY[0x277CF3940]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = a7;
      v24 = v23;
      v25 = [(DBNotificationViewController *)self _layoutManager];
      [v24 doubleValue];
      v27 = v26;
      [v24 doubleValue];
      v29 = v28;

      v44[0] = 4;
      v44[1] = 0;
      v44[2] = v27;
      v44[3] = 0x4020000000000000;
      v44[4] = v29;
      v45 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v46 = 0;
      [v25 setLayoutInfoV2:v44];
      v30 = [(DBNotificationViewController *)self view];
      [v30 bounds];
      v31 = [DBNotificationViewController _layoutDescriptionWithBounds:"_layoutDescriptionWithBounds:preferredSize:layoutManager:" preferredSize:v25 layoutManager:?];

      v32 = [v11 viewController];
      v33 = [v11 viewController];
      [v31 presentationSize];
      v35 = v34;
      v37 = v36;
      [v31 containerSize];
      [v33 preferredContentSizeWithPresentationSize:v35 containerSize:{v37, v38, v39}];
      [v32 setPreferredContentSize:?];

      a7 = v43;
    }

    else
    {
      NSLog(&cfstr_ObjectForKeySi.isa);
    }
  }

  v40 = [(DBNotificationViewController *)self bannerController];
  v41 = [v40 postPresentable:v11 withOptions:a5 userInfo:v12 error:a7];

  return v41;
}

- (id)bannerSourceListener:(id)a3 requestsRevokingPresentablesWithIdentification:(id)a4 reason:(id)a5 animated:(BOOL)a6 userInfo:(id)a7 error:(id *)a8
{
  v9 = a6;
  v13 = a7;
  v14 = a5;
  v15 = a4;
  v16 = [(DBNotificationViewController *)self bannerController];
  v17 = [v16 revokePresentablesWithIdentification:v15 reason:v14 options:0 animated:v9 userInfo:v13 error:a8];

  return v17;
}

- (BOOL)bannerSourceListener:(id)a3 recommendsSuspending:(BOOL)a4 forReason:(id)a5 revokingCurrent:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v9 = a4;
  v11 = a5;
  v12 = [(DBNotificationViewController *)self bannerController];
  LOBYTE(a7) = [v12 setSuspended:v9 forReason:v11 revokingCurrent:v8 error:a7];

  return a7;
}

- (void)bannerSourceListener:(id)a3 addExtensionIfNeededForScene:(id)a4 userInfo:(id)a5
{
  v7 = a4;
  v5 = [v7 clientProcess];
  if ([v5 hasEntitlement:@"com.apple.springboard.homeScreenIconStyle"])
  {
    v6 = objc_opt_self();
    [v7 addExtension:v6];
  }
}

- (id)defaultTransitioningDelegateForPresenter:(id)a3
{
  v3 = objc_alloc_init(MEMORY[0x277CF90C8]);

  return v3;
}

- (CGPoint)presenter:(id)a3 gestureRecognizer:(id)a4 locationForTouch:(id)a5 inView:(id)a6
{
  v6 = *MEMORY[0x277CBF348];
  v7 = *(MEMORY[0x277CBF348] + 8);
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)presenter:(id)a3 gestureRecognizer:(id)a4 velocityInView:(id)a5
{
  v5 = *MEMORY[0x277CBF348];
  v6 = *(MEMORY[0x277CBF348] + 8);
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGPoint)presenter:(id)a3 gestureRecognizer:(id)a4 translationInView:(id)a5
{
  v5 = *MEMORY[0x277CBF348];
  v6 = *(MEMORY[0x277CBF348] + 8);
  result.y = v6;
  result.x = v5;
  return result;
}

- (UIEdgeInsets)presenterMinimumPreferredEdgeInsets:(id)a3
{
  v3 = [(DBNotificationViewController *)self layoutEngine];
  [v3 statusBarInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (void)presenterRequestsVisibility:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DBLogForCategory(0x14uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Banner presenter %@ requests visibility. Enabling tap-dismiss gesture", &v7, 0xCu);
  }

  v6 = [(DBNotificationViewController *)self tapDismissGestureRecognizer];
  [v6 setEnabled:1];
}

- (void)presenterRelinquishesVisibility:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DBLogForCategory(0x14uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Banner presenter %@ relinquishes visibility. Disabling tap-dismiss gesture", &v7, 0xCu);
  }

  v6 = [(DBNotificationViewController *)self tapDismissGestureRecognizer];
  [v6 setEnabled:0];
}

- (void)presenter:(id)a3 willTransitionToSize:(CGSize)a4 withTransitionCoordinator:(id)a5
{
  v6 = [(DBNotificationViewController *)self _layoutManager:a3];
  v14 = 4;
  v15 = xmmword_24839BFA0;
  __asm { FMOV            V0.2D, #8.0 }

  v16 = _Q0;
  v17 = xmmword_24839BFB0;
  v18 = 0;
  [v6 setLayoutInfoV2:&v14];
  v12 = [(DBNotificationViewController *)self bannerSourceListener];
  BSRectWithSize();
  v13 = [DBNotificationViewController _layoutDescriptionWithBounds:"_layoutDescriptionWithBounds:preferredSize:layoutManager:" preferredSize:v6 layoutManager:?];
  [v12 layoutDescriptionDidChange:v13];
}

- (void)presenter:(id)a3 willPresentPresentable:(id)a4 withTransitionCoordinator:(id)a5 userInfo:(id)a6
{
  v31 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = *MEMORY[0x277D77240];
  v11 = a6;
  v12 = a5;
  v13 = [v12 viewControllerForKey:v10];
  v14 = [v13 view];
  [v14 setAccessibilityIdentifier:@"CPNotificationBannerView"];

  [(DBNotificationViewController *)self _updateIconStyleConfigurationForVisibleNotificationScene];
  v15 = [v11 objectForKey:*MEMORY[0x277CF91D8]];

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v15 BOOLValue])
  {
    v16 = DBLogForCategory(0x14uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v9 requestIdentifier];
      *buf = 138543362;
      v30 = v17;
      _os_log_impl(&dword_248146000, v16, OS_LOG_TYPE_DEFAULT, "Borrowing screen for notification: %{public}@", buf, 0xCu);
    }

    v18 = [(DBNotificationViewController *)self environment];
    v19 = [v18 environmentConfiguration];
    v20 = [v19 session];
    v21 = [v20 borrowScreenForClient:@"CarPlayApp" reason:@"Notifications"];
    [(DBNotificationViewController *)self setScreenBorrowToken:v21];

    v22 = [v9 requestIdentifier];
    [(DBNotificationViewController *)self setScreenBorrowingPresentableRequestID:v22];
  }

  v23 = DBLogForCategory(0x14uLL);
  if (os_signpost_enabled(v23))
  {
    v24 = [v9 requestIdentifier];
    *buf = 138543362;
    v30 = v24;
    _os_signpost_emit_with_name_impl(&dword_248146000, v23, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "DBNotificationPresentAnimation", "Start present animation for notification: %{public}@", buf, 0xCu);
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __100__DBNotificationViewController_presenter_willPresentPresentable_withTransitionCoordinator_userInfo___block_invoke;
  v27[3] = &unk_278F02D18;
  v28 = v9;
  v25 = v9;
  [v12 animateAlongsideTransition:0 completion:v27];

  v26 = [(DBNotificationViewController *)self delegate];
  [v26 willPresentPresentable:v25 forNotificationViewController:self];
}

void __100__DBNotificationViewController_presenter_willPresentPresentable_withTransitionCoordinator_userInfo___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = DBLogForCategory(0x14uLL);
  if (os_signpost_enabled(v2))
  {
    v3 = [*(a1 + 32) requestIdentifier];
    v4 = 138543362;
    v5 = v3;
    _os_signpost_emit_with_name_impl(&dword_248146000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DBNotificationPresentAnimation", "End present animation for notification: %{public}@", &v4, 0xCu);
  }
}

- (void)presenter:(id)a3 willDismissPresentable:(id)a4 withTransitionCoordinator:(id)a5 userInfo:(id)a6
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = DBLogForCategory(0x14uLL);
  if (os_signpost_enabled(v10))
  {
    v11 = [v8 requestIdentifier];
    *buf = 138543362;
    v21 = v11;
    _os_signpost_emit_with_name_impl(&dword_248146000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "DBNotificationDismissAnimation", "Start dismiss animation for notification: %{public}@", buf, 0xCu);
  }

  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __100__DBNotificationViewController_presenter_willDismissPresentable_withTransitionCoordinator_userInfo___block_invoke;
  v17 = &unk_278F046C0;
  v18 = self;
  v19 = v8;
  v12 = v8;
  [v9 animateAlongsideTransition:0 completion:&v14];

  v13 = [(DBNotificationViewController *)self delegate:v14];
  [v13 didDismissPresentable:v12 forNotificationViewController:self];
}

void __100__DBNotificationViewController_presenter_willDismissPresentable_withTransitionCoordinator_userInfo___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) screenBorrowingPresentableRequestID];
  v3 = [*(a1 + 40) requestIdentifier];
  v4 = [v2 isEqualToString:v3];

  if (v4)
  {
    v5 = DBLogForCategory(0x14uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 40) requestIdentifier];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Unborrowing screen for notification: %{public}@", &v9, 0xCu);
    }

    [*(a1 + 32) setScreenBorrowToken:0];
    [*(a1 + 32) setScreenBorrowingPresentableRequestID:0];
  }

  v7 = DBLogForCategory(0x14uLL);
  if (os_signpost_enabled(v7))
  {
    v8 = [*(a1 + 40) requestIdentifier];
    v9 = 138543362;
    v10 = v8;
    _os_signpost_emit_with_name_impl(&dword_248146000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DBNotificationDismissAnimation", "End dismiss animation for notification: %{public}@", &v9, 0xCu);
  }
}

- (void)invalidate
{
  [(DBNotificationViewController *)self setInvalidated:1];
  v3 = [(DBNotificationViewController *)self bannerContentViewController];
  v4 = [v3 allPresentables];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__DBNotificationViewController_invalidate__block_invoke;
  v6[3] = &unk_278F046E8;
  v6[4] = self;
  [v4 enumerateObjectsUsingBlock:v6];

  v5 = [(DBNotificationViewController *)self bannerSourceListener];
  [v5 invalidate];

  [(BNBannerHostMonitor *)self->_bannerHostMonitor deactivate];
}

void __42__DBNotificationViewController_invalidate__block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = [MEMORY[0x277CF0AC0] uniqueIdentificationForPresentable:a2];
  v3 = [*(a1 + 32) bannerContentViewController];
  v4 = [v3 dismissPresentablesWithIdentification:v5 reason:*MEMORY[0x277CF91C8] userInfo:0];
}

- (void)setSuspended:(BOOL)a3 cancellingCurrent:(BOOL)a4 forReason:(id)a5
{
  v5 = a4;
  v6 = a3;
  v22 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = [(DBNotificationViewController *)self bannerContentViewController];
  v10 = [v9 topPresentables];
  v11 = [v10 lastObject];

  if (v11 && -[DBNotificationViewController presentableIsOEMNotification:](self, "presentableIsOEMNotification:", v11) && ([v11 isTouchOutsideDismissalEnabled] & 1) == 0)
  {
    v16 = DBLogForCategory(0x14uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [DBNotificationViewController setSuspended:cancellingCurrent:forReason:];
    }
  }

  else
  {
    v12 = [(DBNotificationViewController *)self suspensionReasons];
    v13 = v12;
    if (v6)
    {
      [v12 addObject:v8];
    }

    else
    {
      [v12 removeObject:v8];
    }

    v14 = DBLogForCategory(0x14uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(DBNotificationViewController *)self suspensionReasons];
      *buf = 138412290;
      v21 = v15;
      _os_log_impl(&dword_248146000, v14, OS_LOG_TYPE_DEFAULT, "[Notifications] Updating suspension reasons: %@", buf, 0xCu);
    }

    if ([v8 isEqualToString:@"DBNotificationSuspensionReasonAssistant"])
    {
      v16 = [(DBNotificationViewController *)self bannerAuthority];
      [v16 setSuspendedForAssistant:v6];
    }

    else
    {
      bannerController = self->_bannerController;
      v19 = 0;
      [(BNBannerController *)bannerController setSuspended:v6 forReason:v8 revokingCurrent:v5 error:&v19];
      v16 = v19;
      if (v16)
      {
        v18 = DBLogForCategory(0x14uLL);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [DBNotificationViewController setSuspended:cancellingCurrent:forReason:];
        }
      }
    }
  }
}

- (id)_layoutDescriptionWithBounds:(CGRect)a3 preferredSize:(CGSize)a4 layoutManager:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a5;
  v11 = [(DBNotificationViewController *)self view];
  v12 = [v11 window];
  v13 = [v12 windowScene];
  v14 = [v13 screen];
  [v10 useableContainerFrameInContainerBounds:v14 onScreen:{x, y, width, height}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = [(DBNotificationViewController *)self traitCollection];
  [v23 displayScale];
  [v10 presentedFrameForContentWithPreferredSize:a4.width inUseableContainerFrame:a4.height containerBounds:v16 scale:{v18, v20, v22, *&x, *&y, *&width, *&height, v24}];
  v26 = v25;
  v28 = v27;

  v29 = MEMORY[0x277CF0A90];

  return [v29 bannerSourceLayoutDescriptionWithPresentationSize:v26 containerSize:{v28, width, height}];
}

- (void)_performCancelTapGesture:(id)a3
{
  v4 = a3;
  v5 = [(DBNotificationViewController *)self bannerContentViewController];
  v6 = [v5 topPresentables];
  v7 = [v6 lastObject];

  if (v7)
  {
    if (-[DBNotificationViewController presentableIsOEMNotification:](self, "presentableIsOEMNotification:", v7) && ([v7 isTouchOutsideDismissalEnabled] & 1) == 0)
    {
      v8 = DBLogForCategory(0x14uLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [DBNotificationViewController handleHomeEvent];
      }

      goto LABEL_14;
    }

    v8 = [v7 viewController];
    v9 = [(DBNotificationViewController *)self view];
    [v4 locationInView:v9];
    v11 = v10;
    v13 = v12;

    v14 = [v8 view];
    [v4 locationInView:v14];
    v16 = v15;
    v18 = v17;

    v19 = [(DBNotificationViewController *)self view];
    if ([v19 pointInside:0 withEvent:{v11, v13}])
    {
      v20 = [v8 view];
      v21 = [v20 pointInside:0 withEvent:{v16, v18}];

      if (v21)
      {
LABEL_14:

        goto LABEL_15;
      }

      v19 = [MEMORY[0x277CF0AC0] uniqueIdentificationForPresentable:v7];
      v22 = [(DBNotificationViewController *)self bannerController];
      v23 = *MEMORY[0x277CF91D0];
      v27 = 0;
      v24 = [v22 revokePresentablesWithIdentification:v19 reason:v23 options:0 animated:1 userInfo:0 error:&v27];
      v25 = v27;

      if (!v24)
      {
        v26 = DBLogForCategory(0x14uLL);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [DBNotificationViewController _performCancelTapGesture:];
        }
      }
    }

    goto LABEL_14;
  }

LABEL_15:
}

- (void)_updateIconStyleConfigurationForVisibleNotificationScene
{
  v3 = [(DBNotificationViewController *)self visibleNotificationScene];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 clientProcess];
    v6 = v5;
    if (v5 && [v5 hasEntitlement:@"com.apple.springboard.homeScreenIconStyle"])
    {
      v7 = [(DBNotificationViewController *)self traitCollection];
      v8 = [v7 sbh_iconImageStyleConfiguration];

      v9 = [v8 homeScreenIconStyleConfiguration];
      v10 = objc_opt_self();
      [v4 addExtension:v10];

      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __88__DBNotificationViewController__updateIconStyleConfigurationForVisibleNotificationScene__block_invoke;
      v12[3] = &unk_278F04710;
      v13 = v9;
      v11 = v9;
      [v4 performUpdate:v12];
    }
  }
}

void __88__DBNotificationViewController__updateIconStyleConfigurationForVisibleNotificationScene__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_285B721F8])
  {
    [v3 setIconStyleConfiguration:*(a1 + 32)];
  }
}

- (void)liveActivityRequestsDismissing:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__DBNotificationViewController_liveActivityRequestsDismissing___block_invoke;
  v6[3] = &unk_278F014B8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __63__DBNotificationViewController_liveActivityRequestsDismissing___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = DBLogForCategory(0x14uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __63__DBNotificationViewController_liveActivityRequestsDismissing___block_invoke_cold_1();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [*(a1 + 40) bannerContentViewController];
  v4 = [v3 allPresentables];

  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    v16 = *MEMORY[0x277CF91C8];
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        if ([*(a1 + 40) presentableIsLiveActivityBanner:v9])
        {
          v10 = [v9 requestIdentifier];
          if ([v10 isEqualToString:*(a1 + 32)])
          {
            v11 = [v9 conformsToProtocol:&unk_285B72330];

            if (!v11)
            {
              goto LABEL_17;
            }

            v12 = v9;
            v13 = [*(a1 + 40) bannerController];
            v19 = 0;
            v14 = [v13 revokePresentablesWithIdentification:v12 reason:v16 options:0 animated:1 userInfo:0 error:&v19];
            v10 = v19;

            if (v10)
            {
              v15 = DBLogForCategory(0x14uLL);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                __63__DBNotificationViewController_liveActivityRequestsDismissing___block_invoke_cold_2(&buf, v18, v15);
              }
            }
          }
        }

LABEL_17:

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }
}

- (void)liveActivityRequestsPresenting:(id)a3
{
  v4 = a3;
  if ([_TtC9DashBoard24DBLiveActivityBannerView dataIsActivityDescriptor:v4])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __63__DBNotificationViewController_liveActivityRequestsPresenting___block_invoke;
    v6[3] = &unk_278F014B8;
    v6[4] = self;
    v7 = v4;
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }

  else
  {
    v5 = DBLogForCategory(0x14uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [DBNotificationViewController liveActivityRequestsPresenting:];
    }
  }
}

void __63__DBNotificationViewController_liveActivityRequestsPresenting___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = DBLogForCategory(0x14uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __63__DBNotificationViewController_liveActivityRequestsPresenting___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) bannerContentViewController];
  v4 = [v3 topPresentables];
  v5 = [v4 lastObject];

  if ([*(a1 + 32) presentableIsLiveActivityBanner:v5])
  {
    v6 = DBLogForCategory(0x14uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __63__DBNotificationViewController_liveActivityRequestsPresenting___block_invoke_cold_2();
    }

    v7 = *(a1 + 32);
    v8 = [v7 presentableRequestIdentifier:v5];
    [v7 liveActivityRequestsDismissing:v8];

    v9 = [MEMORY[0x277CF0AC0] uniqueIdentificationForPresentable:v5];
    v10 = [*(a1 + 32) bannerController];
    v11 = *MEMORY[0x277CF91C8];
    v40 = 0;
    v12 = [v10 revokePresentablesWithIdentification:v9 reason:v11 options:0 animated:1 userInfo:0 error:&v40];
    v13 = v40;

    if (v13)
    {
      v14 = DBLogForCategory(0x14uLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __63__DBNotificationViewController_liveActivityRequestsPresenting___block_invoke_cold_3();
      }
    }
  }

  v15 = [*(a1 + 32) _layoutManager];
  *buf = 4;
  *&buf[8] = xmmword_24839BFA0;
  __asm { FMOV            V0.2D, #8.0 }

  v42 = _Q0;
  v43 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v44 = 0;
  [v15 setLayoutInfoV2:buf];
  v21 = [*(a1 + 32) view];
  [v21 bounds];
  v23 = v22;

  v24 = [*(a1 + 32) view];
  [v24 bounds];
  v26 = v25;

  v27 = DBLogForCategory(0x14uLL);
  v28 = v23 + -16.0;
  v29 = fminf(v28, 240.0);
  v30 = v26 + -8.0;
  v31 = fminf(v30, 78.0);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v32 = [MEMORY[0x277CCABB0] numberWithDouble:v29];
    v33 = [MEMORY[0x277CCABB0] numberWithDouble:v31];
    v34 = [MEMORY[0x277CCABB0] numberWithDouble:v31];
    *buf = 138412802;
    *&buf[4] = v32;
    *&buf[12] = 2112;
    *&buf[14] = v33;
    *&buf[22] = 2112;
    *&v42 = v34;
    _os_log_impl(&dword_248146000, v27, OS_LOG_TYPE_INFO, "LA: requesting banner with width: %@, minHeight: %@, maxHeight: %@", buf, 0x20u);
  }

  v35 = [[_TtC9DashBoard24DBLiveActivityBannerView alloc] initWithIdentifier:*(a1 + 40) minSize:v29 maxSize:v31, v29, v31];
  objc_initWeak(buf, *(a1 + 32));
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __63__DBNotificationViewController_liveActivityRequestsPresenting___block_invoke_322;
  v37[3] = &unk_278F02E90;
  objc_copyWeak(&v39, buf);
  v36 = v35;
  v38 = v36;
  [(DBLiveActivityBannerView *)v36 ensureContentWithCompletion:v37];

  objc_destroyWeak(&v39);
  objc_destroyWeak(buf);
}

void __63__DBNotificationViewController_liveActivityRequestsPresenting___block_invoke_322(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = DBLogForCategory(0x14uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __63__DBNotificationViewController_liveActivityRequestsPresenting___block_invoke_322_cold_1(v3);
    }
  }

  else
  {
    v7 = [WeakRetained bannerController];
    v8 = *(a1 + 32);
    v12 = 0;
    v9 = [v7 postPresentable:v8 withOptions:1 userInfo:MEMORY[0x277CBEC10] error:&v12];
    v6 = v12;

    if (v9)
    {
      v10 = v6 == 0;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      v11 = DBLogForCategory(0x14uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __63__DBNotificationViewController_liveActivityRequestsPresenting___block_invoke_322_cold_1(v6);
      }
    }
  }
}

- (DBEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (void)handleHomeEvent
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)bannerSourceListener:requestsPostingPresentable:options:userInfo:error:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)setSuspended:cancellingCurrent:forReason:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setSuspended:cancellingCurrent:forReason:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_performCancelTapGesture:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __63__DBNotificationViewController_liveActivityRequestsDismissing___block_invoke_cold_2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_248146000, log, OS_LOG_TYPE_ERROR, "Error revoking live activity notification", buf, 2u);
}

- (void)liveActivityRequestsPresenting:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __63__DBNotificationViewController_liveActivityRequestsPresenting___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __63__DBNotificationViewController_liveActivityRequestsPresenting___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __63__DBNotificationViewController_liveActivityRequestsPresenting___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __63__DBNotificationViewController_liveActivityRequestsPresenting___block_invoke_322_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_248146000, v2, v3, "LA: Error posting %@", v4, v5, v6, v7, v8);
}

@end