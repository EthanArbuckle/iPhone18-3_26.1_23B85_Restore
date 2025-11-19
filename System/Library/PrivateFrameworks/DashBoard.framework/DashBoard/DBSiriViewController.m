@interface DBSiriViewController
- (CGRect)_hostedPresentationFrame;
- (DBEnvironment)environment;
- (DBFocusMovementActionHandling)focusMovementActionHandler;
- (DBSiriIntentDelegate)intentDelegate;
- (DBSiriViewController)initWithEnvironment:(id)a3 layoutEngine:(id)a4;
- (id)scene:(id)a3 handleActions:(id)a4;
- (void)_addPresentationView;
- (void)_handleBackgroundURLRequest:(id)a3 application:(id)a4;
- (void)_handleHomeEventType:(unint64_t)a3;
- (void)_handlePunchoutRequest:(id)a3;
- (void)_removePresentationView;
- (void)_requestDismissalWithReason:(int64_t)a3;
- (void)_safeDismissAnimated:(BOOL)a3 completion:(id)a4;
- (void)_telephonyDropTapped:(id)a3;
- (void)_touchedDisplayToDismiss:(id)a3;
- (void)_updateDeferrals;
- (void)_updateHostedPresentationFrame;
- (void)_updateTouchToDismiss;
- (void)activateSceneWithSettings:(id)a3 completion:(id)a4;
- (void)activeIntentWithBundleId:(id)a3;
- (void)backgroundSceneWithCompletion:(id)a3;
- (void)dealloc;
- (void)foregroundSceneWithSettings:(id)a3 completion:(id)a4;
- (void)handleEvent:(id)a3;
- (void)handleTransitionToFrame:(CGRect)a3;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
- (void)sceneDidActivate:(id)a3;
- (void)sceneDidInvalidate:(id)a3 withContext:(id)a4;
- (void)setFocusAssertion:(id)a3;
- (void)setPaired:(BOOL)a3;
- (void)setScene:(id)a3;
- (void)setTouchToDismissEnabled:(BOOL)a3 forRequester:(id)a4;
- (void)siriPresentation:(id)a3 didCreateSiriScene:(id)a4;
- (void)siriPresentation:(id)a3 requestsDismissalWithOptions:(id)a4 withHandler:(id)a5;
- (void)siriPresentation:(id)a3 requestsPresentationWithOptions:(id)a4 withHandler:(id)a5;
- (void)siriPresentation:(id)a3 requestsPunchout:(id)a4 withHandler:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation DBSiriViewController

- (DBEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (void)_updateTouchToDismiss
{
  v3 = [(NSMutableSet *)self->_touchToDismissEnabledReasons count];
  v4 = DBLogForCategory(3uLL);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v9 = 0;
      v6 = "Enabling touch to dismiss.";
      v7 = &v9;
LABEL_6:
      _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
    }
  }

  else if (v5)
  {
    v8 = 0;
    v6 = "Disabling touch to dismiss.";
    v7 = &v8;
    goto LABEL_6;
  }

  [(UILongPressGestureRecognizer *)self->_touchToDismissRecognizer setEnabled:v3 != 0];
}

- (DBSiriIntentDelegate)intentDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_intentDelegate);

  return WeakRetained;
}

- (CGRect)_hostedPresentationFrame
{
  v3 = +[DBApplicationController sharedInstance];
  v4 = [v3 siriApplication];

  v5 = *MEMORY[0x277CBF348];
  v6 = *(MEMORY[0x277CBF348] + 8);
  v7 = [(DBSiriViewController *)self environment];
  [v7 sceneFrameForApplication:v4];
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v6;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = DBSiriViewController;
  [(DBSiriViewController *)&v3 viewWillLayoutSubviews];
  [(DBSiriViewController *)self _updateHostedPresentationFrame];
}

