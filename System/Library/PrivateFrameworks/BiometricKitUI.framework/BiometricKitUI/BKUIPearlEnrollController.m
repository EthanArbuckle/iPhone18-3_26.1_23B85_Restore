@interface BKUIPearlEnrollController
+ (BOOL)isDisplayZoomEnabled;
+ (BOOL)isPearlAvailable;
+ (BOOL)isPearlInterlocked;
- (BKUIPearlEnrollController)initWithPreloadedState:(id)a3;
- (BKUIPearlEnrollControllerDelegate)delegate;
- (BOOL)doesNeedFullscreenInstructingView;
- (BOOL)inBuddy;
- (BOOL)isModalInPresentation;
- (BOOL)mustShowFullscreenInstructingView;
- (BOOL)prefersHomeIndicatorAutoHidden;
- (CGSize)preferredContentSize;
- (id)navigationItem;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)enrollmentConfiguration;
- (void)_copyAndShowInternalNavBar;
- (void)_startObserving;
- (void)coachingSkipped;
- (void)dealloc;
- (void)deviceOrientationChanged:(int64_t)a3 duration:(double)a4;
- (void)deviceOrientationDidChange:(id)a3;
- (void)diffSystemAndForcedRotationOrientations;
- (void)pearlEnrollControllerCompleted:(id)a3;
- (void)pearlEnrollViewController:(id)a3 finishedEnrollWithError:(id)a4;
- (void)pearlEnrollViewControllerStateChanged:(int)a3;
- (void)primeWithExternalizedAuthContext:(id)a3;
- (void)primeWithPasscode:(id)a3;
- (void)removeFullscreenInstructingViewIfNeeded;
- (void)resetLayout;
- (void)setCoachingHidden:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setEnrollmentConfiguration:(unint64_t)a3;
- (void)setExistingIdentity:(id)a3;
- (void)setTransparencyForCoachingController;
- (void)setupFullscreenInstructingViewIfNeeded;
- (void)showOrHideFullscreenInstructingViewIfNeeded;
- (void)startInternalGlassesFlow;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation BKUIPearlEnrollController

- (BKUIPearlEnrollController)initWithPreloadedState:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = BKUIPearlEnrollController;
  v6 = [(BKUIPearlEnrollController *)&v16 init];
  if (v6)
  {
    v7 = objc_alloc_init(BKUIOrientationStateHandler);
    orientationStateHandler = v6->_orientationStateHandler;
    v6->_orientationStateHandler = v7;

    v9 = objc_alloc_init(BKUIPearlCoachingController);
    coachingController = v6->_coachingController;
    v6->_coachingController = v9;

    [(BKUIPearlCoachingController *)v6->_coachingController setDelegate:v6];
    -[BKUIPearlCoachingController setIsDisplayZoomEnabled:](v6->_coachingController, "setIsDisplayZoomEnabled:", [objc_opt_class() isDisplayZoomEnabled]);
    [(BKUIPearlEnrollController *)v6 addChildViewController:v6->_coachingController];
    objc_storeStrong(&v6->_preloadState, a3);
    v11 = +[BKUIUtils containerEnrollmentStyleEnabled];
    v12 = off_278D09220;
    if (!v11)
    {
      v12 = off_278D09210;
    }

    v13 = [objc_alloc(*v12) initWithPreloadedState:v5];
    enrollViewController = v6->_enrollViewController;
    v6->_enrollViewController = v13;

    [(BKUIPearlEnrollViewController *)v6->_enrollViewController setDelegate:v6];
    -[BKUIPearlEnrollViewController setIsDisplayZoomEnabled:](v6->_enrollViewController, "setIsDisplayZoomEnabled:", [objc_opt_class() isDisplayZoomEnabled]);
    [(BKUIPearlEnrollController *)v6 addChildViewController:v6->_enrollViewController];
    [(BKUIPearlEnrollController *)v6 setEnrollmentConfiguration:0];
  }

  return v6;
}

- (BOOL)isModalInPresentation
{
  v2 = [(BKUIPearlEnrollController *)self enrollViewController];
  v3 = [v2 isModalInPresentation];

  return v3;
}

- (void)startInternalGlassesFlow
{
  v3 = _BKUILoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241B0A000, v3, OS_LOG_TYPE_DEFAULT, "BKUIPearl: startInternalGlassesFlow", buf, 2u);
  }

  v4 = +[BKUIUtils containerEnrollmentStyleEnabled];
  v5 = off_278D09220;
  if (!v4)
  {
    v5 = off_278D09210;
  }

  v6 = [objc_alloc(*v5) initWithPreloadedState:self->_preloadState];
  [v6 setEnrollmentConfiguration:4];
  [v6 setDelegate:self];
  [v6 setIsDisplayZoomEnabled:{objc_msgSend(objc_opt_class(), "isDisplayZoomEnabled")}];
  v7 = [(BKUIPearlEnrollController *)self enrollViewController];
  [v6 setInBuddy:{objc_msgSend(v7, "inBuddy")}];

  [v6 setGlassesMidFlowUpsell:1];
  v8 = [(BKUIPearlEnrollController *)self enrollViewController];
  v9 = [v8 currentOperationHandler];
  v10 = [v9 externalizedAuthContext];
  [v6 primeWithExternalizedAuthContext:v10];

  v11 = [(BKUIPearlEnrollController *)self enrollViewController];
  v12 = [v11 currentOperationHandler];
  v13 = [v12 credential];
  [v6 primeWithPasscode:v13];

  [(BKUIPearlEnrollController *)self addChildViewController:v6];
  v14 = [(BKUIPearlEnrollController *)self view];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [v6 view];
  [v23 setFrame:{v16, v18, v20, v22}];

  v24 = [(BKUIPearlEnrollController *)self view];
  v25 = [v6 view];
  [v24 addSubview:v25];

  [v6 didMoveToParentViewController:self];
  [v6 setInBuddyGlassesFollowUp:{-[BKUIPearlEnrollController inBuddy](self, "inBuddy")}];
  v26 = +[BKUIPearlEnrollAnimationManager sharedManager];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __53__BKUIPearlEnrollController_startInternalGlassesFlow__block_invoke;
  v28[3] = &unk_278D09A38;
  v28[4] = self;
  v29 = v6;
  v27 = v6;
  [v26 transitionTo:v27 completion:v28];
}

