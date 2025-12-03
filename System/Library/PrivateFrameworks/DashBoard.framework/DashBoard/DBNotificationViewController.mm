@interface DBNotificationViewController
- (BOOL)bannerSourceListener:(id)listener recommendsSuspending:(BOOL)suspending forReason:(id)reason revokingCurrent:(BOOL)current error:(id *)error;
- (BOOL)bannerSourceListener:(id)listener requestsPostingPresentable:(id)presentable options:(unint64_t)options userInfo:(id)info error:(id *)error;
- (BOOL)handleHomeEvent;
- (BOOL)presentableIsLiveActivityBanner:(id)banner;
- (BOOL)presentableIsLiveActivityConfigurator:(id)configurator;
- (BOOL)presentableIsOEMNotification:(id)notification;
- (CGPoint)presenter:(id)presenter gestureRecognizer:(id)recognizer locationForTouch:(id)touch inView:(id)view;
- (CGPoint)presenter:(id)presenter gestureRecognizer:(id)recognizer translationInView:(id)view;
- (CGPoint)presenter:(id)presenter gestureRecognizer:(id)recognizer velocityInView:(id)view;
- (DBEnvironment)environment;
- (DBNotificationViewController)initWithEnvironment:(id)environment layoutEngine:(id)engine delegate:(id)delegate;
- (DBNotificationViewControllerDelegate)delegate;
- (FBScene)visibleNotificationScene;
- (UIEdgeInsets)presenterMinimumPreferredEdgeInsets:(id)insets;
- (double)notificationHeight;
- (id)_layoutDescriptionWithBounds:(CGRect)bounds preferredSize:(CGSize)size layoutManager:(id)manager;
- (id)bannerSourceListener:(id)listener layoutDescriptionWithError:(id *)error;
- (id)bannerSourceListener:(id)listener requestsRevokingPresentablesWithIdentification:(id)identification reason:(id)reason animated:(BOOL)animated userInfo:(id)info error:(id *)error;
- (id)defaultTransitioningDelegateForPresenter:(id)presenter;
- (void)_performCancelTapGesture:(id)gesture;
- (void)_updateIconStyleConfigurationForVisibleNotificationScene;
- (void)bannerSourceListener:(id)listener addExtensionIfNeededForScene:(id)scene userInfo:(id)info;
- (void)dealloc;
- (void)handleHomeEvent;
- (void)handleTransitionFromFrame:(CGRect)frame toFrame:(CGRect)toFrame;
- (void)invalidate;
- (void)liveActivityRequestsDismissing:(id)dismissing;
- (void)liveActivityRequestsPresenting:(id)presenting;
- (void)loadView;
- (void)presenter:(id)presenter willDismissPresentable:(id)presentable withTransitionCoordinator:(id)coordinator userInfo:(id)info;
- (void)presenter:(id)presenter willPresentPresentable:(id)presentable withTransitionCoordinator:(id)coordinator userInfo:(id)info;
- (void)presenter:(id)presenter willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)presenterRelinquishesVisibility:(id)visibility;
- (void)presenterRequestsVisibility:(id)visibility;
- (void)setSuspended:(BOOL)suspended cancellingCurrent:(BOOL)current forReason:(id)reason;
@end

@implementation DBNotificationViewController