- (void)_updateHostedPresentationFrame
{
  v48[4] = *MEMORY[0x277D85DE8];
  [(DBSiriViewController *)self _hostedPresentationFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(DBSiriViewController *)self presentationViewController];
  [v11 setHostedPresentationFrame:{v4, v6, v8, v10}];

  v12 = [(DBSiriViewController *)self constraints];

  if (v12)
  {
    v13 = MEMORY[0x277CCAAD0];
    v14 = [(DBSiriViewController *)self constraints];
    [v13 deactivateConstraints:v14];
  }

  v15 = [(DBSiriViewController *)self presentationViewController];
  v16 = [v15 view];

  if (v16)
  {
    v17 = +[DBApplicationController sharedInstance];
    v47 = [v17 siriApplication];

    v18 = [(DBSiriViewController *)self presentationViewController];
    v19 = [(DBSiriViewController *)self environment];
    [v19 safeAreaInsetsForApplication:v47];
    [v18 setAdditionalSafeAreaInsets:?];

    v46 = [(DBSiriViewController *)self presentationViewController];
    v45 = [v46 view];
    v43 = [v45 leftAnchor];
    v44 = [(DBSiriViewController *)self view];
    v42 = [v44 leftAnchor];
    v41 = [v43 constraintEqualToAnchor:v42];
    v48[0] = v41;
    v40 = [(DBSiriViewController *)self presentationViewController];
    v39 = [v40 view];
    v37 = [v39 rightAnchor];
    v38 = [(DBSiriViewController *)self view];
    v36 = [v38 rightAnchor];
    v35 = [v37 constraintEqualToAnchor:v36];
    v48[1] = v35;
    v34 = [(DBSiriViewController *)self presentationViewController];
    v33 = [v34 view];
    v31 = [v33 topAnchor];
    v32 = [(DBSiriViewController *)self view];
    v20 = [v32 topAnchor];
    v21 = [v31 constraintEqualToAnchor:v20];
    v48[2] = v21;
    v22 = [(DBSiriViewController *)self presentationViewController];
    v23 = [v22 view];
    v24 = [v23 bottomAnchor];
    v25 = [(DBSiriViewController *)self view];
    v26 = [v25 bottomAnchor];
    v27 = [v24 constraintEqualToAnchor:v26];
    v48[3] = v27;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:4];
    [(DBSiriViewController *)self setConstraints:v28];

    v29 = MEMORY[0x277CCAAD0];
    v30 = [(DBSiriViewController *)self constraints];
    [v29 activateConstraints:v30];
  }
}

- (void)_updateDeferrals
{
  v3 = [(DBSiriViewController *)self scene];

  if (v3 && ((-[DBSiriViewController scene](self, "scene"), v4 = objc_claimAutoreleasedReturnValue(), [v4 settings], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_class(), v7 = v5, !v6) ? (v8 = 0) : (objc_opt_isKindOfClass() & 1) == 0 ? (v8 = 0) : (v8 = v7), v9 = v8, v7, v7, v4, v10 = objc_msgSend(v9, "deactivationReasons"), v9, !v10))
  {
    v11 = [(DBSiriViewController *)self focusAssertion];

    if (!v11)
    {
      v12 = [(DBSiriViewController *)self environment];
      v15 = [v12 focusController];

      v13 = [(DBSiriViewController *)self scene];
      v14 = [v15 deferFocusToScene:v13 priority:3 reason:@"siri"];

      [(DBSiriViewController *)self setFocusAssertion:v14];
    }
  }

  else
  {

    [(DBSiriViewController *)self setFocusAssertion:0];
  }
}

- (DBSiriViewController)initWithEnvironment:(id)a3 layoutEngine:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = DBSiriViewController;
  v8 = [(DBSiriViewController *)&v23 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_layoutEngine, a4);
    objc_storeWeak(&v9->_environment, v6);
    v9->_dismissed = 1;
    v10 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v9 action:sel__telephonyDropTapped_];
    [v10 setAllowedPressTypes:&unk_285AA4988];
    v11 = [MEMORY[0x277D76330] sharedInstance];
    WeakRetained = objc_loadWeakRetained(&v9->_environment);
    v13 = [WeakRetained displayConfiguration];
    v14 = [v13 identity];
    [v11 addGestureRecognizer:v10 toDisplayWithIdentity:v14];

    v15 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v9 action:sel__touchedDisplayToDismiss_];
    touchToDismissRecognizer = v9->_touchToDismissRecognizer;
    v9->_touchToDismissRecognizer = v15;

    [(UILongPressGestureRecognizer *)v9->_touchToDismissRecognizer setCancelsTouchesInView:0];
    [(UILongPressGestureRecognizer *)v9->_touchToDismissRecognizer setMinimumPressDuration:0.0];
    [(UILongPressGestureRecognizer *)v9->_touchToDismissRecognizer setEnabled:0];
    v17 = [MEMORY[0x277D76330] sharedInstance];
    v18 = v9->_touchToDismissRecognizer;
    v19 = objc_loadWeakRetained(&v9->_environment);
    v20 = [v19 displayConfiguration];
    v21 = [v20 identity];
    [v17 addGestureRecognizer:v18 toDisplayWithIdentity:v21];
  }

  return v9;
}

