@interface DBSiriViewController
- (CGRect)_hostedPresentationFrame;
- (DBEnvironment)environment;
- (DBFocusMovementActionHandling)focusMovementActionHandler;
- (DBSiriIntentDelegate)intentDelegate;
- (DBSiriViewController)initWithEnvironment:(id)environment layoutEngine:(id)engine;
- (id)scene:(id)scene handleActions:(id)actions;
- (void)_addPresentationView;
- (void)_handleBackgroundURLRequest:(id)request application:(id)application;
- (void)_handleHomeEventType:(unint64_t)type;
- (void)_handlePunchoutRequest:(id)request;
- (void)_removePresentationView;
- (void)_requestDismissalWithReason:(int64_t)reason;
- (void)_safeDismissAnimated:(BOOL)animated completion:(id)completion;
- (void)_telephonyDropTapped:(id)tapped;
- (void)_touchedDisplayToDismiss:(id)dismiss;
- (void)_updateDeferrals;
- (void)_updateHostedPresentationFrame;
- (void)_updateTouchToDismiss;
- (void)activateSceneWithSettings:(id)settings completion:(id)completion;
- (void)activeIntentWithBundleId:(id)id;
- (void)backgroundSceneWithCompletion:(id)completion;
- (void)dealloc;
- (void)foregroundSceneWithSettings:(id)settings completion:(id)completion;
- (void)handleEvent:(id)event;
- (void)handleTransitionToFrame:(CGRect)frame;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
- (void)sceneDidActivate:(id)activate;
- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context;
- (void)setFocusAssertion:(id)assertion;
- (void)setPaired:(BOOL)paired;
- (void)setScene:(id)scene;
- (void)setTouchToDismissEnabled:(BOOL)enabled forRequester:(id)requester;
- (void)siriPresentation:(id)presentation didCreateSiriScene:(id)scene;
- (void)siriPresentation:(id)presentation requestsDismissalWithOptions:(id)options withHandler:(id)handler;
- (void)siriPresentation:(id)presentation requestsPresentationWithOptions:(id)options withHandler:(id)handler;
- (void)siriPresentation:(id)presentation requestsPunchout:(id)punchout withHandler:(id)handler;
- (void)viewDidAppear:(BOOL)appear;
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
  siriApplication = [v3 siriApplication];

  v5 = *MEMORY[0x277CBF348];
  v6 = *(MEMORY[0x277CBF348] + 8);
  environment = [(DBSiriViewController *)self environment];
  [environment sceneFrameForApplication:siriApplication];
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
  presentationViewController = [(DBSiriViewController *)self presentationViewController];
  [presentationViewController setHostedPresentationFrame:{v4, v6, v8, v10}];

  constraints = [(DBSiriViewController *)self constraints];

  if (constraints)
  {
    v13 = MEMORY[0x277CCAAD0];
    constraints2 = [(DBSiriViewController *)self constraints];
    [v13 deactivateConstraints:constraints2];
  }

  presentationViewController2 = [(DBSiriViewController *)self presentationViewController];
  view = [presentationViewController2 view];

  if (view)
  {
    v17 = +[DBApplicationController sharedInstance];
    siriApplication = [v17 siriApplication];

    presentationViewController3 = [(DBSiriViewController *)self presentationViewController];
    environment = [(DBSiriViewController *)self environment];
    [environment safeAreaInsetsForApplication:siriApplication];
    [presentationViewController3 setAdditionalSafeAreaInsets:?];

    presentationViewController4 = [(DBSiriViewController *)self presentationViewController];
    view2 = [presentationViewController4 view];
    leftAnchor = [view2 leftAnchor];
    view3 = [(DBSiriViewController *)self view];
    leftAnchor2 = [view3 leftAnchor];
    v41 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v48[0] = v41;
    presentationViewController5 = [(DBSiriViewController *)self presentationViewController];
    view4 = [presentationViewController5 view];
    rightAnchor = [view4 rightAnchor];
    view5 = [(DBSiriViewController *)self view];
    rightAnchor2 = [view5 rightAnchor];
    v35 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v48[1] = v35;
    presentationViewController6 = [(DBSiriViewController *)self presentationViewController];
    view6 = [presentationViewController6 view];
    topAnchor = [view6 topAnchor];
    view7 = [(DBSiriViewController *)self view];
    topAnchor2 = [view7 topAnchor];
    v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v48[2] = v21;
    presentationViewController7 = [(DBSiriViewController *)self presentationViewController];
    view8 = [presentationViewController7 view];
    bottomAnchor = [view8 bottomAnchor];
    view9 = [(DBSiriViewController *)self view];
    bottomAnchor2 = [view9 bottomAnchor];
    v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v48[3] = v27;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:4];
    [(DBSiriViewController *)self setConstraints:v28];

    v29 = MEMORY[0x277CCAAD0];
    constraints3 = [(DBSiriViewController *)self constraints];
    [v29 activateConstraints:constraints3];
  }
}