uint64_t __53__BKUIPearlEnrollController_startInternalGlassesFlow__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) enrollViewController];
  [v2 removeFromParentViewController];

  v3 = [*(a1 + 32) enrollViewController];
  v4 = [v3 view];
  [v4 removeFromSuperview];

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  return [v5 setEnrollViewController:v6];
}

- (void)viewDidLoad
{
  v3 = _BKUILoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_241B0A000, v3, OS_LOG_TYPE_DEFAULT, "Main enroll controller: viewDidLoad", buf, 2u);
  }

  v52.receiver = self;
  v52.super_class = BKUIPearlEnrollController;
  [(BKUIPearlEnrollController *)&v52 viewDidLoad];
  v4 = [(BKUIPearlEnrollController *)self view];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(BKUIPearlEnrollController *)self view];
  v14 = [MEMORY[0x277D75348] blackColor];
  [v13 setBackgroundColor:v14];

  v15 = [MEMORY[0x277D75418] currentDevice];
  v16 = [v15 userInterfaceIdiom];

  if (v16 == 1)
  {
    [(BKUIPearlEnrollController *)self _startObserving];
    v17 = [(BKUIPearlEnrollController *)self orientationStateHandler];
    v18 = [v17 rotationLockStatusIsLocked];

    v19 = [(BKUIPearlEnrollController *)self orientationStateHandler];
    v20 = [v19 rawDeviceOrientationIgnoringOrientationLocks];

    v21 = [(UIViewController *)self bkui_uiforDeviceOrientation:v20];
    v22 = [BKUIUtils activeInterfaceOrientationForView:0];
    v23 = [MEMORY[0x277D75D28] bkui_reverseLeftRight:v22];
    if (v21)
    {
      v24 = v21;
    }

    else
    {
      v24 = v23;
    }

    if (!v18)
    {
      v24 = v23;
    }

    self->_orientation = v24;
    v25 = [(BKUIPearlEnrollController *)self coachingController];
    [v25 setOrientation:self->_orientation];

    v26 = [(BKUIPearlEnrollController *)self coachingController];
    [v26 deviceOrientationChanged];

    v27 = [(BKUIPearlEnrollController *)self view];
    v28 = [BKUIUtils activeInterfaceOrientationForView:v27];

    if (v28 == 1)
    {
      [(BKUIPearlEnrollController *)self setHasBeenPortrait:1];
    }
  }

  v29 = [(BKUIPearlEnrollController *)self enrollViewController];
  v30 = [v29 view];
  [v30 setFrame:{v6, v8, v10, v12}];

  v31 = [(BKUIPearlEnrollController *)self view];
  v32 = [(BKUIPearlEnrollController *)self enrollViewController];
  v33 = [v32 view];
  [v31 addSubview:v33];

  v34 = [(BKUIPearlEnrollController *)self enrollViewController];
  [v34 didMoveToParentViewController:self];

  v35 = [MEMORY[0x277D75418] currentDevice];
  v36 = [v35 userInterfaceIdiom];

  if (v36 == 1)
  {
    v37 = [(BKUIPearlEnrollController *)self view];
    v38 = [(BKUIPearlEnrollController *)self coachingController];
    v39 = [v38 view];
    [v37 addSubview:v39];

    v40 = [(BKUIPearlEnrollController *)self coachingController];
    [v40 didMoveToParentViewController:self];

    [(BKUIPearlEnrollController *)self setTransparencyForCoachingController];
    v41 = [(BKUIPearlEnrollController *)self coachingController];
    v42 = [v41 view];
    [v42 setFrame:{v6, v8, v10, v12}];

    v43 = [(BKUIPearlEnrollController *)self view];
    v44 = [(BKUIPearlEnrollController *)self navbarCopy];
    [v43 bringSubviewToFront:v44];
  }

  if (![(BKUIPearlEnrollController *)self inBuddy])
  {
    objc_initWeak(buf, self);
    v45 = [MEMORY[0x277CCAB98] defaultCenter];
    v46 = [MEMORY[0x277CCABD8] mainQueue];
    v47 = *MEMORY[0x277D76660];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __40__BKUIPearlEnrollController_viewDidLoad__block_invoke;
    v49[3] = &unk_278D0A050;
    objc_copyWeak(&v50, buf);
    v48 = [v45 addObserverForName:v47 object:0 queue:v46 usingBlock:v49];

    [(BKUIPearlEnrollController *)self setupFullscreenInstructingViewIfNeeded];
    objc_destroyWeak(&v50);
    objc_destroyWeak(buf);
  }
}

void __40__BKUIPearlEnrollController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