- (void)dealloc
{
  v3 = [(DBSiriViewController *)self layoutElementAssertion];

  if (v3)
  {
    v4 = DBLogForCategory(3uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "Invalidating layout element for Siri", buf, 2u);
    }

    v5 = [(DBSiriViewController *)self layoutElementAssertion];
    [v5 invalidate];
  }

  v6 = [(DBSiriViewController *)self scene];
  [v6 removeObserver:self];

  v7.receiver = self;
  v7.super_class = DBSiriViewController;
  [(DBSiriViewController *)&v7 dealloc];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = DBSiriViewController;
  [(DBSiriViewController *)&v6 viewDidLoad];
  v3 = [MEMORY[0x277D75348] clearColor];
  v4 = [(DBSiriViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(DBSiriViewController *)self presentationViewController];

  if (v5)
  {
    [(DBSiriViewController *)self _addPresentationView];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v25.receiver = self;
  v25.super_class = DBSiriViewController;
  [(DBSiriViewController *)&v25 viewDidAppear:a3];
  v4 = [(DBSiriViewController *)self presentationViewController];
  v5 = [MEMORY[0x277CF0D38] factoryWithDuration:0.5];
  [v4 animatedAppearanceWithFactory:v5 completion:&__block_literal_global_10];

  [(DBSiriViewController *)self setDismissed:0];
  v6 = [(DBSiriViewController *)self presentationRequestHandler];

  if (v6)
  {
    v7 = DBLogForCategory(3uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Signalling Siri activation success", v24, 2u);
    }

    v8 = [(DBSiriViewController *)self presentationRequestHandler];
    v8[2](v8, 1, 0);

    [(DBSiriViewController *)self setPresentationRequestHandler:0];
    v9 = [(DBSiriViewController *)self environment];
    v10 = [v9 environmentConfiguration];
    v11 = [v10 analytics];
    [v11 siriDidPresent];

    v12 = objc_alloc(MEMORY[0x277D0AD00]);
    v13 = [v12 initWithIdentifier:*MEMORY[0x277D0ABC0]];
    [v13 setUIApplicationElement:1];
    v14 = +[DBApplicationController sharedInstance];
    v15 = [v14 siriApplication];

    v16 = [(DBSiriViewController *)self environment];
    [v16 sceneFrameForApplication:v15];
    [v13 setReferenceFrame:?];

    [v13 setLevel:2];
    v17 = DBLogForCategory(3uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&dword_248146000, v17, OS_LOG_TYPE_DEFAULT, "Activating layout element for Siri", v24, 2u);
    }

    v18 = [(DBSiriViewController *)self layoutElementAssertion];

    if (v18)
    {
      v19 = [(DBSiriViewController *)self layoutElementAssertion];
      [v19 invalidate];
    }

    v20 = [(DBSiriViewController *)self environment];
    v21 = [v20 environmentConfiguration];
    v22 = [v21 displayLayoutPublisher];
    v23 = [v22 addElement:v13];
    [(DBSiriViewController *)self setLayoutElementAssertion:v23];
  }
}

- (void)setPaired:(BOOL)a3
{
  v31 = *MEMORY[0x277D85DE8];
  if (self->_paired != a3)
  {
    self->_paired = a3;
    if (a3)
    {
      [(DBSiriViewController *)self _hostedPresentationFrame];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v12 = DBLogForCategory(3uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v32.origin.x = v5;
        v32.origin.y = v7;
        v32.size.width = v9;
        v32.size.height = v11;
        v13 = NSStringFromCGRect(v32);
        v29 = 138412290;
        v30 = v13;
        _os_log_impl(&dword_248146000, v12, OS_LOG_TYPE_DEFAULT, "Initializing SiriPresentationViewController with presentationFrame: %@", &v29, 0xCu);
      }

      v14 = objc_alloc(MEMORY[0x277D61A08]);
      v15 = [(DBSiriViewController *)self environment];
      v16 = [v15 displayConfiguration];
      v17 = [v14 initWithIdentifier:2 hostedPresentationFrame:v16 displayConfiguration:{v5, v7, v9, v11}];
      [(DBSiriViewController *)self setPresentationViewController:v17];

      v18 = [(DBSiriViewController *)self presentationViewController];
      [v18 setSiriPresentationControllerDelegate:self];

      v19 = [(DBSiriViewController *)self presentationViewController];
      [v19 setIntentUsageDelegate:self];

      v20 = +[DBApplicationController sharedInstance];
      v21 = [v20 siriApplication];

      v22 = [(DBSiriViewController *)self presentationViewController];
      v23 = [(DBSiriViewController *)self environment];
      [v23 safeAreaInsetsForApplication:v21];
      [v22 setAdditionalSafeAreaInsets:?];

      v24 = [(DBSiriViewController *)self presentationViewController];
      [(DBSiriViewController *)self addChildViewController:v24];

      if ([(DBSiriViewController *)self isViewLoaded])
      {
        [(DBSiriViewController *)self _addPresentationView];
      }
    }

    else
    {
      v25 = [(DBSiriViewController *)self presentationViewController];
      [v25 willMoveToParentViewController:0];

      v26 = DBLogForCategory(3uLL);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v29) = 0;
        _os_log_impl(&dword_248146000, v26, OS_LOG_TYPE_DEFAULT, "DBSiriViewController is now unpaired. Invalidating...", &v29, 2u);
      }

      v27 = [(DBSiriViewController *)self presentationViewController];
      [v27 removeFromParentViewController];

      v28 = [(DBSiriViewController *)self presentationViewController];
      [v28 invalidate];

      [(DBSiriViewController *)self _requestDismissalWithReason:22];
      [(DBSiriViewController *)self setPresentationRequestHandler:0];
    }
  }
}