- (void)_updateDeferrals
{
  scene = [(DBSiriViewController *)self scene];

  if (scene && ((-[DBSiriViewController scene](self, "scene"), v4 = objc_claimAutoreleasedReturnValue(), [v4 settings], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_class(), v7 = v5, !v6) ? (v8 = 0) : (objc_opt_isKindOfClass() & 1) == 0 ? (v8 = 0) : (v8 = v7), v9 = v8, v7, v7, v4, v10 = objc_msgSend(v9, "deactivationReasons"), v9, !v10))
  {
    focusAssertion = [(DBSiriViewController *)self focusAssertion];

    if (!focusAssertion)
    {
      environment = [(DBSiriViewController *)self environment];
      focusController = [environment focusController];

      scene2 = [(DBSiriViewController *)self scene];
      v14 = [focusController deferFocusToScene:scene2 priority:3 reason:@"siri"];

      [(DBSiriViewController *)self setFocusAssertion:v14];
    }
  }

  else
  {

    [(DBSiriViewController *)self setFocusAssertion:0];
  }
}

- (DBSiriViewController)initWithEnvironment:(id)environment layoutEngine:(id)engine
{
  environmentCopy = environment;
  engineCopy = engine;
  v23.receiver = self;
  v23.super_class = DBSiriViewController;
  v8 = [(DBSiriViewController *)&v23 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_layoutEngine, engine);
    objc_storeWeak(&v9->_environment, environmentCopy);
    v9->_dismissed = 1;
    v10 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v9 action:sel__telephonyDropTapped_];
    [v10 setAllowedPressTypes:&unk_285AA4988];
    mEMORY[0x277D76330] = [MEMORY[0x277D76330] sharedInstance];
    WeakRetained = objc_loadWeakRetained(&v9->_environment);
    displayConfiguration = [WeakRetained displayConfiguration];
    identity = [displayConfiguration identity];
    [mEMORY[0x277D76330] addGestureRecognizer:v10 toDisplayWithIdentity:identity];

    v15 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v9 action:sel__touchedDisplayToDismiss_];
    touchToDismissRecognizer = v9->_touchToDismissRecognizer;
    v9->_touchToDismissRecognizer = v15;

    [(UILongPressGestureRecognizer *)v9->_touchToDismissRecognizer setCancelsTouchesInView:0];
    [(UILongPressGestureRecognizer *)v9->_touchToDismissRecognizer setMinimumPressDuration:0.0];
    [(UILongPressGestureRecognizer *)v9->_touchToDismissRecognizer setEnabled:0];
    mEMORY[0x277D76330]2 = [MEMORY[0x277D76330] sharedInstance];
    v18 = v9->_touchToDismissRecognizer;
    v19 = objc_loadWeakRetained(&v9->_environment);
    displayConfiguration2 = [v19 displayConfiguration];
    identity2 = [displayConfiguration2 identity];
    [mEMORY[0x277D76330]2 addGestureRecognizer:v18 toDisplayWithIdentity:identity2];
  }

  return v9;
}