- (void)setTransparencyForCoachingController
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = +[BKUIDevice sharedInstance];
  v4 = [v3 isRestrictedToLandscapeEnrollment];

  orientation = self->_orientation;
  v6 = [(BKUIPearlEnrollController *)self coachingController];
  v7 = [v6 view];
  v8 = v7;
  v9 = 4;
  if (!v4)
  {
    v9 = 1;
  }

  v10 = 0.0;
  if (orientation != v9)
  {
    v10 = 1.0;
  }

  [v7 setAlpha:v10];

  v11 = _BKUILoggingFacility();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(BKUIPearlEnrollController *)self coachingController];
    v13 = [v12 view];
    [v13 alpha];
    v14 = self->_orientation;
    v17 = 134218240;
    v18 = v15;
    v19 = 2048;
    v20 = v14;
    _os_log_impl(&dword_241B0A000, v11, OS_LOG_TYPE_DEFAULT, "Coaching controller transparency: %f for orientation: %ld", &v17, 0x16u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (unint64_t)enrollmentConfiguration
{
  v2 = [(BKUIPearlEnrollController *)self enrollViewController];
  v3 = [v2 enrollmentConfiguration];

  return v3;
}

- (void)setEnrollmentConfiguration:(unint64_t)a3
{
  v4 = [(BKUIPearlEnrollController *)self enrollViewController];
  [v4 setEnrollmentConfiguration:a3];
}

+ (BOOL)isDisplayZoomEnabled
{
  v2 = MGCopyAnswer();
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 _referenceBounds];
  v5 = v4;
  v7 = v6;

  if (v2)
  {
    v8 = [v2 objectForKeyedSubscript:@"zoomed"];
    if ([v8 count] < 4)
    {
      v12 = 0;
    }

    else
    {
      v9 = [v8 objectAtIndexedSubscript:1];
      v10 = [v8 objectAtIndexedSubscript:3];
      v11 = v10;
      v12 = 0;
      if (v9 && v10)
      {
        [v10 floatValue];
        v14 = v13;
        [v9 floatValue];
        v12 = v7 == v15 && v5 == v14;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)navigationItem
{
  v3 = [(BKUIPearlEnrollController *)self navbarCopy];
  v8.receiver = self;
  v8.super_class = BKUIPearlEnrollController;
  v4 = [(BKUIPearlEnrollController *)&v8 navigationItem];
  [v3 _pushNavigationItem:v4 transition:0];

  v7.receiver = self;
  v7.super_class = BKUIPearlEnrollController;
  v5 = [(BKUIPearlEnrollController *)&v7 navigationItem];

  return v5;
}

- (void)viewWillLayoutSubviews
{
  v38 = *MEMORY[0x277D85DE8];
  v31.receiver = self;
  v31.super_class = BKUIPearlEnrollController;
  [(BKUIPearlEnrollController *)&v31 viewWillLayoutSubviews];
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    [MEMORY[0x277D37610] preferredContentSize];
    v6 = v5;
    v8 = v7;
    v9 = +[BKUIDevice sharedInstance];
    v10 = [v9 isRestrictedToLandscapeEnrollment];

    if ([(BKUIPearlEnrollController *)self inSheet])
    {
      if (v10)
      {
        v8 = v8 + -70.0;
      }

      v11 = 0.0;
      v12 = 0.0;
    }

    else
    {
      v13 = [MEMORY[0x277D759A0] mainScreen];
      v14 = [v13 fixedCoordinateSpace];
      [v14 bounds];
      v12 = v15;
      v11 = v16;
      v6 = v17;
      v8 = v18;
    }

    v19 = _BKUILoggingFacility();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v39.origin.x = v12;
      v39.origin.y = v11;
      v39.size.width = v6;
      v39.size.height = v8;
      v20 = NSStringFromCGRect(v39);
      v21 = [(BKUIPearlEnrollController *)self view];
      [v21 bounds];
      v22 = NSStringFromCGRect(v40);
      v23 = [MEMORY[0x277CCABB0] numberWithBool:{-[BKUIPearlEnrollController inSheet](self, "inSheet")}];
      *buf = 138412802;
      v33 = v20;
      v34 = 2112;
      v35 = v22;
      v36 = 2112;
      v37 = v23;
      _os_log_impl(&dword_241B0A000, v19, OS_LOG_TYPE_DEFAULT, "PearlEnrollController: viewWillLayoutSubviews: enrollViewController bounds = %@, self bound = %@, inSheet = %@", buf, 0x20u);
    }

    v24 = [(BKUIPearlEnrollController *)self view];
    [v24 bounds];
    MidX = CGRectGetMidX(v41);
    v26 = [(BKUIPearlEnrollController *)self view];
    [v26 bounds];
    MidY = CGRectGetMidY(v42);

    v28 = [(BKUIPearlEnrollController *)self enrollViewController];
    v29 = [v28 view];
    [v29 setFrame:{MidX - v6 * 0.5, MidY - v8 * 0.5, v6, v8}];

    [(BKUIPearlEnrollController *)self showOrHideFullscreenInstructingViewIfNeeded];
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (CGSize)preferredContentSize
{
  [MEMORY[0x277D37698] preferredContentSize];
  v4 = v3;
  v6 = v5;
  v7 = [MEMORY[0x277D75418] currentDevice];
  if ([v7 userInterfaceIdiom] != 1)
  {

    goto LABEL_14;
  }

  v8 = [(BKUIPearlEnrollController *)self orientationStateHandler];
  v9 = [v8 rotationLockStatusIsLocked];

  if (v9)
  {
    v10 = +[BKUIDevice sharedInstance];
    if ([v10 isRestrictedToLandscapeEnrollment])
    {
      v11 = [(BKUIPearlEnrollController *)self view];
      v12 = [v11 window];
      v13 = [v12 windowScene];
      v14 = [v13 interfaceOrientation] - 1;

      if (v14 <= 1)
      {
        v15 = v4;
        v4 = v6;
        v6 = v15;
        goto LABEL_14;
      }
    }

    else
    {
    }

    v16 = [(BKUIPearlEnrollController *)self view];
    v17 = [v16 window];
    v18 = [v17 windowScene];
    v19 = [v18 interfaceOrientation] - 3;

    if (v19 <= 1)
    {
      v20 = v6;
    }

    else
    {
      v20 = v4;
    }

    if (v19 <= 1)
    {
      v6 = v4;
    }

    v4 = v20;
  }

LABEL_14:
  v21 = v4;
  v22 = v6;
  result.height = v22;
  result.width = v21;
  return result;
}

- (BOOL)doesNeedFullscreenInstructingView
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  if ([v3 userInterfaceIdiom] == 1)
  {
    v4 = ![(BKUIPearlEnrollController *)self inBuddy];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)setupFullscreenInstructingViewIfNeeded
{
  if ([(BKUIPearlEnrollController *)self doesNeedFullscreenInstructingView])
  {
    v3 = objc_alloc_init(BKUIFullscreenInstructingViewController);
    fullscreenInstructingVC = self->_fullscreenInstructingVC;
    self->_fullscreenInstructingVC = v3;

    [(BKUIPearlEnrollController *)self addChildViewController:self->_fullscreenInstructingVC];
    v5 = [(BKUIPearlEnrollController *)self view];
    v6 = [(BKUIFullscreenInstructingViewController *)self->_fullscreenInstructingVC view];
    [v5 addSubview:v6];

    [(BKUIFullscreenInstructingViewController *)self->_fullscreenInstructingVC didMoveToParentViewController:self];
    v7 = _BKUILoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_241B0A000, v7, OS_LOG_TYPE_DEFAULT, "Main enroll controller: Added subview: FullscreenInstructing view", buf, 2u);
    }

    objc_initWeak(buf, self);
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    v9 = [MEMORY[0x277CCABD8] mainQueue];
    v10 = *MEMORY[0x277D776B8];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__BKUIPearlEnrollController_setupFullscreenInstructingViewIfNeeded__block_invoke;
    v12[3] = &unk_278D0A050;
    objc_copyWeak(&v13, buf);
    v11 = [v8 addObserverForName:v10 object:0 queue:v9 usingBlock:v12];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

void __67__BKUIPearlEnrollController_setupFullscreenInstructingViewIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = _BKUILoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241B0A000, v2, OS_LOG_TYPE_DEFAULT, "Main enroll controller: Resized!", v3, 2u);
  }

  [WeakRetained showOrHideFullscreenInstructingViewIfNeeded];
}