- (void)setTouchToDismissEnabled:(BOOL)a3 forRequester:(id)a4
{
  v4 = a3;
  v13 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (v4)
  {
    if (!self->_touchToDismissEnabledReasons)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
      touchToDismissEnabledReasons = self->_touchToDismissEnabledReasons;
      self->_touchToDismissEnabledReasons = v7;
    }

    v9 = DBLogForCategory(3uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_248146000, v9, OS_LOG_TYPE_DEFAULT, "Adding touch to dismiss requester: %@.", &v11, 0xCu);
    }

    [(NSMutableSet *)self->_touchToDismissEnabledReasons addObject:v6];
  }

  else
  {
    v10 = DBLogForCategory(3uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_248146000, v10, OS_LOG_TYPE_DEFAULT, "Removing touch to dismiss requester: %@.", &v11, 0xCu);
    }

    [(NSMutableSet *)self->_touchToDismissEnabledReasons removeObject:v6];
  }

  [(DBSiriViewController *)self _updateTouchToDismiss];
}

- (void)handleTransitionToFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = objc_alloc_init(MEMORY[0x277D76390]);
  v9 = [(DBSiriViewController *)self view];
  [v8 _setContainerView:v9];

  v10 = [(DBSiriViewController *)self presentationViewController];
  [v8 _setToViewController:v10];

  v11 = [(DBSiriViewController *)self presentationViewController];
  v12 = [v11 view];
  [v12 frame];
  [v8 _setToStartFrame:?];

  [v8 _setToEndFrame:{x, y, width, height}];
  [v8 _setIsAnimated:0];
  v13 = [v8 _transitionCoordinator];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48__DBSiriViewController_handleTransitionToFrame___block_invoke;
  v16[3] = &unk_278F02D18;
  v16[4] = self;
  [v13 animateAlongsideTransition:v16 completion:0];

  v14 = [(DBSiriViewController *)self presentationViewController];
  v15 = [v8 _transitionCoordinator];
  [v14 viewWillTransitionToSize:v15 withTransitionCoordinator:{width, height}];

  [v8 __runAlongsideAnimations];
}

uint64_t __48__DBSiriViewController_handleTransitionToFrame___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];

  v3 = DBLogForCategory(3uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_248146000, v3, OS_LOG_TYPE_DEFAULT, "Updating hosted presentation frame for screen resize", v5, 2u);
  }

  return [*(a1 + 32) _updateHostedPresentationFrame];
}

- (void)setScene:(id)a3
{
  v5 = a3;
  scene = self->_scene;
  if (scene != v5)
  {
    v8 = v5;
    if (scene)
    {
      [(FBScene *)scene removeObserver:self];
      v7 = self->_scene;
      self->_scene = 0;

      v5 = v8;
    }

    if (v5)
    {
      objc_storeStrong(&self->_scene, a3);
      scene = [(FBScene *)v8 addObserver:self];
      v5 = v8;
    }
  }

  MEMORY[0x2821F96F8](scene, v5);
}

- (void)setFocusAssertion:(id)a3
{
  v5 = a3;
  focusAssertion = self->_focusAssertion;
  if (focusAssertion != v5)
  {
    v7 = v5;
    [(DBFocusAssertion *)focusAssertion invalidate];
    objc_storeStrong(&self->_focusAssertion, a3);
    v5 = v7;
  }

  MEMORY[0x2821F96F8](focusAssertion, v5);
}

- (void)foregroundSceneWithSettings:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)backgroundSceneWithCompletion:(id)a3
{
  v5 = a3;
  if (![(DBSiriViewController *)self isDismissed])
  {
    [(DBSiriViewController *)self _requestDismissalWithReason:1];
  }

  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5);
    v4 = v5;
  }
}