- (void)dealloc
{
  layoutElementAssertion = [(DBSiriViewController *)self layoutElementAssertion];

  if (layoutElementAssertion)
  {
    v4 = DBLogForCategory(3uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "Invalidating layout element for Siri", buf, 2u);
    }

    layoutElementAssertion2 = [(DBSiriViewController *)self layoutElementAssertion];
    [layoutElementAssertion2 invalidate];
  }

  scene = [(DBSiriViewController *)self scene];
  [scene removeObserver:self];

  v7.receiver = self;
  v7.super_class = DBSiriViewController;
  [(DBSiriViewController *)&v7 dealloc];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = DBSiriViewController;
  [(DBSiriViewController *)&v6 viewDidLoad];
  clearColor = [MEMORY[0x277D75348] clearColor];
  view = [(DBSiriViewController *)self view];
  [view setBackgroundColor:clearColor];

  presentationViewController = [(DBSiriViewController *)self presentationViewController];

  if (presentationViewController)
  {
    [(DBSiriViewController *)self _addPresentationView];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v25.receiver = self;
  v25.super_class = DBSiriViewController;
  [(DBSiriViewController *)&v25 viewDidAppear:appear];
  presentationViewController = [(DBSiriViewController *)self presentationViewController];
  v5 = [MEMORY[0x277CF0D38] factoryWithDuration:0.5];
  [presentationViewController animatedAppearanceWithFactory:v5 completion:&__block_literal_global_10];

  [(DBSiriViewController *)self setDismissed:0];
  presentationRequestHandler = [(DBSiriViewController *)self presentationRequestHandler];

  if (presentationRequestHandler)
  {
    v7 = DBLogForCategory(3uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Signalling Siri activation success", v24, 2u);
    }

    presentationRequestHandler2 = [(DBSiriViewController *)self presentationRequestHandler];
    presentationRequestHandler2[2](presentationRequestHandler2, 1, 0);

    [(DBSiriViewController *)self setPresentationRequestHandler:0];
    environment = [(DBSiriViewController *)self environment];
    environmentConfiguration = [environment environmentConfiguration];
    analytics = [environmentConfiguration analytics];
    [analytics siriDidPresent];

    v12 = objc_alloc(MEMORY[0x277D0AD00]);
    v13 = [v12 initWithIdentifier:*MEMORY[0x277D0ABC0]];
    [v13 setUIApplicationElement:1];
    v14 = +[DBApplicationController sharedInstance];
    siriApplication = [v14 siriApplication];

    environment2 = [(DBSiriViewController *)self environment];
    [environment2 sceneFrameForApplication:siriApplication];
    [v13 setReferenceFrame:?];

    [v13 setLevel:2];
    v17 = DBLogForCategory(3uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&dword_248146000, v17, OS_LOG_TYPE_DEFAULT, "Activating layout element for Siri", v24, 2u);
    }

    layoutElementAssertion = [(DBSiriViewController *)self layoutElementAssertion];

    if (layoutElementAssertion)
    {
      layoutElementAssertion2 = [(DBSiriViewController *)self layoutElementAssertion];
      [layoutElementAssertion2 invalidate];
    }

    environment3 = [(DBSiriViewController *)self environment];
    environmentConfiguration2 = [environment3 environmentConfiguration];
    displayLayoutPublisher = [environmentConfiguration2 displayLayoutPublisher];
    v23 = [displayLayoutPublisher addElement:v13];
    [(DBSiriViewController *)self setLayoutElementAssertion:v23];
  }
}