- (void)showOrHideFullscreenInstructingViewIfNeeded
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(BKUIPearlEnrollController *)self fullscreenInstructingVC];

  if (!v3)
  {
LABEL_15:
    v18 = *MEMORY[0x277D85DE8];
    return;
  }

  v4 = [(BKUIPearlEnrollController *)self enrollViewController];
  v5 = [v4 state];

  if (v5 >= 8)
  {
    v6 = _BKUILoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(BKUIPearlEnrollController *)self enrollViewController];
      v19[0] = 67109120;
      v19[1] = [v7 state];
      _os_log_impl(&dword_241B0A000, v6, OS_LOG_TYPE_DEFAULT, "Main enroll controller: Ignoring evaluating showing/hiding FullScreenView as enrollment state [%u] is past state: SubsequentScanComplete", v19, 8u);
    }

    goto LABEL_15;
  }

  v8 = [(BKUIPearlEnrollController *)self fullscreenInstructingVC];
  v9 = [v8 view];
  if (!v9)
  {

    goto LABEL_12;
  }

  v10 = v9;
  v11 = [(BKUIPearlEnrollController *)self fullscreenInstructingVC];
  v12 = [v11 view];
  v13 = [(BKUIPearlEnrollController *)self view];
  v14 = [v12 isDescendantOfView:v13];

  if ((v14 & 1) == 0)
  {
LABEL_12:
    v17 = _BKUILoggingFacility();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19[0]) = 0;
      _os_log_impl(&dword_241B0A000, v17, OS_LOG_TYPE_DEFAULT, "Main enroll controller: Ignoring evaluating showing/hiding FullScreenView as we no longer have the view", v19, 2u);
    }

    goto LABEL_15;
  }

  v15 = [(BKUIPearlEnrollController *)self mustShowFullscreenInstructingView];
  v16 = *MEMORY[0x277D85DE8];

  [(BKUIPearlEnrollController *)self showFullscreenInstructingView:v15];
}