- (void)activateSceneWithSettings:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)handleEvent:(id)a3
{
  v10 = a3;
  if ([v10 type] == 1)
  {
    v4 = [v10 context];
    if (v4)
    {
      v5 = v4;
      v6 = [v10 context];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v8 = [v10 context];
        v9 = [v8 unsignedIntegerValue];

        [(DBSiriViewController *)self _handleHomeEventType:v9];
      }
    }
  }
}

- (void)_handleHomeEventType:(unint64_t)a3
{
  v8 = *MEMORY[0x277D85DE8];
  if (a3 - 1 <= 1)
  {
    v5 = DBLogForCategory(3uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      v7 = a3;
      _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Requesting dismissal of Siri due to DBHomeEventType %li", &v6, 0xCu);
    }

    [(DBSiriViewController *)self setDismissed:1];
    [(DBSiriViewController *)self _requestDismissalWithReason:20];
  }
}

- (void)siriPresentation:(id)a3 requestsPresentationWithOptions:(id)a4 withHandler:(id)a5
{
  v6 = a5;
  v7 = DBLogForCategory(3uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Siri presentation requested!", buf, 2u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __85__DBSiriViewController_siriPresentation_requestsPresentationWithOptions_withHandler___block_invoke;
  v9[3] = &unk_278F02D40;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

void __85__DBSiriViewController_siriPresentation_requestsPresentationWithOptions_withHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) environment];
  v3 = [v2 environmentConfiguration];
  v4 = [v3 session];

  v5 = DBLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Borrowing screen for Siri activation", v11, 2u);
  }

  v6 = [v4 videoPlaybackAvailable];

  if (v6)
  {
    v7 = @"SiriActivation";
  }

  else
  {
    v7 = @"Siri";
  }

  v8 = [v4 borrowScreenForClient:@"CarPlayApp" reason:v7];
  [*(a1 + 32) setActivationBorrowToken:v8];

  [*(a1 + 32) setPresentationRequestHandler:*(a1 + 40)];
  v9 = [*(a1 + 32) environment];
  v10 = [DBEvent eventWithType:5 context:0];
  [v9 handleEvent:v10];
}

- (void)siriPresentation:(id)a3 requestsDismissalWithOptions:(id)a4 withHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = DBLogForCategory(3uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248146000, v9, OS_LOG_TYPE_DEFAULT, "Siri dismissal requested!", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__DBSiriViewController_siriPresentation_requestsDismissalWithOptions_withHandler___block_invoke;
  block[3] = &unk_278F02D90;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __82__DBSiriViewController_siriPresentation_requestsDismissalWithOptions_withHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) animated];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __82__DBSiriViewController_siriPresentation_requestsDismissalWithOptions_withHandler___block_invoke_2;
  v5[3] = &unk_278F02D68;
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 _safeDismissAnimated:v3 completion:v5];
}

uint64_t __82__DBSiriViewController_siriPresentation_requestsDismissalWithOptions_withHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) pendingChangeRequest];

  if (v2)
  {
    v3 = [*(a1 + 32) environment];
    v4 = [v3 workspace];
    v5 = [*(a1 + 32) pendingChangeRequest];
    [v4 requestStateChange:v5];

    [*(a1 + 32) setPendingChangeRequest:0];
  }

  else
  {
    v6 = objc_alloc_init(DBMutableWorkspaceStateChangeRequest);
    [(DBMutableWorkspaceStateChangeRequest *)v6 deactivateSiri];
    v7 = [*(a1 + 32) environment];
    v8 = [v7 workspace];
    [v8 requestStateChange:v6];
  }

  [*(a1 + 32) setTouchToDismissEnabled:0 forRequester:@"FloatingSiri"];
  v9 = DBLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_248146000, v9, OS_LOG_TYPE_DEFAULT, "Unborrowing screen for Siri", v12, 2u);
  }

  [*(a1 + 32) setActivationBorrowToken:0];
  [*(a1 + 32) setUserInteractionBorrowToken:0];
  result = [*(a1 + 32) isPaired];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) _removePresentationView];
    v11 = [*(a1 + 32) presentationViewController];
    [v11 invalidate];

    return [*(a1 + 32) setPresentationViewController:0];
  }

  return result;
}