- (void)setPaired:(BOOL)paired
{
  v31 = *MEMORY[0x277D85DE8];
  if (self->_paired != paired)
  {
    self->_paired = paired;
    if (paired)
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
      environment = [(DBSiriViewController *)self environment];
      displayConfiguration = [environment displayConfiguration];
      v17 = [v14 initWithIdentifier:2 hostedPresentationFrame:displayConfiguration displayConfiguration:{v5, v7, v9, v11}];
      [(DBSiriViewController *)self setPresentationViewController:v17];

      presentationViewController = [(DBSiriViewController *)self presentationViewController];
      [presentationViewController setSiriPresentationControllerDelegate:self];

      presentationViewController2 = [(DBSiriViewController *)self presentationViewController];
      [presentationViewController2 setIntentUsageDelegate:self];

      v20 = +[DBApplicationController sharedInstance];
      siriApplication = [v20 siriApplication];

      presentationViewController3 = [(DBSiriViewController *)self presentationViewController];
      environment2 = [(DBSiriViewController *)self environment];
      [environment2 safeAreaInsetsForApplication:siriApplication];
      [presentationViewController3 setAdditionalSafeAreaInsets:?];

      presentationViewController4 = [(DBSiriViewController *)self presentationViewController];
      [(DBSiriViewController *)self addChildViewController:presentationViewController4];

      if ([(DBSiriViewController *)self isViewLoaded])
      {
        [(DBSiriViewController *)self _addPresentationView];
      }
    }

    else
    {
      presentationViewController5 = [(DBSiriViewController *)self presentationViewController];
      [presentationViewController5 willMoveToParentViewController:0];

      v26 = DBLogForCategory(3uLL);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v29) = 0;
        _os_log_impl(&dword_248146000, v26, OS_LOG_TYPE_DEFAULT, "DBSiriViewController is now unpaired. Invalidating...", &v29, 2u);
      }

      presentationViewController6 = [(DBSiriViewController *)self presentationViewController];
      [presentationViewController6 removeFromParentViewController];

      presentationViewController7 = [(DBSiriViewController *)self presentationViewController];
      [presentationViewController7 invalidate];

      [(DBSiriViewController *)self _requestDismissalWithReason:22];
      [(DBSiriViewController *)self setPresentationRequestHandler:0];
    }
  }
}

- (void)setTouchToDismissEnabled:(BOOL)enabled forRequester:(id)requester
{
  enabledCopy = enabled;
  v13 = *MEMORY[0x277D85DE8];
  requesterCopy = requester;
  if (enabledCopy)
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
      v12 = requesterCopy;
      _os_log_impl(&dword_248146000, v9, OS_LOG_TYPE_DEFAULT, "Adding touch to dismiss requester: %@.", &v11, 0xCu);
    }

    [(NSMutableSet *)self->_touchToDismissEnabledReasons addObject:requesterCopy];
  }

  else
  {
    v10 = DBLogForCategory(3uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = requesterCopy;
      _os_log_impl(&dword_248146000, v10, OS_LOG_TYPE_DEFAULT, "Removing touch to dismiss requester: %@.", &v11, 0xCu);
    }

    [(NSMutableSet *)self->_touchToDismissEnabledReasons removeObject:requesterCopy];
  }

  [(DBSiriViewController *)self _updateTouchToDismiss];
}

- (void)handleTransitionToFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = objc_alloc_init(MEMORY[0x277D76390]);
  view = [(DBSiriViewController *)self view];
  [v8 _setContainerView:view];

  presentationViewController = [(DBSiriViewController *)self presentationViewController];
  [v8 _setToViewController:presentationViewController];

  presentationViewController2 = [(DBSiriViewController *)self presentationViewController];
  view2 = [presentationViewController2 view];
  [view2 frame];
  [v8 _setToStartFrame:?];

  [v8 _setToEndFrame:{x, y, width, height}];
  [v8 _setIsAnimated:0];
  _transitionCoordinator = [v8 _transitionCoordinator];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48__DBSiriViewController_handleTransitionToFrame___block_invoke;
  v16[3] = &unk_278F02D18;
  v16[4] = self;
  [_transitionCoordinator animateAlongsideTransition:v16 completion:0];

  presentationViewController3 = [(DBSiriViewController *)self presentationViewController];
  _transitionCoordinator2 = [v8 _transitionCoordinator];
  [presentationViewController3 viewWillTransitionToSize:_transitionCoordinator2 withTransitionCoordinator:{width, height}];

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