- (BOOL)mustShowFullscreenInstructingView
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = [(BKUIPearlEnrollController *)self enrollViewController];
  v3 = [v2 view];
  v4 = [v3 window];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [MEMORY[0x277D759A0] mainScreen];
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v34.origin.x = v6;
  v34.origin.y = v8;
  v34.size.width = v10;
  v34.size.height = v12;
  v38.origin.x = v15;
  v38.origin.y = v17;
  v38.size.width = v19;
  v38.size.height = v21;
  v22 = CGRectEqualToRect(v34, v38);
  v23 = _BKUILoggingFacility();
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
  if (v22)
  {
    if (v24)
    {
      v35.origin.x = v15;
      v35.origin.y = v17;
      v35.size.width = v19;
      v35.size.height = v21;
      v25 = NSStringFromRect(v35);
      v29 = 138412290;
      v30 = v25;
      _os_log_impl(&dword_241B0A000, v23, OS_LOG_TYPE_DEFAULT, "Main enroll controller: We are full screen: %@", &v29, 0xCu);
LABEL_6:
    }
  }

  else if (v24)
  {
    v36.origin.x = v6;
    v36.origin.y = v8;
    v36.size.width = v10;
    v36.size.height = v12;
    v25 = NSStringFromRect(v36);
    v37.origin.x = v15;
    v37.origin.y = v17;
    v37.size.width = v19;
    v37.size.height = v21;
    v26 = NSStringFromRect(v37);
    v29 = 138412546;
    v30 = v25;
    v31 = 2112;
    v32 = v26;
    _os_log_impl(&dword_241B0A000, v23, OS_LOG_TYPE_DEFAULT, "Main enroll controller: We are not full screen: %@ vs %@", &v29, 0x16u);

    goto LABEL_6;
  }

  v27 = *MEMORY[0x277D85DE8];
  return !v22;
}

- (void)removeFullscreenInstructingViewIfNeeded
{
  v3 = [(BKUIPearlEnrollController *)self fullscreenInstructingVC];

  if (v3)
  {
    v4 = _BKUILoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_241B0A000, v4, OS_LOG_TYPE_DEFAULT, "Main enroll controller: Removed subview: FullscreenInstructing as enrollment is past state: SubsequentScanComplete", v8, 2u);
    }

    v5 = [(BKUIPearlEnrollController *)self fullscreenInstructingVC];
    v6 = [v5 view];
    [v6 removeFromSuperview];

    v7 = [(BKUIPearlEnrollController *)self fullscreenInstructingVC];
    [v7 setView:0];
  }
}

- (void)deviceOrientationChanged:(int64_t)a3 duration:(double)a4
{
  v60 = *MEMORY[0x277D85DE8];
  v7 = _BKUILoggingFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0].f64[0]) = 134218240;
    *(buf[0].f64 + 4) = a3;
    WORD2(buf[0].f64[1]) = 2048;
    *(&buf[0].f64[1] + 6) = a4;
    _os_log_impl(&dword_241B0A000, v7, OS_LOG_TYPE_DEFAULT, "deviceOrientationChanged: orientation = %lu, duration = %f", buf, 0x16u);
  }

  v8 = [(BKUIPearlEnrollController *)self coachingController];
  [v8 setOrientation:a3];

  v9 = [(BKUIPearlEnrollController *)self coachingController];
  v10 = [v9 needsToShow];

  orientation = self->_orientation;
  self->_orientation = a3;
  v12 = [(BKUIPearlEnrollController *)self coachingController];
  [v12 setOrientation:a3];

  v13 = [(BKUIPearlEnrollController *)self orientationStateHandler];
  if ([v13 rotationLockStatusIsLocked])
  {
    systemRotationAnimating = self->_systemRotationAnimating;

    if (!systemRotationAnimating)
    {
      v15 = [(UIViewController *)self bkui_deviceOrientationForIterfaceOrientation:orientation];
      v16 = [(UIViewController *)self bkui_deviceOrientationForIterfaceOrientation:self->_orientation];
      objc_initWeak(buf, self);
      v17 = [(BKUIPearlEnrollController *)self navigationController];
      v18 = [v17 view];
      [v18 bounds];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;

      v27 = [(BKUIPearlEnrollController *)self view];
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __63__BKUIPearlEnrollController_deviceOrientationChanged_duration___block_invoke;
      v56[3] = &unk_278D0A078;
      v56[4] = self;
      v57 = v10;
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __63__BKUIPearlEnrollController_deviceOrientationChanged_duration___block_invoke_2;
      v53[3] = &unk_278D0A0A0;
      objc_copyWeak(&v54, buf);
      v53[4] = self;
      v55 = v10;
      [(UIViewController *)self bkui_rotateView:v27 fromOrientation:v15 toOrientation:v16 containerBounds:v56 animatedDuration:v53 alongSide:v20 completion:v22, v24, v26, a4];

      objc_destroyWeak(&v54);
      objc_destroyWeak(buf);
      goto LABEL_23;
    }
  }

  else
  {
  }

  [(BKUIPearlEnrollController *)self resetLayout];
  v28 = [MEMORY[0x277D75418] currentDevice];
  v29 = [v28 userInterfaceIdiom] == 1;

  if (v29)
  {
    v30 = [(BKUIPearlEnrollController *)self orientationStateHandler];
    v31 = -[UIViewController bkui_uiforDeviceOrientation:](self, "bkui_uiforDeviceOrientation:", [v30 rawDeviceOrientationIgnoringOrientationLocks]);
    v32 = [(BKUIPearlEnrollController *)self coachingController];
    [v32 setOrientation:v31];

    v33 = [(BKUIPearlEnrollController *)self coachingController];
    v34 = [v33 needsToShow];

    v35 = [(BKUIPearlEnrollController *)self enrollViewController];
    v36 = [(BKUIPearlEnrollController *)self coachingController];
    [v35 animateWithOrientation:{objc_msgSend(v36, "orientation")}];

    if ((v34 & 1) == 0)
    {
      v37 = [(BKUIPearlEnrollController *)self enrollViewController];
      [v37 setEnrollMovieViewHidden:0];
    }

    v38 = _BKUILoggingFacility();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0].f64[0]) = 0;
      _os_log_impl(&dword_241B0A000, v38, OS_LOG_TYPE_DEFAULT, "Enroll controller completed size transition", buf, 2u);
    }

    if ([(BKUIPearlEnrollController *)self hasBeenPortrait])
    {
      v59 = 0u;
      memset(buf, 0, sizeof(buf));
      v39 = [(BKUIPearlEnrollController *)self enrollViewController];
      v40 = [v39 view];
      v41 = v40;
      if (v40)
      {
        [v40 transform];
      }

      else
      {
        v59 = 0u;
        memset(buf, 0, sizeof(buf));
      }

      buf[0] = vrndaq_f64(buf[0]);
      buf[1] = vrndaq_f64(buf[1]);
      v51 = buf[1];
      v52 = v59;
      v50 = buf[0];
      v42 = [(BKUIPearlEnrollController *)self enrollViewController];
      v43 = [v42 view];
      v49[0] = v50;
      v49[1] = v51;
      v49[2] = v52;
      [v43 setTransform:v49];
    }

    objc_initWeak(buf, self);
    if (v34)
    {
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __63__BKUIPearlEnrollController_deviceOrientationChanged_duration___block_invoke_31;
      v47[3] = &unk_278D09950;
      objc_copyWeak(&v48, buf);
      [(BKUIPearlEnrollController *)self setCoachingHidden:0 animated:1 completion:v47];
      objc_destroyWeak(&v48);
    }

    else
    {
      [(BKUIPearlEnrollController *)self setCoachingHidden:1 animated:1];
    }

    v44 = [(BKUIPearlEnrollController *)self view];
    v45 = [BKUIUtils activeInterfaceOrientationForView:v44]== 1;

    if (v45)
    {
      [(BKUIPearlEnrollController *)self setHasBeenPortrait:1];
    }

    self->_systemRotationAnimating = 0;
    objc_destroyWeak(buf);
  }