- (DBNotificationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (DBNotificationViewController)initWithEnvironment:(id)environment layoutEngine:(id)engine delegate:(id)delegate
{
  environmentCopy = environment;
  engineCopy = engine;
  delegateCopy = delegate;
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

    objc_storeWeak(&v11->_delegate, delegateCopy);
    objc_storeWeak(&v11->_environment, environmentCopy);
    objc_storeStrong(&v11->_layoutEngine, engine);
    v13 = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.Maps", @"com.apple.CarPlayTemplateUIHost", @"com.apple.springboard", @"com.apple.AutoSettings", @"com.apple.InCallService", 0}];
    v14 = objc_alloc(MEMORY[0x277CF0A98]);
    WeakRetained = objc_loadWeakRetained(&v11->_environment);
    environmentConfiguration = [WeakRetained environmentConfiguration];
    displayConfiguration = [environmentConfiguration displayConfiguration];
    v18 = [v14 initWithServiceDomain:@"com.apple.CarPlay" displayConfiguration:displayConfiguration authorizedBundleIDs:v13];
    bannerSourceListener = v11->_bannerSourceListener;
    v11->_bannerSourceListener = v18;

    [(BNBannerSourceListener *)v11->_bannerSourceListener setDelegate:v11];
    v20 = objc_alloc(MEMORY[0x277CF0A70]);
    defaultShellMachName = [MEMORY[0x277CF3288] defaultShellMachName];
    v22 = [v20 initWithMachName:defaultShellMachName];
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
  bannerContentViewController = [(DBNotificationViewController *)self bannerContentViewController];
  topPresentables = [bannerContentViewController topPresentables];
  lastObject = [topPresentables lastObject];

  if (objc_opt_respondsToSelector())
  {
    scene = [lastObject scene];
  }

  else
  {
    scene = 0;
  }

  return scene;
}

- (BOOL)presentableIsOEMNotification:(id)notification
{
  requesterIdentifier = [notification requesterIdentifier];
  v4 = [requesterIdentifier isEqualToString:@"com.apple.AutoSettings.banner"];

  return v4;
}

- (BOOL)presentableIsLiveActivityConfigurator:(id)configurator
{
  requesterIdentifier = [configurator requesterIdentifier];
  v4 = [requesterIdentifier isEqualToString:@"com.apple.CarPlayApp.liveActivityConfigurator"];

  return v4;
}

- (BOOL)presentableIsLiveActivityBanner:(id)banner
{
  requesterIdentifier = [banner requesterIdentifier];
  v4 = [requesterIdentifier isEqualToString:@"com.apple.CarPlayApp.liveActivityBanner"];

  return v4;
}

- (double)notificationHeight
{
  bannerContentViewController = [(DBNotificationViewController *)self bannerContentViewController];
  topPresentables = [bannerContentViewController topPresentables];
  firstObject = [topPresentables firstObject];
  viewController = [firstObject viewController];

  if (viewController)
  {
    [viewController preferredContentSize];
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
  bannerContentViewController = [(DBNotificationViewController *)self bannerContentViewController];
  topPresentables = [bannerContentViewController topPresentables];
  v5 = [topPresentables count];

  if (!v5)
  {
    return 0;
  }

  bannerContentViewController2 = [(DBNotificationViewController *)self bannerContentViewController];
  topPresentables2 = [bannerContentViewController2 topPresentables];
  lastObject = [topPresentables2 lastObject];

  if (-[DBNotificationViewController presentableIsOEMNotification:](self, "presentableIsOEMNotification:", lastObject) && ([lastObject isTouchOutsideDismissalEnabled] & 1) == 0)
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
    v9 = [MEMORY[0x277CF0AC0] uniqueIdentificationForPresentable:lastObject];
    bannerController = [(DBNotificationViewController *)self bannerController];
    v11 = *MEMORY[0x277CF91C0];
    v17 = 0;
    v12 = [bannerController revokePresentablesWithIdentification:v9 reason:v11 options:0 animated:1 userInfo:0 error:&v17];
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

- (void)handleTransitionFromFrame:(CGRect)frame toFrame:(CGRect)toFrame
{
  height = toFrame.size.height;
  width = toFrame.size.width;
  y = toFrame.origin.y;
  x = toFrame.origin.x;
  v8 = frame.size.height;
  v9 = frame.size.width;
  v10 = frame.origin.y;
  v11 = frame.origin.x;
  v13 = objc_alloc_init(MEMORY[0x277D76390]);
  view = [(DBNotificationViewController *)self view];
  [v13 _setContainerView:view];

  bannerContentViewController = [(DBNotificationViewController *)self bannerContentViewController];
  [v13 _setToViewController:bannerContentViewController];

  [v13 _setToStartFrame:{v11, v10, v9, v8}];
  [v13 _setToEndFrame:{x, y, width, height}];
  [v13 _setIsAnimated:0];
  _transitionCoordinator = [v13 _transitionCoordinator];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __66__DBNotificationViewController_handleTransitionFromFrame_toFrame___block_invoke;
  v19[3] = &unk_278F02D18;
  v19[4] = self;
  [_transitionCoordinator animateAlongsideTransition:v19 completion:0];

  bannerContentViewController2 = [(DBNotificationViewController *)self bannerContentViewController];
  _transitionCoordinator2 = [v13 _transitionCoordinator];
  [bannerContentViewController2 viewWillTransitionToSize:_transitionCoordinator2 withTransitionCoordinator:{width, height}];

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
  bannerContentViewController = [(DBNotificationViewController *)self bannerContentViewController];
  [(DBNotificationViewController *)self addChildViewController:bannerContentViewController];

  bannerContentViewController2 = [(DBNotificationViewController *)self bannerContentViewController];
  view = [bannerContentViewController2 view];
  [(DBNotificationView *)v4 addSubview:view];

  bannerContentViewController3 = [(DBNotificationViewController *)self bannerContentViewController];
  [bannerContentViewController3 didMoveToParentViewController:self];

  bannerContentViewController4 = [(DBNotificationViewController *)self bannerContentViewController];
  view2 = [bannerContentViewController4 view];
  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v31 = MEMORY[0x277CCAAD0];
  bannerContentViewController5 = [(DBNotificationViewController *)self bannerContentViewController];
  view3 = [bannerContentViewController5 view];
  leadingAnchor = [view3 leadingAnchor];
  v11 = v4;
  leadingAnchor2 = [(DBNotificationView *)v4 leadingAnchor];
  v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v42[0] = v36;
  bannerContentViewController6 = [(DBNotificationViewController *)self bannerContentViewController];
  view4 = [bannerContentViewController6 view];
  trailingAnchor = [view4 trailingAnchor];
  trailingAnchor2 = [(DBNotificationView *)v4 trailingAnchor];
  v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v42[1] = v30;
  bannerContentViewController7 = [(DBNotificationViewController *)self bannerContentViewController];
  view5 = [bannerContentViewController7 view];
  topAnchor = [view5 topAnchor];
  v41 = v4;
  topAnchor2 = [(DBNotificationView *)v4 topAnchor];
  v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v42[2] = v14;
  bannerContentViewController8 = [(DBNotificationViewController *)self bannerContentViewController];
  view6 = [bannerContentViewController8 view];
  bottomAnchor = [view6 bottomAnchor];
  bottomAnchor2 = [(DBNotificationView *)v11 bottomAnchor];
  v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v42[3] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
  [v31 activateConstraints:v20];

  v21 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__performCancelTapGesture_];
  tapDismissGestureRecognizer = self->_tapDismissGestureRecognizer;
  self->_tapDismissGestureRecognizer = v21;

  [(UITapGestureRecognizer *)self->_tapDismissGestureRecognizer setCancelsTouchesInView:0];
  [(UITapGestureRecognizer *)self->_tapDismissGestureRecognizer setAllowedTouchTypes:&unk_285AA4A90];
  [(UITapGestureRecognizer *)self->_tapDismissGestureRecognizer setEnabled:0];
  mEMORY[0x277D76330] = [MEMORY[0x277D76330] sharedInstance];
  v24 = self->_tapDismissGestureRecognizer;
  environment = [(DBNotificationViewController *)self environment];
  environmentConfiguration = [environment environmentConfiguration];
  displayIdentity = [environmentConfiguration displayIdentity];
  [mEMORY[0x277D76330] addGestureRecognizer:v24 toDisplayWithIdentity:displayIdentity];
}

- (id)bannerSourceListener:(id)listener layoutDescriptionWithError:(id *)error
{
  v5 = [(DBNotificationViewController *)self _layoutManager:listener];
  v14 = 4;
  v15 = xmmword_24839BFA0;
  __asm { FMOV            V0.2D, #8.0 }

  v16 = _Q0;
  v17 = xmmword_24839BFB0;
  v18 = 0;
  [v5 setLayoutInfoV2:&v14];
  view = [(DBNotificationViewController *)self view];
  [view bounds];
  v12 = [DBNotificationViewController _layoutDescriptionWithBounds:"_layoutDescriptionWithBounds:preferredSize:layoutManager:" preferredSize:v5 layoutManager:?];

  return v12;
}

- (BOOL)bannerSourceListener:(id)listener requestsPostingPresentable:(id)presentable options:(unint64_t)options userInfo:(id)info error:(id *)error
{
  presentableCopy = presentable;
  infoCopy = info;
  bannerContentViewController = [(DBNotificationViewController *)self bannerContentViewController];
  topPresentables = [bannerContentViewController topPresentables];
  lastObject = [topPresentables lastObject];

  if (lastObject && [(DBNotificationViewController *)self presentableIsOEMNotification:presentableCopy])
  {
    errorCopy = error;
    v17 = [MEMORY[0x277CF0AC0] uniqueIdentificationForPresentable:lastObject];
    bannerController = [(DBNotificationViewController *)self bannerController];
    v19 = *MEMORY[0x277CF91C8];
    v47 = 0;
    v20 = [bannerController revokePresentablesWithIdentification:v17 reason:v19 options:0 animated:1 userInfo:0 error:&v47];
    v21 = v47;

    if (!v20)
    {
      v22 = DBLogForCategory(0x14uLL);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [DBNotificationViewController bannerSourceListener:requestsPostingPresentable:options:userInfo:error:];
      }
    }

    error = errorCopy;
  }

  if ([(DBNotificationViewController *)self presentableIsOEMNotification:presentableCopy])
  {
    v23 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277CF3940]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      errorCopy2 = error;
      v24 = v23;
      _layoutManager = [(DBNotificationViewController *)self _layoutManager];
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
      [_layoutManager setLayoutInfoV2:v44];
      view = [(DBNotificationViewController *)self view];
      [view bounds];
      v31 = [DBNotificationViewController _layoutDescriptionWithBounds:"_layoutDescriptionWithBounds:preferredSize:layoutManager:" preferredSize:_layoutManager layoutManager:?];

      viewController = [presentableCopy viewController];
      viewController2 = [presentableCopy viewController];
      [v31 presentationSize];
      v35 = v34;
      v37 = v36;
      [v31 containerSize];
      [viewController2 preferredContentSizeWithPresentationSize:v35 containerSize:{v37, v38, v39}];
      [viewController setPreferredContentSize:?];

      error = errorCopy2;
    }

    else
    {
      NSLog(&cfstr_ObjectForKeySi.isa);
    }
  }

  bannerController2 = [(DBNotificationViewController *)self bannerController];
  v41 = [bannerController2 postPresentable:presentableCopy withOptions:options userInfo:infoCopy error:error];

  return v41;
}