- (void)setScene:(id)scene
{
  sceneCopy = scene;
  scene = self->_scene;
  if (scene != sceneCopy)
  {
    v8 = sceneCopy;
    if (scene)
    {
      [(FBScene *)scene removeObserver:self];
      v7 = self->_scene;
      self->_scene = 0;

      sceneCopy = v8;
    }

    if (sceneCopy)
    {
      objc_storeStrong(&self->_scene, scene);
      scene = [(FBScene *)v8 addObserver:self];
      sceneCopy = v8;
    }
  }

  MEMORY[0x2821F96F8](scene, sceneCopy);
}

- (void)setFocusAssertion:(id)assertion
{
  assertionCopy = assertion;
  focusAssertion = self->_focusAssertion;
  if (focusAssertion != assertionCopy)
  {
    v7 = assertionCopy;
    [(DBFocusAssertion *)focusAssertion invalidate];
    objc_storeStrong(&self->_focusAssertion, assertion);
    assertionCopy = v7;
  }

  MEMORY[0x2821F96F8](focusAssertion, assertionCopy);
}

- (void)foregroundSceneWithSettings:(id)settings completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)backgroundSceneWithCompletion:(id)completion
{
  completionCopy = completion;
  if (![(DBSiriViewController *)self isDismissed])
  {
    [(DBSiriViewController *)self _requestDismissalWithReason:1];
  }

  v4 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
    v4 = completionCopy;
  }
}

- (void)activateSceneWithSettings:(id)settings completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)handleEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy type] == 1)
  {
    context = [eventCopy context];
    if (context)
    {
      v5 = context;
      context2 = [eventCopy context];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        context3 = [eventCopy context];
        unsignedIntegerValue = [context3 unsignedIntegerValue];

        [(DBSiriViewController *)self _handleHomeEventType:unsignedIntegerValue];
      }
    }
  }
}

- (void)_handleHomeEventType:(unint64_t)type
{
  v8 = *MEMORY[0x277D85DE8];
  if (type - 1 <= 1)
  {
    v5 = DBLogForCategory(3uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      typeCopy = type;
      _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Requesting dismissal of Siri due to DBHomeEventType %li", &v6, 0xCu);
    }

    [(DBSiriViewController *)self setDismissed:1];
    [(DBSiriViewController *)self _requestDismissalWithReason:20];
  }
}

- (void)siriPresentation:(id)presentation requestsPresentationWithOptions:(id)options withHandler:(id)handler
{
  handlerCopy = handler;
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
  v10 = handlerCopy;
  v8 = handlerCopy;
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

- (void)siriPresentation:(id)presentation requestsDismissalWithOptions:(id)options withHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
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
  v13 = optionsCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = optionsCopy;
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

- (void)siriPresentation:(id)presentation requestsPunchout:(id)punchout withHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  punchoutCopy = punchout;
  handlerCopy = handler;
  v9 = DBLogForCategory(3uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = punchoutCopy;
    _os_log_impl(&dword_248146000, v9, OS_LOG_TYPE_DEFAULT, "Siri punchout requested! %@", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__DBSiriViewController_siriPresentation_requestsPunchout_withHandler___block_invoke;
  block[3] = &unk_278F02D90;
  block[4] = self;
  v13 = punchoutCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = punchoutCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __70__DBSiriViewController_siriPresentation_requestsPunchout_withHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _handlePunchoutRequest:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)siriPresentation:(id)presentation didCreateSiriScene:(id)scene
{
  v9 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  v6 = DBLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = sceneCopy;
    _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_INFO, "didCreateSiriScene: %@", &v7, 0xCu);
  }

  [(DBSiriViewController *)self setScene:sceneCopy];
  [(DBSiriViewController *)self _updateDeferrals];
}