LABEL_23:
  v46 = *MEMORY[0x277D85DE8];
}

void __63__BKUIPearlEnrollController_deviceOrientationChanged_duration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = [MEMORY[0x277D75348] redColor];
  v4 = [v2 bkui_debugBorder:v3 withWidth:1];

  v5 = [*(a1 + 32) coachingController];
  [v5 stopCoachingAnimation];

  [*(a1 + 32) setCoachingHidden:(*(a1 + 40) & 1) == 0 animated:1];
  v6 = [*(a1 + 32) enrollViewController];
  [v6 animateWithOrientation:*(*(a1 + 32) + 1064)];

  if ((*(a1 + 40) & 1) == 0)
  {
    v7 = [*(a1 + 32) enrollViewController];
    [v7 setEnrollMovieViewHidden:0];
  }

  v9 = [*(a1 + 32) navigationController];
  v8 = [v9 view];
  [v8 layoutIfNeeded];
}

void __63__BKUIPearlEnrollController_deviceOrientationChanged_duration___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = _BKUILoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241B0A000, v3, OS_LOG_TYPE_DEFAULT, "Enroll controller completed size transition", buf, 2u);
  }

  if ([*(a1 + 32) hasBeenPortrait])
  {
    v18 = 0u;
    v19 = 0u;
    *buf = 0u;
    v4 = [*(a1 + 32) enrollViewController];
    v5 = [v4 view];
    v6 = v5;
    if (v5)
    {
      [v5 transform];
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      *buf = 0u;
    }

    *buf = vrndaq_f64(*buf);
    v18 = vrndaq_f64(v18);
    v15 = v18;
    v16 = v19;
    v14 = *buf;
    v7 = [*(a1 + 32) enrollViewController];
    v8 = [v7 view];
    v13[0] = v14;
    v13[1] = v15;
    v13[2] = v16;
    [v8 setTransform:v13];
  }

  if (*(a1 + 48) == 1)
  {
    v9 = [*(a1 + 32) enrollViewController];
    [v9 setEnrollMovieViewHidden:1];
  }

  v10 = [*(a1 + 32) view];
  v11 = [BKUIUtils activeInterfaceOrientationForView:v10];

  if (v11 == 1)
  {
    [*(a1 + 32) setHasBeenPortrait:1];
  }

  v12 = [*(a1 + 32) coachingController];
  [v12 deviceOrientationChanged];
}

void __63__BKUIPearlEnrollController_deviceOrientationChanged_duration___block_invoke_31(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained view];
  [v1 center];
  v3 = v2;
  v5 = v4;
  v6 = [WeakRetained coachingController];
  v7 = [v6 view];
  [v7 setCenter:{v3, v5}];

  v8 = [WeakRetained enrollViewController];
  [v8 setEnrollMovieViewHidden:1];

  v9 = [WeakRetained coachingController];
  [v9 deviceOrientationChanged];
}