- (id)bannerSourceListener:(id)listener requestsRevokingPresentablesWithIdentification:(id)identification reason:(id)reason animated:(BOOL)animated userInfo:(id)info error:(id *)error
{
  animatedCopy = animated;
  infoCopy = info;
  reasonCopy = reason;
  identificationCopy = identification;
  bannerController = [(DBNotificationViewController *)self bannerController];
  v17 = [bannerController revokePresentablesWithIdentification:identificationCopy reason:reasonCopy options:0 animated:animatedCopy userInfo:infoCopy error:error];

  return v17;
}

- (BOOL)bannerSourceListener:(id)listener recommendsSuspending:(BOOL)suspending forReason:(id)reason revokingCurrent:(BOOL)current error:(id *)error
{
  currentCopy = current;
  suspendingCopy = suspending;
  reasonCopy = reason;
  bannerController = [(DBNotificationViewController *)self bannerController];
  LOBYTE(error) = [bannerController setSuspended:suspendingCopy forReason:reasonCopy revokingCurrent:currentCopy error:error];

  return error;
}

- (void)bannerSourceListener:(id)listener addExtensionIfNeededForScene:(id)scene userInfo:(id)info
{
  sceneCopy = scene;
  clientProcess = [sceneCopy clientProcess];
  if ([clientProcess hasEntitlement:@"com.apple.springboard.homeScreenIconStyle"])
  {
    v6 = objc_opt_self();
    [sceneCopy addExtension:v6];
  }
}