- (void)activeIntentWithBundleId:(id)id
{
  idCopy = id;
  intentDelegate = [(DBSiriViewController *)self intentDelegate];
  [intentDelegate siriPresentedIntentForBundleIdentifier:idCopy];

  environment = [(DBSiriViewController *)self environment];
  environmentConfiguration = [environment environmentConfiguration];
  session = [environmentConfiguration session];

  videoPlaybackAvailable = [session videoPlaybackAvailable];
  if (videoPlaybackAvailable)
  {
    v10 = videoPlaybackAvailable;
    userInteractionBorrowToken = [(DBSiriViewController *)self userInteractionBorrowToken];

    if (!userInteractionBorrowToken)
    {
      v12 = DBLogForCategory(3uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_248146000, v12, OS_LOG_TYPE_DEFAULT, "Borrowing screen for Siri UI", v14, 2u);
      }

      v13 = [session borrowScreenForClient:@"com.apple.CarPlayApp" reason:@"Siri"];
      [(DBSiriViewController *)self setUserInteractionBorrowToken:v13];
    }
  }
}

- (void)sceneDidActivate:(id)activate
{
  activateCopy = activate;
  scene = [(DBSiriViewController *)self scene];

  if (scene == activateCopy)
  {

    [(DBSiriViewController *)self _updateDeferrals];
  }
}

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  sceneCopy = scene;
  scene = [(DBSiriViewController *)self scene];

  if (scene == sceneCopy)
  {

    [(DBSiriViewController *)self _updateDeferrals];
  }
}

- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context
{
  invalidateCopy = invalidate;
  scene = [(DBSiriViewController *)self scene];

  if (scene == invalidateCopy)
  {
    [(DBSiriViewController *)self setScene:0];

    [(DBSiriViewController *)self _updateDeferrals];
  }
}

- (id)scene:(id)scene handleActions:(id)actions
{
  v35 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  actionsCopy = actions;
  v8 = [MEMORY[0x277CBEB58] set];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = actionsCopy;
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
        uIActionType = [v15 UIActionType];
        if (uIActionType == 24)
        {
          v21 = DBLogForCategory(3uLL);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            identity = [sceneCopy identity];
            *buf = v27;
            v33 = identity;
            _os_log_impl(&dword_248146000, v21, OS_LOG_TYPE_INFO, "Focus movement action received from scene %@", buf, 0xCu);
          }

          focusMovementActionHandler = [(DBSiriViewController *)self focusMovementActionHandler];
          if (!focusMovementActionHandler)
          {
            goto LABEL_17;
          }

          v24 = focusMovementActionHandler;
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            goto LABEL_17;
          }

          environment = v15;
          focusMovementActionHandler2 = [(DBSiriViewController *)self focusMovementActionHandler];
          [focusMovementActionHandler2 handleFocusMovementAction:environment fromScene:sceneCopy];
        }

        else
        {
          if (uIActionType != 13)
          {
            continue;
          }

          v17 = DBLogForCategory(3uLL);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            identity2 = [sceneCopy identity];
            *buf = v27;
            v33 = identity2;
            _os_log_impl(&dword_248146000, v17, OS_LOG_TYPE_INFO, "Received unhandled back action from scene %@", buf, 0xCu);
          }

          focusMovementActionHandler2 = [DBEvent eventWithType:1 context:&unk_285AA46B8];
          environment = [(DBSiriViewController *)self environment];
          [environment handleEvent:focusMovementActionHandler2];
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
  view = [(DBSiriViewController *)self view];
  presentationViewController = [(DBSiriViewController *)self presentationViewController];
  view2 = [presentationViewController view];
  [view addSubview:view2];

  presentationViewController2 = [(DBSiriViewController *)self presentationViewController];
  [presentationViewController2 didMoveToParentViewController:self];

  presentationViewController3 = [(DBSiriViewController *)self presentationViewController];
  view3 = [presentationViewController3 view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(DBSiriViewController *)self _updateHostedPresentationFrame];
}