- (void)_startObserving
{
  objc_initWeak(&location, self);
  v3 = [(BKUIPearlEnrollController *)self orientationStateHandler];
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __44__BKUIPearlEnrollController__startObserving__block_invoke;
  v8 = &unk_278D0A0C8;
  objc_copyWeak(&v9, &location);
  [v3 registerRotationObserver:&v5];

  v4 = [(BKUIPearlEnrollController *)self orientationStateHandler:v5];
  [v4 registerRotationLockObserver:&__block_literal_global_3];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __44__BKUIPearlEnrollController__startObserving__block_invoke(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained bkui_uiforDeviceOrientation:a2];
  v5 = _BKUILoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134218240;
    v13 = a2;
    v14 = 2048;
    v15 = v4;
    _os_log_impl(&dword_241B0A000, v5, OS_LOG_TYPE_DEFAULT, "ForcedRotation: orientation changed: deviceOrientation = %lu, orientation = %lu", &v12, 0x16u);
  }

  if (!a2 || (a2 - 5) < 2 || (a2 - 5) < 2 == a2 || ([MEMORY[0x277D75128] sharedApplication], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "applicationState"), v6, v7))
  {
    v8 = _BKUILoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [MEMORY[0x277D75128] sharedApplication];
      v10 = [v9 applicationState];
      v12 = 134218240;
      v13 = v10;
      v14 = 2048;
      v15 = a2;
      _os_log_impl(&dword_241B0A000, v8, OS_LOG_TYPE_DEFAULT, "ForcedRotration:[orientation stat change callback pruned] - application state %li, orientation %li", &v12, 0x16u);
    }
  }

  else
  {
    [WeakRetained deviceOrientationChanged:v4];
    [WeakRetained setNeedsUpdateOfHomeIndicatorAutoHidden];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __44__BKUIPearlEnrollController__startObserving__block_invoke_34(uint64_t a1, int a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = _BKUILoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&dword_241B0A000, v3, OS_LOG_TYPE_DEFAULT, "ForcedRotration:[rotation lock status changed] - locked:%i", v5, 8u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)resetLayout
{
  v3 = [(BKUIPearlEnrollController *)self view];
  v4 = [MEMORY[0x277D75348] orangeColor];
  v5 = [v3 bkui_debugBorder:v4 withWidth:1];

  v6 = [(BKUIPearlEnrollController *)self coachingController];
  [v6 stopCoachingAnimation];

  v7 = [(BKUIPearlEnrollController *)self view];
  v8 = [v7 layer];
  v9 = *(MEMORY[0x277CD9DE8] + 80);
  v13[4] = *(MEMORY[0x277CD9DE8] + 64);
  v13[5] = v9;
  v10 = *(MEMORY[0x277CD9DE8] + 112);
  v13[6] = *(MEMORY[0x277CD9DE8] + 96);
  v13[7] = v10;
  v11 = *(MEMORY[0x277CD9DE8] + 16);
  v13[0] = *MEMORY[0x277CD9DE8];
  v13[1] = v11;
  v12 = *(MEMORY[0x277CD9DE8] + 48);
  v13[2] = *(MEMORY[0x277CD9DE8] + 32);
  v13[3] = v12;
  [v8 setTransform:v13];
}

- (void)diffSystemAndForcedRotationOrientations
{
  v3 = [(BKUIPearlEnrollController *)self view];
  self->_orientation = [(UIViewController *)self bkui_reverseLeftRight:[BKUIUtils activeInterfaceOrientationForView:v3]];

  v4 = [(BKUIPearlEnrollController *)self orientationStateHandler];
  v5 = -[UIViewController bkui_uiforDeviceOrientation:](self, "bkui_uiforDeviceOrientation:", [v4 rawDeviceOrientationIgnoringOrientationLocks]);

  if (v5)
  {

    [(BKUIPearlEnrollController *)self deviceOrientationChanged:v5 duration:0.0];
  }
}

- (void)_copyAndShowInternalNavBar
{
  v3 = [(BKUIPearlEnrollController *)self navigationController];
  v4 = [v3 navigationBar];
  v5 = [BKUITypeSafeCopier copy:v4];
  navbarCopy = self->_navbarCopy;
  self->_navbarCopy = v5;

  v7 = [(BKUIPearlEnrollController *)self navbarCopy];
  v8 = [(BKUIPearlEnrollController *)self navigationItem];
  [v7 _pushNavigationItem:v8 transition:0];

  v9 = [(BKUIPearlEnrollController *)self navigationController];
  [v9 setNavigationBarHidden:1 animated:0];

  v11 = [(BKUIPearlEnrollController *)self view];
  v10 = [(BKUIPearlEnrollController *)self navbarCopy];
  [v11 addSubview:v10];
}

- (BOOL)prefersHomeIndicatorAutoHidden
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  if ([v3 userInterfaceIdiom] == 1)
  {
    v4 = [(BKUIPearlEnrollController *)self orientationStateHandler];
    v5 = [v4 rotationLockStatusIsLocked];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)deviceOrientationDidChange:(id)a3
{
  v4 = [(BKUIPearlEnrollController *)self coachingController];
  v5 = [v4 needsToShow];

  [(BKUIPearlEnrollController *)self setCoachingHidden:v5 ^ 1u animated:1];
}

- (void)coachingSkipped
{
  v4 = [(BKUIPearlEnrollController *)self delegate];
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.biometrickitui.pearl_enroll" code:-2 userInfo:0];
  [v4 pearlEnrollController:self finishedEnrollWithError:v3];
}

- (void)setCoachingHidden:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = _BKUILoggingFacility();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v20 = v6;
    v21 = 1024;
    v22 = v5;
    _os_log_impl(&dword_241B0A000, v9, OS_LOG_TYPE_DEFAULT, "Setting coaching hidden: %i animated: %i", buf, 0xEu);
  }

  if (v5)
  {
    v10 = 0.389999986;
  }

  else
  {
    v10 = 0.0;
  }

  v11 = MEMORY[0x277D75D18];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __67__BKUIPearlEnrollController_setCoachingHidden_animated_completion___block_invoke;
  v17[3] = &unk_278D0A110;
  v17[4] = self;
  v18 = v6;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__BKUIPearlEnrollController_setCoachingHidden_animated_completion___block_invoke_2;
  v14[3] = &unk_278D0A138;
  v16 = v6;
  v14[4] = self;
  v15 = v8;
  v12 = v8;
  [(UIView *)v11 bkui_animateWithDuration:v17 animations:v14 completion:v10];

  v13 = *MEMORY[0x277D85DE8];
}