- (id)defaultTransitioningDelegateForPresenter:(id)presenter
{
  v3 = objc_alloc_init(MEMORY[0x277CF90C8]);

  return v3;
}

- (CGPoint)presenter:(id)presenter gestureRecognizer:(id)recognizer locationForTouch:(id)touch inView:(id)view
{
  v6 = *MEMORY[0x277CBF348];
  v7 = *(MEMORY[0x277CBF348] + 8);
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)presenter:(id)presenter gestureRecognizer:(id)recognizer velocityInView:(id)view
{
  v5 = *MEMORY[0x277CBF348];
  v6 = *(MEMORY[0x277CBF348] + 8);
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGPoint)presenter:(id)presenter gestureRecognizer:(id)recognizer translationInView:(id)view
{
  v5 = *MEMORY[0x277CBF348];
  v6 = *(MEMORY[0x277CBF348] + 8);
  result.y = v6;
  result.x = v5;
  return result;
}

- (UIEdgeInsets)presenterMinimumPreferredEdgeInsets:(id)insets
{
  layoutEngine = [(DBNotificationViewController *)self layoutEngine];
  [layoutEngine statusBarInsets];
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

- (void)presenterRequestsVisibility:(id)visibility
{
  v9 = *MEMORY[0x277D85DE8];
  visibilityCopy = visibility;
  v5 = DBLogForCategory(0x14uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = visibilityCopy;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Banner presenter %@ requests visibility. Enabling tap-dismiss gesture", &v7, 0xCu);
  }

  tapDismissGestureRecognizer = [(DBNotificationViewController *)self tapDismissGestureRecognizer];
  [tapDismissGestureRecognizer setEnabled:1];
}

- (void)presenterRelinquishesVisibility:(id)visibility
{
  v9 = *MEMORY[0x277D85DE8];
  visibilityCopy = visibility;
  v5 = DBLogForCategory(0x14uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = visibilityCopy;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Banner presenter %@ relinquishes visibility. Disabling tap-dismiss gesture", &v7, 0xCu);
  }

  tapDismissGestureRecognizer = [(DBNotificationViewController *)self tapDismissGestureRecognizer];
  [tapDismissGestureRecognizer setEnabled:0];
}

- (void)presenter:(id)presenter willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v6 = [(DBNotificationViewController *)self _layoutManager:presenter];
  v14 = 4;
  v15 = xmmword_24839BFA0;
  __asm { FMOV            V0.2D, #8.0 }

  v16 = _Q0;
  v17 = xmmword_24839BFB0;
  v18 = 0;
  [v6 setLayoutInfoV2:&v14];
  bannerSourceListener = [(DBNotificationViewController *)self bannerSourceListener];
  BSRectWithSize();
  v13 = [DBNotificationViewController _layoutDescriptionWithBounds:"_layoutDescriptionWithBounds:preferredSize:layoutManager:" preferredSize:v6 layoutManager:?];
  [bannerSourceListener layoutDescriptionDidChange:v13];
}

- (void)presenter:(id)presenter willPresentPresentable:(id)presentable withTransitionCoordinator:(id)coordinator userInfo:(id)info
{
  v31 = *MEMORY[0x277D85DE8];
  presentableCopy = presentable;
  v10 = *MEMORY[0x277D77240];
  infoCopy = info;
  coordinatorCopy = coordinator;
  v13 = [coordinatorCopy viewControllerForKey:v10];
  view = [v13 view];
  [view setAccessibilityIdentifier:@"CPNotificationBannerView"];

  [(DBNotificationViewController *)self _updateIconStyleConfigurationForVisibleNotificationScene];
  v15 = [infoCopy objectForKey:*MEMORY[0x277CF91D8]];

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v15 BOOLValue])
  {
    v16 = DBLogForCategory(0x14uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      requestIdentifier = [presentableCopy requestIdentifier];
      *buf = 138543362;
      v30 = requestIdentifier;
      _os_log_impl(&dword_248146000, v16, OS_LOG_TYPE_DEFAULT, "Borrowing screen for notification: %{public}@", buf, 0xCu);
    }

    environment = [(DBNotificationViewController *)self environment];
    environmentConfiguration = [environment environmentConfiguration];
    session = [environmentConfiguration session];
    v21 = [session borrowScreenForClient:@"CarPlayApp" reason:@"Notifications"];
    [(DBNotificationViewController *)self setScreenBorrowToken:v21];

    requestIdentifier2 = [presentableCopy requestIdentifier];
    [(DBNotificationViewController *)self setScreenBorrowingPresentableRequestID:requestIdentifier2];
  }

  v23 = DBLogForCategory(0x14uLL);
  if (os_signpost_enabled(v23))
  {
    requestIdentifier3 = [presentableCopy requestIdentifier];
    *buf = 138543362;
    v30 = requestIdentifier3;
    _os_signpost_emit_with_name_impl(&dword_248146000, v23, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "DBNotificationPresentAnimation", "Start present animation for notification: %{public}@", buf, 0xCu);
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __100__DBNotificationViewController_presenter_willPresentPresentable_withTransitionCoordinator_userInfo___block_invoke;
  v27[3] = &unk_278F02D18;
  v28 = presentableCopy;
  v25 = presentableCopy;
  [coordinatorCopy animateAlongsideTransition:0 completion:v27];

  delegate = [(DBNotificationViewController *)self delegate];
  [delegate willPresentPresentable:v25 forNotificationViewController:self];
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

- (void)presenter:(id)presenter willDismissPresentable:(id)presentable withTransitionCoordinator:(id)coordinator userInfo:(id)info
{
  v22 = *MEMORY[0x277D85DE8];
  presentableCopy = presentable;
  coordinatorCopy = coordinator;
  v10 = DBLogForCategory(0x14uLL);
  if (os_signpost_enabled(v10))
  {
    requestIdentifier = [presentableCopy requestIdentifier];
    *buf = 138543362;
    v21 = requestIdentifier;
    _os_signpost_emit_with_name_impl(&dword_248146000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "DBNotificationDismissAnimation", "Start dismiss animation for notification: %{public}@", buf, 0xCu);
  }

  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __100__DBNotificationViewController_presenter_willDismissPresentable_withTransitionCoordinator_userInfo___block_invoke;
  v17 = &unk_278F046C0;
  selfCopy = self;
  v19 = presentableCopy;
  v12 = presentableCopy;
  [coordinatorCopy animateAlongsideTransition:0 completion:&v14];

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
  bannerContentViewController = [(DBNotificationViewController *)self bannerContentViewController];
  allPresentables = [bannerContentViewController allPresentables];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__DBNotificationViewController_invalidate__block_invoke;
  v6[3] = &unk_278F046E8;
  v6[4] = self;
  [allPresentables enumerateObjectsUsingBlock:v6];

  bannerSourceListener = [(DBNotificationViewController *)self bannerSourceListener];
  [bannerSourceListener invalidate];

  [(BNBannerHostMonitor *)self->_bannerHostMonitor deactivate];
}

void __42__DBNotificationViewController_invalidate__block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = [MEMORY[0x277CF0AC0] uniqueIdentificationForPresentable:a2];
  v3 = [*(a1 + 32) bannerContentViewController];
  v4 = [v3 dismissPresentablesWithIdentification:v5 reason:*MEMORY[0x277CF91C8] userInfo:0];
}