- (void)siriPresentation:(id)a3 requestsPunchout:(id)a4 withHandler:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = DBLogForCategory(3uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v7;
    _os_log_impl(&dword_248146000, v9, OS_LOG_TYPE_DEFAULT, "Siri punchout requested! %@", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__DBSiriViewController_siriPresentation_requestsPunchout_withHandler___block_invoke;
  block[3] = &unk_278F02D90;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __70__DBSiriViewController_siriPresentation_requestsPunchout_withHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _handlePunchoutRequest:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)siriPresentation:(id)a3 didCreateSiriScene:(id)a4
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = DBLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_INFO, "didCreateSiriScene: %@", &v7, 0xCu);
  }

  [(DBSiriViewController *)self setScene:v5];
  [(DBSiriViewController *)self _updateDeferrals];
}

- (void)activeIntentWithBundleId:(id)a3
{
  v4 = a3;
  v5 = [(DBSiriViewController *)self intentDelegate];
  [v5 siriPresentedIntentForBundleIdentifier:v4];

  v6 = [(DBSiriViewController *)self environment];
  v7 = [v6 environmentConfiguration];
  v8 = [v7 session];

  v9 = [v8 videoPlaybackAvailable];
  if (v9)
  {
    v10 = v9;
    v11 = [(DBSiriViewController *)self userInteractionBorrowToken];

    if (!v11)
    {
      v12 = DBLogForCategory(3uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_248146000, v12, OS_LOG_TYPE_DEFAULT, "Borrowing screen for Siri UI", v14, 2u);
      }

      v13 = [v8 borrowScreenForClient:@"com.apple.CarPlayApp" reason:@"Siri"];
      [(DBSiriViewController *)self setUserInteractionBorrowToken:v13];
    }
  }
}

- (void)sceneDidActivate:(id)a3
{
  v4 = a3;
  v5 = [(DBSiriViewController *)self scene];

  if (v5 == v4)
  {

    [(DBSiriViewController *)self _updateDeferrals];
  }
}

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v5 = a3;
  v6 = [(DBSiriViewController *)self scene];

  if (v6 == v5)
  {

    [(DBSiriViewController *)self _updateDeferrals];
  }
}

- (void)sceneDidInvalidate:(id)a3 withContext:(id)a4
{
  v5 = a3;
  v6 = [(DBSiriViewController *)self scene];

  if (v6 == v5)
  {
    [(DBSiriViewController *)self setScene:0];

    [(DBSiriViewController *)self _updateDeferrals];
  }
}

- (id)scene:(id)a3 handleActions:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB58] set];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v29;
    *&v11 = 138412290;
    v27 = v11;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        v16 = [v15 UIActionType];
        if (v16 == 24)
        {
          v21 = DBLogForCategory(3uLL);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v22 = [v6 identity];
            *buf = v27;
            v33 = v22;
            _os_log_impl(&dword_248146000, v21, OS_LOG_TYPE_INFO, "Focus movement action received from scene %@", buf, 0xCu);
          }

          v23 = [(DBSiriViewController *)self focusMovementActionHandler];
          if (!v23)
          {
            goto LABEL_17;
          }

          v24 = v23;
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            goto LABEL_17;
          }

          v20 = v15;
          v19 = [(DBSiriViewController *)self focusMovementActionHandler];
          [v19 handleFocusMovementAction:v20 fromScene:v6];
        }

        else
        {
          if (v16 != 13)
          {
            continue;
          }

          v17 = DBLogForCategory(3uLL);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = [v6 identity];
            *buf = v27;
            v33 = v18;
            _os_log_impl(&dword_248146000, v17, OS_LOG_TYPE_INFO, "Received unhandled back action from scene %@", buf, 0xCu);
          }

          v19 = [DBEvent eventWithType:1 context:&unk_285AA46B8];
          v20 = [(DBSiriViewController *)self environment];
          [v20 handleEvent:v19];
        }

LABEL_17:
        [v8 addObject:v15];
      }

      v12 = [v9 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v12);
  }

  return v8;
}

- (void)_addPresentationView
{
  v3 = [(DBSiriViewController *)self view];
  v4 = [(DBSiriViewController *)self presentationViewController];
  v5 = [v4 view];
  [v3 addSubview:v5];

  v6 = [(DBSiriViewController *)self presentationViewController];
  [v6 didMoveToParentViewController:self];

  v7 = [(DBSiriViewController *)self presentationViewController];
  v8 = [v7 view];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(DBSiriViewController *)self _updateHostedPresentationFrame];
}

- (void)_removePresentationView
{
  v3 = MEMORY[0x277CCAAD0];
  v4 = [(DBSiriViewController *)self constraints];
  [v3 deactivateConstraints:v4];

  [(DBSiriViewController *)self setConstraints:0];
  v6 = [(DBSiriViewController *)self presentationViewController];
  v5 = [v6 view];
  [v5 removeFromSuperview];
}