void __67__BKUIPearlEnrollController_setCoachingHidden_animated_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 0.0;
  }

  else
  {
    v1 = 1.0;
  }

  v3 = [*(a1 + 32) coachingController];
  v2 = [v3 view];
  [v2 setAlpha:v1];
}

uint64_t __67__BKUIPearlEnrollController_setCoachingHidden_animated_completion___block_invoke_2(uint64_t a1)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    v2 = [*(a1 + 32) enrollViewController];
    [v2 restartEnroll];
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (int64_t)preferredStatusBarStyle
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(BKUIPearlEnrollController *)self childViewControllers];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v13 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v12 + 1) + 8 * v7);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v8 = [(BKUIPearlEnrollController *)self enrollViewController];
    v3 = v8;
  }

  v9 = [v8 preferredStatusBarStyle];

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)inBuddy
{
  v2 = [(BKUIPearlEnrollController *)self enrollViewController];
  v3 = [v2 inBuddy];

  return v3;
}

- (void)setExistingIdentity:(id)a3
{
  v4 = a3;
  v5 = [(BKUIPearlEnrollController *)self enrollViewController];
  [v5 setExistingIdentity:v4];
}

- (void)primeWithPasscode:(id)a3
{
  v4 = a3;
  v5 = [(BKUIPearlEnrollController *)self enrollViewController];
  [v5 primeWithPasscode:v4];
}

- (void)primeWithExternalizedAuthContext:(id)a3
{
  v4 = a3;
  v5 = [(BKUIPearlEnrollController *)self enrollViewController];
  [v5 primeWithExternalizedAuthContext:v4];
}

- (void)pearlEnrollViewController:(id)a3 finishedEnrollWithError:(id)a4
{
  v5 = a4;
  v6 = [(BKUIPearlEnrollController *)self delegate];
  [v6 pearlEnrollController:self finishedEnrollWithError:v5];
}

- (void)pearlEnrollControllerCompleted:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__BKUIPearlEnrollController_pearlEnrollControllerCompleted___block_invoke;
  block[3] = &unk_278D09978;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __60__BKUIPearlEnrollController_pearlEnrollControllerCompleted___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navbarCopy];
  [v2 _setHidesShadow:1];

  v3 = [*(a1 + 32) coachingController];
  v4 = [v3 view];
  [v4 removeFromSuperview];

  v5 = *(a1 + 32);

  return [v5 removeFullscreenInstructingViewIfNeeded];
}

- (void)pearlEnrollViewControllerStateChanged:(int)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = _BKUILoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = a3;
    _os_log_impl(&dword_241B0A000, v5, OS_LOG_TYPE_DEFAULT, "Main enroll controller: Enroll state changed to: %i", buf, 8u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__BKUIPearlEnrollController_pearlEnrollViewControllerStateChanged___block_invoke;
  v7[3] = &unk_278D09FB0;
  v8 = a3;
  v7[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], v7);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __67__BKUIPearlEnrollController_pearlEnrollViewControllerStateChanged___block_invoke(uint64_t result)
{
  if (*(result + 40) >= 8u)
  {
    return [*(result + 32) showFullscreenInstructingView:0];
  }

  return result;
}

+ (BOOL)isPearlAvailable
{
  BKDeviceClass = getBKDeviceClass();
  v3 = [getBKDeviceDescriptorClass() deviceDescriptorForType:2];
  v9 = 0;
  v4 = [BKDeviceClass deviceWithDescriptor:v3 error:&v9];
  v5 = v9;

  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v7;
}

+ (BOOL)isPearlInterlocked
{
  v25 = *MEMORY[0x277D85DE8];
  BKDeviceClass = getBKDeviceClass();
  v3 = [getBKDeviceDescriptorClass() deviceDescriptorForType:2];
  v16 = 0;
  v4 = [BKDeviceClass deviceWithDescriptor:v3 error:&v16];
  v5 = v16;

  if (v4)
  {
    v15 = 0;
    v14 = 0;
    v6 = [v4 bioLockoutState:&v15 forUser:getuid() error:&v14];
    v7 = v14;
    v8 = _BKUILoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:v15];
      v10 = [MEMORY[0x277CCABB0] numberWithBool:v6];
      *buf = 138413058;
      v18 = v4;
      v19 = 2112;
      v20 = v9;
      v21 = 2112;
      v22 = v5;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_241B0A000, v8, OS_LOG_TYPE_DEFAULT, "Biolockout state for device: %@, state: %@, error: %@, success: %@", buf, 0x2Au);
    }

    v11 = v15 == 7;
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)dealloc
{
  coachingController = self->_coachingController;
  self->_coachingController = 0;

  enrollViewController = self->_enrollViewController;
  self->_enrollViewController = 0;

  v5.receiver = self;
  v5.super_class = BKUIPearlEnrollController;
  [(BKUIPearlEnrollController *)&v5 dealloc];
}

- (BKUIPearlEnrollControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end