- (void)setSuspended:(BOOL)suspended cancellingCurrent:(BOOL)current forReason:(id)reason
{
  currentCopy = current;
  suspendedCopy = suspended;
  v22 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  bannerContentViewController = [(DBNotificationViewController *)self bannerContentViewController];
  topPresentables = [bannerContentViewController topPresentables];
  lastObject = [topPresentables lastObject];

  if (lastObject && -[DBNotificationViewController presentableIsOEMNotification:](self, "presentableIsOEMNotification:", lastObject) && ([lastObject isTouchOutsideDismissalEnabled] & 1) == 0)
  {
    bannerAuthority = DBLogForCategory(0x14uLL);
    if (os_log_type_enabled(bannerAuthority, OS_LOG_TYPE_ERROR))
    {
      [DBNotificationViewController setSuspended:cancellingCurrent:forReason:];
    }
  }

  else
  {
    suspensionReasons = [(DBNotificationViewController *)self suspensionReasons];
    v13 = suspensionReasons;
    if (suspendedCopy)
    {
      [suspensionReasons addObject:reasonCopy];
    }

    else
    {
      [suspensionReasons removeObject:reasonCopy];
    }

    v14 = DBLogForCategory(0x14uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      suspensionReasons2 = [(DBNotificationViewController *)self suspensionReasons];
      *buf = 138412290;
      v21 = suspensionReasons2;
      _os_log_impl(&dword_248146000, v14, OS_LOG_TYPE_DEFAULT, "[Notifications] Updating suspension reasons: %@", buf, 0xCu);
    }

    if ([reasonCopy isEqualToString:@"DBNotificationSuspensionReasonAssistant"])
    {
      bannerAuthority = [(DBNotificationViewController *)self bannerAuthority];
      [bannerAuthority setSuspendedForAssistant:suspendedCopy];
    }

    else
    {
      bannerController = self->_bannerController;
      v19 = 0;
      [(BNBannerController *)bannerController setSuspended:suspendedCopy forReason:reasonCopy revokingCurrent:currentCopy error:&v19];
      bannerAuthority = v19;
      if (bannerAuthority)
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

- (id)_layoutDescriptionWithBounds:(CGRect)bounds preferredSize:(CGSize)size layoutManager:(id)manager
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  managerCopy = manager;
  view = [(DBNotificationViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  screen = [windowScene screen];
  [managerCopy useableContainerFrameInContainerBounds:screen onScreen:{x, y, width, height}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  traitCollection = [(DBNotificationViewController *)self traitCollection];
  [traitCollection displayScale];
  [managerCopy presentedFrameForContentWithPreferredSize:size.width inUseableContainerFrame:size.height containerBounds:v16 scale:{v18, v20, v22, *&x, *&y, *&width, *&height, v24}];
  v26 = v25;
  v28 = v27;

  v29 = MEMORY[0x277CF0A90];

  return [v29 bannerSourceLayoutDescriptionWithPresentationSize:v26 containerSize:{v28, width, height}];
}

- (void)_performCancelTapGesture:(id)gesture
{
  gestureCopy = gesture;
  bannerContentViewController = [(DBNotificationViewController *)self bannerContentViewController];
  topPresentables = [bannerContentViewController topPresentables];
  lastObject = [topPresentables lastObject];

  if (lastObject)
  {
    if (-[DBNotificationViewController presentableIsOEMNotification:](self, "presentableIsOEMNotification:", lastObject) && ([lastObject isTouchOutsideDismissalEnabled] & 1) == 0)
    {
      viewController = DBLogForCategory(0x14uLL);
      if (os_log_type_enabled(viewController, OS_LOG_TYPE_ERROR))
      {
        [DBNotificationViewController handleHomeEvent];
      }

      goto LABEL_14;
    }

    viewController = [lastObject viewController];
    view = [(DBNotificationViewController *)self view];
    [gestureCopy locationInView:view];
    v11 = v10;
    v13 = v12;

    view2 = [viewController view];
    [gestureCopy locationInView:view2];
    v16 = v15;
    v18 = v17;

    view3 = [(DBNotificationViewController *)self view];
    if ([view3 pointInside:0 withEvent:{v11, v13}])
    {
      view4 = [viewController view];
      v21 = [view4 pointInside:0 withEvent:{v16, v18}];

      if (v21)
      {
LABEL_14:

        goto LABEL_15;
      }

      view3 = [MEMORY[0x277CF0AC0] uniqueIdentificationForPresentable:lastObject];
      bannerController = [(DBNotificationViewController *)self bannerController];
      v23 = *MEMORY[0x277CF91D0];
      v27 = 0;
      v24 = [bannerController revokePresentablesWithIdentification:view3 reason:v23 options:0 animated:1 userInfo:0 error:&v27];
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
  visibleNotificationScene = [(DBNotificationViewController *)self visibleNotificationScene];
  v4 = visibleNotificationScene;
  if (visibleNotificationScene)
  {
    clientProcess = [visibleNotificationScene clientProcess];
    v6 = clientProcess;
    if (clientProcess && [clientProcess hasEntitlement:@"com.apple.springboard.homeScreenIconStyle"])
    {
      traitCollection = [(DBNotificationViewController *)self traitCollection];
      sbh_iconImageStyleConfiguration = [traitCollection sbh_iconImageStyleConfiguration];

      homeScreenIconStyleConfiguration = [sbh_iconImageStyleConfiguration homeScreenIconStyleConfiguration];
      v10 = objc_opt_self();
      [v4 addExtension:v10];

      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __88__DBNotificationViewController__updateIconStyleConfigurationForVisibleNotificationScene__block_invoke;
      v12[3] = &unk_278F04710;
      v13 = homeScreenIconStyleConfiguration;
      v11 = homeScreenIconStyleConfiguration;
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

- (void)liveActivityRequestsDismissing:(id)dismissing
{
  dismissingCopy = dismissing;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__DBNotificationViewController_liveActivityRequestsDismissing___block_invoke;
  v6[3] = &unk_278F014B8;
  v7 = dismissingCopy;
  selfCopy = self;
  v5 = dismissingCopy;
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

- (void)liveActivityRequestsPresenting:(id)presenting
{
  presentingCopy = presenting;
  if ([_TtC9DashBoard24DBLiveActivityBannerView dataIsActivityDescriptor:presentingCopy])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __63__DBNotificationViewController_liveActivityRequestsPresenting___block_invoke;
    v6[3] = &unk_278F014B8;
    v6[4] = self;
    v7 = presentingCopy;
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