- (void)_handlePunchoutRequest:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(DBMutableWorkspaceStateChangeRequest);
  v6 = [v4 bundleIdentifier];
  v7 = [v4 url];
  v8 = [v4 punchoutStyle];
  if (![v7 db_isNowPlayingURL])
  {
    v40 = v8;
    if (!v6 && v7)
    {
      v11 = [MEMORY[0x277CC1E80] defaultWorkspace];
      v12 = [v11 applicationsAvailableForOpeningURL:v7];
      v13 = [v12 firstObject];

      v6 = [v13 bundleIdentifier];
    }

    if (v6)
    {
      v14 = +[DBApplicationController sharedInstance];
      v15 = [v14 applicationWithBundleIdentifier:v6];

      if (v15)
      {
        v16 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      v17 = DBLogForCategory(3uLL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [(DBSiriViewController *)v7 _handlePunchoutRequest:v17];
      }
    }

    v18 = DBLogForCategory(3uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(DBSiriViewController *)v4 _handlePunchoutRequest:v18];
    }

    v15 = 0;
    v16 = 1;
LABEL_15:
    v19 = +[DBApplicationController sharedInstance];
    v20 = [v19 preflightRequiredForApplication:v15];

    if (v20)
    {
      v21 = DBLogForCategory(3uLL);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [DBSiriViewController _handlePunchoutRequest:v21];
      }

      v22 = objc_alloc_init(DBActivationSettings);
      [(DBActivationSettings *)v22 setLaunchSource:4];
      v23 = [DBApplicationLaunchInfo launchInfoForApplication:v15 withActivationSettings:v22];
      v24 = [DBEvent eventWithType:4 context:v23];
      v25 = [(DBSiriViewController *)self environment];
      [v25 handleEvent:v24];

      [(DBMutableWorkspaceStateChangeRequest *)v5 deactivateSiri];
      v26 = 1;
      if (v15)
      {
        goto LABEL_19;
      }

      goto LABEL_38;
    }

    if ([v15 requiresBackgroundURLDelivery])
    {
      v29 = DBLogForCategory(3uLL);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_248146000, v29, OS_LOG_TYPE_DEFAULT, "Punchout request requires background URL delivery.", buf, 2u);
      }

      [(DBSiriViewController *)self _handleBackgroundURLRequest:v7 application:v15];
      if (!v15)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v30 = objc_alloc_init(DBActivationSettings);
      v31 = v30;
      if (v7)
      {
        [(DBActivationSettings *)v30 setUrl:v7];
      }

      [(DBActivationSettings *)v31 setLaunchSource:4];
      if ((v16 & 1) == 0)
      {
        [(DBMutableWorkspaceStateChangeRequest *)v5 activateApplication:v15 withSettings:v31];
      }

      v32 = DBLogForCategory(3uLL);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_248146000, v32, OS_LOG_TYPE_DEFAULT, "Taking screen for Siri app activation", buf, 2u);
      }

      v33 = [(DBSiriViewController *)self environment];
      v34 = [v33 environmentConfiguration];
      v35 = [v34 session];
      [v35 takeScreenForClient:@"com.apple.CarPlayApp" reason:@"Siri activated app"];

      if (!v15)
      {
        goto LABEL_37;
      }
    }

    if (v40 == 2)
    {
      [(DBMutableWorkspaceStateChangeRequest *)v5 activateSiriFloating];
      v36 = DBLogForCategory(3uLL);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = [v15 bundleIdentifier];
        *buf = 138543362;
        v42 = v37;
        _os_log_impl(&dword_248146000, v36, OS_LOG_TYPE_DEFAULT, "Handling in-place punchout for %{public}@", buf, 0xCu);
      }

      v38 = [(DBSiriViewController *)self environment];
      v39 = [v38 workspace];
      [v39 requestStateChange:v5];

      goto LABEL_41;
    }

LABEL_37:
    [(DBMutableWorkspaceStateChangeRequest *)v5 deactivateSiri];
    v26 = 9;
    if (v15)
    {
LABEL_19:
      v27 = DBLogForCategory(3uLL);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [v15 bundleIdentifier];
        *buf = 138543362;
        v42 = v28;
        _os_log_impl(&dword_248146000, v27, OS_LOG_TYPE_DEFAULT, "Handling punchout for %{public}@", buf, 0xCu);
      }

LABEL_40:

      [(DBSiriViewController *)self setPendingChangeRequest:v5];
      [(DBSiriViewController *)self setDismissed:1];
      [(DBSiriViewController *)self _requestDismissalWithReason:v26];
LABEL_41:

      goto LABEL_42;
    }