- (void)_removePresentationView
{
  v3 = MEMORY[0x277CCAAD0];
  constraints = [(DBSiriViewController *)self constraints];
  [v3 deactivateConstraints:constraints];

  [(DBSiriViewController *)self setConstraints:0];
  presentationViewController = [(DBSiriViewController *)self presentationViewController];
  view = [presentationViewController view];
  [view removeFromSuperview];
}

- (void)_handlePunchoutRequest:(id)request
{
  v43 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = objc_alloc_init(DBMutableWorkspaceStateChangeRequest);
  bundleIdentifier = [requestCopy bundleIdentifier];
  v7 = [requestCopy url];
  punchoutStyle = [requestCopy punchoutStyle];
  if (![v7 db_isNowPlayingURL])
  {
    v40 = punchoutStyle;
    if (!bundleIdentifier && v7)
    {
      defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
      v12 = [defaultWorkspace applicationsAvailableForOpeningURL:v7];
      firstObject = [v12 firstObject];

      bundleIdentifier = [firstObject bundleIdentifier];
    }

    if (bundleIdentifier)
    {
      v14 = +[DBApplicationController sharedInstance];
      v15 = [v14 applicationWithBundleIdentifier:bundleIdentifier];

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
      [(DBSiriViewController *)requestCopy _handlePunchoutRequest:v18];
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
      environment = [(DBSiriViewController *)self environment];
      [environment handleEvent:v24];

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

      environment2 = [(DBSiriViewController *)self environment];
      environmentConfiguration = [environment2 environmentConfiguration];
      session = [environmentConfiguration session];
      [session takeScreenForClient:@"com.apple.CarPlayApp" reason:@"Siri activated app"];

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
        bundleIdentifier2 = [v15 bundleIdentifier];
        *buf = 138543362;
        v42 = bundleIdentifier2;
        _os_log_impl(&dword_248146000, v36, OS_LOG_TYPE_DEFAULT, "Handling in-place punchout for %{public}@", buf, 0xCu);
      }

      environment3 = [(DBSiriViewController *)self environment];
      workspace = [environment3 workspace];
      [workspace requestStateChange:v5];

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
        bundleIdentifier3 = [v15 bundleIdentifier];
        *buf = 138543362;
        v42 = bundleIdentifier3;
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

  environment4 = [(DBSiriViewController *)self environment];
  v10 = [DBEvent eventWithType:11 context:&unk_285AA46D0];
  [environment4 handleEvent:v10];

LABEL_42:
}

- (void)_requestDismissalWithReason:(int64_t)reason
{
  v5 = [objc_alloc(MEMORY[0x277D551F0]) initWithDeactivationOptions:0 animated:1 dismissalReason:reason];
  presentationViewController = [(DBSiriViewController *)self presentationViewController];
  [presentationViewController dismissWithOptions:v5];
}

- (void)_handleBackgroundURLRequest:(id)request application:(id)application
{
  applicationCopy = application;
  requestCopy = request;
  v11 = objc_alloc_init(DBActivationSettings);
  [(DBActivationSettings *)v11 setUrl:requestCopy];

  [(DBActivationSettings *)v11 setLaunchSource:4];
  v8 = [DBApplicationLaunchInfo launchInfoForApplication:applicationCopy withActivationSettings:v11];

  environment = [(DBSiriViewController *)self environment];
  v10 = [DBEvent eventWithType:4 context:v8];
  [environment handleEvent:v10];
}

- (void)_safeDismissAnimated:(BOOL)animated completion:(id)completion
{
  completionCopy = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__DBSiriViewController__safeDismissAnimated_completion___block_invoke;
  block[3] = &unk_278F02DB8;
  animatedCopy = animated;
  block[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
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

- (void)_touchedDisplayToDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  if ([dismissCopy state] == 1)
  {
    view = [(SiriPresentationViewController *)self->_presentationViewController view];
    [dismissCopy locationInView:view];
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

- (void)_telephonyDropTapped:(id)tapped
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