LABEL_38:
    v27 = DBLogForCategory(3uLL);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v27, OS_LOG_TYPE_DEFAULT, "Requesting Siri dismissal", buf, 2u);
    }

    goto LABEL_40;
  }

  v9 = [(DBSiriViewController *)self environment];
  v10 = [DBEvent eventWithType:11 context:&unk_285AA46D0];
  [v9 handleEvent:v10];

LABEL_42:
}

- (void)_requestDismissalWithReason:(int64_t)a3
{
  v5 = [objc_alloc(MEMORY[0x277D551F0]) initWithDeactivationOptions:0 animated:1 dismissalReason:a3];
  v4 = [(DBSiriViewController *)self presentationViewController];
  [v4 dismissWithOptions:v5];
}

- (void)_handleBackgroundURLRequest:(id)a3 application:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = objc_alloc_init(DBActivationSettings);
  [(DBActivationSettings *)v11 setUrl:v7];

  [(DBActivationSettings *)v11 setLaunchSource:4];
  v8 = [DBApplicationLaunchInfo launchInfoForApplication:v6 withActivationSettings:v11];

  v9 = [(DBSiriViewController *)self environment];
  v10 = [DBEvent eventWithType:4 context:v8];
  [v9 handleEvent:v10];
}

- (void)_safeDismissAnimated:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__DBSiriViewController__safeDismissAnimated_completion___block_invoke;
  block[3] = &unk_278F02DB8;
  v10 = a3;
  block[4] = self;
  v9 = v6;
  v7 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __56__DBSiriViewController__safeDismissAnimated_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDismissed:1];
  v2 = [*(a1 + 32) environment];
  v3 = [v2 environmentConfiguration];
  v4 = [v3 analytics];
  [v4 siriDidDismiss];

  v5 = [*(a1 + 32) presentationViewController];
  LODWORD(v3) = [v5 siriViewControllerConfigured];

  if (v3)
  {
    if (*(a1 + 48))
    {
      v6 = 0.5;
    }

    else
    {
      v6 = 0.0;
    }

    v7 = [*(a1 + 32) presentationViewController];
    v8 = [MEMORY[0x277CF0D38] factoryWithDuration:v6];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __56__DBSiriViewController__safeDismissAnimated_completion___block_invoke_2;
    v14[3] = &unk_278F02C58;
    v15 = *(a1 + 40);
    [v7 animatedDisappearanceWithFactory:v8 completion:v14];
  }

  else
  {
    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))();
    }
  }

  v10 = DBLogForCategory(3uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_248146000, v10, OS_LOG_TYPE_DEFAULT, "Invalidating layout element for Siri", v13, 2u);
  }

  v11 = [*(a1 + 32) layoutElementAssertion];
  [v11 invalidate];

  return [*(a1 + 32) setLayoutElementAssertion:0];
}

uint64_t __56__DBSiriViewController__safeDismissAnimated_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_touchedDisplayToDismiss:(id)a3
{
  v4 = a3;
  if ([v4 state] == 1)
  {
    v5 = [(SiriPresentationViewController *)self->_presentationViewController view];
    [v4 locationInView:v5];
    v7 = v6;
    v9 = v8;

    objc_initWeak(&location, self);
    presentationViewController = self->_presentationViewController;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __49__DBSiriViewController__touchedDisplayToDismiss___block_invoke;
    v11[3] = &unk_278F01CF0;
    objc_copyWeak(&v12, &location);
    [(SiriPresentationViewController *)presentationViewController hasContentAtPoint:v11 completion:v7, v9];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __49__DBSiriViewController__touchedDisplayToDismiss___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ((a2 & 1) == 0)
  {
    v4 = DBLogForCategory(3uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "Requesting dismissal because user touched screen", v5, 2u);
    }

    [WeakRetained _requestDismissalWithReason:7];
  }
}

- (void)_telephonyDropTapped:(id)a3
{
  if (![(DBSiriViewController *)self isDismissed])
  {
    v4 = DBLogForCategory(3uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "Received drop call button event, requesting dismissal.", v5, 2u);
    }

    [(DBSiriViewController *)self _requestDismissalWithReason:20];
  }
}

- (DBFocusMovementActionHandling)focusMovementActionHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_focusMovementActionHandler);

  return WeakRetained;
}

- (void)_handlePunchoutRequest:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_248146000, a2, OS_LOG_TYPE_ERROR, "Unable to lookup target bundle ID for punchout request! URL: %@", &v2, 0xCu);
}

- (void)_handlePunchoutRequest:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_248146000, a2, OS_LOG_TYPE_ERROR, "Unable to lookup app info for punchout request: %@", &v2, 0xCu);
}

@end